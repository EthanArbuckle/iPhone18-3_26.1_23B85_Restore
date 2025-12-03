@interface SliderView.SliderGestureRecognizer
- (_TtCC9SeymourUI10SliderViewP33_2440CD4F62170E63FB4B5B855592F14723SliderGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation SliderView.SliderGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_20B51C88C(0, &qword_27C769700);
  sub_20BA646BC();
  sub_20C13CF74();
  eventCopy = event;
  selfCopy = self;
  v8 = sub_20C13CF64();

  v9.receiver = selfCopy;
  v9.super_class = type metadata accessor for SliderView.SliderGestureRecognizer();
  [(SliderView.SliderGestureRecognizer *)&v9 touchesBegan:v8 withEvent:eventCopy];

  [(SliderView.SliderGestureRecognizer *)selfCopy setState:1];
}

- (_TtCC9SeymourUI10SliderViewP33_2440CD4F62170E63FB4B5B855592F14723SliderGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_20C13DA64();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_20C0D7C3C(v6, action);
}

@end