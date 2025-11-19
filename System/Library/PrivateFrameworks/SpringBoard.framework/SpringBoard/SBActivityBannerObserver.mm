@interface SBActivityBannerObserver
- (BOOL)_isActivityOngoing:(id)a3;
- (BOOL)_isBundleIdentifierSuppressed:(id)a3;
- (BOOL)_shouldShowSystemApertureUIForActivityItem:(id)a3;
- (BOOL)_shouldSuppressPresentationForActivityIdentifier:(id)a3;
- (BOOL)shouldHandleActivityItem:(id)a3;
- (BOOL)shouldHandleRedisplayOfActivityItem:(id)a3;
- (SBActivityBannerObserver)init;
- (id)_createActivityBannerViewControllerForItem:(id)a3 payloadIdentifier:(id)a4;
- (void)_addPresentable:(id)a3 forActivityIdentifier:(id)a4;
- (void)_dismissBannerWithActivityIdentifier:(id)a3 forceDismissal:(BOOL)a4;
- (void)_handleActivityAlert:(id)a3 present:(BOOL)a4;
- (void)_handleProminentActivityAlert:(id)a3 prominent:(BOOL)a4;
- (void)_postBannerWithActivityIdentifier:(id)a3 payloadIdentifier:(id)a4 prominent:(BOOL)a5 completion:(id)a6;
- (void)_postBannerWithAlert:(id)a3;
- (void)_processZStackParticipantSettings:(id)a3;
- (void)_removePresentable:(id)a3 forActivityIdentifier:(id)a4;
- (void)_stopAlertingForActivityIdentifier:(id)a3;
- (void)activityBannerDidDisappear:(id)a3 activityIdentifier:(id)a4;
- (void)activityBannerWantsToBeDismissed:(id)a3 activityIdentifier:(id)a4;
- (void)activityDidDismiss:(id)a3;
- (void)activityDidStart:(id)a3;
- (void)activityEnvironmentChanged:(int64_t)a3;
- (void)activityForBundleId:(id)a3 shouldPreventFromRevoke:(BOOL)a4;
- (void)activityProminenceChanged:(BOOL)a3 item:(id)a4;
- (void)dealloc;
- (void)dismissAlert:(id)a3;
- (void)presentAlert:(id)a3;
- (void)presentFallbackAlert:(id)a3;
- (void)redisplayActivity:(id)a3;
@end

@implementation SBActivityBannerObserver

- (SBActivityBannerObserver)init
{
  v17.receiver = self;
  v17.super_class = SBActivityBannerObserver;
  v2 = [(SBActivityBannerObserver *)&v17 init];
  if (v2)
  {
    v3 = objc_opt_new();
    prominentAlertPresentingActivities = v2->_prominentAlertPresentingActivities;
    v2->_prominentAlertPresentingActivities = v3;

    v5 = objc_opt_new();
    itemByActivityIdentifier = v2->_itemByActivityIdentifier;
    v2->_itemByActivityIdentifier = v5;

    v7 = objc_opt_new();
    bannerPresentableByActivityIdentifier = v2->_bannerPresentableByActivityIdentifier;
    v2->_bannerPresentableByActivityIdentifier = v7;

    v9 = objc_opt_new();
    ongoingActivityBannerPresentableByActivityIdentifier = v2->_ongoingActivityBannerPresentableByActivityIdentifier;
    v2->_ongoingActivityBannerPresentableByActivityIdentifier = v9;

    v11 = objc_opt_new();
    bannerAuthority = v2->_bannerAuthority;
    v2->_bannerAuthority = v11;

    v13 = [SBApp bannerManager];
    v14 = v2->_bannerAuthority;
    v15 = +[SBActivityBannerViewController requesterIdentifier];
    [v13 registerAuthority:v14 forRequesterIdentifier:v15];

    v2->_activityEnvironment = 0;
  }

  return v2;
}

- (void)dealloc
{
  prominentAlertPresentingActivities = self->_prominentAlertPresentingActivities;
  self->_prominentAlertPresentingActivities = 0;

  itemByActivityIdentifier = self->_itemByActivityIdentifier;
  self->_itemByActivityIdentifier = 0;

  bannerPresentableByActivityIdentifier = self->_bannerPresentableByActivityIdentifier;
  self->_bannerPresentableByActivityIdentifier = 0;

  activityIdentifiersPerScene = self->_activityIdentifiersPerScene;
  self->_activityIdentifiersPerScene = 0;

  ongoingActivityBannerPresentableByActivityIdentifier = self->_ongoingActivityBannerPresentableByActivityIdentifier;
  self->_ongoingActivityBannerPresentableByActivityIdentifier = 0;

  revokePreventionActivityBundleIdToActivityIdentifiers = self->_revokePreventionActivityBundleIdToActivityIdentifiers;
  self->_revokePreventionActivityBundleIdToActivityIdentifiers = 0;

  v9.receiver = self;
  v9.super_class = SBActivityBannerObserver;
  [(SBActivityBannerObserver *)&v9 dealloc];
}

