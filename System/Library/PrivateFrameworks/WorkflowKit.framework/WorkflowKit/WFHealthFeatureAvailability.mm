@interface WFHealthFeatureAvailability
- (WFHealthFeatureAvailability)initWithSleepFeature:(unint64_t)feature;
- (WFHealthFeatureObserver)observer;
- (unint64_t)sleepOnboardingStatus;
- (void)dealloc;
- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion;
- (void)getSleepOnboardingStatus:(id)status;
- (void)setSleepOnboardingStatus:(unint64_t)status;
@end

@implementation WFHealthFeatureAvailability

- (unint64_t)sleepOnboardingStatus
{
  systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
  onboardingCompletedKey = [(WFHealthFeatureAvailability *)self onboardingCompletedKey];
  v5 = [systemShortcutsUserDefaults integerForKey:onboardingCompletedKey];

  return v5;
}

- (WFHealthFeatureObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

- (void)dealloc
{
  store = [(WFHealthFeatureAvailability *)self store];
  [store unregisterObserver:self];

  v4.receiver = self;
  v4.super_class = WFHealthFeatureAvailability;
  [(WFHealthFeatureAvailability *)&v4 dealloc];
}

- (void)featureAvailabilityProvidingDidUpdateOnboardingCompletion:(id)completion
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __89__WFHealthFeatureAvailability_featureAvailabilityProvidingDidUpdateOnboardingCompletion___block_invoke;
  v3[3] = &unk_1E8379DE8;
  v3[4] = self;
  [(WFHealthFeatureAvailability *)self getSleepOnboardingStatus:v3];
}

void __89__WFHealthFeatureAvailability_featureAvailabilityProvidingDidUpdateOnboardingCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = getWFGeneralLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[WFHealthFeatureAvailability featureAvailabilityProvidingDidUpdateOnboardingCompletion:]_block_invoke";
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Got notified that sleep onboarding status has changed, but encountered error in retrieving new value: %{public}@", &v8, 0x16u);
    }
  }

  else
  {
    [*(a1 + 32) setSleepOnboardingStatus:a2];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)getSleepOnboardingStatus:(id)status
{
  statusCopy = status;
  store = [(WFHealthFeatureAvailability *)self store];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__WFHealthFeatureAvailability_getSleepOnboardingStatus___block_invoke;
  v7[3] = &unk_1E83758B0;
  v8 = statusCopy;
  v6 = statusCopy;
  [store isCurrentOnboardingVersionCompletedWithCompletion:v7];
}

void __56__WFHealthFeatureAvailability_getSleepOnboardingStatus___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 BOOLValue];
  (*(*(a1 + 32) + 16))();
}

- (void)setSleepOnboardingStatus:(unint64_t)status
{
  if ([(WFHealthFeatureAvailability *)self sleepOnboardingStatus]!= status)
  {
    systemShortcutsUserDefaults = [MEMORY[0x1E695E000] systemShortcutsUserDefaults];
    onboardingCompletedKey = [(WFHealthFeatureAvailability *)self onboardingCompletedKey];
    [systemShortcutsUserDefaults setInteger:status forKey:onboardingCompletedKey];

    observer = [(WFHealthFeatureAvailability *)self observer];
    [observer healthFeatureAvailability:self sleepOnboardingStatusDidChange:status];
  }
}

