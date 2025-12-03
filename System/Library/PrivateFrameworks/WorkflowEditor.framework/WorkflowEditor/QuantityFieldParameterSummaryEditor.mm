@interface QuantityFieldParameterSummaryEditor
- (BOOL)textEntryShouldChangeText:(id)text;
- (BOOL)variableMenuSupportsVariableSelectionForSlotWithIdentifier:(id)identifier;
- (WFVariableProvider)variableProvider;
- (id)clearButtonMenuItemForSlotWithIdentifier:(id)identifier;
- (id)customMenuElementsForSlotWithIdentifier:(id)identifier style:(unint64_t)style;
- (id)stateByReplacingVariableFromCurrentState:(id)state withVariable:(id)variable;
- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor;
- (void)cancelEditingWithCompletionHandler:(id)handler;
- (void)setVariableProvider:(id)provider;
- (void)stageState:(id)state;
- (void)textEntryDidFinish;
- (void)textEntryTextDidChange:(id)change;
- (void)textEntryWillBegin:(id)begin allowMultipleLines:(BOOL *)lines;
@end

@implementation QuantityFieldParameterSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor
{
  identifierCopy = identifier;
  anchorCopy = anchor;
  selfCopy = self;
  sub_2744A2BC4(identifierCopy);
}

- (id)customMenuElementsForSlotWithIdentifier:(id)identifier style:(unint64_t)style
{
  identifierCopy = identifier;
  selfCopy = self;
  v7 = sub_2744A2D3C(identifierCopy);

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E80);
    v8 = sub_27463B7FC();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)cancelEditingWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_2745EA34C(&unk_274650780, v5);
}

- (WFVariableProvider)variableProvider
{
  selfCopy = self;
  v3 = sub_2744A3640();

  return v3;
}

- (void)setVariableProvider:(id)provider
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2744A36E8(provider);
}

- (id)stateByReplacingVariableFromCurrentState:(id)state withVariable:(id)variable
{
  stateCopy = state;
  variableCopy = variable;
  selfCopy = self;
  v9 = sub_2744A37C0(selfCopy, variable);

  return v9;
}

- (BOOL)variableMenuSupportsVariableSelectionForSlotWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  v6 = sub_2744A38FC(identifierCopy);

  return v6 & 1;
}

- (id)clearButtonMenuItemForSlotWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  v6 = sub_2744A3A14(identifierCopy);

  return v6;
}

- (void)textEntryWillBegin:(id)begin allowMultipleLines:(BOOL *)lines
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2744A3B88(begin, lines);
  swift_unknownObjectRelease();
}

- (BOOL)textEntryShouldChangeText:(id)text
{
  textCopy = text;
  textCopy2 = text;
  selfCopy = self;
  LOBYTE(textCopy) = sub_2744A3EA4(textCopy);

  return textCopy & 1;
}

- (void)textEntryTextDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2744A3F90(change);
}

- (void)textEntryDidFinish
{
  selfCopy = self;
  sub_2744A4320();
}

- (void)stageState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_2744A4418(state);
}

@end