@interface PresenterContainer
- (void)moduleSummaryPresenterDidFinish:(id)a3;
- (void)revealAction:(id)a3 preScrollHandler:(id)a4 goBackHandler:(id)a5 scrolledAwayHandler:(id)a6;
- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)a3 variableProvider:(id)a4 completionHandler:(id)a5;
- (void)showParameterEditingHint:(id)a3;
@end

@implementation PresenterContainer

- (void)moduleSummaryPresenterDidFinish:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27456AEB8();
}

- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)a3 variableProvider:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_unknownObjectRetain();
  v10 = self;
  sub_27456AF9C(v6, a4, sub_27456CCCC, v9);
  swift_unknownObjectRelease();
}

- (void)revealAction:(id)a3 preScrollHandler:(id)a4 goBackHandler:(id)a5 scrolledAwayHandler:(id)a6
{
  v10 = _Block_copy(a4);
  v11 = _Block_copy(a5);
  v12 = _Block_copy(a6);
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

  v16 = a3;
  v17 = self;
  sub_27456B0F4(v16, sub_27445B624, v13, sub_27445B860, v14, v12, v15);
  sub_274406A94(v12);
}

- (void)showParameterEditingHint:(id)a3
{
  if (a3)
  {
    sub_27463B6AC();
  }

  v4 = self;
  sub_27456B3A8();
}

@end