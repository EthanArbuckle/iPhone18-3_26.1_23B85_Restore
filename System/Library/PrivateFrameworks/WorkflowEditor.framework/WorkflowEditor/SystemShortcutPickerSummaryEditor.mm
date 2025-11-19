@interface SystemShortcutPickerSummaryEditor
- (id)viewControllerForEditingWithIdentifier:(id)a3;
- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4;
- (void)cancelEditingWithCompletionHandler:(id)a3;
- (void)smartShortcutPickerViewControllerDidFinishWithSystemAction:(id)a3 error:(id)a4;
@end

@implementation SystemShortcutPickerSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_27444B038(v6, v7);
}

- (id)viewControllerForEditingWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_27444B0BC();

  return v6;
}

- (void)cancelEditingWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_2745EA34C(&unk_27464B3E8, v5);
}

- (void)smartShortcutPickerViewControllerDidFinishWithSystemAction:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = self;
  v9 = a4;
  sub_27444BBB4(a3);
}

@end