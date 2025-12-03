@interface SCUIInterventionScreenViewController
- (SCUIInterventionContainer)container;
- (SCUIInterventionScreenViewController)initWithModel:(id)model;
- (id)nextScreenWithContainer:(id)container;
- (void)addBulletsFromModel:(id)model;
- (void)addButtonsFromModel:(id)model;
- (void)screenOne_acceptButtonPressed;
- (void)screenOne_moreHelpButtonPressed;
- (void)screenOne_notNowButtonPressed;
- (void)screenOne_reportToAuthoritiesButtonPressed;
- (void)screenTwo_acceptButtonPressed;
- (void)screenTwo_messageButtonPressed;
- (void)screenTwo_notNowButtonPressed;
@end

@implementation SCUIInterventionScreenViewController

- (SCUIInterventionScreenViewController)initWithModel:(id)model
{
  modelCopy = model;
  title = [modelCopy title];
  v7 = MEMORY[0x1E69DCAB8];
  imageName = [modelCopy imageName];
  v9 = [v7 scImageNamed:imageName];
  v10 = [(SCUIInterventionScreenViewController *)self initWithTitle:title detailText:0 icon:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_model, model);
    v10->_contentScreen = [modelCopy screen];
    v10->_options = [modelCopy options];
    v10->_interventionType = [modelCopy interventionType];
    authority = [modelCopy authority];
    authority = v10->_authority;
    v10->_authority = authority;

    subtitle = [modelCopy subtitle];

    if (subtitle)
    {
      headerView = [(SCUIInterventionScreenViewController *)v10 headerView];
      subtitle2 = [modelCopy subtitle];
      [headerView setSubtitleText:subtitle2];
    }

    [(SCUIInterventionScreenViewController *)v10 addBulletsFromModel:modelCopy];
    [(SCUIInterventionScreenViewController *)v10 addButtonsFromModel:modelCopy];
    systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
    view = [(SCUIInterventionScreenViewController *)v10 view];
    [view setTintColor:systemBlueColor];

    v18 = +[SCUIAXIdentifiers interventionScreen:](SCUIAXIdentifiers, "interventionScreen:", [modelCopy screen]);
    view2 = [(SCUIInterventionScreenViewController *)v10 view];
    [view2 setAccessibilityIdentifier:v18];

    v20 = +[SCUIAXIdentifiers interventionScreenHeader];
    headerView2 = [(SCUIInterventionScreenViewController *)v10 headerView];
    [headerView2 setAccessibilityIdentifier:v20];

    v22 = +[SCUIAXIdentifiers interventionScreenContent];
    contentView = [(SCUIInterventionScreenViewController *)v10 contentView];
    [contentView setAccessibilityIdentifier:v22];
  }

  return v10;
}

