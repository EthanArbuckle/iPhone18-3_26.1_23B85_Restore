@interface VUIFamilyInviteManager
- (VUIFamilyInviteManager)init;
- (id)accountsForAccountManager:(id)a3;
- (void)presentFamilySetupScreenIfEligible:(id)a3 checkEligibility:(BOOL)a4;
- (void)presentFamilySetupScreenWithBuyParams:(id)a3;
@end

@implementation VUIFamilyInviteManager

- (VUIFamilyInviteManager)init
{
  v10.receiver = self;
  v10.super_class = VUIFamilyInviteManager;
  v2 = [(VUIFamilyInviteManager *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6959A48]);
    store = v2->_store;
    v2->_store = v3;

    v5 = objc_alloc(MEMORY[0x1E698C250]);
    v6 = [(VUIFamilyInviteManager *)v2 store];
    v7 = [v5 initWithAccountStore:v6];
    accountManager = v2->_accountManager;
    v2->_accountManager = v7;

    [(AIDAAccountManager *)v2->_accountManager setDelegate:v2];
  }

  return v2;
}

- (void)presentFamilySetupScreenIfEligible:(id)a3 checkEligibility:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __78__VUIFamilyInviteManager_presentFamilySetupScreenIfEligible_checkEligibility___block_invoke;
  aBlock[3] = &unk_1E872D768;
  v7 = v6;
  v16 = v7;
  v8 = _Block_copy(aBlock);
  v9 = v8;
  if (v4)
  {
    v10 = objc_alloc(MEMORY[0x1E699C0A0]);
    v11 = [(VUIFamilyInviteManager *)self accountManager];
    v12 = [v10 initWithAccountManager:v11];

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __78__VUIFamilyInviteManager_presentFamilySetupScreenIfEligible_checkEligibility___block_invoke_52;
    v13[3] = &unk_1E8730868;
    v14 = v9;
    [v12 requestFamilyEligibilityWithCompletion:v13];
  }

  else
  {
    (*(v8 + 2))(v8);
  }
}

void __78__VUIFamilyInviteManager_presentFamilySetupScreenIfEligible_checkEligibility___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__VUIFamilyInviteManager_presentFamilySetupScreenIfEligible_checkEligibility___block_invoke_2;
  block[3] = &unk_1E872D768;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __78__VUIFamilyInviteManager_presentFamilySetupScreenIfEligible_checkEligibility___block_invoke_2(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E699C090]);
  v3 = [v2 initWithEventType:*MEMORY[0x1E699C088]];
  [v3 setClientName:@"AppleTV"];
  v4 = *(a1 + 32);
  if (v4 && [v4 count])
  {
    [v3 setAdditionalParameters:*(a1 + 32)];
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__6;
  v14 = __Block_byref_object_dispose__6;
  v15 = objc_alloc_init(MEMORY[0x1E699C098]);
  v5 = +[VUIApplicationRouter currentNavigationController];
  if (!v5)
  {
    v6 = +[VUITVAppLauncher sharedInstance];
    v7 = [v6 appWindow];
    v5 = [v7 rootViewController];
  }

  [v11[5] setPresenter:v5];
  v8 = v11[5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__VUIFamilyInviteManager_presentFamilySetupScreenIfEligible_checkEligibility___block_invoke_39;
  v9[3] = &unk_1E8730840;
  v9[4] = &v10;
  [v8 performOperationWithContext:v3 completion:v9];

  _Block_object_dispose(&v10, 8);
}

void __78__VUIFamilyInviteManager_presentFamilySetupScreenIfEligible_checkEligibility___block_invoke_39(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = VUIDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (a2)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    if (v5)
    {
      v8 = [v5 description];
    }

    else
    {
      v8 = @"no error";
    }

    v11 = 138412546;
    v12 = v7;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIFamilyInviteManager::FACircleStateController completion -- success: %@ -- error: %@", &v11, 0x16u);
    if (v5)
    {
    }
  }

  v9 = *(*(a1 + 32) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = 0;
}

void __78__VUIFamilyInviteManager_presentFamilySetupScreenIfEligible_checkEligibility___block_invoke_52(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a2 eligibilityStatus];
  v7 = VUIDefaultLogObject();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6 == 1)
  {
    if (v8)
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIFamilyInviteManager::presentFamilySetupScreenIfEligible eligible for family.  Presenting Family Setup Screen", &v10, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v8)
    {
      v9 = [v5 description];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIFamilyInviteManager::presentFamilySetupScreenIfEligible not eligible for family -- error: %@", &v10, 0xCu);
    }
  }
}

- (void)presentFamilySetupScreenWithBuyParams:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = [VUIActionCommerceTransaction extractSalableAdamIDFromBuyParams:?];
    v5 = [v4 copy];

    if (v5)
    {
      v8 = @"salableAdamId";
      v9[0] = v5;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      [(VUIFamilyInviteManager *)self presentFamilySetupScreenIfEligible:v6 checkEligibility:1];
    }

    else
    {
      v6 = VUIDefaultLogObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIFamilyInviteManager::Failed to find salableAdamId from buyparams. Not presenting family setup screen.", v7, 2u);
      }
    }
  }

  else
  {
    v5 = VUIDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIFamilyInviteManager::Missing buyparams. Not presenting family setup screen.", v7, 2u);
    }
  }
}

- (id)accountsForAccountManager:(id)a3
{
  v3 = MEMORY[0x1E695DF90];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 accountStore];

  v7 = [v6 aa_primaryAppleAccount];

  if (v7)
  {
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x1E698C218]];
  }

  v8 = [v5 copy];

  return v8;
}

@end