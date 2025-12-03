@interface TUConfigurationProvider
- (BOOL)isAutomaticProminenceAvailable;
- (BOOL)isBlockedContactsAvailable;
- (BOOL)isBrandedCallingAvailable;
- (BOOL)isBrandedCallingEnabled:(BOOL)enabled;
- (BOOL)isBusinessConnectCallingAvailable;
- (BOOL)isBusinessConnectCallingEnabled;
- (BOOL)isCallAnnouncementAvailableForPhone;
- (BOOL)isCallBlockingAndIdentificationAvailable;
- (BOOL)isCallForwardingAvailable;
- (BOOL)isCallHapticsAvailable;
- (BOOL)isCallHapticsEnabled;
- (BOOL)isCallIdentificationAppsAvailable;
- (BOOL)isCallRecordingEnabled;
- (BOOL)isCallReportingAvailable;
- (BOOL)isCallScreeningEnabled;
- (BOOL)isCallWaitingAvailable;
- (BOOL)isDialAssistAvailable;
- (BOOL)isEligibleForReceptionistOnboardingNotification;
- (BOOL)isFaceTimeEnabledInSettings;
- (BOOL)isFilterAsNewCallersEnabledForFaceTime;
- (BOOL)isFilterAsNewCallersEnabledForPhone;
- (BOOL)isHoldAssistAvailable;
- (BOOL)isHoldAssistDetectionEnabled;
- (BOOL)isILClassificationAvailable;
- (BOOL)isIncomingCallsAvailableForPhone;
- (BOOL)isLiveLookupAvailable;
- (BOOL)isLivePhotosAvailable;
- (BOOL)isMyNumberAvailable;
- (BOOL)isNetworkSelectionAvailable;
- (BOOL)isReceptionistAvailable;
- (BOOL)isReceptionistEnabled;
- (BOOL)isRelayPrimaryAvailable;
- (BOOL)isRelaySecondaryAvailable;
- (BOOL)isRespondwithTextAvailable;
- (BOOL)isSIMAvailable;
- (BOOL)isSIMPINAvailable;
- (BOOL)isShareNameAndPhotosAvailable;
- (BOOL)isShowMyCallerIDAvailable;
- (BOOL)isSilenceJunkCallingAvailable;
- (BOOL)isSilenceJunkCallingEnabled;
- (BOOL)isSilenceUnknownCallersEnabledForFaceTime;
- (BOOL)isSilenceUnknownCallersEnabledForPhone;
- (BOOL)isSpamFilterEnabledForFaceTime;
- (BOOL)isSystemCapabilityAvailableForName:(id)name;
- (BOOL)isUplevelFTAAvailable;
- (BOOL)isUplevelFTAEnabled;
- (BOOL)isWiFiCallingAvailable;
- (BOOL)supportsBrandedCallingForSubscriptionContext:(id)context;
- (BOOL)supportsBusinessConnectCallingForSubscriptionContext:(id)context;
- (BOOL)supportsCallBlockingForSubscriptionContext:(id)context;
- (BOOL)supportsDialAssistForSubscriptionContext:(id)context;
- (BOOL)supportsSystemCapabilityWithName:(id)name subscriptionContext:(id)context;
- (TUConfigurationProvider)init;
- (TUConfigurationProvider)initWithNotifier:(id)notifier;
- (TUConfigurationProviderDelegate)delegate;
- (id)objectForKeyHierarchy:(id)hierarchy subscriptionContext:(id)context error:(id *)error;
- (id)stringForKeyHierarchy:(id)hierarchy subscriptionContext:(id)context error:(id *)error;
- (id)systemCapabilitiesForSubscriptionContext:(id)context;
- (int64_t)getSelectedIntelligentCallScreeningMenuOptionForFaceTime;
- (int64_t)getSelectedIntelligentCallScreeningMenuOptionForPhone;
- (void)dealloc;
- (void)postConfigurationChangedNotification;
- (void)setSelectedIntelligentCallScreeningMenuOptionForFaceTime:(int64_t)time;
- (void)setSelectedIntelligentCallScreeningMenuOptionForPhone:(int64_t)phone;
@end

@implementation TUConfigurationProvider

- (TUConfigurationProvider)init
{
  v3 = objc_alloc_init(ConfigurationProviderDarwinNotifier);
  v4 = objc_alloc_init(TUFeatureFlags);
  featureFlags = self->_featureFlags;
  self->_featureFlags = v4;

  v6 = [(TUConfigurationProvider *)self initWithNotifier:v3];
  return v6;
}

- (BOOL)isFilterAsNewCallersEnabledForFaceTime
{
  userConfiguration = [(TUConfigurationProvider *)self userConfiguration];
  isFilterAsNewCallersEnabledForFaceTime = [userConfiguration isFilterAsNewCallersEnabledForFaceTime];

  return isFilterAsNewCallersEnabledForFaceTime;
}

