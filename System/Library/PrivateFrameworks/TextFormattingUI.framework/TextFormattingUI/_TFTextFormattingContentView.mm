@interface _TFTextFormattingContentView
- (CGSize)intrinsicContentSize;
- (UIEdgeInsets)safeAreaInsets;
- (_TtC16TextFormattingUIP33_BDE70E073124A1E87C81AA7137722CAE28_TFTextFormattingContentView)initWithCoder:(id)a3;
- (_TtC16TextFormattingUIP33_BDE70E073124A1E87C81AA7137722CAE28_TFTextFormattingContentView)initWithFrame:(CGRect)a3;
@end

@implementation _TFTextFormattingContentView

- (_TtC16TextFormattingUIP33_BDE70E073124A1E87C81AA7137722CAE28_TFTextFormattingContentView)initWithCoder:(id)a3
{
  swift_weakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16TextFormattingUIP33_BDE70E073124A1E87C81AA7137722CAE28_TFTextFormattingContentView____lazy_storage___childView) = 0;
  result = sub_26D3A1468();
  __break(1u);
  return result;
}

- (UIEdgeInsets)safeAreaInsets
{
  v2 = *MEMORY[0x277D768C8];
  v3 = *(MEMORY[0x277D768C8] + 8);
  v4 = *(MEMORY[0x277D768C8] + 16);
  v5 = *(MEMORY[0x277D768C8] + 24);
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)intrinsicContentSize
{
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = self;
    sub_26D39FF68();

    v11[2] = v8;
    v12 = v9;
    v13 = v10;
    v11[0] = v6;
    v11[1] = v7;
    sub_26D33F528(v11);
    v3 = *(&v12 + 1);
    v4 = v13;
  }

  else
  {
    __break(1u);
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC16TextFormattingUIP33_BDE70E073124A1E87C81AA7137722CAE28_TFTextFormattingContentView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end