- (void)addBulletsFromModel:(id)model
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  bullets = [model bullets];
  v5 = [bullets countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(bullets);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        text = [v9 text];
        v11 = MEMORY[0x1E69DCAB8];
        imageName = [v9 imageName];
        v13 = [v11 scImageNamed:imageName];
        [(SCUIInterventionScreenViewController *)self addBulletedListItemWithTitle:&stru_1F3B30210 description:text image:v13];
      }

      v6 = [bullets countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addButtonsFromModel:(id)model
{
  v26 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:?];
  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setRightBarButtonItem:v5];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = modelCopy;
  actions = [modelCopy actions];
  v8 = [actions countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(actions);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        if ([v12 primary])
        {
          [MEMORY[0x1E69B7D00] boldButton];
        }

        else
        {
          [MEMORY[0x1E69B7D38] linkButton];
        }
        v13 = ;
        title = [v12 title];
        [v13 setTitle:title forState:0];

        v15 = +[SCUIAXIdentifiers interventionScreenAction:](SCUIAXIdentifiers, "interventionScreenAction:", [v12 actionID]);
        [v13 setAccessibilityIdentifier:v15];

        actionID = [v12 actionID];
        if (actionID <= 3)
        {
          v17 = sel_screenOne_notNowButtonPressed;
          if (actionID == 1)
          {
            goto LABEL_21;
          }

          v17 = sel_screenOne_moreHelpButtonPressed;
          if (actionID == 2)
          {
            goto LABEL_21;
          }

          v17 = sel_screenOne_acceptButtonPressed;
          if (actionID == 3)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (actionID <= 5)
          {
            v17 = sel_screenTwo_notNowButtonPressed;
            if (actionID != 4)
            {
              v17 = sel_screenTwo_messageButtonPressed;
            }

            goto LABEL_21;
          }

          if (actionID == 6)
          {
            v17 = sel_screenTwo_acceptButtonPressed;
LABEL_21:
            [v13 addTarget:self action:v17 forControlEvents:64];
            buttonTray = [(SCUIInterventionScreenViewController *)self buttonTray];
            [buttonTray addButton:v13];

            goto LABEL_22;
          }

          v17 = sel_screenOne_reportToAuthoritiesButtonPressed;
          if (actionID == 7)
          {
            goto LABEL_21;
          }
        }

LABEL_22:
      }

      v9 = [actions countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)screenOne_notNowButtonPressed
{
  model = [(SCUIInterventionScreenViewController *)self model];
  screen = [model screen];

  model2 = [(SCUIInterventionScreenViewController *)self model];
  v6 = model2;
  if (screen)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  [model2 collectInterventionInteractionEventWith:v7];

  [(SCUIInterventionScreenViewController *)self setDismissedBySwipe:0];
  container = [(SCUIInterventionScreenViewController *)self container];
  interventionDelegate = [container interventionDelegate];
  container2 = [(SCUIInterventionScreenViewController *)self container];
  [interventionDelegate didRejectForInterventionViewController:container2];
}

- (void)screenOne_moreHelpButtonPressed
{
  model = [(SCUIInterventionScreenViewController *)self model];
  [model collectResourceInteractionEventWith:2];

  container = [(SCUIInterventionScreenViewController *)self container];
  interventionDelegate = [container interventionDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    container2 = [(SCUIInterventionScreenViewController *)self container];
    interventionDelegate2 = [container2 interventionDelegate];
    container3 = [(SCUIInterventionScreenViewController *)self container];
    [interventionDelegate2 didRequestMoreHelpForInterventionViewController:container3];
  }

  else
  {
    container2 = [(SCUIInterventionScreenViewController *)self model];
    [container2 didAskForMoreHelpWithPresentingViewController:self];
  }
}

- (void)screenOne_reportToAuthoritiesButtonPressed
{
  [(SCUIInterventionScreenViewController *)self setDismissedBySwipe:0];
  model = [(SCUIInterventionScreenViewController *)self model];
  [model collectResourceInteractionEventWith:6];

  authority = [(SCUIInterventionScreenViewController *)self authority];
  interventionType = [(SCUIInterventionScreenViewController *)self interventionType];
  container = [(SCUIInterventionScreenViewController *)self container];
  interventionDelegate = [container interventionDelegate];
  container2 = [(SCUIInterventionScreenViewController *)self container];
  contextDictionary = [container2 contextDictionary];
  [SCUIReportToAuthorities presentFlowFromController:self authority:authority interventionType:interventionType delegate:interventionDelegate contextDictionary:contextDictionary];
}

- (void)screenOne_acceptButtonPressed
{
  container = [(SCUIInterventionScreenViewController *)self container];
  v5 = [(SCUIInterventionScreenViewController *)self nextScreenWithContainer:container];

  [(SCUIInterventionScreenViewController *)self setDismissedBySwipe:0];
  navigationController = [(SCUIInterventionScreenViewController *)self navigationController];
  [navigationController pushViewController:v5 animated:1];
}

