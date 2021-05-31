//
//  main.swift
//  GB_Swift_basics_l2
//
//  Created by Victor Lipov on 28.05.2021.
//
import Foundation


//1. Написать функцию, которая определяет, четное число или нет.
func oddOrEven(number: Int) -> Bool {
    if number % 2 == 0 {
        //print("Your number \(number) is even")
        return true
    } else {
        //print("Your number \(number) is odd")
        return false
    }
}


//2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func divByThree(number: Int) -> Bool {
    if number % 3 == 0 {
        //print("Your number \(number) is divideable by 3 without remainder")
        return true
    } else {
        //print("Your number \(number) is not divideable by 3 without remainder")
        return false
    }
}


//3. Создать возрастающий массив из 100 чисел.

var increasingArray: [Int] = []
for i in 1...100 {
    increasingArray.append(i)
}
print(increasingArray)


//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

var sort: [Int] = []
for i in increasingArray {
    if (oddOrEven(number: i) == false) && (divByThree(number: i) == false) {
        sort.append(i)
    }
}
print(sort)


//5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.

//Числа Фибоначчи определяются соотношениями Fn=Fn-1 + Fn-2.
func addFib (_ inputArray: [Int]) -> [Int] {
    var array = inputArray
    var counter = 0

    while counter < 50 {
        let arraySlice = array.suffix(2)
        let newArray = Array(arraySlice)
        let fib_number: Int = newArray[0] + newArray[1]
        array.append(fib_number)
        counter += 1
    }
    return array
}

print(addFib(sort))
print(addFib(sort).count - sort.count)

//6. * Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги:
//
//a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
//b. Пусть переменная p изначально равна двум — первому простому числу.
//c. Зачеркнуть в списке числа от 2 + p до n, считая шагом p..
//d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
//e. Повторять шаги c и d, пока возможно.