- (void)dealloc
{
  notify_cancel(self->_token);
  v3.receiver = self;
  v3.super_class = TUConfigurationProvider;
  [(TUConfigurationProvider *)&v3 dealloc];
}

- (BOOL)isFilterAsNewCallersEnabledForPhone
{
  userConfiguration = [(TUConfigurationProvider *)self userConfiguration];
  isFilterAsNewCallersEnabledForPhone = [userConfiguration isFilterAsNewCallersEnabledForPhone];

  return isFilterAsNewCallersEnabledForPhone;
}

- (TUConfigurationProvider)initWithNotifier:(id)notifier
{
  notifierCopy = notifier;
  v24.receiver = self;
  v24.super_class = TUConfigurationProvider;
  v6 = [(TUConfigurationProvider *)&v24 init];
  if (v6)
  {
    v7 = objc_alloc_init(TUUserConfiguration);
    userConfiguration = v6->_userConfiguration;
    v6->_userConfiguration = v7;

    objc_storeStrong(&v6->_configurationProviderNotifier, notifier);
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v9 = getTPSCarrierBundleControllerClass_softClass;
    v29 = getTPSCarrierBundleControllerClass_softClass;
    if (!getTPSCarrierBundleControllerClass_softClass)
    {
      location[0] = MEMORY[0x1E69E9820];
      location[1] = 3221225472;
      location[2] = __getTPSCarrierBundleControllerClass_block_invoke;
      location[3] = &unk_1E7424CD8;
      location[4] = &v26;
      __getTPSCarrierBundleControllerClass_block_invoke(location);
      v9 = v27[3];
    }

    v10 = v9;
    _Block_object_dispose(&v26, 8);
    v11 = objc_alloc_init(v9);
    carrierBundleController = v6->_carrierBundleController;
    v6->_carrierBundleController = v11;

    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
    v14 = dispatch_queue_create("TUConfigurationProviderQueue", v13);
    v15 = [objc_alloc(MEMORY[0x1E69650A0]) initWithQueue:v14];
    coreTelephonyClient = v6->_coreTelephonyClient;
    v6->_coreTelephonyClient = v15;

    v17 = objc_alloc_init(TULiveLookupManagerProxy);
    liveLookupExtensionManager = v6->_liveLookupExtensionManager;
    v6->_liveLookupExtensionManager = v17;

    objc_initWeak(location, v6);
    v19 = MEMORY[0x1E69E96A0];
    v20 = MEMORY[0x1E69E96A0];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __44__TUConfigurationProvider_initWithNotifier___block_invoke;
    v22[3] = &unk_1E7424C60;
    objc_copyWeak(&v23, location);
    notify_register_dispatch("com.apple.telephonyutilities.configurationChanged", &v6->_token, v19, v22);

    objc_destroyWeak(&v23);
    objc_destroyWeak(location);
  }

  return v6;
}

void __44__TUConfigurationProvider_initWithNotifier___block_invoke(uint64_t a1)
{
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Notification observed from TUConfigurationChangedNotification, notifying delegate", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = [WeakRetained delegate];
    [v5 configurationChanged];
  }
}

- (BOOL)isSIMAvailable
{
  carrierBundleController = [(TUConfigurationProvider *)self carrierBundleController];
  activeSubscriptions = [carrierBundleController activeSubscriptions];
  v4 = activeSubscriptions != 0;

  return v4;
}

- (BOOL)isCallReportingAvailable
{
  if (![(TUConfigurationProvider *)self isSIMAvailable])
  {
    return 0;
  }

  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  v3 = [mEMORY[0x1E699BE70] deviceType] == 2;

  return v3;
}

- (BOOL)isSIMPINAvailable
{
  if (![(TUConfigurationProvider *)self isSIMAvailable])
  {
    return 0;
  }

  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  v3 = [mEMORY[0x1E699BE70] deviceType] == 2;

  return v3;
}

- (BOOL)isMyNumberAvailable
{
  if (![(TUConfigurationProvider *)self isSIMAvailable])
  {
    return 0;
  }

  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  v3 = [mEMORY[0x1E699BE70] deviceType] == 2;

  return v3;
}

- (BOOL)isWiFiCallingAvailable
{
  v35 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  carrierBundleController = [(TUConfigurationProvider *)self carrierBundleController];
  activeSubscriptions = [carrierBundleController activeSubscriptions];

  v4 = [activeSubscriptions countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    v7 = 0x1E7423000uLL;
    v23 = *v30;
    v24 = activeSubscriptions;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(activeSubscriptions);
        }

        v9 = *(*(&v29 + 1) + 8 * i);
        if (([v9 isSimHidden] & 1) == 0)
        {
          senderIdentityCapabilities = [*(v7 + 2696) senderIdentityCapabilities];
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v11 = senderIdentityCapabilities;
          v12 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v26;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v26 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v25 + 1) + 8 * j);
                senderIdentityUUID = [v16 senderIdentityUUID];
                uuid = [v9 uuid];
                if ([senderIdentityUUID isEqual:uuid])
                {
                  supportsWiFiCalling = [v16 supportsWiFiCalling];

                  if (supportsWiFiCalling)
                  {

                    v20 = 1;
                    activeSubscriptions = v24;
                    goto LABEL_23;
                  }
                }

                else
                {
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v13);
          }

          v6 = v23;
          activeSubscriptions = v24;
          v7 = 0x1E7423000;
        }
      }

      v5 = [activeSubscriptions countByEnumeratingWithState:&v29 objects:v34 count:16];
      v20 = 0;
    }

    while (v5);
  }

  else
  {
    v20 = 0;
  }

