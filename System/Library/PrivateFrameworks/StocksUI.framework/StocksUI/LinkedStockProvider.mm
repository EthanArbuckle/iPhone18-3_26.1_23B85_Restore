@interface LinkedStockProvider
- (_TtC8StocksUI19LinkedStockProvider)init;
- (id)loadLinkedContentForHeadline:(id)headline withContext:(id)context completion:(id)completion;
@end

@implementation LinkedStockProvider

- (_TtC8StocksUI19LinkedStockProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)loadLinkedContentForHeadline:(id)headline withContext:(id)context completion:(id)completion
{
  v7 = _Block_copy(completion);
  _Block_copy(v7);
  swift_unknownObjectRetain();
  contextCopy = context;
  selfCopy = self;
  sub_220761858(contextCopy, selfCopy, v7);
  v11 = v10;
  _Block_release(v7);
  _Block_release(v7);
  swift_unknownObjectRelease();

  return v11;
}

@end