- (void)activityDidStart:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  [(NSMutableDictionary *)self->_itemByActivityIdentifier setObject:v4 forKey:v5];
}

- (void)activityDidDismiss:(id)a3
{
  v9 = [a3 identifier];
  [(SBActivityBannerObserver *)self _dismissBannerWithActivityIdentifier:v9 forceDismissal:1];
  [(NSMutableDictionary *)self->_itemByActivityIdentifier removeObjectForKey:v9];
  v4 = [(NSMutableDictionary *)self->_ongoingActivityBannerPresentableByActivityIdentifier objectForKey:v9];
  v5 = objc_opt_class();
  v6 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    [v8 invalidate];
  }

  [(NSMutableDictionary *)self->_ongoingActivityBannerPresentableByActivityIdentifier removeObjectForKey:v9];
}

- (void)activityForBundleId:(id)a3 shouldPreventFromRevoke:(BOOL)a4
{
  v4 = a4;
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  revokePreventionActivityBundleIdToActivityIdentifiers = self->_revokePreventionActivityBundleIdToActivityIdentifiers;
  if (!v4)
  {
    v13 = [(NSMutableDictionary *)revokePreventionActivityBundleIdToActivityIdentifiers objectForKey:v6];
    v12 = [v13 copy];

    if (v12)
    {
      [(NSMutableDictionary *)self->_revokePreventionActivityBundleIdToActivityIdentifiers removeObjectForKey:v6];
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v14 = v12;
      v15 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v20;
        do
        {
          v18 = 0;
          do
          {
            if (*v20 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [(SBActivityBannerObserver *)self _dismissBannerWithActivityIdentifier:*(*(&v19 + 1) + 8 * v18++), v19];
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v16);
      }
    }

    goto LABEL_15;
  }

  if (!revokePreventionActivityBundleIdToActivityIdentifiers)
  {
    v8 = objc_opt_new();
    v9 = self->_revokePreventionActivityBundleIdToActivityIdentifiers;
    self->_revokePreventionActivityBundleIdToActivityIdentifiers = v8;

    revokePreventionActivityBundleIdToActivityIdentifiers = self->_revokePreventionActivityBundleIdToActivityIdentifiers;
  }

  v10 = [(NSMutableDictionary *)revokePreventionActivityBundleIdToActivityIdentifiers objectForKey:v6];

  if (!v10)
  {
    v11 = self->_revokePreventionActivityBundleIdToActivityIdentifiers;
    v12 = objc_opt_new();
    [(NSMutableDictionary *)v11 setObject:v12 forKey:v6];
LABEL_15:
  }
}

- (BOOL)shouldHandleRedisplayOfActivityItem:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 descriptor];
  v7 = [v6 presentationOptions];

  LODWORD(v6) = [(SBActivityBannerObserver *)self shouldHandleActivityItem:v4];
  if (v6 && !-[SBActivityBannerObserver _shouldSuppressPresentationForActivityIdentifier:](self, "_shouldSuppressPresentationForActivityIdentifier:", v5) && (([v7 isActionButtonInitiated] & 1) != 0 || objc_msgSend(v7, "shouldShowSystemAperture")))
  {
    v10 = [(NSMutableDictionary *)self->_ongoingActivityBannerPresentableByActivityIdentifier objectForKey:v5];
    v8 = v10 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)redisplayActivity:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(NSMutableDictionary *)self->_bannerPresentableByActivityIdentifier objectForKey:v5];

  if (v6)
  {
    v7 = SBLogActivity();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v27 = v5;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Already showing a banner", buf, 0xCu);
    }
  }

  else
  {
    v7 = [(NSMutableDictionary *)self->_ongoingActivityBannerPresentableByActivityIdentifier objectForKey:v5];
    v8 = [SBApp bannerManager];
    v9 = *MEMORY[0x277D68070];
    v24[0] = *MEMORY[0x277D68088];
    v24[1] = v9;
    v25[0] = MEMORY[0x277CBEC38];
    v25[1] = &unk_283371FA8;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
    v23 = 0;
    v11 = [v8 postPresentable:v7 withOptions:1 userInfo:v10 error:&v23];
    v12 = v23;

    v13 = SBLogActivity();
    v14 = v13;
    if (v11)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v27 = v5;
        _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] posted activity banner successfully", buf, 0xCu);
      }

      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __46__SBActivityBannerObserver_redisplayActivity___block_invoke;
      v20[3] = &unk_2783B47B0;
      v15 = v5;
      v21 = v15;
      v22 = v4;
      [(SBActivityBannerObserver *)self _sendAnalyticsEventWithPayloadBuilder:v20];
      v16 = objc_opt_class();
      v17 = v7;
      if (v16)
      {
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      v19 = v18;

      [(SBActivityBannerObserver *)self _addPresentable:v19 forActivityIdentifier:v15];
      v14 = v21;
    }

    else if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SBActivityBannerObserver redisplayActivity:];
    }
  }
}

