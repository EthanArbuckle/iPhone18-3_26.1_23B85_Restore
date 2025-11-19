@interface STBlockingViewController
+ (id)closeApplicationHandler;
+ (id)newTranslucentBlockingViewController;
+ (id)openParentAppHandler;
+ (void)openAppWithBundleIdentifier:(id)a3;
- (BOOL)isApplicationShieldedWithBundleIdentifier:(id)a3;
- (BOOL)isCategoryShieldedWithIdentifier:(id)a3;
- (BOOL)isShieldedThroughManagedSettings;
- (BOOL)isWebDomainShieldedWithWebURL:(id)a3;
- (BOOL)shouldAllowOneMoreMinute;
- (BOOL)shouldRequestMoreTime;
- (CNContactStore)contactStore;
- (id)_askForMoreTimeMenuProvider;
- (id)_askForTimeResource;
- (id)_enterScreenTimePasscodeAction;
- (id)_iCloudContainer;
- (id)_ignoreForTodayAction;
- (id)_ignoreLimitMenuProvider;
- (id)_newContact;
- (id)_oneMoreMinuteAction;
- (id)_primaryButtonConfiguration;
- (id)_remindMeIn15MinutesAction;
- (id)_secondaryButtonConfiguration;
- (id)_sendRequestAction;
- (int64_t)_dmfPolicyFromScreenTimeShieldPolicy:(id)a3;
- (int64_t)_managedSettingsShieldPolicyForBundleIdentifier:(id)a3 category:(id)a4;
- (int64_t)_managedSettingsShieldPolicyForCategoryIdentifier:(id)a3;
- (int64_t)_managedSettingsShieldPolicyForWebURL:(id)a3 category:(id)a4;
- (void)_addContact;
- (void)_addContact:(id)a3;
- (void)_approveOneMoreMinuteWithPreemptiveHide;
- (void)_customButtonPressed:(id)a3;
- (void)_didFinishEnteringScreenTimePasscode:(id)a3;
- (void)_enterScreenTimePasscode:(id)a3;
- (void)_handleCustomButtonResponse:(id)a3 forAction:(int64_t)a4 error:(id)a5;
- (void)_hideCustomButtons;
- (void)_ignoreLimitForAdditionalTime:(double)a3;
- (void)_ignoreLimitWithPreemptiveHideForAdditionalTime:(double)a3;
- (void)_ok:(id)a3;
- (void)_oneMoreMinute:(id)a3;
- (void)_sendRequest:(id)a3;
- (void)_showAskForMoreTimeOptions:(id)a3;
- (void)_showDefaultHourglassView;
- (void)_showIgnoreLimitOptions:(id)a3;
- (void)_showPasscodeApprovedOptions;
- (void)_unlockDeviceIfNeededWithCompletionHandler:(id)a3;
- (void)_updateAddContactButton;
- (void)_updateAppearanceForAskPending;
- (void)_updateAppearanceForBlockedContent:(id)a3 messageFormatKey:(id)a4 messageKey:(id)a5;
- (void)_updateAppearanceWithCustomConfiguration:(id)a3 defaultMessageFormatKey:(id)a4 defaultMessageArgument:(id)a5;
- (void)_updateButtons;
- (void)_updateWithNaturalBlockingUIStyling;
- (void)dealloc;
- (void)fetchAppResponsibleForShieldWithCompletionHandler:(id)a3;
- (void)handleScreenTimeSettingsGroupChanges;
- (void)hideWithAnimation:(BOOL)a3 completionHandler:(id)a4;
- (void)registerForManagedSettingsEffectiveChanges;
- (void)setChangePolicyButtonHidden:(BOOL)a3;
- (void)setOkButtonHandler:(id)a3;
- (void)showWithAnimation:(BOOL)a3 completionHandler:(id)a4;
- (void)unregisterFromManagedSettingsEffectiveChanges;
- (void)updateAppearanceUsingBlockedContactHandles:(id)a3 contactNameByHandle:(id)a4 forBundleIdentifier:(id)a5 isApplicationCurrentlyLimited:(BOOL)a6 contactStore:(id)a7;
- (void)updateAppearanceUsingPolicy:(int64_t)a3 forBundleIdentifier:(id)a4;
- (void)updateAppearanceUsingPolicy:(int64_t)a3 forCategoryIdentifier:(id)a4;
- (void)updateAppearanceUsingPolicy:(int64_t)a3 forWebpageURL:(id)a4;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation STBlockingViewController

+ (id)newTranslucentBlockingViewController
{
  v2 = MEMORY[0x277D75AC8];
  v3 = +[STScreenTimeUIBundle bundle];
  v4 = [v2 storyboardWithName:@"BlockingUI-Translucent-iOS" bundle:v3];

  v5 = [v4 instantiateInitialViewController];
  v6 = objc_opt_new();
  v7 = v5[140];
  v5[140] = v6;

  v8 = objc_opt_new();
  v9 = v5[144];
  v5[144] = v8;

  v10 = objc_opt_new();
  v11 = v5[148];
  v5[148] = v10;

  return v5;
}

- (void)dealloc
{
  [(SBSLockScreenService *)self->_lockScreenService invalidate];
  v3.receiver = self;
  v3.super_class = STBlockingViewController;
  [(STBlockingViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v8.receiver = self;
  v8.super_class = STBlockingViewController;
  [(STBlockingViewController *)&v8 viewDidLoad];
  v3 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769A8]];
  v4 = [v3 fontDescriptorWithSymbolicTraits:2];

  v5 = [MEMORY[0x277D74300] fontWithDescriptor:v4 size:0.0];
  v6 = [(STBlockingViewController *)self titleLabel];
  [v6 setFont:v5];

  [(STBlockingViewController *)self _updateWithNaturalBlockingUIStyling];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_21DD93000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "STUI:: STBlockingViewController.viewDidLoad", v7, 2u);
  }
}

- (void)_updateWithNaturalBlockingUIStyling
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = [(STBlockingViewController *)self titleLabel];
  [_TtC12ScreenTimeUI24NaturalBlockingUIStyling applyPrimaryLabelStyle:v3];

  v4 = [(STBlockingViewController *)self messageLabel];
  [_TtC12ScreenTimeUI24NaturalBlockingUIStyling applySecondaryLabelStyle:v4];

  v5 = [(STBlockingViewController *)self okButton];
  [_TtC12ScreenTimeUI24NaturalBlockingUIStyling applyPrimaryButtonStyle:v5];

  v6 = [(STBlockingViewController *)self ignoreLimitButton];
  [_TtC12ScreenTimeUI24NaturalBlockingUIStyling applySecondaryButtonStyle:v6];

  v7 = [(STBlockingViewController *)self askForMoreTimeButton];
  [_TtC12ScreenTimeUI24NaturalBlockingUIStyling applySecondaryButtonStyle:v7];

  v8 = [(STBlockingViewController *)self enterScreenTimePasscodeButton];
  [_TtC12ScreenTimeUI24NaturalBlockingUIStyling applySecondaryButtonStyle:v8];

  v9 = [(STBlockingViewController *)self addContactButton];
  [_TtC12ScreenTimeUI24NaturalBlockingUIStyling applySecondaryButtonStyle:v9];

  v10 = [(STBlockingViewController *)self buttonStackView];
  [v10 setSpacing:10.0];
  [_TtC12ScreenTimeUI24NaturalBlockingUIStyling applyButtonGroupStyle:v10];
  v11 = [MEMORY[0x277D75418] currentDevice];
  v12 = [v11 userInterfaceIdiom];

  v13 = MEMORY[0x277CCAAD0];
  if (v12 == 1)
  {
    v14 = [v10 widthAnchor];
    v15 = [v14 constraintGreaterThanOrEqualToConstant:326.0];
    v26[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    [v13 activateConstraints:v16];
  }

  else
  {
    v14 = [v10 leadingAnchor];
    v15 = [(STBlockingViewController *)self view];
    v16 = [v15 leadingAnchor];
    v17 = [v14 constraintEqualToSystemSpacingAfterAnchor:v16 multiplier:4.0];
    v18 = [(STBlockingViewController *)self view];
    v19 = [v18 trailingAnchor];
    v20 = [v10 trailingAnchor];
    v21 = [v19 constraintEqualToSystemSpacingAfterAnchor:v20 multiplier:4.0];
    v25[1] = v21;
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
    v23 = v13;
    v24 = v22;
    [v23 activateConstraints:v22];
  }
}

- (void)viewWillAppear:(BOOL)a3
{
  v9.receiver = self;
  v9.super_class = STBlockingViewController;
  [(STBlockingViewController *)&v9 viewWillAppear:a3];
  [(STBlockingViewController *)self registerForManagedSettingsEffectiveChanges];
  v4 = [(STBlockingViewController *)self okButton];
  [v4 setAccessibilityIdentifier:@"ok-button"];

  v5 = [(STBlockingViewController *)self ignoreLimitButton];
  [v5 setAccessibilityIdentifier:@"ignore-limit-button"];

  v6 = [(STBlockingViewController *)self askForMoreTimeButton];
  [v6 setAccessibilityIdentifier:@"ask-for-more-time-button"];

  v7 = [(STBlockingViewController *)self enterScreenTimePasscodeButton];
  [v7 setAccessibilityIdentifier:@"enter-passcode-button"];

  v8 = [(STBlockingViewController *)self addContactButton];
  [v8 setAccessibilityIdentifier:@"add-contact-button"];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  [(STBlockingViewController *)self unregisterFromManagedSettingsEffectiveChanges];
  v5.receiver = self;
  v5.super_class = STBlockingViewController;
  [(STBlockingViewController *)&v5 viewDidDisappear:v3];
}

- (CNContactStore)contactStore
{
  contactStore = self->_contactStore;
  if (!contactStore)
  {
    v4 = objc_opt_new();
    v5 = self->_contactStore;
    self->_contactStore = v4;

    contactStore = self->_contactStore;
  }

  return contactStore;
}

- (BOOL)shouldAllowOneMoreMinute
{
  v3 = [(STBlockingViewController *)self categoryIdentifier];
  v4 = [(STBlockingViewController *)self bundleIdentifier];
  v5 = [(STBlockingViewController *)self webDomain];
  v6 = v5;
  if (v3)
  {
    v7 = [(STBlockingViewController *)self managementState];
    v17 = 0;
    v8 = [v7 shouldAllowOneMoreMinuteForCategoryIdentifier:v3 error:&v17];
    v9 = v17;

    if (!v8)
    {
      v10 = +[STBlockingUILog log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [STBlockingViewController shouldAllowOneMoreMinute];
      }

LABEL_16:

      v8 = 0;
    }
  }

  else if (v4)
  {
    v11 = [(STBlockingViewController *)self managementState];
    v16 = 0;
    v8 = [v11 shouldAllowOneMoreMinuteForBundleIdentifier:v4 error:&v16];
    v9 = v16;

    if (!v8)
    {
      v10 = +[STBlockingUILog log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [STBlockingViewController shouldAllowOneMoreMinute];
      }

      goto LABEL_16;
    }
  }

  else
  {
    if (!v5)
    {
      v10 = +[STBlockingUILog log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [STBlockingViewController shouldAllowOneMoreMinute];
      }

      v9 = 0;
      goto LABEL_16;
    }

    v12 = [(STBlockingViewController *)self managementState];
    v15 = 0;
    v8 = [v12 shouldAllowOneMoreMinuteForWebDomain:v6 error:&v15];
    v9 = v15;

    if (!v8)
    {
      v10 = +[STBlockingUILog log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [STBlockingViewController shouldAllowOneMoreMinute];
      }

      goto LABEL_16;
    }
  }

  v13 = [v8 BOOLValue];

  return v13;
}

- (BOOL)shouldRequestMoreTime
{
  v2 = [(STBlockingViewController *)self managementState];
  v3 = [v2 shouldRequestMoreTime];

  return v3;
}

- (void)registerForManagedSettingsEffectiveChanges
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl())
  {
    if (!self->_effectiveSettingsSubscription)
    {
      v3 = MEMORY[0x277D26568];
      v4 = MEMORY[0x277CBEB98];
      v11[0] = *MEMORY[0x277D26518];
      v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
      v6 = [v4 setWithArray:v5];
      v7 = [v3 publisherForGroups:v6];

      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __70__STBlockingViewController_registerForManagedSettingsEffectiveChanges__block_invoke;
      v10[3] = &unk_278338900;
      v10[4] = self;
      v8 = [v7 sinkWithReceiveInput:v10];
      effectiveSettingsSubscription = self->_effectiveSettingsSubscription;
      self->_effectiveSettingsSubscription = v8;
    }
  }
}

uint64_t __70__STBlockingViewController_registerForManagedSettingsEffectiveChanges__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 containsObject:*MEMORY[0x277D26518]];
  if (result)
  {
    result = [*(a1 + 32) isShieldedThroughManagedSettings];
    if (result)
    {
      v4 = *(a1 + 32);

      return [v4 handleScreenTimeSettingsGroupChanges];
    }
  }

  return result;
}

- (void)unregisterFromManagedSettingsEffectiveChanges
{
  if (_os_feature_enabled_impl())
  {
    effectiveSettingsSubscription = self->_effectiveSettingsSubscription;
    if (effectiveSettingsSubscription)
    {
      [(MOCancellable *)effectiveSettingsSubscription cancel];
      v4 = self->_effectiveSettingsSubscription;
      self->_effectiveSettingsSubscription = 0;
    }
  }
}

