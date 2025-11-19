@interface WFUIAlertControllerAlertPresenter
+ (id)contentViewControllerForContentView:(id)a3 padding:(UIEdgeInsets)a4;
+ (void)presentAlert:(id)a3 withUserInterface:(id)a4;
@end

@implementation WFUIAlertControllerAlertPresenter

+ (id)contentViewControllerForContentView:(id)a3 padding:(UIEdgeInsets)a4
{
  right = a4.right;
  bottom = a4.bottom;
  left = a4.left;
  top = a4.top;
  v26[4] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v25 = objc_opt_new();
  v9 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 addSubview:v8];
  v20 = MEMORY[0x277CCAAD0];
  v24 = [v8 topAnchor];
  v23 = [v9 topAnchor];
  v22 = [v24 constraintEqualToAnchor:v23 constant:top];
  v26[0] = v22;
  v21 = [v8 bottomAnchor];
  v10 = [v9 bottomAnchor];
  v11 = [v21 constraintEqualToAnchor:v10 constant:-bottom];
  v26[1] = v11;
  v12 = [v8 leadingAnchor];
  v13 = [v9 leadingAnchor];
  v14 = [v12 constraintEqualToAnchor:v13 constant:left];
  v26[2] = v14;
  v15 = [v8 trailingAnchor];

  v16 = [v9 trailingAnchor];
  v17 = [v15 constraintEqualToAnchor:v16 constant:-right];
  v26[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  [v20 activateConstraints:v18];

  [v25 setView:v9];

  return v25;
}

+ (void)presentAlert:(id)a3 withUserInterface:(id)a4
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if ([v5 preferredStyle] != 1 || (objc_msgSend(v5, "textFieldConfigurationHandlers"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8))
  {
    v9 = 1;
    goto LABEL_4;
  }

  v37 = [v5 presentationSource];
  v38 = [v37 barButtonItem];
  if (v38)
  {

    v9 = 0;
LABEL_31:

    goto LABEL_4;
  }

  v39 = [v5 presentationSource];
  v40 = [v39 sourceView];

  if (!v40)
  {
    v37 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
    v9 = [v37 modalPresentationStyle] == 7;
    goto LABEL_31;
  }

  v9 = 0;
LABEL_4:
  v10 = MEMORY[0x277D75110];
  v11 = [v5 title];
  v12 = [v5 message];
  v13 = [v10 alertControllerWithTitle:v11 message:v12 preferredStyle:v9];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v14 = [v5 textFieldConfigurationHandlers];
  v15 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
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
          objc_enumerationMutation(v14);
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
      v16 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v16);
  }

  v20 = [v5 buttons];
  [v13 setButtons:v20 forAlert:v5];

  v21 = [v5 contentView];
  if (v21)
  {
    [v5 contentViewPadding];
    v22 = [WFUIAlertControllerAlertPresenter contentViewControllerForContentView:v21 padding:?];
    [v13 setContentViewController:v22];
  }

  v23 = [v5 keyCommands];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v24 = [v23 countByEnumeratingWithState:&v43 objects:v52 count:16];
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
          objc_enumerationMutation(v23);
        }

        [v13 addKeyCommand:*(*(&v43 + 1) + 8 * v27++)];
      }

      while (v25 != v27);
      v25 = [v23 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v25);
  }

  v28 = [v5 presentationSource];
  v29 = [v13 popoverPresentationController];
  [v29 setPermittedArrowDirections:{objc_msgSend(v28, "permittedArrowDirections")}];
  [v29 setCanOverlapSourceViewRect:{objc_msgSend(v28, "canOverlapSourceViewRect")}];
  v30 = [v28 barButtonItem];
  [v29 setBarButtonItem:v30];

  v31 = [v28 sourceView];
  [v29 setSourceView:v31];

  [v29 wf_forcePresentationInPresenterSceneIfNeeded];
  [v28 sourceRect];
  if (!CGRectIsNull(v55))
  {
    [v28 sourceRect];
    [v29 setSourceRect:?];
  }

  v32 = [v6 viewController];
  if ([v32 overrideUserInterfaceStyle])
  {
    [v13 setOverrideUserInterfaceStyle:{objc_msgSend(v32, "overrideUserInterfaceStyle")}];
  }

  v33 = [v32 presentedViewController];

  if (v33)
  {
    do
    {
      v34 = [v32 presentedViewController];

      v35 = [v34 presentedViewController];

      v32 = v34;
    }

    while (v35);
  }

  else
  {
    v34 = v32;
  }

  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __68__WFUIAlertControllerAlertPresenter_presentAlert_withUserInterface___block_invoke_2;
  v41[3] = &unk_279EF5240;
  v42 = v21;
  v36 = v21;
  [v34 presentViewController:v13 animated:1 completion:v41];
  [v5 setPresenter:v13];
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