@interface SBNotificationCarPlayDestination
- (BOOL)_inCallOrFaceTime;
- (BOOL)_notificationRequestShouldShowModalSubActions:(id)a3;
- (BOOL)_notificationRequestSupportsSubActions:(id)a3;
- (BOOL)_setSuspended:(BOOL)a3 forPresentingAlertControllerForPresentable:(id)a4;
- (BOOL)_shouldAnnounceNotificationForActiveAVSession:(id)a3;
- (BOOL)_shouldAnnounceNotificationRequest:(id)a3;
- (BOOL)_shouldDeferPostingNotificationRequestForAnnounce:(id)a3;
- (BOOL)presentableViewControllerClosesByDefault:(id)a3;
- (NCCarPlayBannerSource)_carPlayBannerSource;
- (NCNotificationAlertDestinationDelegate)delegate;
- (SBNCAlertingController)alertingController;
- (SBNotificationCarPlayDestination)init;
- (id)_actionForNotificationRequest:(id)a3;
- (id)_allNotificationActionsForNotificationRequest:(id)a3;
- (id)_announcementStateObserver;
- (id)_appPolicyEvaluator;
- (id)_bulletinForNotificationRequest:(id)a3;
- (id)_closeNotificationActionForNotificationRequest:(id)a3;
- (id)_ignoreActionForNotificationRequest:(id)a3;
- (id)_newPresentableForNotificationRequest:(id)a3 layoutDescription:(id)a4;
- (id)_notificationRequestForAnnounceWithIdentifier:(id)a3;
- (id)_policyForApp:(id)a3;
- (id)_presentablesWithRequestIdentifier:(id)a3;
- (id)_removePresentable:(id)a3;
- (id)_subActionLabelsForNotificationRequest:(id)a3;
- (id)_subActionsForNotificationRequest:(id)a3;
- (id)_supplementaryActionsForNotificationRequest:(id)a3;
- (id)keyWindowForScreen:(id)a3;
- (int64_t)_announceDeactivationReasonForBannerRevocationReason:(id)a3;
- (int64_t)_defaultActionTypeForNotificationRequest:(id)a3;
- (int64_t)_effectiveDefaultActionTypeForNotificationRequest:(id)a3;
- (void)_addPresentable:(id)a3;
- (void)_callOrFaceTimeStateChanged;
- (void)_cancelAnnounceForNotificationRequest:(id)a3 withReason:(int64_t)a4 deactivateAnnounce:(BOOL)a5;
- (void)_clearNotificationRequestPendingAnnounceDeactivationIfNecessary;
- (void)_flushAnnounceNotificationRequestsShouldAnnounce:(BOOL)a3;
- (void)_flushNotificationRequestsPendingAnnounce;
- (void)_invalidateAnnounceTimeoutTimer;
- (void)_modifyNotificationRequest:(id)a3 inStore:(id)a4;
- (void)_postNotificationRequest:(id)a3 shouldAnnounce:(BOOL)a4;
- (void)_queueNotificationRequestWhileAnnouncing:(id)a3;
- (void)_requestAnnounceForNotificationRequest:(id)a3;
- (void)_setNotificationRequestCurrentlyAnnouncing:(id)a3;
- (void)_startAnnounceTimeoutTimer;
- (void)_voicePromptStyleChanged:(id)a3;
- (void)_withdrawNotificationRequest:(id)a3 inStore:(id)a4;
- (void)bannerHostDidBecomeAvailableForMonitorListener:(id)a3;
- (void)bannerHostDidBecomeUnavailableForMonitorListener:(id)a3;
- (void)dealloc;
- (void)didCancelBannerOfPresentableViewController:(id)a3 reason:(id)a4;
- (void)didSelectBannerOfPresentableViewController:(id)a3;
- (void)modifyNotificationRequest:(id)a3;
- (void)notificationAnnouncementObserver:(id)a3 announcementSpeakingStateDidUpdate:(int64_t)a4 forNotificationRequestIdentifiers:(id)a5;
- (void)postNotificationRequest:(id)a3;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillAppearAsBanner:(id)a3;
- (void)withdrawNotificationRequest:(id)a3;
@end

@implementation SBNotificationCarPlayDestination

- (id)_appPolicyEvaluator
{
  appPolicyEvaluator = self->_appPolicyEvaluator;
  if (!appPolicyEvaluator)
  {
    v4 = objc_alloc_init(MEMORY[0x277CF8A28]);
    v5 = self->_appPolicyEvaluator;
    self->_appPolicyEvaluator = v4;

    [(CRCarPlayAppPolicyEvaluator *)self->_appPolicyEvaluator setGeoSupported:1];
    appPolicyEvaluator = self->_appPolicyEvaluator;
  }

  return appPolicyEvaluator;
}

- (NCNotificationAlertDestinationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)_inCallOrFaceTime
{
  v2 = +[SBTelephonyManager sharedTelephonyManager];
  if ([v2 inCall])
  {
    v3 = 1;
  }

  else
  {
    v4 = +[SBConferenceManager sharedInstance];
    v3 = [v4 inFaceTime];
  }

  return v3;
}

- (SBNCAlertingController)alertingController
{
  WeakRetained = objc_loadWeakRetained(&self->_alertingController);

  return WeakRetained;
}

- (NCCarPlayBannerSource)_carPlayBannerSource
{
  carPlayBannerSource = self->_carPlayBannerSource;
  if (!carPlayBannerSource)
  {
    v4 = objc_alloc_init(MEMORY[0x277D78048]);
    v5 = self->_carPlayBannerSource;
    self->_carPlayBannerSource = v4;

    carPlayBannerSource = self->_carPlayBannerSource;
  }

  return carPlayBannerSource;
}

- (void)_callOrFaceTimeStateChanged
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_presentables;
  v3 = [(NSHashTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) invalidateDisplayProperties];
      }

      while (v4 != v6);
      v4 = [(NSHashTable *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (SBNotificationCarPlayDestination)init
{
  v12.receiver = self;
  v12.super_class = SBNotificationCarPlayDestination;
  v2 = [(SBNotificationCarPlayDestination *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CF0A78]);
    v4 = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.CarPlayApp", 0}];
    v5 = [v3 initWithServiceDomain:@"com.apple.frontboard" authorizedBundleIDs:v4];
    bannerHostMonitorListener = v2->_bannerHostMonitorListener;
    v2->_bannerHostMonitorListener = v5;

    [(BNBannerHostMonitorListener *)v2->_bannerHostMonitorListener addObserver:v2];
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v2 selector:sel__callOrFaceTimeStateChanged name:@"SBCallCountChangedNotification" object:0];
    [v7 addObserver:v2 selector:sel__callOrFaceTimeStateChanged name:@"SBFaceTimeStateChangedNotification" object:0];
    v8 = MEMORY[0x277D26E10];
    v9 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277D26E10]];
    v10 = [MEMORY[0x277D26E58] sharedAVSystemController];
    [v10 setAttribute:v9 forKey:*MEMORY[0x277D26DD0] error:0];

    [v7 addObserver:v2 selector:sel__voicePromptStyleChanged_ name:*v8 object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  [(BSAbsoluteMachTimer *)self->_announceTimeoutTimer invalidate];
  v4.receiver = self;
  v4.super_class = SBNotificationCarPlayDestination;
  [(SBNotificationCarPlayDestination *)&v4 dealloc];
}

