@interface WFLocationParameterSummaryEditor
- (UIViewController)presentedViewController;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4;
- (void)cancelEditingWithCompletionHandler:(id)a3;
- (void)locationPicker:(id)a3 didFinishWithValue:(id)a4;
- (void)locationPickerDidCancel:(id)a3;
@end

@implementation WFLocationParameterSummaryEditor

- (UIViewController)presentedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedViewController);

  return WeakRetained;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4
{
  v4 = a4;
  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 wf_isWidgetConfigurationExtensionBundle];

  if (v6)
  {
    v7 = 2;
  }

  else if ([v4 horizontalSizeClass] == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)locationPickerDidCancel:(id)a3
{
  v4 = [a3 navigationController];
  [v4 dismissViewControllerAnimated:1 completion:0];

  [(WFModuleSummaryEditor *)self completeEditing];
}

- (void)locationPicker:(id)a3 didFinishWithValue:(id)a4
{
  v9 = a3;
  if (a4)
  {
    v6 = a4;
    v7 = [(WFModuleSummaryEditor *)self parameter];
    a4 = [objc_alloc(objc_msgSend(v7 "singleStateClass"))];
  }

  [(WFModuleSummaryEditor *)self commitState:a4];
  v8 = [v9 navigationController];
  [v8 dismissViewControllerAnimated:1 completion:0];

  [(WFModuleSummaryEditor *)self completeEditing];
}

- (void)cancelEditingWithCompletionHandler:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__WFLocationParameterSummaryEditor_cancelEditingWithCompletionHandler___block_invoke;
  v7[3] = &unk_279EDC180;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = WFLocationParameterSummaryEditor;
  v5 = v4;
  [(WFModuleSummaryEditor *)&v6 cancelEditingWithCompletionHandler:v7];
}

void __71__WFLocationParameterSummaryEditor_cancelEditingWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) presentedViewController];

  if (v2)
  {
    v4 = [*(a1 + 32) presentedViewController];
    [v4 dismissViewControllerAnimated:1 completion:*(a1 + 40)];
  }

  else
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }
}

- (void)beginEditingSlotWithIdentifier:(id)a3 presentationAnchor:(id)a4
{
  v5 = a4;
  v6 = [WFLocationPickerViewController alloc];
  v7 = [(WFModuleSummaryEditor *)self initialState];
  v8 = [v7 value];
  v26 = [(WFLocationPickerViewController *)v6 initWithPickerType:0 value:v8];

  [(WFLocationPickerViewController *)v26 setDelegate:self];
  v9 = [(WFModuleSummaryEditor *)self parameter];
  -[WFLocationPickerViewController setAllowsPickingCurrentLocation:](v26, "setAllowsPickingCurrentLocation:", [v9 allowsCurrentLocation]);

  v10 = [(WFModuleSummaryEditor *)self parameter];
  -[WFLocationPickerViewController setAllowsTextOnlyLocation:](v26, "setAllowsTextOnlyLocation:", [v10 allowsTextOnlyLocations]);

  v11 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v26];
  [v11 setModalPresentationStyle:7];
  v12 = [v11 popoverPresentationController];
  [v12 setDelegate:self];

  v13 = [v5 sourceView];
  v14 = [v11 popoverPresentationController];
  [v14 setSourceView:v13];

  [v5 sourceRect];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = [v11 popoverPresentationController];
  [v23 setSourceRect:{v16, v18, v20, v22}];

  v24 = [v11 popoverPresentationController];
  [v24 wf_forcePresentationInPresenterSceneIfNeeded];

  v25 = [v5 sourceViewController];

  [v25 presentViewController:v11 animated:1 completion:0];
  objc_storeWeak(&self->_presentedViewController, v11);
}

@end