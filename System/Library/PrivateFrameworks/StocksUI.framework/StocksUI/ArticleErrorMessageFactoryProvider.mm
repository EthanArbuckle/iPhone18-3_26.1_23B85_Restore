@interface ArticleErrorMessageFactoryProvider
- (_TtC8StocksUI34ArticleErrorMessageFactoryProvider)init;
- (id)errorMessageForArticleView;
- (id)errorMessageForArticleViewWithOfflineReason:(int64_t)a3;
@end

@implementation ArticleErrorMessageFactoryProvider

- (_TtC8StocksUI34ArticleErrorMessageFactoryProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)errorMessageForArticleView
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC8StocksUI34ArticleErrorMessageFactoryProvider_reachability);
  v3 = self;
  v4 = sub_22059A068([v2 offlineReason]);

  return v4;
}

- (id)errorMessageForArticleViewWithOfflineReason:(int64_t)a3
{
  v3 = sub_22059A068(a3);

  return v3;
}

@end