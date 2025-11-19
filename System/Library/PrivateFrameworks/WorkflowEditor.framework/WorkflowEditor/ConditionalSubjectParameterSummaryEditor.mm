@interface ConditionalSubjectParameterSummaryEditor
- (BOOL)variableMenuSupportsVariableSelectionForSlotWithIdentifier:(id)a3;
- (id)clearButtonMenuItemForSlotWithIdentifier:(id)a3;
- (id)customMenuElementsForSlotWithIdentifier:(id)a3 style:(unint64_t)a4;
- (id)stateByReplacingVariableFromCurrentState:(id)a3 withVariable:(id)a4;
- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4;
- (void)cancelEditingWithCompletionHandler:(id)a3;
@end

@implementation ConditionalSubjectParameterSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2744943F8(v6, v7);
}

- (void)cancelEditingWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_2745EA34C(&unk_274650130, v5);
}

- (BOOL)variableMenuSupportsVariableSelectionForSlotWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_274495100(v4);

  return self & 1;
}

- (id)clearButtonMenuItemForSlotWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_2744952FC(v4);

  return v6;
}

- (id)customMenuElementsForSlotWithIdentifier:(id)a3 style:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_274495538(v6, a4);

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

- (id)stateByReplacingVariableFromCurrentState:(id)a3 withVariable:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_274496B88(a3, a4);

  return v10;
}

@end