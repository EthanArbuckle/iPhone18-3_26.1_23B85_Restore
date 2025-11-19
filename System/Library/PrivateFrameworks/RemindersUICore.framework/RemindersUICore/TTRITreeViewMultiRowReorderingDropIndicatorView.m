@interface TTRITreeViewMultiRowReorderingDropIndicatorView
- (_TtC15RemindersUICore47TTRITreeViewMultiRowReorderingDropIndicatorView)initWithCoder:(id)a3;
- (_TtC15RemindersUICore47TTRITreeViewMultiRowReorderingDropIndicatorView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation TTRITreeViewMultiRowReorderingDropIndicatorView

- (_TtC15RemindersUICore47TTRITreeViewMultiRowReorderingDropIndicatorView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = self + OBJC_IVAR____TtC15RemindersUICore47TTRITreeViewMultiRowReorderingDropIndicatorView_shadowPathSize;
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(TTRITreeViewMultiRowReorderingDropIndicatorView *)&v12 initWithFrame:x, y, width, height];
  sub_21D45DF20();

  return v10;
}

- (_TtC15RemindersUICore47TTRITreeViewMultiRowReorderingDropIndicatorView)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC15RemindersUICore47TTRITreeViewMultiRowReorderingDropIndicatorView_shadowPathSize;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v12.receiver = self;
  v12.super_class = ObjectType;
  v7 = a3;
  v8 = [(TTRITreeViewMultiRowReorderingDropIndicatorView *)&v12 initWithCoder:v7];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    sub_21D45DF20();
  }

  return v9;
}

- (void)layoutSubviews
{
  v2 = self;
  TTRITreeViewMultiRowReorderingDropIndicatorView.layoutSubviews()();
}

@end