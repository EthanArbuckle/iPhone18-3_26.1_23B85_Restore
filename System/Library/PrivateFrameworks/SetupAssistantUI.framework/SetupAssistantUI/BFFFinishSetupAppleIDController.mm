@interface BFFFinishSetupAppleIDController
+ (id)finishSetupAppleIDController;
- (id)viewControllerWithCompletion:(id)a3;
- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4;
- (void)signInControllerDidCancel:(id)a3;
@end

@implementation BFFFinishSetupAppleIDController

+ (id)finishSetupAppleIDController
{
  v2 = objc_alloc_init(BFFFinishSetupAppleIDController);

  return v2;
}

- (id)viewControllerWithCompletion:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  [(BFFFinishSetupAppleIDController *)self setCompletion:a3];
  v4 = objc_alloc_init(MEMORY[0x277CECAC8]);
  signInController = self->_signInController;
  self->_signInController = v4;

  v6 = _BYLoggingFacility();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = self->_signInController;
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_265AC5000, v6, OS_LOG_TYPE_DEFAULT, "created signInController %@", &v12, 0xCu);
  }

  [(AAUISignInController *)self->_signInController setDelegate:self];
  objc_storeStrong(&self->_selfReference, self);
  v8 = [(AAUISignInController *)self->_signInController view];
  v9 = [(AAUISignInController *)self->_signInController viewControllers];
  v10 = [v9 firstObject];

  return v10;
}

- (void)signInController:(id)a3 didCompleteWithOperationsResults:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = [a4 objectForKeyedSubscript:*MEMORY[0x277CED1A0]];
  v8 = [v7 success];
  v9 = _BYLoggingFacility();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_265AC5000, v10, OS_LOG_TYPE_DEFAULT, "Sign-in succeeded!", buf, 2u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v19 = _BYIsInternalInstall();
    v20 = [v7 error];
    v21 = v20;
    if (v19)
    {
      v22 = 0;
      v23 = v20;
    }

    else if (v20)
    {
      v24 = MEMORY[0x277CCACA8];
      v19 = [v7 error];
      v4 = [v19 domain];
      v5 = [v7 error];
      v23 = [v24 stringWithFormat:@"<Error domain: %@, code %ld>", v4, objc_msgSend(v5, "code")];
      v22 = 1;
    }

    else
    {
      v22 = 0;
      v23 = 0;
    }

    *buf = 138543362;
    v27 = v23;
    _os_log_error_impl(&dword_265AC5000, v10, OS_LOG_TYPE_ERROR, "Sign-in failed: %{public}@", buf, 0xCu);
    if (v22)
    {
    }
  }

  v11 = [(BFFFinishSetupAppleIDController *)self flowSkipController];
  v12 = *MEMORY[0x277D4D9A0];
  [v11 didCompleteFlow:*MEMORY[0x277D4D9A0]];

  CFPreferencesSetValue(@"AppleIDPB10Presented", *MEMORY[0x277CBED28], *MEMORY[0x277D4D9E0], *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  v13 = [(BFFFinishSetupAppleIDController *)self paneFeatureAnalyticsManager];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "success")}];
  [v13 recordActionWithValue:v14 forFeature:14];

  completion = self->_completion;
  if (completion)
  {
    v25 = v12;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
    completion[2](completion, 0, v16);

    v17 = self->_completion;
    self->_completion = 0;
  }

  selfReference = self->_selfReference;
  self->_selfReference = 0;
}

- (void)signInControllerDidCancel:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = _BYLoggingFacility();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    signInController = self->_signInController;
    *buf = 138412290;
    v15 = signInController;
    _os_log_impl(&dword_265AC5000, v4, OS_LOG_TYPE_DEFAULT, "signInControllerDidCancel: %@", buf, 0xCu);
  }

  v6 = [(BFFFinishSetupAppleIDController *)self flowSkipController];
  v7 = *MEMORY[0x277D4D9A0];
  [v6 didCompleteFlow:*MEMORY[0x277D4D9A0]];

  CFPreferencesSetValue(@"AppleIDPB10Presented", *MEMORY[0x277CBED28], *MEMORY[0x277D4D9E0], *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  v8 = [(BFFFinishSetupAppleIDController *)self paneFeatureAnalyticsManager];
  [v8 recordActionWithValue:MEMORY[0x277CBEC28] forFeature:14];

  completion = self->_completion;
  if (completion)
  {
    v13 = v7;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    completion[2](completion, 2, v10);

    v11 = self->_completion;
    self->_completion = 0;
  }

  selfReference = self->_selfReference;
  self->_selfReference = 0;
}

@end