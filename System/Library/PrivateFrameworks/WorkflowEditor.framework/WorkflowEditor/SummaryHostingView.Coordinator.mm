@interface SummaryHostingView.Coordinator
- (id)viewControllerForCoordinator:(id)coordinator;
- (void)revealAction:(id)action preScrollHandler:(id)handler goBackHandler:(id)backHandler scrolledAwayHandler:(id)awayHandler;
- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)input variableProvider:(id)provider completionHandler:(id)handler;
- (void)showParameterEditingHint:(id)hint;
- (void)showVariableEditorWithOptions:(id)options fromSourceRect:(CGRect)rect;
- (void)summaryCoordinator:(id)coordinator disclosureArrowDidChange:(BOOL)change;
- (void)summaryCoordinator:(id)coordinator outputButtonDidChange:(BOOL)change;
- (void)summaryCoordinatorDidInvalidateSize:(id)size;
@end

@implementation SummaryHostingView.Coordinator

- (id)viewControllerForCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  selfCopy = self;
  v6 = sub_274550F44();

  return v6;
}

- (void)summaryCoordinatorDidInvalidateSize:(id)size
{
  sizeCopy = size;
  selfCopy = self;
  sub_274551020(sizeCopy);
}

- (void)summaryCoordinator:(id)coordinator disclosureArrowDidChange:(BOOL)change
{
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_2745510EC();
}

- (void)summaryCoordinator:(id)coordinator outputButtonDidChange:(BOOL)change
{
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_27455124C();
}

- (void)showActionOutputPickerAllowingShortcutInput:(BOOL)input variableProvider:(id)provider completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_274551430(input, provider, sub_27445B62C, v9);
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
  sub_274551648(actionCopy, sub_27445B624, v13, sub_27445B860, v14, v12, v15);
  sub_274406A94(v12);
}

- (void)showVariableEditorWithOptions:(id)options fromSourceRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  optionsCopy = options;
  selfCopy = self;
  sub_274551A50(optionsCopy, x, y, width, height);
}

- (void)showParameterEditingHint:(id)hint
{
  if (hint)
  {
    sub_27463B6AC();
  }

  selfCopy = self;
  sub_274552690();
}

@end