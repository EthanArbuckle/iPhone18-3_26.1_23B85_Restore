@interface TagFieldHostView.Coordinator
- (void)revealAction:(id)a3 preScrollHandler:(id)a4 goBackHandler:(id)a5 scrolledAwayHandler:(id)a6;
- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)a3 variableProvider:(id)a4 completionHandler:(id)a5;
- (void)showParameterEditingHint:(id)a3;
@end

@implementation TagFieldHostView.Coordinator

- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)a3 variableProvider:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  *(swift_allocObject() + 16) = v6;
  swift_unknownObjectRetain();
  v7 = self;
  sub_2744A54A4();
  swift_unknownObjectRelease();
}

- (void)revealAction:(id)a3 preScrollHandler:(id)a4 goBackHandler:(id)a5 scrolledAwayHandler:(id)a6
{
  v10 = _Block_copy(a4);
  v11 = _Block_copy(a5);
  v12 = _Block_copy(a6);
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

  v15 = a3;
  v16 = self;
  sub_2744A5688(v15, v17, v18, sub_27445B624, v13, v12, v14);
  sub_274406A94(v12);
}

- (void)showParameterEditingHint:(id)a3
{
  if (a3)
  {
    sub_27463B6AC();
  }

  v4 = self;
  sub_2744A5CF8();
}

@end