LABEL_23:

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)isNetworkSelectionAvailable
{
  v32 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  carrierBundleController = [(TUConfigurationProvider *)self carrierBundleController];
  activeSubscriptions = [carrierBundleController activeSubscriptions];

  v5 = [activeSubscriptions countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v24;
    *&v6 = 138412546;
    v21 = v6;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(activeSubscriptions);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        if (([v10 isSimHidden] & 1) == 0)
        {
          carrierBundleController2 = [(TUConfigurationProvider *)self carrierBundleController];
          telephonyClient = [carrierBundleController2 telephonyClient];
          v22 = 0;
          v13 = [telephonyClient isNetworkSelectionMenuAvailable:v10 error:&v22];
          v14 = v22;

          if (!v13)
          {
            domain = [v14 domain];

            if (domain)
            {
              v16 = TUDefaultLog();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
              {
                *buf = v21;
                v28 = v14;
                v29 = 2112;
                v30 = v10;
                _os_log_error_impl(&dword_1956FD000, v16, OS_LOG_TYPE_ERROR, "Retrieving cellular network selection information failed with error %@ for %@.", buf, 0x16u);
              }
            }
          }

          bOOLValue = [v13 BOOLValue];

          if (bOOLValue)
          {
            v18 = 1;
            goto LABEL_17;
          }
        }
      }

      v7 = [activeSubscriptions countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v18 = 0;
LABEL_17:

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

- (BOOL)isCallForwardingAvailable
{
  if (![(TUConfigurationProvider *)self isSystemCapabilityAvailableForName:*MEMORY[0x1E69654D8]]|| ![(TUConfigurationProvider *)self isSIMAvailable])
  {
    return 0;
  }

  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  v4 = [mEMORY[0x1E699BE70] deviceType] == 2;

  return v4;
}

- (BOOL)isRelayPrimaryAvailable
{
  if (!+[TUCallCapabilities supportsThumperCalling](TUCallCapabilities, "supportsThumperCalling") && !+[TUCallCapabilities supportsRelayCalling](TUCallCapabilities, "supportsRelayCalling") || !+[TUCallCapabilities supportsPrimaryCalling])
  {
    return 0;
  }

  return +[TUCallCapabilities supportsDisplayingFaceTimeVideoCalls];
}

- (BOOL)isRelaySecondaryAvailable
{
  isFaceTimeEnabledInSettings = [(TUConfigurationProvider *)self isFaceTimeEnabledInSettings];
  if (isFaceTimeEnabledInSettings)
  {
    if (+[TUCallCapabilities supportsPrimaryCalling])
    {
      LOBYTE(isFaceTimeEnabledInSettings) = 0;
    }

    else if (+[TUCallCapabilities supportsThumperCalling])
    {
      LOBYTE(isFaceTimeEnabledInSettings) = 1;
    }

    else
    {

      LOBYTE(isFaceTimeEnabledInSettings) = +[TUCallCapabilities supportsRelayCalling];
    }
  }

  return isFaceTimeEnabledInSettings;
}

- (BOOL)isDialAssistAvailable
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  carrierBundleController = [(TUConfigurationProvider *)self carrierBundleController];
  activeSubscriptions = [carrierBundleController activeSubscriptions];

  v5 = [activeSubscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(activeSubscriptions);
        }

        if ([(TUConfigurationProvider *)self supportsDialAssistForSubscriptionContext:*(*(&v14 + 1) + 8 * i)])
        {
          mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
          deviceType = [mEMORY[0x1E699BE70] deviceType];

          if (deviceType == 2)
          {
            v11 = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [activeSubscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isShowMyCallerIDAvailable
{
  if (![(TUConfigurationProvider *)self isSystemCapabilityAvailableForName:*MEMORY[0x1E69654E8]]|| ![(TUConfigurationProvider *)self isSIMAvailable])
  {
    return 0;
  }

  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  v4 = [mEMORY[0x1E699BE70] deviceType] == 2;

  return v4;
}

- (BOOL)isCallWaitingAvailable
{
  if (![(TUConfigurationProvider *)self isSystemCapabilityAvailableForName:*MEMORY[0x1E69654E0]]|| ![(TUConfigurationProvider *)self isSIMAvailable])
  {
    return 0;
  }

  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  v4 = [mEMORY[0x1E699BE70] deviceType] == 2;

  return v4;
}

- (BOOL)isILClassificationAvailable
{
  if (![(TUConfigurationProvider *)self isSIMAvailable])
  {
    return 0;
  }

  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  v3 = [mEMORY[0x1E699BE70] deviceType] == 2;

  return v3;
}

- (BOOL)isIncomingCallsAvailableForPhone
{
  if (![(TUConfigurationProvider *)self isSIMAvailable])
  {
    return 0;
  }

  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  v3 = [mEMORY[0x1E699BE70] deviceType] == 2;

  return v3;
}

- (BOOL)isCallAnnouncementAvailableForPhone
{
  if (![(TUConfigurationProvider *)self isSIMAvailable])
  {
    return 0;
  }

  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  v3 = [mEMORY[0x1E699BE70] deviceType] == 2;

  return v3;
}

- (BOOL)isShareNameAndPhotosAvailable
{
  if ([(TUConfigurationProvider *)self isSIMAvailable])
  {
    return 1;
  }

  return [(TUConfigurationProvider *)self isFaceTimeEnabledInSettings];
}

- (BOOL)isRespondwithTextAvailable
{
  if (![(TUConfigurationProvider *)self isSIMAvailable])
  {
    return 0;
  }

  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  v3 = [mEMORY[0x1E699BE70] deviceType] == 2;

  return v3;
}

- (BOOL)isBlockedContactsAvailable
{
  if (![(TUConfigurationProvider *)self isSIMAvailable])
  {
    return 0;
  }

  mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
  v3 = [mEMORY[0x1E699BE70] deviceType] == 2;

  return v3;
}

- (BOOL)isAutomaticProminenceAvailable
{
  isFaceTimeEnabledInSettings = [(TUConfigurationProvider *)self isFaceTimeEnabledInSettings];
  if (isFaceTimeEnabledInSettings)
  {
    mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
    multiwaySupported = [mEMORY[0x1E699BE70] multiwaySupported];

    LOBYTE(isFaceTimeEnabledInSettings) = multiwaySupported;
  }

  return isFaceTimeEnabledInSettings;
}

- (BOOL)isLivePhotosAvailable
{
  isFaceTimeEnabledInSettings = [(TUConfigurationProvider *)self isFaceTimeEnabledInSettings];
  if (isFaceTimeEnabledInSettings)
  {
    LOBYTE(isFaceTimeEnabledInSettings) = !+[TUMomentsController isFaceTimePhotosRestricted];
  }

  return isFaceTimeEnabledInSettings;
}

- (BOOL)isCallIdentificationAppsAvailable
{
  v3 = objc_alloc_init(MEMORY[0x1E695AED8]);
  v4 = dispatch_semaphore_create(0);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__TUConfigurationProvider_isCallIdentificationAppsAvailable__block_invoke;
  v11[3] = &unk_1E7426FE8;
  v13 = &v14;
  v5 = v4;
  v12 = v5;
  [v3 extensionsWithCompletionHandler:v11];
  v6 = dispatch_time(0, 1000000000);
  if (dispatch_semaphore_wait(v5, v6))
  {
    v7 = TUDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "isCallIdentificationAppsAvailable did not return before the semaphore timeout", v10, 2u);
    }
  }

  if ([(TUConfigurationProvider *)self isSIMAvailable])
  {
    v8 = *(v15 + 24);
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v14, 8);
  return v8 & 1;
}

intptr_t __60__TUConfigurationProvider_isCallIdentificationAppsAvailable__block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = [a2 count] != 0;
  v3 = *(a1 + 32);

  return dispatch_semaphore_signal(v3);
}

- (BOOL)isLiveLookupAvailable
{
  liveLookupExtensionManager = [(TUConfigurationProvider *)self liveLookupExtensionManager];
  extensionCount = [liveLookupExtensionManager extensionCount];

  result = [(TUConfigurationProvider *)self isSIMAvailable];
  if (!extensionCount)
  {
    return 0;
  }

  return result;
}

- (BOOL)isCallBlockingAndIdentificationAvailable
{
  if ([(TUConfigurationProvider *)self isBrandedCallingAvailable]|| [(TUConfigurationProvider *)self isBusinessConnectCallingAvailable]|| [(TUConfigurationProvider *)self isSilenceJunkCallingEnabled]|| [(TUConfigurationProvider *)self isCallIdentificationAppsAvailable])
  {
    return 1;
  }

  return [(TUConfigurationProvider *)self isLiveLookupAvailable];
}

- (BOOL)isFaceTimeEnabledInSettings
{
  v2 = objc_alloc(MEMORY[0x1E69A48B8]);
  v3 = [v2 initWithQueue:MEMORY[0x1E69E96A0]];
  isFaceTimeEnabled = [v3 isFaceTimeEnabled];

  return isFaceTimeEnabled;
}

- (BOOL)isCallRecordingEnabled
{
  isCallRecordingAvailable = [(TUConfigurationProvider *)self isCallRecordingAvailable];
  if (isCallRecordingAvailable)
  {
    userConfiguration = [(TUConfigurationProvider *)self userConfiguration];
    isCallRecordingEnabled = [userConfiguration isCallRecordingEnabled];

    LOBYTE(isCallRecordingAvailable) = isCallRecordingEnabled;
  }

  return isCallRecordingAvailable;
}

- (BOOL)isCallScreeningEnabled
{
  isCallScreeningAvailable = [(TUConfigurationProvider *)self isCallScreeningAvailable];
  if (isCallScreeningAvailable)
  {
    userConfiguration = [(TUConfigurationProvider *)self userConfiguration];
    isCallScreeningEnabled = [userConfiguration isCallScreeningEnabled];

    LOBYTE(isCallScreeningAvailable) = isCallScreeningEnabled;
  }

  return isCallScreeningAvailable;
}

- (BOOL)isReceptionistAvailable
{
  featureFlags = [(TUConfigurationProvider *)self featureFlags];
  receptionistEnabled = [featureFlags receptionistEnabled];

  if (receptionistEnabled)
  {
    if ([(TUConfigurationProvider *)self isCallScreeningAvailable])
    {
      return 1;
    }

    v6 = TUDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "TUConfigurationProvider: isReceptionistAvailable NO because !isCallScreeningAvailable", v7, 2u);
    }
  }

  return 0;
}

