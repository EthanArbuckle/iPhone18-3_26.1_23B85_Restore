@interface TSPLargeArrayWrapper
- (TSPLargeArrayWrapper)initWithLargeArray:(id)a3;
@end

@implementation TSPLargeArrayWrapper

- (TSPLargeArrayWrapper)initWithLargeArray:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TSPLargeArrayWrapper;
  v6 = [(TSPLargeArrayWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_backingStore, a3);
  }

  return v7;
}

@end