id __46__SBActivityBannerObserver_redisplayActivity___block_invoke(uint64_t a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v8[0] = v2;
  v7[0] = @"activityId";
  v7[1] = @"bundleId";
  v3 = [v1 descriptor];
  v4 = [v3 platterTargetBundleIdentifier];
  v7[2] = @"eventType";
  v8[1] = v4;
  v8[2] = @"alert-banner";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

- (BOOL)shouldHandleActivityItem:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = a3;
  v5 = [v4 descriptor];
  v6 = [v5 presentationOptions];
  v7 = [v6 destinations];
  v8 = [v7 bs_containsObjectPassingTest:&__block_literal_global_364];

  LODWORD(self) = [(SBActivityBannerObserver *)self _shouldShowSystemApertureUIForActivityItem:v4];
  if (self)
  {
    v9 = [v6 destinations];
    v8 |= [v9 bs_containsObjectPassingTest:&__block_literal_global_27_2];
  }

  v10 = +[SBLiveActivityDomain rootSettings];
  v11 = [v10 disableActivityAlertsAsBanners];

  v12 = (v11 ^ 1) & v8;
  return v12;
}

- (void)presentAlert:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (SBUIIsSystemApertureEnabled())
  {
    [SBActivityBannerObserver presentAlert:a2];
  }

  if ([v5 canPresentInEnvironment:self->_activityEnvironment alertType:1])
  {
    [(SBActivityBannerObserver *)self _handleActivityAlert:v5 present:1];
  }

  else
  {
    v6 = SBLogActivity();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 item];
      v8 = [v7 identifier];
      v9 = 138543362;
      v10 = v8;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Not presenting activity alert because activity environment is ambient or lock screen is visible", &v9, 0xCu);
    }
  }
}

- (void)dismissAlert:(id)a3
{
  v5 = a3;
  if (SBUIIsSystemApertureEnabled())
  {
    [SBActivityBannerObserver dismissAlert:a2];
  }

  [(SBActivityBannerObserver *)self _handleActivityAlert:v5 present:0];
}

- (void)activityProminenceChanged:(BOOL)a3 item:(id)a4
{
  v4 = a3;
  v6 = [a4 identifier];
  [(SBActivityBannerObserver *)self _handleProminentActivityAlert:v6 prominent:v4];
}

- (void)activityEnvironmentChanged:(int64_t)a3
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_activityEnvironment != a3)
  {
    self->_activityEnvironment = a3;
    if (a3 == 1)
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v4 = [(NSMutableDictionary *)self->_itemByActivityIdentifier allValues];
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v11;
        do
        {
          v8 = 0;
          do
          {
            if (*v11 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v9 = [*(*(&v10 + 1) + 8 * v8) identifier];
            [(SBActivityBannerObserver *)self _dismissBannerWithActivityIdentifier:v9];

            ++v8;
          }

          while (v6 != v8);
          v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v6);
      }
    }
  }
}

- (void)presentFallbackAlert:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogActivity();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 item];
    v7 = [v6 identifier];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] posting banner as fallback alert", &v8, 0xCu);
  }

  [(SBActivityBannerObserver *)self _postBannerWithAlert:v4];
}

- (BOOL)_isActivityOngoing:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [(NSMutableDictionary *)self->_itemByActivityIdentifier objectForKey:v4];

  return v5 != 0;
}

- (BOOL)_isBundleIdentifierSuppressed:(id)a3
{
  v3 = SBApp;
  v4 = a3;
  v5 = [v3 windowSceneManager];
  v6 = [v5 activeDisplayWindowScene];

  v7 = [v6 zStackResolver];
  v8 = [v7 settingsOfParticipantWithIdentifier:29];
  v9 = [v8 associatedBundleIdentifiersToSuppressInSystemAperture];
  v10 = [v9 containsObject:v4];

  return v10;
}

