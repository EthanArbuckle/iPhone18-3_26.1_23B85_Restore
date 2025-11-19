@interface WFAskLLMModelParameterSummaryEditor
- (id)customMenuElementsForSlotWithIdentifier:(id)a3 style:(unint64_t)a4;
- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4;
@end

@implementation WFAskLLMModelParameterSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_27440DCAC(v8, v7);
}

- (id)customMenuElementsForSlotWithIdentifier:(id)a3 style:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_27440E234(v6, a4);

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

@end