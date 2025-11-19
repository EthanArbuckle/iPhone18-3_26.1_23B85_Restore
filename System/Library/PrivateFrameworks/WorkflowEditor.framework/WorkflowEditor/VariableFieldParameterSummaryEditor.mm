@interface VariableFieldParameterSummaryEditor
- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4;
- (void)cancelEditingWithCompletionHandler:(id)a3;
- (void)textEntryDidFinish;
- (void)textEntryTextDidChange:(id)a3;
- (void)textEntryWillBegin:(id)a3 allowMultipleLines:(BOOL *)a4;
@end

@implementation VariableFieldParameterSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_27448A194();
}

- (void)cancelEditingWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_2745EA34C(&unk_27465CEC8, v5);
}

- (void)textEntryWillBegin:(id)a3 allowMultipleLines:(BOOL *)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_2745B5C58(a3, a4);
  swift_unknownObjectRelease();
}

- (void)textEntryTextDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2745B5D54(a3);
}

- (void)textEntryDidFinish
{
  v2 = self;
  sub_2745B5EB0();
}

@end