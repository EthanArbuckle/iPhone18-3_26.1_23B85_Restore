@interface FocusSelectionGesture.Coordinator
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (_TtCV20VisualIntelligenceUI21FocusSelectionGesture11Coordinator)init;
- (void)didPan:(id)a3;
@end

@implementation FocusSelectionGesture.Coordinator

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_21E110EF0();

  return v9 & 1;
}

- (void)didPan:(id)a3
{
  v4 = a3;
  v6 = self;
  v5 = [v4 state];
  if ((v5 - 1) >= 2)
  {
    if (v5 == 3)
    {
      sub_21E1086F8(v4);
    }
  }

  else
  {
    sub_21E1090E0(v4);
  }
}

- (_TtCV20VisualIntelligenceUI21FocusSelectionGesture11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end