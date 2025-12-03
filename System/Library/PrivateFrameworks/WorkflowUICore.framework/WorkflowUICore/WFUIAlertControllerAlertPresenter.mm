@interface WFUIAlertControllerAlertPresenter
+ (id)contentViewControllerForContentView:(id)view padding:(UIEdgeInsets)padding;
+ (void)presentAlert:(id)alert withUserInterface:(id)interface;
@end

@implementation WFUIAlertControllerAlertPresenter

+ (id)contentViewControllerForContentView:(id)view padding:(UIEdgeInsets)padding
{
  right = padding.right;
  bottom = padding.bottom;
  left = padding.left;
  top = padding.top;
  v26[4] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v25 = objc_opt_new();
  v9 = objc_alloc_init(MEMORY[0x277D75D18]);
  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 addSubview:viewCopy];
  v20 = MEMORY[0x277CCAAD0];
  topAnchor = [viewCopy topAnchor];
  topAnchor2 = [v9 topAnchor];
  v22 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:top];
  v26[0] = v22;
  bottomAnchor = [viewCopy bottomAnchor];
  bottomAnchor2 = [v9 bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-bottom];
  v26[1] = v11;
  leadingAnchor = [viewCopy leadingAnchor];
  leadingAnchor2 = [v9 leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:left];
  v26[2] = v14;
  trailingAnchor = [viewCopy trailingAnchor];

  trailingAnchor2 = [v9 trailingAnchor];
  v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-right];
  v26[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  [v20 activateConstraints:v18];

  [v25 setView:v9];

  return v25;
}

+ (void)presentAlert:(id)alert withUserInterface:(id)interface
{
  v54 = *MEMORY[0x277D85DE8];
  alertCopy = alert;
  interfaceCopy = interface;
  if ([alertCopy preferredStyle] != 1 || (objc_msgSend(alertCopy, "textFieldConfigurationHandlers"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8))
  {
    v9 = 1;
    goto LABEL_4;
  }

  presentationSource = [alertCopy presentationSource];
  barButtonItem = [presentationSource barButtonItem];
  if (barButtonItem)
  {

    v9 = 0;
LABEL_31:

    goto LABEL_4;
  }

  presentationSource2 = [alertCopy presentationSource];
  sourceView = [presentationSource2 sourceView];

  if (!sourceView)
  {
    presentationSource = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
    v9 = [presentationSource modalPresentationStyle] == 7;
    goto LABEL_31;
  }

  v9 = 0;
LABEL_4:
  v10 = MEMORY[0x277D75110];
  title = [alertCopy title];
  message = [alertCopy message];
  v13 = [v10 alertControllerWithTitle:title message:message preferredStyle:v9];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  textFieldConfigurationHandlers = [alertCopy textFieldConfigurationHandlers];
  v15 = [textFieldConfigurationHandlers countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v49;
    do
    {
      v18 = 0;
      do
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(textFieldConfigurationHandlers);
        }

        v19 = *(*(&v48 + 1) + 8 * v18);
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __68__WFUIAlertControllerAlertPresenter_presentAlert_withUserInterface___block_invoke;
        v47[3] = &unk_279EF5218;
        v47[4] = v19;
        [v13 addTextFieldWithConfigurationHandler:v47];
        ++v18;
      }

      while (v16 != v18);
      v16 = [textFieldConfigurationHandlers countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v16);
  }

  buttons = [alertCopy buttons];
  [v13 setButtons:buttons forAlert:alertCopy];

  contentView = [alertCopy contentView];
  if (contentView)
  {
    [alertCopy contentViewPadding];
    v22 = [WFUIAlertControllerAlertPresenter contentViewControllerForContentView:contentView padding:?];
    [v13 setContentViewController:v22];
  }

  keyCommands = [alertCopy keyCommands];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v24 = [keyCommands countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v44;
    do
    {
      v27 = 0;
      do
      {
        if (*v44 != v26)
        {
          objc_enumerationMutation(keyCommands);
        }

        [v13 addKeyCommand:*(*(&v43 + 1) + 8 * v27++)];
      }

      while (v25 != v27);
      v25 = [keyCommands countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v25);
  }

  presentationSource3 = [alertCopy presentationSource];
  popoverPresentationController = [v13 popoverPresentationController];
  [popoverPresentationController setPermittedArrowDirections:{objc_msgSend(presentationSource3, "permittedArrowDirections")}];
  [popoverPresentationController setCanOverlapSourceViewRect:{objc_msgSend(presentationSource3, "canOverlapSourceViewRect")}];
  barButtonItem2 = [presentationSource3 barButtonItem];
  [popoverPresentationController setBarButtonItem:barButtonItem2];

  sourceView2 = [presentationSource3 sourceView];
  [popoverPresentationController setSourceView:sourceView2];

  [popoverPresentationController wf_forcePresentationInPresenterSceneIfNeeded];
  [presentationSource3 sourceRect];
  if (!CGRectIsNull(v55))
  {
    [presentationSource3 sourceRect];
    [popoverPresentationController setSourceRect:?];
  }

  viewController = [interfaceCopy viewController];
  if ([viewController overrideUserInterfaceStyle])
  {
    [v13 setOverrideUserInterfaceStyle:{objc_msgSend(viewController, "overrideUserInterfaceStyle")}];
  }

  presentedViewController = [viewController presentedViewController];

  if (presentedViewController)
  {
    do
    {
      presentedViewController2 = [viewController presentedViewController];

      v34PresentedViewController = [presentedViewController2 presentedViewController];

      viewController = presentedViewController2;
    }

    while (v34PresentedViewController);
  }

  else
  {
    presentedViewController2 = viewController;
  }

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __68__WFUIAlertControllerAlertPresenter_presentAlert_withUserInterface___block_invoke_2;
  v41[3] = &unk_279EF5240;
  v42 = contentView;
  v36 = contentView;
  [presentedViewController2 presentViewController:v13 animated:1 completion:v41];
  [alertCopy setPresenter:v13];
}

uint64_t __68__WFUIAlertControllerAlertPresenter_presentAlert_withUserInterface___block_invoke_2(uint64_t a1)
{
  result = [*(a1 + 32) canBecomeFirstResponder];
  if (result)
  {
    v3 = *(a1 + 32);

    return [v3 becomeFirstResponder];
  }

  return result;
}

@end