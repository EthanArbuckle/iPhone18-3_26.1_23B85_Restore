@interface WFPosterPickerParameterSummaryEditor
- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4;
- (void)cancelEditingWithCompletionHandler:(id)a3;
- (void)modalController:(id)a3 didDismissSheetWithResponse:(id)a4;
@end

@implementation WFPosterPickerParameterSummaryEditor

- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2745CA248(v8, v7);
}

- (void)cancelEditingWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_2745CAA08(sub_27445B624, v5);
}

- (void)modalController:(id)a3 didDismissSheetWithResponse:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2745CADA0(v8, v7);
}

@end