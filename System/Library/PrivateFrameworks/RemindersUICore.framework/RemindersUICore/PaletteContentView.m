@interface PaletteContentView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC15RemindersUICoreP33_7BA5891348DD5304637361581A4B546418PaletteContentView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation PaletteContentView

- (_TtC15RemindersUICoreP33_7BA5891348DD5304637361581A4B546418PaletteContentView)initWithCoder:(id)a3
{
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  v2 = v11.receiver;
  [(PaletteContentView *)&v11 layoutSubviews];
  [v2 bounds];
  v4 = v3;
  [v2 layoutMargins];
  v6 = v5;
  [v2 layoutMargins];
  v8 = v4 - (v6 + v7);
  v9 = OBJC_IVAR____TtC15RemindersUICoreP33_7BA5891348DD5304637361581A4B546418PaletteContentView_titleLabel;
  [*&v2[OBJC_IVAR____TtC15RemindersUICoreP33_7BA5891348DD5304637361581A4B546418PaletteContentView_titleLabel] sizeThatFits_];
  [*&v2[v9] setFrame_];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  [(PaletteContentView *)v4 layoutMargins];
  v6 = v5;
  [(PaletteContentView *)v4 layoutMargins];
  v8 = width - (v6 + v7);
  [*(&v4->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICoreP33_7BA5891348DD5304637361581A4B546418PaletteContentView_titleLabel) sizeThatFits_];
  v16.size.height = v9;
  v16.origin.y = 0.0;
  v16.origin.x = v6;
  v16.size.width = v8;
  MaxY = CGRectGetMaxY(v16);
  [(PaletteContentView *)v4 layoutMargins];
  v12 = v11;

  v13 = MaxY + v12;
  v14 = width;
  result.height = v13;
  result.width = v14;
  return result;
}

@end