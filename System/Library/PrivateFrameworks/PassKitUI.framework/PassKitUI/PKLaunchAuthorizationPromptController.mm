@interface PKLaunchAuthorizationPromptController
- (BOOL)_canPresentPrompt;
- (BOOL)isPresentingNotificationAuthorizationPrompt;
- (PKLaunchAuthorizationPromptController)initWithContext:(int64_t)a3 dataProvider:(id)a4 delegate:(id)a5;
- (void)enableLaunchPromptsForSession;
- (void)locationManagerDidChangeAuthorization:(id)a3;
- (void)presentLaunchPromptsForPassesIfNeeded:(id)a3;
- (void)resetLaunchPromptsForNextSession;
@end

@implementation PKLaunchAuthorizationPromptController

- (void)enableLaunchPromptsForSession
{
  if (self->_shouldShowLaunchPrompts != 2)
  {
    self->_shouldShowLaunchPrompts = 1;
  }
}

- (BOOL)_canPresentPrompt
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_delegate);
    if ([v4 canPresentLaunchPrompts])
    {
      v5 = self->_shouldShowLaunchPrompts == 1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (PKLaunchAuthorizationPromptController)initWithContext:(int64_t)a3 dataProvider:(id)a4 delegate:(id)a5
{
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = PKLaunchAuthorizationPromptController;
  v11 = [(PKLaunchAuthorizationPromptController *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_context = a3;
    objc_storeStrong(&v11->_dataProvider, a4);
    objc_storeWeak(&v12->_delegate, v10);
    v12->_shouldShowLaunchPrompts = 1;
    v13 = dispatch_queue_create("com.apple.passkit.authorization-prompt", 0);
    locationQueue = v12->_locationQueue;
    v12->_locationQueue = v13;
  }

  return v12;
}

- (void)presentLaunchPromptsForPassesIfNeeded:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69E96A0];
  v6 = MEMORY[0x1E69E96A0];
  if (self->_shouldShowLaunchPrompts == 1 && !self->_evaluatingPresentment)
  {
    self->_evaluatingPresentment = 1;
    objc_initWeak(&location, self);
    v7 = objc_alloc_init(MEMORY[0x1E69B8658]);
    if (self->_userNotificationAuthorizationViewController)
    {
      v8 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1BD026000, v8, OS_LOG_TYPE_DEFAULT, "PKLaunchAuthorizationPromptController: Skipping notification auth presentation due to other launch activity", buf, 2u);
      }
    }

    else
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __79__PKLaunchAuthorizationPromptController_presentLaunchPromptsForPassesIfNeeded___block_invoke;
      v22[3] = &unk_1E801F240;
      v23 = v4;
      v9 = v5;
      v24 = v5;
      objc_copyWeak(&v25, &location);
      [v7 addOperation:v22];
      objc_destroyWeak(&v25);

      v8 = v23;
    }

    if (!self->_locationAuthorizationRequested)
    {
      self->_locationAuthorizationRequested = 1;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __79__PKLaunchAuthorizationPromptController_presentLaunchPromptsForPassesIfNeeded___block_invoke_75;
      v17[3] = &unk_1E801F290;
      v10 = v5;
      v18 = v5;
      objc_copyWeak(&v20, &location);
      v19 = self;
      [v7 addOperation:v17];
      objc_destroyWeak(&v20);
    }

    v11 = [MEMORY[0x1E695DFB0] null];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __79__PKLaunchAuthorizationPromptController_presentLaunchPromptsForPassesIfNeeded___block_invoke_4;
    v14[3] = &unk_1E801F2B8;
    v12 = v5;
    v15 = v5;
    v16 = self;
    v13 = [v7 evaluateWithInput:v11 completion:v14];

    objc_destroyWeak(&location);
  }
}

