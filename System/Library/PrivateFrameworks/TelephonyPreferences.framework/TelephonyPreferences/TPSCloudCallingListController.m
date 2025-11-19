@interface TPSCloudCallingListController
- (OBPrivacyLinkController)privacyLinkController;
- (OBPrivacyPresenter)privacyPresenter;
- (void)appendAboutWiFiCallingFooterToGroupSpecifier:(id)a3;
- (void)presentOrUpdateViewController:(id)a3;
- (void)presentPrivacyPresenter;
@end

@implementation TPSCloudCallingListController

- (OBPrivacyLinkController)privacyLinkController
{
  privacyLinkController = self->_privacyLinkController;
  if (!privacyLinkController)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getOBPrivacyLinkControllerClass_softClass;
    v13 = getOBPrivacyLinkControllerClass_softClass;
    if (!getOBPrivacyLinkControllerClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getOBPrivacyLinkControllerClass_block_invoke;
      v9[3] = &unk_2782E3900;
      v9[4] = &v10;
      __getOBPrivacyLinkControllerClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = [v4 linkWithBundleIdentifier:@"com.apple.onboarding.cloudcalling"];
    v7 = self->_privacyLinkController;
    self->_privacyLinkController = v6;

    privacyLinkController = self->_privacyLinkController;
  }

  return privacyLinkController;
}

- (OBPrivacyPresenter)privacyPresenter
{
  privacyPresenter = self->_privacyPresenter;
  if (!privacyPresenter)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getOBPrivacyPresenterClass_softClass;
    v13 = getOBPrivacyPresenterClass_softClass;
    if (!getOBPrivacyPresenterClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getOBPrivacyPresenterClass_block_invoke;
      v9[3] = &unk_2782E3900;
      v9[4] = &v10;
      __getOBPrivacyPresenterClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = [v4 presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.cloudcalling"];
    v7 = self->_privacyPresenter;
    self->_privacyPresenter = v6;

    [(OBPrivacyPresenter *)self->_privacyPresenter setPresentingViewController:self];
    privacyPresenter = self->_privacyPresenter;
  }

  return privacyPresenter;
}

- (void)appendAboutWiFiCallingFooterToGroupSpecifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v16 = v4;
    v5 = [(TPSCloudCallingListController *)self privacyLinkController];
    v6 = [v5 flow];
    v7 = [v6 localizedButtonTitle];

    v8 = [v16 propertyForKey:*MEMORY[0x277D3FF88]];
    if (v8)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v8, v7];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@", v7, v15];
    }
    v9 = ;
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v16 setProperty:v11 forKey:*MEMORY[0x277D3FF48]];

    [v16 setProperty:v9 forKey:*MEMORY[0x277D3FF70]];
    v18.location = [v9 rangeOfString:v7];
    v12 = NSStringFromRange(v18);
    [v16 setProperty:v12 forKey:*MEMORY[0x277D3FF58]];

    v13 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:self];
    [v16 setProperty:v13 forKey:*MEMORY[0x277D3FF68]];

    v14 = NSStringFromSelector(sel_presentPrivacyPresenter);
    [v16 setProperty:v14 forKey:*MEMORY[0x277D3FF50]];

    v4 = v16;
  }
}

- (void)presentOrUpdateViewController:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = TPSLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v4;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "Asked to present or update view controller: %@", buf, 0xCu);
  }

  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __63__TPSCloudCallingListController_presentOrUpdateViewController___block_invoke;
  v15 = &unk_2782E39D0;
  v16 = v4;
  v17 = self;
  v6 = v4;
  v7 = _Block_copy(&v12);
  v8 = [(TPSCloudCallingListController *)self presentedViewController:v12];

  if (v8)
  {
    v9 = TPSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(TPSCloudCallingListController *)self presentedViewController];
      *buf = 138412290;
      v19 = v10;
      _os_log_impl(&dword_21B8E9000, v9, OS_LOG_TYPE_DEFAULT, "A view controller is already being presented: %@. Dismissing it and presenting the new one", buf, 0xCu);
    }

    [(TPSCloudCallingListController *)self dismissViewControllerAnimated:1 completion:v7];
  }

  else
  {
    v7[2](v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __63__TPSCloudCallingListController_presentOrUpdateViewController___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setModalPresentationStyle:2];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __63__TPSCloudCallingListController_presentOrUpdateViewController___block_invoke_2;
  v6[3] = &unk_2782E39D0;
  v4 = v2;
  v5 = *(a1 + 40);
  v7 = v4;
  v8 = v5;
  [v3 presentViewController:v4 animated:1 completion:v6];
}

uint64_t __63__TPSCloudCallingListController_presentOrUpdateViewController___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v4 = TPSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_21B8E9000, v4, OS_LOG_TYPE_DEFAULT, "Reloading specifiers because the presented view controller was a UIAlertController: %@", &v7, 0xCu);
    }

    result = [*(a1 + 40) reloadSpecifiers];
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)presentPrivacyPresenter
{
  v2 = [(TPSCloudCallingListController *)self privacyPresenter];
  [v2 present];
}

@end