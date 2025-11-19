@interface WFContactPickerCoordinator
- (BOOL)contactViewController:(id)a3 shouldPerformDefaultActionForContactProperty:(id)a4;
- (UIViewController)presentingViewController;
- (id)contactWithMatchingPropertyAndMultivalueIndex:(id)a3;
- (id)supportedContactProperties;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)a3 traitCollection:(id)a4;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4;
- (void)dismissPersonViewController;
- (void)finishWithContact:(id)a3;
- (void)presentContactPickerWithCompletionHandler:(id)a3;
- (void)presentHandlePickerForContact:(id)a3 completionHandler:(id)a4;
- (void)presentViewController:(id)a3 completionHandler:(id)a4;
@end

@implementation WFContactPickerCoordinator

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

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

- (void)contactPicker:(id)a3 didSelectContactProperty:(id)a4
{
  v5 = WFContactFromCNContactProperty();
  [(WFContactPickerCoordinator *)self finishWithContact:v5];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  v6 = [MEMORY[0x277CFC278] contactWithCNContact:a4];
  v5 = [(WFContactPickerCoordinator *)self contactWithMatchingPropertyAndMultivalueIndex:v6];
  [(WFContactPickerCoordinator *)self finishWithContact:v5];
}

- (BOOL)contactViewController:(id)a3 shouldPerformDefaultActionForContactProperty:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__WFContactPickerCoordinator_contactViewController_shouldPerformDefaultActionForContactProperty___block_invoke;
  block[3] = &unk_279EDC130;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v8 = v6;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);

  return 0;
}

void __97__WFContactPickerCoordinator_contactViewController_shouldPerformDefaultActionForContactProperty___block_invoke(uint64_t a1)
{
  v3 = WFContactFromCNContactProperty();
  [*(a1 + 40) finishWithContact:v3];
  v2 = [*(a1 + 48) navigationController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (id)supportedContactProperties
{
  v2 = [(WFContactPickerCoordinator *)self supportedPersonProperties];
  v3 = [v2 if_compactMap:&__block_literal_global_1399];
  v4 = [v3 allObjects];

  return v4;
}

uint64_t __56__WFContactPickerCoordinator_supportedContactProperties__block_invoke(uint64_t a1, void *a2)
{
  [a2 intValue];

  return CNContactPropertyKeyFromWFContactPropertyID();
}

- (id)contactWithMatchingPropertyAndMultivalueIndex:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(WFContactPickerCoordinator *)self supportedPersonProperties];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) intValue];
        if ([v4 hasValueForPropertyID:v10])
        {
          v11 = [v4 contactWithPropertyID:v10 multivalueIndex:0];

          v4 = v11;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

- (void)finishWithContact:(id)a3
{
  v6 = a3;
  v4 = [(WFContactPickerCoordinator *)self completionHandler];

  if (v4)
  {
    v5 = [(WFContactPickerCoordinator *)self completionHandler];
    (v5)[2](v5, v6);

    [(WFContactPickerCoordinator *)self setCompletionHandler:0];
  }
}

- (void)dismissPersonViewController
{
  v3 = [(WFContactPickerCoordinator *)self presentingViewController];
  v2 = [v3 presentedViewController];
  [v2 dismissViewControllerAnimated:1 completion:0];
}

- (void)presentViewController:(id)a3 completionHandler:(id)a4
{
  v13 = a3;
  v6 = [a4 copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v6;

  v8 = [(WFContactPickerCoordinator *)self presentationSource];
  if (v8)
  {
    [v13 setModalPresentationStyle:7];
    v9 = [v13 popoverPresentationController];
    [v9 setDelegate:self];
    [v9 setPermittedArrowDirections:{objc_msgSend(v8, "permittedArrowDirections")}];
    [v9 setCanOverlapSourceViewRect:{objc_msgSend(v8, "canOverlapSourceViewRect")}];
    v10 = [v8 barButtonItem];
    [v9 setBarButtonItem:v10];

    v11 = [v8 sourceView];
    [v9 setSourceView:v11];

    [v9 wf_forcePresentationInPresenterSceneIfNeeded];
    [v8 sourceRect];
    if (!CGRectIsNull(v15))
    {
      [v8 sourceRect];
      [v9 setSourceRect:?];
    }
  }

  else
  {
    v9 = [v13 presentationController];
    [v9 setDelegate:self];
  }

  v12 = [(WFContactPickerCoordinator *)self presentingViewController];
  [v12 presentViewController:v13 animated:1 completion:0];
}

- (void)presentHandlePickerForContact:(id)a3 completionHandler:(id)a4
{
  v6 = MEMORY[0x277CBDC48];
  v7 = a4;
  v14 = [v6 viewControllerForContact:a3];
  [v14 setDelegate:self];
  v8 = [(WFContactPickerCoordinator *)self supportedContactProperties];
  [v14 setDisplayedPropertyKeys:v8];

  [v14 setAllowsEditing:0];
  [v14 setAllowsActions:0];
  v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_dismissPersonViewController];
  v10 = [v14 navigationItem];
  [v10 setLeftBarButtonItem:v9];

  v11 = WFLocalizedString(@"Choose");
  v12 = [v14 navigationItem];
  [v12 setTitle:v11];

  v13 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v14];
  [(WFContactPickerCoordinator *)self presentViewController:v13 completionHandler:v7];
}

- (void)presentContactPickerWithCompletionHandler:(id)a3
{
  v4 = a3;
  v8 = [(WFContactPickerCoordinator *)self supportedContactProperties];
  v5 = objc_alloc_init(MEMORY[0x277CBDC18]);
  [v5 setDelegate:self];
  [v5 setDisplayedPropertyKeys:v8];
  v6 = WFPredicateForEnablingPerson();
  [v5 setPredicateForEnablingContact:v6];

  v7 = WFPredicateForSelectionOfPerson();
  [v5 setPredicateForSelectionOfContact:v7];

  [(WFContactPickerCoordinator *)self presentViewController:v5 completionHandler:v4];
}

@end