- (id)keyWindowForScreen:(id)a3
{
  v4 = a3;
  if ([(SBNotificationCarPlayDestination *)self isActive])
  {
    v5 = [(SBNotificationCarPlayDestination *)self _carPlayBannerSource];
    v6 = [v5 keyWindowForScreen:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)postNotificationRequest:(id)a3
{
  v4 = a3;
  [(SBNotificationCarPlayDestination *)self _postNotificationRequest:v4 shouldAnnounce:[(SBNotificationCarPlayDestination *)self _shouldAnnounceNotificationRequest:v4]];
}

- (void)_postNotificationRequest:(id)a3 shouldAnnounce:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 alertOptions];
    v9 = [v8 shouldSuppress];

    if ((v9 & 1) == 0)
    {
      if ([(SBNotificationCarPlayDestination *)self _shouldDeferPostingNotificationRequestForAnnounce:v7])
      {
        [(SBNotificationCarPlayDestination *)self _queueNotificationRequestWhileAnnouncing:v7];
      }

      else
      {
        [(SBNotificationCarPlayDestination *)self _clearNotificationRequestPendingAnnounceDeactivationIfNecessary];
        if (!-[SBNotificationCarPlayDestination _isCurrentlyAnnouncing](self, "_isCurrentlyAnnouncing") || (-[SBNotificationCarPlayDestination _notificationRequestCurrentlyAnnouncing](self, "_notificationRequestCurrentlyAnnouncing"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 matchesRequest:v7], v10, v11))
        {
          v12 = [(SBNotificationCarPlayDestination *)self _carPlayBannerSource];
          v25 = 0;
          v13 = [v12 layoutDescriptionWithError:&v25];
          v14 = v25;

          if (v13)
          {
            v15 = [(SBNotificationCarPlayDestination *)self _newPresentableForNotificationRequest:v7 layoutDescription:v13];
            v16 = [(SBNotificationCarPlayDestination *)self _carPlayBannerSource];
            v24 = 0;
            v17 = [v16 postPresentable:v15 options:0 userInfo:0 error:&v24];
            v18 = v24;

            if ((v17 & 1) == 0)
            {
              if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
              {
                [SBNotificationCarPlayDestination _postNotificationRequest:shouldAnnounce:];
              }

              v19 = [(SBNotificationCarPlayDestination *)self _removePresentable:v15];
            }
          }

          else
          {
            if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
            {
              [SBNotificationCarPlayDestination _postNotificationRequest:shouldAnnounce:];
            }

            v18 = v14;
          }
        }

        if (v4)
        {
          v20 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
          v21 = v20;
          if (v20)
          {
            v22 = v20;
          }

          else
          {
            v22 = v7;
          }

          [(SBNotificationCarPlayDestination *)self _setNotificationRequestCurrentlyAnnouncing:v22];

          [(SBNotificationCarPlayDestination *)self _requestAnnounceForNotificationRequest:v7];
        }
      }
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__SBNotificationCarPlayDestination__postNotificationRequest_shouldAnnounce___block_invoke;
    block[3] = &unk_2783A8C18;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __76__SBNotificationCarPlayDestination__postNotificationRequest_shouldAnnounce___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 destinationDidBecomeReadyToReceiveNotifications:*(a1 + 32)];
}

- (void)modifyNotificationRequest:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = [v4 carPlayRequestIdentifier];
    v7 = [(SBNotificationCarPlayDestination *)self _presentablesWithRequestIdentifier:v6];

    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v13;
      do
      {
        v11 = 0;
        do
        {
          if (*v13 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v12 + 1) + 8 * v11++) updateRequestToInstance:v5];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v9);
    }

    [(SBNotificationCarPlayDestination *)self _modifyNotificationRequest:v5 inStore:self->_notificationRequestsForAnnounce];
    [(SBNotificationCarPlayDestination *)self _modifyNotificationRequest:v5 inStore:self->_notificationRequestsPendingAnnounce];
  }
}

- (void)withdrawNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 carPlayRequestIdentifier];
    v7 = [(SBNotificationCarPlayDestination *)self _carPlayBannerSource];
    v10 = 0;
    v8 = [v7 revokePresentableWithRequestIdentifier:v6 reason:@"SBBannerRevocationReasonCarPlayDestinationExplicitDismissal" animated:1 userInfo:0 error:&v10];
    v9 = v10;

    if (v8)
    {
      [(SBNotificationCarPlayDestination *)self _cancelAnnounceForNotificationRequest:v5 withReason:[(SBNotificationCarPlayDestination *)self _announceDeactivationReasonForBannerRevocationReason:@"SBBannerRevocationReasonCarPlayDestinationExplicitDismissal"] deactivateAnnounce:0];
      [(SBNotificationCarPlayDestination *)self _withdrawNotificationRequest:v5 inStore:self->_notificationRequestsPendingAnnounce];
    }

    else if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      [SBNotificationCarPlayDestination withdrawNotificationRequest:];
    }
  }
}

- (void)bannerHostDidBecomeAvailableForMonitorListener:(id)a3
{
  v4 = [MEMORY[0x277D0EB00] sharedConfiguration];
  v5 = [v4 currentCountrySupportsCarIntegration];

  [(CRCarPlayAppPolicyEvaluator *)self->_appPolicyEvaluator setGeoSupported:v5];
  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 postNotificationName:@"SBNotificationCarPlayDestinationAvailabilityDidChange" object:self];
}

- (void)bannerHostDidBecomeUnavailableForMonitorListener:(id)a3
{
  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 postNotificationName:@"SBNotificationCarPlayDestinationAvailabilityDidChange" object:self];

  [(NCCarPlayBannerSource *)self->_carPlayBannerSource invalidate];
  carPlayBannerSource = self->_carPlayBannerSource;
  self->_carPlayBannerSource = 0;
}

- (void)presentableWillAppearAsBanner:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

  v9 = [v8 notificationRequest];

  v10 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
  v11 = [v9 matchesRequest:v10];

  v12 = [(SBNotificationCarPlayDestination *)self delegate];
  [v12 destination:self willPresentNotificationRequest:v9 suppressAlerts:v11];

  if ([(SBNotificationCarPlayDestination *)self _shouldAnnounceNotificationRequest:v9]&& ([(NSMutableArray *)self->_notificationRequestsForAnnounce containsObject:v9]& 1) == 0 && ([(NSMutableArray *)self->_notificationRequestsPendingAVSession containsObject:v9]& 1) == 0)
  {
    v13 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = [v9 notificationIdentifier];
      v16 = [v15 un_logDigest];
      v20 = 138543362;
      v21 = v16;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "CarPlay requesting announce again for notification request %{public}@ on banner presentation", &v20, 0xCu);
    }

    v17 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = v9;
    }

    [(SBNotificationCarPlayDestination *)self _setNotificationRequestCurrentlyAnnouncing:v19];

    [(SBNotificationCarPlayDestination *)self _requestAnnounceForNotificationRequest:v9];
  }
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v17 = v6;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v17;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v11 = [(SBNotificationCarPlayDestination *)self _removePresentable:v10];

  v12 = [v11 notificationRequest];
  if (([v7 isEqualToString:*MEMORY[0x277CF91C0]] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277CF91D0]) & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277D77FF8]) & 1) != 0 || objc_msgSend(v7, "isEqualToString:", *MEMORY[0x277D78000]))
  {
    v13 = [(SBNotificationCarPlayDestination *)self _ignoreActionForNotificationRequest:v12];
    v14 = v13;
    if (v13)
    {
      (*(v13 + 16))(v13);
    }
  }

  if (([v7 isEqualToString:@"SBBannerRevocationReasonCarPlayDestinationUserAction"] & 1) == 0)
  {
    [(SBNotificationCarPlayDestination *)self _cancelAnnounceForNotificationRequest:v12 withReason:[(SBNotificationCarPlayDestination *)self _announceDeactivationReasonForBannerRevocationReason:v7] deactivateAnnounce:1];
  }

  v15 = [v17 viewController];
  [v15 dismissViewControllerAnimated:1 completion:0];

  [(SBNotificationCarPlayDestination *)self _setSuspended:0 forPresentingAlertControllerForPresentable:v17];
  v16 = [(SBNotificationCarPlayDestination *)self delegate];
  [v16 destination:self didDismissNotificationRequest:v12];
}

- (BOOL)presentableViewControllerClosesByDefault:(id)a3
{
  v4 = [a3 notificationRequest];
  LOBYTE(self) = [(SBNotificationCarPlayDestination *)self _effectiveDefaultActionTypeForNotificationRequest:v4]== 1;

  return self;
}

