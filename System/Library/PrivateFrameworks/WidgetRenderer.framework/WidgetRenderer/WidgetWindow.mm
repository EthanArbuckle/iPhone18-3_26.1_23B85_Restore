@interface WidgetWindow
- (_TtC14WidgetRenderer12WidgetWindow)initWithCoder:(id)coder;
- (_TtC14WidgetRenderer12WidgetWindow)initWithFrame:(CGRect)frame;
- (_TtC14WidgetRenderer12WidgetWindow)initWithWindowScene:(id)scene;
@end

@implementation WidgetWindow

- (_TtC14WidgetRenderer12WidgetWindow)initWithWindowScene:(id)scene
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for WidgetWindow();
  return [(WidgetWindow *)&v5 initWithWindowScene:scene];
}

- (_TtC14WidgetRenderer12WidgetWindow)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for WidgetWindow();
  return [(WidgetWindow *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC14WidgetRenderer12WidgetWindow)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WidgetWindow();
  coderCopy = coder;
  v5 = [(WidgetWindow *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end