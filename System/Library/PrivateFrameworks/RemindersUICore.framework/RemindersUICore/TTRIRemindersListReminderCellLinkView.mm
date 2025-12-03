@interface TTRIRemindersListReminderCellLinkView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView)initWithFrame:(CGRect)frame;
- (_TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView)initWithMetadata:(id)metadata;
- (_TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView)initWithPresentationProperties:(id)properties;
- (_TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView)initWithPresentationProperties:(id)properties URL:(id)l;
@end

@implementation TTRIRemindersListReminderCellLinkView

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  [(TTRIRemindersListReminderCellLinkView *)selfCopy maximumLayoutSize];
  v5 = v4;
  v7 = v6;
  v14.receiver = selfCopy;
  v14.super_class = type metadata accessor for TTRIRemindersListReminderCellLinkView();
  [(LPLinkView *)&v14 sizeThatFits:v5, v7];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

- (_TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView)initWithMetadata:(id)metadata
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView)initWithPresentationProperties:(id)properties
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15RemindersUICore37TTRIRemindersListReminderCellLinkView)initWithPresentationProperties:(id)properties URL:(id)l
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5EA20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  if (l)
  {
    sub_21DBF546C();
    v8 = sub_21DBF54CC();
    v10 = 0;
    v9 = (*(v8 - 8) + 56);
  }

  else
  {
    v8 = sub_21DBF54CC();
    v9 = (*(v8 - 8) + 56);
    v10 = 1;
  }

  (*v9)(v7, v10, 1, v8);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end