- (void)didSelectBannerOfPresentableViewController:(id)a3
{
  v4 = a3;
  v5 = [v4 notificationRequest];
  if ([(SBNotificationCarPlayDestination *)self _notificationRequestShouldShowModalSubActions:v5])
  {
    [(SBNotificationCarPlayDestination *)self _setSuspended:1 forPresentingAlertControllerForPresentable:v4];
    v6 = [(SBNotificationCarPlayDestination *)self _subActionLabelsForNotificationRequest:v5];
    v7 = MEMORY[0x277D75110];
    v8 = [v5 carPlayTitle];
    v29 = v5;
    v9 = [v5 carPlayMessage];
    v31 = [v7 alertControllerWithTitle:v8 message:v9 preferredStyle:1];

    v10 = [v6 count];
    val = self;
    v30 = [(SBNotificationCarPlayDestination *)self _carPlayBannerSource];
    if (v10)
    {
      v11 = 0;
      v12 = (v10 - 1);
      v27 = v40;
      v13 = (v10 - 1);
      do
      {
        if (v10 <= 2)
        {
          v14 = v13;
        }

        else
        {
          v14 = v11;
        }

        v15 = v6;
        v16 = [v6 objectAtIndex:{v14, v27}];
        objc_initWeak(location, val);
        v17 = MEMORY[0x277D750F8];
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v40[0] = __79__SBNotificationCarPlayDestination_didSelectBannerOfPresentableViewController___block_invoke;
        v40[1] = &unk_2783C0570;
        objc_copyWeak(v44, location);
        v41 = v29;
        v44[1] = v14;
        v42 = v30;
        v43 = v4;
        v18 = [v17 actionWithTitle:v16 style:v14 == v12 handler:v39];
        [v31 addAction:v18];
        if (v14 == v12)
        {
          [v31 setPreferredAction:v18];
        }

        objc_destroyWeak(v44);
        objc_destroyWeak(location);

        ++v11;
        --v13;
        v6 = v15;
      }

      while (v13 != -1);
    }

    v19 = [v4 parentViewController];
    if (objc_opt_respondsToSelector())
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __79__SBNotificationCarPlayDestination_didSelectBannerOfPresentableViewController___block_invoke_104;
      v36[3] = &unk_2783A92D8;
      v37 = v30;
      v38 = v4;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __79__SBNotificationCarPlayDestination_didSelectBannerOfPresentableViewController___block_invoke_2;
      v33[3] = &unk_2783A92D8;
      v34 = v38;
      v35 = v31;
      [v19 performCoordinatedUpdate:v36 updateResponseHandler:v33];
    }

    v5 = v29;
  }

  else
  {
    v20 = [v4 notificationRequest];
    v6 = [(SBNotificationCarPlayDestination *)self _actionForNotificationRequest:v20];

    if (v6)
    {
      v6[2](v6);
    }

    v21 = MEMORY[0x277CF0A80];
    v22 = [MEMORY[0x277D78040] requesterIdentifier];
    v23 = [v21 bannerSourceForDestination:1 forRequesterIdentifier:v22];

    v24 = [v4 requestIdentifier];
    v31 = v23;
    v32 = 0;
    v25 = [v23 revokePresentableWithRequestIdentifier:v24 reason:@"SBBannerRevocationReasonCarPlayDestinationUserAction" animated:1 userInfo:0 error:&v32];
    v30 = v32;

    if (!v25)
    {
      v26 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
      {
        [(SBNotificationCarPlayDestination *)v26 didSelectBannerOfPresentableViewController:v4, v30];
      }
    }
  }
}

void __79__SBNotificationCarPlayDestination_didSelectBannerOfPresentableViewController___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained _subActionsForNotificationRequest:*(a1 + 32)];
  v4 = [v3 objectAtIndexedSubscript:*(a1 + 64)];

  if (v4)
  {
    v4[2](v4);
  }

  v6 = *(a1 + 48);
  v5 = (a1 + 48);
  v7 = *(v5 - 1);
  v8 = [v6 requestIdentifier];
  v12 = 0;
  v9 = [v7 revokePresentableWithRequestIdentifier:v8 reason:@"SBBannerRevocationReasonCarPlayDestinationUserAction" animated:1 userInfo:0 error:&v12];
  v10 = v12;

  if (!v9)
  {
    v11 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      __79__SBNotificationCarPlayDestination_didSelectBannerOfPresentableViewController___block_invoke_cold_1(v5, v11);
    }
  }

  [WeakRetained _setSuspended:0 forPresentingAlertControllerForPresentable:*v5];
}

void __79__SBNotificationCarPlayDestination_didSelectBannerOfPresentableViewController___block_invoke_104(uint64_t a1)
{
  v10 = [*(a1 + 32) layoutDescriptionWithError:0];
  [*(a1 + 40) setFillsContainer:1];
  v2 = [*(a1 + 40) view];
  [v2 setHidden:1];

  v3 = *(a1 + 40);
  [v10 presentationSize];
  v5 = v4;
  v7 = v6;
  [v10 containerSize];
  [v3 preferredContentSizeWithPresentationSize:v5 containerSize:{v7, v8, v9}];
}

void __79__SBNotificationCarPlayDestination_didSelectBannerOfPresentableViewController___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __79__SBNotificationCarPlayDestination_didSelectBannerOfPresentableViewController___block_invoke_3;
  v2[3] = &unk_2783A92D8;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

- (void)didCancelBannerOfPresentableViewController:(id)a3 reason:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CF0A80];
  v7 = MEMORY[0x277D78040];
  v8 = a4;
  v9 = [v7 requesterIdentifier];
  v10 = [v6 bannerSourceForDestination:1 forRequesterIdentifier:v9];

  v11 = [v5 requestIdentifier];
  v15 = 0;
  v12 = [v10 revokePresentableWithRequestIdentifier:v11 reason:v8 animated:1 userInfo:0 error:&v15];

  v13 = v15;
  if (!v12)
  {
    v14 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      [SBNotificationCarPlayDestination didCancelBannerOfPresentableViewController:v14 reason:v5];
    }
  }
}

- (id)_newPresentableForNotificationRequest:(id)a3 layoutDescription:(id)a4
{
  v6 = MEMORY[0x277D78040];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithNotificationRequest:v8];

  [(SBNotificationCarPlayDestination *)self _addPresentable:v9];
  [v9 setDelegate:self];
  [v9 addPresentableObserver:self];
  [v7 presentationSize];
  v11 = v10;
  v13 = v12;
  [v7 containerSize];
  v15 = v14;
  v17 = v16;

  [v9 preferredContentSizeWithPresentationSize:v11 containerSize:{v13, v15, v17}];
  [v9 setPreferredContentSize:?];
  return v9;
}

- (void)_addPresentable:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    v5 = self;
    objc_sync_enter(v5);
    presentables = v5->_presentables;
    if (!presentables)
    {
      v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
      v8 = v5->_presentables;
      v5->_presentables = v7;

      presentables = v5->_presentables;
    }

    [(NSHashTable *)presentables addObject:v9];
    objc_sync_exit(v5);

    v4 = v9;
  }
}

- (id)_presentablesWithRequestIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v5->_presentables;
    v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v8)
    {
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [v11 requestIdentifier];
          v13 = [v12 isEqualToString:v4];

          if (v13)
          {
            [v6 addObject:v11];
          }
        }

        v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }

    v14 = v6;
    if (![v14 count] && os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      [SBNotificationCarPlayDestination _presentablesWithRequestIdentifier:];
    }

    objc_sync_exit(v5);
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  v16 = v15;

  return v15;
}

- (id)_removePresentable:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    if ([(NSHashTable *)v5->_presentables containsObject:v4])
    {
      [(NSHashTable *)v5->_presentables removeObject:v4];
    }

    else if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      [SBNotificationCarPlayDestination _removePresentable:];
    }

    objc_sync_exit(v5);
  }

  return v4;
}

- (id)_policyForApp:(id)a3
{
  v4 = a3;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBNotificationCarPlayDestination _policyForApp:];
  }

  v5 = [v4 info];
  v6 = [v5 carPlayDeclaration];
  if (v6)
  {
    v7 = [v5 bundleIdentifier];
    v8 = [(NSMutableDictionary *)self->_appPolicyForBundleID objectForKey:v7];
    if (!v8)
    {
      v9 = [(SBNotificationCarPlayDestination *)self _appPolicyEvaluator];
      v8 = [v9 effectivePolicyForAppDeclaration:v6];

      if (v8)
      {
        [(NSMutableDictionary *)self->_appPolicyForBundleID setObject:v8 forKey:v7];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)_defaultActionTypeForNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 sectionIdentifier];
  v6 = +[SBApplicationController sharedInstance];
  v7 = [v6 applicationWithBundleIdentifier:v5];

  v8 = [(SBNotificationCarPlayDestination *)self _policyForApp:v7];
  v9 = [v4 content];
  v10 = [v9 contentType];

  if ([v8 bannerLaunchTypeForNotificationContentType:v10] == 1 || (objc_msgSend(v4, "options"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "lauchUsingSiriForCarPlayDefaultAction"), v11, (v12 & 1) != 0))
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
    if (([v8 canDisplayOnCarScreen] & 1) == 0)
    {
      v14 = [(SBNotificationCarPlayDestination *)self _supplementaryActionsForNotificationRequest:v4];
      v15 = [v14 count];

      if (!v15)
      {
        v13 = 1;
      }
    }
  }

  return v13;
}

