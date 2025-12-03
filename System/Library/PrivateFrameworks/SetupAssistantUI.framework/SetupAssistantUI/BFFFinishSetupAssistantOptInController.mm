@interface BFFFinishSetupAssistantOptInController
+ (id)finishSetupAssistantOptInController;
- (BFFFinishSetupAssistantOptInController)init;
- (id)viewControllerWithCompletion:(id)completion;
- (void)continueSetup;
- (void)performExtendedInitializationWithCompletion:(id)completion;
- (void)showLearnMore;
- (void)skipSetup;
@end

@implementation BFFFinishSetupAssistantOptInController

+ (id)finishSetupAssistantOptInController
{
  v2 = objc_alloc_init(BFFFinishSetupAssistantOptInController);

  return v2;
}

- (BFFFinishSetupAssistantOptInController)init
{
  v3.receiver = self;
  v3.super_class = BFFFinishSetupAssistantOptInController;
  return [(BFFFinishSetupAssistantOptInController *)&v3 init];
}

- (void)performExtendedInitializationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__BFFFinishSetupAssistantOptInController_performExtendedInitializationWithCompletion___block_invoke;
  v7[3] = &unk_279BB4B88;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(v5, v7);
}

uint64_t __86__BFFFinishSetupAssistantOptInController_performExtendedInitializationWithCompletion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 24) = BYAssistantScreenShouldRunForPHSUpgrade();
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (id)viewControllerWithCompletion:(id)completion
{
  completionCopy = completion;
  [(BFFFinishSetupAssistantOptInController *)self setCompletion:completionCopy];
  if (!self->_enrollmentController)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2050000000;
    v5 = getVTUIEnrollTrainingViewControllerClass_softClass;
    v16 = getVTUIEnrollTrainingViewControllerClass_softClass;
    if (!getVTUIEnrollTrainingViewControllerClass_softClass)
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __getVTUIEnrollTrainingViewControllerClass_block_invoke;
      v12[3] = &unk_279BB49D0;
      v12[4] = &v13;
      __getVTUIEnrollTrainingViewControllerClass_block_invoke(v12);
      v5 = v14[3];
    }

    v6 = v5;
    _Block_object_dispose(&v13, 8);
    v7 = [[v5 alloc] init:1];
    enrollmentController = self->_enrollmentController;
    self->_enrollmentController = v7;

    [(VTUIEnrollTrainingViewController *)self->_enrollmentController setDelegate:self];
  }

  objc_storeStrong(&self->_selfReference, self);
  v9 = self->_enrollmentController;
  v10 = v9;

  return v9;
}

- (void)continueSetup
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_265AC5000, v3, OS_LOG_TYPE_DEFAULT, "Siri setup success", v15, 2u);
  }

  flowSkipController = [(BFFFinishSetupAssistantOptInController *)self flowSkipController];
  v5 = *MEMORY[0x277D4D9C0];
  [flowSkipController didCompleteFlow:*MEMORY[0x277D4D9C0]];

  v6 = *MEMORY[0x277CBED28];
  v7 = *MEMORY[0x277D4D9E0];
  v8 = *MEMORY[0x277CBF040];
  v9 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(*MEMORY[0x277D4D998], *MEMORY[0x277CBED28], *MEMORY[0x277D4D9E0], *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  if (self->_willOfferVoiceTrigger)
  {
    CFPreferencesSetValue(*MEMORY[0x277D4D990], v6, v7, v8, v9);
  }

  paneFeatureAnalyticsManager = [(BFFFinishSetupAssistantOptInController *)self paneFeatureAnalyticsManager];
  [paneFeatureAnalyticsManager recordActionWithValue:MEMORY[0x277CBEC38] forFeature:7];

  completion = self->_completion;
  if (completion)
  {
    v16[0] = v5;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    completion[2](completion, 0, v12);

    v13 = self->_completion;
    self->_completion = 0;
  }

  selfReference = self->_selfReference;
  self->_selfReference = 0;
}

- (void)skipSetup
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_265AC5000, v3, OS_LOG_TYPE_DEFAULT, "User chose to skip Siri setup", v15, 2u);
  }

  flowSkipController = [(BFFFinishSetupAssistantOptInController *)self flowSkipController];
  v5 = *MEMORY[0x277D4D9C0];
  [flowSkipController didCompleteFlow:*MEMORY[0x277D4D9C0]];

  v6 = *MEMORY[0x277CBED28];
  v7 = *MEMORY[0x277D4D9E0];
  v8 = *MEMORY[0x277CBF040];
  v9 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(*MEMORY[0x277D4D998], *MEMORY[0x277CBED28], *MEMORY[0x277D4D9E0], *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  CFPreferencesSetValue(*MEMORY[0x277D4D990], v6, v7, v8, v9);
  paneFeatureAnalyticsManager = [(BFFFinishSetupAssistantOptInController *)self paneFeatureAnalyticsManager];
  [paneFeatureAnalyticsManager recordActionWithValue:MEMORY[0x277CBEC28] forFeature:7];

  completion = self->_completion;
  if (completion)
  {
    v16[0] = v5;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    completion[2](completion, 1, v12);

    v13 = self->_completion;
    self->_completion = 0;
  }

  selfReference = self->_selfReference;
  self->_selfReference = 0;
}

- (void)showLearnMore
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2050000000;
  v3 = getOBPrivacyPresenterClass_softClass;
  v10 = getOBPrivacyPresenterClass_softClass;
  if (!getOBPrivacyPresenterClass_softClass)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __getOBPrivacyPresenterClass_block_invoke;
    v6[3] = &unk_279BB49D0;
    v6[4] = &v7;
    __getOBPrivacyPresenterClass_block_invoke(v6);
    v3 = v8[3];
  }

  v4 = v3;
  _Block_object_dispose(&v7, 8);
  v5 = [v3 presenterForPrivacySplashWithIdentifier:*MEMORY[0x277D4D9D8]];
  [v5 setPresentingViewController:self->_enrollmentController];
  [v5 present];
}

@end