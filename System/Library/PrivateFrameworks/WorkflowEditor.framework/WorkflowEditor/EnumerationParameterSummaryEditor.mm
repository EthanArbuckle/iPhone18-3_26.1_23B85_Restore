@interface EnumerationParameterSummaryEditor
- (id)customMenuElementsForSlotWithIdentifier:(id)identifier style:(unint64_t)style;
- (void)beginEditingNewArrayElementFromPresentationAnchor:(id)anchor;
- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor;
- (void)cancelEditingWithCompletionHandler:(id)handler;
- (void)completeEditing;
@end

@implementation EnumerationParameterSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor
{
  identifierCopy = identifier;
  anchorCopy = anchor;
  selfCopy = self;
  sub_2745EA580(identifierCopy, anchorCopy);
}

- (id)customMenuElementsForSlotWithIdentifier:(id)identifier style:(unint64_t)style
{
  identifierCopy = identifier;
  selfCopy = self;
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

- (void)beginEditingNewArrayElementFromPresentationAnchor:(id)anchor
{
  anchorCopy = anchor;
  selfCopy = self;
  sub_2745EB3F4(anchorCopy);
}

- (void)cancelEditingWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_2745EA34C(&unk_27465F798, v5);
}

- (void)completeEditing
{
  selfCopy = self;
  sub_2745EBDCC();
}

@end