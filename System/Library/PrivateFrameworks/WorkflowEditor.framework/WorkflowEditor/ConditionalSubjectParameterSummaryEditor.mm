@interface ConditionalSubjectParameterSummaryEditor
- (BOOL)variableMenuSupportsVariableSelectionForSlotWithIdentifier:(id)identifier;
- (id)clearButtonMenuItemForSlotWithIdentifier:(id)identifier;
- (id)customMenuElementsForSlotWithIdentifier:(id)identifier style:(unint64_t)style;
- (id)stateByReplacingVariableFromCurrentState:(id)state withVariable:(id)variable;
- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor;
- (void)cancelEditingWithCompletionHandler:(id)handler;
@end

@implementation ConditionalSubjectParameterSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor
{
  identifierCopy = identifier;
  anchorCopy = anchor;
  selfCopy = self;
  sub_2744943F8(identifierCopy, anchorCopy);
}

- (void)cancelEditingWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_2745EA34C(&unk_274650130, v5);
}

- (BOOL)variableMenuSupportsVariableSelectionForSlotWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  LOBYTE(self) = sub_274495100(identifierCopy);

  return self & 1;
}

- (id)clearButtonMenuItemForSlotWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  v6 = sub_2744952FC(identifierCopy);

  return v6;
}

- (id)customMenuElementsForSlotWithIdentifier:(id)identifier style:(unint64_t)style
{
  identifierCopy = identifier;
  selfCopy = self;
  v8 = sub_274495538(identifierCopy, style);

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E80);
    v9 = sub_27463B7FC();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)stateByReplacingVariableFromCurrentState:(id)state withVariable:(id)variable
{
  stateCopy = state;
  variableCopy = variable;
  selfCopy = self;
  v10 = sub_274496B88(state, variable);

  return v10;
}

@end