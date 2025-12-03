@interface HomeAccessoryPickerSummaryEditor
- (id)stateByReplacingVariableFromCurrentState:(id)state withVariable:(id)variable;
- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor;
- (void)cancelEditingWithCompletionHandler:(id)handler;
@end

@implementation HomeAccessoryPickerSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor
{
  identifierCopy = identifier;
  anchorCopy = anchor;
  selfCopy = self;
  sub_27453FA98(identifierCopy, anchorCopy);
}

- (void)cancelEditingWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_2745EA34C(&unk_2746580C0, v5);
}

- (id)stateByReplacingVariableFromCurrentState:(id)state withVariable:(id)variable
{
  stateCopy = state;
  variableCopy = variable;
  selfCopy = self;
  v9 = sub_2745400A8();

  return v9;
}

@end