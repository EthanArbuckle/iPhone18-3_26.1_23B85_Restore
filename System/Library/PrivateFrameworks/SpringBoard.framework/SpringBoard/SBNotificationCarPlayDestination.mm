@interface SBNotificationCarPlayDestination
- (BOOL)_inCallOrFaceTime;
- (BOOL)_notificationRequestShouldShowModalSubActions:(id)actions;
- (BOOL)_notificationRequestSupportsSubActions:(id)actions;
- (BOOL)_setSuspended:(BOOL)suspended forPresentingAlertControllerForPresentable:(id)presentable;
- (BOOL)_shouldAnnounceNotificationForActiveAVSession:(id)session;
- (BOOL)_shouldAnnounceNotificationRequest:(id)request;
- (BOOL)_shouldDeferPostingNotificationRequestForAnnounce:(id)announce;
- (BOOL)presentableViewControllerClosesByDefault:(id)default;
- (NCCarPlayBannerSource)_carPlayBannerSource;
- (NCNotificationAlertDestinationDelegate)delegate;
- (SBNCAlertingController)alertingController;
- (SBNotificationCarPlayDestination)init;
- (id)_actionForNotificationRequest:(id)request;
- (id)_allNotificationActionsForNotificationRequest:(id)request;
- (id)_announcementStateObserver;
- (id)_appPolicyEvaluator;
- (id)_bulletinForNotificationRequest:(id)request;
- (id)_closeNotificationActionForNotificationRequest:(id)request;
- (id)_ignoreActionForNotificationRequest:(id)request;
- (id)_newPresentableForNotificationRequest:(id)request layoutDescription:(id)description;
- (id)_notificationRequestForAnnounceWithIdentifier:(id)identifier;
- (id)_policyForApp:(id)app;
- (id)_presentablesWithRequestIdentifier:(id)identifier;
- (id)_removePresentable:(id)presentable;
- (id)_subActionLabelsForNotificationRequest:(id)request;
- (id)_subActionsForNotificationRequest:(id)request;
- (id)_supplementaryActionsForNotificationRequest:(id)request;
- (id)keyWindowForScreen:(id)screen;
- (int64_t)_announceDeactivationReasonForBannerRevocationReason:(id)reason;
- (int64_t)_defaultActionTypeForNotificationRequest:(id)request;
- (int64_t)_effectiveDefaultActionTypeForNotificationRequest:(id)request;
- (void)_addPresentable:(id)presentable;
- (void)_callOrFaceTimeStateChanged;
- (void)_cancelAnnounceForNotificationRequest:(id)request withReason:(int64_t)reason deactivateAnnounce:(BOOL)announce;
- (void)_clearNotificationRequestPendingAnnounceDeactivationIfNecessary;
- (void)_flushAnnounceNotificationRequestsShouldAnnounce:(BOOL)announce;
- (void)_flushNotificationRequestsPendingAnnounce;
- (void)_invalidateAnnounceTimeoutTimer;
- (void)_modifyNotificationRequest:(id)request inStore:(id)store;
- (void)_postNotificationRequest:(id)request shouldAnnounce:(BOOL)announce;
- (void)_queueNotificationRequestWhileAnnouncing:(id)announcing;
- (void)_requestAnnounceForNotificationRequest:(id)request;
- (void)_setNotificationRequestCurrentlyAnnouncing:(id)announcing;
- (void)_startAnnounceTimeoutTimer;
- (void)_voicePromptStyleChanged:(id)changed;
- (void)_withdrawNotificationRequest:(id)request inStore:(id)store;
- (void)bannerHostDidBecomeAvailableForMonitorListener:(id)listener;
- (void)bannerHostDidBecomeUnavailableForMonitorListener:(id)listener;
- (void)dealloc;
- (void)didCancelBannerOfPresentableViewController:(id)controller reason:(id)reason;
- (void)didSelectBannerOfPresentableViewController:(id)controller;
- (void)modifyNotificationRequest:(id)request;
- (void)notificationAnnouncementObserver:(id)observer announcementSpeakingStateDidUpdate:(int64_t)update forNotificationRequestIdentifiers:(id)identifiers;
- (void)postNotificationRequest:(id)request;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)withdrawNotificationRequest:(id)request;
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
    inFaceTime = 1;
  }

  else
  {
    v4 = +[SBConferenceManager sharedInstance];
    inFaceTime = [v4 inFaceTime];
  }

  return inFaceTime;
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
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__callOrFaceTimeStateChanged name:@"SBCallCountChangedNotification" object:0];
    [defaultCenter addObserver:v2 selector:sel__callOrFaceTimeStateChanged name:@"SBFaceTimeStateChangedNotification" object:0];
    v8 = MEMORY[0x277D26E10];
    v9 = [MEMORY[0x277CBEA60] arrayWithObject:*MEMORY[0x277D26E10]];
    mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
    [mEMORY[0x277D26E58] setAttribute:v9 forKey:*MEMORY[0x277D26DD0] error:0];

    [defaultCenter addObserver:v2 selector:sel__voicePromptStyleChanged_ name:*v8 object:0];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(BSAbsoluteMachTimer *)self->_announceTimeoutTimer invalidate];
  v4.receiver = self;
  v4.super_class = SBNotificationCarPlayDestination;
  [(SBNotificationCarPlayDestination *)&v4 dealloc];
}