- (BOOL)isReceptionistEnabled
{
  isReceptionistAvailable = [(TUConfigurationProvider *)self isReceptionistAvailable];
  if (isReceptionistAvailable)
  {
    userConfiguration = [(TUConfigurationProvider *)self userConfiguration];
    isReceptionistEnabled = [userConfiguration isReceptionistEnabled];

    LOBYTE(isReceptionistAvailable) = isReceptionistEnabled;
  }

  return isReceptionistAvailable;
}

- (BOOL)isEligibleForReceptionistOnboardingNotification
{
  if (![(TUConfigurationProvider *)self isReceptionistAvailable]|| [(TUConfigurationProvider *)self isReceptionistEnabled])
  {
    return 0;
  }

  userConfiguration = [(TUConfigurationProvider *)self userConfiguration];
  isEligibleForReceptionistOnboardingNotification = [userConfiguration isEligibleForReceptionistOnboardingNotification];

  return isEligibleForReceptionistOnboardingNotification;
}

- (int64_t)getSelectedIntelligentCallScreeningMenuOptionForFaceTime
{
  if ([(TUConfigurationProvider *)self isSilenceUnknownCallersEnabledForFaceTime])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)setSelectedIntelligentCallScreeningMenuOptionForFaceTime:(int64_t)time
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    timeCopy = time;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Intelligent Call Screening: setSelectedIntelligentCallScreeningMenuOptionForFaceTime %ld", &v11, 0xCu);
  }

  if (time)
  {
    if (time != 2)
    {
      goto LABEL_7;
    }

    time = 1;
  }

  userConfiguration = [(TUConfigurationProvider *)self userConfiguration];
  [userConfiguration setSilenceUnknownCallersEnabledForFaceTime:time];