- (BOOL)_shouldSuppressPresentationForActivityIdentifier:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SBActivityBannerObserver *)self _isActivityOngoing:v4])
  {
    v5 = [(NSMutableDictionary *)self->_itemByActivityIdentifier objectForKey:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 descriptor];
      v8 = [v7 presentationOptions];
      v9 = [v8 shouldSuppressAlertContentOnLockScreen];

      v10 = [v6 descriptor];
      v11 = [v10 presentationOptions];
      v12 = [v11 destinations];
      v13 = [v12 bs_containsObjectPassingTest:&__block_literal_global_40_5];
    }

    else
    {
      v13 = 0;
      v9 = 1;
    }

    v15 = +[SBControlCenterCoordinator sharedInstance];
    v16 = [v15 isVisible];

    v17 = +[SBCoverSheetPresentationManager sharedInstance];
    v18 = [v17 isVisible] & (v16 ^ 1);

    if (v18 == 1 && ((v9 | v13) & 1) != 0)
    {
      v19 = SBLogActivity();
      LOBYTE(v14) = 1;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v31 = 138544386;
        v32 = v4;
        v33 = 1024;
        v34 = v9;
        v35 = 1024;
        v36 = 1;
        v37 = 1024;
        v38 = v13;
        v39 = 1024;
        v40 = v16 & 1;
        _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Not handling activity banner prominence update; allowAlertsOnCoverSheet: %{BOOL}u, isCoverSheetVisible: %{BOOL}u, hasLockScreenPlatter: %{BOOL}u, controlCenterVisible: %{BOOL}u", &v31, 0x24u);
      }
    }

    else
    {
      v19 = [v6 descriptor];
      v20 = [v19 presentationOptions];
      v21 = [v20 destinations];
      v22 = [v21 bs_containsObjectPassingTest:&__block_literal_global_45_2];

      v23 = [v20 destinations];
      v24 = [v23 bs_containsObjectPassingTest:&__block_literal_global_47_2];

      v25 = +[SBLockScreenManager sharedInstance];
      v26 = [v25 coverSheetViewController];

      if (v22 && v24 && ([v26 isLockScreenShowingDefaultContent] & v18 & 1) != 0)
      {
        LOBYTE(v14) = 1;
      }

      else
      {
        v27 = [v6 descriptor];
        v28 = [v27 platterTargetBundleIdentifier];

        v14 = [(SBActivityBannerObserver *)self _isBundleIdentifierSuppressed:v28];
        if (v14)
        {
          v29 = SBLogActivity();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v31 = 138543362;
            v32 = v4;
            _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Not handling activity prominence update because activity bundle identifier is suppressed by existing content on display", &v31, 0xCu);
          }
        }
      }
    }
  }

  else
  {
    v6 = SBLogActivity();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v31 = 138543362;
      v32 = v4;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] activity has ended, not handling prominence update", &v31, 0xCu);
    }

    LOBYTE(v14) = 1;
  }

  return v14;
}

- (void)_handleProminentActivityAlert:(id)a3 prominent:(BOOL)a4
{
  v4 = a4;
  v13 = *MEMORY[0x277D85DE8];
  v6 = a3;
  BSDispatchQueueAssertMain();
  if (![(SBActivityBannerObserver *)self _shouldSuppressPresentationForActivityIdentifier:v6])
  {
    v7 = SBLogActivity();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      v10 = v6;
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] handling activity prominence: %d", &v9, 0x12u);
    }

    if (v4)
    {
      if (self->_activityEnvironment == 1)
      {
        v8 = SBLogActivity();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [SBActivityBannerObserver _handleProminentActivityAlert:prominent:];
        }
      }

      else
      {
        [(SBActivityBannerObserver *)self _postBannerWithActivityIdentifier:v6 payloadIdentifier:0 prominent:1 completion:0];
      }
    }

    else
    {
      [(SBActivityBannerObserver *)self _dismissBannerWithActivityIdentifier:v6 forceDismissal:1];
    }
  }
}

- (void)_handleActivityAlert:(id)a3 present:(BOOL)a4
{
  v4 = a4;
  v12 = *MEMORY[0x277D85DE8];
  v6 = a3;
  BSDispatchQueueAssertMain();
  v7 = [v6 item];
  v8 = [v7 identifier];

  if (v4)
  {
    if ([(SBActivityBannerObserver *)self _isActivityOngoing:v8])
    {
      [(SBActivityBannerObserver *)self _postBannerWithAlert:v6];
    }

    else
    {
      v9 = SBLogActivity();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        v11 = v8;
        _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] activity has ended, not handling alert update", &v10, 0xCu);
      }
    }
  }

  else
  {
    [(SBActivityBannerObserver *)self _dismissBannerWithActivityIdentifier:v8];
  }
}

