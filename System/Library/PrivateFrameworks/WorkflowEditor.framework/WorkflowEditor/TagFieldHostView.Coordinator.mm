@interface TagFieldHostView.Coordinator
- (void)revealAction:(id)action preScrollHandler:(id)handler goBackHandler:(id)backHandler scrolledAwayHandler:(id)awayHandler;
- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)input variableProvider:(id)provider completionHandler:(id)handler;
- (void)showParameterEditingHint:(id)hint;
@end

@implementation TagFieldHostView.Coordinator

- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)input variableProvider:(id)provider completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v6;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2744A54A4();
  swift_unknownObjectRelease();
}

- (void)revealAction:(id)action preScrollHandler:(id)handler goBackHandler:(id)backHandler scrolledAwayHandler:(id)awayHandler
{
  v10 = _Block_copy(handler);
  v11 = _Block_copy(backHandler);
  v12 = _Block_copy(awayHandler);
  *(swift_allocObject() + 16) = v10;
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  if (v12)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    v12 = sub_27445B860;
  }

  else
  {
    v14 = 0;
  }

  actionCopy = action;
  selfCopy = self;
  sub_2744A5688(actionCopy, v17, v18, sub_27445B624, v13, v12, v14);
  sub_274406A94(v12);
}

- (void)showParameterEditingHint:(id)hint
{
  if (hint)
  {
    sub_27463B6AC();
  }

  selfCopy = self;
  sub_2744A5CF8();
}

@end