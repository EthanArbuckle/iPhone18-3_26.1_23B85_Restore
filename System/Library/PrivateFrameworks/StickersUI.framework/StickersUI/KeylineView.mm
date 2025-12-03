@interface KeylineView
- (_TtC10StickersUI11KeylineView)initWithCoder:(id)coder;
- (_TtC10StickersUI11KeylineView)initWithFrame:(CGRect)frame;
@end

@implementation KeylineView

- (_TtC10StickersUI11KeylineView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for KeylineView();
  return [(KeylineView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC10StickersUI11KeylineView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for KeylineView();
  coderCopy = coder;
  v5 = [(KeylineView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end