@interface NavigationBarPaletteContentView
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (_TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView)initWithCoder:(id)coder;
- (_TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView)initWithFrame:(CGRect)frame;
- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins;
@end

@implementation NavigationBarPaletteContentView

- (_TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView)initWithCoder:(id)coder
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView_preferredHeightInvalidationBlock);
  *v3 = 0;
  v3[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView__preferredHeight) = 0;
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

- (NSDirectionalEdgeInsets)directionalLayoutMargins
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for NavigationBarPaletteContentView();
  [(NavigationBarPaletteContentView *)&v6 directionalLayoutMargins];
  result.trailing = v5;
  result.bottom = v4;
  result.leading = v3;
  result.top = v2;
  return result;
}

- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)margins
{
  trailing = margins.trailing;
  bottom = margins.bottom;
  leading = margins.leading;
  top = margins.top;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NavigationBarPaletteContentView();
  v7 = v8.receiver;
  [(NavigationBarPaletteContentView *)&v8 setDirectionalLayoutMargins:top, leading, bottom, trailing];
  [v7 setNeedsLayout];
}

- (_TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end