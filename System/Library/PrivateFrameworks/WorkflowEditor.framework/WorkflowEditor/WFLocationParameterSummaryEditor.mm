@interface WFLocationParameterSummaryEditor
- (UIViewController)presentedViewController;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor;
- (void)cancelEditingWithCompletionHandler:(id)handler;
- (void)locationPicker:(id)picker didFinishWithValue:(id)value;
- (void)locationPickerDidCancel:(id)cancel;
@end

@implementation WFLocationParameterSummaryEditor

- (UIViewController)presentedViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentedViewController);

  return WeakRetained;
}

- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection
{
  collectionCopy = collection;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  wf_isWidgetConfigurationExtensionBundle = [mainBundle wf_isWidgetConfigurationExtensionBundle];

  if (wf_isWidgetConfigurationExtensionBundle)
  {
    v7 = 2;
  }

  else if ([collectionCopy horizontalSizeClass] == 1)
  {
    v7 = 2;
  }

  else
  {
    v7 = -1;
  }

  return v7;
}

- (void)locationPickerDidCancel:(id)cancel
{
  navigationController = [cancel navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];

  [(WFModuleSummaryEditor *)self completeEditing];
}

- (void)locationPicker:(id)picker didFinishWithValue:(id)value
{
  pickerCopy = picker;
  if (value)
  {
    valueCopy = value;
    parameter = [(WFModuleSummaryEditor *)self parameter];
    value = [objc_alloc(objc_msgSend(parameter "singleStateClass"))];
  }

  [(WFModuleSummaryEditor *)self commitState:value];
  navigationController = [pickerCopy navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];

  [(WFModuleSummaryEditor *)self completeEditing];
}

- (void)cancelEditingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__WFLocationParameterSummaryEditor_cancelEditingWithCompletionHandler___block_invoke;
  v7[3] = &unk_279EDC180;
  v7[4] = self;
  v8 = handlerCopy;
  v6.receiver = self;
  v6.super_class = WFLocationParameterSummaryEditor;
  v5 = handlerCopy;
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

- (void)beginEditingSlotWithIdentifier:(id)identifier presentationAnchor:(id)anchor
{
  anchorCopy = anchor;
  v6 = [WFLocationPickerViewController alloc];
  initialState = [(WFModuleSummaryEditor *)self initialState];
  value = [initialState value];
  v26 = [(WFLocationPickerViewController *)v6 initWithPickerType:0 value:value];

  [(WFLocationPickerViewController *)v26 setDelegate:self];
  parameter = [(WFModuleSummaryEditor *)self parameter];
  -[WFLocationPickerViewController setAllowsPickingCurrentLocation:](v26, "setAllowsPickingCurrentLocation:", [parameter allowsCurrentLocation]);

  parameter2 = [(WFModuleSummaryEditor *)self parameter];
  -[WFLocationPickerViewController setAllowsTextOnlyLocation:](v26, "setAllowsTextOnlyLocation:", [parameter2 allowsTextOnlyLocations]);

  v11 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v26];
  [v11 setModalPresentationStyle:7];
  popoverPresentationController = [v11 popoverPresentationController];
  [popoverPresentationController setDelegate:self];

  sourceView = [anchorCopy sourceView];
  popoverPresentationController2 = [v11 popoverPresentationController];
  [popoverPresentationController2 setSourceView:sourceView];

  [anchorCopy sourceRect];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  popoverPresentationController3 = [v11 popoverPresentationController];
  [popoverPresentationController3 setSourceRect:{v16, v18, v20, v22}];

  popoverPresentationController4 = [v11 popoverPresentationController];
  [popoverPresentationController4 wf_forcePresentationInPresenterSceneIfNeeded];

  sourceViewController = [anchorCopy sourceViewController];

  [sourceViewController presentViewController:v11 animated:1 completion:0];
  objc_storeWeak(&self->_presentedViewController, v11);
}

@end