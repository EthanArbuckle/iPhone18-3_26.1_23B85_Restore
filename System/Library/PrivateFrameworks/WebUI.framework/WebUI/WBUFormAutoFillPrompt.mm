@interface WBUFormAutoFillPrompt
+ (void)showAutoFillPromptForAppleCashLowBalanceInWebView:(id)view title:(id)title message:(id)message chooseDifferentCardButtonTitle:(id)buttonTitle addMoneyButtonTitle:(id)moneyButtonTitle completionHandler:(id)handler;
+ (void)showAutoFillPromptInWebView:(id)view title:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle otherButtonTitles:(id)titles cancelWhenAppEntersBackground:(BOOL)background makeFirstButtonSuggestedAction:(BOOL)action headerViewController:(id)self0 completionHandler:(id)self1;
- (void)_alertTextFieldDidChange:(id)change;
- (void)showAutoFillPromptForUsernameInWebView:(id)view url:(id)url title:(id)title message:(id)message suggestedUsername:(id)username password:(id)password isGeneratedPassword:(BOOL)generatedPassword completionHandler:(id)self0;
@end

@implementation WBUFormAutoFillPrompt

+ (void)showAutoFillPromptInWebView:(id)view title:(id)title message:(id)message cancelButtonTitle:(id)buttonTitle otherButtonTitles:(id)titles cancelWhenAppEntersBackground:(BOOL)background makeFirstButtonSuggestedAction:(BOOL)action headerViewController:(id)self0 completionHandler:(id)self1
{
  viewCopy = view;
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  titlesCopy = titles;
  controllerCopy = controller;
  handlerCopy = handler;
  v23 = handlerCopy;
  if (isShowingAlertController == 1)
  {
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, -1);
    }
  }

  else
  {
    backgroundCopy = background;
    v40 = messageCopy;
    webui_preventNavigationDuringAutoFillPrompt = [viewCopy webui_preventNavigationDuringAutoFillPrompt];
    webui_presentingViewController = [viewCopy webui_presentingViewController];
    if ([webui_presentingViewController modalPresentationStyle] == 7)
    {
      [webui_presentingViewController dismissViewControllerAnimated:0 completion:0];
    }

    v39 = titleCopy;
    v26 = [WBUAlertController alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
    v27 = v26;
    if (controllerCopy)
    {
      [v26 setContentViewController:controllerCopy];
    }

    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __203__WBUFormAutoFillPrompt_showAutoFillPromptInWebView_title_message_cancelButtonTitle_otherButtonTitles_cancelWhenAppEntersBackground_makeFirstButtonSuggestedAction_headerViewController_completionHandler___block_invoke;
    v55[3] = &unk_279EB1508;
    v56 = v23;
    v57 = webui_preventNavigationDuringAutoFillPrompt;
    v37 = webui_preventNavigationDuringAutoFillPrompt;
    v28 = MEMORY[0x2743DCFC0](v55);
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __203__WBUFormAutoFillPrompt_showAutoFillPromptInWebView_title_message_cancelButtonTitle_otherButtonTitles_cancelWhenAppEntersBackground_makeFirstButtonSuggestedAction_headerViewController_completionHandler___block_invoke_2;
    v49[3] = &unk_279EB1558;
    v29 = v28;
    v53 = v29;
    v30 = v27;
    v50 = v30;
    actionCopy = action;
    v51 = controllerCopy;
    v52 = titlesCopy;
    [v52 enumerateObjectsUsingBlock:v49];
    v31 = MEMORY[0x277D750F8];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __203__WBUFormAutoFillPrompt_showAutoFillPromptInWebView_title_message_cancelButtonTitle_otherButtonTitles_cancelWhenAppEntersBackground_makeFirstButtonSuggestedAction_headerViewController_completionHandler___block_invoke_4;
    v47[3] = &unk_279EB1580;
    v32 = v29;
    v48 = v32;
    v33 = [v31 actionWithTitle:buttonTitleCopy style:1 handler:v47];
    [v30 addAction:v33];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __203__WBUFormAutoFillPrompt_showAutoFillPromptInWebView_title_message_cancelButtonTitle_otherButtonTitles_cancelWhenAppEntersBackground_makeFirstButtonSuggestedAction_headerViewController_completionHandler___block_invoke_5;
    v45[3] = &unk_279EB15A8;
    v46 = v32;
    v34 = v32;
    [v30 setDeallocationHandler:v45];
    isShowingAlertController = 1;
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __203__WBUFormAutoFillPrompt_showAutoFillPromptInWebView_title_message_cancelButtonTitle_otherButtonTitles_cancelWhenAppEntersBackground_makeFirstButtonSuggestedAction_headerViewController_completionHandler___block_invoke_6;
    v41[3] = &unk_279EB15F8;
    v44 = backgroundCopy;
    v42 = v30;
    v43 = v33;
    v35 = v33;
    v36 = v30;
    [webui_presentingViewController presentViewController:v36 animated:1 completion:v41];

    titleCopy = v39;
    messageCopy = v40;
  }
}