- (int64_t)_effectiveDefaultActionTypeForNotificationRequest:(id)a3
{
  v4 = [(SBNotificationCarPlayDestination *)self _defaultActionTypeForNotificationRequest:a3];
  if ([(SBNotificationCarPlayDestination *)self _inCallOrFaceTime]&& v4 == 2)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (id)_actionForNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(SBNotificationCarPlayDestination *)self delegate];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__SBNotificationCarPlayDestination__actionForNotificationRequest___block_invoke;
  v11[3] = &unk_2783B2078;
  v11[4] = self;
  v12 = v4;
  v13 = v5;
  v6 = v5;
  v7 = v4;
  v8 = MEMORY[0x223D6F7F0](v11);
  v9 = [v8 copy];

  return v9;
}

uint64_t __66__SBNotificationCarPlayDestination__actionForNotificationRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _effectiveDefaultActionTypeForNotificationRequest:*(a1 + 40)];
  switch(v2)
  {
    case 0:
      v16 = *(a1 + 48);
      v17 = *(a1 + 32);
      v4 = [*(a1 + 40) defaultAction];
      v10 = *(a1 + 40);
      v11 = MEMORY[0x277CBEC10];
      v12 = v16;
      v13 = v17;
      v14 = v4;
      v15 = 1;
      goto LABEL_7;
    case 1:
      v8 = *(a1 + 48);
      v9 = *(a1 + 32);
      v4 = [*(a1 + 40) closeAction];
      v10 = *(a1 + 40);
      v11 = MEMORY[0x277CBEC10];
      v12 = v8;
      v13 = v9;
      v14 = v4;
      v15 = 0;
LABEL_7:
      [v12 destination:v13 executeAction:v14 forNotificationRequest:v10 requestAuthentication:v15 withParameters:v11 completion:0];
      goto LABEL_8;
    case 2:
      v3 = [*(a1 + 32) alertingController];
      [v3 killAlertsForNotificationRequest:*(a1 + 40)];

      v4 = objc_opt_new();
      v5 = objc_alloc(MEMORY[0x277D551E0]);
      v6 = [*(a1 + 32) _bulletinForNotificationRequest:*(a1 + 40)];
      v7 = [v5 initWithBBBulletin:v6];
      [v4 activateWithContext:v7];

LABEL_8:
      break;
  }

  return 1;
}

- (id)_ignoreActionForNotificationRequest:(id)a3
{
  v4 = a3;
  v5 = [(SBNotificationCarPlayDestination *)self delegate];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__SBNotificationCarPlayDestination__ignoreActionForNotificationRequest___block_invoke;
  v10[3] = &unk_2783B2078;
  v11 = v5;
  v12 = self;
  v13 = v4;
  v6 = v4;
  v7 = v5;
  v8 = [v10 copy];

  return v8;
}

uint64_t __72__SBNotificationCarPlayDestination__ignoreActionForNotificationRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) silenceAction];
  [v2 destination:v3 executeAction:v4 forNotificationRequest:*(a1 + 48) requestAuthentication:0 withParameters:MEMORY[0x277CBEC10] completion:0];

  return 1;
}

- (id)_supplementaryActionsForNotificationRequest:(id)a3
{
  v3 = [a3 supplementaryActions];
  v4 = [v3 objectForKey:*MEMORY[0x277D77DA0]];

  return v4;
}

- (id)_closeNotificationActionForNotificationRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 options];
  if ([v4 hideCloseActionForCarPlay])
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 closeAction];
  }

  return v5;
}

- (id)_allNotificationActionsForNotificationRequest:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(SBNotificationCarPlayDestination *)self _supplementaryActionsForNotificationRequest:v5];
  [v6 addObjectsFromArray:v7];
  v8 = [(SBNotificationCarPlayDestination *)self _closeNotificationActionForNotificationRequest:v5];

  [v6 bs_safeAddObject:v8];

  return v6;
}

- (BOOL)_notificationRequestSupportsSubActions:(id)a3
{
  v4 = a3;
  if ([(SBNotificationCarPlayDestination *)self _defaultActionTypeForNotificationRequest:v4]== 2)
  {
    v5 = 0;
  }

  else
  {
    v6 = [v4 options];
    v5 = [v6 allowActionsForCarPlay];
  }

  return v5;
}

- (BOOL)_notificationRequestShouldShowModalSubActions:(id)a3
{
  v4 = a3;
  if ([(SBNotificationCarPlayDestination *)self _notificationRequestSupportsSubActions:v4])
  {
    v5 = [(SBNotificationCarPlayDestination *)self _supplementaryActionsForNotificationRequest:v4];
    v6 = [v5 count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_subActionLabelsForNotificationRequest:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(SBNotificationCarPlayDestination *)self _notificationRequestSupportsSubActions:v4])
  {
    v5 = [MEMORY[0x277CBEB18] array];
    v6 = [(SBNotificationCarPlayDestination *)self _supplementaryActionsForNotificationRequest:v4];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v16 + 1) + 8 * i) title];
          if ([v11 length])
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v12 = [(SBNotificationCarPlayDestination *)self _closeNotificationActionForNotificationRequest:v4];
    if (v12)
    {
      v13 = [MEMORY[0x277CCA8D8] mainBundle];
      v14 = [v13 localizedStringForKey:@"BANNER_ALERT_CLOSE" value:&stru_283094718 table:@"CarDisplay"];
      [v5 addObject:v14];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_subActionsForNotificationRequest:(id)a3
{
  v4 = a3;
  if ([(SBNotificationCarPlayDestination *)self _notificationRequestSupportsSubActions:v4])
  {
    objc_initWeak(&location, self);
    v5 = [(SBNotificationCarPlayDestination *)self _allNotificationActionsForNotificationRequest:v4];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__SBNotificationCarPlayDestination__subActionsForNotificationRequest___block_invoke;
    v8[3] = &unk_2783C05C0;
    objc_copyWeak(&v10, &location);
    v9 = v4;
    v6 = [v5 bs_map:v8];

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id __70__SBNotificationCarPlayDestination__subActionsForNotificationRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __70__SBNotificationCarPlayDestination__subActionsForNotificationRequest___block_invoke_2;
  v7[3] = &unk_2783C0598;
  objc_copyWeak(&v10, (a1 + 40));
  v4 = v3;
  v8 = v4;
  v9 = *(a1 + 32);
  v5 = [v7 copy];

  objc_destroyWeak(&v10);

  return v5;
}

uint64_t __70__SBNotificationCarPlayDestination__subActionsForNotificationRequest___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained delegate];
  [v3 destination:WeakRetained executeAction:*(a1 + 32) forNotificationRequest:*(a1 + 40) requestAuthentication:1 withParameters:MEMORY[0x277CBEC10] completion:0];

  return 1;
}

- (id)_bulletinForNotificationRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 bulletin];
  if (!v4)
  {
    v4 = objc_alloc_init(MEMORY[0x277CF3518]);
    v5 = [v3 sectionIdentifier];
    [v4 setSectionID:v5];

    v6 = [v3 carPlayTitle];
    [v4 setTitle:v6];

    v7 = [v3 carPlayMessage];
    [v4 setMessage:v7];
  }

  return v4;
}

- (BOOL)_setSuspended:(BOOL)a3 forPresentingAlertControllerForPresentable:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(SBNotificationCarPlayDestination *)self _carPlayBannerSource];
  v8 = *MEMORY[0x277D78010];
  v16 = 0;
  v9 = [v7 setSuspended:v4 forReason:v8 revokingCurrent:0 error:&v16];
  v10 = v16;

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentablePresentingAlertController);
    v12 = WeakRetained;
    v13 = v6;
    if (!v4)
    {
      if (WeakRetained != v6)
      {
LABEL_6:

        goto LABEL_9;
      }

      v13 = 0;
    }

    objc_storeWeak(&self->_presentablePresentingAlertController, v13);
    goto LABEL_6;
  }

  v14 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
  {
    [(SBNotificationCarPlayDestination *)v4 _setSuspended:v10 forPresentingAlertControllerForPresentable:v14];
  }

