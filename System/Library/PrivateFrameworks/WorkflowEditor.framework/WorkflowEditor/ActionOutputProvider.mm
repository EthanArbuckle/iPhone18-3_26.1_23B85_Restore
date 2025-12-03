@interface ActionOutputProvider
- (void)revealAction:(id)action preScrollHandler:(id)handler goBackHandler:(id)backHandler scrolledAwayHandler:(id)awayHandler;
- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)input variableProvider:(id)provider completionHandler:(id)handler;
@end

@implementation ActionOutputProvider

- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)input variableProvider:(id)provider completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v6;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2744874F4();
  swift_unknownObjectRelease();
}

- (void)revealAction:(id)action preScrollHandler:(id)handler goBackHandler:(id)backHandler scrolledAwayHandler:(id)awayHandler
{
  v8 = _Block_copy(handler);
  v9 = _Block_copy(backHandler);
  v10 = _Block_copy(awayHandler);
  *(swift_allocObject() + 16) = v8;
  *(swift_allocObject() + 16) = v9;
  if (v10)
  {
    *(swift_allocObject() + 16) = v10;
  }

  sub_27448760C();
}

@end