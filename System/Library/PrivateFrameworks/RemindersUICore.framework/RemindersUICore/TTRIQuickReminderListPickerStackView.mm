@interface TTRIQuickReminderListPickerStackView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (_TtC15RemindersUICore36TTRIQuickReminderListPickerStackView)initWithArrangedSubviews:(id)subviews;
@end

@implementation TTRIQuickReminderListPickerStackView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  eventCopy = event;
  y = inside.y;
  x = inside.x;
  eventCopy2 = event;
  selfCopy = self;
  v11.value.super.isa = eventCopy;
  LOBYTE(eventCopy) = NUIContainerView.ttr_pointIncludingExpandedHitTestInsets(inside:with:)(__PAIR128__(*&y, *&x), v11);

  return eventCopy & 1;
}

- (_TtC15RemindersUICore36TTRIQuickReminderListPickerStackView)initWithArrangedSubviews:(id)subviews
{
  ObjectType = swift_getObjectType();
  if (subviews)
  {
    sub_21D114EC8();
    sub_21DBFA5EC();
    subviews = sub_21DBFA5DC();
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(TTRNoAnimationContainerStackView *)&v8 initWithArrangedSubviews:subviews];

  return v6;
}

@end