LABEL_9:

  return v9;
}

- (void)notificationAnnouncementObserver:(id)a3 announcementSpeakingStateDidUpdate:(int64_t)a4 forNotificationRequestIdentifiers:(id)a5
{
  v78 = *MEMORY[0x277D85DE8];
  v7 = a5;
  v8 = [v7 bs_compactMap:&__block_literal_global_362];
  v9 = MEMORY[0x277D77DB0];
  v10 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = AFSiriUserNotificationAnnouncementSpeakingStateGetName();
    *buf = 138543618;
    v75 = v12;
    v76 = 2114;
    v77 = v8;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "CarPlay received updated announce state:%{public}@ for requests %{public}@", buf, 0x16u);
  }

  if (a4 == 2)
  {
    v14 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
    v30 = [(SBNotificationCarPlayDestination *)self _carPlayBannerSource];
    [v30 didFinishAnnounceForNotificationRequest:v14];

    if ([(NSMutableArray *)self->_notificationRequestsForAnnounce count]< 2)
    {
      v54 = [(SBNotificationCarPlayDestination *)self _announcementStateObserver];
      v55 = [v7 firstObject];
      [v54 stopObservingNotificationWithRequestIdentifier:v55];

      v56 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        v57 = v56;
        v58 = [v14 notificationIdentifier];
        v59 = [v58 un_logDigest];
        *buf = 138543362;
        v75 = v59;
        _os_log_impl(&dword_21ED4E000, v57, OS_LOG_TYPE_DEFAULT, "Carplay setting up deferred announce deactivation for %{public}@ on announce finish since this is the last notification to be announced", buf, 0xCu);
      }

      objc_storeStrong(&self->_notificationRequestPendingDeactivation, v14);
    }

    else
    {
      log = v8;
      if (v14)
      {
        [(NSMutableArray *)self->_notificationRequestsForAnnounce removeObject:v14];
        [(NSMutableDictionary *)self->_announceRequestsForNotificationRequests removeObjectForKey:v14];
      }

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v31 = v7;
      v32 = [v31 countByEnumeratingWithState:&v68 objects:v73 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v69;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v69 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v36 = *(*(&v68 + 1) + 8 * i);
            v37 = [(SBNotificationCarPlayDestination *)self _announcementStateObserver];
            [v37 stopObservingNotificationWithRequestIdentifier:v36];

            v38 = [(SBNotificationCarPlayDestination *)self _notificationRequestForAnnounceWithIdentifier:v36];
            if (v38)
            {
              [(NSMutableArray *)self->_notificationRequestsForAnnounce removeObject:v38];
              [(NSMutableDictionary *)self->_announceRequestsForNotificationRequests removeObjectForKey:v38];
            }
          }

          v33 = [v31 countByEnumeratingWithState:&v68 objects:v73 count:16];
        }

        while (v33);
      }

      if ([(NSMutableArray *)self->_notificationRequestsForAnnounce count])
      {
        v39 = *v9;
        v8 = log;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          v40 = v39;
          v41 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
          v42 = [v41 notificationIdentifier];
          v43 = [v42 un_logDigest];
          *buf = 138543362;
          v75 = v43;
          _os_log_impl(&dword_21ED4E000, v40, OS_LOG_TYPE_DEFAULT, "Carplay withdrawing notification request %{public}@ on announce finish while pending other announce notifications", buf, 0xCu);
        }

        v44 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
        [(SBNotificationCarPlayDestination *)self withdrawNotificationRequest:v44];

        [(SBNotificationCarPlayDestination *)self _setNotificationRequestCurrentlyAnnouncing:0];
        [(SBNotificationCarPlayDestination *)self _startAnnounceTimeoutTimer];
      }

      else
      {
        [(SBNotificationCarPlayDestination *)self _setNotificationRequestCurrentlyAnnouncing:0];
        notificationRequestsForAnnounce = self->_notificationRequestsForAnnounce;
        self->_notificationRequestsForAnnounce = 0;

        announceRequestsForNotificationRequests = self->_announceRequestsForNotificationRequests;
        self->_announceRequestsForNotificationRequests = 0;

        [(SBNotificationCarPlayDestination *)self _flushNotificationRequestsPendingAnnounce];
        v8 = log;
      }
    }
  }

  else
  {
    if (a4 == 1)
    {
      [(SBNotificationCarPlayDestination *)self _invalidateAnnounceTimeoutTimer];
      v13 = [v7 firstObject];
      v14 = [(SBNotificationCarPlayDestination *)self _notificationRequestForAnnounceWithIdentifier:v13];

      v15 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
      if (v15)
      {
        v16 = v15;
        v17 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
        v18 = [v14 matchesRequest:v17];

        if (v18)
        {
          goto LABEL_14;
        }
      }

      v19 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
      if (([v14 matchesRequest:v19] & 1) == 0)
      {
        v20 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];

        if (!v20)
        {
LABEL_13:
          [(SBNotificationCarPlayDestination *)self _setNotificationRequestCurrentlyAnnouncing:v14];
          v27 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
          [(SBNotificationCarPlayDestination *)self _postNotificationRequest:v27 shouldAnnounce:0];

LABEL_14:
          v28 = [(SBNotificationCarPlayDestination *)self _carPlayBannerSource];
          v29 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
          [v28 didBeginAnnounceForNotificationRequest:v29];

          goto LABEL_47;
        }

        v21 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          loga = v21;
          v22 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
          v23 = [v22 notificationIdentifier];
          v24 = [v23 un_logDigest];
          v25 = [v14 notificationIdentifier];
          v26 = [v25 un_logDigest];
          *buf = 138543618;
          v75 = v24;
          v76 = 2114;
          v77 = v26;
          _os_log_impl(&dword_21ED4E000, loga, OS_LOG_TYPE_DEFAULT, "Carplay withdrawing currently announcing notification request %{public}@ as it is starting announce for request %{public}@", buf, 0x16u);
        }

        v19 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
        [(SBNotificationCarPlayDestination *)self withdrawNotificationRequest:v19];
      }

      goto LABEL_13;
    }

    v14 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
    if (v14)
    {
      v45 = [(SBNotificationCarPlayDestination *)self _carPlayBannerSource];
      [v45 didFinishAnnounceForNotificationRequest:v14];
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v46 = v7;
    v47 = [v46 countByEnumeratingWithState:&v64 objects:v72 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v65;
      do
      {
        for (j = 0; j != v48; ++j)
        {
          if (*v65 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = *(*(&v64 + 1) + 8 * j);
          v52 = [(SBNotificationCarPlayDestination *)self _announcementStateObserver];
          [v52 stopObservingNotificationWithRequestIdentifier:v51];

          v53 = [(SBNotificationCarPlayDestination *)self _notificationRequestForAnnounceWithIdentifier:v51];
          if (v53)
          {
            [(NSMutableArray *)self->_notificationRequestsForAnnounce removeObject:v53];
            [(NSMutableDictionary *)self->_announceRequestsForNotificationRequests removeObjectForKey:v53];
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v64 objects:v72 count:16];
      }

      while (v48);
    }

    [(SBNotificationCarPlayDestination *)self _invalidateAnnounceTimeoutTimer];
    [(SBNotificationCarPlayDestination *)self _setNotificationRequestCurrentlyAnnouncing:0];
    [(SBNotificationCarPlayDestination *)self _flushAnnounceNotificationRequestsShouldAnnounce:0];
    [(SBNotificationCarPlayDestination *)self _flushNotificationRequestsPendingAnnounce];
  }

LABEL_47:
}

- (BOOL)_shouldAnnounceNotificationRequest:(id)a3
{
  v3 = a3;
  if (_os_feature_enabled_impl())
  {
    v4 = [v3 options];
    v5 = [v4 shouldAnnounceForCarPlay];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_shouldDeferPostingNotificationRequestForAnnounce:(id)a3
{
  v4 = a3;
  if ([(SBNotificationCarPlayDestination *)self _isCurrentlyAnnouncing])
  {
    v5 = ![(SBNotificationCarPlayDestination *)self _shouldAnnounceNotificationRequest:v4];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (id)_announcementStateObserver
{
  announcementStateObserver = self->_announcementStateObserver;
  if (!announcementStateObserver)
  {
    v4 = objc_alloc(MEMORY[0x277CEF4E8]);
    v5 = [v4 initWithQueue:MEMORY[0x277D85CD0] delegate:self];
    v6 = self->_announcementStateObserver;
    self->_announcementStateObserver = v5;

    announcementStateObserver = self->_announcementStateObserver;
  }

  return announcementStateObserver;
}

- (void)_requestAnnounceForNotificationRequest:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D77DB0];
  v6 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = [v4 notificationIdentifier];
    v9 = [v8 un_logDigest];
    *buf = 138543362;
    v46 = v9;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "CarPlay requesting announce for notification request %{public}@", buf, 0xCu);
  }

  if ([(SBNotificationCarPlayDestination *)self _isCurrentlyAnnouncing]|| [(SBNotificationCarPlayDestination *)self _shouldAnnounceNotificationForActiveAVSession:v4])
  {
    v10 = [v4 notificationIdentifier];
    v11 = [(SBNotificationCarPlayDestination *)self _announcementStateObserver];
    [v11 startObservingNotificationWithRequestIdentifier:v10];

    notificationRequestsForAnnounce = self->_notificationRequestsForAnnounce;
    if (!notificationRequestsForAnnounce)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v14 = self->_notificationRequestsForAnnounce;
      self->_notificationRequestsForAnnounce = v13;

      notificationRequestsForAnnounce = self->_notificationRequestsForAnnounce;
    }

    [(NSMutableArray *)notificationRequestsForAnnounce addObject:v4];
    v37 = [v4 userNotification];
    v15 = [(SBNotificationCarPlayDestination *)self _bulletinForNotificationRequest:v4];
    v16 = [v15 summary];
    v17 = [v16 string];

    if ([v17 length])
    {
      v18 = [objc_alloc(MEMORY[0x277CEF418]) initWithSummary:v17 summaryType:2 error:0];
      v19 = 0;
    }

    else
    {
      v18 = 0;
      v19 = 1;
    }

    v20 = objc_alloc(MEMORY[0x277CEF410]);
    v21 = [v4 sectionIdentifier];
    v22 = [v20 initWithUserNotification:v37 sourceAppId:v21 platform:2 summaryDecision:v19 summary:v18];

    announceRequestsForNotificationRequests = self->_announceRequestsForNotificationRequests;
    if (!announceRequestsForNotificationRequests)
    {
      v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v25 = self->_announceRequestsForNotificationRequests;
      self->_announceRequestsForNotificationRequests = v24;

      announceRequestsForNotificationRequests = self->_announceRequestsForNotificationRequests;
    }

    [(NSMutableDictionary *)announceRequestsForNotificationRequests setObject:v22 forKey:v4];
    v26 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v4;
    }

    [(SBNotificationCarPlayDestination *)self _setNotificationRequestCurrentlyAnnouncing:v28];

    objc_initWeak(buf, self);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __75__SBNotificationCarPlayDestination__requestAnnounceForNotificationRequest___block_invoke;
    v40[3] = &unk_2783ADB58;
    v29 = v10;
    v41 = v29;
    objc_copyWeak(&v44, buf);
    v42 = v4;
    v43 = self;
    [v22 performRequestWithCompletion:v40];
    if ([v17 length])
    {
      v30 = [objc_alloc(MEMORY[0x277CEF418]) initWithSummary:v17 summaryType:2 error:0];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __75__SBNotificationCarPlayDestination__requestAnnounceForNotificationRequest___block_invoke_157;
      v38[3] = &unk_2783A9398;
      v39 = v15;
      [v22 deliverSummary:v30 completion:v38];
    }

    objc_destroyWeak(&v44);
    objc_destroyWeak(buf);
  }

  else
  {
    v31 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      v33 = [v4 notificationIdentifier];
      v34 = [v33 un_logDigest];
      *buf = 138543362;
      v46 = v34;
      _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_DEFAULT, "CarPlay request to announce notification request %{public}@ dropped due to current AV session", buf, 0xCu);
    }

    v35 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
    v36 = v35 == v4;

    if (v36)
    {
      [(SBNotificationCarPlayDestination *)self _setNotificationRequestCurrentlyAnnouncing:0];
    }
  }
}

