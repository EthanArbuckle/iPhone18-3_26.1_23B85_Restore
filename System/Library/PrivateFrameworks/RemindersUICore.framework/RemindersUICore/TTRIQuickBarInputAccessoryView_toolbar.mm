@interface TTRIQuickBarInputAccessoryView_toolbar
- (CGRect)bounds;
- (CGSize)intrinsicContentSize;
- (NSString)accessibilityLabel;
- (_TtC15RemindersUICore38TTRIQuickBarInputAccessoryView_toolbar)initWithCoder:(id)a3;
- (_TtC15RemindersUICore38TTRIQuickBarInputAccessoryView_toolbar)initWithFrame:(CGRect)a3;
- (void)setBounds:(CGRect)a3;
- (void)willMoveToWindow:(id)a3;
@end

@implementation TTRIQuickBarInputAccessoryView_toolbar

- (_TtC15RemindersUICore38TTRIQuickBarInputAccessoryView_toolbar)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC15RemindersUICore38TTRIQuickBarInputAccessoryView_toolbar_cachedQuickBarFittingSize;
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (void)willMoveToWindow:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(TTRIQuickBarInputAccessoryView_toolbar *)&v7 willMoveToWindow:v4];
  v6 = &v5[OBJC_IVAR____TtC15RemindersUICore38TTRIQuickBarInputAccessoryView_toolbar_cachedQuickBarFittingSize];
  *v6 = 0;
  *(v6 + 1) = 0;
  v6[16] = 1;
  [v5 invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_21D371CC8();
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
  [(TTRIQuickBarInputAccessoryView_toolbar *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  v9 = self;
  v15.origin.x = x;
  v15.origin.y = y;
  v15.size.width = width;
  v15.size.height = height;
  v10 = CGRectGetWidth(v15);
  v14.receiver = v9;
  v14.super_class = ObjectType;
  [(TTRIQuickBarInputAccessoryView_toolbar *)&v14 bounds];
  v11 = CGRectGetWidth(v16);
  v13.receiver = v9;
  v13.super_class = ObjectType;
  [(TTRIQuickBarInputAccessoryView_toolbar *)&v13 setBounds:x, y, width, height];
  if (v10 != v11)
  {
    v12 = v9 + OBJC_IVAR____TtC15RemindersUICore38TTRIQuickBarInputAccessoryView_toolbar_cachedQuickBarFittingSize;
    *v12 = 0;
    *(v12 + 1) = 0;
    v12[16] = 1;
    [(TTRIQuickBarInputAccessoryView_toolbar *)v9 invalidateIntrinsicContentSize];
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

- (_TtC15RemindersUICore38TTRIQuickBarInputAccessoryView_toolbar)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end