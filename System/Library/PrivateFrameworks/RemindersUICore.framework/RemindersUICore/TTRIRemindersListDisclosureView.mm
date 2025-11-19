@interface TTRIRemindersListDisclosureView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (UIColor)tintColor;
- (_TtC15RemindersUICore31TTRIRemindersListDisclosureView)initWithArrangedSubviews:(id)a3;
- (_TtC15RemindersUICore31TTRIRemindersListDisclosureView)initWithFrame:(CGRect)a3;
- (void)buttonShapesSettingDidChange;
- (void)dealloc;
- (void)setTintColor:(id)a3;
- (void)subtaskDisclosureButtonAction:(id)a3;
@end

@implementation TTRIRemindersListDisclosureView

- (UIColor)tintColor
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = [(TTRIRemindersListDisclosureView *)&v4 tintColor];

  return v2;
}

- (void)setTintColor:(id)a3
{
  ObjectType = swift_getObjectType();
  v14.receiver = self;
  v14.super_class = ObjectType;
  v6 = a3;
  v7 = self;
  [(TTRIRemindersListDisclosureView *)&v14 setTintColor:v6];
  v8 = *(&v7->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_collapsed);
  v13.receiver = v7;
  v13.super_class = ObjectType;
  v9 = [(TTRIRemindersListDisclosureView *)&v13 tintColor];
  [v8 setTintColor_];

  v10 = *(&v7->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_expanded);
  v12.receiver = v7;
  v12.super_class = ObjectType;
  v11 = [(TTRIRemindersListDisclosureView *)&v12 tintColor];
  [v10 setTintColor_];
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = self;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:v5 name:*MEMORY[0x277D76450] object:0];

  v7.receiver = v5;
  v7.super_class = ObjectType;
  [(NUIContainerBoxView *)&v7 dealloc];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v11.value.super.isa = v4;
  LOBYTE(v4) = NUIContainerView.ttr_pointIncludingExpandedHitTestInsets(inside:with:)(__PAIR128__(*&y, *&x), v11);

  return v4 & 1;
}

- (void)subtaskDisclosureButtonAction:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v5 = self;
  }

  v6 = self + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListDisclosureView_actionDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(self, ObjectType, v7);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_21D1A8418(v9);
}

- (void)buttonShapesSettingDidChange
{
  v2 = self;
  sub_21D55DB60();
}

- (_TtC15RemindersUICore31TTRIRemindersListDisclosureView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore31TTRIRemindersListDisclosureView)initWithArrangedSubviews:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end