void __75__SBNotificationCarPlayDestination__requestAnnounceForNotificationRequest___block_invoke(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__SBNotificationCarPlayDestination__requestAnnounceForNotificationRequest___block_invoke_2;
  block[3] = &unk_2783C05E8;
  v7 = *(a1 + 32);
  v11 = a2;
  objc_copyWeak(&v10, (a1 + 56));
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v8 = v4;
  v9 = v5;
  dispatch_sync(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v10);
}

void __75__SBNotificationCarPlayDestination__requestAnnounceForNotificationRequest___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 un_logDigest];
    v6 = v5;
    v7 = @"failed";
    if (*(a1 + 64))
    {
      v7 = @"succeeded";
    }

    v15 = 138543618;
    v16 = v5;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "CarPlay request to announce notification request %{public}@ %@", &v15, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v9 = WeakRetained;
  if (*(a1 + 64))
  {
    v10 = [*(a1 + 48) _notificationRequestCurrentlyAnnouncing];
    v11 = *(a1 + 40);

    if (v10 == v11)
    {
      [*(a1 + 48) _startAnnounceTimeoutTimer];
    }
  }

  else
  {
    v12 = [WeakRetained _announcementStateObserver];
    [v12 stopObservingNotificationWithRequestIdentifier:*(a1 + 32)];

    v13 = [v9 _notificationRequestCurrentlyAnnouncing];
    v14 = *(a1 + 40);

    if (v13 == v14)
    {
      [v9 _setNotificationRequestCurrentlyAnnouncing:0];
    }

    [v9[6] removeObject:*(a1 + 40)];
    [v9[11] removeObjectForKey:*(a1 + 40)];
    if ([v9[6] count])
    {
      [v9 _flushAnnounceNotificationRequestsShouldAnnounce:1];
    }

    else
    {
      [v9 _flushNotificationRequestsPendingAnnounce];
    }
  }
}

void __75__SBNotificationCarPlayDestination__requestAnnounceForNotificationRequest___block_invoke_157(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D77DB8];
  if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 publisherMatchID];
    v8 = [v7 un_logDigest];
    v9 = 138543618;
    v10 = v8;
    v11 = 1024;
    v12 = a2;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Did delivery summary for notification %{public}@: %{BOOL}u", &v9, 0x12u);
  }
}