- (void)handleScreenTimeSettingsGroupChanges
{
  if (_os_feature_enabled_impl())
  {
    v3 = [(STBlockingViewController *)self bundleIdentifier];

    if (v3)
    {
      v4 = [(STBlockingViewController *)self bundleIdentifier];
      v5 = [v4 copy];

      [(STBlockingViewController *)self setBundleIdentifier:0];
      v6 = [MEMORY[0x277CCABD8] mainQueue];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __64__STBlockingViewController_handleScreenTimeSettingsGroupChanges__block_invoke;
      v23[3] = &unk_278338928;
      v23[4] = self;
      v24 = v5;
      v7 = v5;
      [v6 addOperationWithBlock:v23];

      v8 = v24;
LABEL_4:

LABEL_7:
      return;
    }

    v9 = [(STBlockingViewController *)self webDomain];

    if (v9)
    {
      v7 = objc_opt_new();
      v10 = [(STBlockingViewController *)self webDomain];
      v11 = [v10 copy];
      [v7 setHost:v11];

      v12 = [v7 URL];
      [(STBlockingViewController *)self setWebDomain:0];
      v13 = [MEMORY[0x277CCABD8] mainQueue];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __64__STBlockingViewController_handleScreenTimeSettingsGroupChanges__block_invoke_2;
      v21[3] = &unk_278338928;
      v21[4] = self;
      v22 = v12;
      v14 = v12;
      [v13 addOperationWithBlock:v21];

      goto LABEL_7;
    }

    v15 = [(STBlockingViewController *)self categoryIdentifier];

    if (v15)
    {
      v16 = [(STBlockingViewController *)self categoryIdentifier];
      v17 = [v16 copy];

      [(STBlockingViewController *)self setCategoryIdentifier:0];
      v18 = [MEMORY[0x277CCABD8] mainQueue];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __64__STBlockingViewController_handleScreenTimeSettingsGroupChanges__block_invoke_3;
      v19[3] = &unk_278338928;
      v19[4] = self;
      v20 = v17;
      v7 = v17;
      [v18 addOperationWithBlock:v19];

      v8 = v20;
      goto LABEL_4;
    }
  }
}

- (BOOL)isShieldedThroughManagedSettings
{
  v3 = [(STBlockingViewController *)self bundleIdentifier];

  if (v3)
  {
    v4 = [(STBlockingViewController *)self bundleIdentifier];
    v5 = [(STBlockingViewController *)self isApplicationShieldedWithBundleIdentifier:v4];
  }

  else
  {
    v7 = [(STBlockingViewController *)self webDomain];

    if (v7)
    {
      v4 = objc_opt_new();
      v8 = [(STBlockingViewController *)self webDomain];
      v9 = [v8 copy];
      [v4 setHost:v9];

      v10 = [v4 URL];
      v6 = [(STBlockingViewController *)self isWebDomainShieldedWithWebURL:v10];

      goto LABEL_6;
    }

    v12 = [(STBlockingViewController *)self categoryIdentifier];

    if (!v12)
    {
      return 0;
    }

    v4 = [(STBlockingViewController *)self categoryIdentifier];
    v5 = [(STBlockingViewController *)self isCategoryShieldedWithIdentifier:v4];
  }

  v6 = v5;
LABEL_6:

  return v6;
}

- (BOOL)isCategoryShieldedWithIdentifier:(id)a3
{
  v4 = MEMORY[0x277D26560];
  v5 = a3;
  v6 = [[v4 alloc] initWithIdentifier:v5];

  v7 = [(STBlockingViewController *)self effectiveSettingsStore];
  v8 = [v7 shield];
  v9 = [v8 applicationCategories];

  v10 = [v9 policy];
  if (v10 == 2 || v10 == 1 && ([v9 specificCategories], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "containsObject:", v6), v11, (v12 & 1) != 0))
  {
    v13 = 1;
  }

  else
  {
    v14 = [(STBlockingViewController *)self effectiveSettingsStore];
    v15 = [v14 shield];
    v16 = [v15 webDomainCategories];

    v17 = [v16 policy];
    v13 = 1;
    if (v17 != 2)
    {
      if (v17 != 1 || ([v16 specificCategories], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "containsObject:", v6), v18, (v19 & 1) == 0))
      {
        v13 = 0;
      }
    }
  }

  return v13;
}

- (BOOL)isApplicationShieldedWithBundleIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D26550]) initWithBundleIdentifier:v4];
  v6 = [(STBlockingViewController *)self effectiveSettingsStore];
  v7 = [v6 shield];
  v8 = [v7 applications];

  if (([v8 containsObject:v5] & 1) == 0)
  {
    v10 = v4;
    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = __Block_byref_object_copy_;
    v60 = __Block_byref_object_dispose_;
    v61 = 0;
    v11 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    v12 = [MEMORY[0x277CF9650] sharedCategories];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __categoryForBundleIdentifier_block_invoke;
    v51[3] = &unk_278338C98;
    v54 = &v56;
    v13 = v10;
    v52 = v13;
    v14 = v11;
    v53 = v14;
    v55 = 1;
    [v12 categoryForBundleID:v13 completionHandler:v51];

    [v14 lockWhenCondition:1];
    [v14 unlock];
    v15 = v57[5];

    _Block_object_dispose(&v56, 8);
    if (!v15)
    {
      v9 = 0;
LABEL_31:

      goto LABEL_32;
    }

    v16 = [v15 canonicalBundleIdentifier];
    v17 = [objc_alloc(MEMORY[0x277D26550]) initWithBundleIdentifier:v16];
    if (v17 && ([v8 containsObject:v17] & 1) != 0)
    {
      v9 = 1;
LABEL_30:

      goto LABEL_31;
    }

    v18 = objc_alloc(MEMORY[0x277D26560]);
    v19 = [v15 identifier];
    v50 = [v18 initWithIdentifier:v19];

    v20 = [(STBlockingViewController *)self effectiveSettingsStore];
    v21 = [v20 shield];
    v22 = [v21 applicationCategories];

    v23 = [v22 policy];
    if (v23 == 2 || v23 == 1 && ([v22 specificCategories], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "containsObject:", v50), v24, v25))
    {
      v26 = [v22 excludedContent];
      if ([v26 containsObject:v5])
      {
      }

      else
      {
        v27 = [v22 excludedContent];
        v48 = [v27 containsObject:v17];

        if ((v48 & 1) == 0)
        {
          v9 = 1;
LABEL_29:

          goto LABEL_30;
        }
      }
    }

    v28 = [v15 primaryWebDomain];
    v29 = [objc_alloc(MEMORY[0x277D265A0]) initWithDomain:v28];
    if (!v29)
    {
      v9 = 0;
LABEL_28:

      goto LABEL_29;
    }

    v45 = v16;
    v46 = v28;
    v49 = v22;
    v30 = [(STBlockingViewController *)self effectiveSettingsStore];
    v31 = [v30 shield];
    v32 = [v31 webDomains];

    v47 = v32;
    if ([v32 containsObject:v29])
    {
      v9 = 1;
      v16 = v45;
      v28 = v46;
      v22 = v49;
LABEL_27:

      goto LABEL_28;
    }

    v33 = [(STBlockingViewController *)self effectiveSettingsStore];
    v34 = [v33 shield];
    v35 = [v34 webDomainCategories];

    v36 = [v35 policy];
    v44 = v35;
    if (v36 == 2)
    {
      v41 = [v35 excludedContent];
      v42 = [v41 containsObject:v29];

      v22 = v49;
      v28 = v46;
      if ((v42 & 1) == 0)
      {
LABEL_22:
        v9 = 1;
LABEL_26:
        v16 = v45;

        goto LABEL_27;
      }
    }

    else
    {
      v22 = v49;
      v28 = v46;
      if (v36 == 1)
      {
        v37 = [v44 specificCategories];
        v38 = [v37 containsObject:v50];

        if (v38)
        {
          v39 = [v44 excludedContent];
          v40 = [v39 containsObject:v29];

          if ((v40 & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }
    }

    v9 = 0;
    goto LABEL_26;
  }

  v9 = 1;
LABEL_32:

  return v9;
}

- (BOOL)isWebDomainShieldedWithWebURL:(id)a3
{
  v4 = a3;
  v5 = [v4 host];
  v6 = [objc_alloc(MEMORY[0x277D265A0]) initWithDomain:v5];
  v7 = [(STBlockingViewController *)self effectiveSettingsStore];
  v8 = [v7 shield];
  v9 = [v8 webDomains];

  if (([v9 containsObject:v6] & 1) == 0)
  {
    v11 = v4;
    v64 = 0;
    v65 = &v64;
    v66 = 0x3032000000;
    v67 = __Block_byref_object_copy_;
    v68 = __Block_byref_object_dispose_;
    v69 = 0;
    v12 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    v13 = [MEMORY[0x277CF9650] sharedCategories];
    v59[0] = MEMORY[0x277D85DD0];
    v59[1] = 3221225472;
    v59[2] = __categoryForWebpageURL_block_invoke;
    v59[3] = &unk_278338C98;
    v62 = &v64;
    v14 = v11;
    v60 = v14;
    v15 = v12;
    v61 = v15;
    v63 = 1;
    [v13 categoryForDomainURL:v14 completionHandler:v59];

    [v15 lockWhenCondition:1];
    [v15 unlock];
    v16 = v65[5];

    _Block_object_dispose(&v64, 8);
    if (!v16)
    {
      v10 = 0;
LABEL_35:

      goto LABEL_36;
    }

    v17 = [v16 primaryWebDomain];
    v18 = [objc_alloc(MEMORY[0x277D265A0]) initWithDomain:v17];
    if (v18 && ([v9 containsObject:v18] & 1) != 0)
    {
      v10 = 1;
LABEL_34:

      goto LABEL_35;
    }

    v55 = v17;
    v56 = v18;
    v19 = objc_alloc(MEMORY[0x277D26560]);
    v20 = [v16 identifier];
    v21 = [v19 initWithIdentifier:v20];

    v22 = [(STBlockingViewController *)self effectiveSettingsStore];
    v23 = [v22 shield];
    v24 = [v23 webDomainCategories];

    v25 = v24;
    v26 = [v24 policy];
    v58 = v24;
    if (v26 == 2)
    {
      v30 = [v24 excludedContent];
      v27 = v21;
      if (([v30 containsObject:v6] & 1) == 0)
      {
        v31 = [v25 excludedContent];
        v32 = v31;
        v18 = v56;
LABEL_17:
        v53 = [v31 containsObject:v18];

        if ((v53 & 1) == 0)
        {
          v10 = 1;
          v17 = v55;
LABEL_33:

          goto LABEL_34;
        }

LABEL_18:
        v57 = [v16 canonicalBundleIdentifier];
        v33 = [objc_alloc(MEMORY[0x277D26550]) initWithBundleIdentifier:v57];
        if (!v33)
        {
          v10 = 0;
          v17 = v55;
LABEL_32:

          goto LABEL_33;
        }

        v51 = v5;
        v54 = v27;
        v34 = [(STBlockingViewController *)self effectiveSettingsStore];
        v35 = [v34 shield];
        [v35 applications];
        v37 = v36 = v33;

        v52 = v37;
        v38 = v37;
        v33 = v36;
        if ([v38 containsObject:v36])
        {
          v10 = 1;
          v27 = v54;
          v17 = v55;
          v5 = v51;
LABEL_31:

          goto LABEL_32;
        }

        v39 = [(STBlockingViewController *)self effectiveSettingsStore];
        v40 = [v39 shield];
        v41 = [v40 applicationCategories];

        v42 = [v41 policy];
        v50 = v41;
        if (v42 == 2)
        {
          v47 = [v41 excludedContent];
          v48 = [v47 containsObject:v33];

          v27 = v54;
          v5 = v51;
          if ((v48 & 1) == 0)
          {
LABEL_26:
            v10 = 1;
LABEL_30:
            v17 = v55;

            goto LABEL_31;
          }
        }

        else
        {
          v27 = v54;
          v5 = v51;
          if (v42 == 1)
          {
            v43 = [v50 specificCategories];
            v44 = [v43 containsObject:v54];

            if (v44)
            {
              v45 = [v50 excludedContent];
              v46 = [v45 containsObject:v33];

              if ((v46 & 1) == 0)
              {
                goto LABEL_26;
              }
            }
          }
        }

        v10 = 0;
        goto LABEL_30;
      }

      v18 = v56;
    }

    else
    {
      v27 = v21;
      v18 = v56;
      if (v26 != 1)
      {
        goto LABEL_18;
      }

      v28 = [v58 specificCategories];
      v29 = [v28 containsObject:v27];

      if (!v29)
      {
        goto LABEL_18;
      }

      v30 = [v58 excludedContent];
      if (([v30 containsObject:v6] & 1) == 0)
      {
        v31 = [v58 excludedContent];
        v32 = v31;
        goto LABEL_17;
      }
    }

    goto LABEL_18;
  }

  v10 = 1;
LABEL_36:

  return v10;
}

- (void)setOkButtonHandler:(id)a3
{
  v4 = a3;
  [(STBlockingViewController *)self loadViewIfNeeded];
  v5 = [v4 copy];

  okButtonHandler = self->_okButtonHandler;
  self->_okButtonHandler = v5;

  v7 = [(STBlockingViewController *)self okButton];
  [v7 setHidden:v4 == 0];
}

+ (id)closeApplicationHandler
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__STBlockingViewController_closeApplicationHandler__block_invoke;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = a1;
  v2 = _Block_copy(aBlock);

  return v2;
}

uint64_t __51__STBlockingViewController_closeApplicationHandler__block_invoke()
{
  v0 = objc_opt_class();

  return [v0 openAppWithBundleIdentifier:@"com.apple.springboard"];
}

+ (id)openParentAppHandler
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__STBlockingViewController_openParentAppHandler__block_invoke;
  aBlock[3] = &__block_descriptor_40_e18_v16__0__NSString_8l;
  aBlock[4] = a1;
  v2 = _Block_copy(aBlock);

  return v2;
}

void __48__STBlockingViewController_openParentAppHandler__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [objc_opt_class() openAppWithBundleIdentifier:v2];
}

+ (void)openAppWithBundleIdentifier:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__STBlockingViewController_openAppWithBundleIdentifier___block_invoke;
  v6[3] = &unk_278338990;
  v7 = v3;
  v5 = v3;
  [v4 openApplication:v5 withOptions:0 completion:v6];
}

void __56__STBlockingViewController_openAppWithBundleIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = +[STBlockingUILog log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __56__STBlockingViewController_openAppWithBundleIdentifier___block_invoke_cold_1();
    }
  }
}

- (void)fetchAppResponsibleForShieldWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STBlockingViewController *)self bundleIdentifier];
  v6 = [(STBlockingViewController *)self categoryIdentifier];
  v7 = [(STBlockingViewController *)self webDomain];
  v8 = v7;
  if (v5)
  {
    v9 = [MEMORY[0x277CF9650] sharedCategories];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __78__STBlockingViewController_fetchAppResponsibleForShieldWithCompletionHandler___block_invoke;
    v20[3] = &unk_2783389E0;
    v21 = v5;
    v22 = v4;
    [v9 categoryForBundleID:v21 completionHandler:v20];

    v10 = v21;
LABEL_7:

    goto LABEL_8;
  }

  if (v6)
  {
    v11 = MEMORY[0x277D26570];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __78__STBlockingViewController_fetchAppResponsibleForShieldWithCompletionHandler___block_invoke_82;
    v17[3] = &unk_2783389B8;
    v18 = v6;
    v19 = v4;
    [v11 appResponsibleForShieldingCategoryIdentifier:v18 completionHandler:v17];

    v10 = v18;
    goto LABEL_7;
  }

  if (v7)
  {
    v12 = [MEMORY[0x277CF9650] sharedCategories];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __78__STBlockingViewController_fetchAppResponsibleForShieldWithCompletionHandler___block_invoke_83;
    v14[3] = &unk_2783389E0;
    v15 = v8;
    v16 = v4;
    [v12 categoryForDomainName:v15 completionHandler:v14];

    v10 = v15;
    goto LABEL_7;
  }

  v13 = +[STBlockingUILog log];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    [STBlockingViewController fetchAppResponsibleForShieldWithCompletionHandler:];
  }

  (*(v4 + 2))(v4, 0);
LABEL_8:
}

void __78__STBlockingViewController_fetchAppResponsibleForShieldWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x277D26570];
    v7 = *(a1 + 32);
    v8 = [a2 identifier];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __78__STBlockingViewController_fetchAppResponsibleForShieldWithCompletionHandler___block_invoke_2;
    v10[3] = &unk_2783389B8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    [v6 appResponsibleForShieldingBundleIdentifier:v7 categoryIdentifier:v8 completionHandler:v10];
  }

  else
  {
    v9 = +[STBlockingUILog log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __78__STBlockingViewController_fetchAppResponsibleForShieldWithCompletionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __78__STBlockingViewController_fetchAppResponsibleForShieldWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = +[STBlockingUILog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __78__STBlockingViewController_fetchAppResponsibleForShieldWithCompletionHandler___block_invoke_2_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __78__STBlockingViewController_fetchAppResponsibleForShieldWithCompletionHandler___block_invoke_82(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = +[STBlockingUILog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __78__STBlockingViewController_fetchAppResponsibleForShieldWithCompletionHandler___block_invoke_2_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __78__STBlockingViewController_fetchAppResponsibleForShieldWithCompletionHandler___block_invoke_83(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x277D26570];
    v7 = *(a1 + 32);
    v8 = [a2 identifier];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __78__STBlockingViewController_fetchAppResponsibleForShieldWithCompletionHandler___block_invoke_2_84;
    v10[3] = &unk_2783389B8;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    [v6 appResponsibleForShieldingWebDomain:v7 categoryIdentifier:v8 completionHandler:v10];
  }

  else
  {
    v9 = +[STBlockingUILog log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __78__STBlockingViewController_fetchAppResponsibleForShieldWithCompletionHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __78__STBlockingViewController_fetchAppResponsibleForShieldWithCompletionHandler___block_invoke_2_84(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v5)
  {
    v7 = +[STBlockingUILog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __78__STBlockingViewController_fetchAppResponsibleForShieldWithCompletionHandler___block_invoke_2_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_ok:(id)a3
{
  v3 = [(STBlockingViewController *)self okButtonHandler];
  v3[2]();
}

- (void)setChangePolicyButtonHidden:(BOOL)a3
{
  if (self->_changePolicyButtonHidden != a3)
  {
    self->_changePolicyButtonHidden = a3;
    [(STBlockingViewController *)self _updateButtons];
  }
}

- (void)_updateButtons
{
  v3 = [(STBlockingViewController *)self okButtonHandler];
  v4 = [(STBlockingViewController *)self okButton];
  [v4 setHidden:v3 == 0];

  [(STBlockingViewController *)self _updateAddContactButton];
  v5 = [(STBlockingViewController *)self policy];
  if (v5 <= 2)
  {
    switch(v5)
    {
      case 0:
        v16 = [(STBlockingViewController *)self ignoreLimitButton];
        [v16 setHidden:1];

        v17 = [(STBlockingViewController *)self askForMoreTimeButton];
        [v17 setHidden:1];

        v18 = [(STBlockingViewController *)self enterScreenTimePasscodeButton];
        [v18 setHidden:1];

LABEL_13:
        [(STBlockingViewController *)self _hideCustomButtons];
        goto LABEL_14;
      case 1:
        v19 = [(STBlockingViewController *)self askForMoreTimeButton];
        [v19 setHidden:1];

        v20 = [(STBlockingViewController *)self enterScreenTimePasscodeButton];
        [v20 setHidden:1];

        v8 = [(STBlockingViewController *)self isChangePolicyButtonHidden];
        v9 = [(STBlockingViewController *)self ignoreLimitButton];
        break;
      case 2:
        v6 = [(STBlockingViewController *)self ignoreLimitButton];
        [v6 setHidden:1];

        v7 = [(STBlockingViewController *)self enterScreenTimePasscodeButton];
        [v7 setHidden:1];

        v8 = [(STBlockingViewController *)self isChangePolicyButtonHidden];
        v9 = [(STBlockingViewController *)self askForMoreTimeButton];
        break;
      default:
        goto LABEL_14;
    }

LABEL_12:
    v21 = v9;
    [v9 setHidden:v8];

    goto LABEL_13;
  }

  if ((v5 - 3) < 2)
  {
    v10 = [(STBlockingViewController *)self ignoreLimitButton];
    [v10 setHidden:1];

    v11 = [(STBlockingViewController *)self askForMoreTimeButton];
    [v11 setHidden:1];

    v8 = [(STBlockingViewController *)self isChangePolicyButtonHidden];
    v9 = [(STBlockingViewController *)self enterScreenTimePasscodeButton];
    goto LABEL_12;
  }

  if (v5 == 5)
  {
    v12 = [(STBlockingViewController *)self okButton];
    [v12 setHidden:1];

    v13 = [(STBlockingViewController *)self ignoreLimitButton];
    [v13 setHidden:1];

    v14 = [(STBlockingViewController *)self askForMoreTimeButton];
    [v14 setHidden:1];

    v15 = [(STBlockingViewController *)self enterScreenTimePasscodeButton];
    [v15 setHidden:1];
  }

LABEL_14:
  v22 = [(STBlockingViewController *)self okButton];
  if ([v22 isHidden])
  {
    *&v23 = 250.0;
  }

  else
  {
    *&v23 = 750.0;
  }

  [v22 setContentCompressionResistancePriority:0 forAxis:v23];

  v24 = [(STBlockingViewController *)self ignoreLimitButton];
  if ([v24 isHidden])
  {
    *&v25 = 250.0;
  }

  else
  {
    *&v25 = 750.0;
  }

  [v24 setContentCompressionResistancePriority:0 forAxis:v25];

  v26 = [(STBlockingViewController *)self askForMoreTimeButton];
  if ([v26 isHidden])
  {
    *&v27 = 250.0;
  }

  else
  {
    *&v27 = 750.0;
  }

  [v26 setContentCompressionResistancePriority:0 forAxis:v27];

  v28 = [(STBlockingViewController *)self enterScreenTimePasscodeButton];
  if ([v28 isHidden])
  {
    *&v29 = 250.0;
  }

  else
  {
    *&v29 = 750.0;
  }

  [v28 setContentCompressionResistancePriority:0 forAxis:v29];

  v30 = [(STBlockingViewController *)self addContactButton];
  if ([v30 isHidden])
  {
    *&v31 = 250.0;
  }

  else
  {
    *&v31 = 750.0;
  }

  [v30 setContentCompressionResistancePriority:0 forAxis:v31];

  v32 = [(STBlockingViewController *)self customPrimaryButton];
  if ([v32 isHidden])
  {
    *&v33 = 250.0;
  }

  else
  {
    *&v33 = 750.0;
  }

  [v32 setContentCompressionResistancePriority:0 forAxis:v33];

  v34 = [(STBlockingViewController *)self customSecondaryButton];
  if ([v34 isHidden])
  {
    *&v35 = 250.0;
  }

  else
  {
    *&v35 = 750.0;
  }

  [v34 setContentCompressionResistancePriority:0 forAxis:v35];

  if ([(STBlockingViewController *)self isShowingPolicyOptions])
  {
    [(STBlockingViewController *)self dismissViewControllerAnimated:1 completion:0];
  }

  [(STBlockingViewController *)self setShowingPolicyOptions:0];
}

- (void)_updateAddContactButton
{
  v13 = [(STBlockingViewController *)self formattedContactHandle];
  v3 = [(STBlockingViewController *)self formattedContactHandle];
  if (v3)
  {
    v4 = [(STBlockingViewController *)self isChangePolicyButtonHidden];
  }

  else
  {
    v4 = 1;
  }

  v5 = [(STBlockingViewController *)self addContactButton];
  v6 = v5;
  if (v4)
  {
    [v5 setHidden:1];
  }

  else
  {
    v7 = +[STScreenTimeUIBundle bundle];
    v8 = [v7 localizedStringForKey:@"AddContactButtonFormat" value:&stru_282F1E250 table:0];

    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    v10 = [MEMORY[0x277CBEAF8] currentLocale];
    v11 = [v9 initWithFormat:v8 locale:v10, v13];

    v12 = [MEMORY[0x277D75230] plainButtonConfiguration];
    [v12 setTitle:v11];
    [v6 setConfiguration:v12];
    [v6 setHidden:0];
  }
}

- (void)_hideCustomButtons
{
  v3 = [(STBlockingViewController *)self customPrimaryButton];
  [v3 setHidden:1];

  v4 = [(STBlockingViewController *)self customSecondaryButton];
  [v4 setHidden:1];
}

- (void)updateAppearanceUsingPolicy:(int64_t)a3 forCategoryIdentifier:(id)a4
{
  v7 = a4;
  if (a3)
  {
    v8 = _os_feature_enabled_impl();
    if (a3 == 5 && v8)
    {
      a3 = [(STBlockingViewController *)self _managedSettingsShieldPolicyForCategoryIdentifier:v7];
    }
  }

  else
  {
    [STBlockingViewController updateAppearanceUsingPolicy:forCategoryIdentifier:];
  }

  if (-[STBlockingViewController policy](self, "policy") != a3 || (-[STBlockingViewController categoryIdentifier](self, "categoryIdentifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 isEqualToString:v7], v9, !v10))
  {
    [(STBlockingViewController *)self setPolicy:a3];
    [(STBlockingViewController *)self setFormattedContactHandle:0];
    [(STBlockingViewController *)self setContactStore:0];
    [(STBlockingViewController *)self setCategoryIdentifier:v7];
    [(STBlockingViewController *)self setBundleIdentifier:0];
    [(STBlockingViewController *)self setWebDomain:0];
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        [(STBlockingViewController *)self _updateAppearanceForAskPending];
        goto LABEL_25;
      }

      if (a3 != 4)
      {
        if (a3 != 5)
        {
          goto LABEL_25;
        }

        v13 = [MEMORY[0x277CF9658] localizedNameForIdentifier:v7];
        v17 = 0;
        v14 = [MEMORY[0x277D26570] configurationForCategoryIdentifier:v7 categoryName:v13 error:&v17];
        v12 = v17;
        if (!v14)
        {
          v15 = +[STBlockingUILog log];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            [STBlockingViewController updateAppearanceUsingPolicy:forCategoryIdentifier:];
          }
        }

        [(STBlockingViewController *)self _updateAppearanceWithCustomConfiguration:v14 defaultMessageFormatKey:@"RestrictedCategoryMessageFormat" defaultMessageArgument:v13];

        goto LABEL_22;
      }
    }

    else if ((a3 - 1) >= 2)
    {
      if (a3)
      {
        goto LABEL_25;
      }

      v12 = [MEMORY[0x277CCA890] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"STBlockingViewController.m" lineNumber:1061 description:@"Do not pass DMFPolicyOK to an -updateAppearance method."];
LABEL_22:

      goto LABEL_25;
    }

    v16 = [MEMORY[0x277CF9658] localizedNameForIdentifier:v7];
    [(STBlockingViewController *)self _updateAppearanceForBlockedContent:v16 messageFormatKey:@"ReachedCategoryLimitMessageFormat" messageKey:@"ReachedCategoryLimitMessage"];

    goto LABEL_25;
  }

  v11 = +[STBlockingUILog log];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [STBlockingViewController updateAppearanceUsingPolicy:forCategoryIdentifier:];
  }

LABEL_25:
}

- (void)updateAppearanceUsingPolicy:(int64_t)a3 forBundleIdentifier:(id)a4
{
  v7 = a4;
  if (!a3)
  {
    [STBlockingViewController updateAppearanceUsingPolicy:forBundleIdentifier:];
  }

  v8 = v7;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy_;
  v51 = __Block_byref_object_dispose_;
  v52 = 0;
  v9 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
  v10 = [MEMORY[0x277CF9650] sharedCategories];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __categoryForBundleIdentifier_block_invoke;
  v42[3] = &unk_278338C98;
  v45 = &v47;
  v11 = v8;
  v43 = v11;
  v12 = v9;
  v44 = v12;
  v46 = 1;
  [v10 categoryForBundleID:v11 completionHandler:v42];

  [v12 lockWhenCondition:1];
  [v12 unlock];
  v13 = v48[5];

  _Block_object_dispose(&v47, 8);
  v14 = _os_feature_enabled_impl();
  if (a3 == 5 && v14)
  {
    a3 = [(STBlockingViewController *)self _managedSettingsShieldPolicyForBundleIdentifier:v11 category:v13];
  }

  if ([(STBlockingViewController *)self policy]== a3)
  {
    v15 = [(STBlockingViewController *)self bundleIdentifier];
    v16 = [v15 isEqualToString:v11];

    if (v16)
    {
      v17 = +[STBlockingUILog log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [STBlockingViewController updateAppearanceUsingPolicy:forBundleIdentifier:];
      }

      goto LABEL_36;
    }
  }

  [(STBlockingViewController *)self setPolicy:a3];
  [(STBlockingViewController *)self setFormattedContactHandle:0];
  [(STBlockingViewController *)self setContactStore:0];
  [(STBlockingViewController *)self setCategoryIdentifier:0];
  [(STBlockingViewController *)self setBundleIdentifier:v11];
  [(STBlockingViewController *)self setWebDomain:0];
  if (a3 <= 2)
  {
    if ((a3 - 1) >= 2)
    {
      if (!a3)
      {
        v18 = [MEMORY[0x277CCA890] currentHandler];
        [v18 handleFailureInMethod:a2 object:self file:@"STBlockingViewController.m" lineNumber:1135 description:@"Do not pass DMFPolicyOK to an -updateAppearance method."];
      }

      goto LABEL_36;
    }

    goto LABEL_24;
  }

  switch(a3)
  {
    case 3:
      [(STBlockingViewController *)self _updateAppearanceForAskPending];
      break;
    case 4:
LABEL_24:
      v25 = v11;
      v26 = objc_alloc(MEMORY[0x277CC1E70]);
      v42[0] = 0;
      v27 = [v26 initWithBundleIdentifier:v25 allowPlaceholder:1 error:v42];
      v28 = v42[0];
      v29 = [v27 localizedName];

      v30 = v29;
      if (!v29)
      {
        v31 = +[STBlockingUILog log];
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          [STBlockingViewController updateAppearanceUsingPolicy:forBundleIdentifier:];
        }

        v30 = v25;
      }

      v32 = v30;

      [(STBlockingViewController *)self _updateAppearanceForBlockedContent:v32 messageFormatKey:@"ReachedApplicationLimitMessageFormat" messageKey:@"ReachedApplicationLimitMessage"];
      break;
    case 5:
      if (v13)
      {
        v19 = MEMORY[0x277D26570];
        v20 = [v13 identifier];
        v21 = [v13 localizedName];
        v41 = 0;
        v22 = [v19 configurationForBundleIdentifier:v11 categoryIdentifier:v20 categoryName:v21 error:&v41];
        v23 = v41;

        if (!v22)
        {
          v24 = +[STBlockingUILog log];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            [STBlockingViewController updateAppearanceUsingPolicy:forCategoryIdentifier:];
          }
        }
      }

      else
      {
        v22 = 0;
      }

      v33 = v11;
      v34 = objc_alloc(MEMORY[0x277CC1E70]);
      v42[0] = 0;
      v35 = [v34 initWithBundleIdentifier:v33 allowPlaceholder:1 error:v42];
      v36 = v42[0];
      v37 = [v35 localizedName];

      v38 = v37;
      if (!v37)
      {
        v39 = +[STBlockingUILog log];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [STBlockingViewController updateAppearanceUsingPolicy:forBundleIdentifier:];
        }

        v38 = v33;
      }

      v40 = v38;

      [(STBlockingViewController *)self _updateAppearanceWithCustomConfiguration:v22 defaultMessageFormatKey:@"RestrictedApplicationMessageFormat" defaultMessageArgument:v40];
      break;
  }

LABEL_36:
}

- (void)updateAppearanceUsingPolicy:(int64_t)a3 forWebpageURL:(id)a4
{
  v7 = a4;
  if (v7)
  {
    if (!a3)
    {
      [STBlockingViewController updateAppearanceUsingPolicy:forWebpageURL:];
    }

    v8 = [v7 host];
    v9 = v7;
    v51 = 0;
    v52 = &v51;
    v53 = 0x3032000000;
    v54 = __Block_byref_object_copy_;
    v55 = __Block_byref_object_dispose_;
    v56 = 0;
    v10 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    v11 = [MEMORY[0x277CF9650] sharedCategories];
    v43 = MEMORY[0x277D85DD0];
    v44 = 3221225472;
    v45 = __categoryForWebpageURL_block_invoke;
    v46 = &unk_278338C98;
    v49 = &v51;
    v12 = v9;
    v47 = v12;
    v13 = v10;
    v48 = v13;
    v50 = 1;
    [v11 categoryForDomainURL:v12 completionHandler:&v43];

    [v13 lockWhenCondition:1];
    [v13 unlock];
    v14 = v52[5];

    _Block_object_dispose(&v51, 8);
    v15 = _os_feature_enabled_impl();
    if (a3 == 5 && v15)
    {
      a3 = [(STBlockingViewController *)self _managedSettingsShieldPolicyForWebURL:v12 category:v14];
    }

    v16 = [(STBlockingViewController *)self webDomain];
    if ([(STBlockingViewController *)self policy]== a3 && (v16 == v8 || [v16 isEqualToString:v8]))
    {
      v17 = +[STBlockingUILog log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [STBlockingViewController updateAppearanceUsingPolicy:forWebpageURL:];
      }

      goto LABEL_41;
    }

    [(STBlockingViewController *)self setPolicy:a3];
    [(STBlockingViewController *)self setFormattedContactHandle:0];
    [(STBlockingViewController *)self setContactStore:0];
    [(STBlockingViewController *)self setCategoryIdentifier:0];
    [(STBlockingViewController *)self setBundleIdentifier:0];
    [(STBlockingViewController *)self setWebDomain:v8];
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        [(STBlockingViewController *)self _updateAppearanceForAskPending];
LABEL_41:

        goto LABEL_42;
      }

      if (a3 != 4)
      {
        if (a3 == 5)
        {
          v19 = 0;
          if ([v8 length]&& v14)
          {
            v20 = MEMORY[0x277D26570];
            v21 = [v14 identifier];
            v22 = [v14 localizedName];
            v42 = 0;
            v19 = [v20 configurationForWebDomain:v8 categoryIdentifier:v21 categoryName:v22 error:&v42];
            v23 = v42;

            if (!v19)
            {
              v24 = +[STBlockingUILog log];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                [STBlockingViewController updateAppearanceUsingPolicy:forCategoryIdentifier:];
              }
            }
          }

          v25 = [v8 _lp_userVisibleHost];
          [(STBlockingViewController *)self _updateAppearanceWithCustomConfiguration:v19 defaultMessageFormatKey:@"RestrictedWebDomainMessageFormat" defaultMessageArgument:v25];
        }

        goto LABEL_41;
      }
    }

    else if ((a3 - 1) >= 2)
    {
      if (!a3)
      {
        v18 = [MEMORY[0x277CCA890] currentHandler];
        [v18 handleFailureInMethod:a2 object:self file:@"STBlockingViewController.m" lineNumber:1247 description:@"Do not pass DMFPolicyOK to an -updateAppearance method."];
      }

      goto LABEL_41;
    }

    v26 = v12;
    v27 = [v26 host];
    if ([v27 length])
    {
      v28 = v27;
      v40 = v26;
      v29 = v26;
      v51 = 0;
      v52 = &v51;
      v53 = 0x3032000000;
      v54 = __Block_byref_object_copy_;
      v55 = __Block_byref_object_dispose_;
      v56 = 0;
      v30 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
      v31 = [MEMORY[0x277CF9650] sharedCategories];
      v43 = MEMORY[0x277D85DD0];
      v44 = 3221225472;
      v45 = __categoryForWebpageURL_block_invoke;
      v46 = &unk_278338C98;
      v49 = &v51;
      v32 = v29;
      v47 = v32;
      v33 = v30;
      v48 = v33;
      v50 = 1;
      [v31 categoryForDomainURL:v32 completionHandler:&v43];

      [v33 lockWhenCondition:1];
      [v33 unlock];
      v34 = v52[5];

      _Block_object_dispose(&v51, 8);
      v35 = [v34 canonicalBundleIdentifier];
      if (!v35 || (v36 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v35 allowPlaceholder:1 error:0], objc_msgSend(v36, "localizedName"), v37 = objc_claimAutoreleasedReturnValue(), v36, !v37))
      {
        v38 = [v34 primaryWebDomain];
        v37 = [v38 _lp_userVisibleHost];
      }

      v27 = v28;
      if (![v37 length])
      {
        v39 = [v28 _lp_userVisibleHost];

        v37 = v39;
      }

      v26 = v41;
    }

    else
    {
      v37 = 0;
    }

    [(STBlockingViewController *)self _updateAppearanceForBlockedContent:v37 messageFormatKey:@"ReachedWebsiteLimitMessageFormat" messageKey:@"ReachedWebsiteLimitMessage"];
    goto LABEL_41;
  }

  v8 = +[STBlockingUILog log];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [STBlockingViewController updateAppearanceUsingPolicy:forWebpageURL:];
  }

