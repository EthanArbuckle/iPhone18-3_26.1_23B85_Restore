@interface MainTestSuite
- (_TtC8StocksUI13MainTestSuite)init;
- (void)setupTestWithContext:(id)a3 completion:(id)a4;
@end

@implementation MainTestSuite

- (_TtC8StocksUI13MainTestSuite)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SNTestSuite *)&v3 init];
}

- (void)setupTestWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_22087800C(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

@end