uint64_t __203__WBUFormAutoFillPrompt_showAutoFillPromptInWebView_title_message_cancelButtonTitle_otherButtonTitles_cancelWhenAppEntersBackground_makeFirstButtonSuggestedAction_headerViewController_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  isShowingAlertController = 0;
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:appWillEnterBackgroundObserver];

  v5 = appWillEnterBackgroundObserver;
  appWillEnterBackgroundObserver = 0;

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, a2);
  }

  v7 = *(*(a1 + 40) + 16);

  return v7();
}

void __203__WBUFormAutoFillPrompt_showAutoFillPromptInWebView_title_message_cancelButtonTitle_otherButtonTitles_cancelWhenAppEntersBackground_makeFirstButtonSuggestedAction_headerViewController_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277D750F8];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __203__WBUFormAutoFillPrompt_showAutoFillPromptInWebView_title_message_cancelButtonTitle_otherButtonTitles_cancelWhenAppEntersBackground_makeFirstButtonSuggestedAction_headerViewController_completionHandler___block_invoke_3;
  v11 = &unk_279EB1530;
  v12 = *(a1 + 56);
  v13 = a3;
  v7 = [v6 actionWithTitle:a2 style:0 handler:&v8];
  [*(a1 + 32) addAction:{v7, v8, v9, v10, v11}];
  if (!a3 && (*(a1 + 64) & 1) != 0)
  {
    [*(a1 + 32) setPreferredAction:v7];
  }

  if (*(a1 + 40) && [*(a1 + 48) count] - 2 == a3)
  {
    [*(a1 + 32) _addSectionDelimiter];
  }
}

void __203__WBUFormAutoFillPrompt_showAutoFillPromptInWebView_title_message_cancelButtonTitle_otherButtonTitles_cancelWhenAppEntersBackground_makeFirstButtonSuggestedAction_headerViewController_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = MEMORY[0x2743DCFC0](*(a1 + 32));
  objc_sync_enter(v3);
  v4 = *(a1 + 32);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    v5 = *(a1 + 40);
    (*(*(a1 + 32) + 16))();
  }

  objc_sync_exit(v3);
}

void __203__WBUFormAutoFillPrompt_showAutoFillPromptInWebView_title_message_cancelButtonTitle_otherButtonTitles_cancelWhenAppEntersBackground_makeFirstButtonSuggestedAction_headerViewController_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x2743DCFC0](*(a1 + 32));
  objc_sync_enter(v3);
  v4 = *(a1 + 32);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_sync_exit(v3);
}

void __203__WBUFormAutoFillPrompt_showAutoFillPromptInWebView_title_message_cancelButtonTitle_otherButtonTitles_cancelWhenAppEntersBackground_makeFirstButtonSuggestedAction_headerViewController_completionHandler___block_invoke_5(uint64_t a1)
{
  obj = MEMORY[0x2743DCFC0](*(a1 + 32));
  objc_sync_enter(obj);
  v2 = *(a1 + 32);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_sync_exit(obj);
}

void __203__WBUFormAutoFillPrompt_showAutoFillPromptInWebView_title_message_cancelButtonTitle_otherButtonTitles_cancelWhenAppEntersBackground_makeFirstButtonSuggestedAction_headerViewController_completionHandler___block_invoke_6(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  v3 = *MEMORY[0x277D76660];
  v4 = [MEMORY[0x277D75128] sharedApplication];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __203__WBUFormAutoFillPrompt_showAutoFillPromptInWebView_title_message_cancelButtonTitle_otherButtonTitles_cancelWhenAppEntersBackground_makeFirstButtonSuggestedAction_headerViewController_completionHandler___block_invoke_7;
  v7[3] = &unk_279EB15D0;
  v10 = *(a1 + 48);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v5 = [v2 addObserverForName:v3 object:v4 queue:0 usingBlock:v7];
  v6 = appWillEnterBackgroundObserver;
  appWillEnterBackgroundObserver = v5;
}

