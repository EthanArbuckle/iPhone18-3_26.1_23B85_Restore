@interface TTRIQuickBarInputAccessoryView
- (CGRect)bounds;
- (CGSize)intrinsicContentSize;
- (NSString)accessibilityLabel;
- (_TtC15RemindersUICore30TTRIQuickBarInputAccessoryView)initWithCoder:(id)coder;
- (_TtC15RemindersUICore30TTRIQuickBarInputAccessoryView)initWithFrame:(CGRect)frame;
- (void)setBounds:(CGRect)bounds;
- (void)willMoveToWindow:(id)window;
@end

@implementation TTRIQuickBarInputAccessoryView

- (_TtC15RemindersUICore30TTRIQuickBarInputAccessoryView)initWithCoder:(id)coder
{
  v3 = self + OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_cachedQuickBarFittingSize;
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (void)willMoveToWindow:(id)window
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  windowCopy = window;
  v5 = v7.receiver;
  [(TTRIQuickBarInputAccessoryView *)&v7 willMoveToWindow:windowCopy];
  v6 = &v5[OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_cachedQuickBarFittingSize];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  [v5 invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_21D482D1C();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  [(TTRIQuickBarInputAccessoryView *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  ObjectType = swift_getObjectType();
  selfCopy = self;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v10 = CGRectGetWidth(v15);
  v14.receiver = selfCopy;
  v14.super_class = ObjectType;
  [(TTRIQuickBarInputAccessoryView *)&v14 bounds];
  v11 = CGRectGetWidth(v16);
  v13.receiver = selfCopy;
  v13.super_class = ObjectType;
  [(TTRIQuickBarInputAccessoryView *)&v13 setBounds:x, y, width, height];
  if (v10 != v11)
  {
    v12 = selfCopy + OBJC_IVAR____TtC15RemindersUICore30TTRIQuickBarInputAccessoryView_cachedQuickBarFittingSize;
    *v12 = 0;
    *(v12 + 1) = 0;
    v12[16] = 1;
    [(TTRIQuickBarInputAccessoryView *)selfCopy invalidateIntrinsicContentSize];
  }
}

- (NSString)accessibilityLabel
{
  if (qword_280D1BAA8 != -1)
  {
    swift_once();
  }

  sub_21DBF516C();
  v2 = sub_21DBFA12C();

  return v2;
}

- (_TtC15RemindersUICore30TTRIQuickBarInputAccessoryView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end