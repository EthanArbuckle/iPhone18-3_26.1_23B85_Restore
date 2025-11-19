@interface TTRIRemindersListReminderCellContentView
- (CGRect)frame;
- (_TtC15RemindersUICore40TTRIRemindersListReminderCellContentView)initWithArrangedSubviewRows:(id)a3;
- (id)_preferredSeparatorInsetsDidChangeHandler;
- (void)_setPreferredSeparatorInsetsDidChangeHandler:(id)a3;
- (void)containerViewDidLayoutArrangedSubviews:(id)a3;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)a3;
@end

@implementation TTRIRemindersListReminderCellContentView

- (id)_preferredSeparatorInsetsDidChangeHandler
{
  if (*(self + OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView__preferredSeparatorInsetsDidChangeHandler))
  {
    v2 = *(self + OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView__preferredSeparatorInsetsDidChangeHandler + 8);
    v5[4] = *(self + OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView__preferredSeparatorInsetsDidChangeHandler);
    v5[5] = v2;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 1107296256;
    v5[2] = sub_21D0D74FC;
    v5[3] = &block_descriptor_143;
    v3 = _Block_copy(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setPreferredSeparatorInsetsDidChangeHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = sub_21DAA2FE4;
  }

  else
  {
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView__preferredSeparatorInsetsDidChangeHandler);
  v8 = *(self + OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView__preferredSeparatorInsetsDidChangeHandler);
  *v7 = v6;
  v7[1] = v4;
  v9 = self;
  sub_21D0D0E88(v8);
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for TTRIRemindersListReminderCellContentView();
  [(TTRIRemindersListReminderCellContentView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_21DAA2464(x, y, width, height);
}

- (void)layoutMarginsDidChange
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TTRIRemindersListReminderCellContentView();
  v2 = v5.receiver;
  [(TTRIRemindersListReminderCellContentView *)&v5 layoutMarginsDidChange];
  v3 = *&v2[OBJC_IVAR____TtC15RemindersUICore40TTRIRemindersListReminderCellContentView_layoutMarginsDidUpdate];
  if (v3)
  {

    v3(v4);

    sub_21D0D0E88(v3);
  }

  else
  {
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_21DAA262C();
}

- (_TtC15RemindersUICore40TTRIRemindersListReminderCellContentView)initWithArrangedSubviewRows:(id)a3
{
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F100);
    v3 = sub_21DBFA5EC();
  }

  else
  {
    v3 = 0;
  }

  return sub_21DAA2BEC(v3);
}

- (void)containerViewDidLayoutArrangedSubviews:(id)a3
{
  v3 = self;
  sub_21DAA1E60();
}

@end