- (void)screenTwo_messageButtonPressed
{
  model = [(SCUIInterventionScreenViewController *)self model];
  [model collectResourceInteractionEventWith:3];

  container = [(SCUIInterventionScreenViewController *)self container];
  interventionDelegate = [container interventionDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    container2 = [(SCUIInterventionScreenViewController *)self container];
    interventionDelegate2 = [container2 interventionDelegate];
    container3 = [(SCUIInterventionScreenViewController *)self container];
    [interventionDelegate2 didContactSomeoneForInterventionViewController:container3];
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __70__SCUIInterventionScreenViewController_screenTwo_messageButtonPressed__block_invoke;
    v10[3] = &unk_1E7FF2450;
    v10[4] = self;
    [(SCUIInterventionScreenViewController *)self dismissViewControllerAnimated:1 completion:v10];
  }
}

uint64_t __70__SCUIInterventionScreenViewController_screenTwo_messageButtonPressed__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) interventionType];

  return [SCUIDefaultImplementations didMessageSomeoneWithInterventionType:v1];
}

- (void)screenTwo_acceptButtonPressed
{
  [(SCUIInterventionScreenViewController *)self setDismissedBySwipe:0];
  view = [(SCUIInterventionScreenViewController *)self view];
  [view setUserInteractionEnabled:0];

  navigationItem = [(OBBaseWelcomeController *)self navigationItem];
  [navigationItem setHidesBackButton:1];

  model = [(SCUIInterventionScreenViewController *)self model];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__SCUIInterventionScreenViewController_screenTwo_acceptButtonPressed__block_invoke;
  v6[3] = &unk_1E7FF25B0;
  v6[4] = self;
  [SCUIScreenTimePasscodeController askUserForScreenTimePasscodeFrom:self model:model completionHandler:v6];
}

void __69__SCUIInterventionScreenViewController_screenTwo_acceptButtonPressed__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__SCUIInterventionScreenViewController_screenTwo_acceptButtonPressed__block_invoke_2;
  block[3] = &unk_1E7FF2588;
  v10 = v6;
  v11 = v5;
  v12 = *(a1 + 32);
  v7 = v5;
  v8 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __69__SCUIInterventionScreenViewController_screenTwo_acceptButtonPressed__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = [MEMORY[0x1E697B660] clientUI];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&dword_1BC630000, v2, OS_LOG_TYPE_DEFAULT, "Failed to check ScreenTime passcode error: %@", &v13, 0xCu);
    }
  }

  else
  {
    v4 = [*(a1 + 40) integerValue] - 1;
    if (v4 <= 2)
    {
      v5 = qword_1BC75EE30[v4];
      v6 = [*(a1 + 48) model];
      [v6 collectInterventionInteractionEventWith:v5];
    }

    v2 = [*(a1 + 48) model];
    v7 = [*(a1 + 48) container];
    v8 = [*(a1 + 48) container];
    v9 = [v8 interventionDelegate];
    [v2 bypassInterventionForContainer:v7 delegate:v9];
  }

  v10 = [*(a1 + 48) view];
  [v10 setUserInteractionEnabled:1];

  v11 = [*(a1 + 48) navigationItem];
  [v11 setHidesBackButton:0];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)screenTwo_notNowButtonPressed
{
  [(SCUIInterventionScreenViewController *)self setDismissedBySwipe:0];
  model = [(SCUIInterventionScreenViewController *)self model];
  [model collectInterventionInteractionEventWith:5];

  container = [(SCUIInterventionScreenViewController *)self container];
  interventionDelegate = [container interventionDelegate];
  v6 = objc_opt_respondsToSelector();

  container2 = [(SCUIInterventionScreenViewController *)self container];
  interventionDelegate2 = [container2 interventionDelegate];
  container3 = [(SCUIInterventionScreenViewController *)self container];
  if (v6)
  {
    [interventionDelegate2 didFinalRejectForInterventionViewController:container3];
  }

  else
  {
    [interventionDelegate2 didRejectForInterventionViewController:container3];
  }
}

- (id)nextScreenWithContainer:(id)container
{
  containerCopy = container;
  model = [(SCUIInterventionScreenViewController *)self model];
  nextModel = [model nextModel];

  v7 = [[SCUIInterventionScreenViewController alloc] initWithModel:nextModel];
  [(SCUIInterventionScreenViewController *)v7 setContainer:containerCopy];

  return v7;
}

- (SCUIInterventionContainer)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

@end