- (id)keyWindowForScreen:(id)screen
{
  screenCopy = screen;
  if ([(SBNotificationCarPlayDestination *)self isActive])
  {
    _carPlayBannerSource = [(SBNotificationCarPlayDestination *)self _carPlayBannerSource];
    v6 = [_carPlayBannerSource keyWindowForScreen:screenCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)postNotificationRequest:(id)request
{
  requestCopy = request;
  [(SBNotificationCarPlayDestination *)self _postNotificationRequest:requestCopy shouldAnnounce:[(SBNotificationCarPlayDestination *)self _shouldAnnounceNotificationRequest:requestCopy]];
}

- (void)_postNotificationRequest:(id)request shouldAnnounce:(BOOL)announce
{
  announceCopy = announce;
  requestCopy = request;
  v7 = requestCopy;
  if (requestCopy)
  {
    alertOptions = [requestCopy alertOptions];
    shouldSuppress = [alertOptions shouldSuppress];

    if ((shouldSuppress & 1) == 0)
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
          _carPlayBannerSource = [(SBNotificationCarPlayDestination *)self _carPlayBannerSource];
          v25 = 0;
          v13 = [_carPlayBannerSource layoutDescriptionWithError:&v25];
          v14 = v25;

          if (v13)
          {
            v15 = [(SBNotificationCarPlayDestination *)self _newPresentableForNotificationRequest:v7 layoutDescription:v13];
            _carPlayBannerSource2 = [(SBNotificationCarPlayDestination *)self _carPlayBannerSource];
            v24 = 0;
            v17 = [_carPlayBannerSource2 postPresentable:v15 options:0 userInfo:0 error:&v24];
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

        if (announceCopy)
        {
          _notificationRequestCurrentlyAnnouncing = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
          v21 = _notificationRequestCurrentlyAnnouncing;
          if (_notificationRequestCurrentlyAnnouncing)
          {
            v22 = _notificationRequestCurrentlyAnnouncing;
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

- (void)modifyNotificationRequest:(id)request
{
  v17 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = requestCopy;
  if (requestCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    carPlayRequestIdentifier = [requestCopy carPlayRequestIdentifier];
    v7 = [(SBNotificationCarPlayDestination *)self _presentablesWithRequestIdentifier:carPlayRequestIdentifier];

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

- (void)withdrawNotificationRequest:(id)request
{
  requestCopy = request;
  v5 = requestCopy;
  if (requestCopy)
  {
    carPlayRequestIdentifier = [requestCopy carPlayRequestIdentifier];
    _carPlayBannerSource = [(SBNotificationCarPlayDestination *)self _carPlayBannerSource];
    v10 = 0;
    v8 = [_carPlayBannerSource revokePresentableWithRequestIdentifier:carPlayRequestIdentifier reason:@"SBBannerRevocationReasonCarPlayDestinationExplicitDismissal" animated:1 userInfo:0 error:&v10];
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

- (void)bannerHostDidBecomeAvailableForMonitorListener:(id)listener
{
  mEMORY[0x277D0EB00] = [MEMORY[0x277D0EB00] sharedConfiguration];
  currentCountrySupportsCarIntegration = [mEMORY[0x277D0EB00] currentCountrySupportsCarIntegration];

  [(CRCarPlayAppPolicyEvaluator *)self->_appPolicyEvaluator setGeoSupported:currentCountrySupportsCarIntegration];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SBNotificationCarPlayDestinationAvailabilityDidChange" object:self];
}

- (void)bannerHostDidBecomeUnavailableForMonitorListener:(id)listener
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"SBNotificationCarPlayDestinationAvailabilityDidChange" object:self];

  [(NCCarPlayBannerSource *)self->_carPlayBannerSource invalidate];
  carPlayBannerSource = self->_carPlayBannerSource;
  self->_carPlayBannerSource = 0;
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  v22 = *MEMORY[0x277D85DE8];
  bannerCopy = banner;
  v5 = objc_opt_class();
  v6 = bannerCopy;
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

  notificationRequest = [v8 notificationRequest];

  _notificationRequestCurrentlyAnnouncing = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
  v11 = [notificationRequest matchesRequest:_notificationRequestCurrentlyAnnouncing];

  delegate = [(SBNotificationCarPlayDestination *)self delegate];
  [delegate destination:self willPresentNotificationRequest:notificationRequest suppressAlerts:v11];

  if ([(SBNotificationCarPlayDestination *)self _shouldAnnounceNotificationRequest:notificationRequest]&& ([(NSMutableArray *)self->_notificationRequestsForAnnounce containsObject:notificationRequest]& 1) == 0 && ([(NSMutableArray *)self->_notificationRequestsPendingAVSession containsObject:notificationRequest]& 1) == 0)
  {
    v13 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      notificationIdentifier = [notificationRequest notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v20 = 138543362;
      v21 = un_logDigest;
      _os_log_impl(&dword_21ED4E000, v14, OS_LOG_TYPE_DEFAULT, "CarPlay requesting announce again for notification request %{public}@ on banner presentation", &v20, 0xCu);
    }

    _notificationRequestCurrentlyAnnouncing2 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
    v18 = _notificationRequestCurrentlyAnnouncing2;
    if (_notificationRequestCurrentlyAnnouncing2)
    {
      v19 = _notificationRequestCurrentlyAnnouncing2;
    }

    else
    {
      v19 = notificationRequest;
    }

    [(SBNotificationCarPlayDestination *)self _setNotificationRequestCurrentlyAnnouncing:v19];

    [(SBNotificationCarPlayDestination *)self _requestAnnounceForNotificationRequest:notificationRequest];
  }
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  v8 = objc_opt_class();
  v17 = bannerCopy;
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

  notificationRequest = [v11 notificationRequest];
  if (([reasonCopy isEqualToString:*MEMORY[0x277CF91C0]] & 1) != 0 || (objc_msgSend(reasonCopy, "isEqualToString:", *MEMORY[0x277CF91D0]) & 1) != 0 || (objc_msgSend(reasonCopy, "isEqualToString:", *MEMORY[0x277D77FF8]) & 1) != 0 || objc_msgSend(reasonCopy, "isEqualToString:", *MEMORY[0x277D78000]))
  {
    v13 = [(SBNotificationCarPlayDestination *)self _ignoreActionForNotificationRequest:notificationRequest];
    v14 = v13;
    if (v13)
    {
      (*(v13 + 16))(v13);
    }
  }

  if (([reasonCopy isEqualToString:@"SBBannerRevocationReasonCarPlayDestinationUserAction"] & 1) == 0)
  {
    [(SBNotificationCarPlayDestination *)self _cancelAnnounceForNotificationRequest:notificationRequest withReason:[(SBNotificationCarPlayDestination *)self _announceDeactivationReasonForBannerRevocationReason:reasonCopy] deactivateAnnounce:1];
  }

  viewController = [v17 viewController];
  [viewController dismissViewControllerAnimated:1 completion:0];

  [(SBNotificationCarPlayDestination *)self _setSuspended:0 forPresentingAlertControllerForPresentable:v17];
  delegate = [(SBNotificationCarPlayDestination *)self delegate];
  [delegate destination:self didDismissNotificationRequest:notificationRequest];
}

- (BOOL)presentableViewControllerClosesByDefault:(id)default
{
  notificationRequest = [default notificationRequest];
  LOBYTE(self) = [(SBNotificationCarPlayDestination *)self _effectiveDefaultActionTypeForNotificationRequest:notificationRequest]== 1;

  return self;
}

- (void)didSelectBannerOfPresentableViewController:(id)controller
{
  controllerCopy = controller;
  notificationRequest = [controllerCopy notificationRequest];
  if ([(SBNotificationCarPlayDestination *)self _notificationRequestShouldShowModalSubActions:notificationRequest])
  {
    [(SBNotificationCarPlayDestination *)self _setSuspended:1 forPresentingAlertControllerForPresentable:controllerCopy];
    v6 = [(SBNotificationCarPlayDestination *)self _subActionLabelsForNotificationRequest:notificationRequest];
    v7 = MEMORY[0x277D75110];
    carPlayTitle = [notificationRequest carPlayTitle];
    v29 = notificationRequest;
    carPlayMessage = [notificationRequest carPlayMessage];
    v31 = [v7 alertControllerWithTitle:carPlayTitle message:carPlayMessage preferredStyle:1];

    v10 = [v6 count];
    val = self;
    _carPlayBannerSource = [(SBNotificationCarPlayDestination *)self _carPlayBannerSource];
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
        v42 = _carPlayBannerSource;
        v43 = controllerCopy;
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

    parentViewController = [controllerCopy parentViewController];
    if (objc_opt_respondsToSelector())
    {
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __79__SBNotificationCarPlayDestination_didSelectBannerOfPresentableViewController___block_invoke_104;
      v36[3] = &unk_2783A92D8;
      v37 = _carPlayBannerSource;
      v38 = controllerCopy;
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __79__SBNotificationCarPlayDestination_didSelectBannerOfPresentableViewController___block_invoke_2;
      v33[3] = &unk_2783A92D8;
      v34 = v38;
      v35 = v31;
      [parentViewController performCoordinatedUpdate:v36 updateResponseHandler:v33];
    }

    notificationRequest = v29;
  }

  else
  {
    notificationRequest2 = [controllerCopy notificationRequest];
    v6 = [(SBNotificationCarPlayDestination *)self _actionForNotificationRequest:notificationRequest2];

    if (v6)
    {
      v6[2](v6);
    }

    v21 = MEMORY[0x277CF0A80];
    requesterIdentifier = [MEMORY[0x277D78040] requesterIdentifier];
    v23 = [v21 bannerSourceForDestination:1 forRequesterIdentifier:requesterIdentifier];

    requestIdentifier = [controllerCopy requestIdentifier];
    v31 = v23;
    v32 = 0;
    v25 = [v23 revokePresentableWithRequestIdentifier:requestIdentifier reason:@"SBBannerRevocationReasonCarPlayDestinationUserAction" animated:1 userInfo:0 error:&v32];
    _carPlayBannerSource = v32;

    if (!v25)
    {
      v26 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
      {
        [(SBNotificationCarPlayDestination *)v26 didSelectBannerOfPresentableViewController:controllerCopy, _carPlayBannerSource];
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

- (void)didCancelBannerOfPresentableViewController:(id)controller reason:(id)reason
{
  controllerCopy = controller;
  v6 = MEMORY[0x277CF0A80];
  v7 = MEMORY[0x277D78040];
  reasonCopy = reason;
  requesterIdentifier = [v7 requesterIdentifier];
  v10 = [v6 bannerSourceForDestination:1 forRequesterIdentifier:requesterIdentifier];

  requestIdentifier = [controllerCopy requestIdentifier];
  v15 = 0;
  v12 = [v10 revokePresentableWithRequestIdentifier:requestIdentifier reason:reasonCopy animated:1 userInfo:0 error:&v15];

  v13 = v15;
  if (!v12)
  {
    v14 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      [SBNotificationCarPlayDestination didCancelBannerOfPresentableViewController:v14 reason:controllerCopy];
    }
  }
}

- (id)_newPresentableForNotificationRequest:(id)request layoutDescription:(id)description
{
  v6 = MEMORY[0x277D78040];
  descriptionCopy = description;
  requestCopy = request;
  v9 = [[v6 alloc] initWithNotificationRequest:requestCopy];

  [(SBNotificationCarPlayDestination *)self _addPresentable:v9];
  [v9 setDelegate:self];
  [v9 addPresentableObserver:self];
  [descriptionCopy presentationSize];
  v11 = v10;
  v13 = v12;
  [descriptionCopy containerSize];
  v15 = v14;
  v17 = v16;

  [v9 preferredContentSizeWithPresentationSize:v11 containerSize:{v13, v15, v17}];
  [v9 setPreferredContentSize:?];
  return v9;
}

- (void)_addPresentable:(id)presentable
{
  presentableCopy = presentable;
  if (presentableCopy)
  {
    v9 = presentableCopy;
    selfCopy = self;
    objc_sync_enter(selfCopy);
    presentables = selfCopy->_presentables;
    if (!presentables)
    {
      v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
      v8 = selfCopy->_presentables;
      selfCopy->_presentables = v7;

      presentables = selfCopy->_presentables;
    }

    [(NSHashTable *)presentables addObject:v9];
    objc_sync_exit(selfCopy);

    presentableCopy = v9;
  }
}

- (id)_presentablesWithRequestIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = selfCopy->_presentables;
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
          requestIdentifier = [v11 requestIdentifier];
          v13 = [requestIdentifier isEqualToString:identifierCopy];

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

    objc_sync_exit(selfCopy);
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

- (id)_removePresentable:(id)presentable
{
  presentableCopy = presentable;
  if (presentableCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if ([(NSHashTable *)selfCopy->_presentables containsObject:presentableCopy])
    {
      [(NSHashTable *)selfCopy->_presentables removeObject:presentableCopy];
    }

    else if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_ERROR))
    {
      [SBNotificationCarPlayDestination _removePresentable:];
    }

    objc_sync_exit(selfCopy);
  }

  return presentableCopy;
}

- (id)_policyForApp:(id)app
{
  appCopy = app;
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    [SBNotificationCarPlayDestination _policyForApp:];
  }

  info = [appCopy info];
  carPlayDeclaration = [info carPlayDeclaration];
  if (carPlayDeclaration)
  {
    bundleIdentifier = [info bundleIdentifier];
    v8 = [(NSMutableDictionary *)self->_appPolicyForBundleID objectForKey:bundleIdentifier];
    if (!v8)
    {
      _appPolicyEvaluator = [(SBNotificationCarPlayDestination *)self _appPolicyEvaluator];
      v8 = [_appPolicyEvaluator effectivePolicyForAppDeclaration:carPlayDeclaration];

      if (v8)
      {
        [(NSMutableDictionary *)self->_appPolicyForBundleID setObject:v8 forKey:bundleIdentifier];
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)_defaultActionTypeForNotificationRequest:(id)request
{
  requestCopy = request;
  sectionIdentifier = [requestCopy sectionIdentifier];
  v6 = +[SBApplicationController sharedInstance];
  v7 = [v6 applicationWithBundleIdentifier:sectionIdentifier];

  v8 = [(SBNotificationCarPlayDestination *)self _policyForApp:v7];
  content = [requestCopy content];
  contentType = [content contentType];

  if ([v8 bannerLaunchTypeForNotificationContentType:contentType] == 1 || (objc_msgSend(requestCopy, "options"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "lauchUsingSiriForCarPlayDefaultAction"), v11, (v12 & 1) != 0))
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
    if (([v8 canDisplayOnCarScreen] & 1) == 0)
    {
      v14 = [(SBNotificationCarPlayDestination *)self _supplementaryActionsForNotificationRequest:requestCopy];
      v15 = [v14 count];

      if (!v15)
      {
        v13 = 1;
      }
    }
  }

  return v13;
}

- (int64_t)_effectiveDefaultActionTypeForNotificationRequest:(id)request
{
  v4 = [(SBNotificationCarPlayDestination *)self _defaultActionTypeForNotificationRequest:request];
  if ([(SBNotificationCarPlayDestination *)self _inCallOrFaceTime]&& v4 == 2)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (id)_actionForNotificationRequest:(id)request
{
  requestCopy = request;
  delegate = [(SBNotificationCarPlayDestination *)self delegate];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__SBNotificationCarPlayDestination__actionForNotificationRequest___block_invoke;
  v11[3] = &unk_2783B2078;
  v11[4] = self;
  v12 = requestCopy;
  v13 = delegate;
  v6 = delegate;
  v7 = requestCopy;
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

- (id)_ignoreActionForNotificationRequest:(id)request
{
  requestCopy = request;
  delegate = [(SBNotificationCarPlayDestination *)self delegate];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__SBNotificationCarPlayDestination__ignoreActionForNotificationRequest___block_invoke;
  v10[3] = &unk_2783B2078;
  v11 = delegate;
  selfCopy = self;
  v13 = requestCopy;
  v6 = requestCopy;
  v7 = delegate;
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

- (id)_supplementaryActionsForNotificationRequest:(id)request
{
  supplementaryActions = [request supplementaryActions];
  v4 = [supplementaryActions objectForKey:*MEMORY[0x277D77DA0]];

  return v4;
}

- (id)_closeNotificationActionForNotificationRequest:(id)request
{
  requestCopy = request;
  options = [requestCopy options];
  if ([options hideCloseActionForCarPlay])
  {
    closeAction = 0;
  }

  else
  {
    closeAction = [requestCopy closeAction];
  }

  return closeAction;
}

- (id)_allNotificationActionsForNotificationRequest:(id)request
{
  v4 = MEMORY[0x277CBEB18];
  requestCopy = request;
  v6 = objc_alloc_init(v4);
  v7 = [(SBNotificationCarPlayDestination *)self _supplementaryActionsForNotificationRequest:requestCopy];
  [v6 addObjectsFromArray:v7];
  v8 = [(SBNotificationCarPlayDestination *)self _closeNotificationActionForNotificationRequest:requestCopy];

  [v6 bs_safeAddObject:v8];

  return v6;
}

- (BOOL)_notificationRequestSupportsSubActions:(id)actions
{
  actionsCopy = actions;
  if ([(SBNotificationCarPlayDestination *)self _defaultActionTypeForNotificationRequest:actionsCopy]== 2)
  {
    allowActionsForCarPlay = 0;
  }

  else
  {
    options = [actionsCopy options];
    allowActionsForCarPlay = [options allowActionsForCarPlay];
  }

  return allowActionsForCarPlay;
}

- (BOOL)_notificationRequestShouldShowModalSubActions:(id)actions
{
  actionsCopy = actions;
  if ([(SBNotificationCarPlayDestination *)self _notificationRequestSupportsSubActions:actionsCopy])
  {
    v5 = [(SBNotificationCarPlayDestination *)self _supplementaryActionsForNotificationRequest:actionsCopy];
    v6 = [v5 count] != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_subActionLabelsForNotificationRequest:(id)request
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if ([(SBNotificationCarPlayDestination *)self _notificationRequestSupportsSubActions:requestCopy])
  {
    array = [MEMORY[0x277CBEB18] array];
    v6 = [(SBNotificationCarPlayDestination *)self _supplementaryActionsForNotificationRequest:requestCopy];
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

          title = [*(*(&v16 + 1) + 8 * i) title];
          if ([title length])
          {
            [array addObject:title];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v12 = [(SBNotificationCarPlayDestination *)self _closeNotificationActionForNotificationRequest:requestCopy];
    if (v12)
    {
      mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
      v14 = [mainBundle localizedStringForKey:@"BANNER_ALERT_CLOSE" value:&stru_283094718 table:@"CarDisplay"];
      [array addObject:v14];
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)_subActionsForNotificationRequest:(id)request
{
  requestCopy = request;
  if ([(SBNotificationCarPlayDestination *)self _notificationRequestSupportsSubActions:requestCopy])
  {
    objc_initWeak(&location, self);
    v5 = [(SBNotificationCarPlayDestination *)self _allNotificationActionsForNotificationRequest:requestCopy];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__SBNotificationCarPlayDestination__subActionsForNotificationRequest___block_invoke;
    v8[3] = &unk_2783C05C0;
    objc_copyWeak(&v10, &location);
    v9 = requestCopy;
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

- (id)_bulletinForNotificationRequest:(id)request
{
  requestCopy = request;
  bulletin = [requestCopy bulletin];
  if (!bulletin)
  {
    bulletin = objc_alloc_init(MEMORY[0x277CF3518]);
    sectionIdentifier = [requestCopy sectionIdentifier];
    [bulletin setSectionID:sectionIdentifier];

    carPlayTitle = [requestCopy carPlayTitle];
    [bulletin setTitle:carPlayTitle];

    carPlayMessage = [requestCopy carPlayMessage];
    [bulletin setMessage:carPlayMessage];
  }

  return bulletin;
}

- (BOOL)_setSuspended:(BOOL)suspended forPresentingAlertControllerForPresentable:(id)presentable
{
  suspendedCopy = suspended;
  presentableCopy = presentable;
  _carPlayBannerSource = [(SBNotificationCarPlayDestination *)self _carPlayBannerSource];
  v8 = *MEMORY[0x277D78010];
  v16 = 0;
  v9 = [_carPlayBannerSource setSuspended:suspendedCopy forReason:v8 revokingCurrent:0 error:&v16];
  v10 = v16;

  if (v9)
  {
    WeakRetained = objc_loadWeakRetained(&self->_presentablePresentingAlertController);
    v12 = WeakRetained;
    v13 = presentableCopy;
    if (!suspendedCopy)
    {
      if (WeakRetained != presentableCopy)
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
    [(SBNotificationCarPlayDestination *)suspendedCopy _setSuspended:v10 forPresentingAlertControllerForPresentable:v14];
  }

LABEL_9:

  return v9;
}

- (void)notificationAnnouncementObserver:(id)observer announcementSpeakingStateDidUpdate:(int64_t)update forNotificationRequestIdentifiers:(id)identifiers
{
  v78 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  v8 = [identifiersCopy bs_compactMap:&__block_literal_global_362];
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

  if (update == 2)
  {
    _notificationRequestCurrentlyAnnouncing = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
    _carPlayBannerSource = [(SBNotificationCarPlayDestination *)self _carPlayBannerSource];
    [_carPlayBannerSource didFinishAnnounceForNotificationRequest:_notificationRequestCurrentlyAnnouncing];

    if ([(NSMutableArray *)self->_notificationRequestsForAnnounce count]< 2)
    {
      _announcementStateObserver = [(SBNotificationCarPlayDestination *)self _announcementStateObserver];
      firstObject = [identifiersCopy firstObject];
      [_announcementStateObserver stopObservingNotificationWithRequestIdentifier:firstObject];

      v56 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
      {
        v57 = v56;
        notificationIdentifier = [_notificationRequestCurrentlyAnnouncing notificationIdentifier];
        un_logDigest = [notificationIdentifier un_logDigest];
        *buf = 138543362;
        v75 = un_logDigest;
        _os_log_impl(&dword_21ED4E000, v57, OS_LOG_TYPE_DEFAULT, "Carplay setting up deferred announce deactivation for %{public}@ on announce finish since this is the last notification to be announced", buf, 0xCu);
      }

      objc_storeStrong(&self->_notificationRequestPendingDeactivation, _notificationRequestCurrentlyAnnouncing);
    }

    else
    {
      log = v8;
      if (_notificationRequestCurrentlyAnnouncing)
      {
        [(NSMutableArray *)self->_notificationRequestsForAnnounce removeObject:_notificationRequestCurrentlyAnnouncing];
        [(NSMutableDictionary *)self->_announceRequestsForNotificationRequests removeObjectForKey:_notificationRequestCurrentlyAnnouncing];
      }

      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v31 = identifiersCopy;
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
            _announcementStateObserver2 = [(SBNotificationCarPlayDestination *)self _announcementStateObserver];
            [_announcementStateObserver2 stopObservingNotificationWithRequestIdentifier:v36];

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
          _notificationRequestCurrentlyAnnouncing2 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
          notificationIdentifier2 = [_notificationRequestCurrentlyAnnouncing2 notificationIdentifier];
          un_logDigest2 = [notificationIdentifier2 un_logDigest];
          *buf = 138543362;
          v75 = un_logDigest2;
          _os_log_impl(&dword_21ED4E000, v40, OS_LOG_TYPE_DEFAULT, "Carplay withdrawing notification request %{public}@ on announce finish while pending other announce notifications", buf, 0xCu);
        }

        _notificationRequestCurrentlyAnnouncing3 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
        [(SBNotificationCarPlayDestination *)self withdrawNotificationRequest:_notificationRequestCurrentlyAnnouncing3];

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
    if (update == 1)
    {
      [(SBNotificationCarPlayDestination *)self _invalidateAnnounceTimeoutTimer];
      firstObject2 = [identifiersCopy firstObject];
      _notificationRequestCurrentlyAnnouncing = [(SBNotificationCarPlayDestination *)self _notificationRequestForAnnounceWithIdentifier:firstObject2];

      _notificationRequestCurrentlyAnnouncing4 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
      if (_notificationRequestCurrentlyAnnouncing4)
      {
        v16 = _notificationRequestCurrentlyAnnouncing4;
        _notificationRequestCurrentlyAnnouncing5 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
        v18 = [_notificationRequestCurrentlyAnnouncing matchesRequest:_notificationRequestCurrentlyAnnouncing5];

        if (v18)
        {
          goto LABEL_14;
        }
      }

      _notificationRequestCurrentlyAnnouncing6 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
      if (([_notificationRequestCurrentlyAnnouncing matchesRequest:_notificationRequestCurrentlyAnnouncing6] & 1) == 0)
      {
        _notificationRequestCurrentlyAnnouncing7 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];

        if (!_notificationRequestCurrentlyAnnouncing7)
        {
LABEL_13:
          [(SBNotificationCarPlayDestination *)self _setNotificationRequestCurrentlyAnnouncing:_notificationRequestCurrentlyAnnouncing];
          _notificationRequestCurrentlyAnnouncing8 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
          [(SBNotificationCarPlayDestination *)self _postNotificationRequest:_notificationRequestCurrentlyAnnouncing8 shouldAnnounce:0];

LABEL_14:
          _carPlayBannerSource2 = [(SBNotificationCarPlayDestination *)self _carPlayBannerSource];
          _notificationRequestCurrentlyAnnouncing9 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
          [_carPlayBannerSource2 didBeginAnnounceForNotificationRequest:_notificationRequestCurrentlyAnnouncing9];

          goto LABEL_47;
        }

        v21 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT))
        {
          loga = v21;
          _notificationRequestCurrentlyAnnouncing10 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
          notificationIdentifier3 = [_notificationRequestCurrentlyAnnouncing10 notificationIdentifier];
          un_logDigest3 = [notificationIdentifier3 un_logDigest];
          notificationIdentifier4 = [_notificationRequestCurrentlyAnnouncing notificationIdentifier];
          un_logDigest4 = [notificationIdentifier4 un_logDigest];
          *buf = 138543618;
          v75 = un_logDigest3;
          v76 = 2114;
          v77 = un_logDigest4;
          _os_log_impl(&dword_21ED4E000, loga, OS_LOG_TYPE_DEFAULT, "Carplay withdrawing currently announcing notification request %{public}@ as it is starting announce for request %{public}@", buf, 0x16u);
        }

        _notificationRequestCurrentlyAnnouncing6 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
        [(SBNotificationCarPlayDestination *)self withdrawNotificationRequest:_notificationRequestCurrentlyAnnouncing6];
      }

      goto LABEL_13;
    }

    _notificationRequestCurrentlyAnnouncing = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
    if (_notificationRequestCurrentlyAnnouncing)
    {
      _carPlayBannerSource3 = [(SBNotificationCarPlayDestination *)self _carPlayBannerSource];
      [_carPlayBannerSource3 didFinishAnnounceForNotificationRequest:_notificationRequestCurrentlyAnnouncing];
    }

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v46 = identifiersCopy;
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
          _announcementStateObserver3 = [(SBNotificationCarPlayDestination *)self _announcementStateObserver];
          [_announcementStateObserver3 stopObservingNotificationWithRequestIdentifier:v51];

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

- (BOOL)_shouldAnnounceNotificationRequest:(id)request
{
  requestCopy = request;
  if (_os_feature_enabled_impl())
  {
    options = [requestCopy options];
    shouldAnnounceForCarPlay = [options shouldAnnounceForCarPlay];
  }

  else
  {
    shouldAnnounceForCarPlay = 0;
  }

  return shouldAnnounceForCarPlay;
}

- (BOOL)_shouldDeferPostingNotificationRequestForAnnounce:(id)announce
{
  announceCopy = announce;
  if ([(SBNotificationCarPlayDestination *)self _isCurrentlyAnnouncing])
  {
    v5 = ![(SBNotificationCarPlayDestination *)self _shouldAnnounceNotificationRequest:announceCopy];
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

- (void)_requestAnnounceForNotificationRequest:(id)request
{
  v47 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = MEMORY[0x277D77DB0];
  v6 = *MEMORY[0x277D77DB0];
  if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    notificationIdentifier = [requestCopy notificationIdentifier];
    un_logDigest = [notificationIdentifier un_logDigest];
    *buf = 138543362;
    v46 = un_logDigest;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "CarPlay requesting announce for notification request %{public}@", buf, 0xCu);
  }

  if ([(SBNotificationCarPlayDestination *)self _isCurrentlyAnnouncing]|| [(SBNotificationCarPlayDestination *)self _shouldAnnounceNotificationForActiveAVSession:requestCopy])
  {
    notificationIdentifier2 = [requestCopy notificationIdentifier];
    _announcementStateObserver = [(SBNotificationCarPlayDestination *)self _announcementStateObserver];
    [_announcementStateObserver startObservingNotificationWithRequestIdentifier:notificationIdentifier2];

    notificationRequestsForAnnounce = self->_notificationRequestsForAnnounce;
    if (!notificationRequestsForAnnounce)
    {
      v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v14 = self->_notificationRequestsForAnnounce;
      self->_notificationRequestsForAnnounce = v13;

      notificationRequestsForAnnounce = self->_notificationRequestsForAnnounce;
    }

    [(NSMutableArray *)notificationRequestsForAnnounce addObject:requestCopy];
    userNotification = [requestCopy userNotification];
    v15 = [(SBNotificationCarPlayDestination *)self _bulletinForNotificationRequest:requestCopy];
    summary = [v15 summary];
    string = [summary string];

    if ([string length])
    {
      v18 = [objc_alloc(MEMORY[0x277CEF418]) initWithSummary:string summaryType:2 error:0];
      v19 = 0;
    }

    else
    {
      v18 = 0;
      v19 = 1;
    }

    v20 = objc_alloc(MEMORY[0x277CEF410]);
    sectionIdentifier = [requestCopy sectionIdentifier];
    v22 = [v20 initWithUserNotification:userNotification sourceAppId:sectionIdentifier platform:2 summaryDecision:v19 summary:v18];

    announceRequestsForNotificationRequests = self->_announceRequestsForNotificationRequests;
    if (!announceRequestsForNotificationRequests)
    {
      v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v25 = self->_announceRequestsForNotificationRequests;
      self->_announceRequestsForNotificationRequests = v24;

      announceRequestsForNotificationRequests = self->_announceRequestsForNotificationRequests;
    }

    [(NSMutableDictionary *)announceRequestsForNotificationRequests setObject:v22 forKey:requestCopy];
    _notificationRequestCurrentlyAnnouncing = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
    v27 = _notificationRequestCurrentlyAnnouncing;
    if (_notificationRequestCurrentlyAnnouncing)
    {
      v28 = _notificationRequestCurrentlyAnnouncing;
    }

    else
    {
      v28 = requestCopy;
    }

    [(SBNotificationCarPlayDestination *)self _setNotificationRequestCurrentlyAnnouncing:v28];

    objc_initWeak(buf, self);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __75__SBNotificationCarPlayDestination__requestAnnounceForNotificationRequest___block_invoke;
    v40[3] = &unk_2783ADB58;
    v29 = notificationIdentifier2;
    v41 = v29;
    objc_copyWeak(&v44, buf);
    v42 = requestCopy;
    selfCopy = self;
    [v22 performRequestWithCompletion:v40];
    if ([string length])
    {
      v30 = [objc_alloc(MEMORY[0x277CEF418]) initWithSummary:string summaryType:2 error:0];
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
      notificationIdentifier3 = [requestCopy notificationIdentifier];
      un_logDigest2 = [notificationIdentifier3 un_logDigest];
      *buf = 138543362;
      v46 = un_logDigest2;
      _os_log_impl(&dword_21ED4E000, v32, OS_LOG_TYPE_DEFAULT, "CarPlay request to announce notification request %{public}@ dropped due to current AV session", buf, 0xCu);
    }

    _notificationRequestCurrentlyAnnouncing2 = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
    v36 = _notificationRequestCurrentlyAnnouncing2 == requestCopy;

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

- (int64_t)_announceDeactivationReasonForBannerRevocationReason:(id)reason
{
  reasonCopy = reason;
  if ([reasonCopy isEqualToString:@"SBBannerRevocationReasonCarPlayDestinationExplicitDismissal"])
  {
    v4 = 11;
  }

  else if ([reasonCopy isEqualToString:*MEMORY[0x277D77FF0]])
  {
    v4 = 5;
  }

  else if ([reasonCopy isEqualToString:*MEMORY[0x277CF91C0]])
  {
    v4 = 7;
  }

  else if ([reasonCopy isEqualToString:*MEMORY[0x277CF91D0]])
  {
    v4 = 6;
  }

  else if ([reasonCopy isEqualToString:*MEMORY[0x277D77FF8]])
  {
    v4 = 8;
  }

  else if ([reasonCopy isEqualToString:*MEMORY[0x277D78000]])
  {
    v4 = 9;
  }

  else if ([reasonCopy isEqualToString:*MEMORY[0x277D78008]])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_cancelAnnounceForNotificationRequest:(id)request withReason:(int64_t)reason deactivateAnnounce:(BOOL)announce
{
  announceCopy = announce;
  v49 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  notificationRequestsForAnnounce = self->_notificationRequestsForAnnounce;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __104__SBNotificationCarPlayDestination__cancelAnnounceForNotificationRequest_withReason_deactivateAnnounce___block_invoke;
  v41[3] = &unk_2783C0610;
  v10 = requestCopy;
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
      notificationIdentifier = [v10 notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      v18 = AFSiriDeactivationReasonGetName();
      *buf = 138543874;
      v44 = un_logDigest;
      v45 = 2114;
      v46 = v18;
      v47 = 1024;
      v48 = announceCopy;
      _os_log_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEFAULT, "CarPlay clearing announce for notification request %{public}@ for reason %{public}@ with deactivation = %{BOOL}d", buf, 0x1Cu);
    }

    v19 = [(NSMutableArray *)self->_notificationRequestsForAnnounce objectAtIndex:v13];
    [(NSMutableArray *)self->_notificationRequestsForAnnounce removeObject:v19];
    _notificationRequestCurrentlyAnnouncing = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
    v21 = [v19 matchesRequest:_notificationRequestCurrentlyAnnouncing];

    if (v21)
    {
      [(SBNotificationCarPlayDestination *)self _setNotificationRequestCurrentlyAnnouncing:0];
    }

    v22 = [(NSMutableDictionary *)self->_announceRequestsForNotificationRequests objectForKey:v19];
    [(NSMutableDictionary *)self->_announceRequestsForNotificationRequests removeObjectForKey:v19];
    if (v22 && announceCopy && AFSiriDeactivationReasonGetIsValidAndSpecified())
    {
      v23 = *v12;
      if (os_log_type_enabled(*v12, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v23;
        notificationIdentifier2 = [v10 notificationIdentifier];
        un_logDigest2 = [notificationIdentifier2 un_logDigest];
        v27 = AFSiriDeactivationReasonGetName();
        *buf = 138543618;
        v44 = un_logDigest2;
        v45 = 2114;
        v46 = v27;
        _os_log_impl(&dword_21ED4E000, v24, OS_LOG_TYPE_DEFAULT, "CarPlay requesting deactivate announce for notification request %{public}@ for reason %{public}@", buf, 0x16u);
      }

      v36 = MEMORY[0x277D85DD0];
      v37 = 3221225472;
      v38 = __104__SBNotificationCarPlayDestination__cancelAnnounceForNotificationRequest_withReason_deactivateAnnounce___block_invoke_159;
      v39 = &unk_2783A9398;
      v40 = v19;
      [v22 deactivateRequestForReason:reason completion:&v36];
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
      notificationIdentifier3 = [v10 notificationIdentifier];
      un_logDigest3 = [notificationIdentifier3 un_logDigest];
      *buf = 138543362;
      v44 = un_logDigest3;
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

- (BOOL)_shouldAnnounceNotificationForActiveAVSession:(id)session
{
  v28 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  mEMORY[0x277D26E58] = [MEMORY[0x277D26E58] sharedAVSystemController];
  v6 = [mEMORY[0x277D26E58] attributeForKey:*MEMORY[0x277D26E08]];

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
    mEMORY[0x277D26E58]2 = [MEMORY[0x277D26E58] sharedAVSystemController];
    v13 = [mEMORY[0x277D26E58]2 attributeForKey:*MEMORY[0x277D26B78]];
    bOOLValue = [v13 BOOLValue];

    v15 = *MEMORY[0x277D77DB0];
    v16 = os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT);
    if (bOOLValue)
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
        notificationIdentifier = [sessionCopy notificationIdentifier];
        un_logDigest = [notificationIdentifier un_logDigest];
        v24 = 138543618;
        v25 = un_logDigest;
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

      if (([(NSMutableArray *)notificationRequestsPendingAVSession containsObject:sessionCopy]& 1) == 0)
      {
        [(NSMutableArray *)self->_notificationRequestsPendingAVSession addObject:sessionCopy];
      }
    }
  }

  return v7;
}

- (void)_voicePromptStyleChanged:(id)changed
{
  v21 = *MEMORY[0x277D85DE8];
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x277D26E18]];

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

- (void)_setNotificationRequestCurrentlyAnnouncing:(id)announcing
{
  v18 = *MEMORY[0x277D85DE8];
  announcingCopy = announcing;
  notificationRequestCurrentlyAnnouncing = self->_notificationRequestCurrentlyAnnouncing;
  p_notificationRequestCurrentlyAnnouncing = &self->_notificationRequestCurrentlyAnnouncing;
  if (notificationRequestCurrentlyAnnouncing != announcingCopy)
  {
    v8 = *MEMORY[0x277D77DB0];
    if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      notificationIdentifier = [(NCNotificationRequest *)announcingCopy notificationIdentifier];
      un_logDigest = [notificationIdentifier un_logDigest];
      notificationIdentifier2 = [(NCNotificationRequest *)*p_notificationRequestCurrentlyAnnouncing notificationIdentifier];
      un_logDigest2 = [notificationIdentifier2 un_logDigest];
      v14 = 138543618;
      v15 = un_logDigest;
      v16 = 2114;
      v17 = un_logDigest2;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "CarPlay setting currently announcing notification request to %{public}@ from %{public}@", &v14, 0x16u);
    }

    objc_storeStrong(p_notificationRequestCurrentlyAnnouncing, announcing);
  }
}

- (void)_clearNotificationRequestPendingAnnounceDeactivationIfNecessary
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_notificationRequestPendingDeactivation)
  {
    _notificationRequestCurrentlyAnnouncing = [(SBNotificationCarPlayDestination *)self _notificationRequestCurrentlyAnnouncing];
    notificationRequestPendingDeactivation = self->_notificationRequestPendingDeactivation;

    if (_notificationRequestCurrentlyAnnouncing == notificationRequestPendingDeactivation)
    {
      v5 = *MEMORY[0x277D77DB0];
      if (os_log_type_enabled(*MEMORY[0x277D77DB0], OS_LOG_TYPE_DEFAULT))
      {
        v6 = self->_notificationRequestPendingDeactivation;
        v7 = v5;
        notificationIdentifier = [(NCNotificationRequest *)v6 notificationIdentifier];
        un_logDigest = [notificationIdentifier un_logDigest];
        v10 = 138543362;
        v11 = un_logDigest;
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "CarPlay clearing notification request %{public}@ pending announce deactivation and requesting early deactivation", &v10, 0xCu);
      }

      [(SBNotificationCarPlayDestination *)self _cancelAnnounceForNotificationRequest:self->_notificationRequestPendingDeactivation withReason:[(SBNotificationCarPlayDestination *)self _announceDeactivationReasonForBannerRevocationReason:@"SBBannerRevocationReasonCarPlayDestinationExplicitDismissal"] deactivateAnnounce:1];
    }
  }
}

- (id)_notificationRequestForAnnounceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  notificationRequestsForAnnounce = self->_notificationRequestsForAnnounce;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__SBNotificationCarPlayDestination__notificationRequestForAnnounceWithIdentifier___block_invoke;
  v10[3] = &unk_2783C0610;
  v6 = identifierCopy;
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

- (void)_queueNotificationRequestWhileAnnouncing:(id)announcing
{
  announcingCopy = announcing;
  notificationRequestsPendingAnnounce = self->_notificationRequestsPendingAnnounce;
  v8 = announcingCopy;
  if (!notificationRequestsPendingAnnounce)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_notificationRequestsPendingAnnounce;
    self->_notificationRequestsPendingAnnounce = v6;

    announcingCopy = v8;
    notificationRequestsPendingAnnounce = self->_notificationRequestsPendingAnnounce;
  }

  [(NSMutableArray *)notificationRequestsPendingAnnounce addObject:announcingCopy];
}

- (void)_modifyNotificationRequest:(id)request inStore:(id)store
{
  requestCopy = request;
  storeCopy = store;
  if ([storeCopy count])
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __71__SBNotificationCarPlayDestination__modifyNotificationRequest_inStore___block_invoke;
    v9[3] = &unk_2783C0610;
    v7 = requestCopy;
    v10 = v7;
    v8 = [storeCopy indexOfObjectPassingTest:v9];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [storeCopy replaceObjectAtIndex:v8 withObject:v7];
    }
  }
}

- (void)_withdrawNotificationRequest:(id)request inStore:(id)store
{
  requestCopy = request;
  storeCopy = store;
  if ([storeCopy count])
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __73__SBNotificationCarPlayDestination__withdrawNotificationRequest_inStore___block_invoke;
    v8[3] = &unk_2783C0610;
    v9 = requestCopy;
    v7 = [storeCopy indexOfObjectPassingTest:v8];
    if (v7 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [storeCopy removeObjectAtIndex:v7];
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

- (void)_flushAnnounceNotificationRequestsShouldAnnounce:(BOOL)announce
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
    announceCopy = announce;
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