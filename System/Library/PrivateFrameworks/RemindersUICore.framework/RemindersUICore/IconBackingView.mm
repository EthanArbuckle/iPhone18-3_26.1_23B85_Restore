@interface IconBackingView
- (_TtC15RemindersUICoreP33_8C5E01F1824E239AD1C3760BC1E98BC515IconBackingView)initWithCoder:(id)coder;
- (_TtC15RemindersUICoreP33_8C5E01F1824E239AD1C3760BC1E98BC515IconBackingView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation IconBackingView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(IconBackingView *)&v4 layoutSubviews];
  layer = [v2 layer];
  [v2 bounds];
  [layer setCornerRadius_];
}

- (_TtC15RemindersUICoreP33_8C5E01F1824E239AD1C3760BC1E98BC515IconBackingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  return [(IconBackingView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICoreP33_8C5E01F1824E239AD1C3760BC1E98BC515IconBackingView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(IconBackingView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end