@interface ShelfGradientBackgroundDecorationItem
- (_TtC9SeymourUI37ShelfGradientBackgroundDecorationItem)initWithCoder:(id)coder;
- (_TtC9SeymourUI37ShelfGradientBackgroundDecorationItem)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ShelfGradientBackgroundDecorationItem

- (_TtC9SeymourUI37ShelfGradientBackgroundDecorationItem)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = self + OBJC_IVAR____TtC9SeymourUI37ShelfGradientBackgroundDecorationItem_layout;
  *v8 = 0;
  v8[8] = 1;
  *(v8 + 2) = 0;
  v8[24] = 1;
  v9 = OBJC_IVAR____TtC9SeymourUI37ShelfGradientBackgroundDecorationItem_gradientLayer;
  *(&self->super.super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v12.receiver = self;
  v12.super_class = type metadata accessor for ShelfGradientBackgroundDecorationItem();
  height = [(ShelfGradientBackgroundDecorationItem *)&v12 initWithFrame:x, y, width, height];
  sub_20B691540();

  return height;
}

- (_TtC9SeymourUI37ShelfGradientBackgroundDecorationItem)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC9SeymourUI37ShelfGradientBackgroundDecorationItem_layout;
  *v3 = 0;
  v3[8] = 1;
  *(v3 + 2) = 0;
  v3[24] = 1;
  v4 = OBJC_IVAR____TtC9SeymourUI37ShelfGradientBackgroundDecorationItem_gradientLayer;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  result = sub_20C13DE24();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ShelfGradientBackgroundDecorationItem();
  v2 = v7.receiver;
  [(ShelfGradientBackgroundDecorationItem *)&v7 layoutSubviews];
  swift_beginAccess();
  v3 = sub_20B691214();
  swift_endAccess();
  v4 = v3 * 1.35;
  [v2 bounds];
  v5 = CGRectGetHeight(v8) - v4;
  v6 = *&v2[OBJC_IVAR____TtC9SeymourUI37ShelfGradientBackgroundDecorationItem_gradientLayer];
  [v2 bounds];
  [v6 setFrame_];
}

@end