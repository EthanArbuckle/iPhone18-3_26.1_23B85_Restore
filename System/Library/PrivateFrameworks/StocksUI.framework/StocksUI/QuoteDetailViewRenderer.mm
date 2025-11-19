@interface QuoteDetailViewRenderer
- (_TtC8StocksUI23QuoteDetailViewRenderer)init;
- (void)scrollViewDidScroll:(id)a3;
@end

@implementation QuoteDetailViewRenderer

- (_TtC8StocksUI23QuoteDetailViewRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)a3
{
  v7 = self;
  [a3 contentOffset];
  v4 = v7 + OBJC_IVAR____TtC8StocksUI23QuoteDetailViewRenderer_lastKnownContentOffset;
  *v4 = v5;
  *(v4 + 1) = v6;
  v4[16] = 0;
}

@end