- (void)_postBannerWithAlert:(id)a3
{
  v4 = a3;
  BSDispatchQueueAssertMain();
  v5 = [v4 item];
  v6 = [v5 identifier];

  v7 = [v4 payloadIdentifier];
  objc_initWeak(&location, self);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__SBActivityBannerObserver__postBannerWithAlert___block_invoke;
  v9[3] = &unk_2783C0750;
  objc_copyWeak(&v11, &location);
  v8 = v4;
  v10 = v8;
  [(SBActivityBannerObserver *)self _postBannerWithActivityIdentifier:v6 payloadIdentifier:v7 prominent:0 completion:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __49__SBActivityBannerObserver__postBannerWithAlert___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!a2)
  {
    v5 = WeakRetained;
    [*(a1 + 32) alertWithScreenOn:1 playSound:1];
    objc_storeStrong(v5 + 9, *(a1 + 32));
    WeakRetained = v5;
  }
}

- (id)_createActivityBannerViewControllerForItem:(id)a3 payloadIdentifier:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(SBActivityBannerObserver *)self _shouldShowSystemApertureUIForActivityItem:v6])
  {
LABEL_12:
    v19 = [v6 descriptor];
    v20 = [v19 alertSceneTargetBundleIdentifiers];
    v21 = [objc_alloc(MEMORY[0x277CB98A8]) initWithDestination:1];
    v22 = [v20 objectForKey:v21];
    v23 = [v19 contentType];
    if (v22)
    {
      v24 = v22;
    }

    else if (v23)
    {
      v24 = [v19 platterTargetBundleIdentifier];
    }

    else
    {
      v24 = @"com.apple.chrono.WidgetRenderer-Activities";
    }

    v25 = v24;
    v18 = [(SBActivityViewController *)[SBActivityBannerViewController alloc] initWithActivityItem:v6 sceneType:1 payloadID:v7 targetBundleIdentifier:v24];

    goto LABEL_18;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [v6 descriptor];
  v9 = [v8 presentationOptions];
  v10 = [v9 destinations];

  v11 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v11)
  {

    goto LABEL_12;
  }

  v12 = v11;
  v13 = 0;
  v14 = 0;
  v15 = *v28;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v28 != v15)
      {
        objc_enumerationMutation(v10);
      }

      v17 = *(*(&v27 + 1) + 8 * i);
      v14 |= [v17 destination] == 2;
      v13 |= [v17 destination] == 1;
    }

    v12 = [v10 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v12);

  if (v13 & 1 | ((v14 & 1) == 0))
  {
    goto LABEL_12;
  }

  v18 = [[SBActivitySystemApertureBannerViewController alloc] initWithActivityItem:v6];
LABEL_18:

  return v18;
}

- (void)_postBannerWithActivityIdentifier:(id)a3 payloadIdentifier:(id)a4 prominent:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a6;
  BSDispatchQueueAssertMain();
  v13 = [(NSMutableDictionary *)self->_itemByActivityIdentifier objectForKey:v10];
  v14 = [v13 descriptor];
  if (v14)
  {
    if (v7)
    {
      [(NSMutableSet *)self->_prominentAlertPresentingActivities addObject:v10];
    }

    v15 = [(NSMutableDictionary *)self->_bannerPresentableByActivityIdentifier objectForKey:v10];

    if (v15)
    {
      v16 = SBLogActivity();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v31 = v10;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Already showing a banner", buf, 0xCu);
      }
    }

    else
    {
      [(SBActivityBannerObserver *)self _dismissBannerWithActivityIdentifier:v10];
      v18 = [(NSMutableDictionary *)self->_ongoingActivityBannerPresentableByActivityIdentifier objectForKey:v10];
      v19 = objc_opt_class();
      v20 = v18;
      if (v19)
      {
        if (objc_opt_isKindOfClass())
        {
          v21 = v20;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v16 = v21;

      if (v16)
      {
        v22 = v16;
        [(SBActivityBannerObserver *)self redisplayActivity:v13];
      }

      else
      {
        v23 = [(SBActivityBannerObserver *)self _createActivityBannerViewControllerForItem:v13 payloadIdentifier:v11];
        [v23 setBannerDelegate:self];
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __101__SBActivityBannerObserver__postBannerWithActivityIdentifier_payloadIdentifier_prominent_completion___block_invoke;
        v24[3] = &unk_2783C0778;
        v25 = v10;
        v26 = self;
        v22 = v23;
        v27 = v22;
        v29 = v12;
        v28 = v14;
        [v22 ensureContent:MEMORY[0x277D85CD0] queue:v24 completion:1.79769313e308];
      }
    }

    goto LABEL_20;
  }

  v17 = SBLogActivity();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [SBActivityBannerObserver _postBannerWithActivityIdentifier:payloadIdentifier:prominent:completion:];
  }

  if (v12)
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBActivityBannerObserverErrorDomain" code:1 userInfo:0];
    (*(v12 + 2))(v12, v16);
