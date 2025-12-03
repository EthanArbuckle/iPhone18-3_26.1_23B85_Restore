@interface FocusSelectionGesture.Coordinator
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (_TtCV20VisualIntelligenceUI21FocusSelectionGesture11Coordinator)init;
- (void)didPan:(id)pan;
@end

@implementation FocusSelectionGesture.Coordinator

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_21E110EF0();

  return v9 & 1;
}

- (void)didPan:(id)pan
{
  panCopy = pan;
  selfCopy = self;
  state = [panCopy state];
  if ((state - 1) >= 2)
  {
    if (state == 3)
    {
      sub_21E1086F8(panCopy);
    }
  }

  else
  {
    sub_21E1090E0(panCopy);
  }
}

- (_TtCV20VisualIntelligenceUI21FocusSelectionGesture11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end