@interface SCUIInterventionScreenViewController
- (SCUIInterventionContainer)container;
- (SCUIInterventionScreenViewController)initWithModel:(id)a3;
- (id)nextScreenWithContainer:(id)a3;
- (void)addBulletsFromModel:(id)a3;
- (void)addButtonsFromModel:(id)a3;
- (void)screenOne_acceptButtonPressed;
- (void)screenOne_moreHelpButtonPressed;
- (void)screenOne_notNowButtonPressed;
- (void)screenOne_reportToAuthoritiesButtonPressed;
- (void)screenTwo_acceptButtonPressed;
- (void)screenTwo_messageButtonPressed;
- (void)screenTwo_notNowButtonPressed;
@end

@implementation SCUIInterventionScreenViewController

- (SCUIInterventionScreenViewController)initWithModel:(id)a3
{
  v5 = a3;
  v6 = [v5 title];
  v7 = MEMORY[0x1E69DCAB8];
  v8 = [v5 imageName];
  v9 = [v7 scImageNamed:v8];
  v10 = [(SCUIInterventionScreenViewController *)self initWithTitle:v6 detailText:0 icon:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_model, a3);
    v10->_contentScreen = [v5 screen];
    v10->_options = [v5 options];
    v10->_interventionType = [v5 interventionType];
    v11 = [v5 authority];
    authority = v10->_authority;
    v10->_authority = v11;

    v13 = [v5 subtitle];

    if (v13)
    {
      v14 = [(SCUIInterventionScreenViewController *)v10 headerView];
      v15 = [v5 subtitle];
      [v14 setSubtitleText:v15];
    }

    [(SCUIInterventionScreenViewController *)v10 addBulletsFromModel:v5];
    [(SCUIInterventionScreenViewController *)v10 addButtonsFromModel:v5];
    v16 = [MEMORY[0x1E69DC888] systemBlueColor];
    v17 = [(SCUIInterventionScreenViewController *)v10 view];
    [v17 setTintColor:v16];

    v18 = +[SCUIAXIdentifiers interventionScreen:](SCUIAXIdentifiers, "interventionScreen:", [v5 screen]);
    v19 = [(SCUIInterventionScreenViewController *)v10 view];
    [v19 setAccessibilityIdentifier:v18];

    v20 = +[SCUIAXIdentifiers interventionScreenHeader];
    v21 = [(SCUIInterventionScreenViewController *)v10 headerView];
    [v21 setAccessibilityIdentifier:v20];

    v22 = +[SCUIAXIdentifiers interventionScreenContent];
    v23 = [(SCUIInterventionScreenViewController *)v10 contentView];
    [v23 setAccessibilityIdentifier:v22];
  }

  return v10;
}

- (void)addBulletsFromModel:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [a3 bullets];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v9 text];
        v11 = MEMORY[0x1E69DCAB8];
        v12 = [v9 imageName];
        v13 = [v11 scImageNamed:v12];
        [(SCUIInterventionScreenViewController *)self addBulletedListItemWithTitle:&stru_1F3B30210 description:v10 image:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)addButtonsFromModel:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:1 target:self action:?];
  v6 = [(OBBaseWelcomeController *)self navigationItem];
  [v6 setRightBarButtonItem:v5];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v20 = v4;
  v7 = [v4 actions];
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
          objc_enumerationMutation(v7);
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
        v14 = [v12 title];
        [v13 setTitle:v14 forState:0];

        v15 = +[SCUIAXIdentifiers interventionScreenAction:](SCUIAXIdentifiers, "interventionScreenAction:", [v12 actionID]);
        [v13 setAccessibilityIdentifier:v15];

        v16 = [v12 actionID];
        if (v16 <= 3)
        {
          v17 = sel_screenOne_notNowButtonPressed;
          if (v16 == 1)
          {
            goto LABEL_21;
          }

          v17 = sel_screenOne_moreHelpButtonPressed;
          if (v16 == 2)
          {
            goto LABEL_21;
          }

          v17 = sel_screenOne_acceptButtonPressed;
          if (v16 == 3)
          {
            goto LABEL_21;
          }
        }

        else
        {
          if (v16 <= 5)
          {
            v17 = sel_screenTwo_notNowButtonPressed;
            if (v16 != 4)
            {
              v17 = sel_screenTwo_messageButtonPressed;
            }

            goto LABEL_21;
          }

          if (v16 == 6)
          {
            v17 = sel_screenTwo_acceptButtonPressed;
LABEL_21:
            [v13 addTarget:self action:v17 forControlEvents:64];
            v18 = [(SCUIInterventionScreenViewController *)self buttonTray];
            [v18 addButton:v13];

            goto LABEL_22;
          }

          v17 = sel_screenOne_reportToAuthoritiesButtonPressed;
          if (v16 == 7)
          {
            goto LABEL_21;
          }
        }

