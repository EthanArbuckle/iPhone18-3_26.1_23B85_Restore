@interface LinkedStockProvider
- (_TtC8StocksUI19LinkedStockProvider)init;
- (id)loadLinkedContentForHeadline:(id)a3 withContext:(id)a4 completion:(id)a5;
@end

@implementation LinkedStockProvider

- (_TtC8StocksUI19LinkedStockProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)loadLinkedContentForHeadline:(id)a3 withContext:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  _Block_copy(v7);
  swift_unknownObjectRetain();
  v8 = a4;
  v9 = self;
  sub_220761858(v8, v9, v7);
  v11 = v10;
  _Block_release(v7);
  _Block_release(v7);
  swift_unknownObjectRelease();

  return v11;
}

@end