- (int64_t)_announceDeactivationReasonForBannerRevocationReason:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SBBannerRevocationReasonCarPlayDestinationExplicitDismissal"])
  {
    v4 = 11;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D77FF0]])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CF91C0]])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277CF91D0]])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D77FF8]])
  {
    v4 = 8;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D78000]])
  {
    v4 = 9;
  }

  else if ([v3 isEqualToString:*MEMORY[0x277D78008]])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_cancelAnnounceForNotificationRequest:(id)a3 withReason:(int64_t)a4 deactivateAnnounce:(BOOL)a5
{
  v5 = a5;
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  notificationRequestsForAnnounce = self->_notificationRequestsForAnnounce;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __104__SBNotificationCarPlayDestination__cancelAnnounceForNotificationRequest_withReason_deactivateAnnounce___block_invoke;
  v41[3] = &unk_2783C0610;
  v10 = v8;
  v42 = v10;
  v11 = [(NSMutableArray *)notificationRequestsForAnnounce indexOfObjectPassingTest:v41];
  v12 = MEMORY[0x277D77DB0];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v11;
    v14 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = [v10 notificationIdentifier];
      v17 = [v16 un_logDigest];
      v18 = AFSiriDeactivationReasonGetName();
      *buf = 138543874;
      v44 = v17;
      v45 = 2114;
      v46 = v18;
      v47 = 1024;
      v48 = v5;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "CarPlay clearing announce for notification request %{public}@ for reason %{public}@ with deactivation = %{BOOL}d", buf, 0x1Cu);
    }

    v19 = [(NSMutableArray *)self->_notificationRequestsForAnnounce objectAtIndex:v13];
    [(NSMutableArray *)self->_notificationRequestsForAnnounce removeObject:v19];
    v20 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
    v21 = [v19 matchesRequest:v20];

    if (v21)
    {
      [(SBNotificationCarPlayDestination *)self _setNotificationRequestCurrentlyAnnouncing:0];
    }

    v22 = [(NSMutableDictionary *)self->_announceRequestsForNotificationRequests objectForKey:v19];
    [(NSMutableDictionary *)self->_announceRequestsForNotificationRequests removeObjectForKey:v19];
    if (v22 && v5 && AFSiriDeactivationReasonGetIsValidAndSpecified())
    {
      v23 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        v25 = [v10 notificationIdentifier];
        v26 = [v25 un_logDigest];
        v27 = AFSiriDeactivationReasonGetName();
        *buf = 138543618;
        v44 = v26;
        v45 = 2114;
        v46 = v27;
        _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "CarPlay requesting deactivate announce for notification request %{public}@ for reason %{public}@", buf, 0x16u);
      }

      v36 = MEMORY[0x277D85DD0];
      v37 = 3221225472;
      v38 = __104__SBNotificationCarPlayDestination__cancelAnnounceForNotificationRequest_withReason_deactivateAnnounce___block_invoke_159;
      v39 = &unk_2783A9398;
      v40 = v19;
      [v22 deactivateRequestForReason:a4 completion:&v36];
    }

    if (![(NSMutableArray *)self->_notificationRequestsForAnnounce count:v36])
    {
      v28 = self->_notificationRequestsForAnnounce;
      self->_notificationRequestsForAnnounce = 0;

      announceRequestsForNotificationRequests = self->_announceRequestsForNotificationRequests;
      self->_announceRequestsForNotificationRequests = 0;
    }

    if ([(NCNotificationRequest *)self->_notificationRequestPendingDeactivation matchesRequest:v19])
    {
      notificationRequestPendingDeactivation = self->_notificationRequestPendingDeactivation;
      self->_notificationRequestPendingDeactivation = 0;
    }
  }

  if ([(NSMutableArray *)self->_notificationRequestsPendingAVSession containsObject:v10])
  {
    v31 = *v12;
    if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
      v33 = [v10 notificationIdentifier];
      v34 = [v33 un_logDigest];
      *buf = 138543362;
      v44 = v34;
      _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_DEFAULT, "CarPlay removing request %{public}@ from announce list pending AV session completion", buf, 0xCu);
    }

    [(NSMutableArray *)self->_notificationRequestsPendingAVSession removeObject:v10];
    if (![(NSMutableArray *)self->_notificationRequestsPendingAVSession count])
    {
      notificationRequestsPendingAVSession = self->_notificationRequestsPendingAVSession;
      self->_notificationRequestsPendingAVSession = 0;
    }
  }
}

void __104__SBNotificationCarPlayDestination__cancelAnnounceForNotificationRequest_withReason_deactivateAnnounce___block_invoke_159(uint64_t a1, int a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v5 notificationIdentifier];
    v8 = [v7 un_logDigest];
    v9 = v8;
    v10 = @"failed";
    if (a2)
    {
      v10 = @"succeeded";
    }

    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v10;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "CarPlay request to deactivate announce for notification %{public}@ %@", &v11, 0x16u);
  }
}

- (BOOL)_shouldAnnounceNotificationForActiveAVSession:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D26E58] sharedAVSystemController];
  v6 = [v5 attributeForKey:*MEMORY[0x277D26E08]];

  v7 = [v6 isEqualToString:*MEMORY[0x277D26E20]];
  if (v7)
  {
    v8 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v24 = 138412290;
      v25 = v6;
      v9 = "CarPlay should announce notification because current AV prompt style is %@";
      v10 = v8;
      v11 = 12;
LABEL_7:
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, v9, &v24, v11);
    }
  }

  else
  {
    v12 = [MEMORY[0x277D26E58] sharedAVSystemController];
    v13 = [v12 attributeForKey:*MEMORY[0x277D26B78]];
    v14 = [v13 BOOLValue];

    v15 = *MEMORY[0x277D77DB0];
    v16 = os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (v16)
      {
        LOWORD(v24) = 0;
        v9 = "CarPlay should not announce notification because AV currently playing longer duration session";
        v10 = v15;
        v11 = 2;
        goto LABEL_7;
      }
    }

    else
    {
      if (v16)
      {
        v17 = v15;
        v18 = [v4 notificationIdentifier];
        v19 = [v18 un_logDigest];
        v24 = 138543618;
        v25 = v19;
        v26 = 2112;
        v27 = v6;
        _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "CarPlay deferring announce for notification %{public}@ because current AV prompt style is %@", &v24, 0x16u);
      }

      notificationRequestsPendingAVSession = self->_notificationRequestsPendingAVSession;
      if (!notificationRequestsPendingAVSession)
      {
        v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v22 = self->_notificationRequestsPendingAVSession;
        self->_notificationRequestsPendingAVSession = v21;

        notificationRequestsPendingAVSession = self->_notificationRequestsPendingAVSession;
      }

      if (([(NSMutableArray *)notificationRequestsPendingAVSession containsObject:v4]& 1) == 0)
      {
        [(NSMutableArray *)self->_notificationRequestsPendingAVSession addObject:v4];
      }
    }
  }

  return v7;
}

- (void)_voicePromptStyleChanged:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:*MEMORY[0x277D26E18]];

  if ([v5 isEqualToString:*MEMORY[0x277D26E20]] && -[NSMutableArray count](self->_notificationRequestsPendingAVSession, "count"))
  {
    v6 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v5;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "CarPlay voice prompt changed to %@, requesting announce again for pending notification requests", buf, 0xCu);
    }

    v7 = self->_notificationRequestsPendingAVSession;
    notificationRequestsPendingAVSession = self->_notificationRequestsPendingAVSession;
    self->_notificationRequestsPendingAVSession = 0;

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = v7;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [(SBNotificationCarPlayDestination *)self _requestAnnounceForNotificationRequest:*(*(&v14 + 1) + 8 * v13++), v14];
        }

        while (v11 != v13);
        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }
}

- (void)_setNotificationRequestCurrentlyAnnouncing:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  notificationRequestCurrentlyAnnouncing = self->_notificationRequestCurrentlyAnnouncing;
  p_notificationRequestCurrentlyAnnouncing = &self->_notificationRequestCurrentlyAnnouncing;
  if (notificationRequestCurrentlyAnnouncing != v5)
  {
    v8 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = [(NCNotificationRequest *)v5 notificationIdentifier];
      v11 = [v10 un_logDigest];
      v12 = [(NCNotificationRequest *)*p_notificationRequestCurrentlyAnnouncing notificationIdentifier];
      v13 = [v12 un_logDigest];
      v14 = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "CarPlay setting currently announcing notification request to %{public}@ from %{public}@", &v14, 0x16u);
    }

    objc_storeStrong(p_notificationRequestCurrentlyAnnouncing, a3);
  }
}

- (void)_clearNotificationRequestPendingAnnounceDeactivationIfNecessary
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_notificationRequestPendingDeactivation)
  {
    v3 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
    notificationRequestPendingDeactivation = self->_notificationRequestPendingDeactivation;

    if (v3 == notificationRequestPendingDeactivation)
    {
      v5 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
      {
        v6 = self->_notificationRequestPendingDeactivation;
        v7 = v5;
        v8 = [(NCNotificationRequest *)v6 notificationIdentifier];
        v9 = [v8 un_logDigest];
        v10 = 138543362;
        v11 = v9;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "CarPlay clearing notification request %{public}@ pending announce deactivation and requesting early deactivation", &v10, 0xCu);
      }

      [(SBNotificationCarPlayDestination *)self _cancelAnnounceForNotificationRequest:self->_notificationRequestPendingDeactivation withReason:[(SBNotificationCarPlayDestination *)self _announceDeactivationReasonForBannerRevocationReason:@"SBBannerRevocationReasonCarPlayDestinationExplicitDismissal"] deactivateAnnounce:1];
    }
  }
}

