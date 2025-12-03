@interface TTRIRemindersListCellAttributePillView
- (CGSize)sizeThatFits:(CGSize)result;
- (_TtC15RemindersUICore38TTRIRemindersListCellAttributePillView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation TTRIRemindersListCellAttributePillView

- (_TtC15RemindersUICore38TTRIRemindersListCellAttributePillView)initWithFrame:(CGRect)frame
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_iconView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_labelView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_iconViewHidden) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_stackView) = 0;
  v5.receiver = self;
  v5.super_class = type metadata accessor for TTRIRemindersListCellAttributePillView();
  v3 = [(TTRIRemindersListCellAttributePillView *)&v5 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_21D6B0018();

  return v3;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for TTRIRemindersListCellAttributePillView();
  v2 = v5.receiver;
  [(TTRIRemindersListCellAttributePillView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_stackView];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    [v4 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC15RemindersUICore38TTRIRemindersListCellAttributePillView_stackView);
  if (v3)
  {
    [v3 sizeThatFits_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end