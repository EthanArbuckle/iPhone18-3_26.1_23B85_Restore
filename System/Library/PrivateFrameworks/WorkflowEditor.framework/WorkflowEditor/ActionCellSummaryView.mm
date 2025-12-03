@interface ActionCellSummaryView
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)viewControllerForCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)revealAction:(id)action preScrollHandler:(id)handler goBackHandler:(id)backHandler scrolledAwayHandler:(id)awayHandler;
- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)input variableProvider:(id)provider completionHandler:(id)handler;
- (void)showParameterEditingHint:(id)hint;
- (void)showVariableEditorWithOptions:(id)options fromSourceRect:(CGRect)rect;
- (void)summaryCoordinator:(id)coordinator disclosureArrowDidChange:(BOOL)change;
- (void)summaryCoordinator:(id)coordinator outputButtonDidChange:(BOOL)change;
- (void)summaryCoordinatorDidInvalidateSize:(id)size;
@end

@implementation ActionCellSummaryView

- (void)layoutSubviews
{
  selfCopy = self;
  sub_274459198();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
  v5 = sub_27445927C(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)summaryCoordinatorDidInvalidateSize:(id)size
{
  sizeCopy = size;
  selfCopy = self;
  sub_27445A9EC();
}

- (void)summaryCoordinator:(id)coordinator disclosureArrowDidChange:(BOOL)change
{
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_27445AABC(selfCopy, change);
}

- (id)viewControllerForCoordinator:(id)coordinator
{
  v3 = sub_27445AB8C();

  return v3;
}

- (void)summaryCoordinator:(id)coordinator outputButtonDidChange:(BOOL)change
{
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_27445ABD4(selfCopy, change);
}

- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)input variableProvider:(id)provider completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v6;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_27445ACB0();
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
  sub_27445AE90(actionCopy, v17, v18, sub_27445B624, v13, v12, v14);
  sub_274406A94(v12);
}

- (void)showVariableEditorWithOptions:(id)options fromSourceRect:(CGRect)rect
{
  optionsCopy = options;
  selfCopy = self;
  sub_27445B1BC(optionsCopy);
}

- (void)showParameterEditingHint:(id)hint
{
  if (hint)
  {
    sub_27463B6AC();
  }

  selfCopy = self;
  sub_27445B448();
}

@end