@interface SystemShortcutPickerSummaryEditor
- (id)viewControllerForEditingWithIdentifier:(id)identifier;
- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor;
- (void)cancelEditingWithCompletionHandler:(id)handler;
- (void)smartShortcutPickerViewControllerDidFinishWithSystemAction:(id)action error:(id)error;
@end

@implementation SystemShortcutPickerSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor
{
  identifierCopy = identifier;
  anchorCopy = anchor;
  selfCopy = self;
  sub_27444B038(identifierCopy, anchorCopy);
}

- (id)viewControllerForEditingWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  v6 = sub_27444B0BC();

  return v6;
}

- (void)cancelEditingWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_2745EA34C(&unk_27464B3E8, v5);
}

- (void)smartShortcutPickerViewControllerDidFinishWithSystemAction:(id)action error:(id)error
{
  actionCopy = action;
  selfCopy = self;
  errorCopy = error;
  sub_27444BBB4(action);
}

@end