@interface StockFeedTestSuite
- (_TtC8StocksUI18StockFeedTestSuite)init;
- (void)setupTestWithContext:(id)context completion:(id)completion;
@end

@implementation StockFeedTestSuite

- (void)setupTestWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  contextCopy = context;
  selfCopy = self;
  sub_220845C14(contextCopy, sub_2204C9E0C, v7);
}

- (_TtC8StocksUI18StockFeedTestSuite)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end