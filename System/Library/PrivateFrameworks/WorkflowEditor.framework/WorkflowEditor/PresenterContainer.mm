@interface PresenterContainer
- (void)moduleSummaryPresenterDidFinish:(id)finish;
- (void)revealAction:(id)action preScrollHandler:(id)handler goBackHandler:(id)backHandler scrolledAwayHandler:(id)awayHandler;
- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)input variableProvider:(id)provider completionHandler:(id)handler;
- (void)showParameterEditingHint:(id)hint;
@end

@implementation PresenterContainer

- (void)moduleSummaryPresenterDidFinish:(id)finish
{
  finishCopy = finish;
  selfCopy = self;
  sub_27456AEB8();
}

- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)input variableProvider:(id)provider completionHandler:(id)handler
{
  inputCopy = input;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_27456AF9C(inputCopy, provider, sub_27456CCCC, v9);
  swift_unknownObjectRelease();
}

- (void)revealAction:(id)action preScrollHandler:(id)handler goBackHandler:(id)backHandler scrolledAwayHandler:(id)awayHandler
{
  v10 = _Block_copy(handler);
  v11 = _Block_copy(backHandler);
  v12 = _Block_copy(awayHandler);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  if (v12)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v12;
    v12 = sub_27445B860;
  }

  else
  {
    v15 = 0;
  }

  actionCopy = action;
  selfCopy = self;
  sub_27456B0F4(actionCopy, sub_27445B624, v13, sub_27445B860, v14, v12, v15);
  sub_274406A94(v12);
}

- (void)showParameterEditingHint:(id)hint
{
  if (hint)
  {
    sub_27463B6AC();
  }

  selfCopy = self;
  sub_27456B3A8();
}

@end