LABEL_7:
  v7 = TUDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    userConfiguration2 = [(TUConfigurationProvider *)self userConfiguration];
    isSilenceUnknownCallersEnabledForFaceTime = [userConfiguration2 isSilenceUnknownCallersEnabledForFaceTime];
    v11 = 67109120;
    LODWORD(timeCopy) = isSilenceUnknownCallersEnabledForFaceTime;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Intelligent Call Screening: setSelectedIntelligentCallScreeningMenuOptionForFaceTime DONE, now we have silenceUnknownCallersEnabledForFaceTime = %d", &v11, 8u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (int64_t)getSelectedIntelligentCallScreeningMenuOptionForPhone
{
  if ([(TUConfigurationProvider *)self isReceptionistAvailable]&& [(TUConfigurationProvider *)self isReceptionistEnabled])
  {
    return 1;
  }

  if (![(TUConfigurationProvider *)self isSilenceUnknownCallersEnabledForPhone])
  {
    return 0;
  }

  if ([(TUConfigurationProvider *)self isReceptionistEnabled])
  {
    return 0;
  }

  return 2;
}

- (void)setSelectedIntelligentCallScreeningMenuOptionForPhone:(int64_t)phone
{
  *&v15[5] = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    *v15 = phone;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Intelligent Call Screening: setSelectedIntelligentCallScreeningMenuOptionForPhone %ld", &v14, 0xCu);
  }

  if (phone == 2)
  {
    [(TUConfigurationProvider *)self setReceptionistEnabled:0];
    v7 = 1;
  }

  else
  {
    if (phone == 1)
    {
      userConfiguration = [(TUConfigurationProvider *)self userConfiguration];
      [userConfiguration setReceptionistEnabled:1];
    }

    else
    {
      if (phone)
      {
        goto LABEL_11;
      }

      [(TUConfigurationProvider *)self setReceptionistEnabled:0];
    }

    v7 = 0;
  }

  [(TUConfigurationProvider *)self setSilenceUnknownCallersEnabledForPhone:v7];
