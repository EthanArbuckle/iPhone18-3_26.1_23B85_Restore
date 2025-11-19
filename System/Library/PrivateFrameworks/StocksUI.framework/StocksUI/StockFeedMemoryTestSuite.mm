@interface StockFeedMemoryTestSuite
- (_TtC8StocksUI24StockFeedMemoryTestSuite)init;
- (void)setupTestWithContext:(id)a3 completion:(id)a4;
@end

@implementation StockFeedMemoryTestSuite

- (_TtC8StocksUI24StockFeedMemoryTestSuite)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SNTestSuite *)&v3 init];
}

- (void)setupTestWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_22058D388(v8, sub_2204C9E0C, v7);
}

@end