- (WFHealthFeatureAvailability)initWithSleepFeature:(unint64_t)feature
{
  v25.receiver = self;
  v25.super_class = WFHealthFeatureAvailability;
  v4 = [(WFHealthFeatureAvailability *)&v25 init];
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v6 = dispatch_queue_create("com.apple.shortcuts.WFHealthFeatureAvailability", v5);
  queue = v4->_queue;
  v4->_queue = v6;

  if (feature)
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v8 = getHKFeatureIdentifierSleepActionsSymbolLoc_ptr;
    v34 = getHKFeatureIdentifierSleepActionsSymbolLoc_ptr;
    if (!getHKFeatureIdentifierSleepActionsSymbolLoc_ptr)
    {
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __getHKFeatureIdentifierSleepActionsSymbolLoc_block_invoke;
      v29 = &unk_1E837FAC0;
      v30 = &v31;
      v9 = HealthKitLibrary();
      v10 = dlsym(v9, "HKFeatureIdentifierSleepActions");
      *(v30[1] + 24) = v10;
      getHKFeatureIdentifierSleepActionsSymbolLoc_ptr = *(v30[1] + 24);
      v8 = v32[3];
    }

    _Block_object_dispose(&v31, 8);
    if (v8)
    {
      v11 = @"WFShortcutsHealthSleepOnboardingCompleted";
LABEL_11:
      v14 = *v8;
      objc_storeStrong(&v4->_onboardingCompletedKey, v11);
      v15 = v4->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __52__WFHealthFeatureAvailability_initWithSleepFeature___block_invoke;
      block[3] = &unk_1E837F870;
      v16 = v4;
      v23 = v16;
      v24 = v14;
      v17 = v14;
      dispatch_async(v15, block);
      v18 = v16;

LABEL_12:
      return v4;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"HKFeatureIdentifier getHKFeatureIdentifierSleepActions(void)"];
    [currentHandler handleFailureInFunction:v21 file:@"WFHealthFeatureAvailability.m" lineNumber:30 description:{@"%s", dlerror()}];
  }

  else
  {
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v8 = getHKFeatureIdentifierSleepCoachingSymbolLoc_ptr;
    v34 = getHKFeatureIdentifierSleepCoachingSymbolLoc_ptr;
    if (!getHKFeatureIdentifierSleepCoachingSymbolLoc_ptr)
    {
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = __getHKFeatureIdentifierSleepCoachingSymbolLoc_block_invoke;
      v29 = &unk_1E837FAC0;
      v30 = &v31;
      v12 = HealthKitLibrary();
      v13 = dlsym(v12, "HKFeatureIdentifierSleepCoaching");
      *(v30[1] + 24) = v13;
      getHKFeatureIdentifierSleepCoachingSymbolLoc_ptr = *(v30[1] + 24);
      v8 = v32[3];
    }

    _Block_object_dispose(&v31, 8);
    if (v8)
    {
      v11 = @"WFShortcutsHealthSleepCoachingCompleted";
      goto LABEL_11;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"HKFeatureIdentifier getHKFeatureIdentifierSleepCoaching(void)"];
    [currentHandler handleFailureInFunction:v21 file:@"WFHealthFeatureAvailability.m" lineNumber:29 description:{@"%s", dlerror()}];
  }

  __break(1u);
  return result;
}

void __52__WFHealthFeatureAvailability_initWithSleepFeature___block_invoke(uint64_t a1)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v2 = getHKSPSleepStoreClass_softClass;
  v25 = getHKSPSleepStoreClass_softClass;
  if (!getHKSPSleepStoreClass_softClass)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __getHKSPSleepStoreClass_block_invoke;
    v20 = &unk_1E837FAC0;
    v21 = &v22;
    __getHKSPSleepStoreClass_block_invoke(&v17);
    v2 = v23[3];
  }

  v3 = v2;
  _Block_object_dispose(&v22, 8);
  v4 = [v2 alloc];
  v5 = *(a1 + 32);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 initWithIdentifier:v7];

  v22 = 0;
  v23 = &v22;
  v24 = 0x2050000000;
  v9 = getHKSPFeatureAvailabilityStoreClass_softClass;
  v25 = getHKSPFeatureAvailabilityStoreClass_softClass;
  if (!getHKSPFeatureAvailabilityStoreClass_softClass)
  {
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __getHKSPFeatureAvailabilityStoreClass_block_invoke;
    v20 = &unk_1E837FAC0;
    v21 = &v22;
    __getHKSPFeatureAvailabilityStoreClass_block_invoke(&v17);
    v9 = v23[3];
  }

  v10 = v9;
  _Block_object_dispose(&v22, 8);
  v11 = [[v9 alloc] initWithFeatureIdentifier:*(a1 + 40) sleepStore:v8];
  v12 = *(a1 + 32);
  v13 = *(v12 + 16);
  *(v12 + 16) = v11;

  [*(*(a1 + 32) + 16) registerObserver:*(a1 + 32) queue:*(*(a1 + 32) + 24)];
  v14 = *(a1 + 32);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__WFHealthFeatureAvailability_initWithSleepFeature___block_invoke_2;
  v15[3] = &unk_1E8379DE8;
  v16 = v14;
  [v16 getSleepOnboardingStatus:v15];
}

void __52__WFHealthFeatureAvailability_initWithSleepFeature___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = getWFGeneralLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "[WFHealthFeatureAvailability initWithSleepFeature:]_block_invoke_2";
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_ERROR, "%s Encountered error in retrieving sleep onboarding status from HealthKit: %{public}@", &v8, 0x16u);
    }
  }

  else
  {
    [*(a1 + 32) setSleepOnboardingStatus:a2];
  }

  v7 = *MEMORY[0x1E69E9840];
}

@end