LABEL_11:
  v8 = TUDefaultLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    userConfiguration2 = [(TUConfigurationProvider *)self userConfiguration];
    isReceptionistEnabled = [userConfiguration2 isReceptionistEnabled];
    userConfiguration3 = [(TUConfigurationProvider *)self userConfiguration];
    isSilenceUnknownCallersEnabledForPhone = [userConfiguration3 isSilenceUnknownCallersEnabledForPhone];
    v14 = 67109376;
    v15[0] = isReceptionistEnabled;
    LOWORD(v15[1]) = 1024;
    *(&v15[1] + 2) = isSilenceUnknownCallersEnabledForPhone;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Intelligent Call Screening: setSelectedIntelligentCallScreeningMenuOptionForPhone DONE, now we have receptionistEnabled = %d, silenceUnknownCallersEnabledForPhone = %d", &v14, 0xEu);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)isHoldAssistAvailable
{
  featureFlags = [(TUConfigurationProvider *)self featureFlags];
  waitOnHoldEnabled = [featureFlags waitOnHoldEnabled];

  return waitOnHoldEnabled;
}

- (BOOL)isHoldAssistDetectionEnabled
{
  isHoldAssistAvailable = [(TUConfigurationProvider *)self isHoldAssistAvailable];
  if (isHoldAssistAvailable)
  {
    userConfiguration = [(TUConfigurationProvider *)self userConfiguration];
    isHoldAssistDetectionEnabled = [userConfiguration isHoldAssistDetectionEnabled];

    LOBYTE(isHoldAssistAvailable) = isHoldAssistDetectionEnabled;
  }

  return isHoldAssistAvailable;
}

- (BOOL)isSilenceUnknownCallersEnabledForFaceTime
{
  userConfiguration = [(TUConfigurationProvider *)self userConfiguration];
  isSilenceUnknownCallersEnabledForFaceTime = [userConfiguration isSilenceUnknownCallersEnabledForFaceTime];

  return isSilenceUnknownCallersEnabledForFaceTime;
}

- (BOOL)isSilenceUnknownCallersEnabledForPhone
{
  userConfiguration = [(TUConfigurationProvider *)self userConfiguration];
  isSilenceUnknownCallersEnabledForPhone = [userConfiguration isSilenceUnknownCallersEnabledForPhone];

  return isSilenceUnknownCallersEnabledForPhone;
}

