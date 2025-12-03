@interface StockFeedScrollTestCase
- (NSString)testName;
- (_TtC8StocksUI23StockFeedScrollTestCase)init;
- (id)scrollViewWithContext:(id)context;
@end

@implementation StockFeedScrollTestCase

- (NSString)testName
{

  v2 = sub_22089132C();

  return v2;
}

- (_TtC8StocksUI23StockFeedScrollTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC8StocksUI23StockFeedScrollTestCase_testName);
  *v4 = 0x6565466B636F7453;
  v4[1] = 0xEF6C6C6F72635364;
  *(self + OBJC_IVAR____TtC8StocksUI23StockFeedScrollTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC8StocksUI23StockFeedScrollTestCase_aggregate) = 0;
  *(self + OBJC_IVAR____TtC8StocksUI23StockFeedScrollTestCase_iterations) = 2;
  *(self + OBJC_IVAR____TtC8StocksUI23StockFeedScrollTestCase_offset) = 15;
  *(self + OBJC_IVAR____TtC8StocksUI23StockFeedScrollTestCase_numberOfScreens) = 5;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(StockFeedScrollTestCase *)&v6 init];
}

- (id)scrollViewWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  sub_2205AA8A0(contextCopy);
  v7 = v6;

  return v7;
}

@end