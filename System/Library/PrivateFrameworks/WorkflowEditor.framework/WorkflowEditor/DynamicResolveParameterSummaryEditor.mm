@interface DynamicResolveParameterSummaryEditor
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor;
- (void)cancelEditingWithCompletionHandler:(id)handler;
- (void)parameterValuePickerViewController:(id)controller didFinishWithParameterState:(id)state;
- (void)parameterValuePickerViewControllerDidCancel:(id)cancel;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation DynamicResolveParameterSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor
{
  identifierCopy = identifier;
  anchorCopy = anchor;
  selfCopy = self;
  sub_2745D5EA8(selfCopy, anchorCopy);
}

- (void)cancelEditingWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_2745EA34C(&unk_27465E8F0, v5);
}

- (void)parameterValuePickerViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  sub_2745D6900();
}

- (void)parameterValuePickerViewController:(id)controller didFinishWithParameterState:(id)state
{
  controllerCopy = controller;
  stateCopy = state;
  selfCopy = self;
  sub_2745D6998(selfCopy, state);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_2745D6A14();
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  controllerCopy = controller;
  collectionCopy = collection;
  selfCopy = self;
  v9 = sub_27452D500(selfCopy, collectionCopy);

  return v9;
}

@end