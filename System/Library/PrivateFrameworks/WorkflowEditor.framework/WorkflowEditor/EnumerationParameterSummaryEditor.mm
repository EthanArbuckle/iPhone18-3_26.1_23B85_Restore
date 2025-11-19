@interface EnumerationParameterSummaryEditor
- (id)customMenuElementsForSlotWithIdentifier:(id)a3 style:(unint64_t)a4;
- (void)beginEditingNewArrayElementFromPresentationAnchor:(id)a3;
- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4;
- (void)cancelEditingWithCompletionHandler:(id)a3;
- (void)completeEditing;
@end

@implementation EnumerationParameterSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2745EA580(v6, v7);
}

- (id)customMenuElementsForSlotWithIdentifier:(id)a3 style:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_2745EABEC();

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

- (void)beginEditingNewArrayElementFromPresentationAnchor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2745EB3F4(v4);
}

- (void)cancelEditingWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_2745EA34C(&unk_27465F798, v5);
}

- (void)completeEditing
{
  v2 = self;
  sub_2745EBDCC();
}

@end