@interface ShelfSolidBackgroundDecorationItem
- (_TtC9SeymourUI34ShelfSolidBackgroundDecorationItem)initWithCoder:(id)coder;
- (_TtC9SeymourUI34ShelfSolidBackgroundDecorationItem)initWithFrame:(CGRect)frame;
@end

@implementation ShelfSolidBackgroundDecorationItem

- (_TtC9SeymourUI34ShelfSolidBackgroundDecorationItem)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for ShelfSolidBackgroundDecorationItem();
  height = [(ShelfSolidBackgroundDecorationItem *)&v13 initWithFrame:x, y, width, height];
  v8 = qword_27C760D20;
  v9 = height;
  if (v8 != -1)
  {
    v12 = v9;
    swift_once();
    v9 = v12;
  }

  v10 = v9;
  [(ShelfSolidBackgroundDecorationItem *)v9 setBackgroundColor:qword_27C79D6D8];

  return v10;
}

- (_TtC9SeymourUI34ShelfSolidBackgroundDecorationItem)initWithCoder:(id)coder
{
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

@end