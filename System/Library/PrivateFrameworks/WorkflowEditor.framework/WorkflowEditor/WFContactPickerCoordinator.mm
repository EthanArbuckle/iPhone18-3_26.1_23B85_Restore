@interface WFContactPickerCoordinator
- (BOOL)contactViewController:(id)controller shouldPerformDefaultActionForContactProperty:(id)property;
- (UIViewController)presentingViewController;
- (id)contactWithMatchingPropertyAndMultivalueIndex:(id)index;
- (id)supportedContactProperties;
- (int64_t)adaptivePresentationStyleForPresentationController:(id)controller traitCollection:(id)collection;
- (void)contactPicker:(id)picker didSelectContact:(id)contact;
- (void)contactPicker:(id)picker didSelectContactProperty:(id)property;
- (void)dismissPersonViewController;
- (void)finishWithContact:(id)contact;
- (void)presentContactPickerWithCompletionHandler:(id)handler;
- (void)presentHandlePickerForContact:(id)contact completionHandler:(id)handler;
- (void)presentViewController:(id)controller completionHandler:(id)handler;
@end

@implementation WFContactPickerCoordinator

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

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

- (void)contactPicker:(id)picker didSelectContactProperty:(id)property
{
  v5 = WFContactFromCNContactProperty();
  [(WFContactPickerCoordinator *)self finishWithContact:v5];
}

- (void)contactPicker:(id)picker didSelectContact:(id)contact
{
  v6 = [MEMORY[0x277CFC278] contactWithCNContact:contact];
  v5 = [(WFContactPickerCoordinator *)self contactWithMatchingPropertyAndMultivalueIndex:v6];
  [(WFContactPickerCoordinator *)self finishWithContact:v5];
}

- (BOOL)contactViewController:(id)controller shouldPerformDefaultActionForContactProperty:(id)property
{
  controllerCopy = controller;
  propertyCopy = property;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __97__WFContactPickerCoordinator_contactViewController_shouldPerformDefaultActionForContactProperty___block_invoke;
  block[3] = &unk_279EDC130;
  v12 = propertyCopy;
  selfCopy = self;
  v14 = controllerCopy;
  v8 = controllerCopy;
  v9 = propertyCopy;
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
  supportedPersonProperties = [(WFContactPickerCoordinator *)self supportedPersonProperties];
  v3 = [supportedPersonProperties if_compactMap:&__block_literal_global_1399];
  allObjects = [v3 allObjects];

  return allObjects;
}

uint64_t __56__WFContactPickerCoordinator_supportedContactProperties__block_invoke(uint64_t a1, void *a2)
{
  [a2 intValue];

  return CNContactPropertyKeyFromWFContactPropertyID();
}

- (id)contactWithMatchingPropertyAndMultivalueIndex:(id)index
{
  v18 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  supportedPersonProperties = [(WFContactPickerCoordinator *)self supportedPersonProperties];
  v6 = [supportedPersonProperties countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(supportedPersonProperties);
        }

        intValue = [*(*(&v13 + 1) + 8 * i) intValue];
        if ([indexCopy hasValueForPropertyID:intValue])
        {
          v11 = [indexCopy contactWithPropertyID:intValue multivalueIndex:0];

          indexCopy = v11;
          goto LABEL_11;
        }
      }

      v7 = [supportedPersonProperties countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return indexCopy;
}

- (void)finishWithContact:(id)contact
{
  contactCopy = contact;
  completionHandler = [(WFContactPickerCoordinator *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(WFContactPickerCoordinator *)self completionHandler];
    (completionHandler2)[2](completionHandler2, contactCopy);

    [(WFContactPickerCoordinator *)self setCompletionHandler:0];
  }
}

- (void)dismissPersonViewController
{
  presentingViewController = [(WFContactPickerCoordinator *)self presentingViewController];
  presentedViewController = [presentingViewController presentedViewController];
  [presentedViewController dismissViewControllerAnimated:1 completion:0];
}

- (void)presentViewController:(id)controller completionHandler:(id)handler
{
  controllerCopy = controller;
  v6 = [handler copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v6;

  presentationSource = [(WFContactPickerCoordinator *)self presentationSource];
  if (presentationSource)
  {
    [controllerCopy setModalPresentationStyle:7];
    popoverPresentationController = [controllerCopy popoverPresentationController];
    [popoverPresentationController setDelegate:self];
    [popoverPresentationController setPermittedArrowDirections:{objc_msgSend(presentationSource, "permittedArrowDirections")}];
    [popoverPresentationController setCanOverlapSourceViewRect:{objc_msgSend(presentationSource, "canOverlapSourceViewRect")}];
    barButtonItem = [presentationSource barButtonItem];
    [popoverPresentationController setBarButtonItem:barButtonItem];

    sourceView = [presentationSource sourceView];
    [popoverPresentationController setSourceView:sourceView];

    [popoverPresentationController wf_forcePresentationInPresenterSceneIfNeeded];
    [presentationSource sourceRect];
    if (!CGRectIsNull(v15))
    {
      [presentationSource sourceRect];
      [popoverPresentationController setSourceRect:?];
    }
  }

  else
  {
    popoverPresentationController = [controllerCopy presentationController];
    [popoverPresentationController setDelegate:self];
  }

  presentingViewController = [(WFContactPickerCoordinator *)self presentingViewController];
  [presentingViewController presentViewController:controllerCopy animated:1 completion:0];
}

- (void)presentHandlePickerForContact:(id)contact completionHandler:(id)handler
{
  v6 = MEMORY[0x277CBDC48];
  handlerCopy = handler;
  v14 = [v6 viewControllerForContact:contact];
  [v14 setDelegate:self];
  supportedContactProperties = [(WFContactPickerCoordinator *)self supportedContactProperties];
  [v14 setDisplayedPropertyKeys:supportedContactProperties];

  [v14 setAllowsEditing:0];
  [v14 setAllowsActions:0];
  v9 = [objc_alloc(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:self action:sel_dismissPersonViewController];
  navigationItem = [v14 navigationItem];
  [navigationItem setLeftBarButtonItem:v9];

  v11 = WFLocalizedString(@"Choose");
  navigationItem2 = [v14 navigationItem];
  [navigationItem2 setTitle:v11];

  v13 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v14];
  [(WFContactPickerCoordinator *)self presentViewController:v13 completionHandler:handlerCopy];
}

- (void)presentContactPickerWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  supportedContactProperties = [(WFContactPickerCoordinator *)self supportedContactProperties];
  v5 = objc_alloc_init(MEMORY[0x277CBDC18]);
  [v5 setDelegate:self];
  [v5 setDisplayedPropertyKeys:supportedContactProperties];
  v6 = WFPredicateForEnablingPerson();
  [v5 setPredicateForEnablingContact:v6];

  v7 = WFPredicateForSelectionOfPerson();
  [v5 setPredicateForSelectionOfContact:v7];

  [(WFContactPickerCoordinator *)self presentViewController:v5 completionHandler:handlerCopy];
}

@end