LABEL_42:
}

- (int64_t)_managedSettingsShieldPolicyForCategoryIdentifier:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277D26560]) initWithIdentifier:v4];
  v6 = [(STBlockingViewController *)self effectiveSettingsStore];
  v7 = [v6 screenTime];
  v8 = [v7 categoryShieldPolicies];

  v9 = [v8 objectForKeyedSubscript:v5];
  v10 = v9;
  if (v9)
  {
    v11 = v9 == *MEMORY[0x277D26508];
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = +[STBlockingUILog log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [STBlockingViewController _managedSettingsShieldPolicyForCategoryIdentifier:];
    }

    v13 = [MEMORY[0x277D26560] all];
    v14 = [v8 objectForKeyedSubscript:v13];

    v10 = v14;
  }

  v15 = +[STBlockingUILog log];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [STBlockingViewController _managedSettingsShieldPolicyForCategoryIdentifier:];
  }

  v16 = [(STBlockingViewController *)self _dmfPolicyFromScreenTimeShieldPolicy:v10];
  return v16;
}

- (int64_t)_managedSettingsShieldPolicyForBundleIdentifier:(id)a3 category:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277D26550]) initWithBundleIdentifier:v6];
  v9 = [(STBlockingViewController *)self effectiveSettingsStore];
  v10 = [v9 screenTime];
  v11 = [v10 applicationShieldPolicies];

  v12 = [v11 objectForKeyedSubscript:v8];
  v13 = v12;
  v14 = *MEMORY[0x277D26508];
  if (v12)
  {
    v15 = v12 == v14;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  v17 = 0x28177B000uLL;
  if (v7 && (v16 & 1) == 0)
  {
    v44 = [v7 canonicalBundleIdentifier];
    if (v44)
    {
      v18 = +[STBlockingUILog log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        [STBlockingViewController _managedSettingsShieldPolicyForBundleIdentifier:category:];
      }

      v19 = [objc_alloc(MEMORY[0x277D26550]) initWithBundleIdentifier:v44];
      v20 = [v11 objectForKeyedSubscript:v19];

      if (v20 && v20 != v14)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v20 = v13;
    }

    v43 = [v7 primaryWebDomain];
    if (v43)
    {
      v21 = +[STBlockingUILog log];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        [STBlockingViewController _managedSettingsShieldPolicyForBundleIdentifier:category:];
      }

      v22 = v6;

      v23 = [(STBlockingViewController *)self effectiveSettingsStore];
      v24 = [v23 screenTime];
      v25 = [v24 webDomainShieldPolicies];

      v26 = [objc_alloc(MEMORY[0x277D265A0]) initWithDomain:v43];
      v27 = [v25 objectForKeyedSubscript:v26];

      if (v27)
      {
        v6 = v22;
        v17 = 0x28177B000;
        if (v27 != v14)
        {
LABEL_32:

          v20 = v27;
LABEL_33:

          v13 = v20;
          goto LABEL_34;
        }
      }

      else
      {
        v6 = v22;
        v17 = 0x28177B000uLL;
      }
    }

    else
    {
      v27 = v20;
    }

    v28 = [v7 identifier];
    v29 = [v17 + 3048 log];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
    {
      [STBlockingViewController _managedSettingsShieldPolicyForBundleIdentifier:category:];
    }

    v41 = v6;

    v42 = v28;
    v30 = [objc_alloc(MEMORY[0x277D26560]) initWithIdentifier:v28];
    v31 = [(STBlockingViewController *)self effectiveSettingsStore];
    v32 = [v31 screenTime];
    v33 = [v32 categoryShieldPolicies];

    v34 = [v33 objectForKeyedSubscript:v30];

    if (!v34 || v34 == v14)
    {
      v35 = +[STBlockingUILog log];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        [STBlockingViewController _managedSettingsShieldPolicyForCategoryIdentifier:];
      }

      v36 = [MEMORY[0x277D26560] all];
      v37 = [v33 objectForKeyedSubscript:v36];

      v34 = v37;
    }

    v17 = 0x28177B000uLL;

    v27 = v34;
    v6 = v41;
    goto LABEL_32;
  }

LABEL_34:

  v38 = [v17 + 3048 log];
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
  {
    [STBlockingViewController _managedSettingsShieldPolicyForBundleIdentifier:category:];
  }

  v39 = [(STBlockingViewController *)self _dmfPolicyFromScreenTimeShieldPolicy:v13];
  return v39;
}

