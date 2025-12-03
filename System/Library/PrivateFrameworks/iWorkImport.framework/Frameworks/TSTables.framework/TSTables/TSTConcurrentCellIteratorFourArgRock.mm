@interface TSTConcurrentCellIteratorFourArgRock
+ (id)rockWithFirst:(id)first second:(id)second third:(id)third fourth:(id)fourth;
- (TSTConcurrentCellIteratorFourArgRock)initWithFirst:(id)first second:(id)second third:(id)third fourth:(id)fourth;
@end

@implementation TSTConcurrentCellIteratorFourArgRock

+ (id)rockWithFirst:(id)first second:(id)second third:(id)third fourth:(id)fourth
{
  firstCopy = first;
  secondCopy = second;
  thirdCopy = third;
  fourthCopy = fourth;
  v14 = [self alloc];
  second_third_fourth = objc_msgSend_initWithFirst_second_third_fourth_(v14, v15, firstCopy, secondCopy, thirdCopy, fourthCopy);

  return second_third_fourth;
}

- (TSTConcurrentCellIteratorFourArgRock)initWithFirst:(id)first second:(id)second third:(id)third fourth:(id)fourth
{
  firstCopy = first;
  secondCopy = second;
  thirdCopy = third;
  fourthCopy = fourth;
  v18.receiver = self;
  v18.super_class = TSTConcurrentCellIteratorFourArgRock;
  v15 = [(TSTConcurrentCellIteratorFourArgRock *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_first, first);
    objc_storeStrong(&v16->_second, second);
    objc_storeStrong(&v16->_third, third);
    objc_storeStrong(&v16->_fourth, fourth);
  }

  return v16;
}

@end