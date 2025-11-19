@interface DynamicResolveParameterSummaryEditor
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4;
- (void)cancelEditingWithCompletionHandler:(id)a3;
- (void)parameterValuePickerViewController:(id)a3 didFinishWithParameterState:(id)a4;
- (void)parameterValuePickerViewControllerDidCancel:(id)a3;
- (void)presentationControllerDidDismiss:(id)a3;
@end

@implementation DynamicResolveParameterSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2745D5EA8(v8, v7);
}

- (void)cancelEditingWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_2745EA34C(&unk_27465E8F0, v5);
}

- (void)parameterValuePickerViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2745D6900();
}

- (void)parameterValuePickerViewController:(id)a3 didFinishWithParameterState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2745D6998(v8, a4);
}

- (void)presentationControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2745D6A14();
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