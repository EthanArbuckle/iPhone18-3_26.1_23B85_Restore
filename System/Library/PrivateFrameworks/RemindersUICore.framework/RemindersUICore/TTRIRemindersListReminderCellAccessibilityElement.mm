@interface TTRIRemindersListReminderCellAccessibilityElement
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (NSArray)accessibilityUserInputLabels;
- (NSAttributedString)accessibilityAttributedLabel;
- (NSString)accessibilityHint;
- (_TtC15RemindersUICore49TTRIRemindersListReminderCellAccessibilityElement)init;
- (_TtC15RemindersUICore49TTRIRemindersListReminderCellAccessibilityElement)initWithAccessibilityContainer:(id)container;
- (id)_accessibilityInternalTextLinks;
- (unint64_t)accessibilityTraits;
@end

@implementation TTRIRemindersListReminderCellAccessibilityElement

- (CGRect)accessibilityFrame
{
  selfCopy = self;
  accessibilityContainer = [(TTRIRemindersListReminderCellAccessibilityElement *)selfCopy accessibilityContainer];
  if (!accessibilityContainer)
  {

LABEL_6:
    v16 = 0.0;
    v15 = 0.0;
    v14 = 0.0;
    v13 = 0.0;
    goto LABEL_7;
  }

  v4 = accessibilityContainer;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  [v4 accessibilityFrame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();

  v13 = v12;
  v14 = v10;
  v15 = v8;
  v16 = v6;
LABEL_7:
  result.size.height = v13;
  result.size.width = v14;
  result.origin.y = v15;
  result.origin.x = v16;
  return result;
}

- (CGPoint)accessibilityActivationPoint
{
  selfCopy = self;
  accessibilityContainer = [(TTRIRemindersListReminderCellAccessibilityElement *)selfCopy accessibilityContainer];
  if (!accessibilityContainer)
  {

LABEL_6:
    v10 = 0.0;
    v9 = 0.0;
    goto LABEL_7;
  }

  v4 = accessibilityContainer;
  swift_getObjectType();
  if (!swift_conformsToProtocol2())
  {

    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  [v4 accessibilityActivationPoint];
  v6 = v5;
  v8 = v7;
  swift_unknownObjectRelease();

  v9 = v8;
  v10 = v6;
LABEL_7:
  result.y = v9;
  result.x = v10;
  return result;
}

- (NSAttributedString)accessibilityAttributedLabel
{
  selfCopy = self;
  v3 = TTRIRemindersListReminderCellAccessibilityElement.accessibilityAttributedLabel.getter();

  return v3;
}

- (NSArray)accessibilityUserInputLabels
{
  selfCopy = self;
  v3 = TTRIRemindersListReminderCellAccessibilityElement.accessibilityUserInputLabels.getter();

  if (v3)
  {
    v4 = sub_21DBFA5DC();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v3 = TTRIRemindersListReminderCellAccessibilityElement.accessibilityTraits.getter();

  return v3;
}

- (NSString)accessibilityHint
{
  selfCopy = self;
  TTRIRemindersListReminderCellAccessibilityElement.accessibilityHint.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_21DBFA12C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_accessibilityInternalTextLinks
{
  selfCopy = self;
  accessibilityContainer = [(TTRIRemindersListReminderCellAccessibilityElement *)selfCopy accessibilityContainer];
  if (accessibilityContainer)
  {
    v4 = accessibilityContainer;
    swift_getObjectType();
    if (swift_conformsToProtocol2())
    {
      _accessibilityInternalTextLinks = [v4 _accessibilityInternalTextLinks];
      swift_unknownObjectRelease();
      if (_accessibilityInternalTextLinks)
      {
        sub_21D0D8CF0(0, &unk_27CE5F130);
        sub_21DBFA5EC();

        selfCopy = _accessibilityInternalTextLinks;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  sub_21D0D8CF0(0, &unk_27CE5F130);
  v6 = sub_21DBFA5DC();

  return v6;
}

- (_TtC15RemindersUICore49TTRIRemindersListReminderCellAccessibilityElement)initWithAccessibilityContainer:(id)container
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC15RemindersUICore49TTRIRemindersListReminderCellAccessibilityElement_ttriAccessibilityLabelSeparator;
  if (qword_280D1B938 != -1)
  {
    swift_once();
  }

  v6 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v7 = sub_21DBFA12C();
  initWithString_ = [v6 initWithString_];

  *(&self->super.super.super.isa + v5) = initWithString_;
  __swift_project_boxed_opaque_existential_1(v13, v13[3]);
  v9 = sub_21DBFC62C();
  v12.receiver = self;
  v12.super_class = ObjectType;
  v10 = [(TTRIRemindersListReminderCellAccessibilityElement *)&v12 initWithAccessibilityContainer:v9];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v13);
  return v10;
}

- (_TtC15RemindersUICore49TTRIRemindersListReminderCellAccessibilityElement)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC15RemindersUICore49TTRIRemindersListReminderCellAccessibilityElement_ttriAccessibilityLabelSeparator;
  if (qword_280D1B938 != -1)
  {
    swift_once();
  }

  v5 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v6 = sub_21DBFA12C();
  initWithString_ = [v5 initWithString_];

  *(&self->super.super.super.isa + v4) = initWithString_;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(TTRIRemindersListReminderCellAccessibilityElement *)&v9 init];
}

@end