@interface IconBackingView
- (_TtC15RemindersUICoreP33_8C5E01F1824E239AD1C3760BC1E98BC515IconBackingView)initWithCoder:(id)a3;
- (_TtC15RemindersUICoreP33_8C5E01F1824E239AD1C3760BC1E98BC515IconBackingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation IconBackingView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(IconBackingView *)&v4 layoutSubviews];
  v3 = [v2 layer];
  [v2 bounds];
  [v3 setCornerRadius_];
}

- (_TtC15RemindersUICoreP33_8C5E01F1824E239AD1C3760BC1E98BC515IconBackingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(IconBackingView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICoreP33_8C5E01F1824E239AD1C3760BC1E98BC515IconBackingView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(IconBackingView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end