- (BOOL)isBrandedCallingAvailable
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  carrierBundleController = [(TUConfigurationProvider *)self carrierBundleController];
  activeSubscriptions = [carrierBundleController activeSubscriptions];

  v5 = [activeSubscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(activeSubscriptions);
        }

        if ([(TUConfigurationProvider *)self supportsBrandedCallingForSubscriptionContext:*(*(&v14 + 1) + 8 * i)])
        {
          mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
          deviceType = [mEMORY[0x1E699BE70] deviceType];

          if (deviceType == 2)
          {
            v11 = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [activeSubscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isBrandedCallingEnabled:(BOOL)enabled
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  if (enabled)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  v18 = 0uLL;
  v19 = 0uLL;
  carrierBundleController = [(TUConfigurationProvider *)self carrierBundleController];
  activeSubscriptions = [carrierBundleController activeSubscriptions];

  v7 = [activeSubscriptions countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(activeSubscriptions);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (-[TUConfigurationProvider supportsBrandedCallingForSubscriptionContext:](self, "supportsBrandedCallingForSubscriptionContext:", v11) && [v11 slotID] == v4)
        {
          userConfiguration = [(TUConfigurationProvider *)self userConfiguration];
          v12 = [userConfiguration isBrandedCallingEnabled:v11];

          goto LABEL_15;
        }
      }

      v8 = [activeSubscriptions countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_15:

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)isBusinessConnectCallingAvailable
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  carrierBundleController = [(TUConfigurationProvider *)self carrierBundleController];
  activeSubscriptions = [carrierBundleController activeSubscriptions];

  v5 = [activeSubscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(activeSubscriptions);
        }

        if ([(TUConfigurationProvider *)self supportsBusinessConnectCallingForSubscriptionContext:*(*(&v14 + 1) + 8 * i)])
        {
          mEMORY[0x1E699BE70] = [MEMORY[0x1E699BE70] sharedInstance];
          deviceType = [mEMORY[0x1E699BE70] deviceType];

          if (deviceType == 2)
          {
            v11 = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [activeSubscriptions countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_12:

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)isBusinessConnectCallingEnabled
{
  isBusinessConnectCallingAvailable = [(TUConfigurationProvider *)self isBusinessConnectCallingAvailable];
  if (isBusinessConnectCallingAvailable)
  {
    userConfiguration = [(TUConfigurationProvider *)self userConfiguration];
    isBusinessConnectCallingEnabled = [userConfiguration isBusinessConnectCallingEnabled];

    LOBYTE(isBusinessConnectCallingAvailable) = isBusinessConnectCallingEnabled;
  }

  return isBusinessConnectCallingAvailable;
}

- (BOOL)isSilenceJunkCallingAvailable
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  carrierBundleController = [(TUConfigurationProvider *)self carrierBundleController];
  activeSubscriptions = [carrierBundleController activeSubscriptions];

  v5 = [activeSubscriptions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(activeSubscriptions);
        }

        if ([(TUConfigurationProvider *)self supportsCallBlockingForSubscriptionContext:*(*(&v12 + 1) + 8 * i)])
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [activeSubscriptions countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)isSilenceJunkCallingEnabled
{
  isSilenceJunkCallingAvailable = [(TUConfigurationProvider *)self isSilenceJunkCallingAvailable];
  if (isSilenceJunkCallingAvailable)
  {
    userConfiguration = [(TUConfigurationProvider *)self userConfiguration];
    isSilenceJunkCallingEnabled = [userConfiguration isSilenceJunkCallingEnabled];

    LOBYTE(isSilenceJunkCallingAvailable) = isSilenceJunkCallingEnabled;
  }

  return isSilenceJunkCallingAvailable;
}

- (BOOL)isUplevelFTAAvailable
{
  featureFlags = [(TUConfigurationProvider *)self featureFlags];
  if ([featureFlags uplevelFTAEnabled])
  {
    v3 = TUDeviceHasChinaSKU() ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)isUplevelFTAEnabled
{
  isUplevelFTAAvailable = [(TUConfigurationProvider *)self isUplevelFTAAvailable];
  if (isUplevelFTAAvailable)
  {
    userConfiguration = [(TUConfigurationProvider *)self userConfiguration];
    isUplevelFTAEnabled = [userConfiguration isUplevelFTAEnabled];

    LOBYTE(isUplevelFTAAvailable) = isUplevelFTAEnabled;
  }

  return isUplevelFTAAvailable;
}

- (BOOL)isSpamFilterEnabledForFaceTime
{
  userConfiguration = [(TUConfigurationProvider *)self userConfiguration];
  isSpamFilterEnabledForFaceTime = [userConfiguration isSpamFilterEnabledForFaceTime];

  return isSpamFilterEnabledForFaceTime;
}

- (BOOL)isCallHapticsAvailable
{
  featureFlags = [(TUConfigurationProvider *)self featureFlags];
  callConnectHapticsEnabled = [featureFlags callConnectHapticsEnabled];

  return callConnectHapticsEnabled;
}

- (BOOL)isCallHapticsEnabled
{
  isCallHapticsAvailable = [(TUConfigurationProvider *)self isCallHapticsAvailable];
  if (isCallHapticsAvailable)
  {
    userConfiguration = [(TUConfigurationProvider *)self userConfiguration];
    isCallHapticsEnabled = [userConfiguration isCallHapticsEnabled];

    LOBYTE(isCallHapticsAvailable) = isCallHapticsEnabled;
  }

  return isCallHapticsAvailable;
}

- (BOOL)supportsBrandedCallingForSubscriptionContext:(id)context
{
  v21 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v16 = 0;
  coreTelephonyClient = self->_coreTelephonyClient;
  v6 = *MEMORY[0x1E6965158];
  v15 = 0;
  v7 = [(CoreTelephonyClient *)coreTelephonyClient context:contextCopy canSetCapability:v6 allowed:&v16 with:&v15];
  v8 = v15;
  v9 = TUDefaultLog();
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [TUConfigurationProvider supportsBrandedCallingForSubscriptionContext:];
    }

    v11 = 0;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"No";
      if (v16)
      {
        v12 = @"Yes";
      }

      *buf = 138412546;
      v18 = contextCopy;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "kCTCapabilityBrandedCallingInfo fetched for context: %@, capability enabled: %@", buf, 0x16u);
    }

    v11 = v16;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

- (id)systemCapabilitiesForSubscriptionContext:(id)context
{
  contextCopy = context;
  coreTelephonyClient = [(TUConfigurationProvider *)self coreTelephonyClient];
  v11 = 0;
  v6 = [coreTelephonyClient context:contextCopy getSystemCapabilities:&v11];
  v7 = v11;

  if (!v6)
  {
    domain = [v7 domain];

    if (domain)
    {
      v9 = TUDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [TUConfigurationProvider systemCapabilitiesForSubscriptionContext:];
      }
    }
  }

  return v6;
}

- (BOOL)supportsBusinessConnectCallingForSubscriptionContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v13 = 0;
  v5 = [(TUConfigurationProvider *)self stringForKeyHierarchy:&unk_1F09C6508 subscriptionContext:contextCopy error:&v13];
  v6 = v13;
  v7 = v6;
  if (v5)
  {
    v8 = TUDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = contextCopy;
      _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "Retrieved verstat feature capability value '%@' for subscription %@", buf, 0x16u);
    }

    v9 = [v5 isEqualToIgnoringCase:@"Disabled"] ^ 1;
  }

  else
  {
    if (v6)
    {
      v10 = TUDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v15 = contextCopy;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Retrieving verstat feature capability value for subscription %@ failed with error %@", buf, 0x16u);
      }
    }

    LOBYTE(v9) = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)supportsCallBlockingForSubscriptionContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v13 = 0;
  v5 = [(TUConfigurationProvider *)self stringForKeyHierarchy:&unk_1F09C6520 subscriptionContext:contextCopy error:&v13];
  v6 = v13;
  v7 = v6;
  if (v5)
  {
    v8 = TUDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = v5;
      v16 = 2112;
      v17 = contextCopy;
      v9 = "Retrieved call blocking value '%@' for subscription %@";
LABEL_7:
      _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, v9, buf, 0x16u);
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_9;
    }

    v8 = TUDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = contextCopy;
      v16 = 2112;
      v17 = v7;
      v9 = "Retrieving call blocking value for subscription %@ failed with error %@";
      goto LABEL_7;
    }
  }

