@interface TTRIRemindersListReminderCellGrid
- (_TtC15RemindersUICore33TTRIRemindersListReminderCellGrid)initWithArrangedSubviewRows:(id)a3;
- (_TtC15RemindersUICore33TTRIRemindersListReminderCellGrid)initWithCoder:(id)a3;
- (_TtC15RemindersUICore33TTRIRemindersListReminderCellGrid)initWithFrame:(CGRect)a3;
- (void)layoutMarginsDidChange;
@end

@implementation TTRIRemindersListReminderCellGrid

- (void)layoutMarginsDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TTRIRemindersListReminderCellGrid();
  v2 = v5.receiver;
  [(TTRIRemindersListReminderCellGrid *)&v5 layoutMarginsDidChange];
  v3 = *&v2[OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListReminderCellGrid_layoutMarginsDidUpdate];
  if (v3)
  {

    v3(v4);

    sub_21D0D0E88(v3);
  }

  else
  {
  }
}

- (_TtC15RemindersUICore33TTRIRemindersListReminderCellGrid)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListReminderCellGrid_layoutMarginsDidUpdate);
  v9 = type metadata accessor for TTRIRemindersListReminderCellGrid();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(NUIContainerGridView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICore33TTRIRemindersListReminderCellGrid)initWithArrangedSubviewRows:(id)a3
{
  v3 = a3;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100);
    sub_21DBFA5EC();
    v5 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListReminderCellGrid_layoutMarginsDidUpdate);
    *v5 = 0;
    v5[1] = 0;
    v3 = sub_21DBFA5DC();
  }

  else
  {
    v6 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListReminderCellGrid_layoutMarginsDidUpdate);
    *v6 = 0;
    v6[1] = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for TTRIRemindersListReminderCellGrid();
  v7 = [(NUIContainerGridView *)&v9 initWithArrangedSubviewRows:v3];

  return v7;
}

- (_TtC15RemindersUICore33TTRIRemindersListReminderCellGrid)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListReminderCellGrid_layoutMarginsDidUpdate);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TTRIRemindersListReminderCellGrid();
  v5 = a3;
  v6 = [(TTRIRemindersListReminderCellGrid *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end