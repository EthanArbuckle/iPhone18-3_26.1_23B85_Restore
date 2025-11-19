@interface ForYouFeedMemoryTestCase
- (NSString)testName;
- (_TtC8StocksUI24ForYouFeedMemoryTestCase)init;
- (void)runTestWithContext:(id)a3 completion:(id)a4;
@end

@implementation ForYouFeedMemoryTestCase

- (_TtC8StocksUI24ForYouFeedMemoryTestCase)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC8StocksUI24ForYouFeedMemoryTestCase_testName);
  *v4 = 0xD000000000000010;
  v4[1] = 0x80000002208C6200;
  *(self + OBJC_IVAR____TtC8StocksUI24ForYouFeedMemoryTestCase_timeoutInSeconds) = 0x405E000000000000;
  *(self + OBJC_IVAR____TtC8StocksUI24ForYouFeedMemoryTestCase_aggregate) = 0;
  v6.receiver = self;
  v6.super_class = ObjectType;
  return [(ForYouFeedMemoryTestCase *)&v6 init];
}

- (NSString)testName
{

  v2 = sub_22089132C();

  return v2;
}

- (void)runTestWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_220605D50(v8, sub_2204C9E0C, v7);
}

@end