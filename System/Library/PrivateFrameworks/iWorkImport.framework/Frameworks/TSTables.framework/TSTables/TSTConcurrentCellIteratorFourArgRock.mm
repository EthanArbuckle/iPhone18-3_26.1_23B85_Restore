@interface TSTConcurrentCellIteratorFourArgRock
+ (id)rockWithFirst:(id)a3 second:(id)a4 third:(id)a5 fourth:(id)a6;
- (TSTConcurrentCellIteratorFourArgRock)initWithFirst:(id)a3 second:(id)a4 third:(id)a5 fourth:(id)a6;
@end

@implementation TSTConcurrentCellIteratorFourArgRock

+ (id)rockWithFirst:(id)a3 second:(id)a4 third:(id)a5 fourth:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [a1 alloc];
  second_third_fourth = objc_msgSend_initWithFirst_second_third_fourth_(v14, v15, v10, v11, v12, v13);

  return second_third_fourth;
}

- (TSTConcurrentCellIteratorFourArgRock)initWithFirst:(id)a3 second:(id)a4 third:(id)a5 fourth:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = TSTConcurrentCellIteratorFourArgRock;
  v15 = [(TSTConcurrentCellIteratorFourArgRock *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_first, a3);
    objc_storeStrong(&v16->_second, a4);
    objc_storeStrong(&v16->_third, a5);
    objc_storeStrong(&v16->_fourth, a6);
  }

  return v16;
}

@end