void __79__PKLaunchAuthorizationPromptController_presentLaunchPromptsForPassesIfNeeded___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [MEMORY[0x1E69B9328] sharedInstance];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __79__PKLaunchAuthorizationPromptController_presentLaunchPromptsForPassesIfNeeded___block_invoke_2;
  v15[3] = &unk_1E801F218;
  v11 = *(a1 + 32);
  v16 = *(a1 + 40);
  objc_copyWeak(&v20, (a1 + 48));
  v12 = v9;
  v19 = v12;
  v13 = v8;
  v17 = v13;
  v14 = v10;
  v18 = v14;
  [v14 shouldOfferAuthorizationPromptWithPasses:v11 completion:v15];

  objc_destroyWeak(&v20);
}

void __79__PKLaunchAuthorizationPromptController_presentLaunchPromptsForPassesIfNeeded___block_invoke_2(id *a1, char a2, void *a3)
{
  v6 = a1[4];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PKLaunchAuthorizationPromptController_presentLaunchPromptsForPassesIfNeeded___block_invoke_3;
  block[3] = &unk_1E801F1F0;
  objc_copyWeak(v15, a1 + 8);
  v7 = a1[7];
  v8 = a1[5];
  v16 = a2;
  v9 = a1[6];
  v15[1] = a3;
  *&v10 = a1[4];
  *(&v10 + 1) = v7;
  *&v11 = v8;
  *(&v11 + 1) = v9;
  v13 = v11;
  v14 = v10;
  dispatch_async(v6, block);

  objc_destroyWeak(v15);
}

void __79__PKLaunchAuthorizationPromptController_presentLaunchPromptsForPassesIfNeeded___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (!WeakRetained || (*(a1 + 80) & 1) == 0)
  {
LABEL_8:
    (*(*(a1 + 56) + 16))();
    goto LABEL_9;
  }

  if (([WeakRetained _canPresentPrompt] & 1) == 0)
  {
    v5 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BD026000, v5, OS_LOG_TYPE_DEFAULT, "PKLaunchAuthorizationPromptController: Skipping notification TCC warming screen as we are unable to present in the current state", buf, 2u);
    }

    goto LABEL_8;
  }

  v4 = [[PKUserNotificationAuthorizationExplanationViewController alloc] initWithController:*(a1 + 40) contentType:*(a1 + 72) context:*(v3 + 1) dataProvider:*(v3 + 2)];
  objc_storeStrong(v3 + 6, v4);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__PKLaunchAuthorizationPromptController_presentLaunchPromptsForPassesIfNeeded___block_invoke_67;
  v11[3] = &unk_1E801F1A0;
  v12 = *(a1 + 48);
  objc_copyWeak(&v15, (a1 + 64));
  v14 = *(a1 + 56);
  v13 = *(a1 + 32);
  [(PKUserNotificationAuthorizationExplanationViewController *)v4 setNextStepHandler:v11];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__PKLaunchAuthorizationPromptController_presentLaunchPromptsForPassesIfNeeded___block_invoke_3_70;
  v6[3] = &unk_1E801F1C8;
  v7 = *(a1 + 48);
  objc_copyWeak(&v10, (a1 + 64));
  v9 = *(a1 + 56);
  v8 = *(a1 + 32);
  [(PKUserNotificationAuthorizationExplanationViewController *)v4 preflightWithCompletion:v6];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v15);

LABEL_9:
}

void __79__PKLaunchAuthorizationPromptController_presentLaunchPromptsForPassesIfNeeded___block_invoke_67(uint64_t a1)
{
  v2 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PKLaunchAuthorizationPromptController_presentLaunchPromptsForPassesIfNeeded___block_invoke_2_68;
  block[3] = &unk_1E8011108;
  objc_copyWeak(&v6, (a1 + 56));
  v5 = *(a1 + 48);
  v4 = *(a1 + 40);
  dispatch_async(v2, block);

  objc_destroyWeak(&v6);
}