- (int64_t)_managedSettingsShieldPolicyForWebURL:(id)a3 category:(id)a4
{
  v6 = a4;
  v7 = [a3 host];
  v8 = [objc_alloc(MEMORY[0x277D265A0]) initWithDomain:v7];
  v9 = [(STBlockingViewController *)self effectiveSettingsStore];
  v10 = [v9 screenTime];
  v11 = [v10 webDomainShieldPolicies];

  v12 = [v11 objectForKeyedSubscript:v8];
  v13 = v12;
  v14 = *MEMORY[0x277D26508];
  if (v12)
  {
    v15 = v12 == v14;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (v6 && (v16 & 1) == 0)
  {
    v43 = [v6 primaryWebDomain];
    if (v43)
    {
      v17 = +[STBlockingUILog log];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [STBlockingViewController _managedSettingsShieldPolicyForWebURL:category:];
      }

      v18 = [objc_alloc(MEMORY[0x277D265A0]) initWithDomain:v43];
      v19 = [v11 objectForKeyedSubscript:v18];

      v13 = v19;
    }

    if (!v13 || v13 == v14)
    {
      v42 = [v6 canonicalBundleIdentifier];
      if (v42)
      {
        v20 = +[STBlockingUILog log];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          [STBlockingViewController _managedSettingsShieldPolicyForWebURL:category:];
        }

        v21 = [(STBlockingViewController *)self effectiveSettingsStore];
        v22 = [v21 screenTime];
        v23 = [v22 applicationShieldPolicies];

        v24 = [objc_alloc(MEMORY[0x277D26550]) initWithBundleIdentifier:v42];
        v25 = [v23 objectForKeyedSubscript:v24];

        v13 = v25;
      }

      if (!v13 || v13 == v14)
      {
        v26 = [v6 identifier];
        v27 = +[STBlockingUILog log];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          [STBlockingViewController _managedSettingsShieldPolicyForWebURL:category:];
        }

        v40 = v7;

        v41 = v26;
        v28 = [objc_alloc(MEMORY[0x277D26560]) initWithIdentifier:v26];
        v29 = [(STBlockingViewController *)self effectiveSettingsStore];
        v30 = [v29 screenTime];
        v31 = [v30 categoryShieldPolicies];

        v32 = [v31 objectForKeyedSubscript:v28];

        if (!v32 || v32 == v14)
        {
          v34 = +[STBlockingUILog log];
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            [STBlockingViewController _managedSettingsShieldPolicyForCategoryIdentifier:];
          }

          v35 = [MEMORY[0x277D26560] all];
          v33 = v31;
          v36 = [v31 objectForKeyedSubscript:v35];

          v32 = v36;
        }

        else
        {
          v33 = v31;
        }

        v7 = v40;

        v13 = v32;
      }
    }
  }

  v37 = +[STBlockingUILog log];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    [STBlockingViewController _managedSettingsShieldPolicyForWebURL:category:];
  }

  v38 = [(STBlockingViewController *)self _dmfPolicyFromScreenTimeShieldPolicy:v13];
  return v38;
}

- (int64_t)_dmfPolicyFromScreenTimeShieldPolicy:(id)a3
{
  v3 = a3;
  if (v3)
  {
    if ([*MEMORY[0x277D26510] isEqualToString:v3])
    {
      v4 = 1;
    }

    else if ([*MEMORY[0x277D264F0] isEqualToString:v3])
    {
      v4 = 2;
    }

    else if ([*MEMORY[0x277D264F8] isEqualToString:v3])
    {
      v4 = 3;
    }

    else if ([*MEMORY[0x277D26500] isEqualToString:v3])
    {
      v4 = 4;
    }

    else
    {
      v4 = 5;
    }
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (void)_updateAppearanceForAskPending
{
  [(STBlockingViewController *)self loadViewIfNeeded];
  v3 = [(STBlockingViewController *)self communicationLimitView];
  [v3 setHidden:1];

  v4 = [(STBlockingViewController *)self hourglassView];
  [v4 setHidden:0];

  v9 = +[STScreenTimeUIBundle bundle];
  v5 = [v9 localizedStringForKey:@"RequestSentTitle" value:&stru_282F1E250 table:0];
  v6 = [(STBlockingViewController *)self titleLabel];
  [v6 setText:v5];

  v7 = [v9 localizedStringForKey:@"RequestSentMessage" value:&stru_282F1E250 table:0];
  v8 = [(STBlockingViewController *)self messageLabel];
  [v8 setText:v7];

  [(STBlockingViewController *)self _updateButtons];
}

- (void)updateAppearanceUsingBlockedContactHandles:(id)a3 contactNameByHandle:(id)a4 forBundleIdentifier:(id)a5 isApplicationCurrentlyLimited:(BOOL)a6 contactStore:(id)a7
{
  v7 = a6;
  v11 = a7;
  v12 = a4;
  v13 = a3;
  v14 = [v13 count];
  if (!v14)
  {
    [STBlockingViewController updateAppearanceUsingBlockedContactHandles:contactNameByHandle:forBundleIdentifier:isApplicationCurrentlyLimited:contactStore:];
  }

  [(STBlockingViewController *)self setPolicy:0];
  [(STBlockingViewController *)self setCategoryIdentifier:0];
  [(STBlockingViewController *)self setBundleIdentifier:0];
  [(STBlockingViewController *)self setWebDomain:0];
  [(STBlockingViewController *)self setContactStore:v11];

  [(STBlockingViewController *)self loadViewIfNeeded];
  v33 = +[STScreenTimeUIBundle bundle];
  v15 = [v13 objectAtIndexedSubscript:0];

  v16 = [v12 objectForKeyedSubscript:v15];

  if (v16)
  {
    if (v7)
    {
      v17 = @"BlockedContactNameDowntimeMessageFormat";
    }

    else
    {
      v17 = @"BlockedContactNameMessageFormat";
    }

    v18 = [v33 localizedStringForKey:v17 value:&stru_282F1E250 table:0];
    v19 = v16;

    v15 = v19;
  }

  else if ([v15 destinationIdIsPhoneNumber])
  {
    if (v7)
    {
      v20 = @"BlockedPhoneNumberDowntimeMessageFormat";
    }

    else
    {
      v20 = @"BlockedPhoneNumberMessageFormat";
    }

    v18 = [v33 localizedStringForKey:v20 value:&stru_282F1E250 table:0];
    v21 = TUNetworkCountryCode();
    v22 = v21;
    if (!v21)
    {
      v22 = TUHomeCountryCode();
    }

    v23 = TUFormattedPhoneNumber();

    if (!v21)
    {
    }

    v15 = v23;
  }

  else
  {
    if ([v15 destinationIdIsEmailAddress])
    {
      v24 = @"BlockedEmailAddressMessageFormat";
      v25 = @"BlockedEmailAddressDowntimeMessageFormat";
    }

    else
    {
      v24 = @"BlockedContactNameMessageFormat";
      v25 = @"BlockedContactNameDowntimeMessageFormat";
    }

    if (v7)
    {
      v26 = v25;
    }

    else
    {
      v26 = v24;
    }

    v18 = [v33 localizedStringForKey:v26 value:&stru_282F1E250 table:0];
  }

  v27 = [(STBlockingViewController *)self hourglassView];
  [v27 setHidden:v7 ^ 1];

  v28 = [(STBlockingViewController *)self communicationLimitView];
  [v28 setHidden:v7];

  v29 = [v33 localizedStringForKey:@"RestrictedContactTitle" value:&stru_282F1E250 table:0];
  v30 = [(STBlockingViewController *)self titleLabel];
  [v30 setText:v29];

  v31 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v18 validFormatSpecifiers:@"%lu %@" error:0, v14 - 1, v15];
  v32 = [(STBlockingViewController *)self messageLabel];
  [v32 setText:v31];

  [(STBlockingViewController *)self setFormattedContactHandle:v15];
  [(STBlockingViewController *)self _updateButtons];
}

- (void)_updateAppearanceForBlockedContent:(id)a3 messageFormatKey:(id)a4 messageKey:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  [(STBlockingViewController *)self loadViewIfNeeded];
  v10 = +[STScreenTimeUIBundle bundle];
  if ([v23 length])
  {
    v11 = [v10 localizedStringForKey:v8 value:&stru_282F1E250 table:0];
    v12 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v11 validFormatSpecifiers:@"%@" error:0, v23];
  }

  else
  {
    v12 = [v10 localizedStringForKey:v9 value:&stru_282F1E250 table:0];
  }

  v13 = [(STBlockingViewController *)self communicationLimitView];
  [v13 setHidden:1];

  v14 = [(STBlockingViewController *)self hourglassView];
  [v14 setHidden:0];

  v15 = [(STBlockingViewController *)self titleLabel];
  v16 = [v10 localizedStringForKey:@"TimeLimitTitle" value:&stru_282F1E250 table:0];
  [v15 setText:v16];

  v17 = [(STBlockingViewController *)self messageLabel];
  [v17 setText:v12];
  v18 = [(STBlockingViewController *)self customImageView];
  [v18 setHidden:1];

  v19 = [MEMORY[0x277D75210] effectWithStyle:9];
  v20 = [(STBlockingViewController *)self view];
  [v20 setEffect:v19];

  v21 = [MEMORY[0x277D75348] labelColor];
  [v15 setTextColor:v21];
  if (_os_feature_enabled_impl())
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v22 = ;
  [v17 setTextColor:v22];

  [(STBlockingViewController *)self _updateButtons];
}

- (void)showWithAnimation:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = v6;
  if (v4)
  {
    v8 = MEMORY[0x277D75D18];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__STBlockingViewController_showWithAnimation_completionHandler___block_invoke;
    v12[3] = &unk_278338A08;
    v12[4] = self;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__STBlockingViewController_showWithAnimation_completionHandler___block_invoke_2;
    v10[3] = &unk_278338A30;
    v11 = v6;
    [v8 animateWithDuration:v12 animations:v10 completion:0.2];
  }

  else
  {
    v9 = [(STBlockingViewController *)self view];
    [v9 setAlpha:1.0];

    if (v7)
    {
      v7[2](v7);
    }
  }
}

void __64__STBlockingViewController_showWithAnimation_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:1.0];
}

uint64_t __64__STBlockingViewController_showWithAnimation_completionHandler___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)hideWithAnimation:(BOOL)a3 completionHandler:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(STBlockingViewController *)self view];
  v8 = v7;
  if (v4)
  {
    [v7 setUserInteractionEnabled:0];
    v9 = MEMORY[0x277D75D18];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __64__STBlockingViewController_hideWithAnimation_completionHandler___block_invoke;
    v14[3] = &unk_278338A08;
    v14[4] = self;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __64__STBlockingViewController_hideWithAnimation_completionHandler___block_invoke_2;
    v11[3] = &unk_278338A58;
    v12 = v8;
    v13 = v6;
    v10 = v8;
    [v9 animateWithDuration:v14 animations:v11 completion:0.25];
  }

  else
  {
    [v7 setAlpha:0.0];

    if (v6)
    {
      v6[2](v6);
    }
  }
}

void __64__STBlockingViewController_hideWithAnimation_completionHandler___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 setAlpha:0.0];
}

uint64_t __64__STBlockingViewController_hideWithAnimation_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setUserInteractionEnabled:1];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)_showIgnoreLimitOptions:(id)a3
{
  v4 = +[STScreenTimeUIBundle bundle];
  v5 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  if ([(STBlockingViewController *)self shouldAllowOneMoreMinute])
  {
    v6 = [v4 localizedStringForKey:@"OneMoreMinuteButtonTitle" value:&stru_282F1E250 table:0];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __52__STBlockingViewController__showIgnoreLimitOptions___block_invoke;
    v17[3] = &unk_278338A80;
    v17[4] = self;
    v7 = [MEMORY[0x277D750F8] actionWithTitle:v6 style:0 handler:v17];
    [v5 addAction:v7];
  }

  v8 = [v4 localizedStringForKey:@"RemindMeIn15MinutesButtonTitle" value:&stru_282F1E250 table:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __52__STBlockingViewController__showIgnoreLimitOptions___block_invoke_2;
  v16[3] = &unk_278338A80;
  v16[4] = self;
  v9 = [MEMORY[0x277D750F8] actionWithTitle:v8 style:0 handler:v16];
  [v5 addAction:v9];

  v10 = [v4 localizedStringForKey:@"IgnoreLimitForTodayButtonTitle" value:&stru_282F1E250 table:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__STBlockingViewController__showIgnoreLimitOptions___block_invoke_3;
  v15[3] = &unk_278338A80;
  v15[4] = self;
  v11 = [MEMORY[0x277D750F8] actionWithTitle:v10 style:0 handler:v15];
  [v5 addAction:v11];

  v12 = [v4 localizedStringForKey:@"CancelButtonTitle" value:&stru_282F1E250 table:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __52__STBlockingViewController__showIgnoreLimitOptions___block_invoke_4;
  v14[3] = &unk_278338A80;
  v14[4] = self;
  v13 = [MEMORY[0x277D750F8] actionWithTitle:v12 style:1 handler:v14];
  [v5 addAction:v13];

  [(STBlockingViewController *)self presentViewController:v5 animated:1 completion:0];
  [(STBlockingViewController *)self setShowingPolicyOptions:1];
}

- (id)_ignoreLimitMenuProvider
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__STBlockingViewController__ignoreLimitMenuProvider__block_invoke;
  aBlock[3] = &unk_278338AA8;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

id __52__STBlockingViewController__ignoreLimitMenuProvider__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) shouldAllowOneMoreMinute])
  {
    v2 = [*(a1 + 32) _oneMoreMinuteAction];
  }

  else
  {
    v2 = 0;
  }

  v3 = [*(a1 + 32) _remindMeIn15MinutesAction];
  v4 = [*(a1 + 32) _ignoreForTodayAction];
  v5 = v4;
  if (v2)
  {
    v14 = v2;
    v15 = v3;
    v16 = v4;
    v6 = MEMORY[0x277CBEA60];
    v7 = &v14;
    v8 = 3;
  }

  else
  {
    v12 = v3;
    v13 = v4;
    v6 = MEMORY[0x277CBEA60];
    v7 = &v12;
    v8 = 2;
  }

  v9 = [v6 arrayWithObjects:v7 count:{v8, v12, v13, v14, v15, v16}];
  v10 = [MEMORY[0x277D75710] menuWithTitle:&stru_282F1E250 children:v9];

  return v10;
}

- (id)_oneMoreMinuteAction
{
  v3 = +[STScreenTimeUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"OneMoreMinuteButtonTitle" value:&stru_282F1E250 table:0];

  v5 = MEMORY[0x277D750C8];
  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"hourglass.badge.plus"];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__STBlockingViewController__oneMoreMinuteAction__block_invoke;
  v9[3] = &unk_278338AD0;
  v9[4] = self;
  v7 = [v5 actionWithTitle:v4 image:v6 identifier:0 handler:v9];

  return v7;
}

- (id)_remindMeIn15MinutesAction
{
  v3 = +[STScreenTimeUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"RemindMeIn15MinutesButtonTitle" value:&stru_282F1E250 table:0];

  v5 = MEMORY[0x277D750C8];
  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"clock"];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __54__STBlockingViewController__remindMeIn15MinutesAction__block_invoke;
  v9[3] = &unk_278338AD0;
  v9[4] = self;
  v7 = [v5 actionWithTitle:v4 image:v6 identifier:0 handler:v9];

  return v7;
}

