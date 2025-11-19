@interface WidgetWindow
- (_TtC14WidgetRenderer12WidgetWindow)initWithCoder:(id)a3;
- (_TtC14WidgetRenderer12WidgetWindow)initWithFrame:(CGRect)a3;
- (_TtC14WidgetRenderer12WidgetWindow)initWithWindowScene:(id)a3;
@end

@implementation WidgetWindow

- (_TtC14WidgetRenderer12WidgetWindow)initWithWindowScene:(id)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for WidgetWindow();
  return [(WidgetWindow *)&v5 initWithWindowScene:a3];
}

- (_TtC14WidgetRenderer12WidgetWindow)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for WidgetWindow();
  return [(WidgetWindow *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC14WidgetRenderer12WidgetWindow)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for WidgetWindow();
  v4 = a3;
  v5 = [(WidgetWindow *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end