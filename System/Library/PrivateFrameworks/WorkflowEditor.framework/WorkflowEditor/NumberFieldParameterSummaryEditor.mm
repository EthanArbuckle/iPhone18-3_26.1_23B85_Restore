@interface NumberFieldParameterSummaryEditor
- (BOOL)textEntryShouldChangeText:(id)text;
- (WFVariableProvider)variableProvider;
- (id)stateByReplacingVariableFromCurrentState:(id)state withVariable:(id)variable;
- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor;
- (void)cancelEditingWithCompletionHandler:(id)handler;
- (void)setVariableProvider:(id)provider;
- (void)stageState:(id)state;
- (void)textEntryDidFinish;
- (void)textEntryTextDidChange:(id)change;
- (void)textEntryWillBegin:(id)begin allowMultipleLines:(BOOL *)lines;
@end

@implementation NumberFieldParameterSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor
{
  identifierCopy = identifier;
  anchorCopy = anchor;
  selfCopy = self;
  sub_27448A194();
}

- (void)cancelEditingWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_2745EA34C(&unk_27464F620, v5);
}

- (WFVariableProvider)variableProvider
{
  selfCopy = self;
  v3 = sub_27448A728();

  return v3;
}

- (void)setVariableProvider:(id)provider
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_27448A7D0(provider);
}

- (id)stateByReplacingVariableFromCurrentState:(id)state withVariable:(id)variable
{
  stateCopy = state;
  variableCopy = variable;
  selfCopy = self;
  v9 = sub_27448A92C(selfCopy, variable);

  return v9;
}

- (void)textEntryWillBegin:(id)begin allowMultipleLines:(BOOL *)lines
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_27448A9E8(begin, lines);
  swift_unknownObjectRelease();
}

- (BOOL)textEntryShouldChangeText:(id)text
{
  textCopy = text;
  textCopy2 = text;
  selfCopy = self;
  LOBYTE(textCopy) = sub_27448AEFC(textCopy);

  return textCopy & 1;
}

- (void)textEntryTextDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_27448B024(change);
}

- (void)textEntryDidFinish
{
  selfCopy = self;
  sub_27448B320();
}

- (void)stageState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_27448B418(state);
}

@end