void __79__PKLaunchAuthorizationPromptController_presentLaunchPromptsForPassesIfNeeded___block_invoke_2_68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained[6];
    WeakRetained[6] = 0;
    v4 = WeakRetained;

    (*(*(a1 + 40) + 16))();
    WeakRetained = v4;
  }
}

void __79__PKLaunchAuthorizationPromptController_presentLaunchPromptsForPassesIfNeeded___block_invoke_3_70(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained _canPresentPrompt] & 1) != 0)
  {
    v4 = [[PKNavigationController alloc] initWithRootViewController:*(v3 + 6)];
    [(PKNavigationController *)v4 setNavigationBarHidden:1];
    if ([(UIViewController *)v4 pkui_userInterfaceIdiomSupportsLargeLayouts])
    {
      [(PKNavigationController *)v4 setModalPresentationStyle:1];
    }

    v5 = objc_loadWeakRetained(v3 + 3);
    [v5 presentLaunchPromptViewController:v4];
  }

  else
  {
    v6 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "PKLaunchAuthorizationPromptController: Skipping notification TCC warming screen just before presenting as we are no longer able to present in the current state", v7, 2u);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __79__PKLaunchAuthorizationPromptController_presentLaunchPromptsForPassesIfNeeded___block_invoke_75(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained && ([WeakRetained _canPresentPrompt] & 1) != 0)
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(v11 + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__PKLaunchAuthorizationPromptController_presentLaunchPromptsForPassesIfNeeded___block_invoke_2_76;
    block[3] = &unk_1E80137A0;
    block[4] = v9;
    block[5] = v11;
    v14 = v10;
    v16 = v7;
    v15 = v6;
    dispatch_async(v12, block);
  }

  else
  {
    (*(v7 + 2))(v7, v6, 0);
  }
}

void __79__PKLaunchAuthorizationPromptController_presentLaunchPromptsForPassesIfNeeded___block_invoke_2_76(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E695FBE8]);
  v3 = PKPassKitCoreBundle();
  v4 = [v3 bundlePath];
  v5 = [v2 initWithEffectiveBundlePath:v4 delegate:*(a1 + 32) onQueue:*(*(a1 + 40) + 64)];

  v6 = [v5 authorizationStatus];
  v7 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__PKLaunchAuthorizationPromptController_presentLaunchPromptsForPassesIfNeeded___block_invoke_3_78;
  v9[3] = &unk_1E801F268;
  v13 = v6;
  v10 = v5;
  v12 = *(a1 + 64);
  v11 = *(a1 + 56);
  v8 = v5;
  dispatch_async(v7, v9);
}

uint64_t __79__PKLaunchAuthorizationPromptController_presentLaunchPromptsForPassesIfNeeded___block_invoke_3_78(uint64_t a1)
{
  if (!*(a1 + 56))
  {
    [*(a1 + 32) requestWhenInUseAuthorization];
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

- (void)resetLaunchPromptsForNextSession
{
  self->_shouldShowLaunchPrompts = 0;
  self->_evaluatingPresentment = 0;
  self->_locationAuthorizationRequested = 0;
}

- (BOOL)isPresentingNotificationAuthorizationPrompt
{
  userNotificationAuthorizationViewController = self->_userNotificationAuthorizationViewController;
  if (userNotificationAuthorizationViewController)
  {
    LOBYTE(userNotificationAuthorizationViewController) = [(PKUserNotificationAuthorizationExplanationViewController *)userNotificationAuthorizationViewController isPresentingNotificationAuthorizationPrompt];
  }

  return userNotificationAuthorizationViewController;
}

- (void)locationManagerDidChangeAuthorization:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__PKLaunchAuthorizationPromptController_locationManagerDidChangeAuthorization___block_invoke;
  v6[3] = &unk_1E8010A10;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __79__PKLaunchAuthorizationPromptController_locationManagerDidChangeAuthorization___block_invoke(uint64_t a1)
{
  result = [*(a1 + 40) authorizationStatus];
  *(*(a1 + 32) + 56) = result != 0;
  return result;
}

@end