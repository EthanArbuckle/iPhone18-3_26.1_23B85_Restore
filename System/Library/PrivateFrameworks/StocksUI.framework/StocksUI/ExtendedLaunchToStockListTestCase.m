@interface ExtendedLaunchToStockListTestCase
- (NSString)testName;
- (_TtC8StocksUI33ExtendedLaunchToStockListTestCase)init;
- (void)runTestWithContext:(id)a3 completion:(id)a4;
@end

@implementation ExtendedLaunchToStockListTestCase

- (void)runTestWithContext:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = self;
  sub_220888FBC();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2204C9E0C;
  *(v8 + 24) = v6;

  v9 = sub_220888D9C();
  sub_220888EDC();
}

- (NSString)testName
{

  v2 = sub_22089132C();

  return v2;
}

- (_TtC8StocksUI33ExtendedLaunchToStockListTestCase)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end