@interface QuantityFieldParameterSummaryEditor
- (BOOL)textEntryShouldChangeText:(id)a3;
- (BOOL)variableMenuSupportsVariableSelectionForSlotWithIdentifier:(id)a3;
- (WFVariableProvider)variableProvider;
- (id)clearButtonMenuItemForSlotWithIdentifier:(id)a3;
- (id)customMenuElementsForSlotWithIdentifier:(id)a3 style:(unint64_t)a4;
- (id)stateByReplacingVariableFromCurrentState:(id)a3 withVariable:(id)a4;
- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4;
- (void)cancelEditingWithCompletionHandler:(id)a3;
- (void)setVariableProvider:(id)a3;
- (void)stageState:(id)a3;
- (void)textEntryDidFinish;
- (void)textEntryTextDidChange:(id)a3;
- (void)textEntryWillBegin:(id)a3 allowMultipleLines:(BOOL *)a4;
@end

@implementation QuantityFieldParameterSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2744A2BC4(v6);
}

- (id)customMenuElementsForSlotWithIdentifier:(id)a3 style:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_2744A2D3C(v5);

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

- (void)cancelEditingWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_2745EA34C(&unk_274650780, v5);
}

- (WFVariableProvider)variableProvider
{
  v2 = self;
  v3 = sub_2744A3640();

  return v3;
}

- (void)setVariableProvider:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_2744A36E8(a3);
}

- (id)stateByReplacingVariableFromCurrentState:(id)a3 withVariable:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_2744A37C0(v8, a4);

  return v9;
}

- (BOOL)variableMenuSupportsVariableSelectionForSlotWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_2744A38FC(v4);

  return v6 & 1;
}

- (id)clearButtonMenuItemForSlotWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_2744A3A14(v4);

  return v6;
}

- (void)textEntryWillBegin:(id)a3 allowMultipleLines:(BOOL *)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_2744A3B88(a3, a4);
  swift_unknownObjectRelease();
}

- (BOOL)textEntryShouldChangeText:(id)a3
{
  v3 = a3;
  v5 = a3;
  v6 = self;
  LOBYTE(v3) = sub_2744A3EA4(v3);

  return v3 & 1;
}

- (void)textEntryTextDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2744A3F90(a3);
}

- (void)textEntryDidFinish
{
  v2 = self;
  sub_2744A4320();
}

- (void)stageState:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_2744A4418(a3);
}

@end