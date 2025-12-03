@interface TTRIRemindersListReminderCellGrid
- (_TtC15RemindersUICore33TTRIRemindersListReminderCellGrid)initWithArrangedSubviewRows:(id)rows;
- (_TtC15RemindersUICore33TTRIRemindersListReminderCellGrid)initWithCoder:(id)coder;
- (_TtC15RemindersUICore33TTRIRemindersListReminderCellGrid)initWithFrame:(CGRect)frame;
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

- (_TtC15RemindersUICore33TTRIRemindersListReminderCellGrid)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListReminderCellGrid_layoutMarginsDidUpdate);
  v9 = type metadata accessor for TTRIRemindersListReminderCellGrid();
  *v8 = 0;
  v8[1] = 0;
  v11.receiver = self;
  v11.super_class = v9;
  return [(NUIContainerGridView *)&v11 initWithFrame:x, y, width, height];
}

- (_TtC15RemindersUICore33TTRIRemindersListReminderCellGrid)initWithArrangedSubviewRows:(id)rows
{
  rowsCopy = rows;
  if (rows)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100);
    sub_21DBFA5EC();
    v5 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListReminderCellGrid_layoutMarginsDidUpdate);
    *v5 = 0;
    v5[1] = 0;
    rowsCopy = sub_21DBFA5DC();
  }

  else
  {
    v6 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListReminderCellGrid_layoutMarginsDidUpdate);
    *v6 = 0;
    v6[1] = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for TTRIRemindersListReminderCellGrid();
  v7 = [(NUIContainerGridView *)&v9 initWithArrangedSubviewRows:rowsCopy];

  return v7;
}

- (_TtC15RemindersUICore33TTRIRemindersListReminderCellGrid)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore33TTRIRemindersListReminderCellGrid_layoutMarginsDidUpdate);
  *v4 = 0;
  v4[1] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TTRIRemindersListReminderCellGrid();
  coderCopy = coder;
  v6 = [(TTRIRemindersListReminderCellGrid *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end