- (id)_ignoreForTodayAction
{
  v3 = +[STScreenTimeUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"IgnoreLimitForTodayButtonTitle" value:&stru_282F1E250 table:0];

  v5 = MEMORY[0x277D750C8];
  v6 = [MEMORY[0x277D755B8] systemImageNamed:@"xmark.circle"];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__STBlockingViewController__ignoreForTodayAction__block_invoke;
  v9[3] = &unk_278338AD0;
  v9[4] = self;
  v7 = [v5 actionWithTitle:v4 image:v6 identifier:0 handler:v9];

  return v7;
}

- (void)_ignoreLimitForAdditionalTime:(double)a3
{
  if (_os_feature_enabled_impl())
  {
    v5 = [(STBlockingViewController *)self _askForTimeResource];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __58__STBlockingViewController__ignoreLimitForAdditionalTime___block_invoke;
    v6[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
    *&v6[4] = a3;
    [v5 approveAdditionalTime:v6 completionHandler:a3];
  }

  else
  {

    [(STBlockingViewController *)self _ignoreLimitWithPreemptiveHideForAdditionalTime:a3];
  }
}

void __58__STBlockingViewController__ignoreLimitForAdditionalTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STBlockingUILog log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __58__STBlockingViewController__ignoreLimitForAdditionalTime___block_invoke_cold_1();
    }
  }
}

- (void)_ignoreLimitWithPreemptiveHideForAdditionalTime:(double)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __76__STBlockingViewController__ignoreLimitWithPreemptiveHideForAdditionalTime___block_invoke;
  v5[3] = &unk_278338B68;
  v5[4] = self;
  *&v5[5] = a3;
  v4 = _Block_copy(v5);
  [(STBlockingViewController *)self hideWithAnimation:1 completionHandler:v4];
}

void __76__STBlockingViewController__ignoreLimitWithPreemptiveHideForAdditionalTime___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _askForTimeResource];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __76__STBlockingViewController__ignoreLimitWithPreemptiveHideForAdditionalTime___block_invoke_2;
  v4[3] = &unk_278338B40;
  v4[5] = v3;
  v4[4] = *(a1 + 32);
  [v2 approveAdditionalTime:v4 completionHandler:?];
}

void __76__STBlockingViewController__ignoreLimitWithPreemptiveHideForAdditionalTime___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCABD8] mainQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __76__STBlockingViewController__ignoreLimitWithPreemptiveHideForAdditionalTime___block_invoke_3;
  v7[3] = &unk_278338B18;
  v10 = *(a1 + 40);
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 addOperationWithBlock:v7];
}

void __76__STBlockingViewController__ignoreLimitWithPreemptiveHideForAdditionalTime___block_invoke_3(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = +[STBlockingUILog log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __76__STBlockingViewController__ignoreLimitWithPreemptiveHideForAdditionalTime___block_invoke_3_cold_1(a1, v2, v3);
    }

    [*(a1 + 40) showWithAnimation:1 completionHandler:0];
  }

  else
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 postNotificationName:@"BlockingViewDidHide" object:*(a1 + 40)];
  }
}

- (void)_showAskForMoreTimeOptions:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __55__STBlockingViewController__showAskForMoreTimeOptions___block_invoke;
  v3[3] = &unk_278338A08;
  v3[4] = self;
  [(STBlockingViewController *)self _unlockDeviceIfNeededWithCompletionHandler:v3];
}

void __55__STBlockingViewController__showAskForMoreTimeOptions___block_invoke(uint64_t a1)
{
  v2 = +[STScreenTimeUIBundle bundle];
  v3 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  if ([*(a1 + 32) shouldAllowOneMoreMinute])
  {
    v4 = [v2 localizedStringForKey:@"OneMoreMinuteButtonTitle" value:&stru_282F1E250 table:0];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __55__STBlockingViewController__showAskForMoreTimeOptions___block_invoke_2;
    v15[3] = &unk_278338A80;
    v15[4] = *(a1 + 32);
    v5 = [MEMORY[0x277D750F8] actionWithTitle:v4 style:0 handler:v15];
    [v3 addAction:v5];
  }

  if ([*(a1 + 32) shouldRequestMoreTime])
  {
    v6 = [v2 localizedStringForKey:@"SendRequestButtonTitle" value:&stru_282F1E250 table:0];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __55__STBlockingViewController__showAskForMoreTimeOptions___block_invoke_3;
    v14[3] = &unk_278338A80;
    v14[4] = *(a1 + 32);
    v7 = [MEMORY[0x277D750F8] actionWithTitle:v6 style:0 handler:v14];
    [v3 addAction:v7];
  }

  v8 = [v2 localizedStringForKey:@"EnterScreenTimePasscodePromptButtonTitle" value:&stru_282F1E250 table:0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __55__STBlockingViewController__showAskForMoreTimeOptions___block_invoke_4;
  v13[3] = &unk_278338A80;
  v13[4] = *(a1 + 32);
  v9 = [MEMORY[0x277D750F8] actionWithTitle:v8 style:0 handler:v13];
  [v3 addAction:v9];

  v10 = [v2 localizedStringForKey:@"CancelButtonTitle" value:&stru_282F1E250 table:0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __55__STBlockingViewController__showAskForMoreTimeOptions___block_invoke_5;
  v12[3] = &unk_278338A80;
  v12[4] = *(a1 + 32);
  v11 = [MEMORY[0x277D750F8] actionWithTitle:v10 style:1 handler:v12];
  [v3 addAction:v11];

  [*(a1 + 32) presentViewController:v3 animated:1 completion:0];
  [*(a1 + 32) setShowingPolicyOptions:1];
}

- (id)_askForMoreTimeMenuProvider
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__STBlockingViewController__askForMoreTimeMenuProvider__block_invoke;
  aBlock[3] = &unk_278338AA8;
  aBlock[4] = self;
  v2 = _Block_copy(aBlock);

  return v2;
}

id __55__STBlockingViewController__askForMoreTimeMenuProvider__block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  if ([*(a1 + 32) shouldAllowOneMoreMinute])
  {
    v3 = [*(a1 + 32) _oneMoreMinuteAction];
    [v2 addObject:v3];
  }

  if ([*(a1 + 32) shouldRequestMoreTime])
  {
    v4 = [*(a1 + 32) _sendRequestAction];
    [v2 addObject:v4];
  }

  v5 = [*(a1 + 32) _enterScreenTimePasscodeAction];
  [v2 addObject:v5];

  v6 = [MEMORY[0x277D75710] menuWithTitle:&stru_282F1E250 children:v2];

  return v6;
}

- (id)_sendRequestAction
{
  v3 = +[STScreenTimeUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"SendRequestButtonTitle" value:&stru_282F1E250 table:0];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__STBlockingViewController__sendRequestAction__block_invoke;
  v7[3] = &unk_278338AD0;
  v7[4] = self;
  v5 = [MEMORY[0x277D750C8] actionWithTitle:v4 image:0 identifier:0 handler:v7];

  return v5;
}

- (id)_enterScreenTimePasscodeAction
{
  v3 = +[STScreenTimeUIBundle bundle];
  v4 = [v3 localizedStringForKey:@"EnterScreenTimePasscodePromptButtonTitle" value:&stru_282F1E250 table:0];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__STBlockingViewController__enterScreenTimePasscodeAction__block_invoke;
  v7[3] = &unk_278338AD0;
  v7[4] = self;
  v5 = [MEMORY[0x277D750C8] actionWithTitle:v4 image:0 identifier:0 handler:v7];

  return v5;
}

- (void)_oneMoreMinute:(id)a3
{
  if (_os_feature_enabled_impl())
  {
    v4 = [(STBlockingViewController *)self _askForTimeResource];
    [v4 approveOneMoreMinuteWithCompletionHandler:&__block_literal_global_0];
  }

  else
  {

    [(STBlockingViewController *)self _approveOneMoreMinuteWithPreemptiveHide];
  }
}

void __43__STBlockingViewController__oneMoreMinute___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = +[STBlockingUILog log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __43__STBlockingViewController__oneMoreMinute___block_invoke_cold_1();
    }
  }
}

- (void)_approveOneMoreMinuteWithPreemptiveHide
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __67__STBlockingViewController__approveOneMoreMinuteWithPreemptiveHide__block_invoke;
  v2[3] = &unk_278338A08;
  v2[4] = self;
  [(STBlockingViewController *)self hideWithAnimation:1 completionHandler:v2];
}

void __67__STBlockingViewController__approveOneMoreMinuteWithPreemptiveHide__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _askForTimeResource];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __67__STBlockingViewController__approveOneMoreMinuteWithPreemptiveHide__block_invoke_2;
  v3[3] = &unk_278338BB0;
  v3[4] = *(a1 + 32);
  [v2 approveOneMoreMinuteWithCompletionHandler:v3];
}

void __67__STBlockingViewController__approveOneMoreMinuteWithPreemptiveHide__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277CCABD8] mainQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __67__STBlockingViewController__approveOneMoreMinuteWithPreemptiveHide__block_invoke_3;
  v7[3] = &unk_278338928;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 addOperationWithBlock:v7];
}

void __67__STBlockingViewController__approveOneMoreMinuteWithPreemptiveHide__block_invoke_3(uint64_t a1)
{
  v2 = a1 + 32;
  if (*(a1 + 32))
  {
    v3 = +[STBlockingUILog log];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __67__STBlockingViewController__approveOneMoreMinuteWithPreemptiveHide__block_invoke_3_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }

    [*(a1 + 40) showWithAnimation:1 completionHandler:0];
  }

  else
  {
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 postNotificationName:@"BlockingViewDidHide" object:*(a1 + 40)];
  }
}

- (void)_sendRequest:(id)a3
{
  v4 = [(STBlockingViewController *)self _askForTimeResource];
  v5 = *MEMORY[0x277D4BB78];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __41__STBlockingViewController__sendRequest___block_invoke;
  v6[3] = &unk_278338BB0;
  v6[4] = self;
  [v4 requestAdditionalTime:v6 completionHandler:v5];
}

void __41__STBlockingViewController__sendRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[STBlockingUILog log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __41__STBlockingViewController__sendRequest___block_invoke_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) setPolicy:3];
    v5 = [MEMORY[0x277CCABD8] mainQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __41__STBlockingViewController__sendRequest___block_invoke_2;
    v6[3] = &unk_278338A08;
    v6[4] = *(a1 + 32);
    [v5 addOperationWithBlock:v6];
  }
}

- (void)_enterScreenTimePasscode:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__STBlockingViewController__enterScreenTimePasscode___block_invoke;
  v3[3] = &unk_278338A08;
  v3[4] = self;
  [(STBlockingViewController *)self _unlockDeviceIfNeededWithCompletionHandler:v3];
}

void __53__STBlockingViewController__enterScreenTimePasscode___block_invoke(uint64_t a1)
{
  if (_os_feature_enabled_impl())
  {
    v2 = objc_opt_new();
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __53__STBlockingViewController__enterScreenTimePasscode___block_invoke_2;
    v5[3] = &unk_278338BD8;
    v5[4] = *(a1 + 32);
    [v2 authenticateForCommunicationConfigurationOverrideWithCompletionHandler:v5];
  }

  else
  {
    v3 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v3 addObserver:*(a1 + 32) selector:sel__didFinishEnteringScreenTimePasscode_ name:@"com.apple.screentime.restrictions.did-finish" object:0 suspensionBehavior:4];

    +[STRemotePasscodeController activateRemotePINUI];
  }

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"BlockingViewDidShowPasscodeUI" object:0];
}

void __53__STBlockingViewController__enterScreenTimePasscode___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if ([a2 authenticated])
  {
    v6 = [MEMORY[0x277CCABD8] mainQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __53__STBlockingViewController__enterScreenTimePasscode___block_invoke_3;
    v9[3] = &unk_278338A08;
    v9[4] = *(a1 + 32);
    [v6 addOperationWithBlock:v9];
  }

  if (v5)
  {
    v7 = +[STBlockingUILog log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__STBlockingViewController__enterScreenTimePasscode___block_invoke_2_cold_1();
    }
  }

  v8 = [MEMORY[0x277CCAB98] defaultCenter];
  [v8 postNotificationName:@"BlockingViewDidHidePasscodeUI" object:0];
}

- (void)_didFinishEnteringScreenTimePasscode:(id)a3
{
  v4 = MEMORY[0x277CCA9A0];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:self name:@"com.apple.screentime.restrictions.did-finish" object:0];

  v7 = [v5 userInfo];

  v8 = [v7 objectForKeyedSubscript:@"success"];
  v9 = [v8 BOOLValue];

  if (v9)
  {
    v10 = [MEMORY[0x277CCABD8] mainQueue];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __65__STBlockingViewController__didFinishEnteringScreenTimePasscode___block_invoke;
    v12[3] = &unk_278338A08;
    v12[4] = self;
    [v10 addOperationWithBlock:v12];
  }

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 postNotificationName:@"BlockingViewDidHidePasscodeUI" object:0];
}

- (void)_showPasscodeApprovedOptions
{
  v3 = +[STScreenTimeUIBundle bundle];
  v4 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:0 preferredStyle:0];
  v5 = [v3 localizedStringForKey:@"ApproveFor15MinutesButtonTitle" value:&stru_282F1E250 table:0];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__STBlockingViewController__showPasscodeApprovedOptions__block_invoke;
  v16[3] = &unk_278338A80;
  v16[4] = self;
  v6 = [MEMORY[0x277D750F8] actionWithTitle:v5 style:0 handler:v16];
  [v4 addAction:v6];

  v7 = [v3 localizedStringForKey:@"ApproveForHourButtonTitle" value:&stru_282F1E250 table:0];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __56__STBlockingViewController__showPasscodeApprovedOptions__block_invoke_2;
  v15[3] = &unk_278338A80;
  v15[4] = self;
  v8 = [MEMORY[0x277D750F8] actionWithTitle:v7 style:0 handler:v15];
  [v4 addAction:v8];

  v9 = [v3 localizedStringForKey:@"ApproveAllDayButtonTitle" value:&stru_282F1E250 table:0];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__STBlockingViewController__showPasscodeApprovedOptions__block_invoke_3;
  v14[3] = &unk_278338A80;
  v14[4] = self;
  v10 = [MEMORY[0x277D750F8] actionWithTitle:v9 style:0 handler:v14];
  [v4 addAction:v10];

  v11 = [v3 localizedStringForKey:@"CancelButtonTitle" value:&stru_282F1E250 table:0];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__STBlockingViewController__showPasscodeApprovedOptions__block_invoke_4;
  v13[3] = &unk_278338A80;
  v13[4] = self;
  v12 = [MEMORY[0x277D750F8] actionWithTitle:v11 style:1 handler:v13];
  [v4 addAction:v12];

  [(STBlockingViewController *)self presentViewController:v4 animated:1 completion:0];
  [(STBlockingViewController *)self setShowingPolicyOptions:1];
}

