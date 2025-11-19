@interface TTRIQuickReminderListPickerStackView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC15RemindersUICore36TTRIQuickReminderListPickerStackView)initWithArrangedSubviews:(id)a3;
@end

@implementation TTRIQuickReminderListPickerStackView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v11.value.super.isa = v4;
  LOBYTE(v4) = NUIContainerView.ttr_pointIncludingExpandedHitTestInsets(inside:with:)(__PAIR128__(*&y, *&x), v11);

  return v4 & 1;
}

- (_TtC15RemindersUICore36TTRIQuickReminderListPickerStackView)initWithArrangedSubviews:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_21D114EC8();
    sub_21DBFA5EC();
    a3 = sub_21DBFA5DC();
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  v6 = [(TTRNoAnimationContainerStackView *)&v8 initWithArrangedSubviews:a3];

  return v6;
}

@end