LABEL_22:
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)screenOne_notNowButtonPressed
{
  v3 = [(SCUIInterventionScreenViewController *)self model];
  v4 = [v3 screen];

  v5 = [(SCUIInterventionScreenViewController *)self model];
  v6 = v5;
  if (v4)
  {
    v7 = 4;
  }

  else
  {
    v7 = 3;
  }

  [v5 collectInterventionInteractionEventWith:v7];

  [(SCUIInterventionScreenViewController *)self setDismissedBySwipe:0];
  v10 = [(SCUIInterventionScreenViewController *)self container];
  v8 = [v10 interventionDelegate];
  v9 = [(SCUIInterventionScreenViewController *)self container];
  [v8 didRejectForInterventionViewController:v9];
}

- (void)screenOne_moreHelpButtonPressed
{
  v3 = [(SCUIInterventionScreenViewController *)self model];
  [v3 collectResourceInteractionEventWith:2];

  v4 = [(SCUIInterventionScreenViewController *)self container];
  v5 = [v4 interventionDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v9 = [(SCUIInterventionScreenViewController *)self container];
    v7 = [v9 interventionDelegate];
    v8 = [(SCUIInterventionScreenViewController *)self container];
    [v7 didRequestMoreHelpForInterventionViewController:v8];
  }

  else
  {
    v9 = [(SCUIInterventionScreenViewController *)self model];
    [v9 didAskForMoreHelpWithPresentingViewController:self];
  }
}

- (void)screenOne_reportToAuthoritiesButtonPressed
{
  [(SCUIInterventionScreenViewController *)self setDismissedBySwipe:0];
  v3 = [(SCUIInterventionScreenViewController *)self model];
  [v3 collectResourceInteractionEventWith:6];

  v9 = [(SCUIInterventionScreenViewController *)self authority];
  v4 = [(SCUIInterventionScreenViewController *)self interventionType];
  v5 = [(SCUIInterventionScreenViewController *)self container];
  v6 = [v5 interventionDelegate];
  v7 = [(SCUIInterventionScreenViewController *)self container];
  v8 = [v7 contextDictionary];
  [SCUIReportToAuthorities presentFlowFromController:self authority:v9 interventionType:v4 delegate:v6 contextDictionary:v8];
}

- (void)screenOne_acceptButtonPressed
{
  v3 = [(SCUIInterventionScreenViewController *)self container];
  v5 = [(SCUIInterventionScreenViewController *)self nextScreenWithContainer:v3];

  [(SCUIInterventionScreenViewController *)self setDismissedBySwipe:0];
  v4 = [(SCUIInterventionScreenViewController *)self navigationController];
  [v4 pushViewController:v5 animated:1];
}

- (void)screenTwo_messageButtonPressed
{
  v3 = [(SCUIInterventionScreenViewController *)self model];
  [v3 collectResourceInteractionEventWith:3];

  v4 = [(SCUIInterventionScreenViewController *)self container];
  v5 = [v4 interventionDelegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v9 = [(SCUIInterventionScreenViewController *)self container];
    v7 = [v9 interventionDelegate];
    v8 = [(SCUIInterventionScreenViewController *)self container];
    [v7 didContactSomeoneForInterventionViewController:v8];
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
  v3 = [(SCUIInterventionScreenViewController *)self view];
  [v3 setUserInteractionEnabled:0];

  v4 = [(OBBaseWelcomeController *)self navigationItem];
  [v4 setHidesBackButton:1];

  v5 = [(SCUIInterventionScreenViewController *)self model];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__SCUIInterventionScreenViewController_screenTwo_acceptButtonPressed__block_invoke;
  v6[3] = &unk_1E7FF25B0;
  v6[4] = self;
  [SCUIScreenTimePasscodeController askUserForScreenTimePasscodeFrom:self model:v5 completionHandler:v6];
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
  v3 = [(SCUIInterventionScreenViewController *)self model];
  [v3 collectInterventionInteractionEventWith:5];

  v4 = [(SCUIInterventionScreenViewController *)self container];
  v5 = [v4 interventionDelegate];
  v6 = objc_opt_respondsToSelector();

  v9 = [(SCUIInterventionScreenViewController *)self container];
  v7 = [v9 interventionDelegate];
  v8 = [(SCUIInterventionScreenViewController *)self container];
  if (v6)
  {
    [v7 didFinalRejectForInterventionViewController:v8];
  }

  else
  {
    [v7 didRejectForInterventionViewController:v8];
  }
}

- (id)nextScreenWithContainer:(id)a3
{
  v4 = a3;
  v5 = [(SCUIInterventionScreenViewController *)self model];
  v6 = [v5 nextModel];

  v7 = [[SCUIInterventionScreenViewController alloc] initWithModel:v6];
  [(SCUIInterventionScreenViewController *)v7 setContainer:v4];

  return v7;
}

- (SCUIInterventionContainer)container
{
  WeakRetained = objc_loadWeakRetained(&self->_container);

  return WeakRetained;
}

@end