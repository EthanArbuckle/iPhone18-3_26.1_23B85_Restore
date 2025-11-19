@interface TTRIRemindersListReminderCellAccessoryStackView
- (BOOL)isDebugBoundingBoxesEnabled;
- (_TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView)initWithArrangedSubviews:(id)a3;
- (_TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView)initWithCoder:(id)a3;
- (uint64_t)pointInside:(double)a3 withEvent:(uint64_t)a4;
- (void)assigneeViewAction:(id)a3;
- (void)infoButtonAction:(id)a3;
- (void)setDebugBoundingBoxesEnabled:(BOOL)a3;
- (void)subtaskDisclosureAction:(id)a3;
@end

@implementation TTRIRemindersListReminderCellAccessoryStackView

- (uint64_t)pointInside:(double)a3 withEvent:(uint64_t)a4
{
  v5 = a5;
  v9 = a5;
  v10 = a1;
  v12.value.super.isa = v5;
  LOBYTE(v5) = NUIContainerView.ttr_pointIncludingExpandedHitTestInsets(inside:with:)(__PAIR128__(*&a3, *&a2), v12);

  return v5 & 1;
}

- (_TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super._responderFlags + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_accessoryDelegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_viewModel;
  sub_21D6BF8E0(__src);
  memcpy(self + v4, __src, 0x110uLL);
  result = sub_21DBFC31C();
  __break(1u);
  return result;
}

- (BOOL)isDebugBoundingBoxesEnabled
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TTRIRemindersListReminderCellAccessoryStackView *)&v3 isDebugBoundingBoxesEnabled];
}

- (void)setDebugBoundingBoxesEnabled:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = self;
  [(TTRIRemindersListReminderCellAccessoryStackView *)&v9 setDebugBoundingBoxesEnabled:v3];
  v7 = *(&v6->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_mainStackView);
  v8.receiver = v6;
  v8.super_class = ObjectType;
  [v7 setDebugBoundingBoxesEnabled_];
}

- (void)assigneeViewAction:(id)a3
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
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_21D6BB93C();

  sub_21D0CF7E0(v6, &qword_27CE5C690);
}

- (void)infoButtonAction:(id)a3
{
  v3 = self;
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v5 = self;
  }

  v6 = sub_21D6BC22C();
  if (v6)
  {
    v7 = v6;
    v8 = v3 + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_accessoryDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 1);
      ObjectType = swift_getObjectType();
      (*(v9 + 16))(v3, v7, ObjectType, v9);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v3 = v7;
  }

  sub_21D0CF7E0(v11, &qword_27CE5C690);
}

- (void)subtaskDisclosureAction:(id)a3
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

  v6 = self + OBJC_IVAR____TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView_accessoryDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 24))(self, ObjectType, v7);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_21D0CF7E0(v9, &qword_27CE5C690);
}

- (_TtC15RemindersUICore47TTRIRemindersListReminderCellAccessoryStackView)initWithArrangedSubviews:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end