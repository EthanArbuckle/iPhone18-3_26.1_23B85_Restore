@interface QuoteDetailViewRenderer
- (_TtC8StocksUI23QuoteDetailViewRenderer)init;
- (void)scrollViewDidScroll:(id)scroll;
@end

@implementation QuoteDetailViewRenderer

- (_TtC8StocksUI23QuoteDetailViewRenderer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)scrollViewDidScroll:(id)scroll
{
  selfCopy = self;
  [scroll contentOffset];
  v4 = selfCopy + OBJC_IVAR____TtC8StocksUI23QuoteDetailViewRenderer_lastKnownContentOffset;
  *v4 = v5;
  *(v4 + 1) = v6;
  v4[16] = 0;
}

@end