@interface LinkActionActivityProvider
- (_TtC8StocksUI26LinkActionActivityProvider)init;
- (id)activityGroupForAction:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5;
- (id)previewActivityForAction:(id)a3;
@end

@implementation LinkActionActivityProvider

- (_TtC8StocksUI26LinkActionActivityProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)activityGroupForAction:(id)a3 sourceView:(id)a4 sourceRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  swift_unknownObjectRetain();
  v12 = a4;
  v13 = self;
  v14 = sub_22086BB84(a3, a4, x, y, width, height);
  swift_unknownObjectRelease();

  return v14;
}

- (id)previewActivityForAction:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  v5 = sub_220870EB4();
  swift_unknownObjectRelease();

  return v5;
}

@end