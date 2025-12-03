@interface TTRIRemindersListReminderCell_collectionView
- (BOOL)accessibilityActivate;
- (BOOL)accessibilityPerformEscape;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (NSArray)accessibilityElements;
- (NSAttributedString)accessibilityAttributedLabel;
- (NSString)accessibilityIdentifier;
- (id)_accessibilityBriefLabel;
- (id)_accessibilityInternalTextLinks;
- (unint64_t)accessibilityTraits;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)_scribbleInteraction:(id)interaction didFinishWritingInElement:(id)element;
- (void)_scribbleInteraction:(id)interaction willBeginWritingInElement:(id)element;
- (void)prepareForReuse;
- (void)setAccessibilityIdentifier:(id)identifier;
@end

@implementation TTRIRemindersListReminderCell_collectionView

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_21DBF87CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF879C();
  selfCopy = self;
  TTRIRemindersListReminderCell_collectionView.updateConfiguration(using:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIRemindersListIntermediateViewModelObservingCell *)&v3 prepareForReuse];

  sub_21D61C294();
}

- (NSString)accessibilityIdentifier
{
  selfCopy = self;
  TTRIRemindersListReminderCell_collectionView.accessibilityIdentifier.getter();
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

- (void)setAccessibilityIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (identifier)
  {
    sub_21DBFA16C();
    selfCopy = self;
    identifier = sub_21DBFA12C();
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TTRIRemindersListReminderCell_collectionView *)&v8 setAccessibilityIdentifier:identifier];
}

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  v3 = TTRIRemindersListReminderCell_collectionView.isAccessibilityElement.getter();

  return v3;
}

- (NSAttributedString)accessibilityAttributedLabel
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_customAccessibilityElement;
  swift_beginAccess();
  v5 = *(&self->super.super.super.super.super.super.super.super.isa + v4);
  if (v5)
  {
    selfCopy = self;
    v7 = v5;
    accessibilityAttributedLabel = TTRIRemindersListReminderCellAccessibilityElement.accessibilityAttributedLabel.getter();

    if (accessibilityAttributedLabel)
    {

      goto LABEL_6;
    }
  }

  else
  {
    selfCopy2 = self;
  }

  v11.receiver = self;
  v11.super_class = ObjectType;
  accessibilityAttributedLabel = [(TTRIRemindersListReminderCell_collectionView *)&v11 accessibilityAttributedLabel];

LABEL_6:

  return accessibilityAttributedLabel;
}

- (id)_accessibilityBriefLabel
{
  selfCopy = self;
  TTRIRemindersListReminderCell_collectionView._accessibilityBriefLabel()();

  v3 = sub_21DBFA12C();

  return v3;
}

- (NSArray)accessibilityElements
{
  selfCopy = self;
  v3 = TTRIRemindersListReminderCell_collectionView.accessibilityElements.getter();

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

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  v3 = TTRIRemindersListReminderCell_collectionView.accessibilityActivate()();

  return v3;
}

- (CGPoint)accessibilityActivationPoint
{
  selfCopy = self;
  TTRIRemindersListReminderCell_collectionView.accessibilityActivationPoint.getter();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.y = v8;
  result.x = v7;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  accessibilityTraits = [(TTRIRemindersListReminderCell_collectionView *)&v7 accessibilityTraits];
  if ([v2 isSelected])
  {
    v4 = *MEMORY[0x277D76598];

    if ((v4 & ~accessibilityTraits) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    accessibilityTraits |= v5;
  }

  else
  {
  }

  return accessibilityTraits;
}

- (BOOL)accessibilityPerformEscape
{
  selfCopy = self;
  v3 = TTRIRemindersListReminderCell_collectionView.accessibilityPerformEscape()();

  return v3;
}

- (id)_accessibilityInternalTextLinks
{
  selfCopy = self;
  TTRIRemindersListReminderCell_collectionView._accessibilityInternalTextLinks()();

  sub_21D0D8CF0(0, &unk_27CE5F130);
  v3 = sub_21DBFA5DC();

  return v3;
}

- (void)_scribbleInteraction:(id)interaction willBeginWritingInElement:(id)element
{
  v5 = self + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 192);
    selfCopy = self;
    v7();
    swift_unknownObjectRelease();
  }
}

- (void)_scribbleInteraction:(id)interaction didFinishWritingInElement:(id)element
{
  v5 = self + OBJC_IVAR____TtC15RemindersUICore44TTRIRemindersListReminderCell_collectionView_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 200);
    selfCopy = self;
    v7();
    swift_unknownObjectRelease();
  }
}

@end