LABEL_20:
  }
}

void __101__SBActivityBannerObserver__postBannerWithActivityIdentifier_payloadIdentifier_prominent_completion___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  BSDispatchQueueAssertMain();
  if (v3)
  {
    v4 = SBLogActivity();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __101__SBActivityBannerObserver__postBannerWithActivityIdentifier_payloadIdentifier_prominent_completion___block_invoke_cold_1(a1);
    }

    [*(a1 + 40) _removePresentable:*(a1 + 48) forActivityIdentifier:*(a1 + 32)];
    [*(a1 + 48) invalidate];
    v5 = *(a1 + 64);
    if (v5)
    {
      (*(v5 + 16))(v5, v3);
    }
  }

  else
  {
    v6 = (a1 + 32);
    if ([*(a1 + 40) _isActivityOngoing:*(a1 + 32)])
    {
      v7 = [*(*(a1 + 40) + 24) objectForKey:*(a1 + 32)];

      if (v7)
      {
        v8 = SBLogActivity();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __101__SBActivityBannerObserver__postBannerWithActivityIdentifier_payloadIdentifier_prominent_completion___block_invoke_cold_2(v6, v8, v9, v10, v11, v12, v13, v14);
        }
      }

      else
      {
        v19 = objc_alloc(MEMORY[0x277CBEB38]);
        v37 = *MEMORY[0x277D68070];
        v38 = &unk_283371FA8;
        v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        v21 = [v19 initWithDictionary:v20];

        v22 = [*(a1 + 56) presentationOptions];
        v23 = [v22 isActionButtonInitiated];

        if (v23)
        {
          [v21 setValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D68088]];
        }

        v24 = [SBApp bannerManager];
        v25 = *(a1 + 48);
        v36 = 0;
        v26 = [v24 postPresentable:v25 withOptions:1 userInfo:v21 error:&v36];
        v27 = v36;

        v28 = SBLogActivity();
        v29 = v28;
        if (v26)
        {
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v30 = *v6;
            *buf = 138543362;
            v40 = v30;
            _os_log_impl(&dword_21ED4E000, v29, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] posted activity banner successfully", buf, 0xCu);
          }

          v33[0] = MEMORY[0x277D85DD0];
          v33[1] = 3221225472;
          v33[2] = __101__SBActivityBannerObserver__postBannerWithActivityIdentifier_payloadIdentifier_prominent_completion___block_invoke_56;
          v33[3] = &unk_2783B47B0;
          v31 = *(a1 + 40);
          v34 = *(a1 + 32);
          v35 = *(a1 + 56);
          [v31 _sendAnalyticsEventWithPayloadBuilder:v33];
          [*(a1 + 40) _addPresentable:*(a1 + 48) forActivityIdentifier:*(a1 + 32)];
          [*(*(a1 + 40) + 40) setObject:*(a1 + 48) forKey:*(a1 + 32)];
        }

        else
        {
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            __101__SBActivityBannerObserver__postBannerWithActivityIdentifier_payloadIdentifier_prominent_completion___block_invoke_cold_3((a1 + 32));
          }

          [*(*(a1 + 40) + 8) removeObject:*(a1 + 32)];
        }

        v32 = *(a1 + 64);
        if (v32)
        {
          (*(v32 + 16))(v32, v27);
        }
      }
    }

    else
    {
      v15 = SBLogActivity();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *v6;
        *buf = 138543362;
        v40 = v16;
        _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] activity has ended, not posting a banner", buf, 0xCu);
      }

      [*(a1 + 40) _removePresentable:*(a1 + 48) forActivityIdentifier:*(a1 + 32)];
      [*(a1 + 48) invalidate];
      v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SBActivityBannerObserverErrorDomain" code:2 userInfo:0];
      v18 = *(a1 + 64);
      if (v18)
      {
        (*(v18 + 16))(v18, v17);
      }
    }
  }
}

