@interface StockFeedMemoryTestCase
- (NSString)testName;
- (_TtC8StocksUI23StockFeedMemoryTestCase)init;
- (void)runTestWithContext:(id)context completion:(id)completion;
@end

@implementation StockFeedMemoryTestCase

- (_TtC8StocksUI23StockFeedMemoryTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC8StocksUI23StockFeedMemoryTestCase_testName);
  *v4 = 0x6565466B636F7453;
  v4[1] = 0xEF79726F6D654D64;
  *(self + OBJC_IVAR____TtC8StocksUI23StockFeedMemoryTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC8StocksUI23StockFeedMemoryTestCase_aggregate) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(StockFeedMemoryTestCase *)&v6 init];
}

- (NSString)testName
{

  v2 = sub_22089132C();

  return v2;
}

- (void)runTestWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  contextCopy = context;
  selfCopy = self;
  sub_22069CFC4(contextCopy, sub_2204C9E0C, v7);
}

@end