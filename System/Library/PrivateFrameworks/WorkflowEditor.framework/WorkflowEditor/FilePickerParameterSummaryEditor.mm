@interface FilePickerParameterSummaryEditor
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (void)beginEditingNewArrayElementFromPresentationAnchor:(id)anchor;
- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor;
- (void)cancelEditingWithCompletionHandler:(id)handler;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation FilePickerParameterSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor
{
  identifierCopy = identifier;
  anchorCopy = anchor;
  selfCopy = self;
  sub_27452BE44(selfCopy, anchorCopy);
}

- (void)beginEditingNewArrayElementFromPresentationAnchor:(id)anchor
{
  anchorCopy = anchor;
  selfCopy = self;
  sub_27452BEC0(anchorCopy);
}

- (void)cancelEditingWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

  sub_2745EA34C(&unk_274656ED8, v5);
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  cancelledCopy = cancelled;
  selfCopy = self;
  sub_27452D1F0(cancelledCopy);
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  sub_274637E2C();
  v6 = sub_27463B81C();
  pickerCopy = picker;
  selfCopy = self;
  sub_27452D308(pickerCopy, v6);
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_27452D490();
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