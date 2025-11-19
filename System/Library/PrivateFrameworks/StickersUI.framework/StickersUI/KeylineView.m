@interface KeylineView
- (_TtC10StickersUI11KeylineView)initWithCoder:(id)a3;
- (_TtC10StickersUI11KeylineView)initWithFrame:(CGRect)a3;
@end

@implementation KeylineView

- (_TtC10StickersUI11KeylineView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for KeylineView();
  return [(KeylineView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC10StickersUI11KeylineView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for KeylineView();
  v4 = a3;
  v5 = [(KeylineView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end