@interface LinkActionActivityProvider
- (_TtC8StocksUI26LinkActionActivityProvider)init;
- (id)activityGroupForAction:(id)action sourceView:(id)view sourceRect:(CGRect)rect;
- (id)previewActivityForAction:(id)action;
@end

@implementation LinkActionActivityProvider

- (_TtC8StocksUI26LinkActionActivityProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)activityGroupForAction:(id)action sourceView:(id)view sourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  swift_unknownObjectRetain();
  viewCopy = view;
  selfCopy = self;
  v14 = sub_22086BB84(action, view, x, y, width, height);
  swift_unknownObjectRelease();

  return v14;
}

- (id)previewActivityForAction:(id)action
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = sub_220870EB4();
  swift_unknownObjectRelease();

  return v5;
}

@end