LABEL_9:
  if ([v5 isEqualToIgnoringCase:@"Enabled"])
  {
    v10 = 1;
  }

  else
  {
    v10 = [v5 isEqualToIgnoringCase:@"Dynamic"];
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)supportsDialAssistForSubscriptionContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v4 = [(TUConfigurationProvider *)self objectForKeyHierarchy:&unk_1F09C6538 subscriptionContext:context error:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = TUDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = NSStringFromSelector(a2);
      *buf = 138412802;
      v15 = v10;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v5;
      _os_log_error_impl(&dword_1956FD000, v6, OS_LOG_TYPE_ERROR, "[%@ %@] failed with error %@.", buf, 0x20u);
    }
  }

  else
  {
    if (!v4)
    {
      bOOLValue = 1;
      goto LABEL_6;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v4 BOOLValue];
      goto LABEL_6;
    }
  }

  bOOLValue = 0;
LABEL_6:

  v8 = *MEMORY[0x1E69E9840];
  return bOOLValue;
}

- (id)objectForKeyHierarchy:(id)hierarchy subscriptionContext:(id)context error:(id *)error
{
  v8 = MEMORY[0x1E6964F68];
  contextCopy = context;
  hierarchyCopy = hierarchy;
  v11 = [[v8 alloc] initWithBundleType:1];
  carrierBundleController = [(TUConfigurationProvider *)self carrierBundleController];
  telephonyClient = [carrierBundleController telephonyClient];
  v14 = [telephonyClient copyCarrierBundleValue:contextCopy keyHierarchy:hierarchyCopy bundleType:v11 error:error];

  return v14;
}

- (id)stringForKeyHierarchy:(id)hierarchy subscriptionContext:(id)context error:(id *)error
{
  v5 = [(TUConfigurationProvider *)self objectForKeyHierarchy:hierarchy subscriptionContext:context error:error];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)supportsSystemCapabilityWithName:(id)name subscriptionContext:(id)context
{
  nameCopy = name;
  v7 = [(TUConfigurationProvider *)self systemCapabilitiesForSubscriptionContext:context];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:nameCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v9 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)isSystemCapabilityAvailableForName:(id)name
{
  v20 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  carrierBundleController = [(TUConfigurationProvider *)self carrierBundleController];
  activeSubscriptions = [carrierBundleController activeSubscriptions];

  v7 = [activeSubscriptions countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(activeSubscriptions);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if (([v11 isSimHidden] & 1) == 0 && -[TUConfigurationProvider supportsSystemCapabilityWithName:subscriptionContext:](self, "supportsSystemCapabilityWithName:subscriptionContext:", nameCopy, v11))
        {
          v12 = 1;
          goto LABEL_12;
        }
      }

      v8 = [activeSubscriptions countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_12:

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)postConfigurationChangedNotification
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "%@ postConfigurationChangedNotification", &v7, 0xCu);
  }

  configurationProviderNotifier = [(TUConfigurationProvider *)self configurationProviderNotifier];
  [configurationProviderNotifier postConfigurationChanged];

  v6 = *MEMORY[0x1E69E9840];
}

- (TUConfigurationProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)supportsBrandedCallingForSubscriptionContext:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1956FD000, v0, v1, "Failed to fetch kCTCapabilityBrandedCallingInfo for context:%@ , error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)systemCapabilitiesForSubscriptionContext:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_1956FD000, v0, v1, "Retrieving system capability information failed with error %@ for %@.");
  v2 = *MEMORY[0x1E69E9840];
}

@end