id __101__SBActivityBannerObserver__postBannerWithActivityIdentifier_payloadIdentifier_prominent_completion___block_invoke_56(uint64_t a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v7[0] = v2;
  v6[0] = @"activityId";
  v6[1] = @"bundleId";
  v3 = [v1 platterTargetBundleIdentifier];
  v6[2] = @"eventType";
  v7[1] = v3;
  v7[2] = @"alert-banner";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

- (void)_dismissBannerWithActivityIdentifier:(id)a3 forceDismissal:(BOOL)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  BSDispatchQueueAssertMain();
  v7 = [(NSMutableDictionary *)self->_bannerPresentableByActivityIdentifier objectForKey:v6];
  if (v7)
  {
    v8 = [(NSMutableDictionary *)self->_itemByActivityIdentifier objectForKey:v6];
    v9 = [v8 descriptor];
    v10 = [v9 platterTargetBundleIdentifier];

    if (v10 && ([(NSMutableDictionary *)self->_revokePreventionActivityBundleIdToActivityIdentifiers objectForKey:v10], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = v11;
      if (([v11 containsObject:v6]& 1) == 0)
      {
        [v12 addObject:v6];
      }

      v13 = SBLogActivity();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v24 = v6;
        _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Revoke prevention, not dismissing it", buf, 0xCu);
      }
    }

    else
    {
      if ([(NSMutableSet *)self->_prominentAlertPresentingActivities containsObject:v6])
      {
        if (!a4)
        {
          v12 = SBLogActivity();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v24 = v6;
            _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Showing alert prominently, not dismissing it", buf, 0xCu);
          }

          goto LABEL_18;
        }

        [(NSMutableSet *)self->_prominentAlertPresentingActivities removeObject:v6];
      }

      v14 = [SBApp bannerManager];
      v15 = [MEMORY[0x277CF0AC0] uniqueIdentificationForPresentable:v7];
      v21 = *MEMORY[0x277D68068];
      v22 = MEMORY[0x277CBEC38];
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      v20 = 0;
      v17 = [v14 revokePresentablesWithIdentification:v15 reason:@"_SBActivityBannerRevocationReasonDismissed" options:0 userInfo:v16 error:&v20];
      v12 = v20;

      v18 = SBLogActivity();
      v19 = v18;
      if (v12)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [SBActivityBannerObserver _dismissBannerWithActivityIdentifier:forceDismissal:];
        }
      }

      else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v24 = v6;
        _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] dismissed the alert successfully", buf, 0xCu);
      }

      [(SBActivityBannerObserver *)self _stopAlertingForActivityIdentifier:v6];
    }

LABEL_18:
  }
}

- (void)_stopAlertingForActivityIdentifier:(id)a3
{
  activeAlert = self->_activeAlert;
  v5 = a3;
  v6 = [(SBActivityAlert *)activeAlert item];
  v7 = [v6 identifier];
  v8 = [v7 isEqualToString:v5];

  if (v8)
  {
    [(SBActivityAlert *)self->_activeAlert stopAlerting];
    v9 = self->_activeAlert;
    self->_activeAlert = 0;
  }
}

- (void)_addPresentable:(id)a3 forActivityIdentifier:(id)a4
{
  v15 = a4;
  bannerPresentableByActivityIdentifier = self->_bannerPresentableByActivityIdentifier;
  v7 = a3;
  [(NSMutableDictionary *)bannerPresentableByActivityIdentifier setObject:v7 forKey:v15];
  v8 = [v7 _sbWindowScene];

  if (v8)
  {
    activityIdentifiersPerScene = self->_activityIdentifiersPerScene;
    if (!activityIdentifiersPerScene)
    {
      v10 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
      v11 = self->_activityIdentifiersPerScene;
      self->_activityIdentifiersPerScene = v10;

      activityIdentifiersPerScene = self->_activityIdentifiersPerScene;
    }

    v12 = [(NSMapTable *)activityIdentifiersPerScene objectForKey:v8];
    if (!v12)
    {
      v12 = [MEMORY[0x277CBEB58] set];
      [(NSMapTable *)self->_activityIdentifiersPerScene setObject:v12 forKey:v8];
    }

    if (![v12 count])
    {
      v13 = [v8 zStackResolver];
      v14 = [v13 addObserver:self ofParticipantWithIdentifier:29];
    }

    [v12 addObject:v15];
  }
}

