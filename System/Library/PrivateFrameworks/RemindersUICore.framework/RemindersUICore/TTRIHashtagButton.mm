@interface TTRIHashtagButton
- (BOOL)canBecomeFocused;
- (NSArray)accessibilityCustomActions;
- (NSArray)accessibilityUserInputLabels;
- (NSString)accessibilityHint;
- (NSString)accessibilityLabel;
- (NSString)accessibilityValue;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)setAccessibilityUserInputLabels:(id)labels;
@end

@implementation TTRIHashtagButton

- (BOOL)canBecomeFocused
{
  v3 = self + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_focusDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 8);
    selfCopy = self;
    v7 = v5();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  TTRIHashtagButton.didUpdateFocus(in:with:)(contextCopy, coordinatorCopy);
}

- (NSString)accessibilityLabel
{
  selfCopy = self;
  TTRIHashtagButton.accessibilityLabel.getter();
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

- (NSString)accessibilityValue
{
  v3 = OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_isExcluded;
  swift_beginAccess();
  v4 = 0;
  if (*(&self->super.super.super.super.super.isa + v3) == 1)
  {
    v5 = qword_27CE57560;
    selfCopy = self;
    if (v5 != -1)
    {
      v8 = selfCopy;
      swift_once();
      selfCopy = v8;
    }

    v4 = sub_21DBFA12C();
  }

  return v4;
}

- (NSString)accessibilityHint
{
  v3 = self + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_accessibilityDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(v3 + 1);
    swift_getObjectType();
    v6 = *(v5 + 8);
    selfCopy = self;
    v6();
    v9 = v8;

    swift_unknownObjectRelease();
    if (v9)
    {
      v10 = sub_21DBFA12C();

      Strong = v10;
    }

    else
    {
      Strong = 0;
    }
  }

  return Strong;
}

- (NSArray)accessibilityUserInputLabels
{
  selfCopy = self;
  v3 = TTRIHashtagButton.accessibilityUserInputLabels.getter();

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

- (void)setAccessibilityUserInputLabels:(id)labels
{
  ObjectType = swift_getObjectType();
  if (labels)
  {
    sub_21DBFA5EC();
    selfCopy = self;
    labels = sub_21DBFA5DC();
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TTRIHashtagButton *)&v8 setAccessibilityUserInputLabels:labels];
}

- (NSArray)accessibilityCustomActions
{
  v3 = self + OBJC_IVAR____TtC15RemindersUICore17TTRIHashtagButton_accessibilityDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(v3 + 1);
    swift_getObjectType();
    v6 = *(v5 + 16);
    selfCopy = self;
    v8 = v6();

    swift_unknownObjectRelease();
    if (v8)
    {
      sub_21D0D8CF0(0, qword_27CE58B18);
      v9 = sub_21DBFA5DC();

      Strong = v9;
    }

    else
    {
      Strong = 0;
    }
  }

  return Strong;
}

@end