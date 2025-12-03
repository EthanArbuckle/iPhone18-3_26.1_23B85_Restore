@interface VariableFieldParameterSummaryEditor
- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor;
- (void)cancelEditingWithCompletionHandler:(id)handler;
- (void)textEntryDidFinish;
- (void)textEntryTextDidChange:(id)change;
- (void)textEntryWillBegin:(id)begin allowMultipleLines:(BOOL *)lines;
@end

@implementation VariableFieldParameterSummaryEditor

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

  sub_2745EA34C(&unk_27465CEC8, v5);
}

- (void)textEntryWillBegin:(id)begin allowMultipleLines:(BOOL *)lines
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_2745B5C58(begin, lines);
  swift_unknownObjectRelease();
}

- (void)textEntryTextDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_2745B5D54(change);
}

- (void)textEntryDidFinish
{
  selfCopy = self;
  sub_2745B5EB0();
}

@end