@interface StockFeedRotateTestCase
- (NSArray)requiredCapabilities;
- (NSString)testName;
- (_TtC8StocksUI23StockFeedRotateTestCase)init;
@end

@implementation StockFeedRotateTestCase

- (NSString)testName
{

  v2 = sub_22089132C();

  return v2;
}

- (_TtC8StocksUI23StockFeedRotateTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC8StocksUI23StockFeedRotateTestCase_testName);
  *v4 = 0x6565466B636F7453;
  v4[1] = 0xEF657461746F5264;
  *(self + OBJC_IVAR____TtC8StocksUI23StockFeedRotateTestCase_timeoutInSeconds) = 0x404E000000000000;
  *(self + OBJC_IVAR____TtC8StocksUI23StockFeedRotateTestCase_aggregate) = 0;
  *(self + OBJC_IVAR____TtC8StocksUI23StockFeedRotateTestCase_requiredCapabilities) = &unk_2834116C0;
  *(self + OBJC_IVAR____TtC8StocksUI23StockFeedRotateTestCase_rotateOrientation) = 4;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(StockFeedRotateTestCase *)&v6 init];
}

- (NSArray)requiredCapabilities
{

  v2 = sub_2208916DC();

  return v2;
}

@end