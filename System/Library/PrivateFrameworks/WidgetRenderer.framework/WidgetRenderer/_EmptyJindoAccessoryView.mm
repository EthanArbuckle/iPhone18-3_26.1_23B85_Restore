@interface _EmptyJindoAccessoryView
- (_TtC14WidgetRenderer24_EmptyJindoAccessoryView)initWithCoder:(id)coder;
- (_TtC14WidgetRenderer24_EmptyJindoAccessoryView)initWithFrame:(CGRect)frame;
@end

@implementation _EmptyJindoAccessoryView

- (_TtC14WidgetRenderer24_EmptyJindoAccessoryView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for _EmptyJindoAccessoryView();
  return [(_EmptyJindoAccessoryView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC14WidgetRenderer24_EmptyJindoAccessoryView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for _EmptyJindoAccessoryView();
  coderCopy = coder;
  v5 = [(_EmptyJindoAccessoryView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end