- (id)_askForTimeResource
{
  v3 = [(STBlockingViewController *)self categoryIdentifier];
  v4 = [(STBlockingViewController *)self bundleIdentifier];
  v5 = [(STBlockingViewController *)self webDomain];
  v6 = v5;
  if (v3)
  {
    v7 = [objc_alloc(MEMORY[0x277D4B8F0]) initWithCategoryIdentifier:v3 changeHandler:&__block_literal_global_236];
LABEL_7:
    v8 = v7;
    goto LABEL_8;
  }

  if (v4)
  {
    v7 = [objc_alloc(MEMORY[0x277D4B8E0]) initWithBundleIdentifier:v4 changeHandler:&__block_literal_global_236];
    goto LABEL_7;
  }

  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277D4B918]) initWithWebsiteDomain:v5 changeHandler:&__block_literal_global_236];
    goto LABEL_7;
  }

  v10 = +[STBlockingUILog log];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    [STBlockingViewController _askForTimeResource];
  }

  v8 = 0;
LABEL_8:

  return v8;
}

void __47__STBlockingViewController__askForTimeResource__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = +[STBlockingUILog log];
  v10 = v9;
  if (a2)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218242;
      v12 = a2;
      v13 = 2114;
      v14 = v7;
      _os_log_impl(&dword_21DD93000, v10, OS_LOG_TYPE_DEFAULT, "Changed to Ask For Time state %ld, amount granted %{public}@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    __47__STBlockingViewController__askForTimeResource__block_invoke_cold_1();
  }
}

- (void)_addContact:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__STBlockingViewController__addContact___block_invoke;
  v3[3] = &unk_278338A08;
  v3[4] = self;
  [(STBlockingViewController *)self _unlockDeviceIfNeededWithCompletionHandler:v3];
}

- (void)_addContact
{
  v9 = [(STBlockingViewController *)self addContactHandler];
  if (v9)
  {
    v3 = [(STBlockingViewController *)self addContactButton];
    v9[2](v9, v3);
  }

  else
  {
    v4 = MEMORY[0x277CBDC48];
    v5 = [(STBlockingViewController *)self _newContact];
    v3 = [v4 viewControllerForNewContact:v5];

    [v3 setDelegate:self];
    v6 = [(STBlockingViewController *)self contactStore];
    [v3 setContactStore:v6];

    v7 = [(STBlockingViewController *)self _iCloudContainer];
    [v3 setParentContainer:v7];

    v8 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v3];
    [(STBlockingViewController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (id)_newContact
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = [(STBlockingViewController *)self formattedContactHandle];
  if ([v4 destinationIdIsPhoneNumber])
  {
    v5 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:v4];
    v6 = objc_alloc(MEMORY[0x277CBDB20]);
    v7 = [v6 initWithLabel:*MEMORY[0x277CBD900] value:v5];
    v14[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    [v3 setPhoneNumbers:v8];

LABEL_5:
    goto LABEL_6;
  }

  if ([v4 destinationIdIsEmailAddress])
  {
    v9 = objc_alloc(MEMORY[0x277CBDB20]);
    v5 = [v9 initWithLabel:*MEMORY[0x277CBD8E8] value:v4];
    v13 = v5;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
    [v3 setEmailAddresses:v7];
    goto LABEL_5;
  }

  v5 = +[STBlockingUILog log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = v4;
    _os_log_impl(&dword_21DD93000, v5, OS_LOG_TYPE_DEFAULT, "Failed to identify handle type for: %{public}@", &v11, 0xCu);
  }

LABEL_6:

  return v3;
}

- (id)_iCloudContainer
{
  v3 = [(STBlockingViewController *)self managementState];
  v16 = 0;
  v4 = [v3 primaryiCloudCardDAVAccountIdentifierWithError:&v16];
  v5 = v16;

  if (v4)
  {
    v6 = [MEMORY[0x277CBDAD8] predicateForContainersInAccountWithExternalIdentifier:v4];
    v7 = [(STBlockingViewController *)self contactStore];
    v15 = v5;
    v8 = [v7 containersMatchingPredicate:v6 error:&v15];
    v9 = v15;

    if ([v8 count])
    {
      v10 = [v8 objectAtIndexedSubscript:0];
    }

    else
    {
      v11 = +[STBlockingUILog log];
      v12 = v11;
      if (v8)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *v14 = 0;
          _os_log_impl(&dword_21DD93000, v12, OS_LOG_TYPE_DEFAULT, "No iCloud container found for user", v14, 2u);
        }
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [STBlockingViewController _iCloudContainer];
      }

      v10 = 0;
    }
  }

  else
  {
    v6 = +[STBlockingUILog log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [STBlockingViewController _iCloudContainer];
    }

    v10 = 0;
    v9 = v5;
  }

  return v10;
}

- (void)_unlockDeviceIfNeededWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(STBlockingViewController *)self lockScreenService];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__STBlockingViewController__unlockDeviceIfNeededWithCompletionHandler___block_invoke;
  v7[3] = &unk_278338A30;
  v8 = v4;
  v6 = v4;
  [v5 requestPasscodeUnlockUIWithOptions:0 withCompletion:v7];
}

void __71__STBlockingViewController__unlockDeviceIfNeededWithCompletionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277CCABD8] mainQueue];
    [v3 addOperationWithBlock:*(a1 + 32)];
  }
}

- (void)_updateAppearanceWithCustomConfiguration:(id)a3 defaultMessageFormatKey:(id)a4 defaultMessageArgument:(id)a5
{
  v8 = a3;
  v9 = a5;
  v132 = a4;
  [(STBlockingViewController *)self loadViewIfNeeded];
  v10 = [(STBlockingViewController *)self view];
  v11 = [v8 backgroundColorData];
  v12 = v10;
  v13 = v11;
  v14 = 0x277CCA000uLL;
  if (v13)
  {
    [v12 setHidden:0];
    v15 = v13;
    v136 = 0;
    v16 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v15 error:&v136];
    v17 = v136;
    if (!v16)
    {
      v18 = +[STBlockingUILog log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [STBlockingViewController _updateAppearanceWithCustomConfiguration:defaultMessageFormatKey:defaultMessageArgument:];
      }
    }
  }

  else
  {
    v16 = 0;
  }

  [v12 setBackgroundColor:v16];
  v19 = [v8 backgroundEffectData];
  v20 = v12;
  if (v19)
  {
    v21 = MEMORY[0x277CCAAC8];
    v22 = objc_opt_class();
    v136 = 0;
    v23 = [v21 unarchivedObjectOfClass:v22 fromData:v19 error:&v136];
    v24 = v136;
    if (v23)
    {
      [v20 setEffect:v23];
    }

    else
    {
      v25 = +[STBlockingUILog log];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [STBlockingViewController _updateAppearanceWithCustomConfiguration:defaultMessageFormatKey:defaultMessageArgument:];
      }

      v26 = [MEMORY[0x277D75210] effectWithStyle:9];
      [v20 setEffect:v26];
    }
  }

  else
  {
    v24 = [MEMORY[0x277D75210] effectWithStyle:9];
    [v20 setEffect:v24];
  }

  v27 = [v8 iconData];
  v127 = v27;
  v128 = v20;
  if (v27)
  {
    v28 = [objc_alloc(MEMORY[0x277D755B8]) initWithData:v27];
    if (v28)
    {
      v29 = [(STBlockingViewController *)self hourglassView];
      [v29 setHidden:1];

      v30 = [(STBlockingViewController *)self communicationLimitView];
      [v30 setHidden:1];

      v31 = [(STBlockingViewController *)self customImageView];
      [v31 setImage:v28];
      [v31 setHidden:0];
    }

    else
    {
      v32 = +[STBlockingUILog log];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [STBlockingViewController _updateAppearanceWithCustomConfiguration:defaultMessageFormatKey:defaultMessageArgument:];
      }

      [(STBlockingViewController *)self _showDefaultHourglassView];
    }
  }

  else
  {
    [(STBlockingViewController *)self _showDefaultHourglassView];
  }

  v135 = +[STScreenTimeUIBundle bundle];
  v33 = [v135 localizedStringForKey:@"RestrictedTitle" value:&stru_282F1E250 table:0];
  v34 = [(STBlockingViewController *)self titleLabel];
  v35 = [v8 title];
  v36 = [MEMORY[0x277D75348] labelColor];
  v37 = v34;
  v38 = v35;
  v39 = v33;
  v40 = v36;
  v134 = v8;
  if (v38)
  {
    v130 = v9;
    v41 = [v38 text];
    v123 = self;
    if (v41)
    {
      v42 = v41;
    }

    else
    {
      v42 = v39;
    }

    [v37 setText:v42];
    v43 = v39;
    v44 = [v38 colorData];
    v45 = v40;
    if (v44)
    {
      v46 = MEMORY[0x277CCAAC8];
      v47 = objc_opt_class();
      v136 = 0;
      v48 = [v46 unarchivedObjectOfClass:v47 fromData:v44 error:&v136];
      v49 = v136;
      if (!v48)
      {
        v50 = +[STBlockingUILog log];
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          [STBlockingViewController _updateAppearanceWithCustomConfiguration:defaultMessageFormatKey:defaultMessageArgument:];
        }

        v14 = 0x277CCA000;
      }
    }

    else
    {
      v48 = 0;
    }

    if (v48)
    {
      v51 = v48;
    }

    else
    {
      v51 = v45;
    }

    v52 = v51;

    [v37 setTextColor:v52];
    v8 = v134;
    v39 = v43;
    self = v123;
    v9 = v130;
  }

  else
  {
    [v37 setText:v39];
    [v37 setTextColor:v40];
  }

  v126 = v39;
  v53 = [v135 localizedStringForKey:v132 value:&stru_282F1E250 table:0];

  v125 = v53;
  v54 = [MEMORY[0x277CCACA8] localizedStringWithValidatedFormat:v53 validFormatSpecifiers:@"%@" error:0, v9];

  v55 = [(STBlockingViewController *)self messageLabel];
  v56 = [v8 subtitle];
  if (_os_feature_enabled_impl())
  {
    [MEMORY[0x277D75348] secondaryLabelColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v57 = ;
  v58 = v55;
  v59 = v56;
  v60 = v54;
  v61 = v57;
  v133 = v60;
  if (v59)
  {
    v62 = [v59 text];
    if (v62)
    {
      v63 = v62;
    }

    else
    {
      v63 = v60;
    }

    [v58 setText:v63];
    v64 = [v59 colorData];
    v65 = v61;
    if (v64)
    {
      v66 = *(v14 + 2760);
      v67 = objc_opt_class();
      v136 = 0;
      v68 = [v66 unarchivedObjectOfClass:v67 fromData:v64 error:&v136];
      v69 = v136;
      if (!v68)
      {
        v70 = +[STBlockingUILog log];
        if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
        {
          [STBlockingViewController _updateAppearanceWithCustomConfiguration:defaultMessageFormatKey:defaultMessageArgument:];
        }

        v8 = v134;
      }
    }

    else
    {
      v68 = 0;
    }

    if (v68)
    {
      v71 = v68;
    }

    else
    {
      v71 = v65;
    }

    v72 = v71;

    [v58 setTextColor:v72];
    v14 = 0x277CCA000uLL;
    v60 = v133;
  }

  else
  {
    [v58 setText:v60];
    [v58 setTextColor:v61];
  }

  [(STBlockingViewController *)self _updateButtons];
  v73 = [(STBlockingViewController *)self customPrimaryButton];
  v74 = [v135 localizedStringForKey:@"OKButtonTitle" value:&stru_282F1E250 table:0];
  v75 = [(STBlockingViewController *)self _primaryButtonConfiguration];
  v76 = [v8 primaryButtonColorData];
  v77 = [MEMORY[0x277D75348] systemBlueColor];
  v78 = v76;
  if (v78)
  {
    v79 = *(v14 + 2760);
    v80 = objc_opt_class();
    v136 = 0;
    v81 = [v79 unarchivedObjectOfClass:v80 fromData:v78 error:&v136];
    v82 = v136;
    if (!v81)
    {
      v83 = +[STBlockingUILog log];
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        [STBlockingViewController _updateAppearanceWithCustomConfiguration:defaultMessageFormatKey:defaultMessageArgument:];
      }

      v14 = 0x277CCA000;
    }
  }

  else
  {
    v81 = 0;
  }

  if (v81)
  {
    v84 = v81;
  }

  else
  {
    v84 = v77;
  }

  v85 = v84;

  v86 = [v75 background];
  [v86 setBackgroundColor:v85];

  v87 = [v8 primaryButtonLabel];
  v88 = [MEMORY[0x277D75348] whiteColor];
  v89 = v73;
  v90 = v87;
  v91 = v74;
  v92 = v88;
  v93 = v75;
  v129 = v89;
  v131 = v91;
  if (v90)
  {
    [v89 setHidden:0];
    v94 = [v90 text];
    v95 = v94;
    if (v94)
    {
      v96 = v94;
    }

    else
    {
      v96 = v91;
    }

    [v93 setTitle:v96];
    v97 = [v90 colorData];
    v98 = v92;
    if (v97)
    {
      v99 = *(v14 + 2760);
      v100 = objc_opt_class();
      v136 = 0;
      v101 = [v99 unarchivedObjectOfClass:v100 fromData:v97 error:&v136];
      v102 = v136;
      if (!v101)
      {
        v103 = +[STBlockingUILog log];
        if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
        {
          [STBlockingViewController _updateAppearanceWithCustomConfiguration:defaultMessageFormatKey:defaultMessageArgument:];
        }
      }

      v8 = v134;
    }

    else
    {
      v101 = 0;
    }

    if (v101)
    {
      v104 = v101;
    }

    else
    {
      v104 = v98;
    }

    v105 = v104;

    [v93 setBaseForegroundColor:v105];
    v89 = v129;
    [v129 setConfiguration:v93];

    v14 = 0x277CCA000uLL;
    v91 = v131;
  }

  else
  {
    [v89 setHidden:1];
    [v93 setTitle:v91];
    [v93 setBaseForegroundColor:v92];
    [v89 setConfiguration:v93];
  }

  v106 = [(STBlockingViewController *)self customSecondaryButton];
  v107 = [(STBlockingViewController *)self _secondaryButtonConfiguration];
  v108 = [v8 secondaryButtonLabel];
  v109 = [MEMORY[0x277D75348] systemBlueColor];
  v110 = v106;
  v111 = v108;
  v112 = v109;
  v113 = v107;
  if (v111)
  {
    [v110 setHidden:0];
    v114 = [v111 text];
    [v113 setTitle:v114];
    v115 = [v111 colorData];
    v116 = v112;
    if (v115)
    {
      v117 = *(v14 + 2760);
      v118 = objc_opt_class();
      v136 = 0;
      v119 = [v117 unarchivedObjectOfClass:v118 fromData:v115 error:&v136];
      v120 = v136;
      if (!v119)
      {
        v124 = +[STBlockingUILog log];
        if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
        {
          [STBlockingViewController _updateAppearanceWithCustomConfiguration:defaultMessageFormatKey:defaultMessageArgument:];
        }
      }
    }

    else
    {
      v119 = 0;
    }

    if (v119)
    {
      v121 = v119;
    }

    else
    {
      v121 = v116;
    }

    v122 = v121;

    [v113 setBaseForegroundColor:v122];
    [v110 setConfiguration:v113];

    v8 = v134;
    v89 = v129;
  }

  else
  {
    [v110 setHidden:1];
    [v113 setTitle:0];
    [v113 setBaseForegroundColor:v112];
    [v110 setConfiguration:v113];
  }

  if ([v110 isHidden])
  {
    [v89 setHidden:0];
  }
}