uint64_t __203__WBUFormAutoFillPrompt_showAutoFillPromptInWebView_title_message_cancelButtonTitle_otherButtonTitles_cancelWhenAppEntersBackground_makeFirstButtonSuggestedAction_headerViewController_completionHandler___block_invoke_7(uint64_t result)
{
  if (*(result + 48) == 1)
  {
    return [*(result + 32) _dismissWithAction:*(result + 40)];
  }

  return result;
}

+ (void)showAutoFillPromptForAppleCashLowBalanceInWebView:(id)view title:(id)title message:(id)message chooseDifferentCardButtonTitle:(id)buttonTitle addMoneyButtonTitle:(id)moneyButtonTitle completionHandler:(id)handler
{
  viewCopy = view;
  titleCopy = title;
  messageCopy = message;
  buttonTitleCopy = buttonTitle;
  moneyButtonTitleCopy = moneyButtonTitle;
  handlerCopy = handler;
  v19 = handlerCopy;
  if (isShowingAlertController == 1)
  {
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, -1);
    }
  }

  else
  {
    v32 = moneyButtonTitleCopy;
    webui_preventNavigationDuringAutoFillPrompt = [viewCopy webui_preventNavigationDuringAutoFillPrompt];
    v33 = viewCopy;
    webui_presentingViewController = [viewCopy webui_presentingViewController];
    if ([webui_presentingViewController modalPresentationStyle] == 7)
    {
      [webui_presentingViewController dismissViewControllerAnimated:0 completion:0];
    }

    v22 = [MEMORY[0x277D75110] alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
    v23 = MEMORY[0x277D750F8];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __158__WBUFormAutoFillPrompt_showAutoFillPromptForAppleCashLowBalanceInWebView_title_message_chooseDifferentCardButtonTitle_addMoneyButtonTitle_completionHandler___block_invoke;
    v38[3] = &unk_279EB1620;
    v34 = titleCopy;
    v24 = v19;
    v39 = v24;
    v25 = messageCopy;
    v26 = webui_preventNavigationDuringAutoFillPrompt;
    v40 = v26;
    v27 = [v23 actionWithTitle:buttonTitleCopy style:0 handler:v38];
    [v22 addAction:v27];
    [v22 setPreferredAction:v27];
    v28 = MEMORY[0x277D750F8];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __158__WBUFormAutoFillPrompt_showAutoFillPromptForAppleCashLowBalanceInWebView_title_message_chooseDifferentCardButtonTitle_addMoneyButtonTitle_completionHandler___block_invoke_2;
    v35[3] = &unk_279EB1620;
    v36 = v24;
    v37 = v26;
    v29 = v26;
    messageCopy = v25;
    v30 = v29;
    moneyButtonTitleCopy = v32;
    v31 = [v28 actionWithTitle:v32 style:0 handler:v35];
    [v22 addAction:v31];
    isShowingAlertController = 1;
    [webui_presentingViewController presentViewController:v22 animated:1 completion:0];

    titleCopy = v34;
    viewCopy = v33;
  }
}

uint64_t __158__WBUFormAutoFillPrompt_showAutoFillPromptForAppleCashLowBalanceInWebView_title_message_chooseDifferentCardButtonTitle_addMoneyButtonTitle_completionHandler___block_invoke(uint64_t a1)
{
  isShowingAlertController = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, -1);
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