- (void)_removePresentable:(id)a3 forActivityIdentifier:(id)a4
{
  v11 = a4;
  bannerPresentableByActivityIdentifier = self->_bannerPresentableByActivityIdentifier;
  v7 = a3;
  [(NSMutableDictionary *)bannerPresentableByActivityIdentifier removeObjectForKey:v11];
  [(NSMutableSet *)self->_prominentAlertPresentingActivities removeObject:v11];
  v8 = [v7 _sbWindowScene];

  if (v8)
  {
    v9 = [(NSMapTable *)self->_activityIdentifiersPerScene objectForKey:v8];
    if ([v9 containsObject:v11])
    {
      [v9 removeObject:v11];
      if (![v9 count])
      {
        v10 = [v8 zStackResolver];
        [v10 removeObserver:self ofParticipantWithIdentifier:29];
      }
    }
  }
}

- (BOOL)_shouldShowSystemApertureUIForActivityItem:(id)a3
{
  v3 = [a3 descriptor];
  v4 = [v3 presentationOptions];
  v5 = [v4 isActionButtonInitiated];

  v6 = [v3 presentationOptions];
  v7 = objc_opt_respondsToSelector();

  if ((v7 & 1) == 0)
  {
    if (!v5)
    {
      goto LABEL_6;
    }

LABEL_5:
    v5 = SBSIsSystemApertureAvailable() ^ 1;
    goto LABEL_6;
  }

  v8 = [v3 presentationOptions];
  v9 = [v8 shouldShowSystemAperture];

  if ((v9 | v5))
  {
    goto LABEL_5;
  }

  LOBYTE(v5) = 0;
LABEL_6:

  return v5;
}

- (void)activityBannerDidDisappear:(id)a3 activityIdentifier:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a3;
  BSDispatchQueueAssertMain();
  v8 = SBLogActivity();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v6;
    _os_log_impl(&dword_21ED4E000, v8, OS_LOG_TYPE_DEFAULT, "[ActivityID: %{public}@] Activity banner dismissed", &v9, 0xCu);
  }

  [(SBActivityBannerObserver *)self _removePresentable:v7 forActivityIdentifier:v6];
}

- (void)activityBannerWantsToBeDismissed:(id)a3 activityIdentifier:(id)a4
{
  v5 = a4;
  if ([(SBActivityBannerObserver *)self _isActivityOngoing:?])
  {
    [(SBActivityBannerObserver *)self _dismissBannerWithActivityIdentifier:v5];
  }
}

- (void)_processZStackParticipantSettings:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  itemByActivityIdentifier = self->_itemByActivityIdentifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __62__SBActivityBannerObserver__processZStackParticipantSettings___block_invoke;
  v6[3] = &unk_2783C07A0;
  objc_copyWeak(&v7, &location);
  [(NSMutableDictionary *)itemByActivityIdentifier enumerateKeysAndObjectsUsingBlock:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __62__SBActivityBannerObserver__processZStackParticipantSettings___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = [v8 descriptor];
    v6 = [v5 platterTargetBundleIdentifier];

    if ([WeakRetained _isBundleIdentifierSuppressed:v6])
    {
      v7 = [v8 identifier];
      [WeakRetained _dismissBannerWithActivityIdentifier:v7 forceDismissal:1];
    }
  }
}

- (void)redisplayActivity:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_4(&dword_21ED4E000, v0, v1, "[ActivityID: %{public}@] throws an error while posting activity banner: %{public}@");
}

- (void)presentAlert:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"SBUIIsSystemApertureEnabled() == false"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBActivityBannerObserver.m";
    v9 = 1024;
    v10 = 205;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)dismissAlert:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@", @"SBUIIsSystemApertureEnabled() == false"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0_0();
    v8 = @"SBActivityBannerObserver.m";
    v9 = 1024;
    v10 = 215;
    v11 = v6;
    v12 = v2;
    _os_log_error_impl(&dword_21ED4E000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __101__SBActivityBannerObserver__postBannerWithActivityIdentifier_payloadIdentifier_prominent_completion___block_invoke_cold_1(uint64_t a1)
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_4(&dword_21ED4E000, v1, v2, "[ActivityID: %{public}@] throws an error while ensuring activity content: %{public}@", v3, DWORD2(v3));
}

void __101__SBActivityBannerObserver__postBannerWithActivityIdentifier_payloadIdentifier_prominent_completion___block_invoke_cold_3(void *a1)
{
  LODWORD(v3) = 138543618;
  *(&v3 + 4) = *a1;
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_4(&dword_21ED4E000, v1, v2, "[ActivityID: %{public}@] throws an error while posting activity banner: %{public}@", v3, DWORD2(v3));
}

- (void)_dismissBannerWithActivityIdentifier:forceDismissal:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_4(&dword_21ED4E000, v0, v1, "[ActivityID: %{public}@] throws an error while dismissing activity alert: %{public}@");
}

@end