@interface TTRIReminderCellQuickBarFlagViewController
- (_TtC15RemindersUICore42TTRIReminderCellQuickBarFlagViewController)init;
- (void)buttonAction:(id)a3;
@end

@implementation TTRIReminderCellQuickBarFlagViewController

- (void)buttonAction:(id)a3
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
    memset(v7, 0, sizeof(v7));
    v5 = self;
  }

  v6 = OBJC_IVAR____TtC15RemindersUICore42TTRIReminderCellQuickBarFlagViewController_isFlagged;
  *(&self->super.isa + OBJC_IVAR____TtC15RemindersUICore42TTRIReminderCellQuickBarFlagViewController_isFlagged) = (*(&self->super.isa + OBJC_IVAR____TtC15RemindersUICore42TTRIReminderCellQuickBarFlagViewController_isFlagged) & 1) == 0;
  sub_21D854808();
  sub_21D854008(*(&self->super.isa + v6));
  sub_21D0CF7E0(v7, &qword_27CE5C690);
}

- (_TtC15RemindersUICore42TTRIReminderCellQuickBarFlagViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end