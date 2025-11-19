@interface NumberFieldParameterSummaryEditor
- (BOOL)textEntryShouldChangeText:(id)a3;
- (WFVariableProvider)variableProvider;
- (id)stateByReplacingVariableFromCurrentState:(id)a3 withVariable:(id)a4;
- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4;
- (void)cancelEditingWithCompletionHandler:(id)a3;
- (void)setVariableProvider:(id)a3;
- (void)stageState:(id)a3;
- (void)textEntryDidFinish;
- (void)textEntryTextDidChange:(id)a3;
- (void)textEntryWillBegin:(id)a3 allowMultipleLines:(BOOL *)a4;
@end

@implementation NumberFieldParameterSummaryEditor

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

  sub_2745EA34C(&unk_27464F620, v5);
}

- (WFVariableProvider)variableProvider
{
  v2 = self;
  v3 = sub_27448A728();

  return v3;
}

- (void)setVariableProvider:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_27448A7D0(a3);
}

- (id)stateByReplacingVariableFromCurrentState:(id)a3 withVariable:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_27448A92C(v8, a4);

  return v9;
}

- (void)textEntryWillBegin:(id)a3 allowMultipleLines:(BOOL *)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_27448A9E8(a3, a4);
  swift_unknownObjectRelease();
}

- (BOOL)textEntryShouldChangeText:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_27448AEFC(v3);

  return v3 & 1;
}

- (void)textEntryTextDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_27448B024(a3);
}

- (void)textEntryDidFinish
{
  v2 = self;
  sub_27448B320();
}

- (void)stageState:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_27448B418(a3);
}

@end