uint64_t __158__WBUFormAutoFillPrompt_showAutoFillPromptForAppleCashLowBalanceInWebView_title_message_chooseDifferentCardButtonTitle_addMoneyButtonTitle_completionHandler___block_invoke_2(uint64_t a1)
{
  isShowingAlertController = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)showAutoFillPromptForUsernameInWebView:(id)view url:(id)url title:(id)title message:(id)message suggestedUsername:(id)username password:(id)password isGeneratedPassword:(BOOL)generatedPassword completionHandler:(id)self0
{
  viewCopy = view;
  urlCopy = url;
  titleCopy = title;
  messageCopy = message;
  usernameCopy = username;
  passwordCopy = password;
  handlerCopy = handler;
  if ((isShowingAlertController & 1) != 0 || ![passwordCopy length])
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v44 = urlCopy;
    webui_presentingViewController = [viewCopy webui_presentingViewController];
    if ([webui_presentingViewController modalPresentationStyle] == 7)
    {
      [webui_presentingViewController dismissViewControllerAnimated:0 completion:0];
    }

    v41 = webui_presentingViewController;
    objc_storeStrong(&self->_url, url);
    v43 = messageCopy;
    v23 = [WBUAlertController alertControllerWithTitle:titleCopy message:messageCopy preferredStyle:1];
    objc_storeWeak(&self->_alertController, v23);
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __147__WBUFormAutoFillPrompt_showAutoFillPromptForUsernameInWebView_url_title_message_suggestedUsername_password_isGeneratedPassword_completionHandler___block_invoke;
    v59[3] = &unk_279EB1648;
    v39 = usernameCopy;
    v60 = v39;
    selfCopy = self;
    [v23 addTextFieldWithConfigurationHandler:v59];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __147__WBUFormAutoFillPrompt_showAutoFillPromptForUsernameInWebView_url_title_message_suggestedUsername_password_isGeneratedPassword_completionHandler___block_invoke_2;
    v57[3] = &unk_279EB1670;
    v58 = passwordCopy;
    [v23 addTextFieldWithConfigurationHandler:v57];
    v45 = viewCopy;
    webui_preventNavigationDuringAutoFillPrompt = [viewCopy webui_preventNavigationDuringAutoFillPrompt];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __147__WBUFormAutoFillPrompt_showAutoFillPromptForUsernameInWebView_url_title_message_suggestedUsername_password_isGeneratedPassword_completionHandler___block_invoke_3;
    v54[3] = &unk_279EB1698;
    v55 = handlerCopy;
    v56 = webui_preventNavigationDuringAutoFillPrompt;
    v40 = webui_preventNavigationDuringAutoFillPrompt;
    v25 = MEMORY[0x2743DCFC0](v54);
    v26 = _WBSLocalizedString();
    v42 = usernameCopy;
    if (generatedPassword)
    {
      v27 = _WBSLocalizedString();

      v28 = 2;
      v26 = v27;
    }

    else
    {
      v28 = 1;
    }

    v29 = MEMORY[0x277D750F8];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __147__WBUFormAutoFillPrompt_showAutoFillPromptForUsernameInWebView_url_title_message_suggestedUsername_password_isGeneratedPassword_completionHandler___block_invoke_4;
    v52[3] = &unk_279EB1580;
    v30 = v25;
    v53 = v30;
    v31 = [v29 actionWithTitle:v26 style:v28 handler:v52];
    [v23 addAction:v31];

    v32 = MEMORY[0x277D750F8];
    v33 = _WBSLocalizedString();
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __147__WBUFormAutoFillPrompt_showAutoFillPromptForUsernameInWebView_url_title_message_suggestedUsername_password_isGeneratedPassword_completionHandler___block_invoke_5;
    v49[3] = &unk_279EB16C0;
    v49[4] = self;
    v34 = v39;
    v50 = v34;
    v35 = v30;
    v51 = v35;
    v36 = [v32 actionWithTitle:v33 style:0 handler:v49];

    [v23 addAction:v36];
    [v23 setPreferredAction:v36];
    [v36 setEnabled:{objc_msgSend(v34, "length") != 0}];
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __147__WBUFormAutoFillPrompt_showAutoFillPromptForUsernameInWebView_url_title_message_suggestedUsername_password_isGeneratedPassword_completionHandler___block_invoke_6;
    v47[3] = &unk_279EB15A8;
    v48 = v35;
    v37 = v35;
    [v23 setDeallocationHandler:v47];
    isShowingAlertController = 1;
    mEMORY[0x277D499B8] = [MEMORY[0x277D499B8] sharedLogger];
    [mEMORY[0x277D499B8] didPresentUsernamePrompt];

    [v41 presentViewController:v23 animated:1 completion:0];
    [(WBUFormAutoFillPrompt *)self _alertTextFieldDidChange:0];

    urlCopy = v44;
    viewCopy = v45;
    usernameCopy = v42;
    messageCopy = v43;
  }
}

void __147__WBUFormAutoFillPrompt_showAutoFillPromptForUsernameInWebView_url_title_message_suggestedUsername_password_isGeneratedPassword_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = _WBSLocalizedString();
  [v4 setPlaceholder:v3];

  [v4 setText:*(a1 + 32)];
  [v4 setKeyboardType:7];
  [v4 addTarget:*(a1 + 40) action:sel__alertTextFieldDidChange_ forControlEvents:0x20000];
}

