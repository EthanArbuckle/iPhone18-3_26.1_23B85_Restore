@interface FilePickerParameterSummaryEditor
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (void)beginEditingNewArrayElementFromPresentationAnchor:(id)a3;
- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4;
- (void)cancelEditingWithCompletionHandler:(id)a3;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)documentPickerWasCancelled:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation FilePickerParameterSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_27452BE44(v8, v7);
}

- (void)beginEditingNewArrayElementFromPresentationAnchor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27452BEC0(v4);
}

- (void)cancelEditingWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_2745EA34C(&unk_274656ED8, v5);
}

- (void)documentPickerWasCancelled:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27452D1F0(v4);
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  sub_274637E2C();
  v6 = sub_27463B81C();
  v7 = a3;
  v8 = self;
  sub_27452D308(v7, v6);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_27452D490();
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_27452D500(v8, v7);

  return v9;
}

@end