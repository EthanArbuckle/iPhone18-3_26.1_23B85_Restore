@interface ActionOutputProvider
- (void)revealAction:(id)a3 preScrollHandler:(id)a4 goBackHandler:(id)a5 scrolledAwayHandler:(id)a6;
- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)a3 variableProvider:(id)a4 completionHandler:(id)a5;
@end

@implementation ActionOutputProvider

- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)a3 variableProvider:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  *(swift_allocObject() + 16) = v6;
  swift_unknownObjectRetain();
  v7 = self;
  sub_2744874F4();
  swift_unknownObjectRelease();
}

- (void)revealAction:(id)a3 preScrollHandler:(id)a4 goBackHandler:(id)a5 scrolledAwayHandler:(id)a6
{
  v8 = _Block_copy(a4);
  v9 = _Block_copy(a5);
  v10 = _Block_copy(a6);
  *(swift_allocObject() + 16) = v8;
  *(swift_allocObject() + 16) = v9;
  if (v10)
  {
    *(swift_allocObject() + 16) = v10;
  }

  sub_27448760C();
}

@end