@interface WFTouchObserver
- (_TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFTouchObserver)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation WFTouchObserver

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_274412734(0, &qword_280952A30);
  sub_2745A7B94();
  sub_27463BA4C();
  v6 = a4;
  v7 = self;
  sub_2745A7814();
}

- (_TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFTouchObserver)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_27463C13C();
    swift_unknownObjectRelease();
  }

  sub_2745A7938();
}

@end