void __147__WBUFormAutoFillPrompt_showAutoFillPromptForUsernameInWebView_url_title_message_suggestedUsername_password_isGeneratedPassword_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 substringToIndex:1];
  v6 = [v5 stringByPaddingToLength:objc_msgSend(*(a1 + 32) withString:"length") startingAtIndex:{@"•", 0}];
  [v4 setText:v6];

  [v4 setUserInteractionEnabled:0];
  v7 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v4 setTextColor:v7];
}

uint64_t __147__WBUFormAutoFillPrompt_showAutoFillPromptForUsernameInWebView_url_title_message_suggestedUsername_password_isGeneratedPassword_completionHandler___block_invoke_3(uint64_t a1)
{
  isShowingAlertController = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __147__WBUFormAutoFillPrompt_showAutoFillPromptForUsernameInWebView_url_title_message_suggestedUsername_password_isGeneratedPassword_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x2743DCFC0](*(a1 + 32));
  objc_sync_enter(v3);
  v4 = *(a1 + 32);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_sync_exit(v3);
}

void __147__WBUFormAutoFillPrompt_showAutoFillPromptForUsernameInWebView_url_title_message_suggestedUsername_password_isGeneratedPassword_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v4 = [WeakRetained textFields];
  v5 = [v4 firstObject];
  v6 = [v5 text];
  v7 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v8 = [v6 stringByTrimmingCharactersInSet:v7];

  if ([*(a1 + 40) length])
  {
    v9 = [MEMORY[0x277D499B8] sharedLogger];
    [v9 didSuggestUsernameInPromptAndUserKeptSuggestion:{objc_msgSend(v8, "isEqualToString:", *(a1 + 40))}];
  }

  v10 = MEMORY[0x2743DCFC0](*(a1 + 48));
  objc_sync_enter(v10);
  v11 = *(a1 + 48);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_sync_exit(v10);
}

void __147__WBUFormAutoFillPrompt_showAutoFillPromptForUsernameInWebView_url_title_message_suggestedUsername_password_isGeneratedPassword_completionHandler___block_invoke_6(uint64_t a1)
{
  obj = MEMORY[0x2743DCFC0](*(a1 + 32));
  objc_sync_enter(obj);
  v2 = *(a1 + 32);
  if ((_WBSRunOnceImpl() & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }

  objc_sync_exit(obj);
}

- (void)_alertTextFieldDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_alertController);
  textFields = [WeakRetained textFields];
  firstObject = [textFields firstObject];

  text = [firstObject text];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v9 = [text stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  actions = [WeakRetained actions];
  v11 = [actions objectAtIndexedSubscript:1];

  [v11 setEnabled:{objc_msgSend(v9, "length") != 0}];
  mEMORY[0x277D49E08] = [MEMORY[0x277D49E08] sharedProvider];
  url = self->_url;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __50__WBUFormAutoFillPrompt__alertTextFieldDidChange___block_invoke;
  v16[3] = &unk_279EB1710;
  v17 = v9;
  v18 = firstObject;
  v14 = firstObject;
  v15 = v9;
  [mEMORY[0x277D49E08] suggestedUsersPrioritizingExistingUsersForURL:url matchingText:v15 limitForUsersNotFromURL:3 completionHandler:v16];
}

void __50__WBUFormAutoFillPrompt__alertTextFieldDidChange___block_invoke(uint64_t a1, void *a2)
{
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__WBUFormAutoFillPrompt__alertTextFieldDidChange___block_invoke_2;
  v9[3] = &unk_279EB16E8;
  v10 = *(a1 + 32);
  v4 = [a2 safari_mapAndFilterObjectsUsingBlock:v9];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__WBUFormAutoFillPrompt__alertTextFieldDidChange___block_invoke_3;
  block[3] = &unk_279EB1470;
  v7 = *(a1 + 40);
  v8 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

id __50__WBUFormAutoFillPrompt__alertTextFieldDidChange___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 value];
  v5 = [v4 safari_isCaseInsensitiveEqualToString:*(a1 + 32)];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277D75C38];
    v8 = [v3 value];
    v6 = [v7 textSuggestionWithInputText:v8 searchText:*(a1 + 32)];
  }

  return v6;
}

void __50__WBUFormAutoFillPrompt__alertTextFieldDidChange___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) textInputSuggestionDelegate];
  [v2 setSuggestions:*(a1 + 40)];
}

@end