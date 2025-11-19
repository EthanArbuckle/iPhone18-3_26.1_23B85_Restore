@interface _EmptyJindoAccessoryView
- (_TtC14WidgetRenderer24_EmptyJindoAccessoryView)initWithCoder:(id)a3;
- (_TtC14WidgetRenderer24_EmptyJindoAccessoryView)initWithFrame:(CGRect)a3;
@end

@implementation _EmptyJindoAccessoryView

- (_TtC14WidgetRenderer24_EmptyJindoAccessoryView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _EmptyJindoAccessoryView();
  return [(_EmptyJindoAccessoryView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC14WidgetRenderer24_EmptyJindoAccessoryView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _EmptyJindoAccessoryView();
  v4 = a3;
  v5 = [(_EmptyJindoAccessoryView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end