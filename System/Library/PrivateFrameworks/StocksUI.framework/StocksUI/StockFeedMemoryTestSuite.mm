@interface StockFeedMemoryTestSuite
- (_TtC8StocksUI24StockFeedMemoryTestSuite)init;
- (void)setupTestWithContext:(id)context completion:(id)completion;
@end

@implementation StockFeedMemoryTestSuite

- (_TtC8StocksUI24StockFeedMemoryTestSuite)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SNTestSuite *)&v3 init];
}

- (void)setupTestWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  contextCopy = context;
  selfCopy = self;
  sub_22058D388(contextCopy, sub_2204C9E0C, v7);
}

@end