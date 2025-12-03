@interface ShapeView
+ (Class)layerClass;
- (_TtC8StocksUI9ShapeView)initWithCoder:(id)coder;
- (_TtC8StocksUI9ShapeView)initWithFrame:(CGRect)frame;
@end

@implementation ShapeView

+ (Class)layerClass
{
  sub_220725B40();

  return swift_getObjCClassFromMetadata();
}

- (_TtC8StocksUI9ShapeView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  height = [(ShapeView *)&v13 initWithFrame:x, y, width, height];
  layer = [(ShapeView *)height layer];
  mainScreen = [objc_opt_self() mainScreen];
  [mainScreen scale];
  v11 = v10;

  [layer setContentsScale_];
  return height;
}

- (_TtC8StocksUI9ShapeView)initWithCoder:(id)coder
{
  result = sub_22089267C();
  __break(1u);
  return result;
}

@end