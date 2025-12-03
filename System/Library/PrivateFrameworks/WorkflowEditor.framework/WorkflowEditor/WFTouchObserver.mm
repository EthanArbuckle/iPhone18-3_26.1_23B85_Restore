@interface WFTouchObserver
- (_TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFTouchObserver)initWithTarget:(id)target action:(SEL)action;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation WFTouchObserver

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_274412734(0, &qword_280952A30);
  sub_2745A7B94();
  sub_27463BA4C();
  eventCopy = event;
  selfCopy = self;
  sub_2745A7814();
}

- (_TtC14WorkflowEditorP33_6E0AB3EFA9E011E63A01E8AC0F9972C415WFTouchObserver)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_27463C13C();
    swift_unknownObjectRelease();
  }

  sub_2745A7938();
}

@end