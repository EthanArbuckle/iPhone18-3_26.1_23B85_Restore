@interface TickerTestSuite
- (_TtC8StocksUI15TickerTestSuite)init;
- (void)setupTestWithContext:(id)context completion:(id)completion;
@end

@implementation TickerTestSuite

- (_TtC8StocksUI15TickerTestSuite)init
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
  sub_2206FACA8(contextCopy, sub_2204C9E0C, v7);
}

@end