- (id)_notificationRequestForAnnounceWithIdentifier:(id)a3
{
  v4 = a3;
  notificationRequestsForAnnounce = self->_notificationRequestsForAnnounce;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__SBNotificationCarPlayDestination__notificationRequestForAnnounceWithIdentifier___block_invoke;
  v10[3] = &unk_2783C0610;
  v6 = v4;
  v11 = v6;
  v7 = [(NSMutableArray *)notificationRequestsForAnnounce indexOfObjectPassingTest:v10];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v8 = [(NSMutableArray *)self->_notificationRequestsForAnnounce objectAtIndex:v7];
  }

  return v8;
}

uint64_t __82__SBNotificationCarPlayDestination__notificationRequestForAnnounceWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 notificationIdentifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_queueNotificationRequestWhileAnnouncing:(id)a3
{
  v4 = a3;
  notificationRequestsPendingAnnounce = self->_notificationRequestsPendingAnnounce;
  v8 = v4;
  if (!notificationRequestsPendingAnnounce)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_notificationRequestsPendingAnnounce;
    self->_notificationRequestsPendingAnnounce = v6;

    v4 = v8;
    notificationRequestsPendingAnnounce = self->_notificationRequestsPendingAnnounce;
  }

  [(NSMutableArray *)notificationRequestsPendingAnnounce addObject:v4];
}

- (void)_modifyNotificationRequest:(id)a3 inStore:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__SBNotificationCarPlayDestination__modifyNotificationRequest_inStore___block_invoke;
    v9[3] = &unk_2783C0610;
    v7 = v5;
    v10 = v7;
    v8 = [v6 indexOfObjectPassingTest:v9];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 replaceObjectAtIndex:v8 withObject:v7];
    }
  }
}

- (void)_withdrawNotificationRequest:(id)a3 inStore:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v6 count])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __73__SBNotificationCarPlayDestination__withdrawNotificationRequest_inStore___block_invoke;
    v8[3] = &unk_2783C0610;
    v9 = v5;
    v7 = [v6 indexOfObjectPassingTest:v8];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 removeObjectAtIndex:v7];
    }
  }
}

- (void)_flushNotificationRequestsPendingAnnounce
{
  if ([(NSMutableArray *)self->_notificationRequestsPendingAnnounce count])
  {
    v3 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "CarPlay flushing notification requests pending announce", buf, 2u);
    }

    notificationRequestsPendingAnnounce = self->_notificationRequestsPendingAnnounce;
    self->_notificationRequestsPendingAnnounce = 0;
    v5 = notificationRequestsPendingAnnounce;

    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __77__SBNotificationCarPlayDestination__flushNotificationRequestsPendingAnnounce__block_invoke;
    v6[3] = &unk_2783C0638;
    v6[4] = self;
    [(NSMutableArray *)v5 enumerateObjectsUsingBlock:v6];
  }
}

- (void)_flushAnnounceNotificationRequestsShouldAnnounce:(BOOL)a3
{
  if ([(NSMutableArray *)self->_notificationRequestsForAnnounce count])
  {
    v5 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "CarPlay flushing all announce notification requests", buf, 2u);
    }

    notificationRequestsForAnnounce = self->_notificationRequestsForAnnounce;
    self->_notificationRequestsForAnnounce = 0;
    v7 = notificationRequestsForAnnounce;

    announceRequestsForNotificationRequests = self->_announceRequestsForNotificationRequests;
    self->_announceRequestsForNotificationRequests = 0;

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __85__SBNotificationCarPlayDestination__flushAnnounceNotificationRequestsShouldAnnounce___block_invoke;
    v10[3] = &unk_2783C0660;
    v10[4] = self;
    v11 = a3;
    [(NSMutableArray *)v7 enumerateObjectsUsingBlock:v10];
    notificationRequestPendingDeactivation = self->_notificationRequestPendingDeactivation;
    self->_notificationRequestPendingDeactivation = 0;
  }
}

void __85__SBNotificationCarPlayDestination__flushAnnounceNotificationRequestsShouldAnnounce___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 matchesRequest:*(*(a1 + 32) + 72)] & 1) == 0)
  {
    [*(a1 + 32) _postNotificationRequest:v3 shouldAnnounce:*(a1 + 40)];
  }
}

- (void)_startAnnounceTimeoutTimer
{
  if (!self->_announceTimeoutTimer)
  {
    v3 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "CarPlay starting announce timeout timer", buf, 2u);
    }

    objc_initWeak(buf, self);
    v4 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"SBNotificationCarPlayDestination.announceTimeoutTimer"];
    announceTimeoutTimer = self->_announceTimeoutTimer;
    self->_announceTimeoutTimer = v4;

    v6 = self->_announceTimeoutTimer;
    v7 = MEMORY[0x277D85CD0];
    v8 = MEMORY[0x277D85CD0];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __62__SBNotificationCarPlayDestination__startAnnounceTimeoutTimer__block_invoke;
    v9[3] = &unk_2783A9918;
    objc_copyWeak(&v10, buf);
    [(BSAbsoluteMachTimer *)v6 scheduleWithFireInterval:v7 leewayInterval:v9 queue:10.0 handler:0.0];

    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }
}

void __62__SBNotificationCarPlayDestination__startAnnounceTimeoutTimer__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = *MEMORY[0x277D77DB8];
  if (os_log_type_enabled(*MEMORY[0x277D77DB8], OS_LOG_TYPE_ERROR))
  {
    __62__SBNotificationCarPlayDestination__startAnnounceTimeoutTimer__block_invoke_cold_1(WeakRetained, v5);
  }

  v6 = [WeakRetained _announceTimeoutTimer];

  if (v6 == v3)
  {
    [WeakRetained _invalidateAnnounceTimeoutTimer];
  }

  [WeakRetained _setNotificationRequestCurrentlyAnnouncing:0];
  [WeakRetained _flushAnnounceNotificationRequestsShouldAnnounce:1];
  [WeakRetained _flushNotificationRequestsPendingAnnounce];
}

- (void)_invalidateAnnounceTimeoutTimer
{
  v3 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_DEFAULT, "CarPlay cancelling announce timeout timer", v5, 2u);
  }

  [(BSAbsoluteMachTimer *)self->_announceTimeoutTimer invalidate];
  announceTimeoutTimer = self->_announceTimeoutTimer;
  self->_announceTimeoutTimer = 0;
}

- (void)didSelectBannerOfPresentableViewController:(uint64_t)a3 .cold.1(void *a1, void *a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [a2 requestIdentifier];
  OUTLINED_FUNCTION_0_14();
  v8 = a3;
  _os_log_error_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_ERROR, "Error attempting to revoke presentable: requestID: %{public}@; error: %{public}@", v7, 0x16u);
}

void __79__SBNotificationCarPlayDestination_didSelectBannerOfPresentableViewController___block_invoke_cold_1(void **a1, void *a2)
{
  v2 = *a1;
  v3 = a2;
  v4 = [v2 requestIdentifier];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_4_16(&dword_21ED4E000, v5, v6, "Error attempting to revoke presentable: requestID: %{public}@; error: %{public}@", v7, v8, v9, v10, v11);
}

- (void)didCancelBannerOfPresentableViewController:(void *)a1 reason:(void *)a2 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 requestIdentifier];
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_4_16(&dword_21ED4E000, v5, v6, "Error attempting to revoke presentable: requestID: %{public}@; error: %{public}@", v7, v8, v9, v10, v11);
}

- (void)_policyForApp:.cold.1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[SBNotificationCarPlayDestination _policyForApp:]"];
  [v1 handleFailureInFunction:v0 file:@"SBNotificationCarPlayDestination.m" lineNumber:404 description:@"this call must be made on the main thread"];
}

- (void)_setSuspended:(NSObject *)a3 forPresentingAlertControllerForPresentable:.cold.1(char a1, uint64_t a2, NSObject *a3)
{
  v3 = @"suspend";
  if ((a1 & 1) == 0)
  {
    v3 = @"resume";
  }

  *v4 = 138543618;
  *&v4[4] = v3;
  *&v4[12] = 2114;
  *&v4[14] = a2;
  OUTLINED_FUNCTION_4(&dword_21ED4E000, a2, a3, "Error attempting to %{public}@: %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x277D85DE8]);
}

void __62__SBNotificationCarPlayDestination__startAnnounceTimeoutTimer__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = a2;
  [v2 count];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_21ED4E000, v3, OS_LOG_TYPE_ERROR, "Timed out while waiting for announce to start for %lu notifications!", v4, 0xCu);
}

@end