- (id)_primaryButtonConfiguration
{
  if (_os_feature_enabled_impl())
  {
    v3 = +[_TtC12ScreenTimeUI24NaturalBlockingUIStyling primaryButtonConfiguration];
  }

  else
  {
    v4 = [(STBlockingViewController *)self customPrimaryButton];
    v3 = [MEMORY[0x277D75230] filledButtonConfiguration];
    v5 = [MEMORY[0x277D751C0] clearConfiguration];
    v6 = [v4 configuration];
    v7 = [v6 background];
    [v7 cornerRadius];
    [v5 setCornerRadius:?];

    v8 = [v4 configuration];
    v9 = [v8 background];
    v10 = [v9 backgroundColor];
    [v5 setBackgroundColor:v10];

    [v3 setBackground:v5];
  }

  return v3;
}

- (id)_secondaryButtonConfiguration
{
  if (_os_feature_enabled_impl())
  {
    +[_TtC12ScreenTimeUI24NaturalBlockingUIStyling secondaryButtonConfiguration];
  }

  else
  {
    [MEMORY[0x277D75230] plainButtonConfiguration];
  }
  v2 = ;

  return v2;
}

- (void)_showDefaultHourglassView
{
  v3 = [(STBlockingViewController *)self hourglassView];
  [v3 setHidden:0];

  v4 = [(STBlockingViewController *)self communicationLimitView];
  [v4 setHidden:1];

  v5 = [(STBlockingViewController *)self customImageView];
  [v5 setHidden:1];
}

- (void)_customButtonPressed:(id)a3
{
  v4 = [a3 tag];
  v5 = [(STBlockingViewController *)self bundleIdentifier];
  v6 = [(STBlockingViewController *)self categoryIdentifier];
  v7 = [(STBlockingViewController *)self webDomain];
  v8 = v7;
  if (v5)
  {
    v9 = [MEMORY[0x277CF9650] sharedCategories];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __49__STBlockingViewController__customButtonPressed___block_invoke;
    v18[3] = &unk_278338C48;
    v21 = v4;
    v19 = v5;
    v20 = self;
    [v9 categoryForBundleID:v19 completionHandler:v18];

    v10 = v19;
LABEL_3:

    goto LABEL_6;
  }

  if (v6)
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __49__STBlockingViewController__customButtonPressed___block_invoke_256;
    v17[3] = &unk_278338C20;
    v17[4] = self;
    v17[5] = v4;
    [MEMORY[0x277D26570] handleAction:v4 categoryIdentifier:v6 completionHandler:v17];
    goto LABEL_6;
  }

  if (v7)
  {
    v11 = [MEMORY[0x277CF9650] sharedCategories];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__STBlockingViewController__customButtonPressed___block_invoke_2_257;
    v13[3] = &unk_278338C48;
    v16 = v4;
    v14 = v8;
    v15 = self;
    [v11 categoryForDomainName:v14 completionHandler:v13];

    v10 = v14;
    goto LABEL_3;
  }

  v12 = +[STBlockingUILog log];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    [STBlockingViewController _customButtonPressed:];
  }

LABEL_6:
}

void __49__STBlockingViewController__customButtonPressed___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x277D26570];
    v7 = a1[6];
    v8 = a1[4];
    v9 = [a2 identifier];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__STBlockingViewController__customButtonPressed___block_invoke_2;
    v11[3] = &unk_278338C20;
    v10 = a1[6];
    v11[4] = a1[5];
    v11[5] = v10;
    [v6 handleAction:v7 bundleIdentifier:v8 categoryIdentifier:v9 completionHandler:v11];
  }

  else
  {
    v9 = +[STBlockingUILog log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __78__STBlockingViewController_fetchAppResponsibleForShieldWithCompletionHandler___block_invoke_cold_1();
    }
  }
}

void __49__STBlockingViewController__customButtonPressed___block_invoke_2_257(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x277D26570];
    v7 = a1[6];
    v8 = a1[4];
    v9 = [a2 identifier];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__STBlockingViewController__customButtonPressed___block_invoke_3;
    v11[3] = &unk_278338C20;
    v10 = a1[6];
    v11[4] = a1[5];
    v11[5] = v10;
    [v6 handleAction:v7 webDomain:v8 categoryIdentifier:v9 completionHandler:v11];
  }

  else
  {
    v9 = +[STBlockingUILog log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __78__STBlockingViewController_fetchAppResponsibleForShieldWithCompletionHandler___block_invoke_cold_1();
    }
  }
}

- (void)_handleCustomButtonResponse:(id)a3 forAction:(int64_t)a4 error:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = [v8 integerValue];
  }

  else
  {
    v11 = +[STBlockingUILog log];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [STBlockingViewController _handleCustomButtonResponse:v9 forAction:a4 error:v11];
    }

    v10 = a4 == 1;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      if (v10 == 3)
      {
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __72__STBlockingViewController__handleCustomButtonResponse_forAction_error___block_invoke_259;
        v25[3] = &unk_278338C70;
        v25[4] = self;
        [(STBlockingViewController *)self fetchAppResponsibleForShieldWithCompletionHandler:v25];
      }

      goto LABEL_27;
    }

    v15 = +[STBlockingUILog log];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21DD93000, v15, OS_LOG_TYPE_DEFAULT, "Deferring response and updating appearance.", buf, 2u);
    }

    [(STBlockingViewController *)self setPolicy:0];
    v13 = [(STBlockingViewController *)self bundleIdentifier];
    v16 = [(STBlockingViewController *)self categoryIdentifier];
    v17 = [(STBlockingViewController *)self webDomain];
    v18 = v17;
    if (v13)
    {
      v19 = [MEMORY[0x277CCABD8] mainQueue];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __72__STBlockingViewController__handleCustomButtonResponse_forAction_error___block_invoke_258;
      v30[3] = &unk_278338928;
      v30[4] = self;
      v31 = v13;
      [v19 addOperationWithBlock:v30];

      v20 = v31;
    }

    else
    {
      if (!v16)
      {
        if (v17)
        {
          v22 = objc_opt_new();
          [v22 setHost:v18];
          v23 = [MEMORY[0x277CCABD8] mainQueue];
          v26[0] = MEMORY[0x277D85DD0];
          v26[1] = 3221225472;
          v26[2] = __72__STBlockingViewController__handleCustomButtonResponse_forAction_error___block_invoke_3;
          v26[3] = &unk_278338928;
          v26[4] = self;
          v27 = v22;
          v24 = v22;
          [v23 addOperationWithBlock:v26];
        }

        else
        {
          v24 = +[STBlockingUILog log];
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            [STBlockingViewController _handleCustomButtonResponse:forAction:error:];
          }
        }

        goto LABEL_25;
      }

      v21 = [MEMORY[0x277CCABD8] mainQueue];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __72__STBlockingViewController__handleCustomButtonResponse_forAction_error___block_invoke_2;
      v28[3] = &unk_278338928;
      v28[4] = self;
      v29 = v16;
      [v21 addOperationWithBlock:v28];

      v20 = v29;
    }

LABEL_25:
LABEL_26:

    goto LABEL_27;
  }

  if (v10)
  {
    if (v10 == 1)
    {
      v12 = +[STBlockingUILog log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21DD93000, v12, OS_LOG_TYPE_DEFAULT, "Closing current application.", buf, 2u);
      }

      v13 = [MEMORY[0x277CCABD8] mainQueue];
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __72__STBlockingViewController__handleCustomButtonResponse_forAction_error___block_invoke;
      v32[3] = &unk_278338A08;
      v32[4] = self;
      [v13 addOperationWithBlock:v32];
      goto LABEL_26;
    }
  }

  else
  {
    v14 = +[STBlockingUILog log];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21DD93000, v14, OS_LOG_TYPE_DEFAULT, "No response needed.", buf, 2u);
    }
  }

LABEL_27:
}

void __72__STBlockingViewController__handleCustomButtonResponse_forAction_error___block_invoke()
{
  v0 = [objc_opt_class() closeApplicationHandler];
  v0[2]();
}

void __72__STBlockingViewController__handleCustomButtonResponse_forAction_error___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) URL];
  [v1 updateAppearanceUsingPolicy:5 forWebpageURL:v2];
}

void __72__STBlockingViewController__handleCustomButtonResponse_forAction_error___block_invoke_259(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[STBlockingUILog log];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v12 = v3;
      _os_log_impl(&dword_21DD93000, v5, OS_LOG_TYPE_DEFAULT, "Opening parental controls application %{public}@", buf, 0xCu);
    }

    v6 = [MEMORY[0x277CCABD8] mainQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __72__STBlockingViewController__handleCustomButtonResponse_forAction_error___block_invoke_260;
    v9[3] = &unk_278338928;
    v9[4] = *(a1 + 32);
    v10 = v3;
    [v6 addOperationWithBlock:v9];

    v7 = v10;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__STBlockingViewController__handleCustomButtonResponse_forAction_error___block_invoke_259_cold_1();
    }

    v7 = [MEMORY[0x277CCABD8] mainQueue];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72__STBlockingViewController__handleCustomButtonResponse_forAction_error___block_invoke_261;
    v8[3] = &unk_278338A08;
    v8[4] = *(a1 + 32);
    [v7 addOperationWithBlock:v8];
  }
}

void __72__STBlockingViewController__handleCustomButtonResponse_forAction_error___block_invoke_260(uint64_t a1)
{
  v2 = [objc_opt_class() openParentAppHandler];
  v2[2](v2, *(a1 + 40));
}

void __72__STBlockingViewController__handleCustomButtonResponse_forAction_error___block_invoke_261()
{
  v0 = [objc_opt_class() closeApplicationHandler];
  v0[2]();
}

void __56__STBlockingViewController_openAppWithBundleIdentifier___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  *v3 = 138412546;
  *&v3[4] = v0;
  *&v3[12] = 2112;
  *&v3[14] = v1;
  OUTLINED_FUNCTION_2(&dword_21DD93000, v1, v2, "Failed to open %@: %@", *v3, *&v3[8], *&v3[16]);
}

void __78__STBlockingViewController_fetchAppResponsibleForShieldWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_21DD93000, v0, v1, "Failed to fetch category for %{public}@: %{public}@.");
}

void __78__STBlockingViewController_fetchAppResponsibleForShieldWithCompletionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_21DD93000, v0, v1, "Failed to fetch responsible app for %{public}@: %{public}@.");
}

- (uint64_t)updateAppearanceUsingPolicy:forCategoryIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_10();
  [v1 handleFailureInMethod:@"policy != DMFPolicyOK" object:? file:? lineNumber:? description:?];

  return _os_feature_enabled_impl();
}

- (void)updateAppearanceUsingPolicy:forBundleIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_10();
  [v0 handleFailureInMethod:@"policy != DMFPolicyOK" object:? file:? lineNumber:? description:?];
}

- (void)updateAppearanceUsingPolicy:forWebpageURL:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_10();
  [v0 handleFailureInMethod:@"policy != DMFPolicyOK" object:? file:? lineNumber:? description:?];
}

- (void)updateAppearanceUsingBlockedContactHandles:contactNameByHandle:forBundleIdentifier:isApplicationCurrentlyLimited:contactStore:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_10();
  [v0 handleFailureInMethod:@"blockedContactsCount > 0" object:? file:? lineNumber:? description:?];
}

void __58__STBlockingViewController__ignoreLimitForAdditionalTime___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_21DD93000, v0, v1, "Failed to ignore limit for %f more seconds: %{public}@");
}

void __76__STBlockingViewController__ignoreLimitWithPreemptiveHideForAdditionalTime___block_invoke_3_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = *(a1 + 48);
  *&v3[12] = 2114;
  *&v3[14] = *a2;
  OUTLINED_FUNCTION_2(&dword_21DD93000, a2, a3, "Failed to ignore limit for %f more seconds: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

- (void)_handleCustomButtonResponse:(uint64_t)a1 forAction:(uint64_t)a2 error:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 134218242;
  *&v3[4] = a2;
  *&v3[12] = 2114;
  *&v3[14] = a1;
  OUTLINED_FUNCTION_2(&dword_21DD93000, a2, a3, "Failed to get response for action %ld: %{public}@.", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end