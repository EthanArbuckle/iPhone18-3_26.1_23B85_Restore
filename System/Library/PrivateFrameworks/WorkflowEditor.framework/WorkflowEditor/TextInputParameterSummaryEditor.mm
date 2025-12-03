@interface TextInputParameterSummaryEditor
+ (unint64_t)variableResultTypeForParameter:(id)parameter;
- (WFVariableProvider)variableProvider;
- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor;
- (void)cancelEditingWithCompletionHandler:(id)handler;
- (void)setVariableProvider:(id)provider;
- (void)textEntryDidFinish;
- (void)textEntryTextDidChange:(id)change;
- (void)textEntryWillBegin:(id)begin allowMultipleLines:(BOOL *)lines;
@end

@implementation TextInputParameterSummaryEditor

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

  sub_2745EA34C(&unk_27465E310, v5);
}

- (WFVariableProvider)variableProvider
{
  selfCopy = self;
  v3 = sub_2745D1EB0();

  return v3;
}

- (void)setVariableProvider:(id)provider
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2745D1F58(provider);
}

- (void)textEntryWillBegin:(id)begin allowMultipleLines:(BOOL *)lines
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2745D2028(begin, lines);
  swift_unknownObjectRelease();
}

- (void)textEntryTextDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2745D25E0(change);
}

- (void)textEntryDidFinish
{
  selfCopy = self;
  sub_2745D2774();
}

+ (unint64_t)variableResultTypeForParameter:(id)parameter
{
  parameterCopy = parameter;
  v4 = sub_2745D2870();

  return v4;
}

@end