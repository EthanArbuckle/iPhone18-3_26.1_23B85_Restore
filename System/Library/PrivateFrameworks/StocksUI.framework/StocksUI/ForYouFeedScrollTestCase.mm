@interface ForYouFeedScrollTestCase
- (NSString)testName;
- (_TtC8StocksUI24ForYouFeedScrollTestCase)init;
- (id)scrollViewWithContext:(id)a3;
@end

@implementation ForYouFeedScrollTestCase

- (NSString)testName
{

  v2 = sub_22089132C();

  return v2;
}

- (_TtC8StocksUI24ForYouFeedScrollTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC8StocksUI24ForYouFeedScrollTestCase_testName);
  *v4 = 0xD000000000000010;
  v4[1] = 0x80000002208C1F70;
  *(self + OBJC_IVAR____TtC8StocksUI24ForYouFeedScrollTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC8StocksUI24ForYouFeedScrollTestCase_aggregate) = 0;
  *(self + OBJC_IVAR____TtC8StocksUI24ForYouFeedScrollTestCase_iterations) = 2;
  *(self + OBJC_IVAR____TtC8StocksUI24ForYouFeedScrollTestCase_offset) = 15;
  *(self + OBJC_IVAR____TtC8StocksUI24ForYouFeedScrollTestCase_numberOfScreens) = 5;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ForYouFeedScrollTestCase *)&v6 init];
}

- (id)scrollViewWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2205A194C(v4);
  v7 = v6;

  return v7;
}

@end