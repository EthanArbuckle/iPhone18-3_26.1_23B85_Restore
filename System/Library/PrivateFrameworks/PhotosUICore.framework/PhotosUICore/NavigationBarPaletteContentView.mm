@interface NavigationBarPaletteContentView
- (NSDirectionalEdgeInsets)directionalLayoutMargins;
- (_TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView)initWithCoder:(id)a3;
- (_TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView)initWithFrame:(CGRect)a3;
- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3;
@end

@implementation NavigationBarPaletteContentView

- (_TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView)initWithCoder:(id)a3
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

- (void)setDirectionalLayoutMargins:(NSDirectionalEdgeInsets)a3
{
  trailing = a3.trailing;
  bottom = a3.bottom;
  leading = a3.leading;
  top = a3.top;
  v8.receiver = self;
  v8.super_class = type metadata accessor for NavigationBarPaletteContentView();
  v7 = v8.receiver;
  [(NavigationBarPaletteContentView *)&v8 setDirectionalLayoutMargins:top, leading, bottom, trailing];
  [v7 setNeedsLayout];
}

- (_TtC12PhotosUICoreP33_10BDB50F966DC5489C73BD7ADCF2FC8A31NavigationBarPaletteContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end