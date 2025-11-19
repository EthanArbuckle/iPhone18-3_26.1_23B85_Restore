@interface TTRIRemindersListCellPersonView
- (_TtC15RemindersUICore31TTRIRemindersListCellPersonView)initWithFrame:(CGRect)a3;
@end

@implementation TTRIRemindersListCellPersonView

- (_TtC15RemindersUICore31TTRIRemindersListCellPersonView)initWithFrame:(CGRect)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_contact) = 0;
  v5 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_name);
  *v5 = 0;
  v5[1] = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore31TTRIRemindersListCellPersonView_avatarViewController) = 0;
  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(TTRIRemindersListCellAttributePillView *)&v8 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_21D6D4234();
  sub_21D6D43D8();

  return v6;
}

@end