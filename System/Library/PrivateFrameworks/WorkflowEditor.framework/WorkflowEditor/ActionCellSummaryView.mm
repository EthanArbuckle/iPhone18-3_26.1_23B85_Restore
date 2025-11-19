@interface ActionCellSummaryView
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)viewControllerForCoordinator:(id)a3;
- (void)layoutSubviews;
- (void)revealAction:(id)a3 preScrollHandler:(id)a4 goBackHandler:(id)a5 scrolledAwayHandler:(id)a6;
- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)a3 variableProvider:(id)a4 completionHandler:(id)a5;
- (void)showParameterEditingHint:(id)a3;
- (void)showVariableEditorWithOptions:(id)a3 fromSourceRect:(CGRect)a4;
- (void)summaryCoordinator:(id)a3 disclosureArrowDidChange:(BOOL)a4;
- (void)summaryCoordinator:(id)a3 outputButtonDidChange:(BOOL)a4;
- (void)summaryCoordinatorDidInvalidateSize:(id)a3;
@end

@implementation ActionCellSummaryView

- (void)layoutSubviews
{
  v2 = self;
  sub_274459198();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_27445927C(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)summaryCoordinatorDidInvalidateSize:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27445A9EC();
}

- (void)summaryCoordinator:(id)a3 disclosureArrowDidChange:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_27445AABC(v7, a4);
}

- (id)viewControllerForCoordinator:(id)a3
{
  v3 = sub_27445AB8C();

  return v3;
}

- (void)summaryCoordinator:(id)a3 outputButtonDidChange:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_27445ABD4(v7, a4);
}

- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)a3 variableProvider:(id)a4 completionHandler:(id)a5
{
  v6 = _Block_copy(a5);
  *(swift_allocObject() + 16) = v6;
  swift_unknownObjectRetain();
  v7 = self;
  sub_27445ACB0();
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
  sub_27445AE90(v15, v17, v18, sub_27445B624, v13, v12, v14);
  sub_274406A94(v12);
}

- (void)showVariableEditorWithOptions:(id)a3 fromSourceRect:(CGRect)a4
{
  v5 = a3;
  v6 = self;
  sub_27445B1BC(v5);
}

- (void)showParameterEditingHint:(id)a3
{
  if (a3)
  {
    sub_27463B6AC();
  }

  v4 = self;
  sub_27445B448();
}

@end