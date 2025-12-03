@interface TSPLargeArrayWrapper
- (TSPLargeArrayWrapper)initWithLargeArray:(id)array;
@end

@implementation TSPLargeArrayWrapper

- (TSPLargeArrayWrapper)initWithLargeArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = TSPLargeArrayWrapper;
  v6 = [(TSPLargeArrayWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingStore, array);
  }

  return v7;
}

@end