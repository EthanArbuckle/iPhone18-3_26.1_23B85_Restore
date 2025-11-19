@interface StockListRotateTestCase
- (NSArray)requiredCapabilities;
- (NSString)testName;
- (_TtC8StocksUI23StockListRotateTestCase)init;
@end

@implementation StockListRotateTestCase

- (_TtC8StocksUI23StockListRotateTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC8StocksUI23StockListRotateTestCase_testName);
  *v4 = 0x73694C6B636F7453;
  v4[1] = 0xEF657461746F5274;
  *(self + OBJC_IVAR____TtC8StocksUI23StockListRotateTestCase_timeoutInSeconds) = 0x404E000000000000;
  *(self + OBJC_IVAR____TtC8StocksUI23StockListRotateTestCase_aggregate) = 0;
  *(self + OBJC_IVAR____TtC8StocksUI23StockListRotateTestCase_requiredCapabilities) = &unk_283410FA0;
  *(self + OBJC_IVAR____TtC8StocksUI23StockListRotateTestCase_rotateOrientation) = 4;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(StockListRotateTestCase *)&v6 init];
}

- (NSString)testName
{

  v2 = sub_22089132C();

  return v2;
}

- (NSArray)requiredCapabilities
{

  v2 = sub_2208916DC();

  return v2;
}

@end