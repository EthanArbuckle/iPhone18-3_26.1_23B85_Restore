@interface PXTwoTuple
- (PXTwoTuple)initWithFirst:(id)first second:(id)second;
@end

@implementation PXTwoTuple

- (PXTwoTuple)initWithFirst:(id)first second:(id)second
{
  firstCopy = first;
  secondCopy = second;
  v12.receiver = self;
  v12.super_class = PXTwoTuple;
  v9 = [(PXTwoTuple *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, first);
    objc_storeStrong(&v10->_second, second);
  }

  return v10;
}

@end