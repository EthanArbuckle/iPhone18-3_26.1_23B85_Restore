@interface ShapeView
+ (Class)layerClass;
- (_TtC20SystemUIAnimationKit9ShapeView)initWithCoder:(id)coder;
- (_TtC20SystemUIAnimationKit9ShapeView)initWithFrame:(CGRect)frame;
@end

@implementation ShapeView

+ (Class)layerClass
{
  sub_26C5ECD00();

  return swift_getObjCClassFromMetadata();
}

- (_TtC20SystemUIAnimationKit9ShapeView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ShapeView();
  return [(ShapeView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC20SystemUIAnimationKit9ShapeView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ShapeView();
  coderCopy = coder;
  v5 = [(ShapeView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end