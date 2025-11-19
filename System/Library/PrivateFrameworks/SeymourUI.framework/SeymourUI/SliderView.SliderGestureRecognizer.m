@interface SliderView.SliderGestureRecognizer
- (_TtCC9SeymourUI10SliderViewP33_2440CD4F62170E63FB4B5B855592F14723SliderGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation SliderView.SliderGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_20B51C88C(0, &qword_27C769700);
  sub_20BA646BC();
  sub_20C13CF74();
  v6 = a4;
  v7 = self;
  v8 = sub_20C13CF64();

  v9.receiver = v7;
  v9.super_class = type metadata accessor for SliderView.SliderGestureRecognizer();
  [(SliderView.SliderGestureRecognizer *)&v9 touchesBegan:v8 withEvent:v6];

  [(SliderView.SliderGestureRecognizer *)v7 setState:1];
}

- (_TtCC9SeymourUI10SliderViewP33_2440CD4F62170E63FB4B5B855592F14723SliderGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_20C13DA64();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_20C0D7C3C(v6, a4);
}

@end