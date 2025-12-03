@interface WFAskLLMModelParameterSummaryEditor
- (id)customMenuElementsForSlotWithIdentifier:(id)identifier style:(unint64_t)style;
- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor;
@end

@implementation WFAskLLMModelParameterSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor
{
  identifierCopy = identifier;
  anchorCopy = anchor;
  selfCopy = self;
  sub_27440DCAC(selfCopy, anchorCopy);
}

- (id)customMenuElementsForSlotWithIdentifier:(id)identifier style:(unint64_t)style
{
  identifierCopy = identifier;
  selfCopy = self;
  v8 = sub_27440E234(identifierCopy, style);

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