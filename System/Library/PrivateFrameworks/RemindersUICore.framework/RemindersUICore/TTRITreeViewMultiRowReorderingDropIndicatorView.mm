@interface TTRITreeViewMultiRowReorderingDropIndicatorView
- (_TtC15RemindersUICore47TTRITreeViewMultiRowReorderingDropIndicatorView)initWithCoder:(id)coder;
- (_TtC15RemindersUICore47TTRITreeViewMultiRowReorderingDropIndicatorView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation TTRITreeViewMultiRowReorderingDropIndicatorView

- (_TtC15RemindersUICore47TTRITreeViewMultiRowReorderingDropIndicatorView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  v9 = self + OBJC_IVAR____TtC15RemindersUICore47TTRITreeViewMultiRowReorderingDropIndicatorView_shadowPathSize;
  *v9 = 0;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v12.receiver = self;
  v12.super_class = ObjectType;
  height = [(TTRITreeViewMultiRowReorderingDropIndicatorView *)&v12 initWithFrame:x, y, width, height];
  sub_21D45DF20();

  return height;
}

- (_TtC15RemindersUICore47TTRITreeViewMultiRowReorderingDropIndicatorView)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  v6 = self + OBJC_IVAR____TtC15RemindersUICore47TTRITreeViewMultiRowReorderingDropIndicatorView_shadowPathSize;
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  v12.receiver = self;
  v12.super_class = ObjectType;
  coderCopy = coder;
  v8 = [(TTRITreeViewMultiRowReorderingDropIndicatorView *)&v12 initWithCoder:coderCopy];
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
  selfCopy = self;
  TTRITreeViewMultiRowReorderingDropIndicatorView.layoutSubviews()();
}

@end