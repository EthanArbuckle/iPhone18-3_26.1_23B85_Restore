@interface ShapeView
+ (Class)layerClass;
- (_TtC8StocksUI9ShapeView)initWithCoder:(id)a3;
- (_TtC8StocksUI9ShapeView)initWithFrame:(CGRect)a3;
@end

@implementation ShapeView

+ (Class)layerClass
{
  sub_220725B40();

  return swift_getObjCClassFromMetadata();
}

- (_TtC8StocksUI9ShapeView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = swift_getObjectType();
  v7 = [(ShapeView *)&v13 initWithFrame:x, y, width, height];
  v8 = [(ShapeView *)v7 layer];
  v9 = [objc_opt_self() mainScreen];
  [v9 scale];
  v11 = v10;

  [v8 setContentsScale_];
  return v7;
}

- (_TtC8StocksUI9ShapeView)initWithCoder:(id)a3
{
  result = sub_22089267C();
  __break(1u);
  return result;
}

@end