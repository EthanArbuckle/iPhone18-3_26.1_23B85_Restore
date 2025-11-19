@interface ShapeView
+ (Class)layerClass;
- (_TtC20SystemUIAnimationKit9ShapeView)initWithCoder:(id)a3;
- (_TtC20SystemUIAnimationKit9ShapeView)initWithFrame:(CGRect)a3;
@end

@implementation ShapeView

+ (Class)layerClass
{
  sub_26C5ECD00();

  return swift_getObjCClassFromMetadata();
}

- (_TtC20SystemUIAnimationKit9ShapeView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ShapeView();
  return [(ShapeView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC20SystemUIAnimationKit9ShapeView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ShapeView();
  v4 = a3;
  v5 = [(ShapeView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end