@interface BTSmartRoutingDaemon
+ (id)sharedBTSmartRoutingDaemon;
- (BOOL)_arbitrationTimeout:(id)timeout withScore:(int)score;
- (BOOL)_checkValidBatteryValue:(id)value;
- (BOOL)_deviceSupportsHijackV2:(id)v2 withDevice:(id)device;
- (BOOL)_getForceDisconnectBit:(id)bit;
- (BOOL)_inCaseLidClosed:(id)closed;
- (BOOL)_inEarConnectedCheck:(id)check;
- (BOOL)_inEarNearbyCheck:(id)check;
- (BOOL)_isAllWxEnabledInEarDetection;
- (BOOL)_isAnyConnectedWxInEarCheck;
- (BOOL)_isAnyUSBAudioDevicePluggedIn;
- (BOOL)_isAnyWxStream;
- (BOOL)_isDevicePairedCheck:(id)check;
- (BOOL)_isEligibleForPreemptiveBanner:(BOOL)banner firstPreemptiveBanner:(BOOL)preemptiveBanner inEarState:(BOOL)state srDeviceCount:(unint64_t)count audioState:(int64_t)audioState inAddress:(id)address;
- (BOOL)_isEligibleForPreemptiveBannerUponUnlock:(id)unlock;
- (BOOL)_isEligibleForTipiV2:(id)v2 firstDeviceTipiScore:(int)score secondDeviceTipiScore:(int)tipiScore currentDeviceScore:(int)deviceScore sourceDeviceCount:(unsigned int)count isOnDemandConnect:(BOOL)connect address:(id)address lastConnectedHost:(id)self0;
- (BOOL)_isInEarDetectionDisabled:(id)disabled;
- (BOOL)_isInEarToOutOfEar:(id)ear;
- (BOOL)_isInHijackBlockingMode;
- (BOOL)_isInTipi;
- (BOOL)_isMagnetConnectedDeviceforConnectionCheck:(id)check;
- (BOOL)_isMagnetConnectedDeviceforTipiHealingCheck:(id)check;
- (BOOL)_isManualConnection:(id)connection;
- (BOOL)_isMyAddress:(id)address;
- (BOOL)_isOtherTipiDeviceBeforeTrain:(id)train withIOS:(unsigned int)s withMacOS:(unsigned int)oS withWatchOS:(unsigned int)watchOS otherTipiDeviceIsWatch:(BOOL)watch;
- (BOOL)_isPhoneCall:(id)call;
- (BOOL)_isSmartRoutingCapableDevice:(id)device;
- (BOOL)_isUSBPluggedIn:(id)in;
- (BOOL)_isWxPaired:(id)paired;
- (BOOL)_lastConnectIsWatchCheck:(id)check;
- (BOOL)_shouldDelayRouteToSpeaker:(id)speaker;
- (BOOL)_supportsPhoneWatchTipi:(unsigned int)tipi;
- (BOOL)_supportsTipi:(id)tipi;
- (BOOL)_tipiHealingHijackTimerStart:(id)start withScore:(int)score;
- (BOOL)_verifyWxConnectedRouted:(id)routed;
- (BOOL)isInAnyTipi;
- (BTSmartRoutingDaemon)init;
- (double)_lowestBatteryInfoForCBDevice:(id)device;
- (double)_lowestBatteryInfoForSFDevice:(id)device;
- (id)_bluetoothProductIDToLocalizationString:(unsigned int)string withActionButton:(BOOL)button;
- (id)_connectedHRMEnabledDevice;
- (id)_descriptionWithLevel:(int)level;
- (id)_findActiveWxDevice;
- (id)_getActiveNearbyWxAdress;
- (id)_getAllUSBAudioDeviceBtAddresses;
- (id)_getCurrentBTRouteAddress;
- (id)_getCurrentRoute;
- (id)_getEligibleNearbyWxDevice:(id *)device companionNeedsToBeIdle:(BOOL)idle isStreamingFromCompanion:(BOOL *)companion;
- (id)_getIDSDeviceFromBtAddress:(id)address;
- (id)_getIDSDeviceFromWxLastConnectedHost:(id)host;
- (id)_getInEarSrWxDevice;
- (id)_getJsonStringFromDictionary:(id)dictionary;
- (id)_getWxChipVersion:(unsigned int)version;
- (id)_getWxFWVersion:(id)version;
- (id)_hrmEnabledDeviceEligibleToRoute;
- (id)_lowestBatteryForDeviceWithAddress:(id)address;
- (id)_myBluetoothAddressString;
- (id)_nearbyHRMDeviceEligibleToConnectTo;
- (id)_nearbyHRMEnabledDevice;
- (id)_nearbyMacAddressTranslate:(id)translate;
- (id)_queryLocalAudioCategory;
- (id)_routedHRMEnabledDevice;
- (id)_selectHRMCapableDeviceFromDiscoveredDevices;
- (id)_sourceModelNameFromModelIdentifier:(id)identifier;
- (id)_verifyWxConnectedBTAddress:(id)address withVersion:(id)version;
- (id)descriptionWithLevel:(int)level;
- (int)_getInEarStateFromCbDevice:(id)device;
- (int)_nearbyDeviceType:(id)type;
- (int64_t)_getRssiNearby:(id)nearby;
- (unsigned)_getWxColorCode:(id)code;
- (unsigned)_getWxProductID:(id)d;
- (void)_TUMonitorEnsureStarted;
- (void)_TUMonitorEnsureStopped;
- (void)_aaControllerEnsureStarted;
- (void)_aaControllerEnsureStopped;
- (void)_activate;
- (void)_activityMonitorEnsureStarted;
- (void)_activityMonitorEnsureStopped;
- (void)_anyPairedDeviceSupportsSmartRouting;
- (void)_budSwapDetectionStartTimer:(id)timer;
- (void)_cacheBudswapInfo:(id)info;
- (void)_callMonitorEnsureStarted;
- (void)_callMonitorEnsureStopped;
- (void)_cancelInUseBannerForCallTimer;
- (void)_cancelPairingTimer;
- (void)_cancelRingtoneTimer;
- (void)_cancelStemClickResumeTimer;
- (void)_cancelStemClickTransaction;
- (void)_cancelTriangleRecoveryTimer;
- (void)_checkIfHRMDeviceElectionHasFinished;
- (void)_checkIfPairedCompanionDeviceSupportsSmartRouting;
- (void)_checkStemClickResponse;
- (void)_checkTriangleRecovery;
- (void)_clearAllDisconnectTicks;
- (void)_connectToHeadphone:(id)headphone;
- (void)_connectToHeadphoneWithAddress:(id)address;
- (void)_connectToUSBDevice:(id)device isUserInitiate:(BOOL)initiate;
- (void)_connectedDeviceFound:(id)found;
- (void)_connectedDeviceLost:(id)lost;
- (void)_connectedDeviceMonitorEnsureStarted;
- (void)_connectedDeviceMonitorEnsureStopped;
- (void)_constructAndSendTipiScoreMessageToWx:(id)wx withScore:(int)score;
- (void)_dataRelayAddRequestedDataTypesForServer:(id)server;
- (void)_dataRelayClientMonitorEnsureStarted;
- (void)_dataRelayRemoveRequestedDataTypesForServer:(id)server;
- (void)_determineHRMCapabilityOfDevice:(id)device;
- (void)_disconnectOtherTipiDevice:(id)device;
- (void)_disconnectReason:(id)reason reason:(unint64_t)a4;
- (void)_dismissAnyPairingBanner;
- (void)_evaluateNearbyDevice;
- (void)_evaluateNearbyHRMDevice:(id)device;
- (void)_evaluateTemporaryOverride:(id)override;
- (void)_evaluatorEnsureStarted;
- (void)_evaluatorEnsureStopped;
- (void)_evaluatorRun;
- (void)_evaluatorRunForUSBDevice:(id)device trigger:(int)trigger;
- (void)_evaluatorRunInUseBanner:(id)banner;
- (void)_evaluatorRunTipiElection:(id)election nearbyInfoDevicesMap:(id)map localScore:(int)score;
- (void)_generateEvaluatorError:(id)error errorReason:(id *)reason;
- (void)_handleCallStateChange:(id)change;
- (void)_handleDataRelayStartForWorkout;
- (void)_handleFitnessPlusDRServerTeardown;
- (void)_handleHRMSessionChanged:(BOOL)changed;
- (void)_handleHighestAudioCategoryChange:(id)change;
- (void)_handleHijackBlockingwithDevice:(id)device;
- (void)_handleMediaPauseStateChanged;
- (void)_handleMediaPlayStateChange:(id)change;
- (void)_handleMediaServerConnectionDied:(id)died;
- (void)_handlePairedWatchStatusDidChange;
- (void)_handleProactiveRoutingRouteCheck:(id)check;
- (void)_handleSmartRoutingDisabled:(id)disabled;
- (void)_handleStemClickGestureReceived:(id)received;
- (void)_handleTUCallStateChange:(id)change;
- (void)_handleTipiScoreUpdate:(int)update;
- (void)_handleTriangleRecoveryInitiated:(id)initiated;
- (void)_handleWorkoutSessionStart;
- (void)_handleWorkoutSessionStop;
- (void)_hijackBackoffReset:(id)reset withReason:(id)reason;
- (void)_iPhoneScreenOnPowerEvent;
- (void)_initializeConnectionToDevice:(id)device;
- (void)_logConnectionBackoffReason:(id)reason wxAddress:(id)address;
- (void)_logEvalError:(id)error;
- (void)_logEvalWxError:(id)error withError:(id)withError;
- (void)_logPreemptiveBannerEvalError:(id)error;
- (void)_mediaRouteDiscoveryStarted;
- (void)_mediaRouteDiscoveryStopped;
- (void)_mediaRouteHijackResponseHandlerFor:(id)for allowedToHijack:(BOOL)hijack withReason:(id)reason;
- (void)_mediaRouteMonitorActiveAudioRouteChanged:(id)changed;
- (void)_mediaRouteMonitorActivityLevelUpdate:(id)update;
- (void)_mediaRouteMonitorEnsureStarted;
- (void)_mediaRouteMonitorEnsureStopped;
- (void)_mediaRouteMonitorSpeakRoute;
- (void)_nearbyDeviceInfoCheck;
- (void)_nearbyDeviceInfoTriangleRecoveryTimer;
- (void)_nearbyInfoActivityChanged;
- (void)_nearbyInfoActivityCriticalStart;
- (void)_nearbyInfoActivityDelayCheck:(unint64_t)check;
- (void)_nearbyInfoDeviceFound:(id)found;
- (void)_nearbyInfoDeviceLost:(id)lost;
- (void)_nearbyInfoDiscoveryEnsureStarted;
- (void)_nearbyInfoDiscoveryEnsureStopped;
- (void)_nearbyInfoSetAudioRoutingScore;
- (void)_nearbyWxChanged:(id)changed;
- (void)_notifyOtherTipiCallState:(int)state;
- (void)_notifyOtherTipiDeviceTipiScoreChanged:(int)changed andNewScore:(int)score;
- (void)_otherTipiDeviceTipiScoreChanged:(id)changed withOptions:(id)options;
- (void)_pairedDeviceMonitorEnsureStarted;
- (void)_pairedDeviceMonitorEnsureStopped;
- (void)_pipeEnsureStarted;
- (void)_pipeEnsureStopped;
- (void)_postNotification:(const char *)notification;
- (void)_powerLogSmartIncomingConnection;
- (void)_powerMonitorEnsureStarted;
- (void)_powerMonitorEnsureStopped;
- (void)_powerMonitorScreenLockChanged;
- (void)_prefsChanged;
- (void)_prewarmAudioAccessoriesForFitnessWorkout;
- (void)_proactivelyTakeOwnership;
- (void)_proactivelyTakeOwnershipOfDevice:(id)device;
- (void)_receivedAudioCategory:(id)category withOptions:(id)options;
- (void)_receivedRelinquishOwnership:(id)ownership wxAddress:(id)address;
- (void)_recordStemClickToResponseDelay;
- (void)_relayConduitMessageEnsureStarted;
- (void)_relayConduitMessageReceived:(id)received andSourceDevice:(id)device messageType:(unsigned __int8)type messageData:(id)data;
- (void)_relayConduitMessageStartTimer:(id)timer withOptions:(id)options;
- (void)_removeTiPiState:(id)state;
- (void)_resetInUserBannerShown;
- (void)_resetStemClickTransaction;
- (void)_respondRoutingRequest:(id)request withResponseHandler:(id)handler wxAddress:(id)address;
- (void)_runUSBAudioRoutingPolicy:(id)policy;
- (void)_sendAudioCategory:(id)category withAudioCategory:(id)audioCategory;
- (void)_sendAudioCategoryToAllTipiDevices;
- (void)_sendAudioScoreChanged:(BOOL)changed;
- (void)_sendIntendedRouteInfoUpdateToWx:(id)wx withIntendedRoutingStatus:(BOOL)status;
- (void)_sendNowPlayingInfoUpdateToWx:(id)wx withMessage:(id)message withLastPlayedTarget:(unsigned __int8)target andHeadsetAddress:(id)address;
- (void)_sendNowPlayingTemporaryOverrideIfNeeded:(BOOL)needed;
- (void)_sendRouteReversedTipiEventForTipsSupport;
- (void)_sendTipiHealingRequest:(id)request andOtherTipiAddress:(id)address;
- (void)_sendTipiScoreUpdateToWx;
- (void)_setAutoRoute:(id)route withAutoRoute:(BOOL)autoRoute;
- (void)_setConnectedBannerTick:(unint64_t)tick;
- (void)_setDisconnectTick:(unint64_t)tick forWxAddress:(id)address;
- (void)_setHighPriorityTag:(id)tag withHighPriority:(BOOL)priority;
- (void)_setIsFirstConnentionAfterSREnable:(BOOL)enable forDevice:(id)device;
- (void)_setIsHiddenProperty:(id)property withIsHidden:(BOOL)hidden;
- (void)_setManualRouteFlag:(id)flag withManualRoute:(BOOL)route;
- (void)_setOtherTipiDeviceBTAddress:(id)address andName:(id)name sourceVersion:(id)version withResult:(id)result;
- (void)_setOwnership:(id)ownership withHijackRequest:(id)request withOwnership:(BOOL)withOwnership;
- (void)_setPipeMessageStats:(unint64_t)stats;
- (void)_setTipiElectionReceivedLePipe:(id)pipe;
- (void)_setTipiElectionType:(BOOL)type withDevice:(id)device;
- (void)_setTotalCountIDSDevices:(id)devices;
- (void)_showLowBatteryBannerForWorkoutIfNeededForDevice:(id)device;
- (void)_showPreemptiveConnectedBanner:(id)banner;
- (void)_showSplitterBlockingAlert;
- (void)_sigTermReceived;
- (void)_smartRoutingAddRoute:(id)route;
- (void)_smartRoutingAddWxMapDevice:(id)device routingAction:(int)action otherAddress:(id)address otherName:(id)name otherSourceVersion:(id)version isRoutingInitialized:(BOOL)initialized newWx:(BOOL)wx;
- (void)_smartRoutingAddWxMapDeviceFromConnectedDevice:(id)device;
- (void)_smartRoutingAudioRoutingRequest:(id)request withResponseHandler:(id)handler;
- (void)_smartRoutingChangeRoute:(id)route;
- (void)_smartRoutingConnectToEligibleHeadset:(id)headset;
- (void)_smartRoutingConnectionCompleted:(id)completed;
- (void)_smartRoutingControllerEnsureStarted;
- (void)_smartRoutingControllerEnsureStopped;
- (void)_smartRoutingLowerRateScan;
- (void)_smartRoutingModeCheck:(id)check;
- (void)_smartRoutingRouteCompleted:(__CFError *)completed withUUID:(id)d;
- (void)_startAudioStateSnapshotTimer;
- (void)_startEffectiveUnlockedAfterBootTimer:(unint64_t)timer;
- (void)_startHighActivityLevelTimer:(unint64_t)timer;
- (void)_startHijackMetricSubmission:(int64_t)submission wxAddress:(id)address version:(id)version;
- (void)_startIdleActivityScoreTimer:(unint64_t)timer;
- (void)_startInUseBannerTimer;
- (void)_startIncomingCallHijackTimer:(unint64_t)timer;
- (void)_startLEPipeConnect:(id)connect;
- (void)_startManualRouteChangeDetectionTimer:(id)timer;
- (void)_startNowPlayingTemporaryOverrideTimer:(unint64_t)timer;
- (void)_startPhoneOwnershipTimer:(unint64_t)timer;
- (void)_startPlaybackTimer;
- (void)_startRingtoneTimer;
- (void)_startRouteChangeDetectionTimer:(id)timer andAnswer:(int64_t)answer;
- (void)_startRouteCheckTimer:(id)timer andType:(int)type;
- (void)_startStemClickResumeTimer;
- (void)_startStemClickTransaction;
- (void)_startStemClickTransactionTimer;
- (void)_startTipiHealing:(id)healing withLastConnect:(id)connect;
- (void)_startWxDiscoveryForWorkout;
- (void)_startWxDiscoveryForWorkoutTimer:(unint64_t)timer;
- (void)_statsEnsureStarted;
- (void)_stopAudioStateSnapshotTimer:(BOOL)timer;
- (void)_submitConnectionMetric:(id)metric andError:(id)error;
- (void)_submitHijackBlockMetric:(id)metric withReason:(id)reason;
- (void)_submitManualConnectionMetric:(id)metric;
- (void)_submitManualRouteDetectionMetric:(id)metric;
- (void)_submitMetric:(id)metric;
- (void)_submitMetricTipiHealingforDevice:(id)device withDuration:(double)duration andLegacy:(BOOL)legacy;
- (void)_submitNearbyDeviceMetric:(unsigned int)metric;
- (void)_submitNonSRConnectionMetric:(id)metric;
- (void)_submitRouteChangeDetectionMetric:(id)metric andAnswer:(int64_t)answer;
- (void)_submitRouteCheckMetric:(id)metric andType:(int)type;
- (void)_submitStemGestureMetric:(id)metric;
- (void)_submitUSBAudioDeviceMetric:(id)metric;
- (void)_systemStatePushRequired;
- (void)_systemStateUpdateRequired;
- (void)_systemUIMonitorEnsureStarted;
- (void)_systemUIMonitorEnsureStopped;
- (void)_takeOwnershipFromWatchForDevice:(id)device;
- (void)_takeOwnershipOnPhone:(BOOL)phone;
- (void)_tipiHealing:(id)healing withDevice:(id)device;
- (void)_tipiHealingAttempt;
- (void)_tipiHealingCompleteCheckTimerForDevice:(id)device;
- (void)_tipiHealingHijackTimerReset;
- (void)_tipiHealingStartTimer:(id)timer;
- (void)_tipihHealingV2Handling:(id)handling;
- (void)_triggerTipiTableUpdate:(id)update;
- (void)_update;
- (void)_updateAccessoryID:(id)d connectionDeviceAddresses:(id)addresses completion:(id)completion;
- (void)_updateLocalAudioCategory:(id)category;
- (void)_updateNearbyDeviceState:(id)state withAddress:(id)address withEasyPairing:(BOOL)pairing withState:(int)withState;
- (void)_updateNowPlayingInfoForConnectedWx:(id)wx withLastPlayedTarget:(unsigned __int8)target andHeadsetAddress:(id)address;
- (void)_updateOtherTipiBuildVersion:(id)version;
- (void)_updateOtherTipiDevice:(id)device otherAddress:(id)address otherName:(id)name otherVersion:(id)version withResult:(id)result;
- (void)_updateOtherTipiDevicewithAudioCategory:(id)category otherAddress:(id)address otherName:(id)name otherVersion:(id)version;
- (void)_updateRoutingActionForManuallyRoute;
- (void)_updateSRDiscoveredDeviceForBluetoothStateChanged:(int64_t)changed;
- (void)_updateSRDiscoveredDeviceForCBDiscoveryChanged;
- (void)_updateSRDiscoveredDeviceForNearbyWxChanged:(id)changed isNearby:(BOOL)nearby;
- (void)_updateUSBDeviceForBluetoothStateChange:(int64_t)change;
- (void)_updateUSBDeviceForPairStateChange:(id)change paired:(BOOL)paired;
- (void)_watchHintingRecovery;
- (void)_watchMediaControl;
- (void)_watchRecoveryStartTimer;
- (void)_workoutObserverEnsureStarted;
- (void)_workoutObserverEnsureStopped;
- (void)_workoutStateChanged;
- (void)_wxDeviceFound:(id)found;
- (void)_wxDeviceLost:(id)lost;
- (void)_wxDiscoveryEnsureStarted;
- (void)_wxDiscoveryEnsureStopped;
- (void)_wxDiscoveryWatchRecoveryEnsureStarted;
- (void)_wxDiscoveryWatchRecoveryEnsureStopped;
- (void)_wxDiscoveryWatchRecoveryFoundDevice:(id)device;
- (void)_wxDiscoveryWatchRecoveryLostDevice:(id)device;
- (void)activate;
- (void)activeHRMDeviceUpdateToDeviceWithAddress:(id)address;
- (void)activeHRMDeviceUpdateWithPushRequired:(BOOL)required;
- (void)areHeadphonesNearbyAndEligibleToPlay:(id)play;
- (void)clearCacheForBluetoothOff;
- (void)dataRelayAddAvailableDataTypesWithDevice:(id)device;
- (void)dataRelayAddAvailableDataTypesWithDiscoveredDevice:(id)device;
- (void)dataRelayRemoveAvailableDataTypesWithDevice:(id)device;
- (void)dataRelayRemoveAvailableDataTypesWithDiscoveredDevice:(id)device;
- (void)disconnectReason:(id)reason reason:(unint64_t)a4;
- (void)getHijackAudioInfo:(int *)info appCount:(int *)count playingApp:(id *)app route:(id *)route remote:(int *)remote;
- (void)getHijackedAwayAudioInfo:(int *)info appCount:(int *)count playingApp:(id *)app route:(id *)route remote:(int *)remote;
- (void)getLocalAudioInfofromSnapshot:(int *)snapshot appCount:(int *)count playingApp:(id *)app route:(id *)route remote:(int *)remote;
- (void)getSmartRoutingStateForDeviceAddress:(id)address;
- (void)handleHealthKitDataWritePropertyToggled:(id)toggled;
- (void)hijackBlockingModeChangedFromClient:(id)client mode:(BOOL)mode completion:(id)completion;
- (void)invalidate;
- (void)logConnectionBackoffReason:(id)reason wxAddress:(id)address;
- (void)prewarmAudioAccessoriesForFitnessWorkout;
- (void)smartRoutingAudioRoutingRequest:(id)request withResponseHandler:(id)handler;
- (void)smartRoutingChangeRoute:(id)route;
- (void)submitHijackMetric:(id)metric withV1:(BOOL)v1;
- (void)submitRouteActivityMetric:(id)metric activity:(id)activity;
- (void)systemStatePushRequired;
- (void)systemStateUpdateRequired;
- (void)updateCurrentAudioSnapshot;
- (void)usbDeviceFound:(id)found;
- (void)usbDeviceLost:(id)lost;
- (void)watchMediaControl;
@end

@implementation BTSmartRoutingDaemon

- (void)_update
{
  effectiveScreenLocked = self->_effectiveScreenLocked;
  p_powerMonitor = &self->_powerMonitor;
  if ([(CUSystemMonitor *)self->_powerMonitor screenActive])
  {
    v5 = [(CUSystemMonitor *)*p_powerMonitor screenLocked]& effectiveScreenLocked;
  }

  else
  {
    v5 = 1;
  }

  if (self->_effectiveScreenLocked != v5)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E41D8();
    }

    self->_effectiveScreenLocked = v5;
    if (v5)
    {
      [(BTSmartRoutingDaemon *)self _nearbyInfoActivityChanged];
      [(BTSmartRoutingDaemon *)self _resetInUserBannerShown];
      _getActiveNearbyWxAdress = [(BTSmartRoutingDaemon *)self _getActiveNearbyWxAdress];
      v7 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:_getActiveNearbyWxAdress];
      mach_absolute_time();
      [v7 inUseBannerBackoffTick];
      UpTicksToSecondsF();
      if (v8 < 1.5)
      {
        [v7 _setInUseBannerBackoffReason:0];
        [(SRStats *)self->_stats setBannerAction:@"ScreenLocked"];
      }

      [v7 _setNearbyPrevInEar:{objc_msgSend(v7, "nearbyInEar")}];

      [(BTSmartRoutingDaemon *)self _powerMonitorScreenLockChanged];
    }

    else
    {
      [(BTSmartRoutingDaemon *)self _powerMonitorScreenLockChanged];
      [(BTSmartRoutingDaemon *)self _iPhoneScreenOnPowerEvent];
      if (self->_prefSmartRoutingEnabledPhase3)
      {
        [(BTSmartRoutingDaemon *)self _startHighActivityLevelTimer:1];
        [(SRStats *)self->_stats setProactiveRoutingTrigger:@"Unlock"];
      }
    }

    v9 = +[SRConnectionManager sharedSRConnectionManager];
    [v9 screenLockStateChanged:v5];
  }

  prefSmartRoutingEnabledPhase3 = self->_prefSmartRoutingEnabledPhase3;
  if (prefSmartRoutingEnabledPhase3)
  {
    if ([(CUSystemMonitor *)*p_powerMonitor firstUnlocked])
    {
      [(BTSmartRoutingDaemon *)self _pipeEnsureStarted];
      [(BTSmartRoutingDaemon *)self _TUMonitorEnsureStarted];
    }

    else
    {
      [(BTSmartRoutingDaemon *)self _pipeEnsureStopped];
      [(BTSmartRoutingDaemon *)self _TUMonitorEnsureStopped];
    }
  }

  else
  {
    [(BTSmartRoutingDaemon *)self _pipeEnsureStopped];
    [(BTSmartRoutingDaemon *)self _TUMonitorEnsureStopped];
    if (!self->_watchRecoveryEnabled)
    {
LABEL_24:
      [(BTSmartRoutingDaemon *)self _activityMonitorEnsureStopped];
      if (!prefSmartRoutingEnabledPhase3)
      {
        goto LABEL_23;
      }

      goto LABEL_25;
    }
  }

  if (![(CUSystemMonitor *)*p_powerMonitor firstUnlocked])
  {
    goto LABEL_24;
  }

  [(BTSmartRoutingDaemon *)self _activityMonitorEnsureStarted];
  if (!prefSmartRoutingEnabledPhase3)
  {
LABEL_23:
    [(BTSmartRoutingDaemon *)self _callMonitorEnsureStopped];
    goto LABEL_30;
  }

LABEL_25:
  if (([(CUSystemMonitor *)*p_powerMonitor firstUnlocked]& 1) != 0)
  {
    [(BTSmartRoutingDaemon *)self _callMonitorEnsureStarted];
  }

  else
  {
    [(BTSmartRoutingDaemon *)self _callMonitorEnsureStopped];
  }

  if ([(CUSystemMonitor *)*p_powerMonitor firstUnlocked])
  {
    [(BTSmartRoutingDaemon *)self _evaluatorEnsureStarted];
    goto LABEL_31;
  }

LABEL_30:
  [(BTSmartRoutingDaemon *)self _evaluatorEnsureStopped];
LABEL_31:
  if ([(CUSystemMonitor *)*p_powerMonitor firstUnlocked])
  {
    [(BTSmartRoutingDaemon *)self _aaControllerEnsureStarted];
    if (prefSmartRoutingEnabledPhase3)
    {
      goto LABEL_36;
    }
  }

  else
  {
    [(BTSmartRoutingDaemon *)self _aaControllerEnsureStopped];
    if (prefSmartRoutingEnabledPhase3)
    {
      goto LABEL_36;
    }
  }

  if (!self->_prefSpeakRoute)
  {
LABEL_38:
    [(BTSmartRoutingDaemon *)self _mediaRouteMonitorEnsureStopped];
    goto LABEL_39;
  }

LABEL_36:
  if (![(CUSystemMonitor *)*p_powerMonitor firstUnlocked])
  {
    goto LABEL_38;
  }

  [(BTSmartRoutingDaemon *)self _mediaRouteMonitorEnsureStarted];
LABEL_39:
  if (!self->_watchRecoveryEnabled || ![(CUSystemMonitor *)*p_powerMonitor firstUnlocked]|| self->_sleeping)
  {
    if (!prefSmartRoutingEnabledPhase3)
    {
      goto LABEL_52;
    }

    goto LABEL_43;
  }

  v11 = [(NSMutableDictionary *)self->_watchWxDevices count];
  if (!v11 && prefSmartRoutingEnabledPhase3)
  {
LABEL_43:
    if (![(CUSystemMonitor *)*p_powerMonitor firstUnlocked]|| self->_sleeping)
    {
      goto LABEL_52;
    }

    v11 = [(NSMutableDictionary *)self->_wxDevices count];
  }

  if (v11 && ([(CUSystemMonitor *)*p_powerMonitor screenActive]|| ![(CUSystemMonitor *)*p_powerMonitor screenLocked]|| self->_screenLockedLingerTimer || [(CUSystemMonitor *)self->_callMonitor activeCallCount]))
  {
    [(BTSmartRoutingDaemon *)self _nearbyInfoDiscoveryEnsureStarted];
    goto LABEL_53;
  }

LABEL_52:
  [(BTSmartRoutingDaemon *)self _nearbyInfoDiscoveryEnsureStopped];
LABEL_53:
  if ([(CUSystemMonitor *)*p_powerMonitor firstUnlocked])
  {
    [(BTSmartRoutingDaemon *)self _pairedDeviceMonitorEnsureStarted];
  }

  else
  {
    [(BTSmartRoutingDaemon *)self _pairedDeviceMonitorEnsureStopped];
  }

  [(BTSmartRoutingDaemon *)self _powerMonitorEnsureStarted];
  if (self->_prefSmartRoutingEnabledPhase3 && [(CUSystemMonitor *)*p_powerMonitor firstUnlocked])
  {
    [(BTSmartRoutingDaemon *)self _relayConduitMessageEnsureStarted];
    if (!prefSmartRoutingEnabledPhase3)
    {
      goto LABEL_63;
    }
  }

  else
  {
    [(BTSmartRoutingDaemon *)self _relayConduitMessageEnsureStopped];
    if (!prefSmartRoutingEnabledPhase3)
    {
LABEL_63:
      v12 = 0;
      goto LABEL_64;
    }
  }

  if (![(CUSystemMonitor *)*p_powerMonitor firstUnlocked])
  {
    goto LABEL_63;
  }

  v12 = !self->_sleeping;
LABEL_64:
  if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
  {
    if (v12)
    {
      goto LABEL_68;
    }

LABEL_82:
    [(BTSmartRoutingDaemon *)self _wxDiscoveryEnsureStopped];
    goto LABEL_83;
  }

  sub_100004DFC();
  if (!v12)
  {
    goto LABEL_82;
  }

LABEL_68:
  if (![(CUSystemMonitor *)*p_powerMonitor screenActive]&& [(CUSystemMonitor *)*p_powerMonitor screenLocked]&& !self->_screenLockedLingerTimer && ![(CUSystemMonitor *)self->_callMonitor activeCallCount]&& (GestaltGetDeviceClass() == 1 && (![(SRSourceDevice *)self->_sourceDevice DRServerIsATV]|| ![(SRWorkoutObserver *)self->_workoutObserver workoutActive]) || GestaltGetDeviceClass() != 1))
  {
    goto LABEL_82;
  }

  [(BTSmartRoutingDaemon *)self _wxDiscoveryEnsureStarted];
LABEL_83:
  if (self->_watchRecoveryEnabled && [(CUSystemMonitor *)*p_powerMonitor firstUnlocked]&& !self->_sleeping)
  {
    [(BTSmartRoutingDaemon *)self _wxDiscoveryWatchRecoveryEnsureStarted];
  }

  else
  {
    [(BTSmartRoutingDaemon *)self _wxDiscoveryWatchRecoveryEnsureStopped];
  }

  if (self->_prefSmartRoutingConnectionManager)
  {

    [(BTSmartRoutingDaemon *)self _evaluateNearbyDevice];
  }

  else
  {

    [(BTSmartRoutingDaemon *)self _evaluatorRun];
  }
}

- (void)_pipeEnsureStopped
{
  smartRoutingPipe = self->_smartRoutingPipe;
  if (smartRoutingPipe)
  {
    [(SRLEPipe *)smartRoutingPipe invalidate];
    v4 = self->_smartRoutingPipe;
    self->_smartRoutingPipe = 0;
  }
}

- (void)_TUMonitorEnsureStopped
{
  if (self->_tuCallCenter)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8B0C();
    }

    tuCallCenter = self->_tuCallCenter;
    self->_tuCallCenter = 0;

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:TUCallCenterCallStatusChangedNotification object:0];
    [v4 removeObserver:self name:TUCallCenterVideoCallStatusChangedNotification object:0];
  }
}

- (void)_activityMonitorEnsureStopped
{
  if (self->_activityLevelNotifyToken != -1)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E651C();
    }

    self->_activityLevel = 0;
    [(BTSmartRoutingDaemon *)self _nearbyInfoSetAudioRoutingScore];
    activityLevelNotifyToken = self->_activityLevelNotifyToken;
    if (activityLevelNotifyToken != -1)
    {
      notify_cancel(activityLevelNotifyToken);
      self->_activityLevelNotifyToken = -1;
    }
  }

  [(BTSmartRoutingDaemon *)self _smartRoutingControllerEnsureStopped];
}

- (void)_smartRoutingControllerEnsureStopped
{
  smartRoutingController = self->_smartRoutingController;
  if (smartRoutingController)
  {
    [(CBController *)smartRoutingController invalidate];
    v4 = self->_smartRoutingController;
    self->_smartRoutingController = 0;
  }
}

- (void)_callMonitorEnsureStopped
{
  [(CUSystemMonitor *)self->_callMonitor invalidate];
  callMonitor = self->_callMonitor;
  self->_callMonitor = 0;
}

- (void)_evaluatorEnsureStopped
{
  if (self->_evaluatorCoalescer && dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4648();
  }

  [(CUCoalescer *)self->_evaluatorCoalescer invalidate];
  evaluatorCoalescer = self->_evaluatorCoalescer;
  self->_evaluatorCoalescer = 0;

  connectDevice = self->_connectDevice;
  self->_connectDevice = 0;

  [(CBConnection *)self->_connectSession invalidate];
  connectSession = self->_connectSession;
  self->_connectSession = 0;

  smartRoutingLowerScanRateTimer = self->_smartRoutingLowerScanRateTimer;
  if (smartRoutingLowerScanRateTimer)
  {
    v8 = smartRoutingLowerScanRateTimer;
    dispatch_source_cancel(v8);
    v7 = self->_smartRoutingLowerScanRateTimer;
    self->_smartRoutingLowerScanRateTimer = 0;
  }
}

- (void)_connectedDeviceMonitorEnsureStarted
{
  if (!self->_connectedDiscovery)
  {
    v13[5] = v5;
    v13[6] = v4;
    v13[11] = v2;
    v13[12] = v3;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E6554();
    }

    v7 = objc_alloc_init(CBDiscovery);
    connectedDiscovery = self->_connectedDiscovery;
    self->_connectedDiscovery = v7;
    v9 = v7;

    [(CBDiscovery *)v9 setDispatchQueue:self->_dispatchQueue];
    [(CBDiscovery *)v9 setLabel:@"SmartRouting"];
    [(CBDiscovery *)v9 setDiscoveryFlags:[(CBDiscovery *)v9 discoveryFlags]| 0x80000200000];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10004D9B8;
    v13[3] = &unk_1002B6858;
    v13[4] = self;
    [(CBDiscovery *)v9 setDeviceFoundHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10004D9C4;
    v12[3] = &unk_1002B6880;
    v12[4] = self;
    [(CBDiscovery *)v9 setBluetoothStateChangedHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10004DAF0;
    v11[3] = &unk_1002B6858;
    v11[4] = self;
    [(CBDiscovery *)v9 setDeviceLostHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10004DAFC;
    v10[3] = &unk_1002B68A8;
    v10[4] = self;
    v10[5] = v9;
    [(CBDiscovery *)v9 activateWithCompletion:v10];
  }
}

- (void)_aaControllerEnsureStarted
{
  p_aaController = &self->_aaController;
  v4 = self->_aaController;
  if (!v4)
  {
    v5 = objc_alloc_init(AAController);
    [(AAController *)v5 setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(p_aaController, v5);
    [(AAController *)v5 setInvalidationHandler:&stru_1002B8188];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004D45C;
    v6[3] = &unk_1002B68A8;
    v4 = v5;
    v7 = v4;
    selfCopy = self;
    [(AAController *)v4 activateWithCompletion:v6];
  }
}

- (void)_mediaRouteMonitorEnsureStopped
{
  if (self->_mediaRouteMonitorObservingActiveAudioRoute)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E6B4C();
    }

    self->_mediaRouteMonitorObservingActiveAudioRoute = 0;
    self->_activityLevelMediaPlaying = 0;
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 removeObserver:self name:kMRMediaRemotePickableRoutesDidChangeNotification object:0];
    [v4 removeObserver:self name:AVSystemController_SomeSessionIsPlayingDidChangeNotification object:0];
    [v4 removeObserver:self name:AVSystemController_ServerConnectionDiedNotification object:0];
    [v4 removeObserver:self name:@"MRAVOutputContextOutputDevicesDidChangeNotification" object:MRAVOutputContextGetSharedSystemAudioContext()];
  }
}

- (void)_nearbyInfoDiscoveryEnsureStopped
{
  if (self->_nearbyInfoDiscovery)
  {
    [(BTSmartRoutingDaemon *)self _powerLogSmartRoutingScanStopped:16];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E7274();
    }

    [(SFDeviceDiscovery *)self->_nearbyInfoDiscovery invalidate];
    nearbyInfoDiscovery = self->_nearbyInfoDiscovery;
    self->_nearbyInfoDiscovery = 0;

    self->_prefSmartRoutingForcedDisconnectionTicks = 0;
    if (self->_tipiElectionInProgress)
    {
      self->_tipiElectionInProgress = 0;
    }

    tipiHealingTimer = self->_tipiHealingTimer;
    if (tipiHealingTimer)
    {
      v5 = tipiHealingTimer;
      dispatch_source_cancel(v5);
      v6 = self->_tipiHealingTimer;
      self->_tipiHealingTimer = 0;
    }

    if (self->_prefSmartRoutingWatchTriangleMagnet)
    {
      nearbyInfoDevicesTriangleRecoveryTimer = self->_nearbyInfoDevicesTriangleRecoveryTimer;
      if (nearbyInfoDevicesTriangleRecoveryTimer)
      {
        v8 = nearbyInfoDevicesTriangleRecoveryTimer;
        dispatch_source_cancel(v8);
        v9 = self->_nearbyInfoDevicesTriangleRecoveryTimer;
        self->_nearbyInfoDevicesTriangleRecoveryTimer = 0;
      }
    }

    prefSmartRoutingForcedDisconnectionStartTimer = self->_prefSmartRoutingForcedDisconnectionStartTimer;
    if (prefSmartRoutingForcedDisconnectionStartTimer)
    {
      v11 = prefSmartRoutingForcedDisconnectionStartTimer;
      dispatch_source_cancel(v11);
      v12 = self->_prefSmartRoutingForcedDisconnectionStartTimer;
      self->_prefSmartRoutingForcedDisconnectionStartTimer = 0;
    }

    nearbyInfoDevices = self->_nearbyInfoDevices;
    if (nearbyInfoDevices)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      allValues = [(NSMutableDictionary *)nearbyInfoDevices allValues];
      v15 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v21;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v21 != v17)
            {
              objc_enumerationMutation(allValues);
            }

            [(BTSmartRoutingDaemon *)self _nearbyInfoDeviceLost:*(*(&v20 + 1) + 8 * i)];
          }

          v16 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v16);
      }

      v19 = self->_nearbyInfoDevices;
      self->_nearbyInfoDevices = 0;
    }
  }
}

- (void)_pairedDeviceMonitorEnsureStarted
{
  if (!self->_pairedDiscovery)
  {
    v12[6] = v5;
    v12[7] = v4;
    v12[12] = v2;
    v12[13] = v3;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E760C();
    }

    v7 = objc_alloc_init(CBDiscovery);
    pairedDiscovery = self->_pairedDiscovery;
    self->_pairedDiscovery = v7;
    v9 = v7;

    [(CBDiscovery *)v9 setDispatchQueue:self->_dispatchQueue];
    [(CBDiscovery *)v9 setLabel:@"SmartRouting"];
    [(CBDiscovery *)v9 setDiscoveryFlags:[(CBDiscovery *)v9 discoveryFlags]| 0x80000800000];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000536D0;
    v12[3] = &unk_1002B6DA8;
    v12[4] = self;
    v12[5] = v9;
    [(CBDiscovery *)v9 setDeviceFoundHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10005378C;
    v11[3] = &unk_1002B6DA8;
    v11[4] = self;
    v11[5] = v9;
    [(CBDiscovery *)v9 setDeviceLostHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100053848;
    v10[3] = &unk_1002B68A8;
    v10[4] = self;
    v10[5] = v9;
    [(CBDiscovery *)v9 activateWithCompletion:v10];
  }
}

- (void)_powerMonitorEnsureStarted
{
  if (!self->_powerMonitor)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E7744();
    }

    v3 = objc_alloc_init(CUSystemMonitor);
    powerMonitor = self->_powerMonitor;
    self->_powerMonitor = v3;
    v5 = v3;

    [(CUSystemMonitor *)v5 setDispatchQueue:self->_dispatchQueue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100053B38;
    v11[3] = &unk_1002B6D18;
    v11[4] = v5;
    v11[5] = self;
    v6 = objc_retainBlock(v11);
    [(CUSystemMonitor *)v5 setScreenOnChangedHandler:v6];
    [(CUSystemMonitor *)v5 setScreenLockedChangedHandler:v6];
    [(CUSystemMonitor *)v5 setScreenStateChangedHandler:v6];
    [(CUSystemMonitor *)v5 setFirstUnlockHandler:v6];
    [(CUSystemMonitor *)v5 setPrimaryAppleIDChangedHandler:v6];
    [(CUSystemMonitor *)v5 setScreenLockedChangedHandler:v6];
    [(CUSystemMonitor *)v5 activateWithCompletion:v6];
  }

  if (!self->_sleepWakeMonitor)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E7760();
    }

    v7 = objc_alloc_init(CUSleepWakeMonitor);
    sleepWakeMonitor = self->_sleepWakeMonitor;
    self->_sleepWakeMonitor = v7;
    v9 = v7;

    [(CUSleepWakeMonitor *)v9 setDispatchQueue:self->_dispatchQueue];
    [(CUSleepWakeMonitor *)v9 setLabel:@"SmartRouting"];
    self->_sleeping = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100003A18;
    v10[3] = &unk_1002B84A0;
    v10[4] = v9;
    v10[5] = self;
    [(CUSleepWakeMonitor *)v9 setSleepWakeHandler:v10];
    [(CUSleepWakeMonitor *)v9 activateWithCompletion:0];
  }
}

- (void)_wxDiscoveryEnsureStopped
{
  if (self->_wxDiscovery)
  {
    if (self->_wxWorkoutDiscoveryTimer)
    {
      sub_1001E85A0(dword_1002F6778);
    }

    else
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E85F8();
      }

      [(BTSmartRoutingDaemon *)self _powerLogSmartRoutingScanStopped:7];
      [(SFDeviceDiscovery *)self->_wxDiscovery invalidate];
      wxDiscovery = self->_wxDiscovery;
      self->_wxDiscovery = 0;

      wxDevices = self->_wxDevices;
      if (wxDevices)
      {
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        allValues = [(NSMutableDictionary *)wxDevices allValues];
        v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v12;
          do
          {
            for (i = 0; i != v7; i = i + 1)
            {
              if (*v12 != v8)
              {
                objc_enumerationMutation(allValues);
              }

              [(BTSmartRoutingDaemon *)self _wxDeviceLost:*(*(&v11 + 1) + 8 * i)];
            }

            v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
          }

          while (v7);
        }

        v10 = self->_wxDevices;
        self->_wxDevices = 0;
      }
    }
  }
}

- (void)_wxDiscoveryWatchRecoveryEnsureStopped
{
  if (self->_wxDiscoveryWatchRecovery)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8630();
    }

    [(BTSmartRoutingDaemon *)self _powerLogSmartRoutingScanStopped:7];
    [(CUBLEScanner *)self->_wxDiscoveryWatchRecovery invalidate];
    wxDiscoveryWatchRecovery = self->_wxDiscoveryWatchRecovery;
    self->_wxDiscoveryWatchRecovery = 0;

    watchWxDevices = self->_watchWxDevices;
    if (watchWxDevices)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      allValues = [(NSMutableDictionary *)watchWxDevices allValues];
      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(allValues);
            }

            [(BTSmartRoutingDaemon *)self _wxDiscoveryWatchRecoveryLostDevice:*(*(&v11 + 1) + 8 * i)];
          }

          v7 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }

      v10 = self->_watchWxDevices;
      self->_watchWxDevices = 0;
    }
  }
}

- (void)_evaluateNearbyDevice
{
  v3 = +[SRConnectionManager sharedSRConnectionManager];
  evaluateNearbyDevicesForConnection = [v3 evaluateNearbyDevicesForConnection];

  v5 = evaluateNearbyDevicesForConnection;
  if (evaluateNearbyDevicesForConnection)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v6 = _LogCategory_Initialize(), v5 = evaluateNearbyDevicesForConnection, v6))
      {
        sub_100005B80(v5);
      }
    }

    v4 = [(BTSmartRoutingDaemon *)self _initializeConnectionToDevice:evaluateNearbyDevicesForConnection];
    v5 = evaluateNearbyDevicesForConnection;
  }

  _objc_release_x1(v4, v5);
}

- (void)clearCacheForBluetoothOff
{
  [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.PreemptivePortDisconnected"];
  connectedDevices = self->_connectedDevices;
  if (connectedDevices)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    allValues = [(NSMutableDictionary *)connectedDevices allValues];
    v5 = [allValues countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v39;
      do
      {
        v8 = 0;
        do
        {
          if (*v39 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          [(BTSmartRoutingDaemon *)self _connectedDeviceLost:*(*(&v38 + 1) + 8 * v8)];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [allValues countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v6);
    }

    v9 = self->_connectedDevices;
    self->_connectedDevices = 0;
  }

  [(BTSmartRoutingDaemon *)self _clearAllDisconnectTicks];
  if (self->_connectTicks)
  {
    self->_connectTicks = 0;
  }

  if (self->_tipiSetupTicks)
  {
    self->_tipiSetupTicks = 0;
  }

  uiSmartRoutingBanner = self->_uiSmartRoutingBanner;
  if (uiSmartRoutingBanner)
  {
    [(BTBannerUISession *)uiSmartRoutingBanner invalidate];
    v11 = self->_uiSmartRoutingBanner;
    self->_uiSmartRoutingBanner = 0;
  }

  if (self->_tipiElectionInProgress)
  {
    self->_tipiElectionInProgress = 0;
  }

  [(BTSmartRoutingDaemon *)self _setTipiElectionReceivedLePipe:&stru_1002C1358];
  tipiHealingTimer = self->_tipiHealingTimer;
  if (tipiHealingTimer)
  {
    v13 = tipiHealingTimer;
    dispatch_source_cancel(v13);
    v14 = self->_tipiHealingTimer;
    self->_tipiHealingTimer = 0;
  }

  smartRoutingManualDisconnectionList = self->_smartRoutingManualDisconnectionList;
  if (smartRoutingManualDisconnectionList)
  {
    [(NSMutableArray *)smartRoutingManualDisconnectionList removeAllObjects];
    v16 = self->_smartRoutingManualDisconnectionList;
  }

  else
  {
    v16 = 0;
  }

  self->_smartRoutingManualDisconnectionList = 0;

  srBudswapDeviceMap = self->_srBudswapDeviceMap;
  if (srBudswapDeviceMap)
  {
    [(NSMutableDictionary *)srBudswapDeviceMap removeAllObjects];
    v18 = self->_srBudswapDeviceMap;
  }

  else
  {
    v18 = 0;
  }

  self->_srBudswapDeviceMap = 0;

  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  if (smartRoutingWxDeviceMap)
  {
    [(NSMutableDictionary *)smartRoutingWxDeviceMap removeAllObjects];
    v20 = self->_smartRoutingWxDeviceMap;
  }

  else
  {
    v20 = 0;
  }

  self->_smartRoutingWxDeviceMap = 0;

  smartRoutingBackOffMap = self->_smartRoutingBackOffMap;
  if (smartRoutingBackOffMap)
  {
    [(NSMutableDictionary *)smartRoutingBackOffMap removeAllObjects];
    v22 = self->_smartRoutingBackOffMap;
  }

  else
  {
    v22 = 0;
  }

  self->_smartRoutingBackOffMap = 0;

  isFirstConnectionAfterSREnable = [(SRSourceDevice *)self->_sourceDevice isFirstConnectionAfterSREnable];

  if (isFirstConnectionAfterSREnable)
  {
    isFirstConnectionAfterSREnable2 = [(SRSourceDevice *)self->_sourceDevice isFirstConnectionAfterSREnable];
    [isFirstConnectionAfterSREnable2 removeAllObjects];
  }

  [(SRSourceDevice *)self->_sourceDevice setIsFirstConnectionAfterSREnable:0];
  highActivityLevelTimer = self->_highActivityLevelTimer;
  if (highActivityLevelTimer)
  {
    v26 = highActivityLevelTimer;
    dispatch_source_cancel(v26);
    v27 = self->_highActivityLevelTimer;
    self->_highActivityLevelTimer = 0;
  }

  phoneOwnershipTimer = self->_phoneOwnershipTimer;
  if (phoneOwnershipTimer)
  {
    v29 = phoneOwnershipTimer;
    dispatch_source_cancel(v29);
    v30 = self->_phoneOwnershipTimer;
    self->_phoneOwnershipTimer = 0;
  }

  idleActivityScoreTimer = self->_idleActivityScoreTimer;
  if (idleActivityScoreTimer)
  {
    v32 = idleActivityScoreTimer;
    dispatch_source_cancel(v32);
    v33 = self->_idleActivityScoreTimer;
    self->_idleActivityScoreTimer = 0;
  }

  temporaryOverrideTimer = self->_temporaryOverrideTimer;
  if (temporaryOverrideTimer)
  {
    v35 = temporaryOverrideTimer;
    dispatch_source_cancel(v35);
    v36 = self->_temporaryOverrideTimer;
    self->_temporaryOverrideTimer = 0;
  }

  phase1ConnectConfig = self->_phase1ConnectConfig;
  self->_phase1ConnectConfig = 0;

  [(SRSourceDevice *)self->_sourceDevice setAudioRoute:1];
  [(NSMutableDictionary *)self->_srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:&stru_1002B8A58];
}

- (void)_clearAllDisconnectTicks
{
  disconnectTicksMap = self->_disconnectTicksMap;
  if (disconnectTicksMap)
  {
    [(NSMutableDictionary *)disconnectTicksMap removeAllObjects];
    v4 = self->_disconnectTicksMap;
  }

  else
  {
    v4 = 0;
  }

  self->_disconnectTicksMap = 0;

  srDiscoveredDeviceMap = self->_srDiscoveredDeviceMap;

  [(NSMutableDictionary *)srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:&stru_1002B86D8];
}

+ (id)sharedBTSmartRoutingDaemon
{
  if (qword_1002FA0B8 != -1)
  {
    sub_1001E3410();
  }

  v3 = qword_1002FA0B0;

  return v3;
}

- (BTSmartRoutingDaemon)init
{
  v14.receiver = self;
  v14.super_class = BTSmartRoutingDaemon;
  v2 = [(BTSmartRoutingDaemon *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_activityLevel = 0;
    v2->_activityLevelDeltaInSeconds = 25;
    v2->_activityLevelNotifyToken = -1;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("BTSmartRouting", v4);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v5;

    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("BTSmartRoutingAVSys", v7);
    dispatchQueueAVSys = v3->_dispatchQueueAVSys;
    v3->_dispatchQueueAVSys = v8;

    v3->_forcedDisconnectionRSSI = -60;
    v10 = GestaltCopyAnswer();
    myModel = v3->_myModel;
    v3->_myModel = v10;

    v3->_ownershipToken = -1;
    v3->_prefsChangedNotifyToken = -1;
    v3->_prefSmartRoutingForcedDisconnectionStartSeconds = 1.0;
    v3->_ringerStateToken = -1;
    v3->_splitterStateOnToken = -1;
    v3->_smartRoutingDisconnectToken = -1;
    v3->_cbDaemonNotifyToken = -1;
    v3->_tipiElectionPhase1 = 0;
    v12 = v3;
  }

  return v3;
}

- (id)descriptionWithLevel:(int)level
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_100003918;
  v12 = sub_100003838;
  v13 = 0;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003DED8;
  block[3] = &unk_1002B7D78;
  block[4] = self;
  block[5] = &v8;
  levelCopy = level;
  dispatch_sync(dispatchQueue, block);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

- (id)_descriptionWithLevel:(int)level
{
  v113 = 0;
  v114 = &v113;
  v115 = 0x3032000000;
  v116 = sub_100003918;
  v117 = sub_100003838;
  v118 = 0;
  v4 = objc_alloc_init(NSDateFormatter);
  [v4 setDateFormat:@"yyyy-MM-dd"];
  v90 = self->_myAddress;
  obj = v114[5];
  activityLevel = self->_activityLevel;
  if (activityLevel > 0xE)
  {
    v6 = "?";
  }

  else
  {
    v6 = off_1002B8DF8[activityLevel];
  }

  score = self->_score;
  if (score > 0xF)
  {
    v8 = "?";
  }

  else
  {
    v8 = off_1002B8F50[score];
  }

  if (self->_prefSmartRoutingEnabledPhase3)
  {
    v9 = "yes";
  }

  else
  {
    v9 = "no";
  }

  if (self->_sleeping)
  {
    v10 = "yes";
  }

  else
  {
    v10 = "no";
  }

  sleepWakeState = self->_sleepWakeState;
  v79 = v4;
  location = (v114 + 5);
  v88 = v8;
  v89 = v6;
  v86 = v10;
  v87 = v9;
  if (sleepWakeState > 29)
  {
    if (sleepWakeState == 30)
    {
      v12 = "FullWake";
      goto LABEL_27;
    }

    if (sleepWakeState != 40)
    {
      if (sleepWakeState == 50)
      {
        v12 = "PowerOff";
        goto LABEL_27;
      }

      goto LABEL_24;
    }

    v12 = "Restart";
  }

  else
  {
    if (!sleepWakeState)
    {
      v12 = "Unknown";
      goto LABEL_27;
    }

    if (sleepWakeState != 10)
    {
      if (sleepWakeState == 20)
      {
        v12 = "DarkWake";
        goto LABEL_27;
      }

LABEL_24:
      v12 = "?";
      goto LABEL_27;
    }

    v12 = "Sleep";
  }

LABEL_27:
  v84 = v12;
  activeCallCount = [(CUSystemMonitor *)self->_callMonitor activeCallCount];
  activityLevelMediaPlaying = self->_activityLevelMediaPlaying;
  isBTRoute = self->_isBTRoute;
  isSpeakerRoute = self->_isSpeakerRoute;
  isBuiltInReceiverRoute = self->_isBuiltInReceiverRoute;
  pairedDeviceSupportsSmartRouting = self->_pairedDeviceSupportsSmartRouting;
  isHSA2Account = self->_isHSA2Account;
  ringerState = self->_ringerState;
  prefSmartRoutingBlockHijackWindowinSeconds = self->_prefSmartRoutingBlockHijackWindowinSeconds;
  v81 = prefSmartRoutingBlockHijackWindowinSeconds;
  totalCloudDeviceCount = self->_totalCloudDeviceCount;
  isFirstConnectionAfterSREnable = [(SRSourceDevice *)self->_sourceDevice isFirstConnectionAfterSREnable];
  v21 = isFirstConnectionAfterSREnable;
  if (ringerState)
  {
    v22 = "yes";
  }

  else
  {
    v22 = "no";
  }

  if (isHSA2Account)
  {
    v23 = "yes";
  }

  else
  {
    v23 = "no";
  }

  if (pairedDeviceSupportsSmartRouting)
  {
    v24 = "yes";
  }

  else
  {
    v24 = "no";
  }

  if (isBuiltInReceiverRoute)
  {
    v25 = "yes";
  }

  else
  {
    v25 = "no";
  }

  if (isSpeakerRoute)
  {
    v26 = "yes";
  }

  else
  {
    v26 = "no";
  }

  if (isBTRoute)
  {
    v27 = "yes";
  }

  else
  {
    v27 = "no";
  }

  if (activityLevelMediaPlaying)
  {
    v28 = "yes";
  }

  else
  {
    v28 = "no";
  }

  if (activeCallCount <= 0)
  {
    v29 = "no";
  }

  else
  {
    v29 = "yes";
  }

  v78 = isFirstConnectionAfterSREnable;
  v77 = v22;
  v76 = v23;
  v74 = v25;
  v75 = v24;
  v72 = v27;
  v73 = v26;
  v70 = v29;
  v71 = v28;
  v59 = v90;
  NSAppendPrintF_safe();
  objc_storeStrong(location, obj);

  v30 = self->_uiSmartRoutingBanner;
  v31 = v30;
  if (v30)
  {
    v32 = (v114 + 5);
    v111 = v114[5];
    v59 = v30;
    NSAppendPrintF();
    objc_storeStrong(v32, v111);
  }

  v33 = self->_uiNoteSessionSmartRouting;
  v34 = v33;
  if (v33)
  {
    v35 = (v114 + 5);
    v110 = v114[5];
    v59 = v33;
    NSAppendPrintF();
    objc_storeStrong(v35, v110);
  }

  v36 = (v114 + 5);
  v109 = v114[5];
  NSAppendPrintF();
  objc_storeStrong(v36, v109);
  v37 = (v114 + 5);
  v108 = v114[5];
  v60 = [(NSMutableDictionary *)self->_connectedDevices count:v59];
  connectedDiscovery = self->_connectedDiscovery;
  NSAppendPrintF();
  objc_storeStrong(v37, v108);
  connectedDevices = self->_connectedDevices;
  v107[0] = _NSConcreteStackBlock;
  v107[1] = 3221225472;
  v107[2] = sub_10003E72C;
  v107[3] = &unk_1002B7DA0;
  v107[4] = &v113;
  [(NSMutableDictionary *)connectedDevices enumerateKeysAndObjectsUsingBlock:v107, v60, connectedDiscovery];
  v39 = (v114 + 5);
  v106 = v114[5];
  NSAppendPrintF();
  objc_storeStrong(v39, v106);
  v40 = (v114 + 5);
  v105 = v114[5];
  discoveredDevices = [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
  v61 = [discoveredDevices count];
  pairedDiscovery = self->_pairedDiscovery;
  NSAppendPrintF();
  objc_storeStrong(v40, v105);

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v42 = [(CBDiscovery *)self->_pairedDiscovery discoveredDevices:v61];
  v43 = [v42 countByEnumeratingWithState:&v101 objects:v119 count:16];
  if (v43)
  {
    v44 = *v102;
    do
    {
      for (i = 0; i != v43; i = i + 1)
      {
        if (*v102 != v44)
        {
          objc_enumerationMutation(v42);
        }

        v46 = *(*(&v101 + 1) + 8 * i);
        v47 = (v114 + 5);
        v100 = v114[5];
        v62 = v46;
        NSAppendPrintF();
        objc_storeStrong(v47, v100);
      }

      v43 = [v42 countByEnumeratingWithState:&v101 objects:v119 count:{16, v62}];
    }

    while (v43);
  }

  v48 = (v114 + 5);
  v99 = v114[5];
  NSAppendPrintF();
  objc_storeStrong(v48, v99);
  v49 = (v114 + 5);
  v98 = v114[5];
  v63 = [(NSMutableDictionary *)self->_nearbyInfoDevices count];
  nearbyInfoDiscovery = self->_nearbyInfoDiscovery;
  NSAppendPrintF();
  objc_storeStrong(v49, v98);
  nearbyInfoDevices = self->_nearbyInfoDevices;
  v97[0] = _NSConcreteStackBlock;
  v97[1] = 3221225472;
  v97[2] = sub_10003E77C;
  v97[3] = &unk_1002B7DC8;
  v97[4] = &v113;
  [(NSMutableDictionary *)nearbyInfoDevices enumerateKeysAndObjectsUsingBlock:v97, v63, nearbyInfoDiscovery];
  v51 = (v114 + 5);
  v96 = v114[5];
  NSAppendPrintF();
  objc_storeStrong(v51, v96);
  v52 = (v114 + 5);
  v95 = v114[5];
  v64 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap count];
  NSAppendPrintF();
  objc_storeStrong(v52, v95);
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v94[0] = _NSConcreteStackBlock;
  v94[1] = 3221225472;
  v94[2] = sub_10003E7E4;
  v94[3] = &unk_1002B7DF0;
  v94[4] = &v113;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v94, v64];
  v54 = (v114 + 5);
  v93 = v114[5];
  v65 = [(NSMutableDictionary *)self->_wxDevices count];
  wxDiscovery = self->_wxDiscovery;
  NSAppendPrintF();
  objc_storeStrong(v54, v93);
  wxDevices = self->_wxDevices;
  v92[0] = _NSConcreteStackBlock;
  v92[1] = 3221225472;
  v92[2] = sub_10003EB44;
  v92[3] = &unk_1002B7DC8;
  v92[4] = &v113;
  [(NSMutableDictionary *)wxDevices enumerateKeysAndObjectsUsingBlock:v92, v65, wxDiscovery];
  v56 = (v114 + 5);
  v91 = v114[5];
  NSAppendPrintF();
  objc_storeStrong(v56, v91);
  v57 = v114[5];

  _Block_object_dispose(&v113, 8);

  return v57;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003EC20;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  self->_smartRoutingCapable = 1;
  v3 = +[AADeviceManagerDaemon sharedAADeviceManagerDaemon];
  aaDeviceManagerDaemon = self->_aaDeviceManagerDaemon;
  self->_aaDeviceManagerDaemon = v3;

  v5 = +[AALowBatteryAlertDaemon sharedAALowBatteryAlertDaemon];
  aaLowBatteryAlertDaemon = self->_aaLowBatteryAlertDaemon;
  self->_aaLowBatteryAlertDaemon = v5;

  v7 = +[AAPairedDeviceDaemon sharedAAPairedDeviceDaemon];
  aaPairedDeviceDaemon = self->_aaPairedDeviceDaemon;
  self->_aaPairedDeviceDaemon = v7;

  v9 = +[AANearbyDeviceManagerDaemon sharedAANearbyDeviceManagerDaemon];
  aaNearbyDeviceManagerDaemon = self->_aaNearbyDeviceManagerDaemon;
  self->_aaNearbyDeviceManagerDaemon = v9;

  v11 = +[AAServicesDaemon sharedAAServicesDaemon];
  aaServicesDaemon = self->_aaServicesDaemon;
  self->_aaServicesDaemon = v11;

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E3440(&self->_aaDeviceManagerDaemon);
  }

  v13 = +[SRConnectionManager sharedSRConnectionManager];
  [v13 setSmartRoutingDaemon:self];

  [(BTSmartRoutingDaemon *)self _connectedDeviceMonitorEnsureStarted];
  if (!self->_sourceDevice)
  {
    v14 = objc_alloc_init(SRSourceDevice);
    sourceDevice = self->_sourceDevice;
    self->_sourceDevice = v14;
  }

  if (!self->_srDiscoveredDeviceMap)
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    srDiscoveredDeviceMap = self->_srDiscoveredDeviceMap;
    self->_srDiscoveredDeviceMap = v16;
  }

  [(BTSmartRoutingDaemon *)self _statsEnsureStarted];
  if (self->_prefsChangedNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10003F394;
    handler[3] = &unk_1002B6DF0;
    handler[4] = self;
    notify_register_dispatch("com.apple.bluetooth.prefsChanged", &self->_prefsChangedNotifyToken, dispatchQueue, handler);
  }

  [(BTSmartRoutingDaemon *)self _prefsChanged];
  if (!self->_sigTermSource)
  {
    v19 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, self->_dispatchQueue);
    sigTermSource = self->_sigTermSource;
    self->_sigTermSource = v19;

    v21 = self->_sigTermSource;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = sub_10003F3FC;
    v44[3] = &unk_1002B6880;
    v44[4] = self;
    dispatch_source_set_event_handler(v21, v44);
    dispatch_activate(self->_sigTermSource);
  }

  v22 = +[CBIDSManager sharedInstance];
  self->_totalCloudDeviceCount = [v22 totalCloudDeviceCount];

  v23 = +[NSNotificationCenter defaultCenter];
  [v23 addObserver:self selector:"_setTotalCountIDSDevices:" name:@"BTTotalIDSDeviceCountChanged" object:0];
  self->_secondsBetweenConnectBanner = 300.0;
  if (!self->_localDeviceAudioCategory)
  {
    _queryLocalAudioCategory = [(BTSmartRoutingDaemon *)self _queryLocalAudioCategory];
    [(BTSmartRoutingDaemon *)self _updateLocalAudioCategory:_queryLocalAudioCategory];
  }

  v25 = +[NSDistributedNotificationCenter defaultCenter];
  [v25 addObserver:self selector:"_handleStemClickGestureReceived:" name:@"com.apple.BTavrcp.CommandReceived" object:0];

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E3480();
  }

  v26 = +[NSDistributedNotificationCenter defaultCenter];
  [v26 addObserver:self selector:"_handleTriangleRecoveryInitiated:" name:@"com.apple.BTServer.TriangleRecoveryInitiated" object:0];

  if (GestaltGetDeviceClass() == 1)
  {
    v27 = +[NSNotificationCenter defaultCenter];
    [v27 addObserver:self selector:"_handlePairedWatchStatusDidChange" name:NRPairedDeviceRegistryDeviceDidUnpairNotification object:0];

    v28 = +[NSNotificationCenter defaultCenter];
    [v28 addObserver:self selector:"_handlePairedWatchStatusDidChange" name:NRPairedDeviceRegistryDeviceDidPairNotification object:0];

    [(BTSmartRoutingDaemon *)self _handlePairedWatchStatusDidChange];
    v29 = +[NSNotificationCenter defaultCenter];
    [v29 addObserver:self selector:"_checkIfPairedCompanionDeviceSupportsSmartRouting" name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];

    [(BTSmartRoutingDaemon *)self _checkIfPairedCompanionDeviceSupportsSmartRouting];
  }

  if (GestaltGetDeviceClass() == 6)
  {
    self->_pairedCompanionDeviceSupportsSmartRouting = 1;
  }

  [(BTSmartRoutingDaemon *)self _workoutObserverEnsureStarted];
  if (_os_feature_enabled_impl() && !self->_nowPlayingObserver)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E34B4();
    }

    v30 = objc_alloc_init(SRNowPlayingObserver);
    nowPlayingObserver = self->_nowPlayingObserver;
    self->_nowPlayingObserver = v30;

    [(SRNowPlayingObserver *)self->_nowPlayingObserver activate];
  }

  [(BTSmartRoutingDaemon *)self _systemUIMonitorEnsureStarted];
  if (_os_feature_enabled_impl())
  {
    [(BTSmartRoutingDaemon *)self _dataRelayClientMonitorEnsureStarted];
  }

  v32 = self->_dispatchQueue;
  v43[0] = _NSConcreteStackBlock;
  v43[1] = 3221225472;
  v43[2] = sub_10003F404;
  v43[3] = &unk_1002B6DF0;
  v43[4] = self;
  notify_register_dispatch("com.apple.bluetooth.daemonStarted", &self->_cbDaemonNotifyToken, v32, v43);
  v33 = self->_dispatchQueue;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_10003F518;
  v42[3] = &unk_1002B6DF0;
  v42[4] = self;
  notify_register_dispatch("com.apple.bluetooth.SmartRoutingDisconnectReason", &self->_smartRoutingDisconnectToken, v33, v42);
  v34 = self->_dispatchQueue;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10003F8C0;
  v41[3] = &unk_1002B6DF0;
  v41[4] = self;
  notify_register_dispatch("com.apple.BluetoothServices.AudioRoutingOwnershipTaken", &self->_ownershipToken, v34, v41);
  if (self->_ringerStateToken == -1)
  {
    v35 = self->_dispatchQueue;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10003FBF8;
    v40[3] = &unk_1002B6DF0;
    v40[4] = self;
    notify_register_dispatch("com.apple.springboard.ringerstate", &self->_ringerStateToken, v35, v40);
  }

  if (self->_splitterStateOnToken == -1)
  {
    v36 = self->_dispatchQueue;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_10003FC88;
    v39[3] = &unk_1002B6DF0;
    v39[4] = self;
    notify_register_dispatch("com.apple.bluetooth.WirelessSplitterOn", &self->_splitterStateOnToken, v36, v39);
  }

  v37 = self->_dispatchQueue;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_10003FD60;
  v38[3] = &unk_1002B6DF0;
  v38[4] = self;
  notify_register_dispatch("com.apple.bluetooth.magnet", &self->_magnetStateToken, v37, v38);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003FE74;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)_myBluetoothAddressString
{
  p_myAddress = &self->_myAddress;
  myAddress = self->_myAddress;
  if (!myAddress || -[NSString length](myAddress, "length") != 17 || !strcmp([*p_myAddress UTF8String], "00:00:00:00:00:00"))
  {
    v4 = [CBController controllerInfoAndReturnError:0];
    hardwareAddressData = [v4 hardwareAddressData];
    v6 = CUPrintNSDataAddress();
    v7 = *p_myAddress;
    *p_myAddress = v6;

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3860(p_myAddress);
    }
  }

  v8 = *p_myAddress;

  return v8;
}

- (void)_prefsChanged
{
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingConnectionAlert != v3)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E38A0();
    }

    self->_prefSmartRoutingConnectionAlert = v3;
  }

  v4 = _os_feature_enabled_impl();
  if (self->_prefSmartRoutingWatchAutomaticSwitching != v4)
  {
    v5 = v4;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E38F8();
    }

    self->_prefSmartRoutingWatchAutomaticSwitching = v5;
  }

  v6 = CFPrefs_GetInt64() != 0;
  v7 = v6;
  if (self->_prefSmartRoutingEnabledPhase3 != v7)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3950();
    }

    self->_prefSmartRoutingEnabledPhase3 = v6;
    [(BTSmartRoutingDaemon *)self setIsSREnabled:v6];
    [(BTSmartRoutingDaemon *)self activeHRMDeviceUpdateWithPushRequired:1];
    v8 = +[SRConnectionManager sharedSRConnectionManager];
    [v8 smartRoutingCapableStateChanged:v7];
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E39A8();
  }

  if (self->_totalCloudDeviceCount > 1 || self->_pairedDeviceContainsCompanionWatch)
  {
    LODWORD(v7) = v7 || self->_isHSA2Account;
  }

  if (self->_smartRoutingCapable != v7 || !self->_isFirstUpdated)
  {
    self->_smartRoutingCapable = v7;
    self->_isFirstUpdated = 1;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1)
      {
LABEL_26:
        *&v9 = COERCE_DOUBLE("no");
        if (v7)
        {
          *&v9 = COERCE_DOUBLE("yes");
        }

        v59 = *&v9;
        LogPrintF();
        goto LABEL_30;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(v7) = self->_smartRoutingCapable;
        goto LABEL_26;
      }
    }

LABEL_30:
    v10 = +[CloudXPCService sharedInstance];
    v61 = @"srCapable";
    v11 = [NSNumber numberWithBool:self->_smartRoutingCapable];
    v62 = v11;
    v12 = [NSDictionary dictionaryWithObjects:&v62 forKeys:&v61 count:1];
    [v10 sendCloudKitMsg:@"smartRoutingCapable" args:v12];
  }

  v13 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingNoBackOffTimers != v13)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3A2C();
    }

    self->_prefSmartRoutingNoBackOffTimers = v13;
  }

  v14 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingPipeEnabled != v14)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3A84();
    }

    self->_prefSmartRoutingPipeEnabled = v14;
  }

  Int64 = CFPrefs_GetInt64();
  prefSmartRoutingBlockHijackWindowinSeconds = self->_prefSmartRoutingBlockHijackWindowinSeconds;
  if (Int64 != prefSmartRoutingBlockHijackWindowinSeconds)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_46;
        }

        prefSmartRoutingBlockHijackWindowinSeconds = self->_prefSmartRoutingBlockHijackWindowinSeconds;
      }

      v60 = Int64;
      v59 = *&prefSmartRoutingBlockHijackWindowinSeconds;
      LogPrintF();
    }

LABEL_46:
    self->_prefSmartRoutingBlockHijackWindowinSeconds = Int64;
  }

  v17 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingTipiElection != v17)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3ADC();
    }

    self->_prefSmartRoutingTipiElection = v17;
  }

  v18 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingTipiHealingv2 != v18)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3B34();
    }

    self->_prefSmartRoutingTipiHealingv2 = v18;
  }

  v19 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingForcedDisconnection != v19)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3B8C();
    }

    self->_prefSmartRoutingForcedDisconnection = v19;
  }

  CFPrefs_GetDouble();
  prefSmartRoutingForcedDisconnectionStartSeconds = self->_prefSmartRoutingForcedDisconnectionStartSeconds;
  v22 = v21;
  if (v21 != prefSmartRoutingForcedDisconnectionStartSeconds)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_67;
        }

        prefSmartRoutingForcedDisconnectionStartSeconds = self->_prefSmartRoutingForcedDisconnectionStartSeconds;
      }

      v59 = prefSmartRoutingForcedDisconnectionStartSeconds;
      v60 = v22;
      LogPrintF();
    }

LABEL_67:
    self->_prefSmartRoutingForcedDisconnectionStartSeconds = v22;
  }

  v23 = CFPrefs_GetInt64();
  if ((v23 - 1000) >= 0xFFFFFFFFFFFFF831 && v23 != 0)
  {
    v26 = v23;
  }

  else
  {
    *&v26 = NAN;
  }

  *&v27 = self->_forcedDisconnectionRSSI;
  if (v26 != *&v27)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_82;
        }

        *&v27 = self->_forcedDisconnectionRSSI;
      }

      v59 = v27;
      v60 = *&v26;
      LogPrintF();
    }

LABEL_82:
    self->_forcedDisconnectionRSSI = v26;
  }

  v28 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingNoNearbyFallBack != v28)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3BE4();
    }

    self->_prefSmartRoutingNoNearbyFallBack = v28;
  }

  v29 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingEligible != v29)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3C3C();
    }

    self->_prefSmartRoutingEligible = v29;
  }

  v30 = CFPrefs_GetInt64() != 0;
  if (self->_prefSpeakRoute != v30)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3C94();
    }

    self->_prefSpeakRoute = v30;
  }

  v31 = CFPrefs_GetInt64() != 0;
  if (self->_prefRouteIndicationEnable != v31)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3CEC();
    }

    self->_prefRouteIndicationEnable = v31;
  }

  v32 = CFPrefs_GetInt64() != 0;
  if (self->_prefProactiveOwnershipArbitration != v32)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3D44();
    }

    self->_prefProactiveOwnershipArbitration = v32;
  }

  v33 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingNoAutoRouteMac != v33)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3D9C();
    }

    self->_prefSmartRoutingNoAutoRouteMac = v33;
  }

  v34 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingForceRejectLePipe != v34)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3DF4();
    }

    self->_prefSmartRoutingForceRejectLePipe = v34;
  }

  v35 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingForceTipiv2 != v35)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3E4C();
    }

    self->_prefSmartRoutingForceTipiv2 = v35;
  }

  v36 = _os_feature_enabled_impl();
  prefSmartRoutingPreemptiveConnectedBanner = self->_prefSmartRoutingPreemptiveConnectedBanner;
  if (prefSmartRoutingPreemptiveConnectedBanner != v36)
  {
    v38 = v36;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1)
      {
LABEL_126:
        *&v39 = COERCE_DOUBLE("no");
        if (prefSmartRoutingPreemptiveConnectedBanner)
        {
          *&v40 = COERCE_DOUBLE("yes");
        }

        else
        {
          *&v40 = COERCE_DOUBLE("no");
        }

        if (v38)
        {
          *&v39 = COERCE_DOUBLE("yes");
        }

        v59 = *&v40;
        v60 = *&v39;
        LogPrintF();
        goto LABEL_133;
      }

      if (_LogCategory_Initialize())
      {
        LOBYTE(prefSmartRoutingPreemptiveConnectedBanner) = self->_prefSmartRoutingPreemptiveConnectedBanner;
        goto LABEL_126;
      }
    }

LABEL_133:
    self->_prefSmartRoutingPreemptiveConnectedBanner = v38;
  }

  v41 = (_os_feature_enabled_impl() & 1) != 0 || CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingMacAutomaticSwitching != v41)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3EA4();
    }

    self->_prefSmartRoutingMacAutomaticSwitching = v41;
  }

  v42 = (_os_feature_enabled_impl() & 1) != 0 || CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingMacMxAudioScore != v42)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3EFC();
    }

    self->_prefSmartRoutingMacMxAudioScore = v42;
  }

  v43 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingForcedHijackv2 != v43)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3F54();
    }

    self->_prefSmartRoutingForcedHijackv2 = v43;
  }

  *&v44 = COERCE_DOUBLE(CFPrefs_GetInt64());
  prefSmartRoutingWatchTriangleMagnet = self->_prefSmartRoutingWatchTriangleMagnet;
  if (v44 != prefSmartRoutingWatchTriangleMagnet)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_160;
        }

        prefSmartRoutingWatchTriangleMagnet = self->_prefSmartRoutingWatchTriangleMagnet;
      }

      v59 = *&prefSmartRoutingWatchTriangleMagnet;
      v60 = *&v44;
      LogPrintF();
    }

LABEL_160:
    self->_prefSmartRoutingWatchTriangleMagnet = v44;
  }

  CFPrefs_GetDouble();
  v47 = v46;
  prefConnectionDelaySeconds = self->_prefConnectionDelaySeconds;
  if (v47 == prefConnectionDelaySeconds)
  {
    goto LABEL_167;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_166;
      }

      prefConnectionDelaySeconds = self->_prefConnectionDelaySeconds;
    }

    v59 = prefConnectionDelaySeconds;
    v60 = v47;
    LogPrintF();
  }

LABEL_166:
  self->_prefConnectionDelaySeconds = v47;
LABEL_167:
  v49 = _os_feature_enabled_impl();
  if (self->_prefSmartRoutingPrioritizedCall != v49)
  {
    v50 = v49;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E3FAC();
    }

    self->_prefSmartRoutingPrioritizedCall = v50;
  }

  v51 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingPrioritizedCallMuteMac != v51)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E4004();
    }

    self->_prefSmartRoutingPrioritizedCallMuteMac = v51;
  }

  v52 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingInUseBanner != v52)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E405C();
    }

    self->_prefSmartRoutingInUseBanner = v52;
  }

  *&v53 = COERCE_DOUBLE(CFPrefs_GetInt64());
  prefSmartRoutingInUseBannerTimeout = self->_prefSmartRoutingInUseBannerTimeout;
  if (v53 != prefSmartRoutingInUseBannerTimeout)
  {
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_187;
        }

        prefSmartRoutingInUseBannerTimeout = self->_prefSmartRoutingInUseBannerTimeout;
      }

      v59 = *&prefSmartRoutingInUseBannerTimeout;
      v60 = *&v53;
      LogPrintF();
    }

LABEL_187:
    self->_prefSmartRoutingInUseBannerTimeout = v53;
  }

  v55 = _os_feature_enabled_impl();
  if (self->_prefSmartRoutingUSBAudioDevice != v55)
  {
    v56 = v55;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E40B4();
    }

    self->_prefSmartRoutingUSBAudioDevice = v56;
  }

  v57 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingConnectionManager != v57)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E410C();
    }

    self->_prefSmartRoutingConnectionManager = v57;
  }

  v58 = CFPrefs_GetInt64() != 0;
  if (self->_prefSmartRoutingNowPlayingTemporaryOverride != v58)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E4164();
    }

    self->_prefSmartRoutingNowPlayingTemporaryOverride = v58;
  }

  [(BTSmartRoutingDaemon *)self _update:*&v59];
}

- (void)_sigTermReceived
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E41BC();
  }

  [(BTSmartRoutingDaemon *)self _stopAudioStateSnapshotTimer:1];

  xpc_transaction_exit_clean();
}

- (id)_getEligibleNearbyWxDevice:(id *)device companionNeedsToBeIdle:(BOOL)idle isStreamingFromCompanion:(BOOL *)companion
{
  eligibleHeadset = self->_eligibleHeadset;
  self->_eligibleHeadset = 0;

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100003918;
  v19 = sub_100003838;
  v20 = 0;
  wxDevices = self->_wxDevices;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1001DCC54;
  v13[3] = &unk_1002B7E40;
  v13[4] = self;
  v13[5] = &v15;
  v13[6] = companion;
  idleCopy = idle;
  [(NSMutableDictionary *)wxDevices enumerateKeysAndObjectsUsingBlock:v13];
  *device = v16[5];
  v11 = self->_eligibleHeadset;
  _Block_object_dispose(&v15, 8);

  return v11;
}

- (void)_generateEvaluatorError:(id)error errorReason:(id *)reason
{
  errorCopy = error;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4230();
  }

  v6 = [NSError alloc];
  v8 = @"Error Reason";
  v9 = errorCopy;
  v7 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  *reason = [v6 initWithDomain:@"BTSmartRoutingDaemon" code:0 userInfo:v7];
}

- (void)areHeadphonesNearbyAndEligibleToPlay:(id)play
{
  playCopy = play;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004175C;
  v7[3] = &unk_1002B6948;
  v7[4] = self;
  v8 = playCopy;
  v6 = playCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_evaluateNearbyHRMDevice:(id)device
{
  deviceCopy = device;
  v4 = +[SRConnectionManager sharedSRConnectionManager];
  v5 = [v4 evaluateNearbyHRMDeviceForConnection:deviceCopy];

  if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  sub_1001E42DC(deviceCopy);
  if (v5)
  {
LABEL_5:
    self->_forcedHRMConnectionInProgress = 1;
    [(BTSmartRoutingDaemon *)self _initializeConnectionToDevice:deviceCopy];
  }

LABEL_6:
}

- (void)_connectToHeadphone:(id)headphone
{
  headphoneCopy = headphone;
  btAddress = [headphoneCopy btAddress];
  nearbyWxDevice = [headphoneCopy nearbyWxDevice];
  identifier = [nearbyWxDevice identifier];
  uUIDString = [identifier UUIDString];

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4370(headphoneCopy);
  }

  nearbyWxDevice2 = [headphoneCopy nearbyWxDevice];
  connectDevice = self->_connectDevice;
  self->_connectDevice = nearbyWxDevice2;

  v11 = objc_alloc_init(CBDevice);
  [v11 setIdentifier:btAddress];
  [headphoneCopy setConnectTick:mach_absolute_time()];
  v12 = mach_absolute_time();
  v13 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
  [v13 setLastConnectionTicks:v12];

  v14 = objc_alloc_init(CBConnection);
  objc_storeStrong(&self->_connectSession, v14);
  [v14 setConnectionFlags:2];
  evalWxMap = [(SRSourceDevice *)self->_sourceDevice evalWxMap];

  if (!evalWxMap)
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    [(SRSourceDevice *)self->_sourceDevice setEvalWxMap:v16];
  }

  evalWxMap2 = [(SRSourceDevice *)self->_sourceDevice evalWxMap];
  v18 = [evalWxMap2 objectForKeyedSubscript:btAddress];

  if (!v18)
  {
    v18 = objc_alloc_init(SRWxInfo);
  }

  v19 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
  -[SRWxInfo setLastConnectTicks:](v18, "setLastConnectTicks:", [v19 lastConnectionTicks]);

  evalWxMap3 = [(SRSourceDevice *)self->_sourceDevice evalWxMap];
  [evalWxMap3 setObject:v18 forKeyedSubscript:btAddress];

  v21 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:btAddress];
  otherTipiDeviceBTAddress = [v21 otherTipiDeviceBTAddress];

  if (otherTipiDeviceBTAddress)
  {
    [v14 setConnectionFlags:{objc_msgSend(v14, "connectionFlags") | 8}];
  }

  [v14 setServiceFlags:0xFFFFFFFFLL];
  [v14 setPeerDevice:v11];
  [v14 setDispatchQueue:self->_dispatchQueue];
  [v14 setConnectTimeoutSeconds:20.0];
  v32[0] = 0;
  v32[1] = v32;
  v32[2] = 0x3032000000;
  v32[3] = sub_100003918;
  v32[4] = sub_100003838;
  identifier2 = [v21 identifier];
  v23 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  objc_storeStrong(&self->_connectDispatchTimer, v23);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100042084;
  handler[3] = &unk_1002B7E90;
  handler[4] = v14;
  handler[5] = self;
  v24 = btAddress;
  v29 = v24;
  v31 = v32;
  v25 = v18;
  v30 = v25;
  dispatch_source_set_event_handler(v23, handler);
  prefConnectionDelaySeconds = self->_prefConnectionDelaySeconds;
  CUDispatchTimerSet();
  dispatch_activate(v23);
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v27 = self->_prefConnectionDelaySeconds;
    LogPrintF();
  }

  self->_prefSpeakRouteConnection = 1;

  _Block_object_dispose(v32, 8);
}

- (void)_initializeConnectionToDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy tipiConnectType] == 7 || objc_msgSend(deviceCopy, "tipiConnectType") == 4 || objc_msgSend(deviceCopy, "tipiConnectType") == 3 || objc_msgSend(deviceCopy, "tipiConnectType") == 2 || objc_msgSend(deviceCopy, "tipiConnectType") == 10)
  {
    tipiConnectType = [deviceCopy tipiConnectType];
    if (tipiConnectType == 3)
    {
      [(SRLEPipe *)self->_smartRoutingPipe invalidate];
      btAddress = [deviceCopy btAddress];
      [(BTSmartRoutingDaemon *)self _setPhase1ConnectConfig:btAddress andType:3];

      v6 = 2;
    }

    else
    {
      if ([deviceCopy tipiConnectType] == 2)
      {
        self->_forcedConnection = 1;
      }

      v6 = 3;
    }

    self->_tipiElectionInProgress = 1;
    nearbyWxDevice = [deviceCopy nearbyWxDevice];
    eligibleHeadset = self->_eligibleHeadset;
    self->_eligibleHeadset = nearbyWxDevice;

    nearbyWxDevice2 = [deviceCopy nearbyWxDevice];
    LOBYTE(v13) = 1;
    [(BTSmartRoutingDaemon *)self _smartRoutingAddWxMapDevice:nearbyWxDevice2 routingAction:v6 otherAddress:0 otherName:0 otherSourceVersion:0 isRoutingInitialized:tipiConnectType == 3 newWx:v13];

    [(BTSmartRoutingDaemon *)self _showPreemptiveConnectedBanner:deviceCopy];
    [(BTSmartRoutingDaemon *)self _connectToHeadphone:deviceCopy];
  }

  else if ([deviceCopy tipiConnectType] == 6)
  {
    self->_tipiElectionInProgress = 1;
    nearbyWxDevice3 = [deviceCopy nearbyWxDevice];
    v11 = self->_eligibleHeadset;
    self->_eligibleHeadset = nearbyWxDevice3;

    nearbyWxDevice4 = [deviceCopy nearbyWxDevice];
    LOBYTE(v13) = 1;
    [(BTSmartRoutingDaemon *)self _smartRoutingAddWxMapDevice:nearbyWxDevice4 routingAction:3 otherAddress:0 otherName:0 otherSourceVersion:0 isRoutingInitialized:1 newWx:v13];

    [(BTSmartRoutingDaemon *)self _startLEPipeConnect:deviceCopy];
  }
}

- (void)_startLEPipeConnect:(id)connect
{
  connectCopy = connect;
  nearbyLEPipeSourceDevice = [connectCopy nearbyLEPipeSourceDevice];
  idsIdentifier = [nearbyLEPipeSourceDevice idsIdentifier];
  btAddress = [connectCopy btAddress];
  smartRoutingPipe = self->_smartRoutingPipe;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100042650;
  v12[3] = &unk_1002B7EB8;
  v13 = nearbyLEPipeSourceDevice;
  selfCopy = self;
  v15 = connectCopy;
  v16 = btAddress;
  v9 = btAddress;
  v10 = connectCopy;
  v11 = nearbyLEPipeSourceDevice;
  [(SRLEPipe *)smartRoutingPipe pipeSendRouteRequestToSFDevice:idsIdentifier andWxHeadset:v9 newPipe:1 connectionResult:0 completion:v12];
}

- (void)_showPreemptiveConnectedBanner:(id)banner
{
  bannerCopy = banner;
  btAddress = [bannerCopy btAddress];
  if (self->_prefSmartRoutingPreemptiveConnectedBanner)
  {
    v5 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:btAddress];
    if (v5)
    {
      v6 = v5;
      v7 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:btAddress];
      deviceName = [v7 deviceName];

      if (!deviceName)
      {
        v9 = +[CloudXPCService sharedInstance];
        deviceManager = [v9 deviceManager];
        v11 = [deviceManager fetchDeviceSyncWithAddress:btAddress];
        nickname = [v11 nickname];
        v13 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:btAddress];
        [v13 setDeviceName:nickname];
      }
    }

    nearbyWxDevice = [bannerCopy nearbyWxDevice];
    identifier = [nearbyWxDevice identifier];
    uUIDString = [identifier UUIDString];

    v17 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
    audioState = [v17 audioState];

    v19 = [(BTSmartRoutingDaemon *)self _inEarNearbyCheck:btAddress];
    v20 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
    if ([(BTSmartRoutingDaemon *)self _showPreemptiveBannerIfNeeded:v20 inEarState:v19 audioState:audioState wxAddress:btAddress]&& dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E4610();
    }
  }
}

- (void)_evaluatorEnsureStarted
{
  if (!self->_evaluatorCoalescer)
  {
    v10[6] = v5;
    v10[7] = v4;
    v10[12] = v2;
    v10[13] = v3;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E462C();
    }

    v7 = objc_alloc_init(CUCoalescer);
    evaluatorCoalescer = self->_evaluatorCoalescer;
    self->_evaluatorCoalescer = v7;
    v9 = v7;

    [(CUCoalescer *)v9 setDispatchQueue:self->_dispatchQueue];
    [(CUCoalescer *)v9 setMinDelay:0.05];
    [(CUCoalescer *)v9 setMaxDelay:0.1];
    [(CUCoalescer *)v9 setLeeway:0.05];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100042D08;
    v10[3] = &unk_1002B6D18;
    v10[4] = v9;
    v10[5] = self;
    [(CUCoalescer *)v9 setActionHandler:v10];
  }
}

- (void)_evaluatorRun
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4664();
  }

  bluetoothState = [(CBDiscovery *)self->_connectedDiscovery bluetoothState];
  if (bluetoothState)
  {
    v4 = bluetoothState == 5;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = bluetoothState;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E47C4(v5);
    }

    [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.PreemptivePortDisconnected"];
    connectedDevices = self->_connectedDevices;
    if (connectedDevices)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      allValues = [(NSMutableDictionary *)connectedDevices allValues];
      v10 = [allValues countByEnumeratingWithState:&v58 objects:v62 count:16];
      if (v10)
      {
        v11 = *v59;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v59 != v11)
            {
              objc_enumerationMutation(allValues);
            }

            [(BTSmartRoutingDaemon *)self _connectedDeviceLost:*(*(&v58 + 1) + 8 * i)];
          }

          v10 = [allValues countByEnumeratingWithState:&v58 objects:v62 count:16];
        }

        while (v10);
      }

      v13 = self->_connectedDevices;
      self->_connectedDevices = 0;
    }

    disconnectTicksMap = self->_disconnectTicksMap;
    if (disconnectTicksMap)
    {
      [(NSMutableDictionary *)disconnectTicksMap removeAllObjects];
      v15 = self->_disconnectTicksMap;
    }

    else
    {
      v15 = 0;
    }

    self->_disconnectTicksMap = 0;

    if (self->_connectTicks)
    {
      self->_connectTicks = 0;
    }

    if (self->_tipiSetupTicks)
    {
      self->_tipiSetupTicks = 0;
    }

    uiSmartRoutingBanner = self->_uiSmartRoutingBanner;
    if (uiSmartRoutingBanner)
    {
      [(BTBannerUISession *)uiSmartRoutingBanner invalidate];
      v17 = self->_uiSmartRoutingBanner;
      self->_uiSmartRoutingBanner = 0;
    }

    if (self->_tipiElectionInProgress)
    {
      self->_tipiElectionInProgress = 0;
    }

    [(BTSmartRoutingDaemon *)self _setTipiElectionReceivedLePipe:&stru_1002C1358];
    tipiHealingTimer = self->_tipiHealingTimer;
    if (tipiHealingTimer)
    {
      v19 = tipiHealingTimer;
      dispatch_source_cancel(v19);
      v20 = self->_tipiHealingTimer;
      self->_tipiHealingTimer = 0;
    }

    smartRoutingManualDisconnectionList = self->_smartRoutingManualDisconnectionList;
    if (smartRoutingManualDisconnectionList)
    {
      [(NSMutableArray *)smartRoutingManualDisconnectionList removeAllObjects];
      v22 = self->_smartRoutingManualDisconnectionList;
    }

    else
    {
      v22 = 0;
    }

    self->_smartRoutingManualDisconnectionList = 0;

    srBudswapDeviceMap = self->_srBudswapDeviceMap;
    if (srBudswapDeviceMap)
    {
      [(NSMutableDictionary *)srBudswapDeviceMap removeAllObjects];
      v24 = self->_srBudswapDeviceMap;
    }

    else
    {
      v24 = 0;
    }

    self->_srBudswapDeviceMap = 0;

    smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
    if (smartRoutingWxDeviceMap)
    {
      [(NSMutableDictionary *)smartRoutingWxDeviceMap removeAllObjects];
      v26 = self->_smartRoutingWxDeviceMap;
    }

    else
    {
      v26 = 0;
    }

    self->_smartRoutingWxDeviceMap = 0;

    smartRoutingBackOffMap = self->_smartRoutingBackOffMap;
    if (smartRoutingBackOffMap)
    {
      [(NSMutableDictionary *)smartRoutingBackOffMap removeAllObjects];
      v28 = self->_smartRoutingBackOffMap;
    }

    else
    {
      v28 = 0;
    }

    self->_smartRoutingBackOffMap = 0;

    isFirstConnectionAfterSREnable = [(SRSourceDevice *)self->_sourceDevice isFirstConnectionAfterSREnable];

    if (isFirstConnectionAfterSREnable)
    {
      isFirstConnectionAfterSREnable2 = [(SRSourceDevice *)self->_sourceDevice isFirstConnectionAfterSREnable];
      [isFirstConnectionAfterSREnable2 removeAllObjects];
    }

    [(SRSourceDevice *)self->_sourceDevice setIsFirstConnectionAfterSREnable:0];
    highActivityLevelTimer = self->_highActivityLevelTimer;
    if (highActivityLevelTimer)
    {
      v32 = highActivityLevelTimer;
      dispatch_source_cancel(v32);
      v33 = self->_highActivityLevelTimer;
      self->_highActivityLevelTimer = 0;
    }

    phoneOwnershipTimer = self->_phoneOwnershipTimer;
    if (phoneOwnershipTimer)
    {
      v35 = phoneOwnershipTimer;
      dispatch_source_cancel(v35);
      v36 = self->_phoneOwnershipTimer;
      self->_phoneOwnershipTimer = 0;
    }

    idleActivityScoreTimer = self->_idleActivityScoreTimer;
    if (idleActivityScoreTimer)
    {
      v38 = idleActivityScoreTimer;
      dispatch_source_cancel(v38);
      v39 = self->_idleActivityScoreTimer;
      self->_idleActivityScoreTimer = 0;
    }

    phase1ConnectConfig = self->_phase1ConnectConfig;
    self->_phase1ConnectConfig = 0;

    [(SRSourceDevice *)self->_sourceDevice setAudioRoute:1];
    if (v5 > 0xA)
    {
      v41 = "?";
    }

    else
    {
      v41 = off_1002B8BF8[v5];
    }

    v42 = [NSString stringWithUTF8String:v41];
    v43 = [NSString stringWithFormat:@"Bluetooth unsupported state: %@", v42];
    [(BTSmartRoutingDaemon *)self _logEvalError:v43];

    return;
  }

  if (!self->_prefSmartRoutingEnabledPhase3)
  {
    return;
  }

  if (!self->_connectSession)
  {
    if (self->_connectTicks)
    {
      mach_absolute_time();
      connectTicks = self->_connectTicks;
      if (UpTicksToSeconds() <= 0x1DF)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E477C();
        }

        v44 = @"Too soon since last connection";
        goto LABEL_74;
      }
    }

    v52 = 0;
    v53 = &v52;
    v54 = 0x3032000000;
    v55 = sub_100003918;
    v56 = sub_100003838;
    v57 = 0;
    self->_connected3rdPartyDevice = 0;
    v7 = self->_connectedDevices;
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = sub_100043540;
    v51[3] = &unk_1002B7EE0;
    v51[4] = self;
    v51[5] = &v52;
    [(NSMutableDictionary *)v7 enumerateKeysAndObjectsUsingBlock:v51];
    if (self->_connected3rdPartyDevice && dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v53[5] && dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if ([(CUSystemMonitor *)self->_callMonitor connectedCallCount]>= 1 && GestaltGetDeviceClass() == 1)
    {
      if (([(CUSystemMonitor *)self->_callMonitor callFlags]== 1 || [(CUSystemMonitor *)self->_callMonitor callFlags]== 2) && !self->_isBuiltInReceiverRoute && !self->_isSpeakerRoute)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          callFlags = [(CUSystemMonitor *)self->_callMonitor callFlags];
          v46 = "FTaudio";
          if (callFlags == 1)
          {
            v46 = "telephony call";
          }

          v50 = v46;
          LogPrintF();
        }

        callFlags2 = [(CUSystemMonitor *)self->_callMonitor callFlags];
        v48 = @"FTaudio";
        if (callFlags2 == 1)
        {
          v48 = @"telephony call";
        }

        v49 = [NSString stringWithFormat:@"current route not builtInReceiver or speakeroniPhone during %@", v48];
        [(BTSmartRoutingDaemon *)self _logEvalError:v49];
      }

      else
      {
        if (([(CUSystemMonitor *)self->_callMonitor callFlags]& 4) == 0 || self->_isSpeakerRoute)
        {
          goto LABEL_94;
        }

        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        [(BTSmartRoutingDaemon *)self _logEvalError:@"Current route not speaker during FT Video"];
      }

      _Block_object_dispose(&v52, 8);

      return;
    }

LABEL_94:
    [(BTSmartRoutingDaemon *)self _evaluatorRunTipiElection:self->_wxDevices nearbyInfoDevicesMap:self->_nearbyInfoDevices localScore:self->_score];
    _Block_object_dispose(&v52, 8);

    return;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4738(self);
  }

  v44 = @"Already connecting to headset";
LABEL_74:

  [(BTSmartRoutingDaemon *)self _logEvalError:v44];
}

- (void)_evaluatorRunInUseBanner:(id)banner
{
  bannerCopy = banner;
  v74 = bannerCopy;
  if (!bannerCopy)
  {
    bannerCopy = [(BTSmartRoutingDaemon *)self _getActiveNearbyWxAdress];
  }

  if (self->_prefSmartRoutingInUseBanner)
  {
    if (bannerCopy)
    {
      if (!self->_effectiveScreenLocked)
      {
        v5 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:bannerCopy];
        inUseBannerBackoffReason = [v5 inUseBannerBackoffReason];

        if (inUseBannerBackoffReason)
        {
          sub_1001E4888(v5);
          goto LABEL_95;
        }

        if ([v5 inUseBannerShown])
        {
          sub_1001E4B10();
          goto LABEL_95;
        }

        if ([v5 connectionState])
        {
          sub_1001E4930();
          goto LABEL_95;
        }

        if (![v5 nearbyConnectedSourceCount])
        {
          sub_1001E4AB0();
          goto LABEL_95;
        }

        if ([v5 nearbyIsMeLastRoute])
        {
          sub_1001E4A50();
          goto LABEL_95;
        }

        if (![(BTSmartRoutingDaemon *)self _supportsTipi:bannerCopy])
        {
          sub_1001E4990();
          goto LABEL_95;
        }

        if ([v5 isUSBPlugIn])
        {
          sub_1001E49F0();
          goto LABEL_95;
        }

        nearbyPrevInEar = [v5 nearbyPrevInEar];
        nearbyInEar = [v5 nearbyInEar];
        nearbyLastRouteHost = [v5 nearbyLastRouteHost];
        if (nearbyLastRouteHost)
        {
          v9 = [(BTSmartRoutingDaemon *)self _isDevicePairedCheck:nearbyLastRouteHost];
        }

        else
        {
          v9 = 0;
        }

        nearbyiCloudSignIn = [v5 nearbyiCloudSignIn];
        nearbyName = [v5 nearbyName];
        nearbyProductID = [v5 nearbyProductID];
        nearbyOutOfCaseTime = [v5 nearbyOutOfCaseTime];
        v67 = nearbyiCloudSignIn;
        v68 = v9;
        v12 = v9 | nearbyiCloudSignIn;
        mach_absolute_time();
        [(SRSourceDevice *)self->_sourceDevice callStartTicks];
        UpTicksToSecondsF();
        v14 = v13;
        mach_absolute_time();
        [v5 nearbyUSBPluggedInTick];
        v15 = UpTicksToSeconds();
        mach_absolute_time();
        v16 = [(NSMutableDictionary *)self->_disconnectTicksMap objectForKeyedSubscript:bannerCopy];
        [v16 unsignedLongLongValue];
        v17 = UpTicksToSeconds();

        nearbyUSBPluggedIn = [v5 nearbyUSBPluggedIn];
        v69 = v15;
        v21 = v15 > 7 || v17 > 7 || nearbyUSBPluggedIn != 1;
        v73 = v21;
        callMap = [(SRSourceDevice *)self->_sourceDevice callMap];
        v23 = [callMap count];

        if ((v12 & 1) != 0 || [v5 nearbyStreamState] || nearbyInEar != 1)
        {
          v24 = nearbyProductID;
          v26 = nearbyProductID != 8223 || nearbyInEar != 1;
          if (!v26 && !v73 && v23)
          {
            v27 = @"B515cUSBConnected-call";
LABEL_53:
            v72 = v27;
            v28 = 1;
            goto LABEL_54;
          }

          if ((v12 & (v23 == 0)) != 0)
          {
LABEL_94:

LABEL_95:
            goto LABEL_96;
          }

          v28 = 0;
          v72 = 0;
LABEL_54:
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            v66 = [(BTSmartRoutingDaemon *)self _getWxChipVersion:v24];
            if (v28)
            {
              v30 = "yes";
            }

            else
            {
              v30 = "no";
            }

            v64 = v30;
            bannerTrigger = [(SRStats *)self->_stats bannerTrigger];
            if (nearbyInEar > 7)
            {
              v31 = "?";
            }

            else
            {
              v31 = off_1002B8E70[nearbyInEar];
            }

            v63 = v31;
            if (nearbyPrevInEar > 7)
            {
              v32 = "?";
            }

            else
            {
              v32 = off_1002B8E70[nearbyPrevInEar];
            }

            nearbyStreamState = [v5 nearbyStreamState];
            if (nearbyStreamState > 3)
            {
              v34 = "?";
            }

            else
            {
              v34 = off_1002B8ED0[nearbyStreamState];
            }

            if (v12)
            {
              v35 = "no";
            }

            else
            {
              v35 = "yes";
            }

            if (v68)
            {
              v36 = "yes";
            }

            else
            {
              v36 = "no";
            }

            if (v67)
            {
              v37 = "yes";
            }

            else
            {
              v37 = "no";
            }

            if ((nearbyOutOfCaseTime & 0xFC) != 0)
            {
              v38 = "?";
            }

            else
            {
              v38 = off_1002B90D8[nearbyOutOfCaseTime & 3];
            }

            if (v73)
            {
              v39 = "no";
            }

            else
            {
              v39 = "yes";
            }

            if (v23)
            {
              v40 = "yes";
            }

            else
            {
              v40 = "no";
            }

            v61 = v39;
            v62 = v40;
            v60 = v69;
            v59 = v14;
            v57 = v38;
            prefSmartRoutingInUseBannerTimeout = self->_prefSmartRoutingInUseBannerTimeout;
            v56 = v37;
            v24 = nearbyProductID;
            v55 = nearbyProductID;
            v53 = v36;
            v54 = nearbyName;
            v51 = v34;
            v52 = v35;
            v49 = v63;
            v50 = v32;
            v47 = v64;
            v48 = bannerTrigger;
            v45 = v66;
            v46 = bannerCopy;
            LogPrintF();

            if ((v28 & 1) == 0)
            {
              goto LABEL_94;
            }
          }

          else if (!v28)
          {
            goto LABEL_94;
          }

          if ([(__CFString *)v72 isEqualToString:@"B515cUSBConnected-call", v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, prefSmartRoutingInUseBannerTimeout, *&v59, v60, v61, v62])
          {
            nearbyLastRouteHost2 = [v5 nearbyLastRouteHost];
            v42 = [(BTSmartRoutingDaemon *)self _getIDSDeviceFromWxLastConnectedHost:nearbyLastRouteHost2];

            modelIdentifier = [v42 modelIdentifier];
            v44 = [(BTSmartRoutingDaemon *)self _sourceModelNameFromModelIdentifier:modelIdentifier];
          }

          else
          {
            v44 = 0;
          }

          [(BTSmartRoutingDaemon *)self _smartRoutingShowBanner:3 withDevice:nearbyName andDeviceAddress:bannerCopy andProductID:v24 andCentralContentItemTxt:v44 andTimeout:0 andDeviceType:20.0];
          [v5 _setInUseBannerShown:1];
          [(SRStats *)self->_stats setBannerTrigger:v72];

          goto LABEL_94;
        }

        v28 = 0;
        v72 = 0;
        v24 = nearbyProductID;
        v29 = nearbyProductID - 8202;
        if ((nearbyProductID - 8202) <= 0x25)
        {
          if (((1 << v29) & 0x200020033FLL) != 0)
          {
            if (nearbyPrevInEar != 2)
            {
              v72 = 0;
              v28 = 0;
              goto LABEL_48;
            }
          }

          else
          {
            if (((1 << v29) & 0x645A8400) == 0)
            {
              goto LABEL_48;
            }

            if (self->_prefSmartRoutingInUseBannerTimeout <= nearbyOutOfCaseTime)
            {
              v28 = 0;
              v72 = 0;
              if (nearbyProductID != 8223 || nearbyPrevInEar != 2)
              {
                goto LABEL_48;
              }
            }
          }

          v28 = 1;
          v72 = @"3rdPartyHeadset-Unlock";
        }

LABEL_48:
        if (v29 <= 0x25 && (((1 << v29) & 0x200020033FLL) != 0 || ((1 << v29) & 0x645A8400) != 0) && v14 < 1.5)
        {
          v27 = @"3rdPartyHeadset-PhoneCall";
          goto LABEL_53;
        }

        goto LABEL_54;
      }

      sub_1001E4B70();
    }

    else
    {
      sub_1001E4BD0();
    }
  }

  else
  {
    sub_1001E4828();
  }

LABEL_96:
}

- (void)_evaluatorRunTipiElection:(id)election nearbyInfoDevicesMap:(id)map localScore:(int)score
{
  electionCopy = election;
  mapCopy = map;
  if (score > 1 || self->_playbackStart || [(NSNumber *)self->_localDeviceAudioCategory intValue]> 300)
  {
    if (self->_tipiElectionInProgress && !self->_callConnected && !self->_playbackStart)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E4C4C();
      }

      v10 = @"Tipi election already in progress back off";
      goto LABEL_36;
    }

    self->_tipiElectionThroughLEPipe = 0;
    v64[0] = 0;
    v64[1] = v64;
    v64[2] = 0x2020000000;
    v65 = 0;
    v62[0] = 0;
    v62[1] = v62;
    v62[2] = 0x3032000000;
    v62[3] = sub_100003918;
    v62[4] = sub_100003838;
    v63 = 0;
    v60[0] = _NSConcreteStackBlock;
    v60[1] = 3221225472;
    v60[2] = sub_1000446C8;
    v60[3] = &unk_1002B7F08;
    scoreCopy = score;
    v60[4] = v64;
    v60[5] = v62;
    [mapCopy enumerateKeysAndObjectsUsingBlock:v60];
    v54 = 0;
    v55 = &v54;
    v56 = 0x3032000000;
    v57 = sub_100003918;
    v58 = sub_100003838;
    v59 = 0;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2020000000;
    v53 = 0;
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100044828;
    v48[3] = &unk_1002B7F58;
    scoreCopy2 = score;
    v48[4] = self;
    v48[5] = &v54;
    v48[6] = v64;
    v48[7] = &v50;
    [electionCopy enumerateKeysAndObjectsUsingBlock:v48];
    v11 = v55;
    if (v55[5] && self->_tipiElectionPhase1)
    {
      *(v51 + 24) = 1;
    }

    self->_tipiElectionPhase1 = 0;
    v12 = v11[5];
    if (!v12)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      self->_callConnected = 0;
      self->_playbackStart = 0;
      [(BTSmartRoutingDaemon *)self _logEvalError:@"No eligible headset"];
      goto LABEL_87;
    }

    if (self->_eligibleHeadsetTicks)
    {
      mach_absolute_time();
      eligibleHeadsetTicks = self->_eligibleHeadsetTicks;
      if (UpTicksToSeconds() < 0x78)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        goto LABEL_87;
      }

      v12 = v55[5];
    }

    bleDevice = [v12 bleDevice];
    bluetoothAddress = [bleDevice bluetoothAddress];

    if ([bluetoothAddress length] == 6)
    {
      bytes = [bluetoothAddress bytes];
      v16 = NSPrintF();
    }

    else
    {
      v16 = 0;
    }

    phase1ConnectConfig = self->_phase1ConnectConfig;
    if (phase1ConnectConfig && dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_43;
        }

        phase1ConnectConfig = self->_phase1ConnectConfig;
      }

      address = [(SRConnectConfig *)phase1ConnectConfig address];
      type = [(SRConnectConfig *)self->_phase1ConnectConfig type];
      if (type > 0xA)
      {
        v20 = "?";
      }

      else
      {
        v20 = off_1002B8FD0[type];
      }

      bytes = address;
      v46 = v20;
      LogPrintF();
    }

LABEL_43:
    v21 = v55[5];
    if (self->_tipiElectionThroughLEPipe)
    {
      if (v21)
      {
        if (!self->_phase1ConnectConfig)
        {
          idsIdentifier = [(SFDevice *)self->_lePipeDevice idsIdentifier];
          if (v16)
          {
            v23 = [(NSMutableDictionary *)self->_smartRoutingBackOffMap objectForKeyedSubscript:v16];
            v24 = [v23 containsString:idsIdentifier];

            if (!v24)
            {
              self->_tipiElectionInProgress = 1;
              if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
              {
                bytes = v55[5];
                LogPrintF();
              }

              objc_storeStrong(&self->_eligibleHeadset, v55[5]);
              LOBYTE(bytes) = 1;
              [(BTSmartRoutingDaemon *)self _smartRoutingAddWxMapDevice:self->_eligibleHeadset routingAction:3 otherAddress:0 otherName:0 otherSourceVersion:0 isRoutingInitialized:1 newWx:bytes];
              [(SRStats *)self->_stats setPipeStartTime:mach_absolute_time()];
              smartRoutingPipe = self->_smartRoutingPipe;
              v47[0] = _NSConcreteStackBlock;
              v47[1] = 3221225472;
              v47[2] = sub_100046308;
              v47[3] = &unk_1002B7F80;
              v47[4] = self;
              v47[5] = v16;
              v47[6] = &v54;
              [(SRLEPipe *)smartRoutingPipe pipeSendRouteRequestToSFDevice:idsIdentifier andWxHeadset:v16 newPipe:1 connectionResult:0 completion:v47];
              goto LABEL_97;
            }

            if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
            {
LABEL_97:

              goto LABEL_86;
            }
          }

          else if (dword_1002F6778 > 90 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_97;
          }

          LogPrintF();
          goto LABEL_97;
        }

LABEL_52:
        if (dword_1002F6778 <= 30)
        {
          if (dword_1002F6778 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_56;
            }

            v21 = v55[5];
          }

          bytes = v21;
          LogPrintF();
        }

LABEL_56:
        [(SRStats *)self->_stats setPipeStartTime:0, bytes, v46];
        objc_storeStrong(&self->_eligibleHeadset, v55[5]);
        self->_tipiElectionInProgress = 1;
        _isOnDemandConnectInProgress = [(BTSmartRoutingDaemon *)self _isOnDemandConnectInProgress];
        if (_isOnDemandConnectInProgress)
        {
          [(SRLEPipe *)self->_smartRoutingPipe invalidate];
          v26 = 2;
        }

        else
        {
          v26 = 3;
        }

        LOBYTE(v45) = 1;
        [(BTSmartRoutingDaemon *)self _smartRoutingAddWxMapDevice:self->_eligibleHeadset routingAction:v26 otherAddress:0 otherName:0 otherSourceVersion:0 isRoutingInitialized:_isOnDemandConnectInProgress newWx:v45];
        if (self->_forcedConnection)
        {
          if (v16)
          {
            v27 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v16];

            if (v27)
            {
              if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              v28 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v16];
              [v28 setTipiHealingBackoff:1];
            }
          }
        }

        if (self->_prefSmartRoutingPreemptiveConnectedBanner)
        {
          v29 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v16];
          if (v29)
          {
            v30 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v16];
            deviceName = [v30 deviceName];

            if (!deviceName)
            {
              v32 = +[CloudXPCService sharedInstance];
              deviceManager = [v32 deviceManager];
              v34 = [deviceManager fetchDeviceSyncWithAddress:v16];
              nickname = [v34 nickname];
              v36 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v16];
              [v36 setDeviceName:nickname];
            }
          }

          identifier = [v55[5] identifier];
          uUIDString = [identifier UUIDString];

          v39 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
          audioState = [v39 audioState];

          v41 = [(BTSmartRoutingDaemon *)self _inEarNearbyCheck:v16];
          v42 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
          if ([(BTSmartRoutingDaemon *)self _showPreemptiveBannerIfNeeded:v42 inEarState:v41 audioState:audioState wxAddress:v16]&& dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }

        [(BTSmartRoutingDaemon *)self _smartRoutingConnectToEligibleHeadset:self->_eligibleHeadset];
      }
    }

    else if (v21)
    {
      goto LABEL_52;
    }

LABEL_86:

LABEL_87:
    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(&v54, 8);

    _Block_object_dispose(v62, 8);
    _Block_object_dispose(v64, 8);
    goto LABEL_88;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E4C30();
  }

  v10 = @"Tipi score below low";
LABEL_36:
  [(BTSmartRoutingDaemon *)self _logEvalError:v10];
LABEL_88:
}

- (void)_evaluateTemporaryOverride:(id)override
{
  overrideCopy = override;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000467BC;
  v7[3] = &unk_1002B7FA8;
  v8 = overrideCopy;
  selfCopy = self;
  v6 = overrideCopy;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v7];
}

- (void)_resetInUserBannerShown
{
  if (self->_prefSmartRoutingInUseBanner)
  {
    [(NSMutableDictionary *)self->_srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:&stru_1002B7FE8];
  }
}

- (void)_smartRoutingAddWxMapDevice:(id)device routingAction:(int)action otherAddress:(id)address otherName:(id)name otherSourceVersion:(id)version isRoutingInitialized:(BOOL)initialized newWx:(BOOL)wx
{
  initializedCopy = initialized;
  deviceCopy = device;
  addressCopy = address;
  nameCopy = name;
  versionCopy = version;
  v18 = objc_alloc_init(SRWxDevice);
  bleDevice = [deviceCopy bleDevice];
  bluetoothAddress = [bleDevice bluetoothAddress];

  if ([bluetoothAddress length] == 6 && (v58 = objc_msgSend(bluetoothAddress, "bytes"), NSPrintF(), (v21 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v22 = v21;
    v69 = initializedCopy;
    actionCopy = action;
    bleDevice2 = [deviceCopy bleDevice];
    advertisementFields = [bleDevice2 advertisementFields];
    Int64Ranged = CFDictionaryGetInt64Ranged();

    if ([(BTSmartRoutingDaemon *)self _supportsSR:v22 andProductID:Int64Ranged])
    {
      v26 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKey:v22];

      if (!v26 || wx)
      {
        v28 = actionCopy;
        if (wx)
        {
          v29 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKey:v22];

          if (v29)
          {
            if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
            {
              sub_1001E55FC();
            }

            [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap setObject:0 forKeyedSubscript:v22];
          }
        }

        identifier = [deviceCopy identifier];
        uUIDString = [identifier UUIDString];

        v68 = uUIDString;
        v32 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
        isInEar = [v32 isInEar];

        if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          if (actionCopy > 5)
          {
            v34 = "?";
          }

          else
          {
            v34 = off_1002B90F8[actionCopy];
          }

          v35 = "no";
          if (v69)
          {
            v36 = "yes";
          }

          else
          {
            v36 = "no";
          }

          if (wx)
          {
            v37 = "yes";
          }

          else
          {
            v37 = "no";
          }

          if (isInEar)
          {
            v35 = "yes";
          }

          v61 = addressCopy;
          v62 = nameCopy;
          v59 = v22;
          v60 = v34;
          v64 = v37;
          v65 = v35;
          v63 = v36;
          LogPrintF();
        }

        v67 = isInEar;
        if ([(NSString *)self->_budSwapAddress isEqualToString:v22, v59, v60, v61, v62, v63, v64, v65])
        {
          if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001E563C();
          }

          if (self->_hfpBudswapDetected)
          {
            self->_hfpBudswapDetected = 0;
          }

          v66 = versionCopy;
          v38 = [(NSMutableDictionary *)self->_srBudswapDeviceMap objectForKeyedSubscript:v22];
          if (!v38)
          {
            v38 = objc_alloc_init(SRBudswapDevice);
          }

          [(SRBudswapDevice *)v38 setReconnectionState:1];
          otherTipiDeviceBTAddress = [(SRBudswapDevice *)v38 otherTipiDeviceBTAddress];

          if (otherTipiDeviceBTAddress)
          {
            otherTipiDeviceBTAddress2 = [(SRBudswapDevice *)v38 otherTipiDeviceBTAddress];
            otherTipiDeviceBTName = [(SRBudswapDevice *)v38 otherTipiDeviceBTName];
            otherTipiDeviceVersion = [(SRBudswapDevice *)v38 otherTipiDeviceVersion];
            [(BTSmartRoutingDaemon *)self _updateOtherTipiDevicewithAudioCategory:v22 otherAddress:otherTipiDeviceBTAddress2 otherName:otherTipiDeviceBTName otherVersion:otherTipiDeviceVersion];
          }

          budSwapAddress = self->_budSwapAddress;
          self->_budSwapAddress = 0;

          [(NSMutableDictionary *)self->_srBudswapDeviceMap setObject:v38 forKeyedSubscript:v22];
          budSwapTimer = self->_budSwapTimer;
          if (budSwapTimer)
          {
            v45 = budSwapTimer;
            dispatch_source_cancel(v45);
            v46 = self->_budSwapTimer;
            self->_budSwapTimer = 0;
          }

          v28 = actionCopy;
          versionCopy = v66;
        }

        [(SRWxDevice *)v18 setDeviceAddress:v22];
        [(SRWxDevice *)v18 setDeviceVersion:0];
        [(SRWxDevice *)v18 setOtherTipiAudioCategory:0];
        [(SRWxDevice *)v18 setHijackBackoffTicks:0];
        [(SRWxDevice *)v18 setRouted:v28 == 1];
        [(SRWxDevice *)v18 setConnected:0];
        name = [deviceCopy name];
        [(SRWxDevice *)v18 setDeviceName:name];

        identifier2 = [deviceCopy identifier];
        uUIDString2 = [identifier2 UUIDString];
        [(SRWxDevice *)v18 setConduitDeviceID:uUIDString2];

        identifier3 = [deviceCopy identifier];
        uUIDString3 = [identifier3 UUIDString];
        [(SRWxDevice *)v18 setIdentifier:uUIDString3];

        bleDevice3 = [deviceCopy bleDevice];
        advertisementFields2 = [bleDevice3 advertisementFields];
        [(SRWxDevice *)v18 setProductID:CFDictionaryGetInt64Ranged()];

        [(SRWxDevice *)v18 setInEar:v67];
        [(SRWxDevice *)v18 setIsTipiHealingV2Eligible:0];
        [(SRWxDevice *)v18 setIsRoutingActionInitialized:v69];
        [(SRWxDevice *)v18 setTipitableUpdated:0];
        [(SRWxDevice *)v18 setRoutingAction:v28];
        [(SRWxDevice *)v18 setOtherTipiDeviceInfo:addressCopy andName:nameCopy andVersion:versionCopy];
        [(BTSmartRoutingDaemon *)self _lowestBatteryInfoForSFDevice:deviceCopy];
        [(SRWxDevice *)v18 setLowestBudBatteryInfo:?];
        if (v67)
        {
          v54 = 1;
        }

        else
        {
          v54 = 3;
        }

        [(SRWxDevice *)v18 setRoutingUI:v54];
        smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
        if (!smartRoutingWxDeviceMap)
        {
          v56 = objc_alloc_init(NSMutableDictionary);
          v57 = self->_smartRoutingWxDeviceMap;
          self->_smartRoutingWxDeviceMap = v56;

          smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
        }

        [(NSMutableDictionary *)smartRoutingWxDeviceMap setObject:v18 forKeyedSubscript:v22];
        self->_autoRoutingTicks = mach_absolute_time();
        v27 = v68;
      }

      else
      {
        v27 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v22];
        [v27 setOtherTipiDeviceInfo:addressCopy andName:nameCopy andVersion:versionCopy];
      }

      if ([(SRWxDevice *)v18 routingAction]== 2)
      {
        ++self->_autoRoutingSingle;
      }

      else
      {
        ++self->_autoRoutingTipi;
      }
    }

    else
    {
      sub_1001E5588();
      v22 = v72;
    }
  }

  else
  {
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E5658();
    }

    v22 = 0;
  }
}

- (void)_smartRoutingAddWxMapDeviceFromConnectedDevice:(id)device
{
  deviceCopy = device;
  if (!self->_smartRoutingWxDeviceMap)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
    self->_smartRoutingWxDeviceMap = v5;
  }

  btAddressData = [deviceCopy btAddressData];
  v8 = CUPrintNSDataAddress();

  if (-[BTSmartRoutingDaemon _supportsSR:andProductID:](self, "_supportsSR:andProductID:", v8, [deviceCopy productID]))
  {
    if (v8)
    {
      v9 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKey:v8];

      if (!v9)
      {
        audioDestination = [(SRSourceDevice *)self->_sourceDevice audioDestination];
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          v45 = v8;
          v47 = audioDestination;
          LogPrintF();
        }

        self->_smartRoutingDisconnectReason = 0;
        v54 = 0;
        v55 = &v54;
        v56 = 0x2020000000;
        v57 = 0;
        v11 = objc_alloc_init(SRWxDevice);
        if ([(NSString *)self->_budSwapAddress isEqualToString:v8])
        {
          *(v55 + 24) = 1;
          if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v12 = [(NSMutableDictionary *)self->_srBudswapDeviceMap objectForKeyedSubscript:v8, v45, v47];
          if (!v12)
          {
            v12 = objc_alloc_init(SRBudswapDevice);
          }

          [(SRBudswapDevice *)v12 setReconnectionState:1];
          if (self->_hfpBudswapDetected)
          {
            self->_hfpBudswapDetected = 0;
          }

          otherTipiDeviceBTAddress = [(SRBudswapDevice *)v12 otherTipiDeviceBTAddress];

          if (otherTipiDeviceBTAddress)
          {
            otherTipiDeviceBTAddress2 = [(SRBudswapDevice *)v12 otherTipiDeviceBTAddress];
            otherTipiDeviceBTName = [(SRBudswapDevice *)v12 otherTipiDeviceBTName];
            otherTipiDeviceVersion = [(SRBudswapDevice *)v12 otherTipiDeviceVersion];
            [(BTSmartRoutingDaemon *)self _updateOtherTipiDevicewithAudioCategory:v8 otherAddress:otherTipiDeviceBTAddress2 otherName:otherTipiDeviceBTName otherVersion:otherTipiDeviceVersion];
          }

          budSwapAddress = self->_budSwapAddress;
          self->_budSwapAddress = 0;

          budSwapTimer = self->_budSwapTimer;
          if (budSwapTimer)
          {
            v19 = budSwapTimer;
            dispatch_source_cancel(v19);
            v20 = self->_budSwapTimer;
            self->_budSwapTimer = 0;
          }

          [(NSMutableDictionary *)self->_srBudswapDeviceMap setObject:v12 forKeyedSubscript:v8];
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }
        }

        if ([(NSMutableDictionary *)self->_smartRoutingWxDeviceMap count])
        {
          v21 = self->_smartRoutingWxDeviceMap;
          v53[0] = _NSConcreteStackBlock;
          v53[1] = 3221225472;
          v53[2] = sub_100047754;
          v53[3] = &unk_1002B7DF0;
          v53[4] = &v54;
          [(NSMutableDictionary *)v21 enumerateKeysAndObjectsUsingBlock:v53];
        }

        v22 = -[BTSmartRoutingDaemon _bluetoothProductIDNoEarDetect:](self, "_bluetoothProductIDNoEarDetect:", [deviceCopy productID]) || objc_msgSend(deviceCopy, "primaryPlacement") == 1 || objc_msgSend(deviceCopy, "secondaryPlacement") == 1;
        [(SRWxDevice *)v11 setDeviceAddress:v8];
        [(SRWxDevice *)v11 setDeviceVersion:0];
        [(SRWxDevice *)v11 setHijackBackoffTicks:0];
        [(SRWxDevice *)v11 setConnected:1];
        name = [deviceCopy name];
        [(SRWxDevice *)v11 setDeviceName:name];

        identifier = [deviceCopy identifier];
        [(SRWxDevice *)v11 setConduitDeviceID:identifier];

        -[SRWxDevice setProductID:](v11, "setProductID:", [deviceCopy productID]);
        identifier2 = [deviceCopy identifier];
        [(SRWxDevice *)v11 setIdentifier:identifier2];

        [(SRWxDevice *)v11 setInEar:v22];
        -[SRWxDevice setInEarDisabled:](v11, "setInEarDisabled:", [deviceCopy primaryPlacement] == 7);
        [(SRWxDevice *)v11 setIsTipiHealingV2Eligible:0];
        [(SRWxDevice *)v11 setOtherTipiAudioCategory:0];
        [(BTSmartRoutingDaemon *)self _lowestBatteryInfoForCBDevice:deviceCopy];
        [(SRWxDevice *)v11 setLowestBudBatteryInfo:?];
        [(SRWxDevice *)v11 setIsRoutingActionInitialized:[(NSString *)self->_budSwapAddress isEqualToString:v8]];
        [(SRWxDevice *)v11 setTipitableUpdated:0];
        v26 = [deviceCopy audioStreamState] >= 2 && -[NSNumber intValue](self->_localDeviceAudioCategory, "intValue") < 101;
        v27 = [(NSString *)self->_triangleRecoveryInitiatedAddress isEqualToString:v8];
        v28 = *(v55 + 24);
        deviceFlags = [deviceCopy deviceFlags];
        v30 = deviceFlags;
        if ((v28 | (v26 | v27)))
        {
          v31 = 3;
        }

        else
        {
          v31 = 2;
        }

        if ((*&deviceFlags & 0x400000) != 0)
        {
          v32 = 1;
        }

        else
        {
          v32 = v31;
        }

        [(SRWxDevice *)v11 setRoutingAction:v32];
        if (v22)
        {
          v33 = 1;
        }

        else
        {
          v33 = 3;
        }

        [(SRWxDevice *)v11 setRoutingUI:v33];
        [(SRWxDevice *)v11 setOtherTipiDeviceInfo:0 andName:0 andVersion:0];
        [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap setObject:v11 forKeyedSubscript:v8];
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          routingAction = [(SRWxDevice *)v11 routingAction];
          if (routingAction > 5)
          {
            v35 = "?";
          }

          else
          {
            v35 = off_1002B90F8[routingAction];
          }

          v36 = "yes";
          if (*(v55 + 24))
          {
            v37 = "yes";
          }

          else
          {
            v37 = "no";
          }

          if (v26)
          {
            v38 = "yes";
          }

          else
          {
            v38 = "no";
          }

          if ((*&v30 & 0x400000) != 0)
          {
            v39 = "yes";
          }

          else
          {
            v39 = "no";
          }

          if (!v27)
          {
            v36 = "no";
          }

          v51 = v36;
          localDeviceAudioCategory = self->_localDeviceAudioCategory;
          v49 = "no";
          v50 = v39;
          v47 = v37;
          v48 = v38;
          v46 = v35;
          LogPrintF();
        }

        self->_autoRoutingTicks = mach_absolute_time();
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          v40 = [(SRWxDevice *)v11 routingAction:v46];
          if (v40 > 5)
          {
            v41 = "?";
          }

          else
          {
            v41 = off_1002B90F8[v40];
          }

          v46 = v41;
          LogPrintF();
        }

        if (self->_prefSmartRoutingEnabledPhase3 && !self->_tipiElectionInProgress && [(BTSmartRoutingDaemon *)self _aacpConnectedCheck:deviceCopy])
        {
          [(BTSmartRoutingDaemon *)self _tipiHealingAttempt];
        }

        if ([(NSMutableArray *)self->_smartRoutingManualDisconnectionList containsObject:v8, v46])
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          [(NSMutableArray *)self->_smartRoutingManualDisconnectionList removeObject:v8];
        }

        v42 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v8];
        [v42 setIsManualDisconnectLastTime:0];
        routingAction2 = [(SRWxDevice *)v11 routingAction];
        v44 = 144;
        if (routingAction2 == 2)
        {
          v44 = 128;
        }

        ++*(&self->super.isa + v44);

        _Block_object_dispose(&v54, 8);
      }
    }

    else if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E56D4();
    }
  }

  else
  {
    sub_1001E5674();
  }
}

- (id)_lowestBatteryForDeviceWithAddress:(id)address
{
  addressCopy = address;
  v5 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:addressCopy];
  v6 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:addressCopy];
  identifier = [v5 identifier];
  if (identifier || ([v6 identifier], (identifier = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = identifier;
    v9 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
    v10 = [v9 deviceWithIdentifier:v8];

    if (!v10)
    {
      sub_1001E5A3C(v8, &v42);
      v29 = v42;
      goto LABEL_38;
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    batteries = [v10 batteries];
    v12 = [batteries countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v12)
    {
      v13 = v12;
      v36 = v10;
      v37 = v6;
      v14 = v5;
      v15 = addressCopy;
      v16 = 0;
      v17 = *v39;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v39 != v17)
          {
            objc_enumerationMutation(batteries);
          }

          v19 = *(*(&v38 + 1) + 8 * i);
          if (([v19 isCaseBattery] & 1) == 0)
          {
            if (!v16 || ([v16 level], v21 = v20, objc_msgSend(v19, "level"), v21 >= v22))
            {
              v23 = v19;

              v16 = v23;
            }
          }
        }

        v13 = [batteries countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v13);

      addressCopy = v15;
      v5 = v14;
      v10 = v36;
      v6 = v37;
      if (v16)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E593C();
        }

        v24 = v16;
        goto LABEL_26;
      }
    }

    else
    {
    }

    [v5 lowestBudBatteryInfo];
    if (v25 == 0.0)
    {
      v30 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:v8];
      [v30 lowestBudBatteryInfo];
      if (v31 == 0.0)
      {
        if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E597C();
        }

        v29 = 0;
      }

      else
      {
        v32 = [AABattery alloc];
        [v30 lowestBudBatteryInfo];
        v34 = [v32 initWithLevel:objc_msgSend(v30 productID:"productID") state:1 type:{4, v33}];
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E59BC();
        }

        v29 = v34;
      }

      goto LABEL_37;
    }

    v26 = [AABattery alloc];
    [v5 lowestBudBatteryInfo];
    v28 = [v26 initWithLevel:objc_msgSend(v5 productID:"productID") state:1 type:{4, v27}];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E59FC();
    }

    v24 = v28;
LABEL_26:
    v29 = v24;
LABEL_37:

LABEL_38:
    goto LABEL_39;
  }

  sub_1001E5AC0(addressCopy, &v42);
  v29 = v42;
LABEL_39:

  return v29;
}

- (void)_smartRoutingConnectionCompleted:(id)completed
{
  completedCopy = completed;
  bleDevice = [(SFDevice *)self->_eligibleHeadset bleDevice];
  bluetoothAddress = [bleDevice bluetoothAddress];

  if ([bluetoothAddress length] == 6)
  {
    bytes = [bluetoothAddress bytes];
    v7 = NSPrintF();
  }

  else
  {
    v7 = 0;
  }

  bleDevice2 = [(SFDevice *)self->_eligibleHeadset bleDevice];
  advertisementFields = [bleDevice2 advertisementFields];
  Int64Ranged = CFDictionaryGetInt64Ranged();

  [(BTSmartRoutingDaemon *)self _isOnDemandConnectInProgress];
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E5B44(self);
  }

  connectDevice = self->_connectDevice;
  if (connectDevice)
  {
    self->_connectDevice = 0;
  }

  connectSession = self->_connectSession;
  if (connectSession)
  {
    [(CBConnection *)connectSession invalidate];
    v13 = self->_connectSession;
    self->_connectSession = 0;
  }

  if (!self->_disconnectTicksMap)
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    disconnectTicksMap = self->_disconnectTicksMap;
    self->_disconnectTicksMap = v14;
  }

  if (v7)
  {
    [(BTSmartRoutingDaemon *)self _setDisconnectTick:0 forWxAddress:v7];
  }

  self->_connectTicks = 0;
  self->_eligibleHeadsetTicks = 0;
  if (!completedCopy)
  {
    if (!self->_prefSmartRoutingEnabledPhase3 || !self->_tipiElectionInProgress)
    {
      goto LABEL_66;
    }

    v16 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v7];
    otherTipiDeviceVersion = [v16 otherTipiDeviceVersion];
    [otherTipiDeviceVersion doubleValue];
    v19 = v18;

    if (v19 >= 1.2)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E5BEC();
      }

      idsIdentifier = [(SFDevice *)self->_lePipeDevice idsIdentifier];
      if (self->_prefSmartRoutingConnectionManager)
      {
        v25 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v7];
        nearbyLEPipeSourceDevice = [v25 nearbyLEPipeSourceDevice];
        idsIdentifier2 = [nearbyLEPipeSourceDevice idsIdentifier];

        idsIdentifier = idsIdentifier2;
      }

      smartRoutingPipe = self->_smartRoutingPipe;
      v54[0] = _NSConcreteStackBlock;
      v54[1] = 3221225472;
      v54[2] = sub_100048EE4;
      v54[3] = &unk_1002B68A8;
      v54[4] = self;
      v54[5] = v7;
      [(SRLEPipe *)smartRoutingPipe pipeSendRouteRequestToSFDevice:idsIdentifier andWxHeadset:v7 newPipe:0 connectionResult:@"connectionResultSuccess" completion:v54];
    }

    else if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E5C08();
    }

    if (v7)
    {
      v29 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKey:v7];

      if (v29)
      {
        v30 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v7];
        [v30 setConnected:1];
      }

      v31 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v7];
      if (v31)
      {
        v32 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v7];
        if ([v32 primaryPlacement] == 1)
        {
          v33 = 1;
        }

        else
        {
          v39 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v7];
          v33 = [v39 secondaryPlacement] == 1;
        }
      }

      else
      {
        v33 = 0;
      }

      v40 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v7];
      if ([v40 routingAction] == 3)
      {
        v41 = [(NSMutableDictionary *)self->_srBudswapDeviceMap objectForKeyedSubscript:v7];
        [v41 reconnectionState];
      }
    }

    else
    {
      v33 = 0;
    }

    identifier = [(SFDevice *)self->_eligibleHeadset identifier];
    uUIDString = [identifier UUIDString];

    if (!v33)
    {
      goto LABEL_65;
    }

    name = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v7];
    if ([name routingAction] == 1)
    {
      v45 = [(NSMutableDictionary *)self->_srBudswapDeviceMap objectForKeyedSubscript:v7];
      reconnectionState = [v45 reconnectionState];

      if (reconnectionState == 1)
      {
        goto LABEL_65;
      }

      v47 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
      preemptiveBannerShown = [v47 preemptiveBannerShown];

      if (preemptiveBannerShown)
      {
        goto LABEL_65;
      }

      name = [(SFDevice *)self->_eligibleHeadset name];
      [(BTSmartRoutingDaemon *)self _smartRoutingShowBanner:1 withDevice:name andDeviceAddress:v7 andProductID:Int64Ranged andCentralContentItemTxt:@"Connected" andTimeout:0 andDeviceType:4.0];
    }

LABEL_65:
    smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
    v53[0] = _NSConcreteStackBlock;
    v53[1] = 3221225472;
    v53[2] = sub_100049028;
    v53[3] = &unk_1002B7FA8;
    v53[4] = v7;
    v53[5] = self;
    [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v53];

    goto LABEL_66;
  }

  if (self->_prefSmartRoutingNoBackOffTimers)
  {
    [(BTSmartRoutingDaemon *)self _smartRoutingConnectToEligibleHeadset:self->_eligibleHeadset];
    goto LABEL_70;
  }

  if (self->_prefSmartRoutingEnabledPhase3 && self->_tipiElectionInProgress)
  {
    v20 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v7];
    otherTipiDeviceVersion2 = [v20 otherTipiDeviceVersion];
    [otherTipiDeviceVersion2 doubleValue];
    v23 = v22;

    if (v23 >= 1.2)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E5BB4();
      }

      idsIdentifier3 = [(SFDevice *)self->_lePipeDevice idsIdentifier];
      if (self->_prefSmartRoutingConnectionManager)
      {
        v35 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v7];
        nearbyLEPipeSourceDevice2 = [v35 nearbyLEPipeSourceDevice];
        idsIdentifier4 = [nearbyLEPipeSourceDevice2 idsIdentifier];

        idsIdentifier3 = idsIdentifier4;
      }

      v38 = self->_smartRoutingPipe;
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_100048DD8;
      v55[3] = &unk_1002B68A8;
      v55[4] = self;
      v55[5] = v7;
      [(SRLEPipe *)v38 pipeSendRouteRequestToSFDevice:idsIdentifier3 andWxHeadset:v7 newPipe:0 connectionResult:@"connectionResultError" completion:v55];
    }

    else if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E5BD0();
    }

    [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.PreemptivePortDisconnected"];
  }

LABEL_66:
  self->_tipiElectionInProgress = 0;
  eligibleHeadset = self->_eligibleHeadset;
  self->_eligibleHeadset = 0;

  [(BTSmartRoutingDaemon *)self _submitConnectionMetric:v7 andError:completedCopy];
  if (completedCopy)
  {
    self->_forcedConnection = 0;
    phase1ConnectConfig = self->_phase1ConnectConfig;
    self->_phase1ConnectConfig = 0;

    if (v7)
    {
      [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap setObject:0 forKeyedSubscript:v7];
    }
  }

  [(BTSmartRoutingDaemon *)self _submitNearbyDeviceMetric:Int64Ranged];
LABEL_70:
}

- (void)_smartRoutingConnectToEligibleHeadset:(id)headset
{
  headsetCopy = headset;
  bleDevice = [headsetCopy bleDevice];
  bluetoothAddress = [bleDevice bluetoothAddress];

  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_100003918;
  v44 = sub_100003838;
  v8 = [bluetoothAddress length];
  v9 = 0;
  if (v8 == 6)
  {
    bytes = [bluetoothAddress bytes];
    v9 = NSPrintF();
  }

  v45 = v9;
  identifier = [headsetCopy identifier];
  uUIDString = [identifier UUIDString];

  mach_absolute_time();
  v12 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:v41[5]];
  [v12 lastWxAdvTicks];
  v13 = UpTicksToMilliseconds();

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v32 = headsetCopy;
    v33 = v13;
    v30 = v41[5];
    LogPrintF();
  }

  objc_storeStrong(&self->_connectDevice, headset);
  v14 = objc_alloc_init(CBDevice);
  [v14 setIdentifier:v41[5]];
  v15 = mach_absolute_time();
  v16 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
  [v16 setLastConnectionTicks:v15];

  v17 = objc_alloc_init(CBConnection);
  objc_storeStrong(&self->_connectSession, v17);
  [v17 setConnectionFlags:2];
  evalWxMap = [(SRSourceDevice *)self->_sourceDevice evalWxMap];

  if (!evalWxMap)
  {
    v19 = objc_alloc_init(NSMutableDictionary);
    [(SRSourceDevice *)self->_sourceDevice setEvalWxMap:v19];
  }

  v20 = [(SRSourceDevice *)self->_sourceDevice evalWxMap:v30];
  v21 = [v20 objectForKeyedSubscript:v41[5]];

  if (!v21)
  {
    v21 = objc_alloc_init(SRWxInfo);
  }

  v22 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
  -[SRWxInfo setLastConnectTicks:](v21, "setLastConnectTicks:", [v22 lastConnectionTicks]);

  evalWxMap2 = [(SRSourceDevice *)self->_sourceDevice evalWxMap];
  [evalWxMap2 setObject:v21 forKeyedSubscript:v41[5]];

  v24 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v41[5]];
  otherTipiDeviceBTAddress = [v24 otherTipiDeviceBTAddress];

  if (otherTipiDeviceBTAddress)
  {
    [v17 setConnectionFlags:{objc_msgSend(v17, "connectionFlags") | 8}];
  }

  [v17 setServiceFlags:0xFFFFFFFFLL];
  [v17 setPeerDevice:v14];
  [v17 setDispatchQueue:self->_dispatchQueue];
  [v17 setConnectTimeoutSeconds:20.0];
  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x3032000000;
  v38[3] = sub_100003918;
  v38[4] = sub_100003838;
  identifier2 = [v24 identifier];
  v26 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  objc_storeStrong(&self->_connectDispatchTimer, v26);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100049730;
  handler[3] = &unk_1002B80A0;
  handler[4] = v17;
  handler[5] = self;
  v36 = &v40;
  v37 = v38;
  v27 = v21;
  v35 = v27;
  dispatch_source_set_event_handler(v26, handler);
  prefConnectionDelaySeconds = self->_prefConnectionDelaySeconds;
  CUDispatchTimerSet();
  dispatch_activate(v26);
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v31 = self->_prefConnectionDelaySeconds;
    LogPrintF();
  }

  self->_prefSpeakRouteConnection = 1;

  _Block_object_dispose(v38, 8);
  _Block_object_dispose(&v40, 8);
}

- (void)_respondRoutingRequest:(id)request withResponseHandler:(id)handler wxAddress:(id)address
{
  requestCopy = request;
  handlerCopy = handler;
  addressCopy = address;
  if (handlerCopy)
  {
    if (requestCopy)
    {
      if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E5CCC(requestCopy);
      }

      [(BTSmartRoutingDaemon *)self _tipiHealingHijackTimerReset];
      handlerCopy[2](handlerCopy, requestCopy);
      if (addressCopy)
      {
        v10 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:addressCopy];
        [v10 setAudioRoutingResponse:0];
        [v10 setAudioRoutingClientID:0];
      }
    }

    else
    {
      sub_1001E5D90(dword_1002F6778);
    }
  }

  else
  {
    sub_1001E5DE8();
  }
}

- (void)hijackBlockingModeChangedFromClient:(id)client mode:(BOOL)mode completion:(id)completion
{
  clientCopy = client;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100049B90;
  v13[3] = &unk_1002B7AF0;
  v13[4] = self;
  v14 = clientCopy;
  modeCopy = mode;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = clientCopy;
  dispatch_async(dispatchQueue, v13);
}

- (void)smartRoutingAudioRoutingRequest:(id)request withResponseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100049DD8;
  block[3] = &unk_1002B6BB0;
  block[4] = self;
  v12 = requestCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = requestCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_smartRoutingAudioRoutingRequest:(id)request withResponseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v52 = objc_alloc_init(BTAudioRoutingResponse);
  v84 = 0;
  v85 = &v84;
  v86 = 0x2020000000;
  v87 = 0;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = sub_100003918;
  v82 = sub_100003838;
  deviceAddress = [requestCopy deviceAddress];
  v76[0] = 0;
  v76[1] = v76;
  v76[2] = 0x3032000000;
  v76[3] = sub_100003918;
  v76[4] = sub_100003838;
  v77 = 0;
  v74[0] = 0;
  v74[1] = v74;
  v74[2] = 0x3032000000;
  v74[3] = sub_100003918;
  v74[4] = sub_100003838;
  v75 = 0;
  v72[0] = 0;
  v72[1] = v72;
  v72[2] = 0x3032000000;
  v72[3] = sub_100003918;
  v72[4] = sub_100003838;
  v73 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x3032000000;
  v69 = sub_100003918;
  v70 = sub_100003838;
  v50 = requestCopy;
  options = [requestCopy options];
  CFStringGetTypeID();
  TypedValue = CFDictionaryGetTypedValue();
  v8 = @"Not set";
  if (TypedValue)
  {
    v8 = TypedValue;
  }

  v71 = v8;

  if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    deviceAddress2 = [requestCopy deviceAddress];
    audioScore = [v50 audioScore];
    [v50 flags];
    v11 = CUPrintFlags32();
    appBundleID = [v50 appBundleID];
    clientID = [v50 clientID];
    v14 = @"NULL";
    if (appBundleID)
    {
      v14 = appBundleID;
    }

    v46 = clientID;
    v47 = v67[5];
    v44 = v11;
    v45 = v14;
    v41 = deviceAddress2;
    v43 = audioScore;
    LogPrintF();
  }

  if (([v50 flags] & 0x10) != 0)
  {
    [v52 setAction:5];
    [v52 setReason:@"Connecting"];
    [v52 setClientID:{objc_msgSend(v50, "clientID")}];
    smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
    v65[0] = _NSConcreteStackBlock;
    v65[1] = 3221225472;
    v65[2] = sub_10004A834;
    v65[3] = &unk_1002B7DF0;
    v65[4] = &v78;
    [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v65];
    v18 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v79[5]];
    identifier = [v18 identifier];

    [v52 setDeviceAddress:v79[5]];
    v20 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
    if ([v20 productID])
    {
      v21 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
      v48 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"BTHeadphones76,%u", [v21 productID]);
    }

    else
    {
      v48 = &stru_1002C1358;
    }

    v89[0] = v48;
    v88[0] = @"RouteModel";
    v88[1] = @"RouteName";
    v27 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
    name = [v27 name];
    v29 = name;
    v30 = @"Airpods";
    if (name)
    {
      v30 = name;
    }

    v89[1] = v30;
    v88[2] = @"RouteUID";
    v31 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
    address = [v31 address];
    v33 = address;
    if (address)
    {
      v34 = address;
    }

    else
    {
      v34 = &stru_1002C1358;
    }

    v89[2] = v34;
    v88[3] = @"BatteryLeft";
    v35 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
    [v35 batteryLeft];
    v36 = [NSNumber numberWithDouble:?];
    v89[3] = v36;
    v88[4] = @"BatteryRight";
    v37 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
    [v37 batteryRight];
    v38 = [NSNumber numberWithDouble:?];
    v89[4] = v38;
    v39 = [NSDictionary dictionaryWithObjects:v89 forKeys:v88 count:5];
    [v52 setWxInfo:v39];

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      wxInfo = [v52 wxInfo];
      LogPrintF();
    }

    [(BTSmartRoutingDaemon *)self _respondRoutingRequest:v52 withResponseHandler:handlerCopy wxAddress:v79[5], wxInfo];
    *(v85 + 24) = 1;
  }

  else
  {
    if (v79[5])
    {
      goto LABEL_46;
    }

    v15 = self->_smartRoutingWxDeviceMap;
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_10004A86C;
    v64[3] = &unk_1002B80C8;
    v64[4] = self;
    v64[5] = &v78;
    v64[6] = v76;
    v64[7] = v74;
    v64[8] = v72;
    [(NSMutableDictionary *)v15 enumerateKeysAndObjectsUsingBlock:v64];
    if (v79[5])
    {
LABEL_46:
      if (_os_feature_enabled_impl())
      {
        v16 = ([v50 flags] >> 5) & 1;
      }

      else
      {
        LOBYTE(v16) = 0;
      }

      v22 = self->_smartRoutingWxDeviceMap;
      v53[0] = _NSConcreteStackBlock;
      v53[1] = 3221225472;
      v53[2] = sub_10004A9B0;
      v53[3] = &unk_1002B80F0;
      v58 = &v78;
      v23 = v50;
      v54 = v23;
      selfCopy = self;
      v56 = v52;
      v24 = handlerCopy;
      v57 = v24;
      v59 = &v84;
      v60 = &v66;
      v61 = v72;
      v62 = v76;
      v63 = v16;
      [(NSMutableDictionary *)v22 enumerateKeysAndObjectsUsingBlock:v53];
      if ((v85[3] & 1) == 0)
      {
        budSwapAddress = self->_budSwapAddress;
        deviceAddress3 = [v23 deviceAddress];
        LODWORD(budSwapAddress) = [(NSString *)budSwapAddress isEqualToString:deviceAddress3];

        if (budSwapAddress)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            wxInfo = self->_budSwapAddress;
            LogPrintF();
          }

          [v52 setAction:{3, wxInfo}];
          [v52 setDeviceAddress:0];
          v40 = @"Budswap reconnect will happen soon";
        }

        else
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          [v52 setAction:2];
          [v52 setDeviceAddress:0];
          v40 = @"Not tipi device";
        }

        [v52 setReason:v40];
        [v52 setClientID:{objc_msgSend(v23, "clientID")}];
        [(BTSmartRoutingDaemon *)self _respondRoutingRequest:v52 withResponseHandler:v24 wxAddress:v79[5]];
      }
    }

    else
    {
      [v52 setAction:3];
      [v52 setDeviceAddress:0];
      [v52 setReason:{@"Tipi device, do not route, not inEar and/or inEar is not disabled."}];
      [v52 setClientID:{objc_msgSend(v50, "clientID")}];
      [(BTSmartRoutingDaemon *)self _respondRoutingRequest:v52 withResponseHandler:handlerCopy wxAddress:v79[5]];
    }
  }

  _Block_object_dispose(&v66, 8);

  _Block_object_dispose(v72, 8);
  _Block_object_dispose(v74, 8);

  _Block_object_dispose(v76, 8);
  _Block_object_dispose(&v78, 8);

  _Block_object_dispose(&v84, 8);
}

- (void)_submitNearbyDeviceMetric:(unsigned int)metric
{
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  nearbyInfoDevices = self->_nearbyInfoDevices;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10004C0C0;
  v16[3] = &unk_1002B8118;
  v16[4] = &v41;
  v16[5] = &v37;
  v16[6] = &v33;
  v16[7] = &v29;
  v16[8] = &v25;
  v16[9] = &v21;
  v16[10] = &v17;
  [(NSMutableDictionary *)nearbyInfoDevices enumerateKeysAndObjectsUsingBlock:v16];
  v45[0] = @"iPhoneNearby";
  v5 = [NSNumber numberWithUnsignedInt:*(v42 + 6)];
  v46[0] = v5;
  v45[1] = @"iPadNearby";
  v6 = [NSNumber numberWithUnsignedInt:*(v38 + 6)];
  v46[1] = v6;
  v45[2] = @"iPodNearby";
  v7 = [NSNumber numberWithUnsignedInt:*(v34 + 6)];
  v46[2] = v7;
  v45[3] = @"macNearby";
  v8 = [NSNumber numberWithUnsignedInt:*(v30 + 6)];
  v46[3] = v8;
  v45[4] = @"watchNearby";
  v9 = [NSNumber numberWithUnsignedInt:*(v26 + 6)];
  v46[4] = v9;
  v45[5] = @"appleTvNearby";
  v10 = [NSNumber numberWithUnsignedInt:*(v22 + 6)];
  v46[5] = v10;
  v45[6] = @"homePodNearby";
  v11 = [NSNumber numberWithUnsignedInt:*(v18 + 6)];
  v46[6] = v11;
  v45[7] = @"totalNearby";
  v12 = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)self->_nearbyInfoDevices count]];
  v46[7] = v12;
  v45[8] = @"wxPD";
  v13 = [NSNumber numberWithUnsignedInt:metric];
  v46[8] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v46 forKeys:v45 count:9];
  CUMetricsLogEx();

  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(&v41, 8);
}

- (void)submitHijackMetric:(id)metric withV1:(BOOL)v1
{
  if (metric)
  {
    v6 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:?];
    if (v1)
    {
      v7 = @"V1";
    }

    else
    {
      [(SRStats *)self->_stats setHijackContinuousTimeoutCount:0];
      [(SRStats *)self->_stats setHijackRelaySent:0];
      [(SRStats *)self->_stats setHijackRoundTripTime:0];
      v7 = @"V2";
    }

    hijackAnswer = [(SRStats *)self->_stats hijackAnswer];
    v9 = hijackAnswer;
    if (hijackAnswer)
    {
      v10 = hijackAnswer;
    }

    else
    {
      v10 = @"NA";
    }

    v11 = v10;

    v12 = v11;
    v36 = v11;
    if ([(__CFString *)v11 isEqualToString:@"Backoff"])
    {
      v13 = @"All";
    }

    else
    {
      v13 = v7;
    }

    v39[0] = @"askForHijack";
    v38 = [NSNumber numberWithBool:[(SRStats *)self->_stats hijackRelaySent]];
    v40[0] = v38;
    v39[1] = @"audioScore";
    v37 = [NSNumber numberWithInt:[(SRStats *)self->_stats hijackScore]];
    v40[1] = v37;
    v39[2] = @"otherTipiDeviceScore";
    v35 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 otherTipiAudioCategory]);
    v40[2] = v35;
    v39[3] = @"otherTipiDevicePlayingApp";
    otherTipiDevicePlayingApp = [v6 otherTipiDevicePlayingApp];
    v15 = otherTipiDevicePlayingApp;
    if (otherTipiDevicePlayingApp)
    {
      v16 = otherTipiDevicePlayingApp;
    }

    else
    {
      v16 = @"NA";
    }

    v40[3] = v16;
    v40[4] = v12;
    v39[4] = @"hijackAnswer";
    v39[5] = @"hijackVersion";
    v40[5] = v13;
    v39[6] = @"hijackContinousCount";
    v34 = [NSNumber numberWithUnsignedLongLong:[(SRStats *)self->_stats hijackContinuousTimeoutCount]];
    v40[6] = v34;
    v39[7] = @"hijackRoundTripTime";
    v17 = [NSNumber numberWithUnsignedLongLong:[(SRStats *)self->_stats hijackRoundTripTime]];
    v40[7] = v17;
    v39[8] = @"playingApp";
    hijackPlayingApp = [(SRStats *)self->_stats hijackPlayingApp];
    v19 = hijackPlayingApp;
    if (hijackPlayingApp)
    {
      v20 = hijackPlayingApp;
    }

    else
    {
      v20 = &stru_1002C1358;
    }

    v40[8] = v20;
    v39[9] = @"playingCategory";
    hijackPlayingCategory = [(SRStats *)self->_stats hijackPlayingCategory];
    v22 = hijackPlayingCategory;
    if (hijackPlayingCategory)
    {
      v23 = hijackPlayingCategory;
    }

    else
    {
      v23 = &stru_1002C1358;
    }

    v40[9] = v23;
    v39[10] = @"theOtherTipiDevice";
    otherTipiDeviceBTName = [v6 otherTipiDeviceBTName];
    v25 = otherTipiDeviceBTName;
    if (otherTipiDeviceBTName)
    {
      v26 = otherTipiDeviceBTName;
    }

    else
    {
      v26 = &stru_1002C1358;
    }

    v40[10] = v26;
    v39[11] = @"wxPD";
    v27 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 productID]);
    v40[11] = v27;
    v39[12] = @"wxStreamState";
    wxStreamState = [(SRStats *)self->_stats wxStreamState];
    v32 = v6;
    v29 = wxStreamState;
    if (wxStreamState)
    {
      v30 = wxStreamState;
    }

    else
    {
      v30 = &stru_1002C1358;
    }

    v40[12] = v30;
    v31 = [NSDictionary dictionaryWithObjects:v40 forKeys:v39 count:13, v32];
    CUMetricsLogEx();

    [(SRStats *)self->_stats setHijackRoundTripTime:0];
  }
}

- (void)submitRouteActivityMetric:(id)metric activity:(id)activity
{
  metricCopy = metric;
  activityCopy = activity;
  if (metricCopy)
  {
    v54 = 0;
    v53 = 0;
    v8 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:metricCopy];
    if ([activityCopy isEqualToString:@"Manual_Route"])
    {
      manualRouteDestination = [(SRStats *)self->_stats manualRouteDestination];
      v10 = [manualRouteDestination isEqualToString:@"Non-BT"];

      if (v10)
      {
        _findActiveWxDevice = [(BTSmartRoutingDaemon *)self _findActiveWxDevice];

        v12 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:_findActiveWxDevice];

        v8 = v12;
        metricCopy = _findActiveWxDevice;
      }
    }

    v13 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:metricCopy];
    v14 = v13;
    v15 = @"Unknown";
    if (v8)
    {
      if (v13)
      {
        v16 = [(BTSmartRoutingDaemon *)self _deviceSupportsHijackV2:v13 withDevice:v8];
        v15 = @"V1";
        if (v16)
        {
          v15 = @"V2";
        }
      }
    }

    v17 = v15;
    v45 = v14;
    v46 = metricCopy;
    if ([activityCopy isEqualToString:@"Hijack_Away"])
    {
      v51 = &stru_1002C1358;
      v52 = &stru_1002C1358;
      v18 = &v52;
      v19 = &v51;
      [(BTSmartRoutingDaemon *)self getHijackedAwayAudioInfo:&v54 appCount:&v54 + 4 playingApp:&v52 route:&v51 remote:&v53];
    }

    else if ([activityCopy hasPrefix:@"Hijack_"])
    {
      v49 = &stru_1002C1358;
      v50 = &stru_1002C1358;
      v18 = &v50;
      v19 = &v49;
      [(BTSmartRoutingDaemon *)self getHijackAudioInfo:&v54 appCount:&v54 + 4 playingApp:&v50 route:&v49 remote:&v53];
    }

    else
    {
      if (([activityCopy isEqualToString:@"Remote_Manual_Route"] & 1) == 0 && (objc_msgSend(activityCopy, "hasPrefix:", @"Manual_Route") & 1) == 0 && !objc_msgSend(activityCopy, "isEqualToString:", @"Reverse"))
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E62B8();
        }

        v38 = &stru_1002C1358;
        v35 = &stru_1002C1358;
        goto LABEL_32;
      }

      v47 = &stru_1002C1358;
      v48 = &stru_1002C1358;
      v18 = &v48;
      v19 = &v47;
      [(BTSmartRoutingDaemon *)self getLocalAudioInfofromSnapshot:&v54 appCount:&v54 + 4 playingApp:&v48 route:&v47 remote:&v53];
    }

    v42 = *v18;
    v39 = *v19;
    v55[0] = @"Activity";
    v55[1] = @"BundleID";
    v56[0] = activityCopy;
    v56[1] = v42;
    v55[2] = @"DestinationRoute";
    manualRouteDestination2 = [(SRStats *)self->_stats manualRouteDestination];
    v21 = manualRouteDestination2;
    if (manualRouteDestination2)
    {
      v22 = manualRouteDestination2;
    }

    else
    {
      v22 = @"NA";
    }

    v56[2] = v22;
    v56[3] = v17;
    v55[3] = @"HijackVersion";
    v55[4] = @"InTipi";
    otherTipiDeviceBTAddress = [v8 otherTipiDeviceBTAddress];
    v23 = @"YES";
    if (!otherTipiDeviceBTAddress)
    {
      v23 = @"NO";
    }

    v56[4] = v23;
    v55[5] = @"LocalScore";
    v44 = activityCopy;
    v40 = [NSNumber numberWithInt:v54];
    v56[5] = v40;
    v55[6] = @"ManualRouteInputOutput";
    manualRouteInputOutput = [(SRStats *)self->_stats manualRouteInputOutput];
    v43 = v17;
    v25 = manualRouteInputOutput;
    if (manualRouteInputOutput)
    {
      v26 = manualRouteInputOutput;
    }

    else
    {
      v26 = @"NA";
    }

    v56[6] = v26;
    v55[7] = @"ManualRouteUISource";
    manualRouteUISource = [(SRStats *)self->_stats manualRouteUISource];
    v28 = manualRouteUISource;
    if (manualRouteUISource)
    {
      v29 = manualRouteUISource;
    }

    else
    {
      v29 = @"NA";
    }

    v56[7] = v29;
    v55[8] = @"NumOfApps";
    v30 = [NSNumber numberWithInt:HIDWORD(v54)];
    v56[8] = v30;
    v55[9] = @"OtherTipiDeviceModel";
    otherTipiDeviceBTName = [v8 otherTipiDeviceBTName];
    v32 = otherTipiDeviceBTName;
    if (otherTipiDeviceBTName)
    {
      v33 = otherTipiDeviceBTName;
    }

    else
    {
      v33 = @"NA";
    }

    v56[9] = v33;
    v55[10] = @"RemoteScore";
    v34 = [NSNumber numberWithInt:v53];
    v35 = v39;
    v56[10] = v34;
    v56[11] = v39;
    v55[11] = @"Route";
    v55[12] = @"ProductID";
    v36 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v8 productID]);
    v56[12] = v36;
    v37 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:13];
    CUMetricsLogEx();

    activityCopy = v44;
    v38 = v42;

    v17 = v43;
    v14 = v45;
    metricCopy = v46;
LABEL_32:
  }
}

- (void)_smartRoutingAddRoute:(id)route
{
  routeCopy = route;
  if (![(__CFArray *)self->_mediaRemoteOutputDevices count])
  {
    goto LABEL_12;
  }

  v5 = 0;
  while (!CFArrayGetValueAtIndex(self->_mediaRemoteOutputDevices, v5))
  {
LABEL_6:
    if (++v5 >= [(__CFArray *)self->_mediaRemoteOutputDevices count])
    {
      goto LABEL_12;
    }
  }

  v6 = MRAVOutputDeviceCopyUniqueIdentifier();
  if (![routeCopy containsString:v6])
  {

    goto LABEL_6;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E62F8();
  }

  self->_routeChangeInProgress = 1;
  MRAVOutputContextGetSharedAudioPresentationContext();
  dispatchQueue = self->_dispatchQueue;
  v8 = routeCopy;
  MRAVOutputContextAddOutputDevice();

LABEL_12:
}

- (void)smartRoutingChangeRoute:(id)route
{
  routeCopy = route;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10004CD00;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = routeCopy;
  v6 = routeCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_smartRoutingChangeRoute:(id)route
{
  routeCopy = route;
  if (![(__CFArray *)self->_mediaRemoteOutputDevices count])
  {
    goto LABEL_12;
  }

  v5 = 0;
  while (!CFArrayGetValueAtIndex(self->_mediaRemoteOutputDevices, v5))
  {
LABEL_6:
    if (++v5 >= [(__CFArray *)self->_mediaRemoteOutputDevices count])
    {
      goto LABEL_12;
    }
  }

  v6 = MRAVOutputDeviceCopyUniqueIdentifier();
  if (![routeCopy containsString:v6])
  {

    goto LABEL_6;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E6338();
  }

  self->_routeChangeInProgress = 1;
  MRAVOutputContextGetSharedAudioPresentationContext();
  dispatchQueue = self->_dispatchQueue;
  v8 = routeCopy;
  MRAVOutputContextSetOutputDevice();

LABEL_12:
}

- (void)_smartRoutingRouteCompleted:(__CFError *)completed withUUID:(id)d
{
  dCopy = d;
  if (completed)
  {
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E6378();
    }
  }

  else
  {
    if (dword_1002F6778 <= 40 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E63B8();
    }

    if (self->_proactiveRoutingInProgress)
    {
      self->_proactiveRoutingInProgress = 0;
      self->_routeChangeDueToProactiveRouting = 1;
      if (GestaltGetDeviceClass() == 1)
      {
        [(BTSmartRoutingDaemon *)self _evaluateTemporaryOverride:dCopy];
      }
    }

    else if (self->_prefSmartRoutingEnabledPhase3 && (([dCopy containsString:@"-tacl"] & 1) != 0 || objc_msgSend(dCopy, "containsString:", @"-tsco")))
    {
      smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_10004D040;
      v10[3] = &unk_1002B7FA8;
      v11 = dCopy;
      selfCopy = self;
      [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v10];
    }

    else
    {
      v8 = self->_smartRoutingWxDeviceMap;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10004D11C;
      v9[3] = &unk_1002B8168;
      v9[4] = self;
      [(NSMutableDictionary *)v8 enumerateKeysAndObjectsUsingBlock:v9];
    }
  }
}

- (void)_smartRoutingLowerRateScan
{
  v3 = dispatch_time(0, 10000000000);
  smartRoutingLowerScanRateTimer = self->_smartRoutingLowerScanRateTimer;
  if (smartRoutingLowerScanRateTimer)
  {

    dispatch_source_set_timer(smartRoutingLowerScanRateTimer, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v6 = self->_smartRoutingLowerScanRateTimer;
    self->_smartRoutingLowerScanRateTimer = v5;

    v7 = self->_smartRoutingLowerScanRateTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10004D390;
    handler[3] = &unk_1002B6880;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_source_set_timer(self->_smartRoutingLowerScanRateTimer, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_smartRoutingLowerScanRateTimer);
  }
}

- (void)_aaControllerEnsureStopped
{
  aaController = self->_aaController;
  if (aaController)
  {
    [(AAController *)aaController invalidate];
    v4 = self->_aaController;
    self->_aaController = 0;
  }
}

- (void)_activityMonitorEnsureStarted
{
  p_activityLevelNotifyToken = &self->_activityLevelNotifyToken;
  if (self->_activityLevelNotifyToken == -1)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E6470();
    }

    dispatchQueue = self->_dispatchQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004D684;
    v6[3] = &unk_1002B6DF0;
    v6[4] = self;
    notify_register_dispatch("com.apple.sharing.activity-level-changed", p_activityLevelNotifyToken, dispatchQueue, v6);
    activityLevelNotifyToken = self->_activityLevelNotifyToken;
    state64 = 0;
    notify_get_state(activityLevelNotifyToken, &state64);
    self->_activityLevel = state64;
    [(BTSmartRoutingDaemon *)self _nearbyInfoActivityChanged];
    [(BTSmartRoutingDaemon *)self _nearbyInfoSetAudioRoutingScore];
  }
}

- (void)_callMonitorEnsureStarted
{
  if (!self->_callMonitor)
  {
    v9[10] = v2;
    v9[11] = v3;
    v5 = objc_alloc_init(CUSystemMonitor);
    callMonitor = self->_callMonitor;
    self->_callMonitor = v5;
    v7 = v5;

    [(CUSystemMonitor *)v7 setDispatchQueue:self->_dispatchQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004D81C;
    v9[3] = &unk_1002B6D18;
    v9[4] = v7;
    v9[5] = self;
    v8 = objc_retainBlock(v9);
    [(CUSystemMonitor *)v7 setCallChangedHandler:v8];
    [(CUSystemMonitor *)v7 activateWithCompletion:v8];
  }
}

- (void)_connectedDeviceMonitorEnsureStopped
{
  if (self->_connectedDiscovery)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E66F4();
    }

    [(CBDiscovery *)self->_connectedDiscovery invalidate];
    connectedDiscovery = self->_connectedDiscovery;
    self->_connectedDiscovery = 0;
  }
}

- (void)_constructAndSendTipiScoreMessageToWx:(id)wx withScore:(int)score
{
  wxCopy = wx;
  smartRoutingController = self->_smartRoutingController;
  if (!smartRoutingController)
  {
    [(BTSmartRoutingDaemon *)self _smartRoutingControllerEnsureStarted];
    smartRoutingController = self->_smartRoutingController;
  }

  v8 = smartRoutingController;
  btAddress = [wxCopy btAddress];
  v10 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:btAddress];
  v11 = v10;
  v12 = &stru_1002C1358;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  if ([(BTSmartRoutingDaemon *)self _wxFwSupportsTipiScore:v13])
  {
    v29 = 2;
    aaDevice = [wxCopy aaDevice];
    heartRateMonitorCapability = [aaDevice heartRateMonitorCapability];

    workoutObserver = [(BTSmartRoutingDaemon *)self workoutObserver];
    workoutActive = [workoutObserver workoutActive];
    if (score == 7 || !workoutActive)
    {
    }

    else
    {

      if (heartRateMonitorCapability)
      {
        goto LABEL_18;
      }
    }

    v18 = [(NSMutableDictionary *)self->_connectedDevicesSrModeCache objectForKeyedSubscript:btAddress];
    mode = [v18 mode];

    if (mode != 1 || [wxCopy isUSBPlugIn])
    {
      score = 8;
    }

    if (_os_feature_enabled_impl())
    {
      v20 = 3;
    }

    else
    {
      v20 = 2;
    }

    BYTE2(v29) = v20;
    HIBYTE(v29) = score;
    v21 = [NSData dataWithBytes:&v29 length:4];
    v22 = objc_alloc_init(CBDevice);
    [v22 setIdentifier:btAddress];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10004DFB8;
    v23[3] = &unk_1002B81F0;
    v24 = btAddress;
    scoreCopy = score;
    v28 = mode;
    v25 = wxCopy;
    v26 = v21;
    [(CBController *)v8 sendSmartRoutingInformation:v21 device:v22 completionHandler:v23];
  }

LABEL_18:
}

- (void)_dataRelayClientMonitorEnsureStarted
{
  if (!self->_dataRelayClientMonitorStarted)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E6848();
    }

    v3 = objc_alloc_init(DRClientManager);
    dataRelayClientMonitor = self->_dataRelayClientMonitor;
    self->_dataRelayClientMonitor = v3;
    v5 = v3;

    self->_dataRelayClientMonitorStarted = 1;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10004E19C;
    v9[3] = &unk_1002B8240;
    v9[4] = self;
    v6 = objc_retainBlock(v9);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10004E52C;
    v8[3] = &unk_1002B8240;
    v8[4] = self;
    v7 = objc_retainBlock(v8);
    [(DRClientManager *)self->_dataRelayClientMonitor setServerFoundHandler:v6];
    [(DRClientManager *)self->_dataRelayClientMonitor setServerLostHandler:v7];
  }
}

- (void)_dataRelayAddRequestedDataTypesForServer:(id)server
{
  serverCopy = server;
  if ([(SRWorkoutObserver *)self->_workoutObserver workoutActive])
  {
    v5 = [serverCopy availableDataTypes] & 3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10004E888;
    v6[3] = &unk_1002B8288;
    v7 = serverCopy;
    v8 = v5;
    [v7 addRequestedDataTypes:v5 completion:v6];
  }
}

- (void)_dataRelayRemoveRequestedDataTypesForServer:(id)server
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004EA48;
  v4[3] = &unk_1002B8288;
  serverCopy = server;
  v6 = [serverCopy availableDataTypes] & 3;
  v3 = serverCopy;
  [v3 removeRequestedDataTypes:v6 completion:v4];
}

- (void)_mediaRouteDiscoveryStarted
{
  if (!self->_discoverySession)
  {
    block[7] = v2;
    block[8] = v3;
    if (!self->_discoverySessionInitializing)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E6AF8();
      }

      self->_discoverySessionInitializing = 1;
      dispatchQueueAVSys = self->_dispatchQueueAVSys;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10004EC40;
      block[3] = &unk_1002B6880;
      block[4] = self;
      dispatch_async(dispatchQueueAVSys, block);
    }
  }
}

- (void)_mediaRouteDiscoveryStopped
{
  discoverySessionToken = self->_discoverySessionToken;
  self->_discoverySessionToken = 0;
  discoverySession = self->_discoverySession;
  self->_discoverySession = 0;
  if (discoverySession)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E6B14();
    }

    dispatchQueueAVSys = self->_dispatchQueueAVSys;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10004EF14;
    v7[3] = &unk_1002B8340;
    v7[4] = discoverySession;
    v7[5] = discoverySessionToken;
    dispatch_async(dispatchQueueAVSys, v7);
  }

  mediaRemoteOutputDevices = self->_mediaRemoteOutputDevices;
  if (mediaRemoteOutputDevices)
  {
    CFRelease(mediaRemoteOutputDevices);
  }

  self->_mediaRemoteOutputDevices = 0;
}

- (void)_mediaRouteMonitorEnsureStarted
{
  if (!self->_mediaRouteMonitorObservingActiveAudioRoute)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E6B30();
    }

    if (self->_prefSmartRoutingEnabledPhase3)
    {
      self->_mediaRouteMonitorObservingActiveAudioRoute = 1;
      v3 = +[AVSystemController sharedAVSystemController];
      v4 = +[NSNotificationCenter defaultCenter];
      v5 = [NSArray arrayWithObjects:AVSystemController_SomeSessionIsPlayingDidChangeNotification, AVSystemController_NowPlayingAppIsPlayingDidChangeNotification, AVSystemController_CallIsActiveDidChangeNotification, AVSystemController_HighestArbitrationPriorityForTipiDidChangeNotification, 0];
      [v3 setAttribute:v5 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];
      [v4 removeObserver:self name:AVSystemController_SomeSessionIsPlayingDidChangeNotification object:v3];
      [v4 removeObserver:self name:AVSystemController_ServerConnectionDiedNotification object:v3];
      [v4 removeObserver:self name:AVSystemController_NowPlayingAppIsPlayingDidChangeNotification object:v3];
      [v4 removeObserver:self name:AVSystemController_CallIsActiveDidChangeNotification object:v3];
      [v4 removeObserver:self name:AVSystemController_HighestArbitrationPriorityForTipiDidChangeNotification object:v3];
      [v4 removeObserver:self name:@"CdSignalAudioInterruptedChanged" object:0];
      [v4 addObserver:self selector:"_mediaRouteMonitorActivityLevelUpdate:" name:AVSystemController_SomeSessionIsPlayingDidChangeNotification object:v3];
      [v4 addObserver:self selector:"_handleMediaServerConnectionDied:" name:AVSystemController_ServerConnectionDiedNotification object:v3];
      [v4 addObserver:self selector:"_handleMediaPlayStateChange:" name:AVSystemController_NowPlayingAppIsPlayingDidChangeNotification object:v3];
      [v4 addObserver:self selector:"_handleCallStateChange:" name:AVSystemController_CallIsActiveDidChangeNotification object:v3];
      [v4 addObserver:self selector:"_handleHighestAudioCategoryChange:" name:AVSystemController_HighestArbitrationPriorityForTipiDidChangeNotification object:v3];
      [v4 addObserver:self selector:"_handleMediaPauseStateChanged" name:@"CdSignalAudioInterruptedChanged" object:0];
      _queryLocalAudioCategory = [(BTSmartRoutingDaemon *)self _queryLocalAudioCategory];
      [(BTSmartRoutingDaemon *)self _updateLocalAudioCategory:_queryLocalAudioCategory];
      dispatchQueueAVSys = self->_dispatchQueueAVSys;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10004F250;
      block[3] = &unk_1002B6880;
      block[4] = self;
      dispatch_async(dispatchQueueAVSys, block);
    }
  }
}

- (void)_mediaRouteMonitorActiveAudioRouteChanged:(id)changed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004F394;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_mediaRouteMonitorSpeakRoute
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E6ED0();
  }

  v3 = [NSBundle bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.BTUserNotifications.bundle"];
  if (!v3)
  {
    v5 = GestaltCopyAnswer();
    goto LABEL_8;
  }

  v4 = CULocalizedStringEx();
  v5 = GestaltCopyAnswer();
  if (!v4)
  {
LABEL_8:
    v6 = @"?";
    goto LABEL_9;
  }

  v6 = [NSString stringWithFormat:v4, v5];

LABEL_9:
  v7 = objc_alloc_init(CUVoiceSession);
  [v7 setDispatchQueue:self->_dispatchQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100050408;
  v8[3] = &unk_1002B6A38;
  v8[4] = v7;
  [v7 speakText:v6 flags:0 completion:v8];
}

- (void)_mediaRouteMonitorActivityLevelUpdate:(id)update
{
  dispatchQueueAVSys = self->_dispatchQueueAVSys;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100050500;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueueAVSys, block);
}

- (void)_mediaRouteHijackResponseHandlerFor:(id)for allowedToHijack:(BOOL)hijack withReason:(id)reason
{
  hijackCopy = hijack;
  forCopy = for;
  reasonCopy = reason;
  v9 = objc_alloc_init(BTAudioRoutingResponse);
  v10 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:forCopy];
  if (hijackCopy)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E6FA0();
    }

    v11 = 1;
    [v9 setAction:1];
    [v9 setDeviceAddress:forCopy];
    [v9 setReason:@"Tipi device hijack was successful"];
    self->_autoRoutingResponseTicks = mach_absolute_time();
  }

  else
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E6F84();
    }

    v12 = 3;
    [v9 setAction:3];
    [v9 setDeviceAddress:0];
    [v9 setReason:reasonCopy];
    reason = [v9 reason];
    v14 = [reason isEqualToString:@"Backoff"];

    if (v14)
    {
      v12 = 4;
      [v9 setAction:4];
    }

    reason2 = [v9 reason];
    v16 = [reason2 isEqualToString:@"Ambiguity"];

    if (v16)
    {
      v11 = 2;
    }

    else
    {
      v11 = v12;
    }
  }

  [v9 setClientID:{objc_msgSend(v10, "audioRoutingClientID")}];
  audioRoutingResponse = [v10 audioRoutingResponse];

  if (audioRoutingResponse)
  {
    audioRoutingResponse2 = [v10 audioRoutingResponse];
    [(BTSmartRoutingDaemon *)self _respondRoutingRequest:v9 withResponseHandler:audioRoutingResponse2 wxAddress:forCopy];
  }

  if (hijackCopy)
  {
    otherTipiDeviceBTAddress = [v10 otherTipiDeviceBTAddress];

    if (otherTipiDeviceBTAddress)
    {
      v20 = objc_alloc_init(NSMutableDictionary);
      [v20 setObject:&__kCFBooleanTrue forKey:@"audioRoutingSetOwnershipToFalse"];
      [v20 setObject:@"Hijackv2" forKey:@"reason"];
      v21 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v10 otherTipiAudioCategory]);
      [v20 setObject:v21 forKey:@"localscore"];

      v22 = [NSNumber numberWithInt:[(SRStats *)self->_stats hijackScore]];
      [v20 setObject:v22 forKey:@"audioRoutingScore"];

      v23 = [NSNumber numberWithInt:[(SRStats *)self->_stats hijackScore]];
      [v20 setObject:v23 forKey:@"remotescore"];

      if ([v10 otherTipiAudioCategory] >= 0xC9)
      {
        [v20 setObject:&__kCFBooleanTrue forKey:@"SmartRoutingKeyShowNearbyUI"];
      }

      otherTipiDeviceBTAddress2 = [v10 otherTipiDeviceBTAddress];
      [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:v20 andWxAddress:forCopy andOtherAddress:otherTipiDeviceBTAddress2];
    }

    mach_absolute_time();
    showBannerConnectedLastTicks = self->_showBannerConnectedLastTicks;
    v26 = UpTicksToSeconds();
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E6FBC(v10);
    }

    if (([v10 routed] & 1) != 0 || self->_showBannerConnectedLastTicks && self->_secondsBetweenConnectBanner > v26)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E7020();
      }
    }

    else
    {
      deviceName = [v10 deviceName];
      deviceAddress = [v10 deviceAddress];
      v29 = deviceAddress;
      if (deviceAddress)
      {
        v30 = deviceAddress;
      }

      else
      {
        v30 = @"?";
      }

      -[BTSmartRoutingDaemon _smartRoutingShowBanner:withDevice:andDeviceAddress:andProductID:andCentralContentItemTxt:andTimeout:andDeviceType:](self, "_smartRoutingShowBanner:withDevice:andDeviceAddress:andProductID:andCentralContentItemTxt:andTimeout:andDeviceType:", 1, deviceName, v30, [v10 productID], @"Connected", 0, 4.0);
    }
  }

  [(BTSmartRoutingDaemon *)self _startHijackMetricSubmission:v11 wxAddress:forCopy version:@"V2"];
}

- (void)_updateRoutingActionForManuallyRoute
{
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000519DC;
  v3[3] = &unk_1002B8168;
  v3[4] = self;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)_nearbyInfoDiscoveryEnsureStarted
{
  if (!self->_nearbyInfoDiscovery)
  {
    v17[6] = v5;
    v17[7] = v4;
    v17[14] = v2;
    v17[15] = v3;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E71FC();
    }

    v7 = objc_alloc_init(SFDeviceDiscovery);
    nearbyInfoDiscovery = self->_nearbyInfoDiscovery;
    self->_nearbyInfoDiscovery = v7;

    [(SFDeviceDiscovery *)v7 setChangeFlags:9];
    [(SFDeviceDiscovery *)v7 setDiscoveryFlags:33];
    [(SFDeviceDiscovery *)v7 setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)v7 setPurpose:@"SmartRouting"];
    [(SFDeviceDiscovery *)v7 setScanRate:20];
    [(SFDeviceDiscovery *)v7 setRssiThreshold:-75];
    if (self->_prefSmartRoutingEnabledPhase3 && GestaltGetDeviceClass() != 6)
    {
      [(SFDeviceDiscovery *)v7 setOverrideScreenOff:1];
    }

    [(BTSmartRoutingDaemon *)self _powerLogSmartRoutingScanStarted:16];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100051E98;
    v17[3] = &unk_1002B8428;
    v17[4] = self;
    v17[5] = v7;
    [(SFDeviceDiscovery *)v7 setDeviceFoundHandler:v17];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100051EBC;
    v16[3] = &unk_1002B8428;
    v16[4] = self;
    v16[5] = v7;
    [(SFDeviceDiscovery *)v7 setDeviceLostHandler:v16];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100051EE0;
    v15[3] = &unk_1002B8450;
    v15[4] = self;
    v15[5] = v7;
    [(SFDeviceDiscovery *)v7 setDeviceChangedHandler:v15];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100051F04;
    v14[3] = &unk_1002B68A8;
    v14[4] = self;
    v14[5] = v7;
    [(SFDeviceDiscovery *)v7 activateWithCompletion:v14];
    self->_prefSmartRoutingForcedDisconnectionTicks = mach_absolute_time();
    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    prefSmartRoutingForcedDisconnectionStartTimer = self->_prefSmartRoutingForcedDisconnectionStartTimer;
    self->_prefSmartRoutingForcedDisconnectionStartTimer = v9;
    v11 = v9;

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100051FAC;
    v13[3] = &unk_1002B6D18;
    v13[4] = v11;
    v13[5] = self;
    dispatch_source_set_event_handler(v11, v13);
    v12 = self->_prefSmartRoutingForcedDisconnectionStartSeconds + 1.0;
    CUDispatchTimerSet();
    dispatch_activate(v11);
    [(BTSmartRoutingDaemon *)self _nearbyInfoSetAudioRoutingScore];
  }
}

- (BOOL)_checkValidBatteryValue:(id)value
{
  valueCopy = value;
  v4 = [valueCopy batteryType] == 2 || objc_msgSend(valueCopy, "batteryType") == 3 || objc_msgSend(valueCopy, "batteryType") == 4;

  return v4;
}

- (BOOL)_isSmartRoutingCapableDevice:(id)device
{
  model = [device model];
  if ([model containsString:@"Mac"] & 1) != 0 || (objc_msgSend(model, "hasPrefix:", @"iPhone") & 1) != 0 || (objc_msgSend(model, "hasPrefix:", @"iPad") & 1) != 0 || (objc_msgSend(model, "hasPrefix:", @"Watch") & 1) != 0 || (objc_msgSend(model, "hasPrefix:", @"iPod"))
  {
    v4 = 1;
  }

  else
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E7290();
    }

    v4 = 0;
  }

  return v4;
}

- (void)_cancelStemClickTransaction
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E72D0();
  }

  stemClickTransactionTimer = self->_stemClickTransactionTimer;
  if (stemClickTransactionTimer)
  {
    v4 = stemClickTransactionTimer;
    dispatch_source_cancel(v4);
    v5 = self->_stemClickTransactionTimer;
    self->_stemClickTransactionTimer = 0;
  }

  _getCurrentRoute = [(BTSmartRoutingDaemon *)self _getCurrentRoute];
  if ([_getCurrentRoute isEqualToString:@"Bluetooth"])
  {
    _getCurrentBTRouteAddress = [(BTSmartRoutingDaemon *)self _getCurrentBTRouteAddress];
  }

  else
  {
    _getCurrentBTRouteAddress = 0;
  }

  [(BTSmartRoutingDaemon *)self _submitStemGestureMetric:_getCurrentBTRouteAddress];
}

- (void)_cancelStemClickResumeTimer
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E72EC();
  }

  stemClickResumeTimer = self->_stemClickResumeTimer;
  if (stemClickResumeTimer)
  {
    v5 = stemClickResumeTimer;
    dispatch_source_cancel(v5);
    v4 = self->_stemClickResumeTimer;
    self->_stemClickResumeTimer = 0;
  }
}

- (void)_checkStemClickResponse
{
  v3 = [(NSNumber *)self->_localDeviceAudioCategory intValue]> 100;
  stats = self->_stats;

  [(SRStats *)stats setStemClickResumeResultedInPlayback:v3];
}

- (void)_startStemClickResumeTimer
{
  stemClickResumeTimer = self->_stemClickResumeTimer;
  if (stemClickResumeTimer)
  {
    v4 = stemClickResumeTimer;
    dispatch_source_cancel(v4);
    v5 = self->_stemClickResumeTimer;
    self->_stemClickResumeTimer = 0;
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v7 = self->_stemClickResumeTimer;
  self->_stemClickResumeTimer = v6;

  [(SRStats *)self->_stats setLastStemClickResumeTick:mach_absolute_time()];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100052484;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E7308();
  }

  CUDispatchTimerSet();
  dispatch_activate(v6);
}

- (void)_resetStemClickTransaction
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E7368();
  }

  [(BTSmartRoutingDaemon *)self _cancelStemClickTransaction];

  [(BTSmartRoutingDaemon *)self _startStemClickTransaction];
}

- (void)_startStemClickTransaction
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E7384();
  }

  [(BTSmartRoutingDaemon *)self _startStemClickTransactionTimer];
}

- (void)_startStemClickTransactionTimer
{
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  objc_storeStrong(&self->_stemClickTransactionTimer, v3);
  [(SRStats *)self->_stats setStemClicksInTransaction:([(SRStats *)self->_stats stemClicksInTransaction]+ 1)];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000526E8;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v3, handler);
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E73A0();
  }

  CUDispatchTimerSet();
  dispatch_activate(v3);
}

- (void)_recordStemClickToResponseDelay
{
  mach_absolute_time();
  [(SRStats *)self->_stats lastStemClickResumeTick];
  v3 = UpTicksToMilliseconds();
  stats = self->_stats;

  [(SRStats *)stats setStemClickToResponseDelay:v3];
}

- (void)_checkTriangleRecovery
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  nearbyInfoDevices = self->_nearbyInfoDevices;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100052964;
  v17[3] = &unk_1002B7DC8;
  v17[4] = &v18;
  [(NSMutableDictionary *)nearbyInfoDevices enumerateKeysAndObjectsUsingBlock:v17];
  isInAnyTipi = [(BTSmartRoutingDaemon *)self isInAnyTipi];
  _isAnyUSBAudioDevicePluggedIn = [(BTSmartRoutingDaemon *)self _isAnyUSBAudioDevicePluggedIn];
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v6 = *(v19 + 24);
    magnetConnected = [(SRSourceDevice *)self->_sourceDevice magnetConnected];
    v8 = "no";
    if (v6)
    {
      v9 = "yes";
    }

    else
    {
      v9 = "no";
    }

    if (magnetConnected)
    {
      v10 = "yes";
    }

    else
    {
      v10 = "no";
    }

    if (isInAnyTipi)
    {
      v11 = "yes";
    }

    else
    {
      v11 = "no";
    }

    if (_isAnyUSBAudioDevicePluggedIn)
    {
      v8 = "yes";
    }

    prefSmartRoutingWatchTriangleMagnet = self->_prefSmartRoutingWatchTriangleMagnet;
    v16 = v8;
    v13 = v10;
    v14 = v11;
    v12 = v9;
    LogPrintF();
  }

  if (((*(v19 + 24) | isInAnyTipi) & 1) != 0 || _isAnyUSBAudioDevicePluggedIn & 1 | ![(SRSourceDevice *)self->_sourceDevice magnetConnected])
  {
    [(BTSmartRoutingDaemon *)self _cancelTriangleRecoveryTimer:v12];
  }

  else
  {
    [(BTSmartRoutingDaemon *)self _nearbyDeviceInfoTriangleRecoveryTimer];
  }

  _Block_object_dispose(&v18, 8);
}

- (void)_cancelTriangleRecoveryTimer
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E7400();
  }

  nearbyInfoDevicesTriangleRecoveryTimer = self->_nearbyInfoDevicesTriangleRecoveryTimer;
  if (nearbyInfoDevicesTriangleRecoveryTimer)
  {
    v5 = nearbyInfoDevicesTriangleRecoveryTimer;
    dispatch_source_cancel(v5);
    v4 = self->_nearbyInfoDevicesTriangleRecoveryTimer;
    self->_nearbyInfoDevicesTriangleRecoveryTimer = 0;
  }
}

- (void)_connectToHeadphoneWithAddress:(id)address
{
  addressCopy = address;
  if (addressCopy)
  {
    v5 = objc_alloc_init(CBDevice);
    [v5 setIdentifier:addressCopy];
    v6 = objc_alloc_init(CBConnection);
    [v6 setPeerDevice:v5];
    [v6 setDispatchQueue:self->_dispatchQueue];
    [v6 setConnectionFlags:2];
    [v6 setServiceFlags:0xFFFFFFFFLL];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E741C();
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100052C84;
    v7[3] = &unk_1002B68A8;
    v8 = addressCopy;
    v9 = v6;
    [v6 activateWithCompletion:v7];
  }

  else if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E745C();
  }
}

- (void)_nearbyInfoSetAudioRoutingScore
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E7478(self);
  }

  v3 = objc_alloc_init(SFClient);
  if ([(CBDiscovery *)self->_connectedDiscovery bluetoothState]== 5)
  {
    score = self->_score;
  }

  else
  {
    score = 0;
  }

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100052E18;
  v5[3] = &unk_1002B68A8;
  v5[4] = v3;
  v5[5] = self;
  [v3 setAudioRoutingScore:score completion:v5];
  [(BTSmartRoutingDaemon *)self _sendTipiScoreUpdateToWx];
}

- (void)_nearbyInfoActivityChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    score = self->_score;
    if (score > 0xF)
    {
      v4 = "?";
    }

    else
    {
      v4 = off_1002B8F50[score];
    }

    v33 = self->_score;
    v35 = v4;
    activityLevel = self->_activityLevel;
    LogPrintF();
  }

  if (self->_activityLevelTicks)
  {
    mach_absolute_time();
    activityLevelTicks = self->_activityLevelTicks;
    activityLevelDeltaInSeconds = self->_activityLevelDeltaInSeconds + UpTicksToSeconds();
    self->_activityLevelDeltaInSeconds = activityLevelDeltaInSeconds;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1)
      {
LABEL_12:
        activityLevel = activityLevelDeltaInSeconds;
        v33 = self->_activityLevel;
        LogPrintF();
        goto LABEL_14;
      }

      if (_LogCategory_Initialize())
      {
        activityLevelDeltaInSeconds = self->_activityLevelDeltaInSeconds;
        goto LABEL_12;
      }
    }
  }

LABEL_14:
  v7 = self->_activityLevel;
  if (v7 <= 9)
  {
    if (v7 == 3)
    {
      if (self->_activityLevelMediaPlaying)
      {
        v14 = 4;
LABEL_43:
        *(v40 + 6) = v14;
        goto LABEL_44;
      }

      v15 = self->_activityLevelDeltaInSeconds;
      if (v15 <= 0x19)
      {
        if (v15 != 25)
        {
          goto LABEL_44;
        }

        *(v40 + 6) = 2;
        if (!self->_activityLevelTicks)
        {
          self->_activityLevelTicks = mach_absolute_time();
        }

        activityLevelDelayTimer = self->_activityLevelDelayTimer;
        if (activityLevelDelayTimer)
        {
          v26 = activityLevelDelayTimer;
          dispatch_source_cancel(v26);
          v27 = self->_activityLevelDelayTimer;
          self->_activityLevelDelayTimer = 0;
        }

        v13 = 25;
        goto LABEL_71;
      }

LABEL_42:
      v14 = 1;
      goto LABEL_43;
    }

    if (v7 != 7)
    {
      goto LABEL_44;
    }

LABEL_28:
    v9 = self->_activityLevelDeltaInSeconds;
    if (v9 <= 0x1DF && self->_screenActive)
    {
      if (v9 != 25 && v9)
      {
        goto LABEL_44;
      }

      if (!self->_activityLevelTicks)
      {
        self->_activityLevelTicks = mach_absolute_time();
      }

      *(v40 + 6) = 2;
      v10 = self->_activityLevelDelayTimer;
      if (v10)
      {
        v11 = v10;
        dispatch_source_cancel(v11);
        v12 = self->_activityLevelDelayTimer;
        self->_activityLevelDelayTimer = 0;
      }

      if (self->_screenActive)
      {
        v13 = 480;
      }

      else
      {
        v13 = 25;
      }

LABEL_71:
      [(BTSmartRoutingDaemon *)self _nearbyInfoActivityDelayCheck:v13, activityLevel, v33, v35];
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v7 == 10)
  {
    goto LABEL_28;
  }

  if (v7 == 11 || v7 == 14)
  {
    self->_activityLevelDeltaInSeconds = 25;
    self->_activityLevelTicks = 0;
    if (self->_activityCriticalTimer)
    {
      v8 = 7;
    }

    else
    {
      v8 = 6;
    }

    *(v40 + 6) = v8;
    if ([(SFDeviceDiscovery *)self->_nearbyInfoDiscovery scanRate:activityLevel]!= 40)
    {
      [(SFDeviceDiscovery *)self->_nearbyInfoDiscovery setScanRate:40];
    }

    if ([(SFDeviceDiscovery *)self->_wxDiscovery scanRate]!= 40)
    {
      [(SFDeviceDiscovery *)self->_wxDiscovery setScanRate:40];
    }

    [(BTSmartRoutingDaemon *)self _smartRoutingLowerRateScan];
  }

LABEL_44:
  v16 = self->_activityLevelMediaPlaying || [(CUSystemMonitor *)self->_callMonitor activeCallCount]> 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100053400;
  v37[3] = &unk_1002B8478;
  v38 = v16;
  v37[4] = self;
  v37[5] = &v39;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v37, activityLevel, v33];
  v18 = *(v40 + 6);
  if (v18)
  {
    v19 = self->_score;
    if (v18 != v19)
    {
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (v21 = _LogCategory_Initialize(), v19 = self->_score, v21))
        {
          if (v19 > 0xF)
          {
            v20 = "?";
          }

          else
          {
            v20 = off_1002B8F50[v19];
          }

          v22 = *(v40 + 6);
          if (v22 > 0xF)
          {
            v23 = "?";
          }

          else
          {
            v23 = off_1002B8F50[v22];
          }

          v35 = *(v40 + 6);
          v36 = v23;
          v32 = v19;
          v34 = v20;
          LogPrintF();
          v19 = self->_score;
        }
      }

      self->_score = *(v40 + 6);
      [(BTSmartRoutingDaemon *)self _nearbyInfoSetAudioRoutingScore:v32];
      v24 = +[SRConnectionManager sharedSRConnectionManager];
      [v24 tipiScoreChanged:*(v40 + 6)];

      [(CUCoalescer *)self->_evaluatorCoalescer trigger];
      if (self->_prefProactiveOwnershipArbitration)
      {
        [(BTSmartRoutingDaemon *)self _notifyOtherTipiDeviceTipiScoreChanged:v19 andNewScore:self->_score];
        if (*(v40 + 6) == 1 && !self->_cdDeviceIdentifier)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          if (self->_overrideMessageSent)
          {
            [(BTSmartRoutingDaemon *)self _sendNowPlayingTemporaryOverrideIfNeeded:0];
          }

          self->_startIdleTicks = mach_absolute_time();
          highActivityLevelTimer = self->_highActivityLevelTimer;
          if (highActivityLevelTimer)
          {
            v29 = highActivityLevelTimer;
            dispatch_source_cancel(v29);
            v30 = self->_highActivityLevelTimer;
            self->_highActivityLevelTimer = 0;
          }
        }

        else
        {
          self->_startIdleTicks = 0;
        }
      }
    }
  }

  _Block_object_dispose(&v39, 8);
}

- (void)_nearbyInfoActivityCriticalStart
{
  v3 = self->_activityCriticalTimer;
  if (v3)
  {
    v4 = v3;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E7584();
    }

    CUDispatchTimerSet();
  }

  else
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E75C8();
    }

    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    activityCriticalTimer = self->_activityCriticalTimer;
    self->_activityCriticalTimer = v5;

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000535E0;
    v7[3] = &unk_1002B6D18;
    v4 = v5;
    v8 = v4;
    selfCopy = self;
    dispatch_source_set_event_handler(v4, v7);
    CUDispatchTimerSet();
    dispatch_activate(v4);
  }
}

- (void)_pairedDeviceMonitorEnsureStopped
{
  if (self->_pairedDiscovery)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E76E8();
    }

    [(CBDiscovery *)self->_pairedDiscovery invalidate];
    pairedDiscovery = self->_pairedDiscovery;
    self->_pairedDiscovery = 0;
  }
}

- (void)_nearbyInfoActivityDelayCheck:(unint64_t)check
{
  v4 = dispatch_time(0, 1000000000 * check);
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E7704();
  }

  activityLevelDelayTimer = self->_activityLevelDelayTimer;
  if (activityLevelDelayTimer)
  {

    dispatch_source_set_timer(activityLevelDelayTimer, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v7 = self->_activityLevelDelayTimer;
    self->_activityLevelDelayTimer = v6;

    v8 = self->_activityLevelDelayTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100053AD4;
    handler[3] = &unk_1002B6880;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_source_set_timer(self->_activityLevelDelayTimer, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_activityLevelDelayTimer);
  }
}

- (void)_pipeEnsureStarted
{
  if (!self->_smartRoutingPipe)
  {
    v4 = objc_alloc_init(SRLEPipe);
    smartRoutingPipe = self->_smartRoutingPipe;
    self->_smartRoutingPipe = v4;

    v6 = self->_smartRoutingPipe;
    dispatchQueue = self->_dispatchQueue;

    [(SRLEPipe *)v6 activateWithDispatch:dispatchQueue];
  }
}

- (void)_powerMonitorEnsureStopped
{
  if (self->_powerMonitor)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E78C8();
    }

    [(CUSystemMonitor *)self->_powerMonitor invalidate];
    powerMonitor = self->_powerMonitor;
    self->_powerMonitor = 0;
  }

  screenLockedLingerTimer = self->_screenLockedLingerTimer;
  if (screenLockedLingerTimer)
  {
    v5 = screenLockedLingerTimer;
    dispatch_source_cancel(v5);
    v6 = self->_screenLockedLingerTimer;
    self->_screenLockedLingerTimer = 0;
  }

  sleepWakeMonitor = self->_sleepWakeMonitor;
  if (sleepWakeMonitor)
  {
    [(CUSleepWakeMonitor *)sleepWakeMonitor invalidate];
    v8 = self->_sleepWakeMonitor;
    self->_sleepWakeMonitor = 0;

    self->_sleeping = 0;
    self->_sleepWakeState = 0;
  }
}

- (void)_powerMonitorScreenLockChanged
{
  if (self->_powerMonitor)
  {
    screenLockedLingerTimer = self->_screenLockedLingerTimer;
    if (self->_effectiveScreenLocked)
    {
      if (!screenLockedLingerTimer)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E7900();
        }

        v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
        v5 = self->_screenLockedLingerTimer;
        self->_screenLockedLingerTimer = v4;
        v6 = v4;

        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100054044;
        handler[3] = &unk_1002B6880;
        handler[4] = self;
        dispatch_source_set_event_handler(v6, handler);
        CUDispatchTimerSet();
        dispatch_activate(v6);
LABEL_16:
      }
    }

    else if (screenLockedLingerTimer)
    {
      if (dword_1002F6778 >= 31)
      {
        v6 = screenLockedLingerTimer;
      }

      else
      {
        if (dword_1002F6778 != -1 || _LogCategory_Initialize())
        {
          sub_1001E78E4();
        }

        v6 = self->_screenLockedLingerTimer;
        if (!v6)
        {
          goto LABEL_17;
        }
      }

      dispatch_source_cancel(v6);
      v7 = self->_screenLockedLingerTimer;
      self->_screenLockedLingerTimer = 0;

      goto LABEL_16;
    }

LABEL_17:
    [(BTSmartRoutingDaemon *)self _update];
  }
}

- (void)_relayConduitMessageEnsureStarted
{
  smartRoutingController = self->_smartRoutingController;
  if (!smartRoutingController)
  {
    [(BTSmartRoutingDaemon *)self _smartRoutingControllerEnsureStarted];
    smartRoutingController = self->_smartRoutingController;
  }

  v4 = smartRoutingController;
  v5 = v4;
  if (!self->_relayConduitMessageEnsureStarted)
  {
    self->_relayConduitMessageEnsureStarted = 1;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000542C4;
    v11[3] = &unk_1002B84C8;
    v11[4] = self;
    [(CBController *)v4 setRelayMessageHandler:v11];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E7960();
    }

    smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000543D0;
    v10[3] = &unk_1002B8168;
    v10[4] = self;
    [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000543DC;
    v9[3] = &unk_1002B6858;
    v9[4] = self;
    [(CBController *)v5 setTipiChangedHandler:v9];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100054B60;
    v7[3] = &unk_1002B6A38;
    v8 = v5;
    [(CBController *)v8 activateWithCompletion:v7];
  }
}

- (void)_relayConduitMessageReceived:(id)received andSourceDevice:(id)device messageType:(unsigned __int8)type messageData:(id)data
{
  typeCopy = type;
  receivedCopy = received;
  deviceCopy = device;
  dataCopy = data;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E7D38();
  }

  btAddressData = [receivedCopy btAddressData];
  v13 = CUPrintNSDataAddress();

  v105 = 0;
  if (v13)
  {
    if (typeCopy)
    {
      if (typeCopy == 1)
      {
        v14 = OPACKDecodeData();
        if (!v14)
        {
LABEL_54:

          goto LABEL_55;
        }

        if (dword_1002F6778 <= 40 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E7D94();
        }

        v15 = [v14 objectForKey:@"audioRoutingHijackRequest"];
        v16 = v15 == 0;

        if (!v16)
        {
          v17 = [v14 objectForKey:@"audioRoutingScore"];
          v18 = [v14 objectForKey:@"audioRoutingRequestID"];
          if (dword_1002F6778 <= 40 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001E7DD4(self, v13, v17);
          }

          -[BTSmartRoutingDaemon _mediaRouteHijackWithAudioScore:wxAddress:andAudioResponseID:](self, "_mediaRouteHijackWithAudioScore:wxAddress:andAudioResponseID:", [v17 intValue], v13, v18);

          goto LABEL_47;
        }

        v19 = [v14 objectForKey:@"audioRoutingHijackAnswer"];
        v20 = v19 == 0;

        if (!v20)
        {
          if (dword_1002F6778 <= 40 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001E7E58();
          }

          v82 = [v14 objectForKeyedSubscript:@"remotescore"];
          [(SRStats *)self->_stats setHijackActiveRemoteScore:0xFFFFFFFFLL];
          if (v82)
          {
            -[SRStats setHijackActiveRemoteScore:](self->_stats, "setHijackActiveRemoteScore:", [v82 intValue]);
          }

          [(BTSmartRoutingDaemon *)self _setHighPriorityTag:v13 withHighPriority:0];
          v25 = [v14 objectForKey:@"audioRoutingRequestID"];
          smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
          v100[0] = _NSConcreteStackBlock;
          v100[1] = 3221225472;
          v100[2] = sub_100056090;
          v100[3] = &unk_1002B8538;
          v101 = v13;
          v102 = v25;
          v103 = v14;
          selfCopy = self;
          [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v100];

          goto LABEL_47;
        }

        v21 = [v14 objectForKey:@"callState"];
        v22 = v21 == 0;

        if (!v22)
        {
LABEL_47:
          v27 = [v14 objectForKey:@"hijackBackoffTicks"];
          v28 = v27 == 0;

          if (!v28)
          {
            v29 = [v14 objectForKey:@"hijackBackoffTicks"];
            v30 = v29;
            if (self->_prefSmartRoutingBlockHijackWindowinSeconds && v29)
            {
              if ([v29 unsignedLongLongValue])
              {
                unsignedLongLongValue = [v30 unsignedLongLongValue];
                v31 = mach_absolute_time();
                prefSmartRoutingBlockHijackWindowinSeconds = self->_prefSmartRoutingBlockHijackWindowinSeconds;
                v33 = SecondsToUpTicks();
                v34 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v13];
                [v34 setHijackBackoffTicks:&unsignedLongLongValue[v31 - v33]];

                if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                {
                  sub_1001E7F00();
                }
              }

              else
              {
                if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                {
                  sub_1001E7F7C();
                }

                v35 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v13];
                hijackBackoffTicks = [v35 hijackBackoffTicks];

                if (hijackBackoffTicks)
                {
                  [(BTSmartRoutingDaemon *)self _hijackBackoffReset:v13 withReason:@"relayTimerZero"];
                }
              }
            }
          }

          goto LABEL_54;
        }

        v23 = [v14 objectForKey:@"audioRoutingSetOwnershipToFalse"];
        v24 = v23 == 0;

        if (!v24)
        {
          [(BTSmartRoutingDaemon *)self _receivedRelinquishOwnership:v14 wxAddress:v13];
          goto LABEL_47;
        }

        v37 = [v14 objectForKey:@"tipiHealingAttempt"];
        v38 = v37 == 0;

        if (!v38)
        {
          CFStringGetTypeID();
          v75 = CFDictionaryGetTypedValue();
          CFStringGetTypeID();
          v74 = CFDictionaryGetTypedValue();
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            v72 = v75;
            v73 = v74;
            LogPrintF();
          }

          CFStringGetTypeID();
          v84 = CFDictionaryGetTypedValue();
          CFStringGetTypeID();
          v78 = CFDictionaryGetTypedValue();
          v80 = NSDictionaryGetNSNumber();
          v44 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v13];
          [v44 setOtherTipiDeviceInfo:v84 andName:v78 andVersion:v80];

          v45 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v13];
          [v45 setIsRoutingActionInitialized:1];

          if (self->_activityLevelMediaPlaying || [(CUSystemMonitor *)self->_callMonitor activeCallCount]> 0)
          {
            v46 = 1;
          }

          else
          {
            v46 = [(NSString *)self->_cdDeviceIdentifier isEqualToString:v13];
          }

          v106[0] = @"tipiHealingAck";
          v47 = [(BTSmartRoutingDaemon *)self _myBluetoothAddressString:v72];
          v48 = v47;
          v49 = &stru_1002C1358;
          if (v47)
          {
            v49 = v47;
          }

          myModel = self->_myModel;
          v107[0] = v49;
          v107[1] = myModel;
          v106[1] = @"tipiHealingName";
          v106[2] = @"version";
          v106[3] = @"tipiHealingStreaming";
          v51 = @"NO";
          if (v46)
          {
            v51 = @"YES";
          }

          v107[2] = &off_1002CB618;
          v107[3] = v51;
          v77 = [NSDictionary dictionaryWithObjects:v107 forKeys:v106 count:4];

          [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:v77 andWxAddress:v13 andOtherAddress:0];
          self->_tipiElectionInProgress = 0;
          v52 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v13];
          otherTipiDeviceBTAddress = [v52 otherTipiDeviceBTAddress];

          [(BTSmartRoutingDaemon *)self _updateNearbyDeviceState:v13 withAddress:otherTipiDeviceBTAddress withEasyPairing:0 withState:1];
          v96 = 0;
          v97 = &v96;
          v98 = 0x2020000000;
          v99 = 0;
          v53 = self->_smartRoutingWxDeviceMap;
          v91[0] = _NSConcreteStackBlock;
          v91[1] = 3221225472;
          v91[2] = sub_100056520;
          v91[3] = &unk_1002B8560;
          v92 = v13;
          selfCopy2 = self;
          v94 = &v96;
          v95 = v46 & 1;
          [(NSMutableDictionary *)v53 enumerateKeysAndObjectsUsingBlock:v91];
          if (*(v97 + 24) == 1)
          {
            [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
          }

          _Block_object_dispose(&v96, 8);
          goto LABEL_47;
        }

        v39 = [v14 objectForKey:@"tipiHealingAck"];
        if (!v39 || (-[NSMutableDictionary objectForKeyedSubscript:](self->_smartRoutingWxDeviceMap, "objectForKeyedSubscript:", v13), v40 = objc_claimAutoreleasedReturnValue(), v41 = [v40 isTipiHealingV2Eligible], v40, v39, (v41 & 1) != 0))
        {
          v42 = [v14 objectForKey:@"nearbyAudioScore"];
          v43 = v42 == 0;

          if (v43)
          {
            v56 = [v14 objectForKey:@"otherDeviceAudioCategory"];
            v57 = v56 == 0;

            if (v57)
            {
              v58 = [v14 objectForKey:@"disableSmartRouting"];
              v59 = v58 == 0;

              if (!v59)
              {
                if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                {
                  sub_1001E7ECC();
                }

                [(BTSmartRoutingDaemon *)self _disconnectOtherTipiDevice:v13];
              }
            }

            else
            {
              [(BTSmartRoutingDaemon *)self _receivedAudioCategory:v13 withOptions:v14];
            }
          }

          else
          {
            [(BTSmartRoutingDaemon *)self _otherTipiDeviceTipiScoreChanged:v13 withOptions:v14];
          }

          goto LABEL_47;
        }

        v54 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v13];
        CFStringGetTypeID();
        v55 = CFDictionaryGetTypedValue();
        CFStringGetTypeID();
        v81 = CFDictionaryGetTypedValue();
        v85 = NSDictionaryGetNSNumber();
        [v54 setOtherTipiDeviceInfo:v55 andName:v81 andVersion:v85];
        CFStringGetTypeID();
        v79 = CFDictionaryGetTypedValue();
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E7E8C();
        }

        [v54 setIsRoutingActionInitialized:1];
        v60 = [(NSMutableDictionary *)self->_smartRoutingWxStatsMap objectForKeyedSubscript:v13];

        if (v60)
        {
          mach_absolute_time();
          v61 = [(NSMutableDictionary *)self->_smartRoutingWxStatsMap objectForKeyedSubscript:v13];
          [v61 thV2Ticks];
          UpTicksToSecondsF();
          v63 = v62;

          [(BTSmartRoutingDaemon *)self _submitMetricTipiHealingforDevice:v54 withDuration:1 andLegacy:v63];
        }

        self->_tipiElectionInProgress = 0;
        [(BTSmartRoutingDaemon *)self _updateNearbyDeviceState:v13 withAddress:v55 withEasyPairing:0 withState:1];
        tipiHealingTimer = self->_tipiHealingTimer;
        if (tipiHealingTimer)
        {
          v65 = tipiHealingTimer;
          dispatch_source_cancel(v65);
          v66 = self->_tipiHealingTimer;
          self->_tipiHealingTimer = 0;
        }

        v96 = 0;
        v97 = &v96;
        v98 = 0x2020000000;
        v99 = 0;
        otherTipiDeviceVersion = [v54 otherTipiDeviceVersion];
        [otherTipiDeviceVersion doubleValue];
        if (v68 < 1.2)
        {
        }

        else
        {
          otherTipiDeviceVersion2 = [v54 otherTipiDeviceVersion];
          v70 = otherTipiDeviceVersion2 == 0;

          if (!v70)
          {
            if (-[BTSmartRoutingDaemon _isManualConnection:](self, "_isManualConnection:", v13) && ([v54 ignoreManualConnect] & 1) == 0)
            {
              if (dword_1002F6778 <= 40 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              [v54 setRoutingAction:1];
              [(BTSmartRoutingDaemon *)self _setOwnership:v13 withHijackRequest:0 withOwnership:1];
              [(BTSmartRoutingDaemon *)self _sendIntendedRouteInfoUpdateToWx:receivedCopy withIntendedRoutingStatus:1];
            }

            else
            {
              if (dword_1002F6778 <= 40 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              [v54 setRoutingAction:3];
              [(BTSmartRoutingDaemon *)self _setOwnership:v13 withHijackRequest:0 withOwnership:0];
            }

            *(v97 + 24) = 1;
LABEL_122:
            [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
LABEL_123:
            _Block_object_dispose(&v96, 8);

            goto LABEL_47;
          }
        }

        if (dword_1002F6778 <= 40 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v71 = self->_smartRoutingWxDeviceMap;
        v87[0] = _NSConcreteStackBlock;
        v87[1] = 3221225472;
        v87[2] = sub_10005679C;
        v87[3] = &unk_1002B8588;
        v88 = v13;
        selfCopy3 = self;
        v90 = &v96;
        [(NSMutableDictionary *)v71 enumerateKeysAndObjectsUsingBlock:v87];

        if ((v97[3] & 1) == 0)
        {
          goto LABEL_123;
        }

        goto LABEL_122;
      }

      if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E7FB0();
      }
    }

    else if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E7D78();
    }
  }

  else if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E7FCC();
  }

LABEL_55:
}

- (BOOL)_shouldDelayRouteToSpeaker:(id)speaker
{
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  speakerCopy = speaker;
  v6 = [(NSMutableDictionary *)smartRoutingWxDeviceMap objectForKeyedSubscript:speakerCopy];
  v7 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:speakerCopy];

  if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E8250(v6, v7);
  }

  v8 = [v6 audioRoutingScore] == 201 && objc_msgSend(v6, "otherTipiAudioCategory") != 501 && (objc_msgSend(v6, "otherTipiAudioCategory") || objc_msgSend(v7, "audioStreamState") != 3);

  return v8;
}

- (void)_smartRoutingControllerEnsureStarted
{
  v3 = self->_smartRoutingController;
  if (!v3)
  {
    obj = objc_alloc_init(CBController);
    [obj setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(&self->_smartRoutingController, obj);
    v3 = obj;
  }
}

- (void)_updateAccessoryID:(id)d connectionDeviceAddresses:(id)addresses completion:(id)completion
{
  dCopy = d;
  addressesCopy = addresses;
  smartRoutingController = self->_smartRoutingController;
  if (!smartRoutingController)
  {
    [(BTSmartRoutingDaemon *)self _smartRoutingControllerEnsureStarted];
    smartRoutingController = self->_smartRoutingController;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100056B98;
  v11[3] = &unk_1002B6A38;
  v11[4] = self;
  v10 = smartRoutingController;
  [(CBController *)v10 modifyDevice:dCopy connectionPriorityDevices:addressesCopy timeoutSeconds:v11 completionHandler:4.0];
}

- (void)_updateNearbyDeviceState:(id)state withAddress:(id)address withEasyPairing:(BOOL)pairing withState:(int)withState
{
  pairingCopy = pairing;
  stateCopy = state;
  addressCopy = address;
  v11 = addressCopy;
  if (withState == 3)
  {

    v11 = @"FF:FF:FF:FF:FF:FF";
  }

  if (stateCopy && v11)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      if (withState > 3)
      {
        v12 = "?";
      }

      else
      {
        v12 = off_1002B8BB0[withState];
      }

      v17 = stateCopy;
      v18 = v11;
      v16 = v12;
      LogPrintF();
    }

    v13 = objc_alloc_init(CBDevice);
    [v13 setIdentifier:stateCopy];
    v14 = objc_alloc_init(CBDevice);
    [v14 setIdentifier:v11];
    if (pairingCopy)
    {
      v15 = 0;
    }

    else
    {
      v15 = 16;
    }

    [(CBController *)self->_smartRoutingController modifyDevice:v13 peerSourceDevice:v14 peerSourceState:withState requestFlags:v15 completionHandler:&stru_1002B85A8, v16, v17, v18];
  }

  else if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)_systemUIMonitorEnsureStarted
{
  if (!self->_systemUIMonitor)
  {
    v8[7] = v2;
    v8[8] = v3;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E83A0();
    }

    v5 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100002EF0;
    v8[3] = &unk_1002B7B90;
    v8[4] = self;
    [v5 setTransitionHandler:v8];
    v6 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v5];
    systemUIMonitor = self->_systemUIMonitor;
    self->_systemUIMonitor = v6;
  }
}

- (void)_systemUIMonitorEnsureStopped
{
  if (self->_systemUIMonitor)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8414();
    }

    [(FBSDisplayLayoutMonitor *)self->_systemUIMonitor invalidate];
    systemUIMonitor = self->_systemUIMonitor;
    self->_systemUIMonitor = 0;
  }
}

- (void)_workoutObserverEnsureStarted
{
  workoutObserver = self->_workoutObserver;
  if (!workoutObserver)
  {
    v4 = objc_alloc_init(SRWorkoutObserver);
    v5 = self->_workoutObserver;
    self->_workoutObserver = v4;

    workoutObserver = self->_workoutObserver;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005723C;
  v6[3] = &unk_1002B6880;
  v6[4] = self;
  [(SRWorkoutObserver *)workoutObserver setWorkoutStateChangedHandler:v6];
}

- (void)_workoutObserverEnsureStopped
{
  workoutObserver = self->_workoutObserver;
  self->_workoutObserver = 0;
  _objc_release_x1();
}

- (void)_wxDiscoveryEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  wxDiscovery = self->_wxDiscovery;
  if (wxDiscovery)
  {
    if (self->_prefSmartRoutingEnabledPhase3)
    {
      v4 = GestaltGetDeviceClass() != 6;
      if (v4 == [(SFDeviceDiscovery *)self->_wxDiscovery overrideScreenOff])
      {
        return;
      }
    }

    else
    {
      if (([(SFDeviceDiscovery *)wxDiscovery overrideScreenOff]& 1) == 0)
      {
        return;
      }

      v4 = 0;
    }

    v8 = self->_wxDiscovery;

    [(SFDeviceDiscovery *)v8 setOverrideScreenOff:v4];
  }

  else
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8544();
    }

    v5 = objc_alloc_init(SFDeviceDiscovery);
    [v5 setChangeFlags:9];
    [v5 setDiscoveryFlags:2];
    [v5 setDispatchQueue:self->_dispatchQueue];
    [v5 setPurpose:@"SmartRouting"];
    [v5 setScanRate:20];
    if (self->_prefSmartRoutingEnabledPhase3)
    {
      [v5 setOverrideScreenOff:1];
    }

    v6 = self->_wxDiscovery;
    self->_wxDiscovery = v5;
    v7 = v5;

    [(BTSmartRoutingDaemon *)self _powerLogSmartRoutingScanStarted:7];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000577A4;
    v13[3] = &unk_1002B8428;
    v13[4] = self;
    v13[5] = v7;
    [v7 setDeviceFoundHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000577C8;
    v12[3] = &unk_1002B8428;
    v12[4] = self;
    v12[5] = v7;
    [v7 setDeviceLostHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000577EC;
    v11[3] = &unk_1002B8450;
    v11[4] = self;
    v11[5] = v7;
    [v7 setDeviceChangedHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100057810;
    v10[3] = &unk_1002B6D18;
    v10[4] = self;
    v10[5] = v7;
    [v7 setInvalidationHandler:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10005782C;
    v9[3] = &unk_1002B68A8;
    v9[4] = self;
    v9[5] = v7;
    [v7 activateWithCompletion:v9];
  }
}

- (void)_wxDiscoveryWatchRecoveryEnsureStarted
{
  if (!self->_wxDiscoveryWatchRecovery)
  {
    v12[5] = v5;
    v12[6] = v4;
    v12[11] = v2;
    v12[12] = v3;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8614();
    }

    [(BTSmartRoutingDaemon *)self _powerLogSmartRoutingScanStarted:7];
    v7 = objc_alloc_init(CUBLEScanner);
    wxDiscoveryWatchRecovery = self->_wxDiscoveryWatchRecovery;
    self->_wxDiscoveryWatchRecovery = v7;
    v9 = v7;

    [(CUBLEScanner *)v9 setChangeFlags:16];
    [(CUBLEScanner *)v9 setScanFlags:16];
    [(CUBLEScanner *)v9 setDispatchQueue:self->_dispatchQueue];
    [(CUBLEScanner *)v9 setLabel:@"SmartRouting"];
    [(CUBLEScanner *)v9 setScanRate:50];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100057AAC;
    v12[3] = &unk_1002B85F8;
    v12[4] = self;
    [(CUBLEScanner *)v9 setDeviceFoundHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100057AB8;
    v11[3] = &unk_1002B85F8;
    v11[4] = self;
    [(CUBLEScanner *)v9 setDeviceLostHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100057AC4;
    v10[3] = &unk_1002B6D18;
    v10[4] = v9;
    v10[5] = self;
    [(CUBLEScanner *)v9 setInvalidationHandler:v10];
    [(CUBLEScanner *)v9 activate];
  }
}

- (void)_setConnectedBannerTick:(unint64_t)tick
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E864C();
  }

  self->_showBannerConnectedLastTicks = tick;
}

- (id)_getAllUSBAudioDeviceBtAddresses
{
  v3 = objc_alloc_init(NSMutableArray);
  srDiscoveredDeviceMap = self->_srDiscoveredDeviceMap;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100057C8C;
  v7[3] = &unk_1002B8368;
  v5 = v3;
  v8 = v5;
  [(NSMutableDictionary *)srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (void)_runUSBAudioRoutingPolicy:(id)policy
{
  policyCopy = policy;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100003918;
  v18 = sub_100003838;
  v19 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100057F70;
  v13[3] = &unk_1002B6C00;
  v13[4] = &v14;
  v5 = objc_retainBlock(v13);
  if (!policyCopy)
  {
    v7 = v15[5];
    v15[5] = @"missing wx address";
    goto LABEL_11;
  }

  v6 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:policyCopy];
  v7 = v6;
  if (v6)
  {
    if ([v6 isUSBPlugIn])
    {
      if ([v7 connectionState] != 2)
      {
        v8 = [(BTSmartRoutingDaemon *)self _isWxPaired:policyCopy];
        if ([(SRSourceDevice *)self->_sourceDevice bluetoothState]== 4)
        {
          v9 = +[AudioDeviceManager sharedAudioDeviceManager];
          [v9 usbDeviceEnableAirPlaneMode:policyCopy];

          v10 = +[AudioDeviceManager sharedAudioDeviceManager];
          [v10 usbDeviceUnHideDevice:policyCopy];
        }

        else
        {
          v11 = +[AudioDeviceManager sharedAudioDeviceManager];
          if (v8)
          {
            [v11 usbDeviceDisableAirPlaneMode:policyCopy];

            v10 = +[AudioDeviceManager sharedAudioDeviceManager];
            [v10 usbDeviceHideDevice:policyCopy];
          }

          else
          {
            [v11 usbDeviceEnableAirPlaneMode:policyCopy];

            v10 = +[AudioDeviceManager sharedAudioDeviceManager];
            [v10 usbDeviceUnHideDevice:policyCopy];
          }
        }

        goto LABEL_10;
      }

      v12 = @"already BT connected";
    }

    else
    {
      v12 = @"not USB plug-in";
    }
  }

  else
  {
    v12 = @"missing srDisDevice";
  }

  v10 = v15[5];
  v15[5] = v12;
LABEL_10:

LABEL_11:
  (v5[2])(v5);

  _Block_object_dispose(&v14, 8);
}

- (void)_updateUSBDeviceForPairStateChange:(id)change paired:(BOOL)paired
{
  pairedCopy = paired;
  changeCopy = change;
  if (self->_prefSmartRoutingUSBAudioDevice)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_100003918;
    v21 = sub_100003838;
    v22 = 0;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000582E4;
    v16[3] = &unk_1002B6C00;
    v16[4] = &v17;
    v7 = objc_retainBlock(v16);
    btAddressData = [changeCopy btAddressData];
    v9 = CUPrintNSDataAddress();

    if (v9)
    {
      v10 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v9];
      if ([v10 isUSBPlugIn])
      {
        v11 = pairedCopy & ~[v10 isPaired];
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          [v10 isUSBPlugIn];
          LogPrintF();
        }

        if (pairedCopy)
        {
          if (v11)
          {
            v12 = +[AudioDeviceManager sharedAudioDeviceManager];
            [v12 usbDeviceDisableAirPlaneMode:v9];

            v13 = +[AudioDeviceManager sharedAudioDeviceManager];
            [v13 usbDeviceHideDevice:v9];

            [(BTSmartRoutingDaemon *)self _evaluatorRunForUSBDevice:v9 trigger:4];
          }
        }

        else
        {
          v14 = +[AudioDeviceManager sharedAudioDeviceManager];
          [v14 usbDeviceEnableAirPlaneMode:v9];

          v15 = +[AudioDeviceManager sharedAudioDeviceManager];
          [v15 usbDeviceUnHideDevice:v9];
        }
      }
    }

    else
    {
      v10 = v18[5];
      v18[5] = @"btAddress is null";
    }

    (v7[2])(v7);
    _Block_object_dispose(&v17, 8);
  }
}

- (void)_updateUSBDeviceForBluetoothStateChange:(int64_t)change
{
  if (self->_prefSmartRoutingUSBAudioDevice && [(SRSourceDevice *)self->_sourceDevice bluetoothStatePrev]!= change)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    _getAllUSBAudioDeviceBtAddresses = [(BTSmartRoutingDaemon *)self _getAllUSBAudioDeviceBtAddresses];
    v6 = [_getAllUSBAudioDeviceBtAddresses countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v6)
    {
      goto LABEL_22;
    }

    v7 = v6;
    v8 = *v17;
    while (1)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(_getAllUSBAudioDeviceBtAddresses);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          v11 = "?";
          if (change <= 0xA)
          {
            v11 = off_1002B8BF8[change];
          }

          v14 = v11;
          v15 = v10;
          LogPrintF();
        }

        switch(change)
        {
          case 4:
            goto LABEL_19;
          case 10:
            if ([(SRSourceDevice *)self->_sourceDevice bluetoothStatePrev]!= 5)
            {
              continue;
            }

LABEL_19:
            v12 = [AudioDeviceManager sharedAudioDeviceManager:v14];
            [v12 usbDeviceEnableAirPlaneMode:v10];

            v13 = +[AudioDeviceManager sharedAudioDeviceManager];
            [v13 usbDeviceUnHideDevice:v10];

            continue;
          case 5:
            [(BTSmartRoutingDaemon *)self _evaluatorRunForUSBDevice:v10 trigger:1];
            break;
        }
      }

      v7 = [_getAllUSBAudioDeviceBtAddresses countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (!v7)
      {
LABEL_22:

        return;
      }
    }
  }
}

- (void)usbDeviceFound:(id)found
{
  foundCopy = found;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100058620;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = foundCopy;
  v6 = foundCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)usbDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100058A5C;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = lostCopy;
  v6 = lostCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_evaluatorRunForUSBDevice:(id)device trigger:(int)trigger
{
  deviceCopy = device;
  if (self->_prefSmartRoutingUSBAudioDevice)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8714(trigger);
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = sub_100003918;
    v28 = sub_100003838;
    v29 = 0;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000590B4;
    v23[3] = &unk_1002B6C00;
    v23[4] = &v24;
    v7 = objc_retainBlock(v23);
    if (deviceCopy)
    {
      if ([(SRSourceDevice *)self->_sourceDevice bluetoothState]!= 4)
      {
        v8 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:deviceCopy];
        if ([v8 connectionState] == 2)
        {
          v17 = v25;
          v18 = v25[5];
          v19 = @"Wx is BT connected already";
        }

        else
        {
          if ([v8 isUSBPlugIn])
          {
            v9 = [(BTSmartRoutingDaemon *)self _isWxPaired:deviceCopy];
            v21[0] = _NSConcreteStackBlock;
            v21[1] = 3221225472;
            v21[2] = sub_100059150;
            v21[3] = &unk_1002B8620;
            v22 = v9;
            v21[4] = self;
            v10 = objc_retainBlock(v21);
            v11 = v10;
            if (trigger == 1 || trigger == 4)
            {
              bluetoothState = [(SRSourceDevice *)self->_sourceDevice bluetoothState];
              v13 = @"BT is off";
              if (bluetoothState == 5)
              {
                v13 = @"Wx not paired";
              }

              if (((bluetoothState == 5) & v9) != 0)
              {
                goto LABEL_22;
              }
            }

            else
            {
              if (trigger == 2)
              {
                (v10[2])(v10, deviceCopy);
LABEL_23:

LABEL_24:
                (v7[2])(v7);

                _Block_object_dispose(&v24, 8);
                goto LABEL_25;
              }

              if ([v8 nearbyIsMeLastRoute])
              {
                if (([(NSMutableArray *)self->_smartRoutingManualDisconnectionList containsObject:deviceCopy]& 1) != 0)
                {
                  v13 = @"Manually disconnect previously";
                }

                else
                {
                  bluetoothState2 = [(SRSourceDevice *)self->_sourceDevice bluetoothState];
                  v13 = @"BT is off";
                  if (bluetoothState2 == 5)
                  {
                    v13 = @"Wx not paired";
                  }

                  if (((bluetoothState2 == 5) & v9) == 1)
                  {
LABEL_22:
                    [(BTSmartRoutingDaemon *)self _connectToUSBDevice:deviceCopy isUserInitiate:0];
                    goto LABEL_23;
                  }
                }
              }

              else
              {
                v13 = @"Not last routed device";
              }
            }

            v20 = v25[5];
            v25[5] = v13;

            goto LABEL_23;
          }

          v17 = v25;
          v18 = v25[5];
          v19 = @"Wx not USB plug in";
        }

        v17[5] = v19;

        goto LABEL_24;
      }

      v15 = v25;
      v8 = v25[5];
      v16 = @"BT off";
    }

    else
    {
      v15 = v25;
      v8 = v25[5];
      v16 = @"Missing wx address";
    }

    v15[5] = v16;
    goto LABEL_24;
  }

LABEL_25:
}

- (void)_dismissAnyPairingBanner
{
  v3 = [NSString stringWithUTF8String:"Pairing"];
  uiNoteSessionSmartRouting = self->_uiNoteSessionSmartRouting;
  if (uiNoteSessionSmartRouting)
  {
    v8 = v3;
    identifier = [(CUUserNotificationSession *)uiNoteSessionSmartRouting identifier];
    v6 = [identifier isEqualToString:v8];

    v3 = v8;
    if (v6)
    {
      [(CUUserNotificationSession *)self->_uiNoteSessionSmartRouting invalidate];
      v7 = self->_uiNoteSessionSmartRouting;
      self->_uiNoteSessionSmartRouting = 0;

      v3 = v8;
    }
  }

  _objc_release_x1(uiNoteSessionSmartRouting, v3);
}

- (void)_cancelPairingTimer
{
  pairingTimer = self->_pairingTimer;
  if (!pairingTimer)
  {
    return;
  }

  if (dword_1002F6778 >= 31)
  {
    v4 = pairingTimer;
LABEL_8:
    v6 = v4;
    dispatch_source_cancel(v4);
    v5 = self->_pairingTimer;
    self->_pairingTimer = 0;

    return;
  }

  if (dword_1002F6778 != -1 || _LogCategory_Initialize())
  {
    sub_1001E8774();
  }

  v4 = self->_pairingTimer;
  if (v4)
  {
    goto LABEL_8;
  }
}

- (void)_connectToUSBDevice:(id)device isUserInitiate:(BOOL)initiate
{
  initiateCopy = initiate;
  deviceCopy = device;
  v7 = deviceCopy;
  if (self->_prefSmartRoutingUSBAudioDevice)
  {
    if (deviceCopy)
    {
      v8 = +[AudioDeviceManager sharedAudioDeviceManager];
      [v8 usbDeviceDisableAirPlaneMode:v7];

      v9 = +[AudioDeviceManager sharedAudioDeviceManager];
      [v9 usbDeviceHideDevice:v7];

      v10 = objc_alloc_init(CBDevice);
      [v10 setIdentifier:v7];
      v11 = objc_alloc_init(CBConnection);
      [v11 setPeerDevice:v10];
      [v11 setDispatchQueue:self->_dispatchQueue];
      [v11 setConnectionFlags:2];
      if (initiateCopy)
      {
        [v11 setConnectionFlags:{objc_msgSend(v11, "connectionFlags") | 0x30}];
      }

      [v11 setServiceFlags:0xFFFFFFFFLL];
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1000594D0;
      v12[3] = &unk_1002B8648;
      v13 = v7;
      v14 = v11;
      selfCopy = self;
      v16 = initiateCopy;
      [v11 activateWithCompletion:v12];
    }

    else if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8790();
    }
  }
}

- (BOOL)_isInHijackBlockingMode
{
  if (self->_splitterStateOn || self->_hijackBackOffInitiator)
  {
    return 1;
  }

  hijackBlockingClientSet = [(SRSourceDevice *)self->_sourceDevice hijackBlockingClientSet];
  v2 = [hijackBlockingClientSet count] != 0;

  return v2;
}

- (void)getLocalAudioInfofromSnapshot:(int *)snapshot appCount:(int *)count playingApp:(id *)app route:(id *)route remote:(int *)remote
{
  snapshotLocalDeviceAudioScore = [(SRStats *)self->_stats snapshotLocalDeviceAudioScore];
  if (snapshotLocalDeviceAudioScore)
  {
    snapshotLocalDeviceAudioScore2 = [(SRStats *)self->_stats snapshotLocalDeviceAudioScore];
    *snapshot = [snapshotLocalDeviceAudioScore2 intValue];
  }

  else
  {
    *snapshot = -1;
  }

  snapshotLocalNumOfApps = [(SRStats *)self->_stats snapshotLocalNumOfApps];
  if (snapshotLocalNumOfApps)
  {
    snapshotLocalNumOfApps2 = [(SRStats *)self->_stats snapshotLocalNumOfApps];
    *count = [snapshotLocalNumOfApps2 intValue];
  }

  else
  {
    *count = 0;
  }

  snapshotLocalPlayingApp = [(SRStats *)self->_stats snapshotLocalPlayingApp];
  if (snapshotLocalPlayingApp)
  {
    snapshotLocalPlayingApp2 = [(SRStats *)self->_stats snapshotLocalPlayingApp];
    *app = snapshotLocalPlayingApp2;
  }

  else
  {
    *app = @"NA";
  }

  snapshotLocalRoute = [(SRStats *)self->_stats snapshotLocalRoute];
  if (snapshotLocalRoute)
  {
    snapshotLocalRoute2 = [(SRStats *)self->_stats snapshotLocalRoute];
    *route = snapshotLocalRoute2;
  }

  else
  {
    *route = @"NA";
  }

  snapshotRemoteDeviceAudioScore = [(SRStats *)self->_stats snapshotRemoteDeviceAudioScore];
  if (snapshotRemoteDeviceAudioScore)
  {
    v23 = snapshotRemoteDeviceAudioScore;
    snapshotRemoteDeviceAudioScore2 = [(SRStats *)self->_stats snapshotRemoteDeviceAudioScore];
    *remote = [snapshotRemoteDeviceAudioScore2 intValue];

    snapshotRemoteDeviceAudioScore = v23;
  }

  else
  {
    *remote = -1;
  }
}

- (void)getHijackAudioInfo:(int *)info appCount:(int *)count playingApp:(id *)app route:(id *)route remote:(int *)remote
{
  snapshotLocalNumOfApps = [(SRStats *)self->_stats snapshotLocalNumOfApps];
  if (snapshotLocalNumOfApps)
  {
    snapshotLocalNumOfApps2 = [(SRStats *)self->_stats snapshotLocalNumOfApps];
    *count = [snapshotLocalNumOfApps2 intValue];
  }

  else
  {
    *count = 0;
  }

  *info = [(SRStats *)self->_stats hijackScore];
  audioRoute = [(SRSourceDevice *)self->_sourceDevice audioRoute];
  if (audioRoute > 4)
  {
    v16 = "?";
  }

  else
  {
    v16 = off_1002B9148[audioRoute];
  }

  v17 = [NSString stringWithUTF8String:v16];
  *route = [NSString stringWithFormat:@"%@", v17];

  hijackPlayingApp = [(SRStats *)self->_stats hijackPlayingApp];
  if (hijackPlayingApp)
  {
    hijackPlayingApp2 = [(SRStats *)self->_stats hijackPlayingApp];
    *app = hijackPlayingApp2;
  }

  else
  {
    *app = @"NA";
  }

  *remote = [(SRStats *)self->_stats hijackActiveRemoteScore];
  [(SRStats *)self->_stats setManualRouteDestination:@"NA"];
  [(SRStats *)self->_stats setManualRouteInputOutput:@"NA"];
  stats = self->_stats;

  [(SRStats *)stats setManualRouteUISource:@"NA"];
}

- (void)getHijackedAwayAudioInfo:(int *)info appCount:(int *)count playingApp:(id *)app route:(id *)route remote:(int *)remote
{
  snapshotLocalNumOfApps = [(SRStats *)self->_stats snapshotLocalNumOfApps];
  if (snapshotLocalNumOfApps)
  {
    snapshotLocalNumOfApps2 = [(SRStats *)self->_stats snapshotLocalNumOfApps];
    *count = [snapshotLocalNumOfApps2 intValue];
  }

  else
  {
    *count = 0;
  }

  *info = [(SRStats *)self->_stats hijackAwayLocalScore];
  audioRoute = [(SRSourceDevice *)self->_sourceDevice audioRoute];
  if (audioRoute > 4)
  {
    v16 = "?";
  }

  else
  {
    v16 = off_1002B9148[audioRoute];
  }

  v17 = [NSString stringWithUTF8String:v16];
  *route = [NSString stringWithFormat:@"%@", v17];

  snapshotLocalPlayingApp = [(SRStats *)self->_stats snapshotLocalPlayingApp];
  if (snapshotLocalPlayingApp)
  {
    snapshotLocalPlayingApp2 = [(SRStats *)self->_stats snapshotLocalPlayingApp];
    *app = snapshotLocalPlayingApp2;
  }

  else
  {
    *app = @"NA";
  }

  *remote = [(SRStats *)self->_stats hijackAwayRemoteScore];
  [(SRStats *)self->_stats setManualRouteDestination:@"NA"];
  [(SRStats *)self->_stats setManualRouteInputOutput:@"NA"];
  stats = self->_stats;

  [(SRStats *)stats setManualRouteUISource:@"NA"];
}

- (void)_startHijackMetricSubmission:(int64_t)submission wxAddress:(id)address version:(id)version
{
  addressCopy = address;
  versionCopy = version;
  mach_absolute_time();
  [(SRStats *)self->_stats hijackInputTick];
  v9 = UpTicksToSeconds();
  mach_absolute_time();
  [(SRStats *)self->_stats hijackAmbientTick];
  v10 = UpTicksToSeconds();
  mach_absolute_time();
  [(SRStats *)self->_stats hijackMediaTick];
  v11 = UpTicksToSeconds();
  mach_absolute_time();
  [(SRStats *)self->_stats hijackCallTick];
  v12 = UpTicksToSeconds();
  mach_absolute_time();
  [(SRSourceDevice *)self->_sourceDevice predictiveRouteTicks];
  v13 = UpTicksToSeconds();
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v27 = v9;
    v28 = v13;
    v25 = v12;
    v26 = v10;
    v23 = versionCopy;
    v24 = v11;
    LogPrintF();
  }

  if (v13 >= 3)
  {
    if ([(SRStats *)self->_stats hijackScore]== 200)
    {
      if (v9 < 3)
      {
        goto LABEL_31;
      }

      [(SRStats *)self->_stats setHijackInputTick:mach_absolute_time()];
    }

    if ([(SRStats *)self->_stats hijackScore:v23]== 201)
    {
      if (v10 < 3)
      {
        goto LABEL_31;
      }

      [(SRStats *)self->_stats setHijackAmbientTick:mach_absolute_time()];
    }

    else if ([(SRStats *)self->_stats hijackScore]== 301)
    {
      if (v11 < 3)
      {
        goto LABEL_31;
      }

      [(SRStats *)self->_stats setHijackMediaTick:mach_absolute_time()];
    }

    else if ([(SRStats *)self->_stats hijackScore]== 501)
    {
      if (v12 < 3)
      {
        goto LABEL_31;
      }

      [(SRStats *)self->_stats setHijackCallTick:mach_absolute_time()];
    }

    v14 = "?";
    v15 = @"NA";
    if (submission > 2)
    {
      v17 = "Rejected";
      v18 = @"Hijack_Rejected";
      if (submission == 4)
      {
        v15 = @"Hijack_Backoff";
        v14 = "Backoff";
      }

      v16 = submission == 3;
    }

    else
    {
      if (submission == 1)
      {
        reverseRouteReason = [(SRStats *)self->_stats reverseRouteReason];

        if (!reverseRouteReason)
        {
          [(SRStats *)self->_stats setReverseRouteReason:@"Hijack"];
        }

        v20 = "Accepted";
        v19 = @"Hijack_Accepted";
        goto LABEL_30;
      }

      v16 = submission == 2;
      v17 = "Ambiguity";
      v18 = @"Hijack_Ambiguity";
    }

    if (v16)
    {
      v19 = v18;
    }

    else
    {
      v19 = v15;
    }

    if (v16)
    {
      v20 = v17;
    }

    else
    {
      v20 = v14;
    }

LABEL_30:
    v21 = [NSString stringWithUTF8String:v20];
    [(SRStats *)self->_stats setHijackAnswer:v21];

    [(SRStats *)self->_stats setHijackVersion:@"V2"];
    -[BTSmartRoutingDaemon submitHijackMetric:withV1:](self, "submitHijackMetric:withV1:", addressCopy, [versionCopy isEqualToString:@"V1"]);
    [(BTSmartRoutingDaemon *)self _startRouteChangeDetectionTimer:addressCopy andAnswer:submission];
    [(BTSmartRoutingDaemon *)self _startRouteCheckTimer:addressCopy andType:5];
    [(BTSmartRoutingDaemon *)self _startRouteCheckTimer:addressCopy andType:6];
    [(BTSmartRoutingDaemon *)self submitRouteActivityMetric:addressCopy activity:v19];
  }

LABEL_31:
}

- (void)_statsEnsureStarted
{
  if (!self->_stats)
  {
    v3 = objc_alloc_init(SRStats);
    stats = self->_stats;
    self->_stats = v3;
  }

  if (!self->_smartRoutingWxStatsMap)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    smartRoutingWxStatsMap = self->_smartRoutingWxStatsMap;
    self->_smartRoutingWxStatsMap = v5;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E87C8();
  }
}

- (void)_submitManualConnectionMetric:(id)metric
{
  metricCopy = metric;
  if (metricCopy)
  {
    score = self->_score;
    if (score > 0xF)
    {
      v6 = "?";
    }

    else
    {
      v6 = off_1002B8F50[score];
    }

    v7 = [NSString stringWithUTF8String:v6];
    audioScoreOtherTipiDevice = self->_audioScoreOtherTipiDevice;
    if (audioScoreOtherTipiDevice > 0xF)
    {
      v9 = "?";
    }

    else
    {
      v9 = off_1002B8F50[audioScoreOtherTipiDevice];
    }

    v59 = [NSString stringWithUTF8String:v9];
    v10 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:metricCopy];
    routingAction = [v10 routingAction];
    if (routingAction > 5)
    {
      v12 = "?";
    }

    else
    {
      v12 = off_1002B90F8[routingAction];
    }

    v58 = [NSString stringWithUTF8String:v12];
    mach_absolute_time();
    v13 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:metricCopy];
    [v13 lastConnectionTicks];
    v14 = UpTicksToMilliseconds();

    otherTipiDeviceBTName = [v10 otherTipiDeviceBTName];
    v16 = otherTipiDeviceBTName;
    v17 = @"NA";
    if (otherTipiDeviceBTName)
    {
      v17 = otherTipiDeviceBTName;
    }

    v57 = v17;

    v18 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:metricCopy];
    v19 = v18;
    if (v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = &stru_1002C1358;
    }

    v55 = v20;

    v56 = v10;
    if ([(SRSourceDevice *)self->_sourceDevice evalTicks])
    {
      mach_absolute_time();
      [(SRSourceDevice *)self->_sourceDevice evalTicks];
      v21 = UpTicksToMilliseconds();
    }

    else
    {
      v21 = -1;
    }

    evalWxMap = [(SRSourceDevice *)self->_sourceDevice evalWxMap];
    v23 = [evalWxMap objectForKeyedSubscript:metricCopy];

    evalWxMap2 = [(SRSourceDevice *)self->_sourceDevice evalWxMap];
    v25 = [evalWxMap2 objectForKeyedSubscript:metricCopy];
    if ([v25 lastEvalTicks])
    {
      mach_absolute_time();
      [v23 lastEvalTicks];
      v26 = UpTicksToMilliseconds();
    }

    else
    {
      v26 = -1;
    }

    if ([v23 lastConnectTicks])
    {
      mach_absolute_time();
      [v23 lastConnectTicks];
      v27 = UpTicksToSeconds();
    }

    else
    {
      v27 = -1;
    }

    v53 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:metricCopy];
    nearbyUSBPluggedIn = [v53 nearbyUSBPluggedIn];
    v29 = &off_1002CB6A8;
    if (nearbyUSBPluggedIn == 1)
    {
      v29 = &off_1002CB6D8;
    }

    v60[0] = @"audioScore";
    v60[1] = @"disconnectionReason";
    v61[0] = v7;
    v61[1] = v29;
    v60[2] = @"forceConnect";
    v54 = v7;
    v52 = [NSNumber numberWithBool:self->_forcedConnection];
    v61[2] = v52;
    v60[3] = @"lastConnectSecond";
    v51 = [NSNumber numberWithLongLong:v27];
    v61[3] = v51;
    v60[4] = @"lastConnectResult";
    lastConnectResult = [v23 lastConnectResult];
    v50 = lastConnectResult;
    if (lastConnectResult)
    {
      v31 = lastConnectResult;
    }

    else
    {
      v31 = &stru_1002C1358;
    }

    v61[4] = v31;
    v60[5] = @"lastEvalSourceResult";
    evalResult = [(SRSourceDevice *)self->_sourceDevice evalResult];
    v49 = evalResult;
    if (evalResult)
    {
      v33 = evalResult;
    }

    else
    {
      v33 = &stru_1002C1358;
    }

    v61[5] = v33;
    v60[6] = @"lastEvalSourceMS";
    v48 = [NSNumber numberWithLongLong:v21];
    v61[6] = v48;
    v60[7] = @"lastEvalWxResult";
    evalWxMap3 = [(SRSourceDevice *)self->_sourceDevice evalWxMap];
    v46 = [evalWxMap3 objectForKeyedSubscript:metricCopy];
    lastEvalResult = [v46 lastEvalResult];
    v35 = lastEvalResult;
    if (lastEvalResult)
    {
      v36 = lastEvalResult;
    }

    else
    {
      v36 = &stru_1002C1358;
    }

    v61[7] = v36;
    v60[8] = @"lastEvalWxMS";
    v45 = [NSNumber numberWithLongLong:v26];
    v61[8] = v45;
    v60[9] = @"nearbyDeviceCount";
    v44 = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)self->_nearbyInfoDevices count]];
    v61[9] = v44;
    v60[10] = @"nearbyWxCount";
    v37 = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)self->_wxDevices count]];
    v61[10] = v37;
    v61[11] = v59;
    v60[11] = @"peerAudioScore";
    v60[12] = @"peerConnectTime";
    v61[12] = &off_1002CB6C0;
    v61[13] = v57;
    v60[13] = @"peerModel";
    v60[14] = @"peerConnectTry";
    v61[14] = &off_1002CB6C0;
    v61[15] = v58;
    v60[15] = @"routingAction";
    v60[16] = @"tipiConnect";
    otherTipiDeviceBTAddress = [v56 otherTipiDeviceBTAddress];
    v39 = @"Yes";
    if (!otherTipiDeviceBTAddress)
    {
      v39 = @"No";
    }

    v61[16] = v39;
    v60[17] = @"wxConnectTime";
    v40 = [NSNumber numberWithUnsignedLongLong:v14];
    v61[17] = v40;
    v60[18] = @"wxProductID";
    v41 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v56 productID]);
    v61[18] = v41;
    v60[19] = @"srCapable";
    v42 = [NSNumber numberWithBool:self->_prefSmartRoutingEnabledPhase3];
    v61[19] = v42;
    v61[20] = &off_1002CB6D8;
    v60[20] = @"wxConnectTry";
    v60[21] = @"wxBuildVersion";
    v61[21] = v55;
    v43 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:22];
    CUMetricsLogEx();
  }
}

- (void)_submitConnectionMetric:(id)metric andError:(id)error
{
  metricCopy = metric;
  errorCopy = error;
  v87 = metricCopy;
  if (metricCopy)
  {
    score = self->_score;
    if (score > 0xF)
    {
      v8 = "?";
    }

    else
    {
      v8 = off_1002B8F50[score];
    }

    v82 = [NSString stringWithUTF8String:v8];
    audioScoreOtherTipiDevice = self->_audioScoreOtherTipiDevice;
    if (audioScoreOtherTipiDevice > 0xF)
    {
      v10 = "?";
    }

    else
    {
      v10 = off_1002B8F50[audioScoreOtherTipiDevice];
    }

    v79 = [NSString stringWithUTF8String:v10];
    v86 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:metricCopy];
    identifier = [v86 identifier];
    routingAction = [v86 routingAction];
    if (routingAction > 5)
    {
      v12 = "?";
    }

    else
    {
      v12 = off_1002B90F8[routingAction];
    }

    v75 = [NSString stringWithUTF8String:v12];
    mach_absolute_time();
    v13 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
    [v13 lastConnectionTicks];
    v14 = UpTicksToMilliseconds();

    otherTipiDeviceBTName = [v86 otherTipiDeviceBTName];
    v16 = otherTipiDeviceBTName;
    if (otherTipiDeviceBTName)
    {
      v17 = otherTipiDeviceBTName;
    }

    else
    {
      v17 = @"NA";
    }

    v76 = v17;

    v18 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
    preemptiveBannerShown = [v18 preemptiveBannerShown];

    if (preemptiveBannerShown)
    {
      mach_absolute_time();
      preemptiveBannerShownTicks = self->_preemptiveBannerShownTicks;
      v21 = UpTicksToMilliseconds();
      if (v21 >> 5 >= 0x271)
      {
        v21 = UpTicksToMilliseconds();
      }

      *&self->_preemptiveBannerBlockedTicks = 0u;
      if (self->_preemptiveBannerConnectionInProgress)
      {
        self->_preemptiveBannerConnectionInProgress = 0;
      }
    }

    else
    {
      v21 = 0;
    }

    v66 = CUPrintNSError();
    _getCurrentRoute = [(BTSmartRoutingDaemon *)self _getCurrentRoute];
    v22 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:v87];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = &stru_1002C1358;
    }

    v65 = v24;

    onDemandCategory = [(SRStats *)self->_stats onDemandCategory];
    v26 = onDemandCategory;
    if (onDemandCategory)
    {
      v27 = onDemandCategory;
    }

    else
    {
      v27 = @"NA";
    }

    v78 = v27;

    if ([(SRStats *)self->_stats pipeStartTime])
    {
      mach_absolute_time();
      [(SRStats *)self->_stats pipeStartTime];
      v62 = UpTicksToMilliseconds();
    }

    else
    {
      v62 = 0;
    }

    firstPipeMessageRTT = [(SRStats *)self->_stats firstPipeMessageRTT];
    v58 = [(BTSmartRoutingDaemon *)self _inEarNearbyCheck:v87];
    _isOnDemandConnectInProgress = [(BTSmartRoutingDaemon *)self _isOnDemandConnectInProgress];
    _isConnectionTipiv2 = [(BTSmartRoutingDaemon *)self _isConnectionTipiv2];
    v84 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v87];
    tipiConnectType = [v84 tipiConnectType];
    if (tipiConnectType > 0xA)
    {
      v31 = "?";
    }

    else
    {
      v31 = off_1002B8FD0[tipiConnectType];
    }

    v71 = [NSString stringWithUTF8String:v31];
    v83 = [(BTSmartRoutingDaemon *)self _inCaseLidClosed:v87];
    v32 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
    preemptiveBannerShown2 = [v32 preemptiveBannerShown];

    v33 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
    sourceCount = [v33 sourceCount];

    if (v83 && dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E87E4();
    }

    if (_isConnectionTipiv2)
    {
      phase1ConnectConfig = self->_phase1ConnectConfig;
      self->_phase1ConnectConfig = 0;
    }

    if (v84)
    {
      isUSBPlugIn = [v84 isUSBPlugIn];
      v36 = &off_1002CB6F0;
      if (isUSBPlugIn)
      {
        v36 = &off_1002CB6D8;
      }
    }

    else
    {
      v36 = &off_1002CB6A8;
    }

    v69 = v36;
    v90 = 0;
    v91 = &v90;
    v92 = 0x2020000000;
    v93 = 0;
    nearbyInfoDevices = self->_nearbyInfoDevices;
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_10005AFDC;
    v89[3] = &unk_1002B7DC8;
    v89[4] = &v90;
    [(NSMutableDictionary *)nearbyInfoDevices enumerateKeysAndObjectsUsingBlock:v89];
    v38 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];

    if (v38)
    {
      v39 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
      audioState = [v39 audioState];
      if (audioState > 3)
      {
        v41 = "?";
      }

      else
      {
        v41 = off_1002B8ED0[audioState];
      }

      v61 = [NSString stringWithUTF8String:v41];

      v42 = v14;
    }

    else
    {
      v42 = v14;
      v61 = @"Unknown";
    }

    if ([v84 nearbyUSBPluggedIn] == 1)
    {
      v43 = &off_1002CB6D8;
    }

    else
    {
      v43 = &off_1002CB6A8;
    }

    v94[0] = @"audioScore";
    v94[1] = @"disconnectionReason";
    v95[0] = v82;
    v95[1] = v43;
    v94[2] = @"firstPipeMessageRTT";
    v81 = [NSNumber numberWithUnsignedLongLong:firstPipeMessageRTT];
    v95[2] = v81;
    v94[3] = @"forceConnect";
    v80 = [NSNumber numberWithBool:self->_forcedConnection];
    v95[3] = v80;
    v94[4] = @"localAudioScore";
    localAudioScore = [(SRStats *)self->_stats localAudioScore];
    v74 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [localAudioScore intValue]);
    v95[4] = v74;
    v94[5] = @"nearbyDeviceCount";
    v73 = [NSNumber numberWithUnsignedInt:*(v91 + 6)];
    v95[5] = v73;
    v94[6] = @"nearbyWxCount";
    v70 = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)self->_wxDevices count]];
    v95[6] = v70;
    v95[7] = v78;
    v94[7] = @"onDemandCategory";
    v94[8] = @"onDemandConnect";
    v68 = [NSNumber numberWithBool:_isOnDemandConnectInProgress];
    v95[8] = v68;
    v94[9] = @"setupSupportsTipiv2";
    v64 = [NSNumber numberWithBool:[(SRStats *)self->_stats setupSupportsTipiv2]];
    v95[9] = v64;
    v95[10] = v79;
    v94[10] = @"peerAudioScore";
    v94[11] = @"peerModel";
    v95[11] = v76;
    v94[12] = @"pipeToConnectionCompleteTime";
    v63 = [NSNumber numberWithUnsignedLongLong:v62];
    v95[12] = v63;
    v94[13] = @"preemptiveBannerFailureReason";
    evalPreemptiveBannerResult = [(SRSourceDevice *)self->_sourceDevice evalPreemptiveBannerResult];
    v45 = evalPreemptiveBannerResult;
    if (evalPreemptiveBannerResult)
    {
      v46 = evalPreemptiveBannerResult;
    }

    else
    {
      v46 = &stru_1002C1358;
    }

    if (preemptiveBannerShown2)
    {
      v47 = @"Yes";
    }

    else
    {
      v47 = @"No";
    }

    v95[13] = v46;
    v95[14] = v47;
    v94[14] = @"preemptiveBannerShown";
    v94[15] = @"preemptiveBannerTime";
    if (v21)
    {
      v48 = [NSNumber numberWithUnsignedLongLong:v21];
    }

    else
    {
      v48 = @"Not initialized";
    }

    v60 = v48;
    v95[15] = v48;
    v95[16] = v75;
    v94[16] = @"routingAction";
    v94[17] = @"systemAudioRoute";
    v95[17] = _getCurrentRoute;
    v94[18] = @"tipiConnect";
    otherTipiDeviceBTAddress = [v86 otherTipiDeviceBTAddress];
    if (otherTipiDeviceBTAddress)
    {
      v50 = @"Yes";
    }

    else
    {
      v50 = @"No";
    }

    v95[18] = v50;
    v95[19] = v71;
    v94[19] = @"tipiConnectType";
    v94[20] = @"usbState";
    v95[20] = v69;
    v94[21] = @"wxConnectTime";
    v51 = [NSNumber numberWithUnsignedLongLong:v42];
    v95[21] = v51;
    v94[22] = @"wxProductID";
    v52 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v86 productID]);
    v95[22] = v52;
    v95[23] = v66;
    v94[23] = @"wxConnectResult";
    v94[24] = @"wxConnectResult2";
    v95[24] = v66;
    v95[25] = v65;
    v94[25] = @"wxBuildVersion";
    v94[26] = @"wxInEar";
    v53 = [NSNumber numberWithBool:v58];
    v95[26] = v53;
    v94[27] = @"wxInCasewithLidClosed";
    v54 = [NSNumber numberWithBool:v83];
    v95[27] = v54;
    v94[28] = @"wxSourceCount";
    v55 = [NSNumber numberWithUnsignedChar:sourceCount];
    v94[29] = @"wxStreamState";
    v95[28] = v55;
    v95[29] = v61;
    v56 = [NSDictionary dictionaryWithObjects:v95 forKeys:v94 count:30];
    CUMetricsLogEx();

    if (v21)
    {
    }

    if (errorCopy)
    {
      [(SRStats *)self->_stats setOnDemandCategory:0];
    }

    _Block_object_dispose(&v90, 8);
  }
}

- (void)_submitHijackBlockMetric:(id)metric withReason:(id)reason
{
  metricCopy = metric;
  reasonCopy = reason;
  v8 = [(BTSmartRoutingDaemon *)self _getWxProductID:metricCopy];
  _getCurrentRoute = [(BTSmartRoutingDaemon *)self _getCurrentRoute];
  v10 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:metricCopy];
  v11 = v10;
  v12 = &stru_1002C1358;
  if (v10)
  {
    v12 = v10;
  }

  v13 = v12;

  callConnected = [(SRStats *)self->_stats mediaPlaying]|| [(SRStats *)self->_stats callConnected];
  mach_absolute_time();
  v15 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:metricCopy];
  [v15 hijackBackoffTicks];
  v16 = UpTicksToSeconds() + self->_prefSmartRoutingBlockHijackWindowinSeconds * self->_hijackBackoffCount;

  v22[0] = @"initiator";
  v17 = [NSNumber numberWithBool:self->_hijackBackOffInitiator];
  v23[0] = v17;
  v22[1] = @"isPlaying";
  v18 = [NSNumber numberWithBool:callConnected];
  v23[1] = v18;
  v23[2] = _getCurrentRoute;
  v22[2] = @"route";
  v22[3] = @"terminateReason";
  v23[3] = reasonCopy;
  v22[4] = @"blockTimeSeconds";
  v19 = [NSNumber numberWithUnsignedLongLong:v16];
  v23[4] = v19;
  v23[5] = v13;
  v22[5] = @"wxBuildVersion";
  v22[6] = @"wxProductID";
  v20 = [NSNumber numberWithUnsignedInt:v8];
  v23[6] = v20;
  v21 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:7];
  CUMetricsLogEx();
}

- (void)_submitRouteCheckMetric:(id)metric andType:(int)type
{
  metricCopy = metric;
  if (metricCopy)
  {
    v85 = [(BTSmartRoutingDaemon *)self _getWxProductID:metricCopy];
    audioRoute = [(SRSourceDevice *)self->_sourceDevice audioRoute];
    if (audioRoute > 4)
    {
      v8 = "?";
    }

    else
    {
      v8 = off_1002B9148[audioRoute];
    }

    v99 = [NSString stringWithUTF8String:v8];
    v9 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:metricCopy];

    onDemandCategory = [(SRStats *)self->_stats onDemandCategory];
    v11 = onDemandCategory;
    if (onDemandCategory)
    {
      v12 = onDemandCategory;
    }

    else
    {
      v12 = @"NA";
    }

    v13 = v12;

    v14 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:metricCopy];
    v15 = v14;
    v16 = &stru_1002C1358;
    if (v14)
    {
      v16 = v14;
    }

    v98 = v16;

    v17 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:metricCopy];
    intValue = [(NSNumber *)self->_localDeviceAudioCategory intValue];
    if (type > 0xE)
    {
      v18 = "?";
    }

    else
    {
      v18 = off_1002B9028[type];
    }

    v97 = [NSString stringWithUTF8String:v18];
    otherTipiDeviceBTName = [v17 otherTipiDeviceBTName];
    v20 = otherTipiDeviceBTName;
    if (otherTipiDeviceBTName)
    {
      v21 = otherTipiDeviceBTName;
    }

    else
    {
      v21 = @"NA";
    }

    v101 = v21;

    bluetoothState = [(SRSourceDevice *)self->_sourceDevice bluetoothState];
    if (bluetoothState > 0xA)
    {
      v23 = "?";
    }

    else
    {
      v23 = off_1002B8BF8[bluetoothState];
    }

    v96 = [NSString stringWithUTF8String:v23];
    v24 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:metricCopy];
    v84 = v24;
    if (v24)
    {
      audioStreamState = [v24 audioStreamState];
      if (audioStreamState > 3)
      {
        v26 = "?";
      }

      else
      {
        v26 = off_1002B9128[audioStreamState];
      }

      v95 = [NSString stringWithUTF8String:v26];
    }

    else
    {
      v95 = @"NA";
    }

    falseRouteCheckReason = [(SRStats *)self->_stats falseRouteCheckReason];
    hijackVersion = [(SRStats *)self->_stats hijackVersion];
    v28 = hijackVersion;
    if (hijackVersion)
    {
      v29 = hijackVersion;
    }

    else
    {
      v29 = @"NA";
    }

    v30 = v29;

    hijackAnswer = [(SRStats *)self->_stats hijackAnswer];
    v32 = hijackAnswer;
    if (hijackAnswer)
    {
      v33 = hijackAnswer;
    }

    else
    {
      v33 = @"NA";
    }

    v94 = v33;

    v34 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:metricCopy];
    v100 = v17;
    v83 = v34;
    if (v9 && v17)
    {
      inEar = [v17 inEar];
    }

    else
    {
      if (v9)
      {
        v93 = @"NA";
        goto LABEL_44;
      }

      inEar = [v34 nearbyInEar] == 1;
    }

    v36 = @"NO";
    if (inEar)
    {
      v36 = @"YES";
    }

    v93 = v36;
LABEL_44:
    v37 = 0;
    hijackScore = 0;
    v89 = metricCopy;
    if (type > 11)
    {
      if (type == 13)
      {

        v40 = objc_alloc_init(NSMutableDictionary);
        bannerAction = [(SRStats *)self->_stats bannerAction];
        v42 = v30;
        v43 = bannerAction;
        if (bannerAction)
        {
          v44 = bannerAction;
        }

        else
        {
          v44 = @"NA";
        }

        [v40 setObject:v44 forKeyedSubscript:@"BannerAction"];

        bannerTrigger = [(SRStats *)self->_stats bannerTrigger];
        v46 = bannerTrigger;
        if (bannerTrigger)
        {
          v47 = bannerTrigger;
        }

        else
        {
          v47 = @"NA";
        }

        [v40 setObject:v47 forKeyedSubscript:@"BannerTrigger"];

        v48 = [(BTSmartRoutingDaemon *)self _getJsonStringFromDictionary:v40];

        bannerTrigger2 = [(SRStats *)self->_stats bannerTrigger];
        v50 = bannerTrigger2;
        if (bannerTrigger2)
        {
          v51 = bannerTrigger2;
        }

        else
        {
          v51 = @"NA";
        }

        v92 = v51;

        bannerAction2 = [(SRStats *)self->_stats bannerAction];
        v53 = bannerAction2;
        if (bannerAction2)
        {
          v54 = bannerAction2;
        }

        else
        {
          v54 = @"NA";
        }

        v91 = v54;

        hijackScore = 0;
        v37 = 0;
        v101 = @"NA";
        falseRouteCheckReason = v48;
        v30 = v42;
        goto LABEL_71;
      }

      if (type == 12)
      {
        if (v100 && [v100 otherTipiDeviceIdleTick])
        {
          mach_absolute_time();
          [v100 otherTipiDeviceIdleTick];
          hijackScore = 0;
          v37 = UpTicksToSeconds() - 25;
        }

        else
        {
          hijackScore = 0;
          v37 = 0;
        }

        v91 = @"NA";
        v92 = @"NA";
        goto LABEL_71;
      }
    }

    else
    {
      if ((type - 5) < 2)
      {
        hijackScore = [(SRStats *)self->_stats hijackScore];
        v37 = 0;
LABEL_54:
        v91 = @"NA";
        v92 = @"NA";
LABEL_71:
        typeCopy = type;
        if ([(__CFString *)v94 isEqualToString:@"Backoff"])
        {

          v90 = @"All";
        }

        else
        {
          v90 = v30;
        }

        v103[0] = @"ActivePlayingApp";
        activePlayingApp = [(SRSourceDevice *)self->_sourceDevice activePlayingApp];
        v82 = activePlayingApp;
        if (activePlayingApp)
        {
          v56 = activePlayingApp;
        }

        else
        {
          v56 = @"NA";
        }

        v104[0] = v56;
        v104[1] = v91;
        v103[1] = @"BannerAction";
        v103[2] = @"BluetoothState";
        v104[2] = v96;
        v103[3] = @"HijackAnswer";
        hijackAnswer2 = [(SRStats *)self->_stats hijackAnswer];
        v81 = hijackAnswer2;
        if (hijackAnswer2)
        {
          v58 = hijackAnswer2;
        }

        else
        {
          v58 = @"NA";
        }

        v104[3] = v58;
        v103[4] = @"HijackScore";
        v80 = [NSNumber numberWithInt:hijackScore];
        v104[4] = v80;
        v103[5] = @"HijackVersion";
        hijackVersion2 = [(SRStats *)self->_stats hijackVersion];
        v60 = hijackVersion2;
        if (hijackVersion2)
        {
          v61 = hijackVersion2;
        }

        else
        {
          v61 = @"NA";
        }

        v104[5] = v61;
        v104[6] = v93;
        v103[6] = @"InEar";
        v103[7] = @"IsConnected";
        v79 = [NSNumber numberWithBool:v9 != 0];
        v104[7] = v79;
        v103[8] = @"IsPlaying";
        v78 = [NSNumber numberWithBool:intValue > 100];
        v104[8] = v78;
        v103[9] = @"LocalAudioCategory";
        v62 = [NSNumber numberWithInt:[(NSNumber *)self->_localDeviceAudioCategory intValue]];
        v104[9] = v62;
        v104[10] = v13;
        v88 = v13;
        v103[10] = @"OnDemandCategory";
        v103[11] = @"OtherTipiDevice";
        v104[11] = v101;
        v103[12] = @"OtherTipiDeviceIdleTime";
        v63 = [NSNumber numberWithUnsignedLongLong:v37];
        v104[12] = v63;
        v103[13] = @"OtherTipiAudioCategory";
        v64 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v100 otherTipiAudioCategory]);
        v104[13] = v64;
        v103[14] = @"OtherTipiDevicePlayingApp";
        otherTipiDevicePlayingApp = [v100 otherTipiDevicePlayingApp];
        v66 = otherTipiDevicePlayingApp;
        if (otherTipiDevicePlayingApp)
        {
          v67 = otherTipiDevicePlayingApp;
        }

        else
        {
          v67 = @"NA";
        }

        v104[14] = v67;
        v103[15] = @"ProactiveRoutingTrigger";
        proactiveRoutingTrigger = [(SRStats *)self->_stats proactiveRoutingTrigger];
        v69 = proactiveRoutingTrigger;
        if (proactiveRoutingTrigger)
        {
          v70 = proactiveRoutingTrigger;
        }

        else
        {
          v70 = @"NA";
        }

        v104[15] = v70;
        v103[16] = @"ProactiveRoutingWxRSSI";
        v71 = [NSNumber numberWithInt:[(SRStats *)self->_stats proactiveRoutingWxRSSI]];
        v72 = v71;
        v73 = falseRouteCheckReason;
        if (!falseRouteCheckReason)
        {
          v73 = @"NA";
        }

        v104[16] = v71;
        v104[17] = v73;
        v103[17] = @"Reason";
        v103[18] = @"Route";
        v104[18] = v99;
        v104[19] = v92;
        v103[19] = @"Trigger";
        v103[20] = @"Type";
        v104[20] = v97;
        v104[21] = v98;
        v103[21] = @"WxBuildVersion";
        v103[22] = @"WxProductID";
        v74 = [NSNumber numberWithUnsignedInt:v85];
        v103[23] = @"WxStreamState";
        v104[22] = v74;
        v104[23] = v95;
        v75 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:24];
        CUMetricsLogEx();

        [(SRStats *)self->_stats setProactiveRoutingTrigger:&stru_1002C1358];
        if (typeCopy == 6)
        {
          [(SRStats *)self->_stats setHijackAnswer:0];
          metricCopy = v89;
          v76 = v90;
          v77 = v83;
        }

        else
        {
          metricCopy = v89;
          v76 = v90;
          v77 = v83;
          if (typeCopy == 10)
          {
            [(SRStats *)self->_stats setOnDemandCategory:0];
          }
        }

        goto LABEL_96;
      }

      if (type == 8)
      {
        reverseRouteReason = [(SRStats *)self->_stats reverseRouteReason];

        hijackScore = 0;
        v37 = 0;
        falseRouteCheckReason = reverseRouteReason;
        goto LABEL_54;
      }
    }

    v91 = @"NA";
    v92 = @"NA";
    goto LABEL_71;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E8800();
  }

LABEL_96:
}

- (void)_submitStemGestureMetric:(id)metric
{
  metricCopy = metric;
  v5 = self->_localDeviceAudioCategory;
  v25 = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)self->_nearbyInfoDevices count]];
  _getCurrentRoute = [(BTSmartRoutingDaemon *)self _getCurrentRoute];
  v6 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:metricCopy];
  v7 = v6;
  v8 = &stru_1002C1358;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = &off_1002CB6C0;
  if (metricCopy)
  {
    v11 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:metricCopy];
    v12 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v11 nearbyConnectedSourceCount]);
    v13 = [(NSMutableDictionary *)self->_firstStemClickTime objectForKey:metricCopy];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &off_1002CB6C0;
    }

    v10 = v15;
  }

  else
  {
    v12 = &off_1002CB6A8;
  }

  if (v5)
  {
    v16 = v5;
  }

  else
  {
    v16 = &off_1002CB6A8;
  }

  v26[0] = @"localAudioScore";
  v26[1] = @"nearbyDeviceCount";
  v27[0] = v16;
  v27[1] = v25;
  if (self->_effectiveScreenLocked)
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v27[2] = v17;
  v26[2] = @"screenLocked";
  v26[3] = @"playbackResumed";
  if ([(SRStats *)self->_stats stemClickResumeResultedInPlayback])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  v27[3] = v18;
  v26[4] = @"playbackPaused";
  if ([(SRStats *)self->_stats stemClickPlaybackPaused])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  v27[4] = v19;
  v26[5] = @"stemClicks";
  v20 = [NSNumber numberWithUnsignedChar:[(SRStats *)self->_stats stemClicksInTransaction]];
  v27[5] = v20;
  v26[6] = @"stemClickToResumeLatency";
  v21 = [NSNumber numberWithUnsignedLongLong:[(SRStats *)self->_stats stemClickToResponseDelay]];
  v27[6] = v21;
  v27[7] = _getCurrentRoute;
  v26[7] = @"systemAudioRoute";
  v26[8] = @"wxBuildVersion";
  v27[8] = v9;
  v27[9] = v12;
  v26[9] = @"wxSourceCount";
  v26[10] = @"firstClickAfterConnect";
  v27[10] = v10;
  v26[11] = @"tempOverride";
  v22 = [NSNumber numberWithBool:self->_overrideMessageSent];
  v27[11] = v22;
  v23 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:12];
  CUMetricsLogEx();

  [(SRStats *)self->_stats setStemClickResumeResultedInPlayback:0];
  [(SRStats *)self->_stats setStemClickPlaybackPaused:0];
  [(SRStats *)self->_stats setStemClickToResponseDelay:0];
  if (metricCopy)
  {
    [(NSMutableDictionary *)self->_firstStemClickTime setObject:&off_1002CB6C0 forKeyedSubscript:metricCopy];
  }
}

- (void)_submitUSBAudioDeviceMetric:(id)metric
{
  metricCopy = metric;
  v30 = self->_localDeviceAudioCategory;
  v34 = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)self->_nearbyInfoDevices count]];
  v33 = [NSNumber numberWithUnsignedInteger:[(NSMutableDictionary *)self->_wxDevices count]];
  v32 = [NSNumber numberWithInteger:[(SRSourceDevice *)self->_sourceDevice bluetoothState]];
  v31 = [NSNumber numberWithInt:[(SRSourceDevice *)self->_sourceDevice audioRoute]];
  if (self->_effectiveScreenLocked)
  {
    v5 = &off_1002CB6D8;
  }

  else
  {
    v5 = &off_1002CB6F0;
  }

  v29 = v5;
  v6 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:metricCopy];
  v7 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v6 usbProductID]);
  stringValue = [v7 stringValue];

  v27 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v6 connectionState]);
  v8 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:metricCopy];
  v9 = v8;
  v10 = &stru_1002C1358;
  if (v8)
  {
    v10 = v8;
  }

  v26 = v10;

  nearbyInEar = [v6 nearbyInEar];
  v12 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v6 nearbyConnectedSourceCount]);
  nearbyStreamState = [v6 nearbyStreamState];
  if (nearbyStreamState > 3)
  {
    v14 = "?";
  }

  else
  {
    v14 = off_1002B8ED0[nearbyStreamState];
  }

  v25 = [NSString stringWithUTF8String:v14];
  if ([(BTSmartRoutingDaemon *)self _isWxPaired:metricCopy])
  {
    v15 = &off_1002CB6D8;
  }

  else
  {
    v15 = &off_1002CB6F0;
  }

  v16 = v15;
  if ([(SRSourceDevice *)self->_sourceDevice bluetoothState]== 4)
  {

    v16 = &off_1002CB6A8;
  }

  v17 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:metricCopy];
  otherTipiDeviceBTName = [v17 otherTipiDeviceBTName];
  v19 = otherTipiDeviceBTName;
  v20 = @"NA";
  if (otherTipiDeviceBTName)
  {
    v20 = otherTipiDeviceBTName;
  }

  v21 = v20;

  [v12 intValue];
  v35[0] = @"localAudioScore";
  v35[1] = @"nearbyDeviceCount";
  if (v30)
  {
    v22 = v30;
  }

  else
  {
    v22 = &off_1002CB6A8;
  }

  v36[0] = v22;
  v36[1] = v34;
  v35[2] = @"nearbyWxCount";
  v35[3] = @"peerModel";
  v36[2] = v33;
  v36[3] = v21;
  v35[4] = @"sourceBluetoothState";
  v35[5] = @"sourceCurrentActiveRoute";
  v36[4] = v32;
  v36[5] = v31;
  v35[6] = @"sourceScreenState";
  v35[7] = @"wxBuildVersion";
  v36[6] = v29;
  v36[7] = v26;
  v36[8] = v27;
  v35[8] = @"wxConnectionState";
  v35[9] = @"wxInEar";
  v23 = [NSNumber numberWithBool:nearbyInEar == 1];
  v36[9] = v23;
  v36[10] = v16;
  v35[10] = @"wxPairState";
  v35[11] = @"wxProductID";
  v36[11] = stringValue;
  v36[12] = v12;
  v35[12] = @"wxSourceCount";
  v35[13] = @"wxStreamState";
  v36[13] = v25;
  v24 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:14];

  CUMetricsLogEx();
}

- (void)updateCurrentAudioSnapshot
{
  v3 = [NSNumber numberWithInt:1];
  [(SRStats *)self->_stats setSnapshotLocalNumOfApps:v3];

  activePlayingApp = [(SRSourceDevice *)self->_sourceDevice activePlayingApp];
  [(SRStats *)self->_stats setSnapshotLocalPlayingApp:activePlayingApp];

  _getCurrentRoute = [(BTSmartRoutingDaemon *)self _getCurrentRoute];
  [(SRStats *)self->_stats setSnapshotLocalRoute:_getCurrentRoute];

  [(SRStats *)self->_stats setSnapshotLocalDeviceAudioScore:self->_localDeviceAudioCategory];
  v6 = [NSNumber numberWithInt:0xFFFFFFFFLL];
  [(SRStats *)self->_stats setSnapshotRemoteDeviceAudioScore:v6];

  _findActiveWxDevice = [(BTSmartRoutingDaemon *)self _findActiveWxDevice];
  v12 = _findActiveWxDevice;
  if (_findActiveWxDevice)
  {
    v8 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:_findActiveWxDevice];
    v9 = v8;
    if (v8)
    {
      v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v8 otherTipiAudioCategory]);
      [(SRStats *)self->_stats setSnapshotRemoteDeviceAudioScore:v10];
    }

    _findActiveWxDevice = v12;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (v11 = _LogCategory_Initialize(), _findActiveWxDevice = v12, v11))
    {
      sub_1001E881C(&self->_sourceDevice, &self->_stats);
      _findActiveWxDevice = v12;
    }
  }
}

- (void)_updateSRDiscoveredDeviceForBluetoothStateChanged:(int64_t)changed
{
  if (changed != 5)
  {
    [(NSMutableDictionary *)self->_srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:&stru_1002B8668];
  }
}

- (void)_updateSRDiscoveredDeviceForCBDiscoveryChanged
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  discoveredDevices = [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
  v4 = [discoveredDevices countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(discoveredDevices);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        btAddressData = [v8 btAddressData];
        v10 = CUPrintNSDataAddress();

        deviceFlags = [v8 deviceFlags];
        if (v10)
        {
          v12 = deviceFlags;
          v13 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v10];

          if (v13)
          {
            v14 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v10];
            [v14 setIsSRCapable:(v12 >> 4) & 1];
          }
        }
      }

      v5 = [discoveredDevices countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

- (void)_cancelInUseBannerForCallTimer
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E8920();
  }

  inUseBannerTimer = self->_inUseBannerTimer;
  if (inUseBannerTimer)
  {
    v5 = inUseBannerTimer;
    dispatch_source_cancel(v5);
    v4 = self->_inUseBannerTimer;
    self->_inUseBannerTimer = 0;
  }
}

- (void)_cancelRingtoneTimer
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E893C();
  }

  ringtoneTimer = self->_ringtoneTimer;
  if (ringtoneTimer)
  {
    v5 = ringtoneTimer;
    dispatch_source_cancel(v5);
    v4 = self->_ringtoneTimer;
    self->_ringtoneTimer = 0;
  }
}

- (BOOL)_isPhoneCall:(id)call
{
  callCopy = call;
  conferenceCall = [callCopy conferenceCall];
  if (conferenceCall && dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E89D4(callCopy);
  }

  return conferenceCall ^ 1;
}

- (void)_notifyOtherTipiCallState:(int)state
{
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10005D7BC;
  v4[3] = &unk_1002B8690;
  stateCopy = state;
  v4[4] = self;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v4];
}

- (void)_startInUseBannerTimer
{
  [(BTSmartRoutingDaemon *)self _cancelInUseBannerForCallTimer];
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  objc_storeStrong(&self->_inUseBannerTimer, v3);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10005D9CC;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v3, handler);
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E8A30();
  }

  CUDispatchTimerSet();
  dispatch_activate(v3);
}

- (void)_startRingtoneTimer
{
  [(BTSmartRoutingDaemon *)self _cancelRingtoneTimer];
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  objc_storeStrong(&self->_ringtoneTimer, v3);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10005DB40;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v3, handler);
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E8A90();
  }

  CUDispatchTimerSet();
  dispatch_activate(v3);
}

- (void)_TUMonitorEnsureStarted
{
  if (!self->_tuCallCenter)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8AF0();
    }

    v4 = +[TUCallCenter sharedInstance];
    tuCallCenter = self->_tuCallCenter;
    self->_tuCallCenter = v4;

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:self selector:"_handleTUCallStateChange:" name:TUCallCenterCallStatusChangedNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:self selector:"_handleTUCallStateChange:" name:TUCallCenterVideoCallStatusChangedNotification object:0];
  }
}

- (void)activeHRMDeviceUpdateToDeviceWithAddress:(id)address
{
  addressCopy = address;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E8B28();
  }

  v4 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:addressCopy];
  v5 = v4;
  if (!v4)
  {
    sub_1001E8C44();
    goto LABEL_37;
  }

  if ([v4 connectionState] == 2)
  {
    v6 = [(AADeviceManagerDaemon *)self->_aaDeviceManagerDaemon deviceWithBluetoothAddress:addressCopy];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8BA8();
    }

    goto LABEL_19;
  }

  identifier = [v5 identifier];
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E8B68();
    if (identifier)
    {
      goto LABEL_14;
    }

LABEL_17:
    v6 = 0;
    goto LABEL_18;
  }

  if (!identifier)
  {
    goto LABEL_17;
  }

LABEL_14:
  v6 = [(AAPairedDeviceDaemon *)self->_aaPairedDeviceDaemon deviceWithIdentifier:identifier];
LABEL_18:

LABEL_19:
  if (v6)
  {
    healthKitDataWriteAllowed = [v6 healthKitDataWriteAllowed];
    v9 = healthKitDataWriteAllowed == 1;
    if ([v6 productID] == 8221)
    {
      heartRateMonitorEnabled = [v6 heartRateMonitorEnabled];
      v9 = healthKitDataWriteAllowed == 1 && heartRateMonitorEnabled == 1;
    }

    activeHRMDevice = [(SRSourceDevice *)self->_sourceDevice activeHRMDevice];
    identifier2 = [activeHRMDevice identifier];
    identifier3 = [v5 identifier];
    v15 = identifier2;
    v16 = identifier3;
    v17 = v16;
    if (v15 == v16)
    {
    }

    else
    {
      if ((v15 != 0) != (v16 == 0))
      {
        v9 &= [v15 isEqual:v16] ^ 1;
      }

      if (v9)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E8BE8(v5);
        }

        [(SRSourceDevice *)self->_sourceDevice setActiveHRMDevice:v5];
        [(AAServicesDaemon *)self->_aaServicesDaemon reportActiveHRMDeviceUpdated:v6 withSREnabled:1];
      }
    }

    self->_specificHRMDeviceChosenForFitnessPlus = 1;
  }

LABEL_37:
}

- (void)activeHRMDeviceUpdateWithPushRequired:(BOOL)required
{
  requiredCopy = required;
  isSREnabled = [(BTSmartRoutingDaemon *)self isSREnabled];
  if (!self->_splitterStateOn)
  {
    _routedHRMEnabledDevice = [(BTSmartRoutingDaemon *)self _routedHRMEnabledDevice];
    if (_routedHRMEnabledDevice || ([(BTSmartRoutingDaemon *)self _connectedHRMEnabledDevice], (_routedHRMEnabledDevice = objc_claimAutoreleasedReturnValue()) != 0))
    {
      identifier = _routedHRMEnabledDevice;
      deviceAddress = [_routedHRMEnabledDevice deviceAddress];
      v20 = [(AADeviceManagerDaemon *)self->_aaDeviceManagerDaemon deviceWithBluetoothAddress:deviceAddress];
      if (v20)
      {
        _selectHRMCapableDeviceFromDiscoveredDevices = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:deviceAddress];
        if (self->_pendingActiveHRMUpdate)
        {
          self->_pendingActiveHRMUpdate = 0;
        }
      }

      else
      {
        _selectHRMCapableDeviceFromDiscoveredDevices = 0;
        self->_pendingActiveHRMUpdate = 1;
      }
    }

    else
    {
      _nearbyHRMEnabledDevice = [(BTSmartRoutingDaemon *)self _nearbyHRMEnabledDevice];
      if (_nearbyHRMEnabledDevice)
      {
        _selectHRMCapableDeviceFromDiscoveredDevices = _nearbyHRMEnabledDevice;
      }

      else
      {
        _selectHRMCapableDeviceFromDiscoveredDevices = [(BTSmartRoutingDaemon *)self _selectHRMCapableDeviceFromDiscoveredDevices];
        isSREnabled = (_selectHRMCapableDeviceFromDiscoveredDevices == 0) & isSREnabled;
      }

      identifier = [_selectHRMCapableDeviceFromDiscoveredDevices identifier];
      if (identifier)
      {
        v20 = [(AAPairedDeviceDaemon *)self->_aaPairedDeviceDaemon deviceWithIdentifier:identifier];
      }

      else
      {
        v20 = 0;
      }
    }

    activeHRMDevice = [(SRSourceDevice *)self->_sourceDevice activeHRMDevice];
    identifier2 = [activeHRMDevice identifier];
    identifier3 = [_selectHRMCapableDeviceFromDiscoveredDevices identifier];
    v13 = identifier2;
    v14 = identifier3;
    v15 = v14;
    if (v13 == v14)
    {

      goto LABEL_21;
    }

    if ((v13 != 0) == (v14 == 0))
    {
    }

    else
    {
      v16 = [v13 isEqual:v14];

      if (v16)
      {
        goto LABEL_21;
      }
    }

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8CC0(_selectHRMCapableDeviceFromDiscoveredDevices);
    }

    self->_specificHRMDeviceChosenForFitnessPlus = 0;
    [(SRSourceDevice *)self->_sourceDevice setActiveHRMDevice:_selectHRMCapableDeviceFromDiscoveredDevices];
    [(AAServicesDaemon *)self->_aaServicesDaemon reportActiveHRMDeviceUpdated:v20 withSREnabled:isSREnabled];
LABEL_21:

    if (!requiredCopy)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  [(AAServicesDaemon *)self->_aaServicesDaemon reportActiveHRMDeviceUpdated:0 withSREnabled:[(BTSmartRoutingDaemon *)self isSREnabled]];
  v20 = 0;
  if (requiredCopy)
  {
LABEL_22:
    [(AAServicesDaemon *)self->_aaServicesDaemon reportActiveHRMDeviceUpdated:v20 withSREnabled:isSREnabled];
  }

LABEL_23:
  workoutObserver = [(BTSmartRoutingDaemon *)self workoutObserver];
  workoutActive = [workoutObserver workoutActive];

  if (workoutActive)
  {
    [(BTSmartRoutingDaemon *)self _handleHRMSessionChanged:1];
  }
}

- (void)_anyPairedDeviceSupportsSmartRouting
{
  v3 = GestaltGetDeviceClass() == 1 || GestaltGetDeviceClass() == 6;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  discoveredDevices = [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
  v5 = [discoveredDevices countByEnumeratingWithState:&v52 objects:v56 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v53;
    v9 = "%.6a";
    v50 = discoveredDevices;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v53 != v8)
        {
          objc_enumerationMutation(discoveredDevices);
        }

        v11 = *(*(&v52 + 1) + 8 * i);
        if (([v11 deviceFlags] & 0x10) != 0 || v3 && -[BTSmartRoutingDaemon _supportsPhoneWatchTipi:](self, "_supportsPhoneWatchTipi:", objc_msgSend(v11, "productID")))
        {
          btAddressData = [v11 btAddressData];
          if ([btAddressData length] == 6)
          {
            bytes = [btAddressData bytes];
            v13 = NSPrintF();
            if (v13)
            {
              v14 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v13, bytes];
              if (v14)
              {
                v15 = v14;
                v16 = v3;
                v17 = v9;
                v18 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v13];

                if (!v18)
                {
                  v19 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v13];
                  [(BTSmartRoutingDaemon *)self _smartRoutingAddWxMapDeviceFromConnectedDevice:v19];
                  [(BTSmartRoutingDaemon *)self _triggerTipiTableUpdate:v13];
                }

                v9 = v17;
                v3 = v16;
                discoveredDevices = v50;
              }
            }
          }

          else
          {
            v13 = 0;
          }

          v7 = 1;
        }
      }

      v6 = [discoveredDevices countByEnumeratingWithState:&v52 objects:v56 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v20 = +[SRConnectionManager sharedSRConnectionManager];
  discoveredDevices2 = [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
  [v20 pairedDeviceCountChanged:{objc_msgSend(discoveredDevices2, "count")}];

  if (self->_pairedDeviceSupportsSmartRouting != (v7 & 1))
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8D3C();
    }

    self->_pairedDeviceSupportsSmartRouting = v7 & 1;
    if ((v7 & 1) == 0)
    {
      smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
      v51[0] = _NSConcreteStackBlock;
      v51[1] = 3221225472;
      v51[2] = sub_10005E6F4;
      v51[3] = &unk_1002B8168;
      v51[4] = self;
      [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v51];
      uiSmartRoutingBanner = self->_uiSmartRoutingBanner;
      if (uiSmartRoutingBanner)
      {
        [(BTBannerUISession *)uiSmartRoutingBanner invalidate];
        v24 = self->_uiSmartRoutingBanner;
        self->_uiSmartRoutingBanner = 0;
      }

      [(BTSmartRoutingDaemon *)self _clearAllDisconnectTicks];
      self->_connectTicks = 0;
      self->_tipiSetupTicks = 0;
      if (self->_tipiElectionInProgress)
      {
        self->_tipiElectionInProgress = 0;
      }

      [(BTSmartRoutingDaemon *)self _setTipiElectionReceivedLePipe:&stru_1002C1358];
      tipiHealingTimer = self->_tipiHealingTimer;
      if (tipiHealingTimer)
      {
        v26 = tipiHealingTimer;
        dispatch_source_cancel(v26);
        v27 = self->_tipiHealingTimer;
        self->_tipiHealingTimer = 0;
      }

      smartRoutingManualDisconnectionList = self->_smartRoutingManualDisconnectionList;
      if (smartRoutingManualDisconnectionList)
      {
        [(NSMutableArray *)smartRoutingManualDisconnectionList removeAllObjects];
        v29 = self->_smartRoutingManualDisconnectionList;
      }

      else
      {
        v29 = 0;
      }

      self->_smartRoutingManualDisconnectionList = 0;

      srBudswapDeviceMap = self->_srBudswapDeviceMap;
      if (srBudswapDeviceMap)
      {
        [(NSMutableDictionary *)srBudswapDeviceMap removeAllObjects];
        v31 = self->_srBudswapDeviceMap;
      }

      else
      {
        v31 = 0;
      }

      self->_srBudswapDeviceMap = 0;

      v32 = self->_smartRoutingWxDeviceMap;
      if (v32)
      {
        [(NSMutableDictionary *)v32 removeAllObjects];
        v33 = self->_smartRoutingWxDeviceMap;
      }

      else
      {
        v33 = 0;
      }

      self->_smartRoutingWxDeviceMap = 0;

      smartRoutingBackOffMap = self->_smartRoutingBackOffMap;
      if (smartRoutingBackOffMap)
      {
        [(NSMutableDictionary *)smartRoutingBackOffMap removeAllObjects];
        v35 = self->_smartRoutingBackOffMap;
      }

      else
      {
        v35 = 0;
      }

      self->_smartRoutingBackOffMap = 0;

      highActivityLevelTimer = self->_highActivityLevelTimer;
      if (highActivityLevelTimer)
      {
        v37 = highActivityLevelTimer;
        dispatch_source_cancel(v37);
        v38 = self->_highActivityLevelTimer;
        self->_highActivityLevelTimer = 0;
      }

      phoneOwnershipTimer = self->_phoneOwnershipTimer;
      if (phoneOwnershipTimer)
      {
        v40 = phoneOwnershipTimer;
        dispatch_source_cancel(v40);
        v41 = self->_phoneOwnershipTimer;
        self->_phoneOwnershipTimer = 0;
      }

      idleActivityScoreTimer = self->_idleActivityScoreTimer;
      if (idleActivityScoreTimer)
      {
        v43 = idleActivityScoreTimer;
        dispatch_source_cancel(v43);
        v44 = self->_idleActivityScoreTimer;
        self->_idleActivityScoreTimer = 0;
      }

      temporaryOverrideTimer = self->_temporaryOverrideTimer;
      if (temporaryOverrideTimer)
      {
        v46 = temporaryOverrideTimer;
        dispatch_source_cancel(v46);
        v47 = self->_temporaryOverrideTimer;
        self->_temporaryOverrideTimer = 0;
      }

      phase1ConnectConfig = self->_phase1ConnectConfig;
      self->_phase1ConnectConfig = 0;
    }

    [(BTSmartRoutingDaemon *)self _prefsChanged];
  }
}

- (id)_bluetoothProductIDToLocalizationString:(unsigned int)string withActionButton:(BOOL)button
{
  v4 = string - 2;
  if (string - 8194 > 0x2D)
  {
    goto LABEL_10;
  }

  if (((1 << v4) & 0x20145A977A0BLL) != 0)
  {
    v5 = @"CONNECTED_EARBUDS";
LABEL_4:
    v6 = @"CONNECT";
    goto LABEL_7;
  }

  if (((1 << v4) & 0x820200594) == 0)
  {
LABEL_10:
    v5 = @"CONNECTED";
    goto LABEL_4;
  }

  v5 = @"CONNECTED_OVEREAR_HEADPHONES";
  v6 = @"CONNECT_OVEREAR_HEADPHONES";
LABEL_7:
  if (button)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

- (void)_budSwapDetectionStartTimer:(id)timer
{
  timerCopy = timer;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E8E08();
  }

  v5 = dispatch_time(0, 20000000000);
  budSwapTimer = self->_budSwapTimer;
  if (budSwapTimer)
  {
    dispatch_source_set_timer(budSwapTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v8 = self->_budSwapTimer;
    self->_budSwapTimer = v7;

    v9 = self->_budSwapTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10005EF30;
    handler[3] = &unk_1002B86B8;
    handler[4] = self;
    v12 = 20;
    v11 = timerCopy;
    dispatch_source_set_event_handler(v9, handler);
    dispatch_source_set_timer(self->_budSwapTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_budSwapTimer);
  }
}

- (void)_cacheBudswapInfo:(id)info
{
  infoCopy = info;
  srBudswapDeviceMap = self->_srBudswapDeviceMap;
  v15 = infoCopy;
  if (!srBudswapDeviceMap)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = self->_srBudswapDeviceMap;
    self->_srBudswapDeviceMap = v6;

    infoCopy = v15;
    srBudswapDeviceMap = self->_srBudswapDeviceMap;
  }

  v8 = [(NSMutableDictionary *)srBudswapDeviceMap objectForKeyedSubscript:infoCopy];
  if (!v8)
  {
    v8 = objc_alloc_init(SRBudswapDevice);
  }

  [(SRBudswapDevice *)v8 setReconnectionState:0];
  v9 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v15];
  v10 = v9;
  if (v9)
  {
    otherTipiDeviceBTAddress = [v9 otherTipiDeviceBTAddress];

    if (otherTipiDeviceBTAddress)
    {
      otherTipiDeviceBTAddress2 = [v10 otherTipiDeviceBTAddress];
      otherTipiDeviceBTName = [v10 otherTipiDeviceBTName];
      otherTipiDeviceVersion = [v10 otherTipiDeviceVersion];
      [(SRBudswapDevice *)v8 cacheInfo:v15 andAddress:otherTipiDeviceBTAddress2 andName:otherTipiDeviceBTName andVersion:otherTipiDeviceVersion];
    }
  }

  [(NSMutableDictionary *)self->_srBudswapDeviceMap setObject:v8 forKeyedSubscript:v15];
}

- (void)_checkIfHRMDeviceElectionHasFinished
{
  if (self->_forcedHRMConnectionInProgress)
  {
    activeHRMDevice = [(SRSourceDevice *)self->_sourceDevice activeHRMDevice];

    if (activeHRMDevice)
    {
      activeHRMDevice2 = [(SRSourceDevice *)self->_sourceDevice activeHRMDevice];
      identifier = [activeHRMDevice2 identifier];

      [(BTSmartRoutingDaemon *)self _showLowBatteryBannerForWorkoutIfNeededForDevice:identifier];
      self->_forcedHRMConnectionInProgress = 0;
    }
  }
}

- (void)_checkIfPairedCompanionDeviceSupportsSmartRouting
{
  NRRegistry = self->_NRRegistry;
  if (!NRRegistry)
  {
    v4 = +[NRPairedDeviceRegistry sharedInstance];
    v5 = self->_NRRegistry;
    self->_NRRegistry = v4;

    NRRegistry = self->_NRRegistry;
  }

  getActivePairedDevice = [(NRPairedDeviceRegistry *)NRRegistry getActivePairedDevice];
  v7 = getActivePairedDevice;
  v9 = getActivePairedDevice;
  if (getActivePairedDevice)
  {
    self->_pairedCompanionDeviceSupportsSmartRouting = 1;
    v8 = [getActivePairedDevice valueForProperty:NRDevicePropertySystemVersion];
    if (GestaltGetDeviceClass() == 1 && [v8 compare:@"11.0" options:64] == -1)
    {
      self->_pairedCompanionDeviceSupportsSmartRouting = 0;
    }

    v7 = v9;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (getActivePairedDevice = _LogCategory_Initialize(), v7 = v9, getActivePairedDevice))
    {
      getActivePairedDevice = sub_1001E8E90(self);
      v7 = v9;
    }
  }

  _objc_release_x1(getActivePairedDevice, v7);
}

- (void)_disconnectOtherTipiDevice:(id)device
{
  if (device)
  {
    deviceCopy = device;
    _myBluetoothAddressString = [(BTSmartRoutingDaemon *)self _myBluetoothAddressString];
    v8[0] = _myBluetoothAddressString;
    v8[1] = @"FF:FF:FF:FF:FF:FF";
    v6 = [NSArray arrayWithObjects:v8 count:2];
    v7 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:deviceCopy];

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E8EE4();
    }

    [(BTSmartRoutingDaemon *)self _updateAccessoryID:v7 connectionDeviceAddresses:v6 completion:&stru_1002B86F8];
  }
}

- (void)disconnectReason:(id)reason reason:(unint64_t)a4
{
  reasonCopy = reason;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F538;
  block[3] = &unk_1002B86B8;
  block[4] = self;
  v10 = reasonCopy;
  v11 = a4;
  v8 = reasonCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_disconnectReason:(id)reason reason:(unint64_t)a4
{
  reasonCopy = reason;
  v7 = reasonCopy;
  self->_smartRoutingDisconnectReason = a4;
  if (dword_1002F6778 <= 30)
  {
    v9 = reasonCopy;
    if (dword_1002F6778 != -1)
    {
LABEL_3:
      reasonCopy = LogPrintF();
      v7 = v9;
      goto LABEL_5;
    }

    reasonCopy = _LogCategory_Initialize();
    v7 = v9;
    if (reasonCopy)
    {
      smartRoutingDisconnectReason = self->_smartRoutingDisconnectReason;
      goto LABEL_3;
    }
  }

LABEL_5:

  _objc_release_x1(reasonCopy, v7);
}

- (id)_findActiveWxDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100003918;
  v10 = sub_100003838;
  v11 = 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10005F840;
  v5[3] = &unk_1002B7E18;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)_isAnyUSBAudioDevicePluggedIn
{
  _getAllUSBAudioDeviceBtAddresses = [(BTSmartRoutingDaemon *)self _getAllUSBAudioDeviceBtAddresses];
  v3 = [_getAllUSBAudioDeviceBtAddresses count] != 0;

  return v3;
}

- (BOOL)_isDevicePairedCheck:(id)check
{
  checkCopy = check;
  if (checkCopy)
  {
    if (self->_prefSmartRoutingWatchAutomaticSwitching && [(BTSmartRoutingDaemon *)self _isMagnetConnectedDeviceforConnectionCheck:checkCopy])
    {
      v5 = 1;
    }

    else
    {
      v6 = [(BTSmartRoutingDaemon *)self _getIDSDeviceFromWxLastConnectedHost:checkCopy];
      v5 = v6 != 0;
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E91A8();
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isMagnetConnectedDeviceforTipiHealingCheck:(id)check
{
  checkCopy = check;
  v5 = +[NRPairedDeviceRegistry sharedInstance];
  if (!self->_NRRegistry)
  {
    objc_storeStrong(&self->_NRRegistry, v5);
  }

  getActivePairedDevice = [v5 getActivePairedDevice];
  v7 = getActivePairedDevice;
  if (getActivePairedDevice)
  {
    v8 = [getActivePairedDevice valueForProperty:NRDevicePropertyBluetoothMACAddress];
    v9 = [v7 valueForProperty:NRDevicePropertyUDID];
    v10 = [v7 valueForProperty:NRDevicePropertyName];
    v11 = [v7 valueForProperty:NRDevicePropertySystemBuildVersion];
    v12 = [v7 valueForProperty:NRDevicePropertyMarketingProductName];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v8)
    {
      v13 = [v8 caseInsensitiveCompare:checkCopy] == 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)_isMagnetConnectedDeviceforConnectionCheck:(id)check
{
  checkCopy = check;
  if (checkCopy)
  {
    v4 = +[NRPairedDeviceRegistry sharedInstance];
    getActivePairedDevice = [v4 getActivePairedDevice];
    v6 = getActivePairedDevice;
    if (getActivePairedDevice)
    {
      v7 = [getActivePairedDevice valueForProperty:NRDevicePropertyBluetoothMACAddress];
      [v7 UTF8String];
      v8 = NSDataWithHex();
      bytes = [v8 bytes];
      if (bytes)
      {
        bytes2 = [checkCopy bytes];
        if (*bytes2 == *(bytes + 3) && *(bytes2 + 2) == bytes[5])
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          LOBYTE(bytes) = 1;
        }

        else
        {
          LOBYTE(bytes) = 0;
        }
      }
    }

    else
    {
      LOBYTE(bytes) = 0;
    }
  }

  else
  {
    LOBYTE(bytes) = 0;
  }

  return bytes;
}

- (BOOL)_isWxPaired:(id)paired
{
  pairedCopy = paired;
  if (pairedCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    discoveredDevices = [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
    v6 = [discoveredDevices countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(discoveredDevices);
          }

          btAddressData = [*(*(&v12 + 1) + 8 * i) btAddressData];
          v10 = CUPrintNSDataAddress();

          if (v10 && ([pairedCopy isEqualToString:v10] & 1) != 0)
          {

            LOBYTE(v6) = 1;
            goto LABEL_14;
          }
        }

        v6 = [discoveredDevices countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_getActiveNearbyWxAdress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100003918;
  v10 = sub_100003838;
  v11 = 0;
  srDiscoveredDeviceMap = self->_srDiscoveredDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100060014;
  v5[3] = &unk_1002B8780;
  v5[4] = &v6;
  [(NSMutableDictionary *)srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_getCurrentBTRouteAddress
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100003918;
  v10 = sub_100003838;
  v11 = 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000601C0;
  v5[3] = &unk_1002B7DF0;
  v5[4] = &v6;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_getCurrentRoute
{
  if (self->_isBTRoute)
  {
    return @"Bluetooth";
  }

  if (self->_isSpeakerRoute)
  {
    return @"Speaker";
  }

  if (self->_isBuiltInReceiverRoute)
  {
    return @"Receiver";
  }

  return @"NA";
}

- (BOOL)_getForceDisconnectBit:(id)bit
{
  bitCopy = bit;
  if (bitCopy)
  {
    v5 = [(NSMutableDictionary *)self->_wxDevices objectForKeyedSubscript:bitCopy];
    v6 = v5;
    if (v5)
    {
      bleDevice = [v5 bleDevice];
      advertisementFields = [bleDevice advertisementFields];

      v9 = CFDictionaryGetInt64() != 0;
    }

    else
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E91F8();
      }

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_getIDSDeviceFromBtAddress:(id)address
{
  addressCopy = address;
  if (addressCopy)
  {
    v4 = +[CBIDSManager sharedInstance];
    v5 = [v4 idsDeviceForBTAddress:addressCopy];
  }

  else
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E9238();
    }

    v5 = 0;
  }

  return v5;
}

- (int)_getInEarStateFromCbDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy primaryPlacement] || objc_msgSend(deviceCopy, "secondaryPlacement"))
  {
    if (-[BTSmartRoutingDaemon _bluetoothProductIDNoEarDetect:](self, "_bluetoothProductIDNoEarDetect:", [deviceCopy productID]) || objc_msgSend(deviceCopy, "primaryPlacement") == 1 || objc_msgSend(deviceCopy, "secondaryPlacement") == 1 || objc_msgSend(deviceCopy, "primaryPlacement") == 4 || objc_msgSend(deviceCopy, "secondaryPlacement") == 4)
    {
      v5 = 1;
    }

    else
    {
      v5 = 1;
      if ([deviceCopy primaryPlacement] != 7)
      {
        if ([deviceCopy secondaryPlacement] == 7)
        {
          v5 = 1;
        }

        else
        {
          v5 = 2;
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_getInEarSrWxDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100003918;
  v10 = sub_100003838;
  v11 = 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000605EC;
  v5[3] = &unk_1002B7DF0;
  v5[4] = &v6;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_getIDSDeviceFromWxLastConnectedHost:(id)host
{
  hostCopy = host;
  if (hostCopy)
  {
    v4 = +[CBIDSManager sharedInstance];
    idsDevices = [v4 idsDevices];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = idsDevices;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = *v21;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v20 + 1) + 8 * i);
          v11 = +[CBIDSManager sharedInstance];
          uniqueID = [v10 uniqueID];
          v13 = [v11 publicAddressForIDSDevice:uniqueID];

          if (v13)
          {
            [v13 UTF8String];
            v14 = NSDataWithHex();
            bytes = [v14 bytes];
            if (bytes)
            {
              v16 = bytes;
              bytes2 = [hostCopy bytes];
              if (*bytes2 == *(v16 + 3) && *(bytes2 + 2) == v16[5])
              {
                if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                {
                  sub_1001E9278(v10);
                }

                v7 = v10;

                goto LABEL_22;
              }
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_getJsonStringFromDictionary:(id)dictionary
{
  v3 = [NSJSONSerialization dataWithJSONObject:dictionary options:1 error:0];
  v4 = [[NSString alloc] initWithData:v3 encoding:4];

  return v4;
}

- (int64_t)_getRssiNearby:(id)nearby
{
  nearbyCopy = nearby;
  if (nearbyCopy)
  {
    v5 = [(NSMutableDictionary *)self->_wxDevices objectForKeyedSubscript:nearbyCopy];
    v6 = v5;
    if (v5)
    {
      bleDevice = [v5 bleDevice];
      rssi = [bleDevice rssi];
    }

    else
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E92D0();
      }

      rssi = 0;
    }
  }

  else
  {
    rssi = 0;
  }

  return rssi;
}

- (void)getSmartRoutingStateForDeviceAddress:(id)address
{
  addressCopy = address;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100060A60;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = addressCopy;
  v6 = addressCopy;
  dispatch_async(dispatchQueue, v7);
}

- (id)_getWxChipVersion:(unsigned int)version
{
  if (version - 8194 > 0x2D)
  {
    return @"NA";
  }

  else
  {
    return *(&off_1002B8C88 + version - 8194);
  }
}

- (unsigned)_getWxColorCode:(id)code
{
  codeCopy = code;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = -1;
  wxDevices = self->_wxDevices;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100060D64;
  v17[3] = &unk_1002B87A8;
  v6 = codeCopy;
  v18 = v6;
  v19 = &v20;
  [(NSMutableDictionary *)wxDevices enumerateKeysAndObjectsUsingBlock:v17];
  v7 = v21;
  if (*(v21 + 24) == 255)
  {
    connectedDevices = self->_connectedDevices;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100060EDC;
    v14[3] = &unk_1002B7EE0;
    v15 = v6;
    v16 = &v20;
    [(NSMutableDictionary *)connectedDevices enumerateKeysAndObjectsUsingBlock:v14];

    v7 = v21;
  }

  if (self->_prefSmartRoutingUSBAudioDevice && *(v7 + 24) == 255)
  {
    v9 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v6];
    usbcColorCode = [v9 usbcColorCode];
    *(v21 + 24) = usbcColorCode;
    if (dword_1002F6778 <= 50)
    {
      if (dword_1002F6778 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        v13 = *(v21 + 24);
      }

      LogPrintF();
    }

LABEL_9:

    v7 = v21;
  }

  v11 = *(v7 + 24);

  _Block_object_dispose(&v20, 8);
  return v11;
}

- (id)_getWxFWVersion:(id)version
{
  versionCopy = version;
  wxFirmwareCache = self->_wxFirmwareCache;
  if (!wxFirmwareCache)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = self->_wxFirmwareCache;
    self->_wxFirmwareCache = v6;

    wxFirmwareCache = self->_wxFirmwareCache;
  }

  v8 = [(NSMutableDictionary *)wxFirmwareCache objectForKeyedSubscript:versionCopy];

  if (v8)
  {
    firmwareVersion2 = [(NSMutableDictionary *)self->_wxFirmwareCache objectForKeyedSubscript:versionCopy];
  }

  else
  {
    [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = v24 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          btAddressData = [v15 btAddressData];
          v17 = CUPrintNSDataAddress();

          if (versionCopy)
          {
            if (v17)
            {
              if ([versionCopy isEqualToString:v17])
              {
                firmwareVersion = [v15 firmwareVersion];
                v19 = [firmwareVersion isEqualToString:@"0.0.1"];

                if ((v19 & 1) == 0)
                {
                  firmwareVersion2 = [v15 firmwareVersion];
                  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

                  goto LABEL_22;
                }
              }
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    firmwareVersion2 = 0;
LABEL_22:
  }

  return firmwareVersion2;
}

- (unsigned)_getWxProductID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          btAddressData = [v9 btAddressData];
          v11 = CUPrintNSDataAddress();

          if (v11 && ([dCopy isEqualToString:v11] & 1) != 0)
          {
            LODWORD(v6) = [v9 productID];

            goto LABEL_14;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LODWORD(v6) = 0;
  }

  return v6;
}

- (void)_handleTipiScoreUpdate:(int)update
{
  if (self->_score == update)
  {
    return;
  }

  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      score = self->_score;
    }

    LogPrintF();
  }

LABEL_6:
  self->_score = update;

  [(BTSmartRoutingDaemon *)self _sendTipiScoreUpdateToWx];
}

- (void)_handleCallStateChange:(id)change
{
  changeCopy = change;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000614C8;
  v7[3] = &unk_1002B6D18;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_handleMediaPlayStateChange:(id)change
{
  changeCopy = change;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006170C;
  v7[3] = &unk_1002B6D18;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_handleMediaPauseStateChanged
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006197C;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleHighestAudioCategoryChange:(id)change
{
  changeCopy = change;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100061C10;
  v7[3] = &unk_1002B6D18;
  v8 = changeCopy;
  selfCopy = self;
  v6 = changeCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)handleHealthKitDataWritePropertyToggled:(id)toggled
{
  toggledCopy = toggled;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100061E50;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = toggledCopy;
  v6 = toggledCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_handleFitnessPlusDRServerTeardown
{
  dataRelayAvailableServerSet = self->_dataRelayAvailableServerSet;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100061F28;
  v3[3] = &unk_1002B85D0;
  v3[4] = self;
  [(NSMutableDictionary *)dataRelayAvailableServerSet enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)_determineHRMCapabilityOfDevice:(id)device
{
  btAddress = [device btAddress];
  v4 = [(AAPairedDeviceDaemon *)self->_aaPairedDeviceDaemon deviceWithBluetoothAddress:?];
  heartRateMonitorCapability = [v4 heartRateMonitorCapability];
  healthKitDataWriteAllowed = [v4 healthKitDataWriteAllowed];
  v7 = healthKitDataWriteAllowed == 1;
  if ([v4 productID] == 8221)
  {
    heartRateMonitorEnabled = [v4 heartRateMonitorEnabled];
    v7 = healthKitDataWriteAllowed == 1 && heartRateMonitorEnabled == 1;
  }

  v10 = (heartRateMonitorCapability == 2) & v7;
  v11 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:btAddress];
  v12 = v11;
  if (v11)
  {
    [v11 setIsHRMCapable:v10];
  }

  else if (v10 & 1 | !self->_specificHRMDeviceChosenForFitnessPlus)
  {
    if (!self->_specificHRMDeviceChosenForFitnessPlus)
    {
      [(BTSmartRoutingDaemon *)self activeHRMDeviceUpdate];
    }
  }

  else
  {
    [(BTSmartRoutingDaemon *)self _handleFitnessPlusDRServerTeardown];
  }
}

- (void)_handleHRMSessionChanged:(BOOL)changed
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100062170;
  v4[3] = &unk_1002B67F0;
  changedCopy = changed;
  v4[4] = self;
  dispatch_async(dispatchQueue, v4);
}

- (void)_handleMediaServerConnectionDied:(id)died
{
  [(BTSmartRoutingDaemon *)self _mediaRouteMonitorEnsureStopped];

  [(BTSmartRoutingDaemon *)self _mediaRouteMonitorEnsureStarted];
}

- (void)_handleHijackBlockingwithDevice:(id)device
{
  deviceCopy = device;
  if (self->_prefSmartRoutingBlockHijackWindowinSeconds)
  {
    hijackBackOffTimer = self->_hijackBackOffTimer;
    if (hijackBackOffTimer)
    {
      v6 = hijackBackOffTimer;
      dispatch_source_cancel(v6);
      v7 = self->_hijackBackOffTimer;
      self->_hijackBackOffTimer = 0;
    }

    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v9 = self->_hijackBackOffTimer;
    self->_hijackBackOffTimer = v8;

    self->_hijackBackoffCount = 0;
    v10 = self->_hijackBackOffTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10006247C;
    handler[3] = &unk_1002B6CF0;
    handler[4] = v8;
    handler[5] = self;
    v11 = deviceCopy;
    v16 = v11;
    dispatch_source_set_event_handler(v10, handler);
    v12 = dispatch_time(0x8000000000000000, 1000000000 * self->_prefSmartRoutingBlockHijackWindowinSeconds);
    dispatch_source_set_timer(self->_hijackBackOffTimer, v12, 1000000000 * self->_prefSmartRoutingBlockHijackWindowinSeconds, 0x3B9ACA00uLL);
    dispatch_activate(self->_hijackBackOffTimer);
    v13 = mach_absolute_time();
    v14 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v11];
    [v14 setHijackBackoffTicks:v13];

    self->_hijackBackOffInitiator = 1;
    [(BTSmartRoutingDaemon *)self _updateLocalAudioCategory:self->_localDeviceAudioCategory];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E95B8();
    }
  }
}

- (void)_handlePairedWatchStatusDidChange
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100062708;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_takeOwnershipOnPhone:(BOOL)phone
{
  phoneCopy = phone;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100003918;
  v15 = sub_100003838;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100062994;
  v10[3] = &unk_1002B6ED8;
  v10[4] = self;
  v10[5] = &v11;
  v5 = objc_retainBlock(v10);
  if (phoneCopy && ([(BTSmartRoutingDaemon *)self workoutWx], v6 = objc_claimAutoreleasedReturnValue(), v6, !v6))
  {
    _hrmEnabledDeviceEligibleToRoute = [(BTSmartRoutingDaemon *)self _hrmEnabledDeviceEligibleToRoute];
  }

  else
  {
    _hrmEnabledDeviceEligibleToRoute = [(BTSmartRoutingDaemon *)self _getInEarSrWxDevice];
  }

  v8 = _hrmEnabledDeviceEligibleToRoute;
  if (_hrmEnabledDeviceEligibleToRoute)
  {
    if ([_hrmEnabledDeviceEligibleToRoute otherTipiDeviceIsWatch])
    {
      [(BTSmartRoutingDaemon *)self _takeOwnershipFromWatchForDevice:v8];
    }

    else
    {
      [(BTSmartRoutingDaemon *)self _proactivelyTakeOwnershipOfDevice:v8];
    }
  }

  else
  {
    v9 = v12[5];
    v12[5] = @"Couldn't find inEar Wx";
  }

  (v5[2])(v5);
  _Block_object_dispose(&v11, 8);
}

- (void)_takeOwnershipFromWatchForDevice:(id)device
{
  deviceCopy = device;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100003918;
  v22 = sub_100003838;
  v23 = 0;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100062DA4;
  v17[3] = &unk_1002B6ED8;
  v17[4] = self;
  v17[5] = &v18;
  v5 = objc_retainBlock(v17);
  if ([deviceCopy proactiveRoutingBackoff])
  {
    deviceAddress = v19[5];
    v19[5] = @"Proactive Routing backoff is in effect!";
    goto LABEL_12;
  }

  deviceAddress = [deviceCopy deviceAddress];
  v7 = [[NSString alloc] initWithFormat:@"Already routed: %@", deviceAddress];
  if ([deviceCopy routed])
  {
    v12 = v19;
    v13 = v7;
LABEL_19:
    v7 = v13;
    v15 = v12[5];
    v12[5] = v13;
    goto LABEL_20;
  }

  if ([deviceCopy otherTipiDeviceIsWatch])
  {
    otherTipiDeviceBTAddress = [deviceCopy otherTipiDeviceBTAddress];

    if (otherTipiDeviceBTAddress)
    {
      otherTipiAudioCategory = [deviceCopy otherTipiAudioCategory];
      v10 = [[NSString alloc] initWithFormat:@"The other Tipi device is streaming, audioCategory %u", objc_msgSend(deviceCopy, "otherTipiAudioCategory")];

      if (otherTipiAudioCategory < 0x65)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        self->_proactiveRoutingInProgress = 1;
        v11 = [NSString stringWithFormat:@"%@%@", deviceAddress, @"-tacl"];
        [(BTSmartRoutingDaemon *)self _smartRoutingChangeRoute:v11];

        [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:&off_1002CBDB0 andWxAddress:deviceAddress andOtherAddress:0];
        [(BTSmartRoutingDaemon *)self _startRouteCheckTimer:deviceAddress andType:12];
        goto LABEL_11;
      }

      v12 = v19;
      v13 = v10;
      goto LABEL_19;
    }

    v14 = v19;
    v15 = v19[5];
    v16 = @"Not in Tipi";
  }

  else
  {
    v14 = v19;
    v15 = v19[5];
    v16 = @"Other tipi device is not watch";
  }

  v14[5] = v16;
LABEL_20:

  v10 = v7;
LABEL_11:

LABEL_12:
  (v5[2])(v5);

  _Block_object_dispose(&v18, 8);
}

- (void)_handleProactiveRoutingRouteCheck:(id)check
{
  checkCopy = check;
  _getCurrentRoute = [(BTSmartRoutingDaemon *)self _getCurrentRoute];
  if (([_getCurrentRoute isEqualToString:@"Bluetooth"] & 1) == 0)
  {
    v5 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:checkCopy];
    if (v5)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
        [v5 setProactiveRoutingBackoff:{1, checkCopy, _getCurrentRoute}];
      }

      else
      {
        [v5 setProactiveRoutingBackoff:{1, v6, v7}];
      }
    }
  }
}

- (void)_handleSmartRoutingDisabled:(id)disabled
{
  disabledCopy = disabled;
  if (disabledCopy)
  {
    v5 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:disabledCopy];
    if (v5)
    {
      [(BTSmartRoutingDaemon *)self _sendTipiScoreUpdateToWx];
      _myBluetoothAddressString = [(BTSmartRoutingDaemon *)self _myBluetoothAddressString];
      otherTipiDeviceBTAddress = [v5 otherTipiDeviceBTAddress];
      v8 = [(NSMutableDictionary *)self->_connectedDevicesInEarCache objectForKeyedSubscript:disabledCopy];
      bOOLValue = [v8 BOOLValue];

      v10 = [(BTSmartRoutingDaemon *)self _isOtherTipiDeviceBeforeTrain:otherTipiDeviceBTAddress withIOS:16 withMacOS:13 withWatchOS:0 otherTipiDeviceIsWatch:0];
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E9740(v5);
      }

      if ([v5 otherTipiDeviceIsWatch])
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E97E8();
        }
      }

      else if ([v5 routed] & 1 | ((bOOLValue & 1) == 0) | v10 & 1)
      {
        [(BTSmartRoutingDaemon *)self _disconnectOtherTipiDevice:disabledCopy];
      }

      else
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001E97CC();
        }

        v15 = @"disableSmartRouting";
        v16 = _myBluetoothAddressString;
        v11 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
        otherTipiDeviceBTAddress2 = [v5 otherTipiDeviceBTAddress];
        [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:v11 andWxAddress:disabledCopy andOtherAddress:otherTipiDeviceBTAddress2];

        isFirstConnectionAfterSREnable = [(SRSourceDevice *)self->_sourceDevice isFirstConnectionAfterSREnable];

        if (!isFirstConnectionAfterSREnable)
        {
          v14 = objc_alloc_init(NSMutableDictionary);
          [(SRSourceDevice *)self->_sourceDevice setIsFirstConnectionAfterSREnable:v14];
        }

        [(BTSmartRoutingDaemon *)self _setIsFirstConnentionAfterSREnable:1 forDevice:disabledCopy];
      }
    }

    else if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E9804();
    }
  }
}

- (void)_handleTriangleRecoveryInitiated:(id)initiated
{
  initiatedCopy = initiated;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000632C4;
  v7[3] = &unk_1002B6D18;
  v8 = initiatedCopy;
  selfCopy = self;
  v6 = initiatedCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_handleDataRelayStartForWorkout
{
  _connectedHRMEnabledDevice = [(BTSmartRoutingDaemon *)self _connectedHRMEnabledDevice];
  if (_connectedHRMEnabledDevice)
  {
    v3 = _connectedHRMEnabledDevice;
    [_connectedHRMEnabledDevice checkDataRelayServerPublishEligibility];
    _connectedHRMEnabledDevice = v3;
  }
}

- (void)_handleWorkoutSessionStart
{
  [(BTSmartRoutingDaemon *)self _handleHRMSessionChanged:1];
  if (GestaltGetDeviceClass() == 1 || GestaltGetDeviceClass() == 3)
  {
    [(BTSmartRoutingDaemon *)self _routedHRMEnabledDevice];
    if (objc_claimAutoreleasedReturnValue())
    {
      sub_1001E9914();
      v6 = v18;
      goto LABEL_33;
    }

    _hrmEnabledDeviceEligibleToRoute = [(BTSmartRoutingDaemon *)self _hrmEnabledDeviceEligibleToRoute];
    if (!_hrmEnabledDeviceEligibleToRoute)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E9A40();
      }

      [(BTSmartRoutingDaemon *)self _handleDataRelayStartForWorkout];
      v6 = 0;
      goto LABEL_33;
    }

    v4 = _hrmEnabledDeviceEligibleToRoute;
    v16 = _hrmEnabledDeviceEligibleToRoute;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v5 = _LogCategory_Initialize(), v4 = v16, v5))
      {
        sub_1001E9988(v4);
        v4 = v16;
      }
    }

    if ([v4 otherTipiDeviceIsWatch])
    {
      [(BTSmartRoutingDaemon *)self _takeOwnershipFromWatchForDevice:v17];
    }

    else
    {
      [(BTSmartRoutingDaemon *)self _proactivelyTakeOwnershipOfDevice:v17];
    }

    deviceAddress = [v17 deviceAddress];
    v8 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:deviceAddress];
    activeHRMDevice = [(SRSourceDevice *)self->_sourceDevice activeHRMDevice];
    identifier = [activeHRMDevice identifier];
    identifier2 = [v8 identifier];
    v12 = identifier;
    v13 = identifier2;
    v14 = v13;
    if (v12 == v13)
    {
    }

    else
    {
      if ((v12 != 0) == (v13 == 0))
      {
      }

      else
      {
        v15 = [v12 isEqual:v13];

        if (v15)
        {
          goto LABEL_32;
        }
      }

      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E99E4(v8);
      }

      [(SRSourceDevice *)self->_sourceDevice setActiveHRMDevice:v8];
      activeHRMDevice = [(AADeviceManagerDaemon *)self->_aaDeviceManagerDaemon deviceWithBluetoothAddress:deviceAddress];
      [(AAServicesDaemon *)self->_aaServicesDaemon reportActiveHRMDeviceUpdated:activeHRMDevice withSREnabled:[(BTSmartRoutingDaemon *)self isSREnabled]];
    }

LABEL_32:
    v6 = v17;
LABEL_33:

    return;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E98F8();
  }

  [(BTSmartRoutingDaemon *)self _startWxDiscoveryForWorkout];

  [(BTSmartRoutingDaemon *)self _handleDataRelayStartForWorkout];
}

- (void)_handleWorkoutSessionStop
{
  [(BTSmartRoutingDaemon *)self setWorkoutWx:0];

  [(BTSmartRoutingDaemon *)self _handleHRMSessionChanged:0];
}

- (void)_hijackBackoffReset:(id)reset withReason:(id)reason
{
  resetCopy = reset;
  reasonCopy = reason;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v11 = resetCopy;
    v12 = reasonCopy;
    LogPrintF();
  }

  [(BTSmartRoutingDaemon *)self _submitHijackBlockMetric:resetCopy withReason:reasonCopy, v11, v12];
  hijackBackOffTimer = self->_hijackBackOffTimer;
  if (hijackBackOffTimer)
  {
    v8 = hijackBackOffTimer;
    dispatch_source_cancel(v8);
    v9 = self->_hijackBackOffTimer;
    self->_hijackBackOffTimer = 0;
  }

  v10 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:resetCopy];
  [v10 setHijackBackoffTicks:0];

  self->_hijackBackOffInitiator = 0;
  [(BTSmartRoutingDaemon *)self _sendAudioCategory:resetCopy withAudioCategory:self->_localDeviceAudioCategory];
  if (![reasonCopy isEqualToString:@"wxDisconnected"] || objc_msgSend(reasonCopy, "isEqualToString:", @"wxDisconnected") && -[NSMutableDictionary count](self->_connectedDevices, "count"))
  {
    [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
  }
}

- (BOOL)_isAnyWxStream
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100063AB4;
  v5[3] = &unk_1002B7E18;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_isEligibleForTipiV2:(id)v2 firstDeviceTipiScore:(int)score secondDeviceTipiScore:(int)tipiScore currentDeviceScore:(int)deviceScore sourceDeviceCount:(unsigned int)count isOnDemandConnect:(BOOL)connect address:(id)address lastConnectedHost:(id)self0
{
  connectCopy = connect;
  v2Copy = v2;
  addressCopy = address;
  hostCopy = host;
  v19 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:addressCopy];
  v20 = v19;
  if (v19)
  {
    countCopy = count;
    address = [v19 address];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      if (score > 0xF)
      {
        v22 = "?";
      }

      else
      {
        v22 = off_1002B8F50[score];
      }

      v47 = v22;
      if (tipiScore > 0xF)
      {
        v24 = "?";
      }

      else
      {
        v24 = off_1002B8F50[tipiScore];
      }

      v46 = v24;
      v49 = hostCopy;
      tipiScoreCopy = tipiScore;
      if (deviceScore > 0xF)
      {
        v25 = "?";
      }

      else
      {
        v25 = off_1002B8F50[deviceScore];
      }

      v45 = v25;
      isFirstConnectionAfterSREnable = [(SRSourceDevice *)self->_sourceDevice isFirstConnectionAfterSREnable];
      v27 = [isFirstConnectionAfterSREnable objectForKeyedSubscript:address];
      if (connectCopy)
      {
        v28 = "yes";
      }

      else
      {
        v28 = "no";
      }

      audioState = [v20 audioState];
      if (audioState > 3)
      {
        v30 = "?";
      }

      else
      {
        v30 = off_1002B8ED0[audioState];
      }

      v43 = v28;
      v44 = v30;
      v41 = v45;
      v42 = v27;
      v39 = v47;
      v40 = v46;
      v37 = addressCopy;
      v38 = v2Copy;
      v36 = address;
      LogPrintF();

      hostCopy = v49;
      tipiScore = tipiScoreCopy;
      if (connectCopy)
      {
        goto LABEL_38;
      }
    }

    else if (connectCopy)
    {
      goto LABEL_38;
    }

    tipiScoreCopy2 = tipiScore;
    v32 = [(SRSourceDevice *)self->_sourceDevice isFirstConnectionAfterSREnable:v36];
    v33 = [v32 objectForKey:address];

    if (!v33)
    {
      if (v2Copy && [@"5A187" compare:v2Copy options:64] == -1 && -[BTSmartRoutingDaemon _isForceTipiv2](self, "_isForceTipiv2"))
      {
        if (countCopy == 1)
        {
          v23 = (score - 1) < 7;
          if (score == 12)
          {
            v23 = [v20 outOfCaseTime] <= 2 && objc_msgSend(v20, "audioState") == 0;
          }

          if (GestaltGetDeviceClass() == 1)
          {
            v23 |= [(BTSmartRoutingDaemon *)self _isMagnetConnectedDeviceforConnectionCheck:hostCopy];
          }
        }

        else
        {
          v23 = 0;
          if ((score - 1) <= 6 && countCopy == 2)
          {
            v23 = tipiScoreCopy2 == 9 || (tipiScoreCopy2 - 1) < 7;
          }
        }

        goto LABEL_39;
      }

      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E9A5C(self);
      }
    }

LABEL_38:
    v23 = 0;
LABEL_39:

    goto LABEL_40;
  }

  if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E9AB4();
  }

  v23 = 0;
LABEL_40:

  return v23 & 1;
}

- (BOOL)_isEligibleForPreemptiveBanner:(BOOL)banner firstPreemptiveBanner:(BOOL)preemptiveBanner inEarState:(BOOL)state srDeviceCount:(unint64_t)count audioState:(int64_t)audioState inAddress:(id)address
{
  preemptiveBannerCopy = preemptiveBanner;
  addressCopy = address;
  if (banner || preemptiveBannerCopy)
  {
    v19 = @"Preemptive Banner shown already";
    goto LABEL_14;
  }

  v14 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:addressCopy];

  if (v14)
  {
    v19 = @"Device already connected";
    goto LABEL_14;
  }

  if ([(NSNumber *)self->_localDeviceAudioCategory intValue]>= 201 && ![(BTSmartRoutingDaemon *)self _isOnDemandConnectInProgress])
  {
    sub_1001E9AF4(&self->_localDeviceAudioCategory, self);
    goto LABEL_15;
  }

  if (self->_playbackStart && !self->_playbackStartTimer)
  {
    v19 = @"Playback start timer has expired";
LABEL_14:
    [(BTSmartRoutingDaemon *)self _logPreemptiveBannerEvalError:v19];
LABEL_15:
    v17 = 0;
    goto LABEL_12;
  }

  if (!state)
  {
    v19 = @"inEar state is NO";
    goto LABEL_14;
  }

  if (audioState >= 2)
  {
    sub_1001E9B68(audioState);
    goto LABEL_15;
  }

  v15 = [(NSMutableDictionary *)self->_srBudswapDeviceMap objectForKeyedSubscript:addressCopy];
  reconnectionState = [v15 reconnectionState];

  if (reconnectionState == 1)
  {
    v19 = @"Budswap reconnection";
    goto LABEL_14;
  }

  v17 = 1;
LABEL_12:

  return v17;
}

- (BOOL)_isInEarToOutOfEar:(id)ear
{
  earCopy = ear;
  btAddressData = [earCopy btAddressData];
  v6 = CUPrintNSDataAddress();

  v7 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v6];
  v8 = -[BTSmartRoutingDaemon _bluetoothProductIDNoEarDetect:](self, "_bluetoothProductIDNoEarDetect:", [v7 productID]);

  v9 = (v8 & 1) == 0 && -[BTSmartRoutingDaemon _inEarConnectedCheck:](self, "_inEarConnectedCheck:", v6) && [earCopy primaryPlacement] != 1 && objc_msgSend(earCopy, "secondaryPlacement") != 1;
  return v9;
}

- (BOOL)isInAnyTipi
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000641A8;
  v5[3] = &unk_1002B7E18;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_isInTipi
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000643F4;
  v5[3] = &unk_1002B7DF0;
  v5[4] = &v6;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_inEarConnectedCheck:(id)check
{
  checkCopy = check;
  p_connectedDevices = &self->_connectedDevices;
  v6 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:checkCopy];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:checkCopy];
    if (-[BTSmartRoutingDaemon _bluetoothProductIDNoEarDetect:](self, "_bluetoothProductIDNoEarDetect:", [v7 productID]))
    {
      v8 = 1;
    }

    else
    {
      v9 = [(NSMutableDictionary *)*p_connectedDevices objectForKeyedSubscript:checkCopy];
      if ([v9 primaryPlacement] == 1)
      {
        v8 = 1;
      }

      else
      {
        v10 = [(NSMutableDictionary *)*p_connectedDevices objectForKeyedSubscript:checkCopy];
        if ([v10 secondaryPlacement] == 1)
        {
          v8 = 1;
        }

        else
        {
          v11 = [(NSMutableDictionary *)*p_connectedDevices objectForKeyedSubscript:checkCopy];
          if ([v11 primaryPlacement] == 7)
          {
            v8 = 1;
          }

          else
          {
            v12 = [(NSMutableDictionary *)*p_connectedDevices objectForKeyedSubscript:checkCopy];
            v8 = [v12 secondaryPlacement] == 7;
          }
        }
      }
    }

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E9C08();
    }
  }

  else
  {
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E9CF4();
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_inEarNearbyCheck:(id)check
{
  checkCopy = check;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  wxDevices = self->_wxDevices;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100064784;
  v9[3] = &unk_1002B87D0;
  v6 = checkCopy;
  v10 = v6;
  selfCopy = self;
  v12 = &v18;
  v13 = &v14;
  [(NSMutableDictionary *)wxDevices enumerateKeysAndObjectsUsingBlock:v9];
  if ((v15[3] & 1) == 0 && dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v7 = *(v19 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);

  return v7;
}

- (BOOL)_isAnyConnectedWxInEarCheck
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  connectedDevices = self->_connectedDevices;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100064A30;
  v5[3] = &unk_1002B7EE0;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableDictionary *)connectedDevices enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_isAllWxEnabledInEarDetection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100064BC0;
  v5[3] = &unk_1002B7E18;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)_connectedHRMEnabledDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100003918;
  v10 = sub_100003838;
  v11 = 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100064D0C;
  v5[3] = &unk_1002B7DF0;
  v5[4] = &v6;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_nearbyHRMEnabledDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100003918;
  v10 = sub_100003838;
  v11 = 0;
  srDiscoveredDeviceMap = self->_srDiscoveredDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100064ED0;
  v5[3] = &unk_1002B87F8;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableDictionary *)srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_nearbyHRMDeviceEligibleToConnectTo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100003918;
  v10 = sub_100003838;
  v11 = 0;
  srDiscoveredDeviceMap = self->_srDiscoveredDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001E1F34;
  v5[3] = &unk_1002B8780;
  v5[4] = &v6;
  [(NSMutableDictionary *)srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_hrmEnabledDeviceEligibleToRoute
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100003918;
  v10 = sub_100003838;
  v11 = 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100065160;
  v5[3] = &unk_1002B7DF0;
  v5[4] = &v6;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_routedHRMEnabledDevice
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100003918;
  v11 = sub_100003838;
  v12 = 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006534C;
  v6[3] = &unk_1002B7DF0;
  v6[4] = &v7;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v6];
  [(BTSmartRoutingDaemon *)self setWorkoutWx:v8[5]];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_selectHRMCapableDeviceFromDiscoveredDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100003918;
  v10 = sub_100003838;
  v11 = 0;
  srDiscoveredDeviceMap = self->_srDiscoveredDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001E2000;
  v5[3] = &unk_1002B87F8;
  v5[4] = self;
  v5[5] = &v6;
  [(NSMutableDictionary *)srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)_isInEarDetectionDisabled:(id)disabled
{
  disabledCopy = disabled;
  v5 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:disabledCopy];
  v6 = v5;
  if (v5 && (-[BTSmartRoutingDaemon _bluetoothProductIDNoEarDetect:](self, "_bluetoothProductIDNoEarDetect:", [v5 productID]) || objc_msgSend(v6, "primaryPlacement") == 7 || objc_msgSend(v6, "secondaryPlacement") == 7))
  {
    if (dword_1002F6778 > 30)
    {
      v7 = 1;
      goto LABEL_17;
    }

    if (dword_1002F6778 == -1)
    {
      v7 = 1;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    if (dword_1002F6778 > 30)
    {
      v7 = 0;
      goto LABEL_17;
    }

    if (dword_1002F6778 == -1)
    {
      v7 = 0;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  LogPrintF();
LABEL_17:

  return v7;
}

- (BOOL)_isManualConnection:(id)connection
{
  v3 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:connection];
  v4 = v3;
  if (v3)
  {
    v5 = ([v3 deviceFlags] >> 18) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)_isMyAddress:(id)address
{
  addressCopy = address;
  if (addressCopy)
  {
    _myBluetoothAddressString = [(BTSmartRoutingDaemon *)self _myBluetoothAddressString];
    [_myBluetoothAddressString UTF8String];
    v6 = NSDataWithHex();
    if ([v6 length] == 6)
    {
      bytes = [v6 bytes];
      bytes2 = [addressCopy bytes];
      v10 = *bytes2 == *(bytes + 3) && *(bytes2 + 2) == bytes[5];
    }

    else
    {
      if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001E9F68();
      }

      v10 = 0;
    }
  }

  else
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E9F84();
    }

    v10 = 0;
  }

  return v10;
}

- (BOOL)_isOtherTipiDeviceBeforeTrain:(id)train withIOS:(unsigned int)s withMacOS:(unsigned int)oS withWatchOS:(unsigned int)watchOS otherTipiDeviceIsWatch:(BOOL)watch
{
  watchCopy = watch;
  trainCopy = train;
  if (GestaltGetDeviceClass() == 6 || GestaltGetDeviceClass() == 1 && watchCopy)
  {
    NRRegistry = self->_NRRegistry;
    if (!NRRegistry)
    {
      v14 = +[NRPairedDeviceRegistry sharedInstance];
      v15 = self->_NRRegistry;
      self->_NRRegistry = v14;

      NRRegistry = self->_NRRegistry;
    }

    getActivePairedDevice = [(NRPairedDeviceRegistry *)NRRegistry getActivePairedDevice];
    v17 = [getActivePairedDevice valueForProperty:NRDevicePropertySystemVersion];
    v18 = [v17 componentsSeparatedByString:@"."];
    v19 = [v18 objectAtIndex:0];
    integerValue = [v19 integerValue];

    v21 = [getActivePairedDevice valueForProperty:NRDevicePropertySystemName];
    v22 = [v21 isEqualToString:@"iPhone OS"];
    if (integerValue < s)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    LODWORD(v24) = v23 | [v21 isEqualToString:@"Watch OS"] & (integerValue < watchOS);

    goto LABEL_10;
  }

  if (!trainCopy)
  {
LABEL_26:
    LOBYTE(v24) = 0;
    goto LABEL_11;
  }

  v24 = +[CBIDSManager sharedInstance];
  getActivePairedDevice = [v24 idsDeviceForBTAddress:trainCopy];

  LOBYTE(v24) = getActivePairedDevice != 0;
  if (!getActivePairedDevice)
  {
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E9FA0();
    }

    goto LABEL_10;
  }

  productName = [getActivePairedDevice productName];
  if ([productName isEqualToString:@"iPhone OS"])
  {
    [getActivePairedDevice operatingSystemVersion];
    v27 = v31 < s;
  }

  else
  {
    v27 = 0;
  }

  modelIdentifier = [getActivePairedDevice modelIdentifier];
  if ([modelIdentifier containsString:@"Mac"])
  {
    [getActivePairedDevice operatingSystemVersion];
    v29 = v30 < oS;
  }

  else
  {
    v29 = 0;
  }

  if (!v27 && !v29)
  {

    goto LABEL_26;
  }

LABEL_10:

LABEL_11:
  return v24;
}

- (BOOL)_isUSBPluggedIn:(id)in
{
  inCopy = in;
  if (inCopy)
  {
    v5 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:inCopy];
    isUSBPlugIn = [v5 isUSBPlugIn];
  }

  else
  {
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001E9FBC();
    }

    isUSBPlugIn = 0;
  }

  return isUSBPlugIn;
}

- (void)_iPhoneScreenOnPowerEvent
{
  [(BTSmartRoutingDaemon *)self _update];
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001E9FD8(self);
  }

  trailingAccessoryText = [(BTBannerUISession *)self->_uiSmartRoutingBanner trailingAccessoryText];
  v4 = [trailingAccessoryText isEqualToString:@"Reverse"];

  if (v4)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EA050();
    }

    goto LABEL_33;
  }

  centerContentItemsText = [(BTBannerUISession *)self->_uiSmartRoutingBanner centerContentItemsText];
  v6 = [centerContentItemsText isEqualToString:@"Connected"];

  if (!v6)
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_100003918;
    v37 = sub_100003838;
    v38 = 0;
    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = sub_100003918;
    v31 = sub_100003838;
    v32 = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100065F48;
    v22[3] = &unk_1002B7E18;
    v22[4] = self;
    v22[5] = &v33;
    [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v22];
    if (!v34[5])
    {
      goto LABEL_41;
    }

    v8 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:?];
    deviceName = [v8 deviceName];
    v10 = v28[5];
    v28[5] = deviceName;

    v11 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v34[5]];
    productID = [v11 productID];
    *(v24 + 6) = productID;

    v13 = v34[5];
    if (!v13)
    {
LABEL_41:
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      connectedDevices = self->_connectedDevices;
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100066098;
      v21[3] = &unk_1002B8820;
      v21[4] = self;
      v21[5] = &v33;
      v21[6] = &v27;
      v21[7] = &v23;
      [(NSMutableDictionary *)connectedDevices enumerateKeysAndObjectsUsingBlock:v21];
      v13 = v34[5];
    }

    v15 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v13];
    if (v15)
    {
      v16 = 1;
    }

    else
    {
      v16 = [(BTSmartRoutingDaemon *)self _isEligibleForPreemptiveBannerUponUnlock:v34[5]];
    }

    if (!v34[5] || !v16)
    {
      goto LABEL_32;
    }

    v17 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:?];
    if ([v17 hijackBackoffTicks])
    {
      isBTRoute = self->_isBTRoute;

      if (!isBTRoute)
      {
        goto LABEL_32;
      }
    }

    else
    {
    }

    dispatchQueueAVSys = self->_dispatchQueueAVSys;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000661E4;
    v20[3] = &unk_1002B8848;
    v20[4] = self;
    v20[5] = &v33;
    v20[6] = &v27;
    v20[7] = &v23;
    dispatch_async(dispatchQueueAVSys, v20);
LABEL_32:
    _Block_object_dispose(&v23, 8);
    _Block_object_dispose(&v27, 8);

    _Block_object_dispose(&v33, 8);
    goto LABEL_33;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EA034();
  }

LABEL_33:
  if (self->_routeChangeDueToProactiveRouting && !self->_temporaryOverrideTimer)
  {
    [(BTSmartRoutingDaemon *)self _sendNowPlayingTemporaryOverrideIfNeeded:1];
  }

  if (!self->_uiSmartRoutingBanner && self->_prefSmartRoutingInUseBanner)
  {
    [(BTSmartRoutingDaemon *)self _evaluatorRunInUseBanner:0];
  }
}

- (BOOL)_lastConnectIsWatchCheck:(id)check
{
  checkCopy = check;
  v5 = checkCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (checkCopy)
  {
    nearbyInfoDevices = self->_nearbyInfoDevices;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000665C4;
    v9[3] = &unk_1002B87A8;
    v10 = checkCopy;
    v11 = &v12;
    [(NSMutableDictionary *)nearbyInfoDevices enumerateKeysAndObjectsUsingBlock:v9];
    v7 = *(v13 + 24);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v12, 8);

  return v7 & 1;
}

- (void)logConnectionBackoffReason:(id)reason wxAddress:(id)address
{
  reasonCopy = reason;
  addressCopy = address;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000667F4;
  block[3] = &unk_1002B6CF0;
  block[4] = self;
  v12 = reasonCopy;
  v13 = addressCopy;
  v9 = addressCopy;
  v10 = reasonCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_logConnectionBackoffReason:(id)reason wxAddress:(id)address
{
  if (address)
  {
    [(BTSmartRoutingDaemon *)self _logEvalWxError:address withError:reason];
  }

  else
  {
    [(BTSmartRoutingDaemon *)self _logEvalError:reason];
  }
}

- (void)_logEvalError:(id)error
{
  [(SRSourceDevice *)self->_sourceDevice setEvalResult:error];
  v4 = mach_absolute_time();
  sourceDevice = self->_sourceDevice;

  [(SRSourceDevice *)sourceDevice setEvalTicks:v4];
}

- (void)_logPreemptiveBannerEvalError:(id)error
{
  errorCopy = error;
  v6 = errorCopy;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (v5 = _LogCategory_Initialize(), errorCopy = v6, v5))
    {
      sub_1001EA1A4();
      errorCopy = v6;
    }
  }

  [(SRSourceDevice *)self->_sourceDevice setEvalPreemptiveBannerResult:errorCopy];
}

- (void)_logEvalWxError:(id)error withError:(id)withError
{
  errorCopy = error;
  withErrorCopy = withError;
  if (errorCopy)
  {
    evalWxMap = [(SRSourceDevice *)self->_sourceDevice evalWxMap];

    if (!evalWxMap)
    {
      v8 = objc_alloc_init(NSMutableDictionary);
      [(SRSourceDevice *)self->_sourceDevice setEvalWxMap:v8];
    }

    evalWxMap2 = [(SRSourceDevice *)self->_sourceDevice evalWxMap];
    v10 = [evalWxMap2 objectForKeyedSubscript:errorCopy];

    if (!v10)
    {
      v10 = objc_alloc_init(SRWxInfo);
    }

    [(SRWxInfo *)v10 setLastEvalResult:withErrorCopy];
    [(SRWxInfo *)v10 setLastEvalTicks:mach_absolute_time()];
    evalWxMap3 = [(SRSourceDevice *)self->_sourceDevice evalWxMap];
    [evalWxMap3 setObject:v10 forKeyedSubscript:errorCopy];
  }
}

- (double)_lowestBatteryInfoForCBDevice:(id)device
{
  deviceCopy = device;
  if (-[BTSmartRoutingDaemon _bluetoothProductIDNoUTP:](self, "_bluetoothProductIDNoUTP:", [deviceCopy productID]))
  {
    [deviceCopy batteryLevelMain];
    if (v5 == 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      [deviceCopy batteryLevelMain];
      v7 = v6;
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EA2A4();
      }
    }

    goto LABEL_32;
  }

  [deviceCopy batteryLevelLeft];
  if (v8 != 0.0)
  {
    [deviceCopy batteryLevelRight];
    if (v9 != 0.0)
    {
      [deviceCopy batteryLevelLeft];
      v11 = v10;
      [deviceCopy batteryLevelRight];
      if (v11 > v12)
      {
        [deviceCopy batteryLevelRight];
        v7 = v13;
        if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_32;
        }

        goto LABEL_13;
      }

      [deviceCopy batteryLevelLeft];
      v7 = v18;
      if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_32;
      }

LABEL_24:
      sub_1001EA224();
      goto LABEL_32;
    }
  }

  [deviceCopy batteryLevelRight];
  if (v14 != 0.0)
  {
    [deviceCopy batteryLevelRight];
    v7 = v15;
    if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_32;
    }

LABEL_13:
    sub_1001EA264();
    goto LABEL_32;
  }

  [deviceCopy batteryLevelLeft];
  if (v16 != 0.0)
  {
    [deviceCopy batteryLevelLeft];
    v7 = v17;
    if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_32;
    }

    goto LABEL_24;
  }

  v7 = 0.0;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EA1E4();
  }

LABEL_32:

  return v7;
}

- (double)_lowestBatteryInfoForSFDevice:(id)device
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  batteryInfo = [device batteryInfo];
  v5 = [batteryInfo countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    v8 = 1.1;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(batteryInfo);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        [v10 batteryLevel];
        v12 = v11;
        if ([(BTSmartRoutingDaemon *)self _checkValidBatteryValue:v10])
        {
          v13 = v12 < v8;
        }

        else
        {
          v13 = 0;
        }

        if (v13 && v12 != 0.0)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001EA2E4(v10);
          }

          v8 = v12;
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v14 = [batteryInfo countByEnumeratingWithState:&v16 objects:v20 count:16];
      v6 = v14;
    }

    while (v14);
  }

  else
  {
    v8 = 1.1;
  }

  return v8;
}

- (void)_nearbyDeviceInfoTriangleRecoveryTimer
{
  v3 = dispatch_time(0, 120000000000);
  prefSmartRoutingWatchTriangleMagnet = self->_prefSmartRoutingWatchTriangleMagnet;
  if (prefSmartRoutingWatchTriangleMagnet)
  {
    v5 = dispatch_time(0x8000000000000000, 1000000000 * prefSmartRoutingWatchTriangleMagnet);
  }

  else
  {
    v5 = v3;
  }

  if (self->_nearbyInfoDevicesTriangleRecoveryTimer)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EA35C();
    }
  }

  else
  {
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    nearbyInfoDevicesTriangleRecoveryTimer = self->_nearbyInfoDevicesTriangleRecoveryTimer;
    self->_nearbyInfoDevicesTriangleRecoveryTimer = v6;

    v8 = self->_nearbyInfoDevicesTriangleRecoveryTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100066F54;
    handler[3] = &unk_1002B6880;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EA378();
    }

    dispatch_source_set_timer(self->_nearbyInfoDevicesTriangleRecoveryTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_nearbyInfoDevicesTriangleRecoveryTimer);
  }
}

- (void)_nearbyDeviceInfoCheck
{
  if (self->_nearbyInfoDiscovery && !self->_tipiElectionInProgress)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    if ([(NSMutableDictionary *)self->_nearbyInfoDevices count]== 1)
    {
      nearbyInfoDevices = self->_nearbyInfoDevices;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_1000672C0;
      v9[3] = &unk_1002B7DC8;
      v9[4] = &v10;
      [(NSMutableDictionary *)nearbyInfoDevices enumerateKeysAndObjectsUsingBlock:v9];
    }

    if (*(v11 + 24) == 1)
    {
      smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_100067368;
      v8[3] = &unk_1002B8168;
      v8[4] = self;
      [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v8];
    }

    nearbyInfoDevicesTriangleRecoveryTimer = self->_nearbyInfoDevicesTriangleRecoveryTimer;
    if (nearbyInfoDevicesTriangleRecoveryTimer)
    {
      v6 = nearbyInfoDevicesTriangleRecoveryTimer;
      dispatch_source_cancel(v6);
      v7 = self->_nearbyInfoDevicesTriangleRecoveryTimer;
      self->_nearbyInfoDevicesTriangleRecoveryTimer = 0;
    }

    _Block_object_dispose(&v10, 8);
  }
}

- (id)_nearbyMacAddressTranslate:(id)translate
{
  translateCopy = translate;
  v4 = translateCopy;
  if (translateCopy)
  {
    v5 = translateCopy;
    v6 = +[CBIDSManager sharedInstance];
    v7 = [v6 publicAddressForIDSDevice:v5];

    if (v7)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EA47C();
      }

      [v7 UTF8String];
      v8 = NSDataWithHex();
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EA4BC();
      }
    }

    else
    {
      if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EA4FC();
      }

      v9 = 0;
    }
  }

  else
  {
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EA53C();
    }

    v9 = 0;
  }

  return v9;
}

- (int)_nearbyDeviceType:(id)type
{
  typeCopy = type;
  if ([typeCopy containsString:@"iPhone"])
  {
    v4 = 1;
  }

  else if ([typeCopy containsString:@"iPad"])
  {
    v4 = 2;
  }

  else if ([typeCopy containsString:@"Mac"])
  {
    v4 = 3;
  }

  else if ([typeCopy containsString:@"Watch"])
  {
    v4 = 4;
  }

  else if ([typeCopy containsString:@"iPod"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_notifyOtherTipiDeviceTipiScoreChanged:(int)changed andNewScore:(int)score
{
  if (self->_prefProactiveOwnershipArbitration)
  {
    v7 = score | changed;
    if (!(score | changed))
    {
      goto LABEL_9;
    }

    if ([(BTSmartRoutingDaemon *)self _isInTipi])
    {
      nearbyDeviceNotificationTimer = self->_nearbyDeviceNotificationTimer;
      if (nearbyDeviceNotificationTimer)
      {
        v9 = nearbyDeviceNotificationTimer;
        dispatch_source_cancel(v9);
        v10 = self->_nearbyDeviceNotificationTimer;
        self->_nearbyDeviceNotificationTimer = 0;
      }

      if ((score - 1) < 2 || (changed - 1) <= 1)
      {
LABEL_9:

        [(BTSmartRoutingDaemon *)self _sendAudioScoreChanged:v7 == 0];
      }
    }
  }
}

- (void)_otherTipiDeviceTipiScoreChanged:(id)changed withOptions:(id)options
{
  optionsCopy = options;
  if (self->_prefProactiveOwnershipArbitration)
  {
    v22 = optionsCopy;
    v7 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:changed];
    v8 = NSDictionaryGetNSNumber();
    intValue = [v8 intValue];

    otherTipiDeviceAudioScore = [v7 otherTipiDeviceAudioScore];
    CFStringGetTypeID();
    v11 = CFDictionaryGetTypedValue();
    v12 = [v22 objectForKey:@"newTipi"];

    otherTipiDeviceBTAddress = [v7 otherTipiDeviceBTAddress];

    if (otherTipiDeviceBTAddress)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EA558(otherTipiDeviceAudioScore, intValue);
      }

      [v7 setOtherTipiDeviceAudioScore:intValue];
      if (intValue == 1)
      {
        if (otherTipiDeviceAudioScore != 1)
        {
          v14 = NSDictionaryGetNSNumber();
          [v14 intValue];

          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001EA650(v7, self);
          }

          v15 = mach_absolute_time();
          [v7 setOtherTipiDeviceIdleTick:v15 - SecondsToUpTicks()];
          if (v12)
          {
            [(BTSmartRoutingDaemon *)self _startHighActivityLevelTimer:1];
            [(SRStats *)self->_stats setProactiveRoutingTrigger:@"Tipi connection"];
          }
        }
      }

      else if (intValue >= 3)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001EA5EC(intValue);
        }

        highActivityLevelTimer = self->_highActivityLevelTimer;
        if (highActivityLevelTimer)
        {
          v17 = highActivityLevelTimer;
          dispatch_source_cancel(v17);
          v18 = self->_highActivityLevelTimer;
          self->_highActivityLevelTimer = 0;
        }

        temporaryOverrideTimer = self->_temporaryOverrideTimer;
        if (temporaryOverrideTimer)
        {
          v20 = temporaryOverrideTimer;
          dispatch_source_cancel(v20);
          v21 = self->_temporaryOverrideTimer;
          self->_temporaryOverrideTimer = 0;
        }
      }
    }

    else if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EA6E8();
    }

    optionsCopy = v22;
  }
}

- (void)_postNotification:(const char *)notification
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EA728();
  }

  notify_post(notification);
}

- (void)_powerLogSmartIncomingConnection
{
  if (self->_prefSmartRoutingEnabledPhase3)
  {
    v4[0] = @"kIncomingLEPipe";
    v4[1] = @"timestamp";
    v5[0] = &__kCFBooleanTrue;
    v2 = [NSNumber numberWithDouble:CFAbsoluteTimeGetCurrent()];
    v5[1] = v2;
    v3 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

    PLLogRegisteredEvent();
  }
}

- (void)prewarmAudioAccessoriesForFitnessWorkout
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067DE0;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_prewarmAudioAccessoriesForFitnessWorkout
{
  [(BTSmartRoutingDaemon *)self _routedHRMEnabledDevice];
  if (objc_claimAutoreleasedReturnValue())
  {
    sub_1001EA768();
LABEL_15:
    _nearbyHRMDeviceEligibleToConnectTo = v8;
    goto LABEL_10;
  }

  _hrmEnabledDeviceEligibleToRoute = [(BTSmartRoutingDaemon *)self _hrmEnabledDeviceEligibleToRoute];
  if (_hrmEnabledDeviceEligibleToRoute)
  {
    v7 = _hrmEnabledDeviceEligibleToRoute;
    if ([_hrmEnabledDeviceEligibleToRoute otherTipiDeviceIsWatch])
    {
      [(BTSmartRoutingDaemon *)self _takeOwnershipFromWatchForDevice:v7];
    }

    else
    {
      [(BTSmartRoutingDaemon *)self _proactivelyTakeOwnershipOfDevice:v7];
    }

    _nearbyHRMDeviceEligibleToConnectTo = v7;
    goto LABEL_10;
  }

  activeHRMDevice = [(SRSourceDevice *)self->_sourceDevice activeHRMDevice];

  if (activeHRMDevice)
  {
    sub_1001EA7DC(&v8);
    goto LABEL_15;
  }

  _nearbyHRMDeviceEligibleToConnectTo = [(BTSmartRoutingDaemon *)self _nearbyHRMDeviceEligibleToConnectTo];
  if (_nearbyHRMDeviceEligibleToConnectTo)
  {
    v6 = _nearbyHRMDeviceEligibleToConnectTo;
    [(BTSmartRoutingDaemon *)self _evaluateNearbyHRMDevice:_nearbyHRMDeviceEligibleToConnectTo];

    _nearbyHRMDeviceEligibleToConnectTo = 0;
  }

LABEL_10:
}

- (void)_proactivelyTakeOwnership
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100003918;
  v17 = sub_100003838;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000680E8;
  v12[3] = &unk_1002B6ED8;
  v12[4] = self;
  v12[5] = &v13;
  v3 = objc_retainBlock(v12);
  _getInEarSrWxDevice = [(BTSmartRoutingDaemon *)self _getInEarSrWxDevice];
  v5 = _getInEarSrWxDevice;
  if (!_getInEarSrWxDevice)
  {
    v8 = v14[5];
    v14[5] = @"Couldn't find inEar Wx";
    goto LABEL_9;
  }

  v6 = [_getInEarSrWxDevice otherTipiDeviceAudioScore] != 1 && objc_msgSend(v5, "otherTipiDeviceAudioScore") != 2 || objc_msgSend(v5, "otherTipiDeviceIdleTick") == 0;
  v7 = [[NSString alloc] initWithFormat:@"The other Tipi device is not idle, audioScore %d idleTick %llu", objc_msgSend(v5, "otherTipiDeviceAudioScore"), objc_msgSend(v5, "otherTipiDeviceIdleTick")];
  v8 = v7;
  if (v6)
  {
    v9 = v14;
    v10 = v7;
    v11 = v9[5];
    v9[5] = v10;
LABEL_13:

    goto LABEL_9;
  }

  if (self->_score <= 5)
  {
    v11 = v14[5];
    v14[5] = @"Audio score is not high";
    goto LABEL_13;
  }

  [(BTSmartRoutingDaemon *)self _proactivelyTakeOwnershipOfDevice:v5];
LABEL_9:

  (v3[2])(v3);
  _Block_object_dispose(&v13, 8);
}

- (void)_proactivelyTakeOwnershipOfDevice:(id)device
{
  deviceCopy = device;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = sub_100003918;
  v35 = sub_100003838;
  v36 = 0;
  deviceAddress = [deviceCopy deviceAddress];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100068644;
  v30[3] = &unk_1002B8870;
  v30[5] = self;
  v30[6] = &v31;
  v30[4] = deviceAddress;
  v6 = objc_retainBlock(v30);
  v29 = v6;
  v7 = [[NSString alloc] initWithFormat:@"Already has ownership: %@", deviceAddress];
  if ([deviceCopy hasOwnership])
  {
    v21 = v32;
    v22 = v7;
LABEL_30:
    v7 = v22;
    identifier = v21[5];
    v21[5] = v22;
    goto LABEL_26;
  }

  otherTipiDeviceBTAddress = [deviceCopy otherTipiDeviceBTAddress];

  if (!otherTipiDeviceBTAddress)
  {
    identifier = v32[5];
    v32[5] = @"Not in Tipi";
    goto LABEL_26;
  }

  otherTipiAudioCategory = [deviceCopy otherTipiAudioCategory];
  v10 = [[NSString alloc] initWithFormat:@"The other Tipi device is streaming, audioCategory %u", objc_msgSend(deviceCopy, "otherTipiAudioCategory")];

  if (otherTipiAudioCategory >= 0x65)
  {
    v21 = v32;
    v22 = v10;
    goto LABEL_30;
  }

  identifier = [deviceCopy identifier];
  v12 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:deviceAddress];
  v13 = [(BTSmartRoutingDaemon *)self _getRssiNearby:identifier];
  mach_absolute_time();
  [deviceCopy otherTipiDeviceIdleTick];
  v14 = UpTicksToSeconds();
  v28 = v10;
  if (identifier)
  {
    v15 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier];
    audioState = [v15 audioState];

    v17 = audioState == 0;
  }

  else
  {
    v17 = 1;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    audioStreamState = [v12 audioStreamState];
    if (audioStreamState > 3)
    {
      v19 = "?";
    }

    else
    {
      v19 = off_1002B9128[audioStreamState];
    }

    rssi = [v12 rssi];
    v27 = v13;
    v24 = v19;
    v25 = v14;
    v23 = deviceAddress;
    LogPrintF();
  }

  if ([v12 audioStreamState] != 1)
  {
    if ([v12 audioStreamState] != 0 || !v17 || v13 <= -70)
    {
      goto LABEL_25;
    }

LABEL_20:
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    self->_proactiveRoutingInProgress = 1;
    v20 = [NSString stringWithFormat:@"%@%@", deviceAddress, @"-tacl"];
    [(BTSmartRoutingDaemon *)self _smartRoutingChangeRoute:v20];

    [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:&off_1002CBDD8 andWxAddress:deviceAddress andOtherAddress:0];
    -[SRStats setProactiveRoutingWxRSSI:](self->_stats, "setProactiveRoutingWxRSSI:", [v12 rssi]);
    [(BTSmartRoutingDaemon *)self _startRouteCheckTimer:deviceAddress andType:12];
    goto LABEL_25;
  }

  if (v13 >= -69)
  {
    goto LABEL_20;
  }

LABEL_25:

  v7 = v28;
  v6 = v29;
LABEL_26:

  (v6[2])(v6);
  _Block_object_dispose(&v31, 8);
}

- (id)_queryLocalAudioCategory
{
  v2 = +[AVSystemController sharedAVSystemController];
  v3 = [v2 attributeForKey:AVSystemController_HighestArbitrationPriorityForTipiAttribute];
  v4 = [v3 objectForKeyedSubscript:AVSystemController_HighestArbitrationPriorityForTipi_AudioScore];
  if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EA850();
  }

  return v4;
}

- (void)_receivedRelinquishOwnership:(id)ownership wxAddress:(id)address
{
  ownershipCopy = ownership;
  addressCopy = address;
  v7 = [ownershipCopy objectForKeyedSubscript:@"reason"];
  v8 = &dword_1002F6000;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EA890();
    if (addressCopy)
    {
LABEL_5:
      v9 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:addressCopy];
      if (!v9)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001EA908();
        }

        goto LABEL_85;
      }

      v10 = [ownershipCopy objectForKey:@"audioRoutingScore"];
      audioScoreOtherTipiDevice = self->_audioScoreOtherTipiDevice;
      if (audioScoreOtherTipiDevice != [v10 intValue])
      {
        self->_audioScoreOtherTipiDevice = [v10 intValue];
      }

      identifier = [ownershipCopy objectForKey:@"localscore"];
      intValue = [identifier intValue];

      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        v14 = "yes";
        if (!self->_activityLevelMediaPlaying)
        {
          if ([(CUSystemMonitor *)self->_callMonitor activeCallCount]<= 0)
          {
            v14 = "no";
          }

          else
          {
            v14 = "yes";
          }
        }

        score = self->_score;
        v58 = v10;
        if (score > 0xF)
        {
          v16 = "?";
        }

        else
        {
          v16 = off_1002B8F50[score];
        }

        v17 = self->_audioScoreOtherTipiDevice;
        if ([v9 routed])
        {
          v18 = "yes";
        }

        else
        {
          v18 = "no";
        }

        identifier = [(CUUserNotificationSession *)self->_uiNoteSessionSmartRouting identifier];
        v56 = v18;
        v57 = identifier;
        v54 = v16;
        v55 = v17;
        v51 = intValue;
        v53 = v14;
        v49 = v7;
        LogPrintF();

        v10 = v58;
        v8 = &dword_1002F6000;
      }

      [(BTSmartRoutingDaemon *)self _setOwnership:addressCopy withHijackRequest:0 withOwnership:0, v49, v51, v53, v54, v55, v56, v57];
      phoneOwnershipTimer = self->_phoneOwnershipTimer;
      if (phoneOwnershipTimer)
      {
        intValue = phoneOwnershipTimer;
        dispatch_source_cancel(intValue);
        v20 = self->_phoneOwnershipTimer;
        self->_phoneOwnershipTimer = 0;
      }

      if (![v9 routed])
      {
LABEL_53:
        uiNoteSessionSmartRouting = self->_uiNoteSessionSmartRouting;
        if (uiNoteSessionSmartRouting)
        {
          identifier2 = [(CUUserNotificationSession *)uiNoteSessionSmartRouting identifier];
          v33 = [identifier2 isEqualToString:@"ReverseRoute"];

          if ([v7 isEqualToString:@"AutoResume"])
          {
            if (v33)
            {
              goto LABEL_84;
            }

LABEL_58:
            v34 = v10;
            v35 = v8[478];
            if (v35 <= 30 && (v35 != -1 || _LogCategory_Initialize()))
            {
              sub_1001EA8EC();
            }

            deviceName = [v9 deviceName];
            deviceAddress = [v9 deviceAddress];
            productID = [v9 productID];
            otherTipiDeviceBTName = [v9 otherTipiDeviceBTName];
            v40 = [NSString stringWithFormat:@"%@", otherTipiDeviceBTName];
            [(BTSmartRoutingDaemon *)self _smartRoutingShowBanner:5 withDevice:deviceName andDeviceAddress:deviceAddress andProductID:productID andCentralContentItemTxt:v40 andTimeout:0 andDeviceType:20.0];

            v10 = v34;
            goto LABEL_84;
          }
        }

        else if ([v7 isEqualToString:@"AutoResume"])
        {
          goto LABEL_58;
        }

        if ([v7 isEqualToString:@"Hijackv2"])
        {
          v41 = [ownershipCopy objectForKeyedSubscript:@"localscore"];
          v42 = v8[478];
          if (v42 <= 30 && (v42 != -1 || _LogCategory_Initialize()))
          {
            v50 = v41;
            v52 = v10;
            LogPrintF();
          }

          [(SRStats *)self->_stats setHijackAwayLocalScore:0xFFFFFFFFLL, v50, v52];
          [(SRStats *)self->_stats setHijackAwayRemoteScore:0xFFFFFFFFLL];
          if (v41)
          {
            -[SRStats setHijackAwayLocalScore:](self->_stats, "setHijackAwayLocalScore:", [v41 intValue]);
          }

          if (v10)
          {
            -[SRStats setHijackAwayRemoteScore:](self->_stats, "setHijackAwayRemoteScore:", [v10 intValue]);
          }

          [(BTSmartRoutingDaemon *)self submitRouteActivityMetric:addressCopy activity:@"Hijack_Away"];
          falseRouteCheckReason = [(SRStats *)self->_stats falseRouteCheckReason];

          if (!falseRouteCheckReason)
          {
            [(SRStats *)self->_stats setFalseRouteCheckReason:@"Hijacked_Away"];
          }

          [(BTSmartRoutingDaemon *)self _startRouteCheckTimer:addressCopy andType:8];

          goto LABEL_84;
        }

        if ([v7 isEqualToString:@"ManualRoute"])
        {
          [(BTSmartRoutingDaemon *)self submitRouteActivityMetric:addressCopy activity:@"Remote_Manual_Route"];
          [v9 setOtherTipiManuallyRouteTicks:mach_absolute_time()];
          falseRouteCheckReason2 = [(SRStats *)self->_stats falseRouteCheckReason];

          if (falseRouteCheckReason2)
          {
LABEL_84:

LABEL_85:
            goto LABEL_86;
          }

          stats = self->_stats;
          v45 = @"Remote_Manual_Route";
        }

        else
        {
          if (![v7 isEqualToString:@"ReverseBannerTapped"])
          {
            goto LABEL_84;
          }

          v46 = v8[478];
          if (v46 <= 30 && (v46 != -1 || _LogCategory_Initialize()))
          {
            sub_1001EA8D0();
          }

          [v9 setHijackBackoffTicks:mach_absolute_time()];
          self->_hijackBackOffInitiator = 0;
          [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
          falseRouteCheckReason3 = [(SRStats *)self->_stats falseRouteCheckReason];

          if (falseRouteCheckReason3)
          {
            goto LABEL_84;
          }

          stats = self->_stats;
          v45 = @"Remote_reverse_banner_tapped";
        }

        [(SRStats *)stats setFalseRouteCheckReason:v45];
        goto LABEL_84;
      }

      v21 = self->_audioScoreOtherTipiDevice;
      if (v21 <= 0)
      {
        v23 = [ownershipCopy objectForKey:@"audioRoutingShowReverseUI"];
        if (v23)
        {
          intValue = v23;
          v22 = 0;
        }

        else
        {
          v24 = [ownershipCopy objectForKey:@"SmartRoutingKeyShowNearbyUI"];
          if (!v24)
          {
            goto LABEL_52;
          }

          identifier = v24;
          intValue = 0;
          v22 = 1;
        }
      }

      else
      {
        v22 = 0;
      }

      if (self->_score <= 3 && [(CUSystemMonitor *)self->_callMonitor activeCallCount]< 1)
      {
        v25 = 0;
        if (v22)
        {
LABEL_44:

          if (v21 >= 1)
          {
            goto LABEL_45;
          }

LABEL_49:

          if (v25)
          {
            goto LABEL_50;
          }

LABEL_52:
          [v9 setRouted:0];
          [v9 setRoutingAction:3];
          [(BTSmartRoutingDaemon *)self _setManualRouteFlag:addressCopy withManualRoute:0];
          v8 = &dword_1002F6000;
          goto LABEL_53;
        }
      }

      else
      {
        v25 = [v10 intValue] != 200;
        if (v22)
        {
          goto LABEL_44;
        }
      }

      if (v21 > 0)
      {
LABEL_45:
        if (!v25)
        {
          goto LABEL_52;
        }

LABEL_50:
        if (([v9 otherTipiDeviceIsWatch] & 1) == 0)
        {
          deviceName2 = [v9 deviceName];
          deviceAddress2 = [v9 deviceAddress];
          productID2 = [v9 productID];
          otherTipiDeviceBTName2 = [v9 otherTipiDeviceBTName];
          v30 = [NSString stringWithFormat:@"%@", otherTipiDeviceBTName2];
          [(BTSmartRoutingDaemon *)self _smartRoutingShowBanner:5 withDevice:deviceName2 andDeviceAddress:deviceAddress2 andProductID:productID2 andCentralContentItemTxt:v30 andTimeout:0 andDeviceType:20.0];
        }

        goto LABEL_52;
      }

      goto LABEL_49;
    }
  }

  else if (addressCopy)
  {
    goto LABEL_5;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EA924();
  }

LABEL_86:
}

- (void)_removeTiPiState:(id)state
{
  stateCopy = state;
  v17 = stateCopy;
  if (dword_1002F6778 <= 30)
  {
    if (dword_1002F6778 != -1 || (v5 = _LogCategory_Initialize(), stateCopy = v17, v5))
    {
      sub_1001EA940();
      stateCopy = v17;
    }
  }

  v6 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:stateCopy];
  audioRoutingResponse = [v6 audioRoutingResponse];

  if (audioRoutingResponse)
  {
    v8 = objc_alloc_init(BTAudioRoutingResponse);
    [v8 setAction:1];
    [v8 setDeviceAddress:v17];
    [v8 setReason:@"Tipi device should be routed"];
    [v8 setClientID:{objc_msgSend(v6, "audioRoutingClientID")}];
    audioRoutingResponse2 = [v6 audioRoutingResponse];
    [(BTSmartRoutingDaemon *)self _respondRoutingRequest:v8 withResponseHandler:audioRoutingResponse2 wxAddress:v17];
  }

  if ([v6 isHRMCapable])
  {
    [(BTSmartRoutingDaemon *)self dataRelayRemoveAvailableDataTypesWithDevice:v6];
  }

  [v6 setOtherTipiDeviceInfo:0 andName:0 andVersion:0];
  [v6 setOtherTipiIDSIdentifier:0];
  [v6 setOtherTipiAudioCategory:0];
  [v6 setOtherTipiDeviceIsStreamingAudio:0];
  [v6 setOtherTipiDeviceIsWatch:0];
  [v6 setOtherTipiDeviceDRCompatible:0];
  phoneOwnershipTimer = self->_phoneOwnershipTimer;
  if (phoneOwnershipTimer)
  {
    v11 = phoneOwnershipTimer;
    dispatch_source_cancel(v11);
    v12 = self->_phoneOwnershipTimer;
    self->_phoneOwnershipTimer = 0;
  }

  temporaryOverrideTimer = self->_temporaryOverrideTimer;
  if (temporaryOverrideTimer)
  {
    v14 = temporaryOverrideTimer;
    dispatch_source_cancel(v14);
    v15 = self->_temporaryOverrideTimer;
    self->_temporaryOverrideTimer = 0;
  }

  if ([(NSMutableDictionary *)self->_smartRoutingWxDeviceMap count]== 1)
  {
    if (self->_pairedCompanionDeviceSupportsSmartRouting)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    [v6 setRoutingAction:v16];
    [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
  }

  if ([(NSMutableDictionary *)self->_smartRoutingWxDeviceMap count]== 1)
  {
    [(BTSmartRoutingDaemon *)self _updateNearbyDeviceState:v17 withAddress:&stru_1002C1358 withEasyPairing:0 withState:3];
  }
}

- (void)_relayConduitMessageStartTimer:(id)timer withOptions:(id)options
{
  timerCopy = timer;
  optionsCopy = options;
  v8 = dispatch_time(0, 3500000000);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100003918;
  v21 = sub_100003838;
  v22 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:timerCopy];
  v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  [v18[5] setConduitMessageTimer:v9];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000694D8;
  handler[3] = &unk_1002B8898;
  handler[4] = self;
  v13 = timerCopy;
  v14 = optionsCopy;
  v15 = &v17;
  v16 = 0x400C000000000000;
  v10 = optionsCopy;
  v11 = timerCopy;
  dispatch_source_set_event_handler(v9, handler);
  dispatch_source_set_timer(v9, v8, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(v9);

  _Block_object_dispose(&v17, 8);
}

- (void)_setOwnership:(id)ownership withHijackRequest:(id)request withOwnership:(BOOL)withOwnership
{
  withOwnershipCopy = withOwnership;
  ownershipCopy = ownership;
  requestCopy = request;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v10 = "no";
    if (withOwnershipCopy)
    {
      v10 = "yes";
    }

    v18 = ownershipCopy;
    v19 = v10;
    LogPrintF();
  }

  v11 = objc_alloc_init(CBDeviceSettings);
  v12 = v11;
  if (withOwnershipCopy)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  [v11 setRelinquishAudioRoute:{v13, v18, v19}];
  v14 = objc_alloc_init(CBDevice);
  [v14 setIdentifier:ownershipCopy];
  smartRoutingController = self->_smartRoutingController;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000699E0;
  v20[3] = &unk_1002B6D60;
  v21 = requestCopy;
  selfCopy = self;
  v23 = ownershipCopy;
  v16 = ownershipCopy;
  v17 = requestCopy;
  [(CBController *)smartRoutingController modifyDevice:v14 settings:v12 completion:v20];
}

- (void)_sendAudioCategory:(id)category withAudioCategory:(id)audioCategory
{
  categoryCopy = category;
  audioCategoryCopy = audioCategory;
  v8 = audioCategoryCopy;
  if (audioCategoryCopy)
  {
    v9 = audioCategoryCopy;
    v10 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:categoryCopy];
    otherTipiDeviceIsWatch = [v10 otherTipiDeviceIsWatch];

    intValue = [v9 intValue];
    if ([(SRSourceDevice *)self->_sourceDevice incomingCallRingtone])
    {
      intValue2 = [(NSNumber *)self->_localDeviceAudioCategory intValue];
      if (![(BTSmartRoutingDaemon *)self _isInHijackBlockingMode])
      {
        v14 = intValue2 > 500;
        if (intValue == 401)
        {
          v14 = otherTipiDeviceIsWatch;
        }

        if (v14)
        {
          goto LABEL_17;
        }

LABEL_15:
        v15 = &off_1002CB750;
        goto LABEL_16;
      }
    }

    else if (![(BTSmartRoutingDaemon *)self _isInHijackBlockingMode])
    {
      if ((intValue != 401) | otherTipiDeviceIsWatch & 1)
      {
LABEL_17:
        if (self->_activityLevelMediaPlaying)
        {
          v16 = @"YES";
        }

        else
        {
          v16 = @"YES";
          if ([(CUSystemMonitor *)self->_callMonitor activeCallCount]<= 0 && !self->_cdDeviceIdentifier)
          {
            v16 = @"NO";
          }
        }

        _myBluetoothAddressString = [(BTSmartRoutingDaemon *)self _myBluetoothAddressString];
        v18 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:categoryCopy];
        otherTipiDeviceBTAddress = [v18 otherTipiDeviceBTAddress];

        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          v25 = otherTipiDeviceBTAddress;
          integerValue = [v9 integerValue];
          v24 = categoryCopy;
          LogPrintF();
        }

        v20 = [(SRSourceDevice *)self->_sourceDevice activePlayingApp:v24];
        v21 = v20;
        v22 = @"NA";
        if (v20)
        {
          v22 = v20;
        }

        v28[4] = v22;
        v23 = [NSDictionary dictionaryWithObjects:v28 forKeys:&v27 count:5];

        [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:v23 andWxAddress:categoryCopy andOtherAddress:otherTipiDeviceBTAddress];
        goto LABEL_29;
      }

      goto LABEL_15;
    }

    v15 = &off_1002CB738;
LABEL_16:

    v9 = v15;
    goto LABEL_17;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EAA90();
  }

LABEL_29:
}

- (void)_sendAudioCategoryToAllTipiDevices
{
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100069E84;
  v3[3] = &unk_1002B8168;
  v3[4] = self;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)_sendTipiHealingRequest:(id)request andOtherTipiAddress:(id)address
{
  requestCopy = request;
  addressCopy = address;
  if (self->_tipiElectionInProgress)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EAAC8();
    }
  }

  else
  {
    self->_tipiElectionInProgress = 1;
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EAAAC();
    }

    [(BTSmartRoutingDaemon *)self _updateNearbyDeviceState:requestCopy withAddress:addressCopy withEasyPairing:0 withState:1];
    v8 = @"YES";
    if (!self->_activityLevelMediaPlaying)
    {
      if ([(CUSystemMonitor *)self->_callMonitor activeCallCount]<= 0)
      {
        v8 = @"NO";
      }

      else
      {
        v8 = @"YES";
      }
    }

    _myBluetoothAddressString = [(BTSmartRoutingDaemon *)self _myBluetoothAddressString];
    v14[0] = @"tipiHealingAttempt";
    v14[1] = @"tipiHealingName";
    myModel = self->_myModel;
    v15[0] = _myBluetoothAddressString;
    v15[1] = myModel;
    v14[2] = @"version";
    v14[3] = @"tipiHealingStreaming";
    v15[2] = &off_1002CB618;
    v15[3] = v8;
    v14[4] = @"tipiHealingPreferMac";
    v11 = [(BTSmartRoutingDaemon *)self _isManualConnection:requestCopy];
    v12 = @"Don't route for manual connection";
    if (!v11)
    {
      v12 = @"YES";
    }

    v15[4] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:5];
    [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:v13 andWxAddress:requestCopy andOtherAddress:addressCopy];
    [(BTSmartRoutingDaemon *)self _tipiHealingStartTimer:requestCopy];
  }
}

- (void)_sendRouteReversedTipiEventForTipsSupport
{
  v2 = objc_autoreleasePoolPush();
  v3 = +[BMStreams discoverabilitySignal];
  source = [v3 source];
  v5 = [[BMDiscoverabilitySignalEvent alloc] initWithIdentifier:@"com.apple.bluetooth.audio-reversed" bundleID:@"com.apple.cloudpaird" context:0];
  [source sendEvent:v5];

  objc_autoreleasePoolPop(v2);
}

- (void)_sendAudioScoreChanged:(BOOL)changed
{
  if (self->_startIdleTicks)
  {
    mach_absolute_time();
    startIdleTicks = self->_startIdleTicks;
    v6 = UpTicksToSeconds();
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EAAE4();
    }
  }

  else
  {
    v6 = 0;
  }

  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006A294;
  v8[3] = &unk_1002B88C0;
  v8[4] = self;
  v8[5] = v6;
  changedCopy = changed;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)_sendIntendedRouteInfoUpdateToWx:(id)wx withIntendedRoutingStatus:(BOOL)status
{
  wxCopy = wx;
  if (_os_feature_enabled_impl())
  {
    if (!self->_smartRoutingController)
    {
      [(BTSmartRoutingDaemon *)self _smartRoutingControllerEnsureStarted];
    }

    v12 = 4;
    statusCopy = status;
    v7 = [NSData dataWithBytes:&v12 length:3];
    smartRoutingController = self->_smartRoutingController;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006A560;
    v9[3] = &unk_1002B68A8;
    v10 = wxCopy;
    v11 = v7;
    [(CBController *)smartRoutingController sendSmartRoutingInformation:v7 device:v10 completionHandler:v9];
  }
}

- (void)_sendTipiScoreUpdateToWx
{
  if (self->_isActiveHRMSession)
  {
    sub_1001EAC7C();
  }

  else
  {
    srDiscoveredDeviceMap = self->_srDiscoveredDeviceMap;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10006A670;
    v3[3] = &unk_1002B8368;
    v3[4] = self;
    [(NSMutableDictionary *)srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v3];
  }
}

- (void)_sendNowPlayingInfoUpdateToWx:(id)wx withMessage:(id)message withLastPlayedTarget:(unsigned __int8)target andHeadsetAddress:(id)address
{
  var5 = message.var5;
  v9 = *&message.var0;
  wxCopy = wx;
  addressCopy = address;
  if (!self->_smartRoutingController)
  {
    [(BTSmartRoutingDaemon *)self _smartRoutingControllerEnsureStarted];
  }

  v21 = v9;
  v22 = var5;
  v23 = WORD2(var5);
  if (addressCopy)
  {
    if ([addressCopy isEqualToString:wxCopy])
    {
      target = 1;
    }

    else
    {
      target = 2;
    }
  }

  BYTE3(v21) = target;
  v13 = [NSData dataWithBytes:&v21 length:14];
  v14 = objc_alloc_init(CBDevice);
  [v14 setIdentifier:wxCopy];
  smartRoutingController = self->_smartRoutingController;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10006A7D8;
  v18[3] = &unk_1002B68A8;
  v19 = wxCopy;
  v20 = v13;
  v16 = v13;
  v17 = wxCopy;
  [(CBController *)smartRoutingController sendSmartRoutingInformation:v16 device:v14 completionHandler:v18];
}

- (void)_setAutoRoute:(id)route withAutoRoute:(BOOL)autoRoute
{
  autoRouteCopy = autoRoute;
  routeCopy = route;
  v7 = objc_alloc_init(CBDeviceSettings);
  v8 = v7;
  if (autoRouteCopy)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v7 setAllowsAutoRoute:v9];
  v10 = objc_alloc_init(CBDevice);
  [v10 setIdentifier:routeCopy];

  smartRoutingController = self->_smartRoutingController;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006A9C8;
  v12[3] = &unk_1002B6A38;
  v12[4] = self;
  [(CBController *)smartRoutingController modifyDevice:v10 settings:v8 completion:v12];
}

- (void)_setDisconnectTick:(unint64_t)tick forWxAddress:(id)address
{
  addressCopy = address;
  if (!self->_disconnectTicksMap)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    disconnectTicksMap = self->_disconnectTicksMap;
    self->_disconnectTicksMap = v6;
  }

  v8 = [NSNumber numberWithUnsignedLongLong:tick];
  [(NSMutableDictionary *)self->_disconnectTicksMap setObject:v8 forKeyedSubscript:addressCopy];

  v9 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:addressCopy];
  v10 = v9;
  if (v9)
  {
    [v9 setDisconnectionBackoffTick:tick];
  }

  else if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EAE0C();
  }
}

- (void)_setIsHiddenProperty:(id)property withIsHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  propertyCopy = property;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v6 = "no";
    if (hiddenCopy)
    {
      v6 = "yes";
    }

    v11 = propertyCopy;
    v12 = v6;
    LogPrintF();
  }

  v7 = objc_alloc_init(CBDeviceSettings);
  v8 = v7;
  if (hiddenCopy)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  [v7 setAudioRouteHidden:{v9, v11, v12}];
  v10 = objc_alloc_init(CBDevice);
  [v10 setIdentifier:propertyCopy];
  [(CBController *)self->_smartRoutingController modifyDevice:v10 settings:v8 completion:&stru_1002B88E0];
}

- (void)_setHighPriorityTag:(id)tag withHighPriority:(BOOL)priority
{
  tagCopy = tag;
  v7 = objc_alloc_init(CBDeviceSettings);
  v8 = v7;
  if (priority)
  {
    v9 = 80;
LABEL_5:
    [v7 setAclPriority:v9];
    goto LABEL_6;
  }

  if (self->_highPriorityTagSent)
  {
    v9 = 1;
    goto LABEL_5;
  }

LABEL_6:
  v10 = objc_alloc_init(CBDevice);
  [v10 setIdentifier:tagCopy];

  smartRoutingController = self->_smartRoutingController;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006ADE4;
  v12[3] = &unk_1002B6A38;
  v12[4] = self;
  [(CBController *)smartRoutingController modifyDevice:v10 settings:v8 completion:v12];
}

- (void)_setManualRouteFlag:(id)flag withManualRoute:(BOOL)route
{
  routeCopy = route;
  flagCopy = flag;
  v6 = objc_alloc_init(CBDeviceSettings);
  [v6 setDeviceFlagsMask:0x400000];
  [v6 setDeviceFlagsValue:routeCopy];
  v7 = objc_alloc_init(CBDevice);
  [v7 setIdentifier:flagCopy];
  v8 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:flagCopy];
  if ([v8 manuallyRouted])
  {
    [v8 setManualRouteChangeInProgress:1];
  }

  v9 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:flagCopy];
  [v9 setManuallyRouted:0];

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EAECC();
  }

  [(CBController *)self->_smartRoutingController modifyDevice:v7 settings:v6 completion:&stru_1002B8900];
}

- (void)_setOtherTipiDeviceBTAddress:(id)address andName:(id)name sourceVersion:(id)version withResult:(id)result
{
  addressCopy = address;
  nameCopy = name;
  versionCopy = version;
  resultCopy = result;
  v13 = resultCopy;
  if (self->_eligibleHeadset)
  {
    if (resultCopy)
    {
      bleDevice = [(SFDevice *)self->_eligibleHeadset bleDevice];
      bluetoothAddress = [bleDevice bluetoothAddress];

      if ([bluetoothAddress length] == 6)
      {
        bytes = [bluetoothAddress bytes];
        v16 = NSPrintF();
        if (v16)
        {
          v17 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v16, bytes];
          if (v17)
          {
          }

          else if (![(BTSmartRoutingDaemon *)self _isOnDemandConnectInProgress])
          {
            if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
            {
              sub_1001EAF5C();
            }

            [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap setObject:0 forKeyedSubscript:v16];
          }
        }
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      LOBYTE(v18) = 0;
      [BTSmartRoutingDaemon _smartRoutingAddWxMapDevice:"_smartRoutingAddWxMapDevice:routingAction:otherAddress:otherName:otherSourceVersion:isRoutingInitialized:newWx:" routingAction:v18 otherAddress:? otherName:? otherSourceVersion:? isRoutingInitialized:? newWx:?];
      [(BTSmartRoutingDaemon *)self _smartRoutingConnectToEligibleHeadset:self->_eligibleHeadset];
    }
  }
}

- (void)_setIsFirstConnentionAfterSREnable:(BOOL)enable forDevice:(id)device
{
  enableCopy = enable;
  deviceCopy = device;
  v7 = deviceCopy;
  if (deviceCopy)
  {
    v14 = deviceCopy;
    v8 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:deviceCopy];
    p_sourceDevice = &self->_sourceDevice;
    isFirstConnectionAfterSREnable = [(SRSourceDevice *)self->_sourceDevice isFirstConnectionAfterSREnable];
    v11 = isFirstConnectionAfterSREnable;
    if (enableCopy)
    {
      [isFirstConnectionAfterSREnable setValue:@"YES" forKey:v14];

      [v8 setIsFirstConnectionAfterSREnable:1];
      if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      sub_1001EB0FC();
      isFirstConnectionAfterSREnable2 = v15;
    }

    else
    {
      v13 = [isFirstConnectionAfterSREnable objectForKey:v14];

      if (!v13)
      {
LABEL_13:

        v7 = v14;
        goto LABEL_14;
      }

      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EB078(p_sourceDevice, v14);
      }

      [v8 setIsFirstConnectionAfterSREnable:0];
      isFirstConnectionAfterSREnable2 = [(SRSourceDevice *)*p_sourceDevice isFirstConnectionAfterSREnable];
      [isFirstConnectionAfterSREnable2 removeObjectForKey:v14];
    }

    goto LABEL_13;
  }

LABEL_14:

  _objc_release_x1(deviceCopy, v7);
}

- (void)_setTipiElectionReceivedLePipe:(id)pipe
{
  pipeCopy = pipe;
  if ([pipeCopy isEqualToString:&stru_1002C1358])
  {
    v4 = 0;
  }

  else
  {
    v4 = pipeCopy;
  }

  objc_storeStrong(&self->_tipiElectionReceivedLePipe, v4);
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB17C(&self->_tipiElectionReceivedLePipe);
  }
}

- (void)_setTotalCountIDSDevices:(id)devices
{
  devicesCopy = devices;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006B648;
  v7[3] = &unk_1002B6D18;
  v8 = devicesCopy;
  selfCopy = self;
  v6 = devicesCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_showLowBatteryBannerForWorkoutIfNeededForDevice:(id)device
{
  deviceCopy = device;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100003918;
  v18 = sub_100003838;
  v19 = 0;
  srDiscoveredDeviceMap = self->_srDiscoveredDeviceMap;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006BB78;
  v10[3] = &unk_1002B8928;
  v6 = deviceCopy;
  v11 = v6;
  v12 = &v14;
  v13 = &v20;
  [(NSMutableDictionary *)srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v10];
  if (*(v21 + 24) == 1)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      btAddress = [v15[5] btAddress];
      LogPrintF();
    }
  }

  else
  {
    aaLowBatteryAlertDaemon = self->_aaLowBatteryAlertDaemon;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10006BC24;
    v9[3] = &unk_1002B8978;
    v9[4] = self;
    v9[5] = &v14;
    [(AALowBatteryAlertDaemon *)aaLowBatteryAlertDaemon showLowBatteryBannerIfNeededForDevice:v6 withType:0 completion:v9];
  }

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);
}

- (void)_showSplitterBlockingAlert
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB1BC();
  }

  v3 = objc_alloc_init(AAUIAlert);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006BD90;
  v4[3] = &unk_1002B6A38;
  v4[4] = self;
  [(AAUIAlert *)v3 deliverAlertWithHeaderKey:0 messageKey:@"SPLITTER_BLOCKING_BODY_FORMAT" defaultButtonKey:@"OK" alternativeButtonKey:0 andCompletion:v4];
}

- (void)_smartRoutingModeCheck:(id)check
{
  checkCopy = check;
  btAddressData = [checkCopy btAddressData];
  v5 = CUPrintNSDataAddress();

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB1F4(checkCopy);
  }

  v6 = [(NSMutableDictionary *)self->_connectedDevicesSrModeCache objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [(NSMutableDictionary *)self->_connectedDevicesSrModeCache objectForKeyedSubscript:v5];
    mode = [(SRModeDevice *)v7 mode];
    if ([checkCopy smartRoutingMode] != mode)
    {
      if (mode == 2)
      {
        if ([checkCopy smartRoutingMode] == 1)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001EB2A4();
          }

          [(SRModeDevice *)v7 setMode:1];
          [(SRModeDevice *)v7 setEnableCount:[(SRModeDevice *)v7 enableCount]+ 1];
          [(BTSmartRoutingDaemon *)self _sendTipiScoreUpdateToWx];
        }
      }

      else if (mode == 1)
      {
        if ([checkCopy smartRoutingMode] == 2)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001EB264();
          }

          [(SRModeDevice *)v7 setMode:2];
          [(SRModeDevice *)v7 setDisableCount:[(SRModeDevice *)v7 disableCount]+ 1];
          [(BTSmartRoutingDaemon *)self _handleSmartRoutingDisabled:v5];
        }
      }

      else if (!mode && [checkCopy smartRoutingMode])
      {
        smartRoutingMode = [checkCopy smartRoutingMode];
        v10 = [(NSMutableDictionary *)self->_connectedDevicesSrModeCache objectForKeyedSubscript:v5];
        [v10 setMode:smartRoutingMode];
      }
    }
  }

  else
  {
    v7 = objc_alloc_init(SRModeDevice);
    -[SRModeDevice setMode:](v7, "setMode:", [checkCopy smartRoutingMode]);
    [(SRModeDevice *)v7 setEnableCount:0];
    [(SRModeDevice *)v7 setDisableCount:0];
    connectedDevicesSrModeCache = self->_connectedDevicesSrModeCache;
    if (!connectedDevicesSrModeCache)
    {
      v12 = objc_alloc_init(NSMutableDictionary);
      v13 = self->_connectedDevicesSrModeCache;
      self->_connectedDevicesSrModeCache = v12;

      connectedDevicesSrModeCache = self->_connectedDevicesSrModeCache;
    }

    [(NSMutableDictionary *)connectedDevicesSrModeCache setObject:v7 forKeyedSubscript:v5];
  }
}

- (void)_startIdleActivityScoreTimer:(unint64_t)timer
{
  idleActivityScoreTimer = self->_idleActivityScoreTimer;
  if (idleActivityScoreTimer)
  {
    v5 = idleActivityScoreTimer;
    dispatch_source_cancel(v5);
    v6 = self->_idleActivityScoreTimer;
    self->_idleActivityScoreTimer = 0;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB2E4();
  }

  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v8 = self->_idleActivityScoreTimer;
  self->_idleActivityScoreTimer = v7;
  v9 = v7;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006C210;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  CUDispatchTimerSet();
  dispatch_activate(v9);
}

- (void)_startIncomingCallHijackTimer:(unint64_t)timer
{
  incomingCallHijackTimer = self->_incomingCallHijackTimer;
  if (incomingCallHijackTimer)
  {
    v5 = incomingCallHijackTimer;
    dispatch_source_cancel(v5);
    v6 = self->_incomingCallHijackTimer;
    self->_incomingCallHijackTimer = 0;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB340();
  }

  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v8 = self->_incomingCallHijackTimer;
  self->_incomingCallHijackTimer = v7;
  v9 = v7;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006C3F4;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  CUDispatchTimerSet();
  dispatch_activate(v9);
}

- (void)_startNowPlayingTemporaryOverrideTimer:(unint64_t)timer
{
  temporaryOverrideTimer = self->_temporaryOverrideTimer;
  if (temporaryOverrideTimer)
  {
    v5 = temporaryOverrideTimer;
    dispatch_source_cancel(v5);
    v6 = self->_temporaryOverrideTimer;
    self->_temporaryOverrideTimer = 0;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB39C();
  }

  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v8 = self->_temporaryOverrideTimer;
  self->_temporaryOverrideTimer = v7;
  v9 = v7;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006C5CC;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  CUDispatchTimerSet();
  dispatch_activate(v9);
}

- (void)_startHighActivityLevelTimer:(unint64_t)timer
{
  _getInEarSrWxDevice = [(BTSmartRoutingDaemon *)self _getInEarSrWxDevice];
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB3F8();
  }

  if ([_getInEarSrWxDevice proactiveRoutingBackoff])
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EB4C0(_getInEarSrWxDevice);
    }
  }

  else if (_getInEarSrWxDevice && !self->_highActivityLevelTimer)
  {
    if ([_getInEarSrWxDevice otherTipiDeviceAudioScore] == 1 || objc_msgSend(_getInEarSrWxDevice, "otherTipiDeviceAudioScore") == 2)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EB480();
      }

      v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
      highActivityLevelTimer = self->_highActivityLevelTimer;
      self->_highActivityLevelTimer = v6;
      v8 = v6;

      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_10006C874;
      v9[3] = &unk_1002B82D0;
      v9[4] = self;
      v9[5] = timer;
      dispatch_source_set_event_handler(v8, v9);
      CUDispatchTimerSet();
      dispatch_activate(v8);
    }

    else if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EB438(_getInEarSrWxDevice);
    }
  }
}

- (void)_startEffectiveUnlockedAfterBootTimer:(unint64_t)timer
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB538();
  }

  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  effectiveUnlockedAfterBootTimer = self->_effectiveUnlockedAfterBootTimer;
  self->_effectiveUnlockedAfterBootTimer = v4;
  v6 = v4;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006CA44;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);
  CUDispatchTimerSet();
  dispatch_activate(v6);
}

- (void)_startPhoneOwnershipTimer:(unint64_t)timer
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB594();
  }

  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  phoneOwnershipTimer = self->_phoneOwnershipTimer;
  self->_phoneOwnershipTimer = v4;
  v6 = v4;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006CBDC;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);
  CUDispatchTimerSet();
  dispatch_activate(v6);
}

- (void)_startAudioStateSnapshotTimer
{
  if (!self->_audioStateSnapshotTimer)
  {
    handler[7] = v2;
    handler[8] = v3;
    if ([(NSMutableDictionary *)self->_wxDevices count]|| [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap count])
    {
      if ([(CUSystemMonitor *)self->_powerMonitor screenActive])
      {
        audioStateSnapshotTimer = self->_audioStateSnapshotTimer;
        if (audioStateSnapshotTimer)
        {
          v6 = audioStateSnapshotTimer;
          dispatch_source_cancel(v6);
          v7 = self->_audioStateSnapshotTimer;
          self->_audioStateSnapshotTimer = 0;
        }

        v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
        v9 = self->_audioStateSnapshotTimer;
        self->_audioStateSnapshotTimer = v8;

        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_10006CE10;
        handler[3] = &unk_1002B6880;
        handler[4] = self;
        dispatch_source_set_event_handler(v8, handler);
        if (v8)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001EB5D4(&self->_wxDevices);
          }

          CUDispatchTimerSet();
          dispatch_activate(v8);
        }

        else if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001EB61C();
        }
      }
    }
  }
}

- (void)_stopAudioStateSnapshotTimer:(BOOL)timer
{
  timerCopy = timer;
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB650(self);
  }

  if ([(NSMutableDictionary *)self->_wxDevices count])
  {
    v5 = !timerCopy;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    audioStateSnapshotTimer = self->_audioStateSnapshotTimer;
    if (audioStateSnapshotTimer)
    {
      v7 = audioStateSnapshotTimer;
      dispatch_source_cancel(v7);
      v8 = self->_audioStateSnapshotTimer;
      self->_audioStateSnapshotTimer = 0;
    }

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EB6A8(&self->_wxDevices);
    }
  }
}

- (void)_startManualRouteChangeDetectionTimer:(id)timer
{
  timerCopy = timer;
  manualRouteChangeDetectionTimer = [(SRStats *)self->_stats manualRouteChangeDetectionTimer];
  v6 = manualRouteChangeDetectionTimer;
  if (manualRouteChangeDetectionTimer)
  {
    dispatch_source_cancel(manualRouteChangeDetectionTimer);
  }

  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  [(SRStats *)self->_stats setManualRouteChangeDetectionTimer:v7];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006CFF8;
  v9[3] = &unk_1002B6D18;
  v9[4] = self;
  v10 = timerCopy;
  v8 = timerCopy;
  dispatch_source_set_event_handler(v7, v9);
  CUDispatchTimerSet();
  dispatch_activate(v7);
}

- (void)_startPlaybackTimer
{
  playbackStartTimer = self->_playbackStartTimer;
  if (playbackStartTimer)
  {
    v4 = playbackStartTimer;
    dispatch_source_cancel(v4);
    v5 = self->_playbackStartTimer;
    self->_playbackStartTimer = 0;
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v7 = self->_playbackStartTimer;
  self->_playbackStartTimer = v6;
  v8 = v6;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006D174;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v8, handler);
  CUDispatchTimerSet();
  dispatch_activate(v8);
}

- (void)_startRouteChangeDetectionTimer:(id)timer andAnswer:(int64_t)answer
{
  timerCopy = timer;
  routeChangeDetectionTimer = self->_routeChangeDetectionTimer;
  if (routeChangeDetectionTimer)
  {
    v8 = routeChangeDetectionTimer;
    dispatch_source_cancel(v8);
    v9 = self->_routeChangeDetectionTimer;
    self->_routeChangeDetectionTimer = 0;
  }

  v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v11 = self->_routeChangeDetectionTimer;
  self->_routeChangeDetectionTimer = v10;
  v12 = v10;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006D2FC;
  handler[3] = &unk_1002B86B8;
  handler[4] = self;
  v15 = timerCopy;
  answerCopy = answer;
  v13 = timerCopy;
  dispatch_source_set_event_handler(v12, handler);
  CUDispatchTimerSet();
  dispatch_activate(v12);
}

- (void)_startRouteCheckTimer:(id)timer andType:(int)type
{
  timerCopy = timer;
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  if (type > 7)
  {
    if (type <= 9)
    {
      if (type == 8)
      {
        falseRouteCheckHijackAwayTimer = [(SRStats *)self->_stats falseRouteCheckHijackAwayTimer];
        [(SRStats *)self->_stats setFalseRouteCheckHijackAwayTimer:v7];
        [(SRStats *)self->_stats setReverseRouteReason:0];
        goto LABEL_27;
      }

      falseRouteCheckHijackAwayTimer = [(SRStats *)self->_stats routeCheckOnDemandTimer];
      [(SRStats *)self->_stats setRouteCheckOnDemandTimer:v7];
      goto LABEL_23;
    }

    switch(type)
    {
      case 10:
        falseRouteCheckHijackAwayTimer = [(SRStats *)self->_stats falseRouteCheckOnDemandTimer];
        [(SRStats *)self->_stats setFalseRouteCheckOnDemandTimer:v7];
        break;
      case 12:
        falseRouteCheckHijackAwayTimer = [(SRStats *)self->_stats falseRouteCheckProactiveRoutingTimer];
        [(SRStats *)self->_stats setFalseRouteCheckProactiveRoutingTimer:v7];
        break;
      case 13:
        falseRouteCheckHijackAwayTimer = [(SRStats *)self->_stats routeCheckInUseBannerTimer];
        [(SRStats *)self->_stats setRouteCheckInUseBannerTimer:v7];
        goto LABEL_23;
      default:
        goto LABEL_29;
    }
  }

  else
  {
    if (type <= 3)
    {
      if (type == 1)
      {
        routeCheckOwnLostTimer = [(SRStats *)self->_stats routeCheckOwnLostTimer];
        [(SRStats *)self->_stats setRouteCheckOwnLostTimer:v7];
      }

      else if (type != 2)
      {
        goto LABEL_29;
      }

      falseRouteCheckOwnLostTimer = [(SRStats *)self->_stats falseRouteCheckOwnLostTimer];
      [(SRStats *)self->_stats setFalseRouteCheckOwnLostTimer:v7];
    }

    else if (type != 4)
    {
      if (type != 5)
      {
        if (type != 6)
        {
          goto LABEL_29;
        }

        falseRouteCheckHijackAwayTimer = [(SRStats *)self->_stats falseRouteCheckHijackTimer];
        [(SRStats *)self->_stats setFalseRouteCheckHijackTimer:v7];
        goto LABEL_26;
      }

      falseRouteCheckHijackAwayTimer = [(SRStats *)self->_stats routeCheckHijackTimer];
      [(SRStats *)self->_stats setRouteCheckHijackTimer:v7];
LABEL_23:
      if (!falseRouteCheckHijackAwayTimer)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    falseRouteCheckHijackAwayTimer = [(SRStats *)self->_stats falseRouteCheckForceDisconnectTimer];
    [(SRStats *)self->_stats setFalseRouteCheckForceDisconnectTimer:v7];
  }

LABEL_26:
  [(SRStats *)self->_stats setFalseRouteCheckReason:0];
LABEL_27:
  if (falseRouteCheckHijackAwayTimer)
  {
LABEL_28:
    dispatch_source_cancel(falseRouteCheckHijackAwayTimer);
  }

LABEL_29:
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB700(type, self);
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006D694;
  handler[3] = &unk_1002B7208;
  typeCopy = type;
  handler[4] = self;
  v13 = timerCopy;
  v11 = timerCopy;
  dispatch_source_set_event_handler(v7, handler);
  CUDispatchTimerSet();
  dispatch_activate(v7);
}

- (void)_startTipiHealing:(id)healing withLastConnect:(id)connect
{
  healingCopy = healing;
  connectCopy = connect;
  if (!connectCopy)
  {
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EB7A4();
    }

    goto LABEL_51;
  }

  if ([(BTSmartRoutingDaemon *)self _isMyAddress:connectCopy])
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EB788();
    }

    goto LABEL_51;
  }

  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = sub_100003918;
  v47 = sub_100003838;
  v48 = 0;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  selfCopy = self;
  discoveredDevices = [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
  v8 = [discoveredDevices countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (!v8)
  {
    goto LABEL_47;
  }

  v9 = *v40;
  obj = discoveredDevices;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v40 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v39 + 1) + 8 * i);
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        [v11 idsDeviceID];
        v31 = v30 = v11;
        LogPrintF();
      }

      btAddressData = [v11 btAddressData];
      v13 = btAddressData;
      bytes = [btAddressData bytes];
      v15 = CUPrintNSDataAddress();
      idsDeviceID = [v11 idsDeviceID];
      v17 = [(BTSmartRoutingDaemon *)selfCopy _nearbyMacAddressTranslate:idsDeviceID];

      v18 = v17;
      bytes2 = [v17 bytes];
      v20 = CUPrintNSDataAddress();
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        v31 = v15;
        v32 = v20;
        v30 = connectCopy;
        LogPrintF();
      }

      if (btAddressData)
      {
        v21 = connectCopy;
        bytes3 = [connectCopy bytes];
        v23 = *bytes3 == *(bytes + 3) && *(bytes3 + 2) == bytes[5];
        v24 = v15;
        if (v23)
        {
          goto LABEL_33;
        }
      }

      if (v17)
      {
        v25 = connectCopy;
        bytes4 = [connectCopy bytes];
        v27 = *bytes4 == *(bytes2 + 3) && *(bytes4 + 2) == bytes2[5];
        v24 = v20;
        if (v27)
        {
LABEL_33:
          objc_storeStrong(v44 + 5, v24);
        }
      }

      v28 = v44[5];
      if (v28)
      {
        if (dword_1002F6778 <= 30)
        {
          if (dword_1002F6778 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_46;
            }

            v28 = v44[5];
          }

          v30 = v28;
          LogPrintF();
        }

LABEL_46:

        discoveredDevices = obj;
        goto LABEL_47;
      }
    }

    discoveredDevices = obj;
    v8 = [obj countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_47:

  if (v44[5])
  {
    goto LABEL_49;
  }

  nearbyInfoDevices = selfCopy->_nearbyInfoDevices;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10006DC5C;
  v36[3] = &unk_1002B89A0;
  v36[4] = selfCopy;
  v37 = connectCopy;
  v38 = &v43;
  [(NSMutableDictionary *)nearbyInfoDevices enumerateKeysAndObjectsUsingBlock:v36];

  if (v44[5])
  {
LABEL_49:
    [(BTSmartRoutingDaemon *)selfCopy _sendTipiHealingRequest:healingCopy andOtherTipiAddress:v30];
  }

  else if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  _Block_object_dispose(&v43, 8);

LABEL_51:
}

- (void)_startWxDiscoveryForWorkout
{
  if (self->_prefSmartRoutingEnabledPhase3)
  {
    if (self->_wxDiscovery)
    {
      sub_1001EB8C4(self);
    }

    else if (self->_isBTRoute)
    {
      sub_1001EB968(dword_1002F6778);
    }

    else
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EB94C();
      }

      [(BTSmartRoutingDaemon *)self _wxDiscoveryEnsureStarted];

      [(BTSmartRoutingDaemon *)self _startWxDiscoveryForWorkoutTimer:60];
    }
  }

  else
  {
    sub_1001EB864();
  }
}

- (void)_startWxDiscoveryForWorkoutTimer:(unint64_t)timer
{
  wxWorkoutDiscoveryTimer = self->_wxWorkoutDiscoveryTimer;
  if (wxWorkoutDiscoveryTimer)
  {
    v5 = wxWorkoutDiscoveryTimer;
    dispatch_source_cancel(v5);
    v6 = self->_wxWorkoutDiscoveryTimer;
    self->_wxWorkoutDiscoveryTimer = 0;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EB9C0();
  }

  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  v8 = self->_wxWorkoutDiscoveryTimer;
  self->_wxWorkoutDiscoveryTimer = v7;
  v9 = v7;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10006E140;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v9, handler);
  CUDispatchTimerSet();
  dispatch_activate(v9);
}

- (void)_submitMetric:(id)metric
{
  p_fakeHfpSessionCount = &self->_fakeHfpSessionCount;
  metricCopy = metric;
  v59[0] = @"nearbyAction";
  v51 = [NSNumber numberWithInt:self->_nearbyBannerActionCount];
  v60[0] = v51;
  v59[1] = @"nearbyIgnored";
  v5 = [NSNumber numberWithInt:self->_nearbyBannerTimeoutCount];
  v60[1] = v5;
  v59[2] = @"connectIgnored";
  v6 = [NSNumber numberWithInt:self->_connectedBannerTimeoutCount];
  v60[2] = v6;
  v59[3] = @"connectDismissed";
  v7 = [NSNumber numberWithInt:self->_connectedBannerDismissedCount];
  v60[3] = v7;
  v59[4] = @"reverseAudioIgnored";
  v8 = [NSNumber numberWithInt:self->_reverseBannerTimeoutCount];
  v60[4] = v8;
  v59[5] = @"reverseAudioAction";
  v9 = [NSNumber numberWithInt:self->_reverseBannerActionCount];
  v60[5] = v9;
  v59[6] = @"wxPD";
  v47 = metricCopy;
  v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [metricCopy productID]);
  v60[6] = v10;
  v59[7] = @"wxBuildVersion";
  firmwareVersion = [metricCopy firmwareVersion];
  v12 = firmwareVersion;
  v13 = &stru_1002C1358;
  if (firmwareVersion)
  {
    v13 = firmwareVersion;
  }

  v60[7] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:8];
  CUMetricsLogEx();

  v57[0] = @"nearbyRouting";
  v52 = [NSNumber numberWithInt:self->_nearbyBannerRouting];
  v58[0] = v52;
  v57[1] = @"autoRoutingSingle";
  v49 = [NSNumber numberWithInt:self->_autoRoutingSingle];
  v58[1] = v49;
  v57[2] = @"autoRoutingTipi";
  v48 = [NSNumber numberWithInt:self->_autoRoutingTipi];
  v58[2] = v48;
  v57[3] = @"autoRoutingHijack";
  v46 = [NSNumber numberWithInt:self->_autoRoutingHijack];
  v58[3] = v46;
  v57[4] = @"autoRoutingHijackError";
  v15 = [NSNumber numberWithInt:self->_autoRoutingHijackError];
  v58[4] = v15;
  v57[5] = @"reverseRouting";
  v16 = [NSNumber numberWithInt:self->_reverseRoutingCount];
  v58[5] = v16;
  v57[6] = @"routingManual";
  v17 = [NSNumber numberWithInt:self->_routingManualCount];
  v58[6] = v17;
  v57[7] = @"wxPD";
  v18 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v47 productID]);
  v58[7] = v18;
  v57[8] = @"fakeHfpSession";
  v19 = [NSNumber numberWithInt:self->_fakeHfpSessionCount];
  v58[8] = v19;
  v57[9] = @"fakeHfpSessionReject";
  v20 = [NSNumber numberWithInt:self->_fakeHfpSessionRejectCount];
  v58[9] = v20;
  v57[10] = @"wxBuildVersion";
  firmwareVersion2 = [v47 firmwareVersion];
  v22 = firmwareVersion2;
  v23 = &stru_1002C1358;
  if (firmwareVersion2)
  {
    v23 = firmwareVersion2;
  }

  v58[10] = v23;
  v24 = [NSDictionary dictionaryWithObjects:v58 forKeys:v57 count:11];
  CUMetricsLogEx();

  v25 = v47;
  btAddressData = [v47 btAddressData];
  v27 = CUPrintNSDataAddress();

  if (v27)
  {
    v28 = [(NSMutableDictionary *)self->_connectedDevicesSrModeCache objectForKeyedSubscript:v27];
    mode = [v28 mode];
    if (mode > 2)
    {
      v30 = "?";
    }

    else
    {
      v30 = off_1002B90A0[mode];
    }

    v31 = [NSString stringWithUTF8String:v30];

    v32 = [(NSMutableDictionary *)self->_connectedDevicesSrModeCache objectForKeyedSubscript:v27];
    mode2 = [v32 mode];

    if (mode2 == 1)
    {
      v34 = 1;
    }

    else
    {
      v35 = [(NSMutableDictionary *)self->_connectedDevicesSrModeCache objectForKeyedSubscript:v27];
      mode3 = [v35 mode];

      if (mode3 == 2)
      {
        v34 = 4294957297;
      }

      else
      {
        v34 = 0;
      }
    }

    v55[0] = @"enableSR";
    v53 = [(NSMutableDictionary *)self->_connectedDevicesSrModeCache objectForKeyedSubscript:v27];
    v50 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v53 enableCount]);
    v56[0] = v50;
    v55[1] = @"disableSR";
    v37 = [(NSMutableDictionary *)self->_connectedDevicesSrModeCache objectForKeyedSubscript:v27];
    v38 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v37 disableCount]);
    v56[1] = v38;
    v56[2] = v31;
    v55[2] = @"mode";
    v55[3] = @"modeOffset";
    v39 = [NSNumber numberWithInt:v34];
    v56[3] = v39;
    v55[4] = @"srCapable";
    v40 = [NSNumber numberWithBool:self->_prefSmartRoutingEnabledPhase3];
    v56[4] = v40;
    v55[5] = @"wxBuildVersion";
    firmwareVersion3 = [v47 firmwareVersion];
    v42 = firmwareVersion3;
    v43 = &stru_1002C1358;
    if (firmwareVersion3)
    {
      v43 = firmwareVersion3;
    }

    v56[5] = v43;
    v55[6] = @"wxPD";
    v44 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v47 productID]);
    v56[6] = v44;
    v45 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:7];
    CUMetricsLogEx();

    v25 = v47;
  }

  *(p_fakeHfpSessionCount + 20) = 0;
  *&self->_connectedBannerDismissedCount = 0;
  *&self->_reverseBannerActionCount = 0;
  self->_nearbyBannerRouting = 0;
  self->_autoRoutingSingle = 0;
  *&self->_autoRoutingTipi = 0;
  self->_autoRoutingHijackError = 0;
  self->_reverseRoutingCount = 0;
  self->_routingManualCount = 0;
  *p_fakeHfpSessionCount = 0;
}

- (void)_submitMetricTipiHealingforDevice:(id)device withDuration:(double)duration andLegacy:(BOOL)legacy
{
  legacyCopy = legacy;
  deviceCopy = device;
  deviceAddress = [deviceCopy deviceAddress];
  v9 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:?];
  v10 = v9;
  v11 = &stru_1002C1358;
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  otherTipiDeviceBTName = [deviceCopy otherTipiDeviceBTName];
  v14 = otherTipiDeviceBTName;
  v15 = @"Null";
  if (otherTipiDeviceBTName)
  {
    v15 = otherTipiDeviceBTName;
  }

  v16 = v15;

  LODWORD(v17) = vcvtpd_s64_f64(duration);
  v18 = [NSNumber numberWithInt:v17];
  v19 = [NSNumber numberWithInt:(duration * 1000.0)];
  if (duration > 10.0 && dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v20 = "yes";
    if (legacyCopy)
    {
      v20 = "no";
    }

    v29 = v18;
    v31 = v20;
    LogPrintF();
  }

  callConnected = [(SRStats *)self->_stats mediaPlaying:v29]|| [(SRStats *)self->_stats callConnected];
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v22 = "yes";
    if (legacyCopy)
    {
      v23 = "no";
    }

    else
    {
      v23 = "yes";
    }

    if (!callConnected)
    {
      v22 = "no";
    }

    v32 = v23;
    v33 = v22;
    v30 = v18;
    LogPrintF();
  }

  v35[0] = @"Thv2";
  v24 = [NSNumber numberWithInt:!legacyCopy, v30, v32, v33];
  v36[0] = v24;
  v36[1] = v18;
  v35[1] = @"duration";
  v35[2] = @"durationMS";
  v36[2] = v19;
  v35[3] = @"isPlaying";
  v25 = [NSNumber numberWithInt:callConnected];
  v36[3] = v25;
  v36[4] = v16;
  v35[4] = @"otherTiPiDevice";
  v35[5] = @"tipiV2Eligible";
  v26 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [deviceCopy isTipiHealingV2Eligible]);
  v36[5] = v26;
  v36[6] = v12;
  v35[6] = @"wxBuildVersion";
  v35[7] = @"wxPD";
  v27 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [deviceCopy productID]);
  v36[7] = v27;
  v28 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:8];
  CUMetricsLogEx();
}

- (void)_submitManualRouteDetectionMetric:(id)metric
{
  metricCopy = metric;
  v5 = [(BTSmartRoutingDaemon *)self _getWxProductID:metricCopy];
  _getCurrentRoute = [(BTSmartRoutingDaemon *)self _getCurrentRoute];
  v7 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:metricCopy];

  v8 = &stru_1002C1358;
  if (v7)
  {
    v8 = v7;
  }

  v9 = v8;

  mach_absolute_time();
  hijackAcceptedTime = self->_hijackAcceptedTime;
  v11 = UpTicksToSeconds();
  if ([_getCurrentRoute containsString:@"Speaker"] && dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EBA1C();
  }

  v17[0] = _getCurrentRoute;
  v16[0] = @"route";
  v16[1] = @"srCapable";
  v12 = [NSNumber numberWithBool:self->_prefSmartRoutingEnabledPhase3];
  v17[1] = v12;
  v16[2] = @"wxProductID";
  v13 = [NSNumber numberWithUnsignedInt:v5];
  v17[2] = v13;
  v16[3] = @"timeSinceLastHijack";
  v14 = [NSNumber numberWithUnsignedLongLong:v11];
  v16[4] = @"wxFWVersion";
  v17[3] = v14;
  v17[4] = v9;
  v15 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:5];

  CUMetricsLogEx();
}

- (void)_submitRouteChangeDetectionMetric:(id)metric andAnswer:(int64_t)answer
{
  if ((answer - 1) > 3)
  {
    v5 = "?";
  }

  else
  {
    v5 = off_1002B90B8[answer - 1];
  }

  metricCopy = metric;
  v7 = [NSString stringWithUTF8String:v5];
  v8 = [(BTSmartRoutingDaemon *)self _getWxProductID:metricCopy];

  _getCurrentRoute = [(BTSmartRoutingDaemon *)self _getCurrentRoute];
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v13 = 5;
    v14 = _getCurrentRoute;
    v12 = v7;
    LogPrintF();
  }

  v10 = [NSNumber numberWithUnsignedInt:v8, v12, v13, v14, @"hijackAnswer", @"route", @"wxProductID", v7, _getCurrentRoute];
  v16[2] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v16 forKeys:&v15 count:3];
  CUMetricsLogEx();
}

- (BOOL)_supportsTipi:(id)tipi
{
  tipiCopy = tipi;
  discoveredDevices = [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [discoveredDevices countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(discoveredDevices);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        btAddressData = [v11 btAddressData];
        v13 = CUPrintNSDataAddress();

        if (tipiCopy && v13 && [tipiCopy isEqualToString:v13])
        {
          v8 |= ([v11 deviceFlags] >> 4) & 1;
        }
      }

      v7 = [discoveredDevices countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

- (BOOL)_supportsPhoneWatchTipi:(unsigned int)tipi
{
  v3 = tipi - 8194;
  if (tipi - 8194 <= 0xE)
  {
    v4 = 0x3F64u >> (tipi - 2);
  }

  else
  {
    LOBYTE(v4) = 1;
  }

  v5 = v3 > 0x2D;
  v6 = (1 << v3) & 0x20647A877F9BLL;
  if (v5 || v6 == 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  return v8 & 1;
}

- (void)_setTipiElectionType:(BOOL)type withDevice:(id)device
{
  typeCopy = type;
  deviceCopy = device;
  v11 = deviceCopy;
  if (typeCopy)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EBA54();
    }

    self->_tipiElectionThroughLEPipe = 0;
    lePipeDevice = self->_lePipeDevice;
    self->_lePipeDevice = 0;
  }

  else
  {
    v8 = deviceCopy;
    if (dword_1002F6778 <= 30)
    {
      if (dword_1002F6778 != -1 || (v9 = _LogCategory_Initialize(), v8 = v11, v9))
      {
        sub_1001EBA38();
        v8 = v11;
      }
    }

    self->_tipiElectionThroughLEPipe = 1;
    v10 = v8;
    lePipeDevice = self->_lePipeDevice;
    self->_lePipeDevice = v10;
  }
}

- (void)systemStatePushRequired
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F4FC;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_systemStatePushRequired
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EBA70();
  }

  [(AAServicesDaemon *)self->_aaServicesDaemon reportSiriHijackElgibilityUpdated:[(SRSourceDevice *)self->_sourceDevice isSystemEligibleForSiriHijack]];
  activeHRMDevice = [(SRSourceDevice *)self->_sourceDevice activeHRMDevice];
  if (activeHRMDevice && (specificHRMDeviceChosenForFitnessPlus = self->_specificHRMDeviceChosenForFitnessPlus, activeHRMDevice, specificHRMDeviceChosenForFitnessPlus))
  {
    activeHRMDevice2 = [(SRSourceDevice *)self->_sourceDevice activeHRMDevice];
    identifier = [activeHRMDevice2 identifier];

    v6 = [(AAPairedDeviceDaemon *)self->_aaPairedDeviceDaemon deviceWithIdentifier:identifier];
    [(AAServicesDaemon *)self->_aaServicesDaemon reportActiveHRMDeviceUpdated:v6 withSREnabled:1];
  }

  else
  {

    [(BTSmartRoutingDaemon *)self activeHRMDeviceUpdateWithPushRequired:1];
  }
}

- (void)systemStateUpdateRequired
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F690;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_systemStateUpdateRequired
{
  if (_os_feature_enabled_impl())
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10006F7A0;
    v5[3] = &unk_1002B7E18;
    v5[4] = self;
    v5[5] = &v6;
    [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
    isSystemEligibleForSiriHijack = [(SRSourceDevice *)self->_sourceDevice isSystemEligibleForSiriHijack];
    if (*(v7 + 24) != isSystemEligibleForSiriHijack)
    {
      [(SRSourceDevice *)self->_sourceDevice setIsSystemEligibleForSiriHijack:?];
      [(AAServicesDaemon *)self->_aaServicesDaemon reportSiriHijackElgibilityUpdated:[(SRSourceDevice *)self->_sourceDevice isSystemEligibleForSiriHijack]];
    }

    _Block_object_dispose(&v6, 8);
  }
}

- (id)_sourceModelNameFromModelIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = @"Mac";
  if (([identifierCopy containsString:@"Mac"] & 1) == 0)
  {
    v4 = @"iPad";
    if (([identifierCopy hasPrefix:@"iPad"] & 1) == 0)
    {
      v4 = @"iPhone";
      if (([identifierCopy hasPrefix:@"iPhone"] & 1) == 0)
      {
        v4 = @"Watch";
        if (([identifierCopy hasPrefix:@"Watch"] & 1) == 0)
        {
          v4 = @"AppleTV";
          if (([identifierCopy hasPrefix:@"AppleTV"] & 1) == 0)
          {
            v4 = @"RealityDevice";
            if (![identifierCopy hasPrefix:@"RealityDevice"])
            {
              v4 = &stru_1002C1358;
            }
          }
        }
      }
    }
  }

  return v4;
}

- (void)_tipiHealingAttempt
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100003918;
  v17 = sub_100003838;
  v18 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100003918;
  v11 = sub_100003838;
  v12 = 0;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006FB8C;
  v6[3] = &unk_1002B89C8;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = &v13;
  [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v6];
  if (v8[5])
  {
    if (v14[5])
    {
      if ([(BTSmartRoutingDaemon *)self _lastConnectIsWatchCheck:?])
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
LABEL_13:
          LogPrintF();
        }
      }

      else
      {
        v4 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v8[5]];
        tipiHealingBackoff = [v4 tipiHealingBackoff];

        if (!tipiHealingBackoff)
        {
          [(BTSmartRoutingDaemon *)self _startTipiHealing:v8[5] withLastConnect:v14[5]];
          goto LABEL_20;
        }

        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          goto LABEL_13;
        }
      }
    }

    else if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      goto LABEL_13;
    }
  }

LABEL_20:
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
}

- (void)_tipiHealing:(id)healing withDevice:(id)device
{
  healingCopy = healing;
  deviceCopy = device;
  v8 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:healingCopy];
  v9 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:healingCopy];
  if ([@"5A187" compare:v8 options:64] != 1)
  {
    if ([(NSString *)self->_triangleRecoveryInitiatedAddress isEqualToString:healingCopy])
    {
      triangleRecoveryInitiatedAddress = self->_triangleRecoveryInitiatedAddress;
      self->_triangleRecoveryInitiatedAddress = 0;
    }

    if (self->_prefSmartRoutingWatchAutomaticSwitching && [(BTSmartRoutingDaemon *)self _isMagnetConnectedDeviceforTipiHealingCheck:deviceCopy])
    {
      if (!self->_pairedCompanionDeviceSupportsSmartRouting)
      {
        goto LABEL_79;
      }

      getActivePairedDevice = [(NRPairedDeviceRegistry *)self->_NRRegistry getActivePairedDevice];
      v12 = [getActivePairedDevice valueForProperty:NRDevicePropertyProductType];
      v13 = [(__CFString *)v12 hasPrefix:@"Watch"];
      v14 = @"iPhone";
      if (v13)
      {
        v14 = @"Watch";
      }

      v15 = v14;
      [(BTSmartRoutingDaemon *)self _updateOtherTipiDevicewithAudioCategory:healingCopy otherAddress:deviceCopy otherName:v15 otherVersion:&off_1002CB618];
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        v45 = v15;
        v46 = &off_1002CB618;
        v44 = deviceCopy;
        LogPrintF();
      }

      if (GestaltGetDeviceClass() == 1)
      {
        [v9 setOtherTipiDeviceIsWatch:1];
      }

      [v9 setOtherTipiIDSIdentifier:{@"RPDestinationIdentifierPairedCompanion", v44, v45, v46}];
      [(BTSmartRoutingDaemon *)self _tipihHealingV2Handling:healingCopy];

      goto LABEL_77;
    }

    v16 = +[CBIDSManager sharedInstance];
    getActivePairedDevice = [v16 idsDeviceForBTAddress:deviceCopy];

    if (!getActivePairedDevice)
    {
LABEL_78:

      goto LABEL_79;
    }

    productName = [getActivePairedDevice productName];
    if ([productName isEqualToString:@"iPhone OS"])
    {
      [getActivePairedDevice operatingSystemVersion];
      if (v60 <= 15)
      {

        goto LABEL_22;
      }
    }

    modelIdentifier = [getActivePairedDevice modelIdentifier];
    if ([modelIdentifier containsString:@"Mac"])
    {
      [getActivePairedDevice operatingSystemVersion];

      if (v59 <= 12)
      {
LABEL_22:
        [v9 setIsTipiHealingV2Eligible:0];
        if (dword_1002F6778 <= 60 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          sub_1001EBC50();
        }

        [(BTSmartRoutingDaemon *)self _tipiHealingAttempt];
        goto LABEL_78;
      }
    }

    else
    {
    }

    productName2 = [getActivePairedDevice productName];
    v20 = [productName2 hasPrefix:@"Watch"];

    if (v20)
    {
      if (dword_1002F6778 <= 60 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EBC1C();
      }

      goto LABEL_78;
    }

    modelIdentifier2 = [getActivePairedDevice modelIdentifier];
    v22 = [modelIdentifier2 hasPrefix:@"AppleTV"];

    if (v22)
    {
      if (dword_1002F6778 <= 60 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EBBE8();
      }

      goto LABEL_78;
    }

    if ([v9 tipiHealingBackoff])
    {
      if (dword_1002F6778 <= 60 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EBBB4();
      }

      goto LABEL_78;
    }

    nearbyInfoDevicesTriangleRecoveryTimer = self->_nearbyInfoDevicesTriangleRecoveryTimer;
    if (nearbyInfoDevicesTriangleRecoveryTimer)
    {
      v24 = nearbyInfoDevicesTriangleRecoveryTimer;
      dispatch_source_cancel(v24);
      v25 = self->_nearbyInfoDevicesTriangleRecoveryTimer;
      self->_nearbyInfoDevicesTriangleRecoveryTimer = 0;
    }

    tipiHealingTimer = self->_tipiHealingTimer;
    if (!tipiHealingTimer)
    {
LABEL_58:
      modelIdentifier3 = [getActivePairedDevice modelIdentifier];
      v12 = @"Mac";
      if (([modelIdentifier3 containsString:@"Mac"] & 1) == 0)
      {
        modelIdentifier4 = [getActivePairedDevice modelIdentifier];
        v31 = [modelIdentifier4 hasPrefix:@"iPad"];
        v32 = @"iPhone";
        if (v31)
        {
          v32 = @"iPad";
        }

        v12 = v32;
      }

      modelIdentifier5 = [getActivePairedDevice modelIdentifier];
      v51 = [modelIdentifier5 containsString:@"Mac"];

      v34 = +[CBIDSManager sharedInstance];
      v35 = [v34 idsDeviceForBTAddress:deviceCopy];
      uniqueID = [v35 uniqueID];

      productName3 = [getActivePairedDevice productName];
      if ([productName3 isEqualToString:@"iPhone OS"])
      {
        [getActivePairedDevice operatingSystemVersion];
        if (v58 >= 17)
        {

          v37 = &dword_1002F6000;
LABEL_67:
          v39 = &off_1002CB618;
          goto LABEL_70;
        }
      }

      modelIdentifier6 = [getActivePairedDevice modelIdentifier];
      if ([modelIdentifier6 containsString:@"Mac"])
      {
        [getActivePairedDevice operatingSystemVersion];

        v37 = &dword_1002F6000;
        if (v57 >= 14)
        {
          goto LABEL_67;
        }

        v39 = &off_1002CB628;
      }

      else
      {

        v39 = &off_1002CB628;
        v37 = &dword_1002F6000;
      }

LABEL_70:
      [(BTSmartRoutingDaemon *)self _updateOtherTipiDevicewithAudioCategory:healingCopy otherAddress:deviceCopy otherName:v12 otherVersion:v39];
      [v9 setOtherTipiDeviceDRCompatible:{-[BTSmartRoutingDaemon _isOtherTipiDeviceBeforeTrain:withIOS:withMacOS:withWatchOS:otherTipiDeviceIsWatch:](self, "_isOtherTipiDeviceBeforeTrain:withIOS:withMacOS:withWatchOS:otherTipiDeviceIsWatch:", deviceCopy, 19, 16, 0, 0) ^ 1}];
      [getActivePairedDevice operatingSystemVersion];
      [getActivePairedDevice operatingSystemVersion];
      [v9 setOtherTipiDeviceBuildVersion:v56 andMinorBuildVersion:v55];
      v40 = uniqueID;
      [v9 setOtherTipiIDSIdentifier:uniqueID];
      v41 = v37[478];
      if (v41 <= 30 && (v41 != -1 || _LogCategory_Initialize()))
      {
        productName4 = [getActivePairedDevice productName];
        [getActivePairedDevice operatingSystemVersion];
        [getActivePairedDevice operatingSystemVersion];
        v43 = "no";
        if (v51)
        {
          v43 = "yes";
        }

        v49 = v53;
        v50 = v43;
        v47 = productName4;
        v48 = v54;
        v45 = v12;
        v46 = v39;
        v44 = deviceCopy;
        LogPrintF();

        v40 = uniqueID;
      }

      [(BTSmartRoutingDaemon *)self _tipihHealingV2Handling:healingCopy, v44, v45, v46, v47, v48, v49, v50];

LABEL_77:
      goto LABEL_78;
    }

    if (dword_1002F6778 >= 31)
    {
      v27 = tipiHealingTimer;
    }

    else
    {
      if (dword_1002F6778 != -1 || _LogCategory_Initialize())
      {
        sub_1001EBB80();
      }

      v27 = self->_tipiHealingTimer;
      if (!v27)
      {
        goto LABEL_57;
      }
    }

    dispatch_source_cancel(v27);
    v28 = self->_tipiHealingTimer;
    self->_tipiHealingTimer = 0;

LABEL_57:
    self->_tipiElectionInProgress = 0;
    goto LABEL_58;
  }

  [v9 setIsTipiHealingV2Eligible:0];
  if (dword_1002F6778 <= 60 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EBC84();
  }

  [(BTSmartRoutingDaemon *)self _tipiHealingAttempt];
LABEL_79:
}

- (void)_tipihHealingV2Handling:(id)handling
{
  handlingCopy = handling;
  [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
  v5 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:handlingCopy];
  v6 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:handlingCopy];
  if (self->_activityLevelMediaPlaying || [(CUSystemMonitor *)self->_callMonitor activeCallCount]> 0)
  {
    v66 = 1;
  }

  else
  {
    v66 = [(NSString *)self->_cdDeviceIdentifier isEqualToString:handlingCopy];
  }

  identifier = [v5 identifier];
  v7 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:?];
  zeroSourceLastRouteHost = [v7 zeroSourceLastRouteHost];

  v9 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:handlingCopy];
  v10 = [(BTSmartRoutingDaemon *)self _isMyAddress:zeroSourceLastRouteHost];
  v11 = "no";
  if (v10)
  {
    if ([v9 nearbyOutOfCaseTime])
    {
      v11 = "no";
    }

    else
    {
      v11 = "yes";
    }
  }

  v64 = v11;
  userConnectedState = [v9 userConnectedState];
  v12 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:handlingCopy];
  if ([v12 audioStreamState])
  {
    v13 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:handlingCopy];
    if ([v13 audioStreamState] <= 1)
    {
      v14 = "no";
    }

    else
    {
      v14 = "yes";
    }

    v63 = v14;
  }

  else
  {
    v63 = "yes";
  }

  if (-[BTSmartRoutingDaemon _isMyAddress:](self, "_isMyAddress:", zeroSourceLastRouteHost) && ![v9 nearbyOutOfCaseTime])
  {
    v15 = [v5 otherTipiDeviceLastPlay] ^ 1;
  }

  else
  {
    v15 = 0;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v61 = zeroSourceLastRouteHost;
    v62 = v6;
    if (self->_isBTRoute)
    {
      v16 = "yes";
    }

    else
    {
      v16 = "no";
    }

    if (v66)
    {
      v17 = "yes";
    }

    else
    {
      v17 = "no";
    }

    v59 = v17;
    v60 = v16;
    if ([v5 lastPlay])
    {
      v18 = "yes";
    }

    else
    {
      v18 = "no";
    }

    v58 = v18;
    if ([v5 otherTipiDeviceLastPlay])
    {
      v19 = "yes";
    }

    else
    {
      v19 = "no";
    }

    v57 = v19;
    v20 = [(NSMutableDictionary *)self->_srBudswapDeviceMap objectForKeyedSubscript:handlingCopy];
    if (v20)
    {
      v21 = "yes";
    }

    else
    {
      v21 = "no";
    }

    if (userConnectedState)
    {
      v22 = "yes";
    }

    else
    {
      v22 = "no";
    }

    nearbyOutOfCaseTime = [v9 nearbyOutOfCaseTime];
    if (nearbyOutOfCaseTime > 3)
    {
      v24 = "?";
    }

    else
    {
      v24 = off_1002B90D8[nearbyOutOfCaseTime];
    }

    if (v15)
    {
      v25 = "yes";
    }

    else
    {
      v25 = "no";
    }

    v53 = v21;
    v54 = v22;
    v51 = v57;
    v52 = v63;
    v49 = v64;
    v50 = v58;
    v45 = v60;
    v47 = v59;
    v55 = v24;
    v56 = v25;
    LogPrintF();

    zeroSourceLastRouteHost = v61;
    v6 = v62;
  }

  if ((self->_isBTRoute & v66 | v15) & 1) != 0 || self->_callConnected || ((self->_splitterStateOn | userConnectedState))
  {
    [v5 setRoutingAction:{1, v45, v47, v49, v50, v51, v52, v53, v54, v55, v56}];
    if (userConnectedState)
    {
      v26 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:handlingCopy];
      [v26 _setUserConnectedState:0];
    }
  }

  else
  {
    [v5 setRoutingAction:3];
  }

  [v5 setIsTipiHealingV2Eligible:{1, v45, v47}];
  nearbyInfoDevicesTriangleRecoveryTimer = self->_nearbyInfoDevicesTriangleRecoveryTimer;
  if (nearbyInfoDevicesTriangleRecoveryTimer)
  {
    v28 = nearbyInfoDevicesTriangleRecoveryTimer;
    dispatch_source_cancel(v28);
    v29 = self->_nearbyInfoDevicesTriangleRecoveryTimer;
    self->_nearbyInfoDevicesTriangleRecoveryTimer = 0;
  }

  tipiHealingTimer = self->_tipiHealingTimer;
  if (tipiHealingTimer)
  {
    if (dword_1002F6778 >= 31)
    {
      v31 = tipiHealingTimer;
    }

    else
    {
      if (dword_1002F6778 != -1 || _LogCategory_Initialize())
      {
        sub_1001EBCCC();
      }

      v31 = self->_tipiHealingTimer;
      if (!v31)
      {
        goto LABEL_64;
      }
    }

    dispatch_source_cancel(v31);
    v32 = self->_tipiHealingTimer;
    self->_tipiHealingTimer = 0;

LABEL_64:
    self->_tipiElectionInProgress = 0;
  }

  [(BTSmartRoutingDaemon *)self _notifyOtherTipiDeviceTipiScoreChanged:0 andNewScore:0];
  [v5 setIsRoutingActionInitialized:1];
  if (self->_tipiHealingHijackTimer && ![(BTSmartRoutingDaemon *)self _deviceSupportsHijackV2:v6 withDevice:v5])
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EBCE8();
    }

    [(BTSmartRoutingDaemon *)self _tipiHealingCompleteCheckTimerForDevice:v5];
  }

  if (([v5 tipitableUpdated] & 1) == 0)
  {
    v33 = zeroSourceLastRouteHost;
    _myBluetoothAddressString = [(BTSmartRoutingDaemon *)self _myBluetoothAddressString];
    otherTipiDeviceBTAddress = [v5 otherTipiDeviceBTAddress];
    if ([v5 routingAction] == 1)
    {
      v73 = _myBluetoothAddressString;
      v36 = &v73;
      v37 = otherTipiDeviceBTAddress;
    }

    else
    {
      v72 = otherTipiDeviceBTAddress;
      v36 = &v72;
      v37 = _myBluetoothAddressString;
    }

    v36[1] = v37;
    v38 = [NSArray arrayWithObjects:"arrayWithObjects:count:" count:?];
    v39 = [(BTSmartRoutingDaemon *)self _verifyWxConnectedBTAddress:handlingCopy withVersion:&off_1002CB6F0];
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      v46 = handlingCopy;
      v48 = v38;
      LogPrintF();
    }

    v68[0] = _NSConcreteStackBlock;
    v68[1] = 3221225472;
    v68[2] = sub_100070CB0;
    v68[3] = &unk_1002B6D60;
    v69 = handlingCopy;
    v70 = v38;
    v71 = v5;
    [(BTSmartRoutingDaemon *)self _updateAccessoryID:v39 connectionDeviceAddresses:v38 completion:v68];

    zeroSourceLastRouteHost = v33;
  }

  v40 = [(NSMutableDictionary *)self->_smartRoutingWxStatsMap objectForKeyedSubscript:handlingCopy, v46, v48];

  if (v40)
  {
    mach_absolute_time();
    [(NSMutableDictionary *)self->_smartRoutingWxStatsMap objectForKeyedSubscript:handlingCopy];
    v42 = v41 = zeroSourceLastRouteHost;
    [v42 thV2Ticks];
    UpTicksToSecondsF();
    v44 = v43;

    zeroSourceLastRouteHost = v41;
    [(BTSmartRoutingDaemon *)self _submitMetricTipiHealingforDevice:v5 withDuration:0 andLegacy:v44];
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EBD04(v5);
  }
}

- (void)_tipiHealingStartTimer:(id)timer
{
  v4 = dispatch_time(0, 10000000000);
  tipiHealingTimer = self->_tipiHealingTimer;
  if (tipiHealingTimer)
  {

    dispatch_source_set_timer(tipiHealingTimer, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v7 = self->_tipiHealingTimer;
    self->_tipiHealingTimer = v6;

    v8 = self->_tipiHealingTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100070E5C;
    handler[3] = &unk_1002B6880;
    handler[4] = self;
    dispatch_source_set_event_handler(v8, handler);
    dispatch_source_set_timer(self->_tipiHealingTimer, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_tipiHealingTimer);
  }
}

- (void)_triggerTipiTableUpdate:(id)update
{
  updateCopy = update;
  v5 = updateCopy;
  if (updateCopy)
  {
    v8 = updateCopy;
    v6 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:?];
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EBDCC(self, v6);
    }

    [(AAController *)self->_aaController sendGetTipiTableMessageToDestinationIdentifier:v8 completionHandler:&stru_1002B89E8];

    goto LABEL_6;
  }

  if (dword_1002F6778 <= 90)
  {
    v8 = 0;
    if (dword_1002F6778 != -1 || (v7 = _LogCategory_Initialize(), v5 = 0, v7))
    {
      sub_1001EBE34();
LABEL_6:
      v5 = v8;
    }
  }
}

- (BOOL)_deviceSupportsHijackV2:(id)v2 withDevice:(id)device
{
  deviceCopy = device;
  if ([@"5E135" compare:v2 options:64] == 1)
  {
    v6 = 0;
  }

  else
  {
    otherTipiDeviceVersion = [deviceCopy otherTipiDeviceVersion];
    v6 = [otherTipiDeviceVersion intValue] > 1;
  }

  return v6;
}

- (BOOL)_tipiHealingHijackTimerStart:(id)start withScore:(int)score
{
  startCopy = start;
  v8 = self->_tipiHealingHijackTimer;
  if (v8)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EBE90();
    }

    v9 = v8;
  }

  else
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EBEAC();
    }

    v9 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    tipiHealingHijackTimer = self->_tipiHealingHijackTimer;
    self->_tipiHealingHijackTimer = v9;

    objc_storeStrong(&self->_tipiHealingHijackTimerAddress, start);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10007122C;
    handler[3] = &unk_1002B7208;
    handler[4] = self;
    v13 = startCopy;
    scoreCopy = score;
    dispatch_source_set_event_handler(v9, handler);
    CUDispatchTimerSet();
    dispatch_activate(v9);
  }

  return v8 == 0;
}

- (void)_tipiHealingHijackTimerReset
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EBF0C();
  }

  tipiHealingHijackTimer = self->_tipiHealingHijackTimer;
  if (tipiHealingHijackTimer)
  {
    v4 = tipiHealingHijackTimer;
    dispatch_source_cancel(v4);
    v5 = self->_tipiHealingHijackTimer;
    self->_tipiHealingHijackTimer = 0;
  }

  tipiHealingHijackTimerAddress = self->_tipiHealingHijackTimerAddress;
  self->_tipiHealingHijackTimerAddress = 0;
}

- (BOOL)_arbitrationTimeout:(id)timeout withScore:(int)score
{
  connectedDevices = self->_connectedDevices;
  timeoutCopy = timeout;
  v8 = [(NSMutableDictionary *)connectedDevices objectForKeyedSubscript:timeoutCopy];
  audioStreamState = [v8 audioStreamState];

  if (audioStreamState - 1 > 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = dword_100225F34[audioStreamState - 1];
  }

  v11 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:timeoutCopy];

  if ([v11 hijackBackoffTicks])
  {
    v12 = 0;
  }

  else
  {
    v12 = v10 <= score;
  }

  v13 = v12;

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    if (audioStreamState <= 3)
    {
      v14 = off_1002B9128[audioStreamState];
    }

    LogPrintF();
  }

  return v13;
}

- (void)_setPipeMessageStats:(unint64_t)stats
{
  [(SRStats *)self->_stats setFirstPipeMessageRTT:stats];
  [(SRStats *)self->_stats firstPipeMessageRTT];
  if (UpTicksToSeconds() >= 4 && dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EBF28();
  }
}

- (void)_updateLocalAudioCategory:(id)category
{
  categoryCopy = category;
  v6 = categoryCopy;
  if (self->_prefSmartRoutingPreemptiveConnectedBanner && [(NSNumber *)categoryCopy intValue]>= 301 && [(NSNumber *)self->_localDeviceAudioCategory intValue]== 100 && ![(NSMutableDictionary *)self->_smartRoutingWxDeviceMap count])
  {
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EBFE4();
    }

    objc_storeStrong(&self->_localDeviceAudioCategory, category);
    if (self->_prefSmartRoutingConnectionManager)
    {
      dispatchQueue = self->_dispatchQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100071910;
      block[3] = &unk_1002B6880;
      block[4] = self;
      dispatch_async(dispatchQueue, block);
    }

    else
    {
      [(BTSmartRoutingDaemon *)self _evaluatorRun];
    }

    if (self->_preemptiveBannerConnectionInProgress)
    {
      [(SRStats *)self->_stats setLocalAudioScore:self->_localDeviceAudioCategory];
    }
  }

  localDeviceAudioCategory = self->_localDeviceAudioCategory;
  if (localDeviceAudioCategory != v6)
  {
    p_localDeviceAudioCategory = &self->_localDeviceAudioCategory;
    if (dword_1002F6778 > 90)
    {
      goto LABEL_18;
    }

    if (dword_1002F6778 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_18:
        objc_storeStrong(&self->_localDeviceAudioCategory, category);
        if ([(NSNumber *)*p_localDeviceAudioCategory intValue]>= 101 && self->_stemClickResumeTimer)
        {
          [(BTSmartRoutingDaemon *)self _recordStemClickToResponseDelay];
        }

        smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_100071918;
        v14[3] = &unk_1002B7FA8;
        v14[4] = self;
        v11 = v6;
        v15 = v11;
        [(NSMutableDictionary *)smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:v14];
        v12 = +[SRConnectionManager sharedSRConnectionManager];
        [v12 localAudioCategoryChanged:v11];

        goto LABEL_22;
      }

      localDeviceAudioCategory = *p_localDeviceAudioCategory;
    }

    [(NSNumber *)localDeviceAudioCategory intValue];
    [(NSNumber *)v6 intValue];
    activePlayingApp = [(SRSourceDevice *)self->_sourceDevice activePlayingApp];
    LogPrintF();

    goto LABEL_18;
  }

LABEL_22:
}

- (void)_updateNowPlayingInfoForConnectedWx:(id)wx withLastPlayedTarget:(unsigned __int8)target andHeadsetAddress:(id)address
{
  var5 = wx.var5;
  v7 = *&wx.var0;
  addressCopy = address;
  dispatchQueue = self->_dispatchQueue;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100071A68;
  v12[3] = &unk_1002B8A38;
  v13 = addressCopy;
  v14 = v7;
  v15 = var5;
  v16 = WORD2(var5);
  targetCopy = target;
  v12[4] = self;
  v11 = addressCopy;
  dispatch_async(dispatchQueue, v12);
}

- (void)_updateOtherTipiBuildVersion:(id)version
{
  v4 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:version];
  otherTipiDeviceBTAddress = [v4 otherTipiDeviceBTAddress];
  if (otherTipiDeviceBTAddress)
  {
    if (([v4 otherTipiDeviceIsWatch] & 1) != 0 || GestaltGetDeviceClass() == 6)
    {
      NRRegistry = self->_NRRegistry;
      if (!NRRegistry)
      {
        v7 = +[NRPairedDeviceRegistry sharedInstance];
        v8 = self->_NRRegistry;
        self->_NRRegistry = v7;

        NRRegistry = self->_NRRegistry;
      }

      getActivePairedDevice = [(NRPairedDeviceRegistry *)NRRegistry getActivePairedDevice];
      v10 = [getActivePairedDevice valueForProperty:NRDevicePropertySystemVersion];
      v11 = [v10 componentsSeparatedByString:@"."];
      v12 = [v11 objectAtIndex:0];
      integerValue = [v12 integerValue];

      v14 = [v10 componentsSeparatedByString:@"."];
      v15 = [v14 objectAtIndex:1];
      integerValue2 = [v15 integerValue];

      [v4 setOtherTipiDeviceDRCompatible:{-[BTSmartRoutingDaemon _isOtherTipiDeviceBeforeTrain:withIOS:withMacOS:withWatchOS:otherTipiDeviceIsWatch:](self, "_isOtherTipiDeviceBeforeTrain:withIOS:withMacOS:withWatchOS:otherTipiDeviceIsWatch:", 0, 19, 0, 12, 1) ^ 1}];
      [v4 setOtherTipiDeviceBuildVersion:integerValue andMinorBuildVersion:integerValue2];
      [v4 setOtherTipiIDSIdentifier:@"RPDestinationIdentifierPairedCompanion"];
    }

    else
    {
      v17 = [(BTSmartRoutingDaemon *)self _getIDSDeviceFromBtAddress:otherTipiDeviceBTAddress];
      getActivePairedDevice = v17;
      if (v17)
      {
        [v17 operatingSystemVersion];
        v18 = v24;
        [getActivePairedDevice operatingSystemVersion];
        v19 = v22;
      }

      else
      {
        v19 = 0;
        v18 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v22 = 0;
        v23 = 0;
        v21 = 0;
      }

      [v4 setOtherTipiDeviceBuildVersion:v18 andMinorBuildVersion:{v19, v21, v22, v23, v24, v25, v26}];
      uniqueID = [getActivePairedDevice uniqueID];
      [v4 setOtherTipiIDSIdentifier:uniqueID];

      [v4 setOtherTipiDeviceDRCompatible:{-[BTSmartRoutingDaemon _isOtherTipiDeviceBeforeTrain:withIOS:withMacOS:withWatchOS:otherTipiDeviceIsWatch:](self, "_isOtherTipiDeviceBeforeTrain:withIOS:withMacOS:withWatchOS:otherTipiDeviceIsWatch:", otherTipiDeviceBTAddress, 19, 16, 0, 0) ^ 1}];
    }
  }
}

- (void)_updateOtherTipiDevice:(id)device otherAddress:(id)address otherName:(id)name otherVersion:(id)version withResult:(id)result
{
  deviceCopy = device;
  addressCopy = address;
  nameCopy = name;
  versionCopy = version;
  v15 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:deviceCopy];
  v16 = v15;
  if (v15)
  {
    if (result)
    {
      [v15 setRoutingAction:2];
      [v16 setOtherTipiDeviceInfo:0 andName:0 andVersion:0];
      [(BTSmartRoutingDaemon *)self _updateNearbyDeviceState:deviceCopy withAddress:&stru_1002C1358 withEasyPairing:0 withState:3];
    }

    else
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        v21 = nameCopy;
        v22 = versionCopy;
        v19 = deviceCopy;
        v20 = addressCopy;
        LogPrintF();
      }

      v17 = addressCopy;
      [v16 setRoutingAction:1];
      [v16 setOtherTipiDeviceInfo:v17 andName:nameCopy andVersion:versionCopy];
      [(BTSmartRoutingDaemon *)self _updateNearbyDeviceState:deviceCopy withAddress:v17 withEasyPairing:0 withState:1];

      v18 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:deviceCopy];
      [v18 setOtherTipiAudioCategory:0];
      [v18 setOtherTipiDeviceIsStreamingAudio:0];
    }

    [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged", v19, v20, v21, v22];
  }

  else if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EC000();
  }
}

- (void)_updateOtherTipiDevicewithAudioCategory:(id)category otherAddress:(id)address otherName:(id)name otherVersion:(id)version
{
  categoryCopy = category;
  addressCopy = address;
  nameCopy = name;
  versionCopy = version;
  v13 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:categoryCopy];
  v14 = addressCopy;
  if (v13)
  {
    [v13 setOtherTipiDeviceInfo:v14 andName:nameCopy andVersion:versionCopy];
    if ([(BTSmartRoutingDaemon *)self _isMagnetConnectedDeviceforTipiHealingCheck:v14]&& GestaltGetDeviceClass() == 1)
    {
      [v13 setOtherTipiDeviceIsWatch:1];
    }

    if (self->_isBTRoute)
    {
      v15 = 1;
    }

    else
    {
      v15 = 3;
    }

    [v13 setRoutingAction:v15];
    if (v14)
    {
      [(BTSmartRoutingDaemon *)self _updateNearbyDeviceState:categoryCopy withAddress:v14 withEasyPairing:0 withState:1];
      [versionCopy doubleValue];
      if (v16 >= 2.0)
      {
        if (self->_localDeviceAudioCategory)
        {
          [(BTSmartRoutingDaemon *)self _sendAudioCategory:categoryCopy withAudioCategory:?];
        }
      }
    }
  }
}

- (id)_verifyWxConnectedBTAddress:(id)address withVersion:(id)version
{
  addressCopy = address;
  versionCopy = version;
  if (addressCopy && ([(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:addressCopy], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EC01C();
    }

    v20 = 0;
  }

  else
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    discoveredDevices = [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
    v10 = [discoveredDevices countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      selfCopy = self;
      v12 = *v26;
      do
      {
        v13 = 0;
        do
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(discoveredDevices);
          }

          v14 = *(*(&v25 + 1) + 8 * v13);
          btAddressData = [v14 btAddressData];
          if ([btAddressData length] != 6)
          {
            [versionCopy doubleValue];
            v16 = 0;
LABEL_14:

            goto LABEL_15;
          }

          bytes = [btAddressData bytes];
          v16 = NSPrintF();
          [versionCopy doubleValue];
          if (v17 < 1.1)
          {
            if (!v16 || ([v14 deviceFlags] & 0x10) == 0)
            {
              goto LABEL_14;
            }

            v18 = [(NSMutableDictionary *)selfCopy->_connectedDevices objectForKeyedSubscript:v16];
            goto LABEL_27;
          }

          if (!v16)
          {
            goto LABEL_14;
          }

          if ([addressCopy isEqualToString:v16] && (objc_msgSend(v14, "deviceFlags") & 0x10) != 0)
          {
            v18 = v14;
LABEL_27:
            v20 = v18;
            goto LABEL_28;
          }

          if (![addressCopy isEqualToString:v16] || (objc_msgSend(v14, "deviceFlags") & 0x10) != 0)
          {
            goto LABEL_14;
          }

          v19 = objc_alloc_init(CBDevice);
          [v19 setIdentifier:@"FF:FF:FF:FF:FF:FF"];
          v20 = v19;
          if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            sub_1001EC05C();
          }

LABEL_28:
          if (v20)
          {
            goto LABEL_33;
          }

LABEL_15:
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v21 = [discoveredDevices countByEnumeratingWithState:&v25 objects:v29 count:16];
        v11 = v21;
      }

      while (v21);
    }

    v20 = 0;
LABEL_33:
  }

  return v20;
}

- (BOOL)_verifyWxConnectedRouted:(id)routed
{
  routedCopy = routed;
  p_smartRoutingWxDeviceMap = &self->_smartRoutingWxDeviceMap;
  v6 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:routedCopy];
  routed = [v6 routed];

  v8 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:routedCopy];
  if ([v8 inEar])
  {
    v9 = [(NSMutableDictionary *)*p_smartRoutingWxDeviceMap objectForKeyedSubscript:routedCopy];
    otherTipiDeviceBTAddress = [v9 otherTipiDeviceBTAddress];
    v11 = otherTipiDeviceBTAddress == 0;

    v12 = v11 | routed;
  }

  else
  {
    v12 = 1;
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EC09C();
  }

  return v12 & 1;
}

- (void)_watchHintingRecovery
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000724F0;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)watchMediaControl
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100072678;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_watchMediaControl
{
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EC1B8();
  }
}

- (void)_watchRecoveryStartTimer
{
  v3 = dispatch_time(0, 120000000000);
  watchRecoveryTimer = self->_watchRecoveryTimer;
  if (watchRecoveryTimer)
  {

    dispatch_source_set_timer(watchRecoveryTimer, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  else
  {
    v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v6 = self->_watchRecoveryTimer;
    self->_watchRecoveryTimer = v5;

    v7 = self->_watchRecoveryTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000727D4;
    handler[3] = &unk_1002B6880;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_source_set_timer(self->_watchRecoveryTimer, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_watchRecoveryTimer);
  }
}

- (void)_connectedDeviceFound:(id)found
{
  foundCopy = found;
  btAddressData = [foundCopy btAddressData];
  v5 = CUPrintNSDataAddress();

  if (v5)
  {
    identifier = [foundCopy identifier];
    v7 = +[CBIDSManager sharedInstance];
    identifier2 = [foundCopy identifier];
    [v7 connectionUpdatedForBluetoothIdentifier:identifier2 connected:1];

    if (([foundCopy connectedServices] & 0x11) == 0)
    {
LABEL_310:

      goto LABEL_311;
    }

    if (!self->_connectedDevices)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      connectedDevices = self->_connectedDevices;
      self->_connectedDevices = v9;
    }

    if (!self->_connectedDevicesInEarCache)
    {
      v11 = objc_alloc_init(NSMutableDictionary);
      connectedDevicesInEarCache = self->_connectedDevicesInEarCache;
      self->_connectedDevicesInEarCache = v11;
    }

    v13 = [sub_100073044() objectForKeyedSubscript:?];
    v14 = [sub_100072F70() objectForKeyedSubscript:?];

    v15 = &dword_1002F6000;
    sub_100004F54();
    if (v14)
    {
      if (v17 ^ v18 | v16 && (v19 != -1 || _LogCategory_Initialize()))
      {
        v190 = foundCopy;
        LogPrintF();
      }
    }

    else
    {
      if (v17 ^ v18 | v16 && (v19 != -1 || _LogCategory_Initialize()))
      {
        v190 = foundCopy;
        LogPrintF();
      }

      if (!self->_firstConnectedTime)
      {
        v20 = objc_alloc_init(NSMutableDictionary);
        firstConnectedTime = self->_firstConnectedTime;
        self->_firstConnectedTime = v20;
      }

      v22 = [NSNumber numberWithUnsignedLongLong:mach_absolute_time()];
      [(NSMutableDictionary *)self->_firstConnectedTime setObject:v22 forKeyedSubscript:v5];

      firstStemClick = self->_firstStemClick;
      if (!firstStemClick)
      {
        v24 = objc_alloc_init(NSMutableDictionary);
        v25 = self->_firstStemClick;
        self->_firstStemClick = v24;

        firstStemClick = self->_firstStemClick;
      }

      [(NSMutableDictionary *)firstStemClick setObject:&__kCFBooleanFalse forKeyedSubscript:v5, v190];
      firstStemClickTime = self->_firstStemClickTime;
      if (!firstStemClickTime)
      {
        v27 = objc_alloc_init(NSMutableDictionary);
        v28 = self->_firstStemClickTime;
        self->_firstStemClickTime = v27;

        firstStemClickTime = self->_firstStemClickTime;
      }

      [(NSMutableDictionary *)firstStemClickTime setObject:&off_1002CB6C0 forKeyedSubscript:v5];
      v29 = [sub_100072ED0() objectForKeyedSubscript:?];
      if (v29)
      {
        if ([(NSMutableDictionary *)self->_smartRoutingWxDeviceMap count]>= 2)
        {
          [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap enumerateKeysAndObjectsUsingBlock:&stru_1002B81C8];
          [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
        }

        v30 = [sub_100072F04() _getWxFWVersion:?];
        if ([@"5A187" compare:v30 options:64] == 1 && (objc_msgSend(v29, "isRoutingActionInitialized") & 1) == 0)
        {
          otherTipiDeviceBTAddress = [v29 otherTipiDeviceBTAddress];

          if (!otherTipiDeviceBTAddress)
          {
            if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
            {
              v190 = v30;
              LogPrintF();
            }

            if (self->_pairedCompanionDeviceSupportsSmartRouting)
            {
              v32 = 1;
            }

            else
            {
              v32 = 2;
            }

            [v29 setRoutingAction:{v32, v190}];
            [v29 setIsRoutingActionInitialized:1];
            [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
          }
        }

        [sub_100072F04() _triggerTipiTableUpdate:?];
        [(BTSmartRoutingDaemon *)self activeHRMDeviceUpdate];

        v15 = &dword_1002F6000;
      }

      [(BTSmartRoutingDaemon *)self _startAudioStateSnapshotTimer];
      [v13 _setInUseBannerBackoffReason:0];
      if (self->_prefSmartRoutingUSBAudioDevice && [v13 isUSBPlugIn])
      {
        [sub_100072F04() _disconnectOtherTipiDevice:?];
      }

      if (GestaltGetDeviceClass() == 1)
      {
        [(BTSmartRoutingDaemon *)self _checkTriangleRecovery];
      }
    }

    deviceFlags = [foundCopy deviceFlags];
    v34 = [sub_100072F70() objectForKeyedSubscript:?];

    v35 = foundCopy;
    if (!v34)
    {
      if ((deviceFlags & 0x40000) != 0)
      {
        sub_100004F54();
        if (v17 ^ v18 | v16 && (v38 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        [sub_100072F04() _submitManualConnectionMetric:?];
        v39 = [sub_100073044() objectForKeyedSubscript:?];
        [v39 _setUserConnectedState:1];

        v40 = [sub_100072ED0() objectForKeyedSubscript:?];

        if (v40)
        {
          v41 = [sub_100072ED0() objectForKeyedSubscript:?];
          [v41 setRoutingAction:1];
        }

        v37 = 8;
      }

      else
      {
        v36 = [sub_100072ED0() objectForKeyedSubscript:?];

        v35 = foundCopy;
        if (v36)
        {
          goto LABEL_59;
        }

        v37 = 9;
      }

      [v13 setTipiConnectType:v37];
      v35 = foundCopy;
    }

LABEL_59:
    if (([v35 deviceFlags] & 0x40) == 0)
    {
      v42 = [sub_100072ED0() objectForKeyedSubscript:?];
      if ([v42 hijackBackoffTicks])
      {
        hijackBackOffInitiator = self->_hijackBackOffInitiator;

        if (hijackBackOffInitiator)
        {
          mach_absolute_time();
          v44 = [sub_100072ED0() objectForKeyedSubscript:?];
          [v44 hijackBackoffTicks];
          v45 = UpTicksToSeconds();

          sub_100004F54();
          if (v17 ^ v18 | v16 && (v46 != -1 || _LogCategory_Initialize()))
          {
            v191 = v45;
            LogPrintF();
          }

          if (v45 >= 5)
          {
            [sub_100072F04() _hijackBackoffReset:? withReason:?];
          }
        }
      }

      else
      {
      }
    }

    v47 = [sub_100072F70() objectForKeyedSubscript:?];
    if (v47)
    {
    }

    else
    {
      v48 = [sub_100072ED0() objectForKeyedSubscript:?];

      if (!v48)
      {
        [sub_100072F98() _submitNonSRConnectionMetric:?];
      }
    }

    name = [foundCopy name];
    [foundCopy productID];
    v50 = [sub_100072F04() _supportsSR:? andProductID:?];
    v51 = [sub_100072F70() objectForKeyedSubscript:?];
    if (v51)
    {
      v217 = 0;
    }

    else
    {
      v52 = [sub_100072ED0() objectForKeyedSubscript:?];
      if (v52)
      {
        v217 = 0;
      }

      else
      {
        v217 = ([foundCopy deviceFlags] & 0x40000) == 0;
      }
    }

    v53 = [sub_100072F70() objectForKeyedSubscript:?];
    if (((v53 == 0) & v50) != 0)
    {
      v54 = [sub_100072ED0() objectForKeyedSubscript:?];

      if (!v54)
      {
        [sub_100072F98() _smartRoutingAddWxMapDeviceFromConnectedDevice:?];
        [sub_100072F04() _triggerTipiTableUpdate:?];
        [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
      }
    }

    else
    {
    }

    if (self->_pendingActiveHRMUpdate)
    {
      v55 = v50;
      v56 = identifier;
      [(BTSmartRoutingDaemon *)self activeHRMDeviceUpdate];
      v57 = [sub_100073044() objectForKeyedSubscript:?];
      workoutObserver = [(BTSmartRoutingDaemon *)self workoutObserver];
      workoutActive = [workoutObserver workoutActive];

      if (workoutActive)
      {
        [(BTSmartRoutingDaemon *)self _constructAndSendTipiScoreMessageToWx:v57 withScore:7];
      }

      identifier = v56;
      v50 = v55;
    }

    v60 = [sub_100072F70() objectForKeyedSubscript:?];
    if (!v60)
    {
      v61 = [(NSMutableDictionary *)self->_connectedDevicesSrModeCache objectForKeyedSubscript:v5];
      mode = [v61 mode];

      if (mode == 1 || ([sub_100072F98() _lowestBatteryInfoForCBDevice:?], v63 == 0.0))
      {
LABEL_93:
        v65 = [sub_100072F70() objectForKeyedSubscript:?];

        v214 = v13;
        if (v65)
        {
          v66 = [(NSMutableDictionary *)self->_connectedDevicesInEarCache objectForKeyedSubscript:v5];
          bOOLValue = [v66 BOOLValue];
        }

        else
        {
          v67 = [sub_100072F04() _inEarNearbyCheck:?];
          v68 = [NSNumber numberWithBool:v67];
          [(NSMutableDictionary *)self->_connectedDevicesInEarCache setObject:v68 forKeyedSubscript:v5];

          v69 = [sub_100072ED0() objectForKeyedSubscript:?];

          bOOLValue = v67;
          if (!v69)
          {
LABEL_98:
            connectDevice = self->_connectDevice;
            v215 = v50;
            if (connectDevice && self->_connectSession)
            {
              bleDevice = [(SFDevice *)connectDevice bleDevice];
              bluetoothAddress = [bleDevice bluetoothAddress];

              if ([bluetoothAddress length] == 6)
              {
                bytes = [bluetoothAddress bytes];
                v73 = NSPrintF();
              }

              else
              {
                v73 = 0;
              }

              if ([v5 isEqual:{v73, bytes}] && (objc_msgSend(foundCopy, "connectedServices") & 0x80000) != 0)
              {
                v207 = v65;
                sub_100004F54();
                if (v17 ^ v18 | v16 && (v74 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                v75 = name;
                if (self->_eligibleHeadset)
                {
                  self->_smartRoutingDisconnectReason = 0;
                }

                v76 = [sub_100072ED0() objectForKeyedSubscript:?];
                identifier3 = [v76 identifier];

                [(BTSmartRoutingDaemon *)self _smartRoutingConnectionCompleted:0];
                if (identifier3)
                {
                  v78 = [sub_10007305C() objectForKeyedSubscript:?];
                  preemptiveBannerShown = [v78 preemptiveBannerShown];

                  if (preemptiveBannerShown)
                  {
                    v80 = [sub_100072ED0() objectForKeyedSubscript:?];
                    [v80 setFirstBannerShown:0];
                  }
                }

                name = v75;
                v50 = v215;
                v65 = v207;
              }
            }

            if (!v50)
            {
LABEL_169:
              v116 = [sub_100072ED0() objectForKeyedSubscript:?];
              [sub_100072F98() _smartRoutingModeCheck:?];
              v117 = [sub_100072F70() objectForKeyedSubscript:?];

              if (v117 || !v116)
              {
                v122 = [sub_100072F70() objectForKeyedSubscript:?];
                if (v122)
                {
                }

                else
                {
                  v123 = [foundCopy productID] - 8194;
                  if (v123 < 0x2E)
                  {
                    v124 = 0x207C7BB7FF9BuLL >> v123;
LABEL_197:
                    [(NSMutableDictionary *)self->_connectedDevices setObject:foundCopy forKeyedSubscript:v5, bytes];
                    v134 = [sub_100072F04() _inEarConnectedCheck:?];
                    if (![foundCopy primaryPlacement] && !objc_msgSend(foundCopy, "secondaryPlacement"))
                    {
                      v134 = [sub_100072F04() _inEarNearbyCheck:?];
                    }

                    if (v124)
                    {
                      [(BTSmartRoutingDaemon *)self _sendTipiScoreUpdateToWx];
                    }

                    _isOnDemandConnectInProgress = [(BTSmartRoutingDaemon *)self _isOnDemandConnectInProgress];
                    v136 = _isOnDemandConnectInProgress;
                    forcedConnection = self->_forcedConnection;
                    if (!forcedConnection && !_isOnDemandConnectInProgress)
                    {
LABEL_218:
                      v213 = v124;
                      if (!((v65 == 0 || !self->_prefSmartRoutingPreemptiveConnectedBanner) | v134 & 1))
                      {
                        [v116 setFirstBannerShown:1];
                        v142 = [sub_100073138() objectForKeyedSubscript:?];
                        preemptiveBannerShown2 = [v142 preemptiveBannerShown];

                        if (preemptiveBannerShown2)
                        {
                          v144 = [sub_100073138() objectForKeyedSubscript:?];
                          [v144 setPreemptiveBannerShown:0];
                        }
                      }

                      v145 = bOOLValue;
                      if (!(v134 & 1 | !v217))
                      {
                        sub_100004F54();
                        if (!(v17 ^ v18 | v16))
                        {
LABEL_250:
                          if (v145 != v134)
                          {
                            sub_100004F54();
                            if (v17 ^ v18 | v16 && (v159 != -1 || _LogCategory_Initialize()))
                            {
                              if (v145)
                              {
                                v160 = "yes";
                              }

                              else
                              {
                                v160 = "no";
                              }

                              if (v134)
                              {
                                v161 = "yes";
                              }

                              else
                              {
                                v161 = "no";
                              }

                              audioStreamState = [foundCopy audioStreamState];
                              if (audioStreamState > 3)
                              {
                                v163 = "?";
                              }

                              else
                              {
                                v163 = off_1002B9128[audioStreamState];
                              }

                              v164 = "yes";
                              if (!self->_activityLevelMediaPlaying)
                              {
                                v164 = "no";
                              }

                              v196 = v164;
                              deviceFlags3 = "no";
                              v194 = v161;
                              v195 = v163;
                              v193 = v160;
                              LogPrintF();
                            }

                            if (v65 && ((v134 ^ 1) & 1) == 0)
                            {
                              if ([v116 otherTipiDeviceIsWatch] && objc_msgSend(v116, "otherTipiAudioCategory") == 100 && !self->_phoneOwnershipTimer && (objc_msgSend(v116, "routed") & 1) == 0)
                              {
                                [(BTSmartRoutingDaemon *)self _startPhoneOwnershipTimer:10];
                              }

                              identifier4 = [v116 identifier];
                              if ([v116 firstBannerShown])
                              {
                                v166 = [sub_10007305C() objectForKeyedSubscript:?];
                                v167 = [v166 preemptiveBannerShown] ^ 1;
                              }

                              else
                              {
                                v167 = 0;
                              }

                              [v116 setFirstBannerShown:v167];
                              [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
                            }
                          }

                          v193 = [NSNumber numberWithBool:v134, v193];
                          [(NSMutableDictionary *)self->_connectedDevicesInEarCache setObject:v193 forKeyedSubscript:v5];

                          [v116 setInEar:v134];
                          if (!(v215 & 1 | ((v213 & 1) == 0)))
                          {
                            sub_100004F54();
                            if (v17 ^ v18 | v16 && (v169 != -1 || _LogCategory_Initialize()))
                            {
                              LogPrintF();
                            }

                            name2 = [foundCopy name];
                            productID = [foundCopy productID];
                            sub_100073010(productID, v172, v173, v174, v175, productID, @"Connected");
                          }

                          if (!self->_uiSmartRoutingBanner && ([v116 firstBannerShown] & v134) == 1 && !self->_tipiElectionInProgress)
                          {
                            identifier5 = [v116 identifier];
                            v177 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier5];
                            preemptiveBannerShown3 = [v177 preemptiveBannerShown];

                            if ((preemptiveBannerShown3 & 1) == 0)
                            {
                              if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                              {
                                LogPrintF();
                              }

                              [v116 setFirstBannerShown:0];
                              name3 = [foundCopy name];
                              productID2 = [foundCopy productID];
                              sub_100073010(productID2, v181, v182, v183, v184, productID2, @"Connected");
                            }
                          }

                          if (self->_prefSmartRoutingEnabledPhase3)
                          {
                            [(BTSmartRoutingDaemon *)self _mediaRouteDiscoveryStarted];
                          }

                          v185 = [sub_100072ED0() objectForKeyedSubscript:?];
                          if (v185)
                          {
                            v186 = v185;
                            v187 = [sub_100072ED0() objectForKeyedSubscript:?];
                            otherTipiDeviceBTAddress2 = [v187 otherTipiDeviceBTAddress];
                            if (otherTipiDeviceBTAddress2 || self->_tipiElectionInProgress || ([sub_100072F98() _aacpConnectedCheck:?] & 1) == 0)
                            {
                            }

                            else
                            {
                              v189 = self->_forcedConnection;

                              if (!v189)
                              {
                                if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                                {
                                  LogPrintF();
                                }

                                [(BTSmartRoutingDaemon *)self _tipiHealingAttempt];
                              }
                            }
                          }

                          [sub_100072F98() _updateSRDiscoveredDeviceForCBDeviceChanged:? connectionStatus:?];
                          if (self->_forcedHRMConnectionInProgress)
                          {
                            [(BTSmartRoutingDaemon *)self _checkIfHRMDeviceElectionHasFinished];
                          }

                          [(CUCoalescer *)self->_evaluatorCoalescer trigger];

                          goto LABEL_310;
                        }

                        if (v146 != -1 || _LogCategory_Initialize())
                        {
                          LogPrintF();
                        }
                      }

                      sub_100004F54();
                      if (v17 ^ v18 | v16 && (v147 != -1 || _LogCategory_Initialize()))
                      {
                        v148 = "no";
                        if (bOOLValue)
                        {
                          v149 = "yes";
                        }

                        else
                        {
                          v149 = "no";
                        }

                        if (v134)
                        {
                          v150 = "yes";
                        }

                        else
                        {
                          v150 = "no";
                        }

                        v205 = v150;
                        v206 = v149;
                        if (v65)
                        {
                          v148 = "yes";
                        }

                        v204 = v148;
                        routingAction = [v116 routingAction];
                        v208 = v65;
                        v210 = name;
                        if (routingAction > 5)
                        {
                          v152 = "?";
                        }

                        else
                        {
                          v152 = off_1002B90F8[routingAction];
                        }

                        v203 = v152;
                        if ([v116 routed])
                        {
                          v153 = "yes";
                        }

                        else
                        {
                          v153 = "no";
                        }

                        otherTipiDeviceBTAddress3 = [v116 otherTipiDeviceBTAddress];
                        otherTipiDeviceVersion = [v116 otherTipiDeviceVersion];
                        otherTipiDeviceBTName = [v116 otherTipiDeviceBTName];
                        v157 = otherTipiDeviceBTName;
                        if (v217)
                        {
                          v158 = "yes";
                        }

                        else
                        {
                          v158 = "no";
                        }

                        v201 = otherTipiDeviceBTName;
                        v202 = v158;
                        v199 = otherTipiDeviceBTAddress3;
                        v200 = otherTipiDeviceVersion;
                        deviceFlags3 = v203;
                        v198 = v153;
                        v195 = v205;
                        v196 = v204;
                        v193 = v5;
                        v194 = v206;
                        LogPrintF();

                        name = v210;
                        v65 = v208;
                        v145 = bOOLValue;
                      }

                      goto LABEL_250;
                    }

                    v138 = v15[478];
                    if (v138 <= 30)
                    {
                      if (v138 == -1)
                      {
                        if (!_LogCategory_Initialize())
                        {
                          goto LABEL_213;
                        }

                        forcedConnection = self->_forcedConnection;
                      }

                      v139 = "no";
                      if (forcedConnection)
                      {
                        v140 = "yes";
                      }

                      else
                      {
                        v140 = "no";
                      }

                      if (v136)
                      {
                        v139 = "yes";
                      }

                      v193 = v140;
                      v194 = v139;
                      LogPrintF();
                    }

LABEL_213:
                    [sub_100072F04() _disconnectOtherTipiDevice:?];
                    if (!self->_forcedConnection)
                    {
                      if ([(SRConnectConfig *)self->_phase1ConnectConfig type]!= 3)
                      {
LABEL_217:
                        self->_forcedConnection = 0;
                        phase1ConnectConfig = self->_phase1ConnectConfig;
                        self->_phase1ConnectConfig = 0;

                        goto LABEL_218;
                      }

                      [sub_100072F04() _removeTiPiState:?];
                      [sub_100072F04() _startRouteCheckTimer:? andType:?];
                    }

                    [sub_100072F04() _startRouteCheckTimer:? andType:?];
                    goto LABEL_217;
                  }
                }
              }

              else
              {
                if ([v116 routingAction])
                {
                  sub_100004F54();
                  if (v17 ^ v18 | v16 && (v118 != -1 || _LogCategory_Initialize()))
                  {
                    deviceFlags3 = [(NSMutableDictionary *)self->_srBudswapDeviceMap objectForKeyedSubscript:v5, bytes, v194, v195, v196, deviceFlags3];
                    reconnectionState = [deviceFlags3 reconnectionState];
                    v121 = "Connected";
                    if (reconnectionState != 1)
                    {
                      v121 = "?";
                    }

                    if (!reconnectionState)
                    {
                      v121 = "Not connected";
                    }

                    bytes = v121;
                    LogPrintF();
                  }

                  v125 = [sub_100073138() objectForKeyedSubscript:?];
                  if ([v125 preemptiveBannerShown])
                  {
                  }

                  else
                  {
                    v126 = [(NSMutableDictionary *)self->_srBudswapDeviceMap objectForKeyedSubscript:v5];
                    v127 = v65;
                    v128 = name;
                    reconnectionState2 = [v126 reconnectionState];

                    v16 = reconnectionState2 == 1;
                    name = v128;
                    v65 = v127;
                    if (!v16)
                    {
                      [v116 setFirstBannerShown:1];
                    }
                  }
                }

                [(BTSmartRoutingDaemon *)self _sendTipiScoreUpdateToWx];
                workoutObserver2 = [(BTSmartRoutingDaemon *)self workoutObserver];
                workoutActive2 = [workoutObserver2 workoutActive];

                if (workoutActive2)
                {
                  v132 = [sub_100073044() objectForKeyedSubscript:?];
                  if ([v116 isHRMCapable])
                  {
                    score = 7;
                  }

                  else
                  {
                    score = self->_score;
                  }

                  [(BTSmartRoutingDaemon *)self _constructAndSendTipiScoreMessageToWx:v132 withScore:score];
                }

                if (_os_feature_enabled_impl())
                {
                  [(SRNowPlayingObserver *)self->_nowPlayingObserver sendNowPlayingMessage];
                }
              }

              LOBYTE(v124) = 0;
              goto LABEL_197;
            }

            v211 = identifier;
            v81 = [sub_100072ED0() objectForKeyedSubscript:?];
            deviceName = [v81 deviceName];
            v209 = name;
            v83 = [deviceName isEqualToString:name];

            if ((v83 & 1) == 0)
            {
              sub_100004F54();
              if (v17 ^ v18 | v16 && (v84 != -1 || _LogCategory_Initialize()))
              {
                v85 = [sub_100072ED0() objectForKeyedSubscript:?];
                deviceName2 = [v85 deviceName];
                [foundCopy name];
                v194 = bytes = deviceName2;
                LogPrintF();
              }

              name4 = [foundCopy name];
              v88 = [sub_100072ED0() objectForKeyedSubscript:?];
              [v88 setDeviceName:name4];
            }

            v89 = [sub_100072ED0() objectForKeyedSubscript:?];
            deviceVersion = [v89 deviceVersion];

            if (!deviceVersion && (objc_opt_respondsToSelector() & 1) != 0)
            {
              sub_100004F54();
              if (v17 ^ v18 | v16 && (v91 != -1 || _LogCategory_Initialize()))
              {
                bytes = [foundCopy firmwareVersion];
                LogPrintF();
              }

              firmwareVersion = [foundCopy firmwareVersion];
              v93 = [sub_100072ED0() objectForKeyedSubscript:?];
              [v93 setDeviceVersion:firmwareVersion];
            }

            deviceFlags2 = [foundCopy deviceFlags];
            v95 = [sub_100072ED0() objectForKeyedSubscript:?];
            if (([v95 manualRouteChangeInProgress] & 1) != 0 || (deviceFlags2 & 0x400000) == 0)
            {

              v97 = 0;
              v98 = 0;
              v99 = 0;
              if ((deviceFlags2 & 0x400000) == 0)
              {
                goto LABEL_138;
              }
            }

            else
            {
              v96 = [sub_100072ED0() objectForKeyedSubscript:?];
              v97 = [v96 manuallyRouted] ^ 1;
            }

            v99 = [sub_100072F98() _isInEarToOutOfEar:?];
            v98 = v97;
LABEL_138:
            sub_100004F54();
            if (v17 ^ v18 | v16 && (v100 != -1 || _LogCategory_Initialize()))
            {
              v101 = "no";
              v102 = v65;
              v103 = "no";
              if ((deviceFlags2 & 0x400000) != 0)
              {
                v101 = "yes";
              }

              v212 = v101;
              if (v98)
              {
                v104 = "yes";
              }

              else
              {
                v104 = "no";
              }

              v105 = [sub_100072ED0() objectForKeyedSubscript:?];
              if ([v105 manualRouteChangeInProgress])
              {
                v103 = "yes";
              }

              v196 = v103;
              deviceFlags3 = [foundCopy deviceFlags];
              v65 = v102;
              v195 = v104;
              v15 = &dword_1002F6000;
              bytes = v5;
              v194 = v212;
              LogPrintF();
            }

            name = v209;
            identifier = v211;
            if (v98)
            {
              [sub_100072F98() _sendIntendedRouteInfoUpdateToWx:? withIntendedRoutingStatus:?];
              [(BTSmartRoutingDaemon *)self _updateRoutingActionForManuallyRoute];
              [sub_100072F04() _startManualRouteChangeDetectionTimer:?];
              if (self->_prefSmartRoutingBlockHijackWindowinSeconds)
              {
                v106 = [sub_100072ED0() objectForKeyedSubscript:?];
                hijackBackoffTicks = [v106 hijackBackoffTicks];

                if (hijackBackoffTicks)
                {
                  sub_100004F54();
                  if (v17 ^ v18 | v16 && (v108 != -1 || _LogCategory_Initialize()))
                  {
                    LogPrintF();
                  }

                  [sub_100072F04() _hijackBackoffReset:? withReason:?];
                  v109 = [sub_100072ED0() objectForKeyedSubscript:?];
                  otherTipiDeviceBTAddress4 = [v109 otherTipiDeviceBTAddress];
                  [(BTSmartRoutingDaemon *)self _relayConduitMessageSend:1 withOptions:&off_1002CBCE8 andWxAddress:v5 andOtherAddress:otherTipiDeviceBTAddress4];
                }
              }
            }

            if (v99)
            {
              sub_100004F54();
              if (v17 ^ v18 | v16 && (v111 != -1 || _LogCategory_Initialize()))
              {
                LogPrintF();
              }

              [sub_100072F04() _setManualRouteFlag:? withManualRoute:?];
            }

            else
            {
              v112 = [sub_100072ED0() objectForKeyedSubscript:?];
              [v112 setManuallyRouted:(deviceFlags2 >> 22) & 1];

              if ((deviceFlags2 & 0x400000) == 0)
              {
                v113 = [sub_100072ED0() objectForKeyedSubscript:?];
                manualRouteChangeInProgress = [v113 manualRouteChangeInProgress];

                if (manualRouteChangeInProgress)
                {
                  v115 = [sub_100072ED0() objectForKeyedSubscript:?];
                  [v115 setManualRouteChangeInProgress:0];
                }
              }
            }

            goto LABEL_169;
          }

          v66 = [sub_100072ED0() objectForKeyedSubscript:?];
          [v66 setInEar:v67];
        }

        goto LABEL_98;
      }

      v64 = v63;
      v60 = [sub_100073138() objectForKeyedSubscript:?];
      [v60 setLowestBudBatteryInfo:v64];
    }

    goto LABEL_93;
  }

LABEL_311:
}

- (void)_connectedDeviceLost:(id)lost
{
  lostCopy = lost;
  btAddressData = [lostCopy btAddressData];
  v5 = CUPrintNSDataAddress();

  if (v5)
  {
    v6 = +[CBIDSManager sharedInstance];
    identifier = [lostCopy identifier];
    [v6 connectionUpdatedForBluetoothIdentifier:identifier connected:0];

    v8 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v5];

    if (v8)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        smartRoutingDisconnectReason = self->_smartRoutingDisconnectReason;
        v30 = lostCopy;
        LogPrintF();
      }

      sub_100073098(self->_connectedDevices, v9);
      [sub_100072FBC() _hijackBackoffReset:? withReason:?];
      [(NSMutableDictionary *)self->_smartRoutingWxStatsMap removeObjectForKey:v5];
      v10 = [sub_100072FBC() _getWxFWVersion:?];
      identifier2 = [lostCopy identifier];
      if (lostCopy)
      {
        v12 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier2];
        [v12 setPreemptiveBannerShown:0];

        v13 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:identifier2];
        [v13 setFirstPreemptiveBannerShown:0];

        [(BTSmartRoutingDaemon *)self _submitMetric:lostCopy];
        if ([@"6A221" compare:v10 options:64] != -1)
        {
          [(BTSmartRoutingDaemon *)self _setDisconnectTick:mach_absolute_time() forWxAddress:v5];
        }

        v14 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKey:v5, smartRoutingDisconnectReason, v30];
        [(BTSmartRoutingDaemon *)self dataRelayRemoveAvailableDataTypesWithDevice:v14];
        uiSmartRoutingBanner = self->_uiSmartRoutingBanner;
        if (uiSmartRoutingBanner)
        {
          [(BTBannerUISession *)uiSmartRoutingBanner invalidate];
          v16 = self->_uiSmartRoutingBanner;
          self->_uiSmartRoutingBanner = 0;
        }

        audioRoutingResponse = [v14 audioRoutingResponse];

        if (audioRoutingResponse)
        {
          v18 = objc_alloc_init(BTAudioRoutingResponse);
          [v18 setAction:3];
          [v18 setReason:@"Wx disconnecting"];
          [v18 setClientID:{objc_msgSend(v14, "audioRoutingClientID")}];
          audioRoutingResponse2 = [v14 audioRoutingResponse];
          [(BTSmartRoutingDaemon *)self _respondRoutingRequest:v18 withResponseHandler:audioRoutingResponse2 wxAddress:v5];
        }

        [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap removeObjectForKey:v5];
        if ([v14 isHRMCapable])
        {
          _connectedHRMEnabledDevice = [(BTSmartRoutingDaemon *)self _connectedHRMEnabledDevice];
          if (_connectedHRMEnabledDevice)
          {
          }

          else if (self->_isActiveHRMSession)
          {
            [(BTSmartRoutingDaemon *)self _handleHRMSessionChanged:0];
            if (GestaltGetDeviceClass() == 1)
            {
              [(BTSmartRoutingDaemon *)self _startWxDiscoveryForWorkout];
            }
          }
        }

        if (self->_tipiElectionInProgress)
        {
          self->_tipiElectionInProgress = 0;
        }

        tipiHealingTimer = self->_tipiHealingTimer;
        if (tipiHealingTimer)
        {
          v22 = tipiHealingTimer;
          dispatch_source_cancel(v22);
          v23 = self->_tipiHealingTimer;
          self->_tipiHealingTimer = 0;
        }

        hijackBackOffTimer = self->_hijackBackOffTimer;
        if (hijackBackOffTimer)
        {
          v25 = hijackBackOffTimer;
          dispatch_source_cancel(v25);
          v26 = self->_hijackBackOffTimer;
          self->_hijackBackOffTimer = 0;
        }

        [(SRSourceDevice *)self->_sourceDevice setShouldStayOnVirtual:0];
      }

      if (![(NSMutableDictionary *)self->_connectedDevices count:smartRoutingDisconnectReason]&& !self->_tipiElectionInProgress)
      {
        [(BTSmartRoutingDaemon *)self _mediaRouteDiscoveryStopped];
        smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
        self->_smartRoutingWxDeviceMap = 0;
      }

      sub_100073098(self->_connectedDevicesSrModeCache, v27);
      [(BTSmartRoutingDaemon *)self _updateSRDiscoveredDeviceForCBDeviceChanged:lostCopy connectionStatus:0];
      [(BTSmartRoutingDaemon *)self activeHRMDeviceUpdate];
      if (self->_prefSmartRoutingUSBAudioDevice)
      {
        [sub_100072FBC() _evaluatorRunInUseBanner:?];
      }

      [(CUCoalescer *)self->_evaluatorCoalescer trigger];
    }
  }
}

- (void)dataRelayAddAvailableDataTypesWithDiscoveredDevice:(id)device
{
  deviceCopy = device;
  lastDRHostIDSIdentifier = [deviceCopy lastDRHostIDSIdentifier];
  if (lastDRHostIDSIdentifier)
  {
    v5 = [(NSMutableDictionary *)self->_dataRelayAvailableServerSet objectForKey:lastDRHostIDSIdentifier];

    if (!v5)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        v9 = lastDRHostIDSIdentifier;
        LogPrintF();
      }

      btAddress = [deviceCopy btAddress];
      uTF8String = [btAddress UTF8String];

      if (uTF8String)
      {
        sub_100072E50();
        NSDataWithHex();
        objc_claimAutoreleasedReturnValue();
        v8 = [sub_100073068() addAvailableDataTypes:? dataTypes:? wxAddress:?];
        [(NSMutableDictionary *)self->_dataRelayAvailableServerSet setObject:v8 forKey:lastDRHostIDSIdentifier];
      }
    }
  }
}

- (void)dataRelayRemoveAvailableDataTypesWithDiscoveredDevice:(id)device
{
  deviceCopy = device;
  lastDRHostIDSIdentifier = [deviceCopy lastDRHostIDSIdentifier];
  v5 = [(NSMutableDictionary *)self->_dataRelayAvailableServerSet objectForKey:lastDRHostIDSIdentifier];

  if (v5)
  {
    [(NSMutableDictionary *)self->_dataRelayAvailableServerSet removeObjectForKey:lastDRHostIDSIdentifier];
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    v9 = lastDRHostIDSIdentifier;
    LogPrintF();
  }

  btAddress = [deviceCopy btAddress];
  uTF8String = [btAddress UTF8String];

  if (uTF8String)
  {
    sub_100072E50();
    NSDataWithHex();
    objc_claimAutoreleasedReturnValue();
    v8 = [sub_100073068() removeAvailableDataTypes:? dataTypes:? wxAddress:?];
  }
}

- (void)dataRelayAddAvailableDataTypesWithDevice:(id)device
{
  deviceCopy = device;
  deviceAddress = [deviceCopy deviceAddress];
  v5 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:deviceAddress];
  [(BTSmartRoutingDaemon *)self dataRelayRemoveAvailableDataTypesWithDiscoveredDevice:v5];
  otherTipiIDSIdentifier = [deviceCopy otherTipiIDSIdentifier];
  if (otherTipiIDSIdentifier)
  {
    v7 = [(NSMutableDictionary *)self->_dataRelayAvailableServerSet objectForKey:otherTipiIDSIdentifier];

    if (!v7)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        v12 = otherTipiIDSIdentifier;
        LogPrintF();
      }

      [deviceCopy setDataRelayServerPublished:{1, v12}];
      deviceAddress2 = [deviceCopy deviceAddress];
      uTF8String = [deviceAddress2 UTF8String];

      if (uTF8String)
      {
        sub_100072E50();
        v10 = NSDataWithHex();
        v11 = [(DRClientManager *)self->_dataRelayClientMonitor addAvailableDataTypes:otherTipiIDSIdentifier dataTypes:3 wxAddress:v10];
        [(NSMutableDictionary *)self->_dataRelayAvailableServerSet setObject:v11 forKey:otherTipiIDSIdentifier];
      }
    }
  }
}

- (void)dataRelayRemoveAvailableDataTypesWithDevice:(id)device
{
  deviceCopy = device;
  otherTipiIDSIdentifier = [deviceCopy otherTipiIDSIdentifier];
  v5 = [(NSMutableDictionary *)self->_dataRelayAvailableServerSet objectForKey:?];

  if (v5)
  {
    [(NSMutableDictionary *)self->_dataRelayAvailableServerSet removeObjectForKey:otherTipiIDSIdentifier];
  }

  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  [sub_100072FA4() setDataRelayServerPublished:?];
  deviceAddress = [deviceCopy deviceAddress];

  uTF8String = [deviceAddress UTF8String];
  if (uTF8String)
  {
    sub_100072E50();
    v8 = NSDataWithHex();
    v9 = [(DRClientManager *)self->_dataRelayClientMonitor removeAvailableDataTypes:otherTipiIDSIdentifier dataTypes:3 wxAddress:v8];
  }
}

- (void)_handleStemClickGestureReceived:(id)received
{
  receivedCopy = received;
  v4 = _os_feature_enabled_impl();
  v5 = receivedCopy;
  if (v4)
  {
    userInfo = [receivedCopy userInfo];
    v7 = [userInfo valueForKey:@"CommandType"];

    userInfo2 = [receivedCopy userInfo];
    v9 = [userInfo2 valueForKey:@"BTAddress"];

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      v18 = v9;
      v19 = v7;
      LogPrintF();
    }

    if (v9)
    {
      if (self->_lastStemClickBTAddr && ([v9 isEqualToString:?] & 1) == 0 && self->_stemClickTransactionTimer)
      {
        [(BTSmartRoutingDaemon *)self _cancelStemClickTransaction];
      }

      v10 = [v9 copy];
      lastStemClickBTAddr = self->_lastStemClickBTAddr;
      self->_lastStemClickBTAddr = v10;

      if ([v7 isEqualToString:@"Play"])
      {
        v12 = [(NSMutableDictionary *)self->_firstStemClick objectForKey:v9];
        if (v12)
        {
          v13 = v12;
          v14 = [(NSMutableDictionary *)self->_firstStemClick objectForKeyedSubscript:v9];
          if ([v14 BOOLValue])
          {
          }

          else
          {
            v15 = [(NSMutableDictionary *)self->_firstConnectedTime objectForKeyedSubscript:v9];

            if (v15)
            {
              mach_absolute_time();
              v16 = [(NSMutableDictionary *)self->_firstConnectedTime objectForKeyedSubscript:v9];
              [v16 doubleValue];
              v17 = [NSNumber numberWithUnsignedLongLong:UpTicksToSeconds()];
              [(NSMutableDictionary *)self->_firstStemClickTime setObject:v17 forKeyedSubscript:v9];

              [(NSMutableDictionary *)self->_firstStemClick setObject:&__kCFBooleanTrue forKeyedSubscript:v9];
            }
          }
        }

        if (self->_stemClickTransactionTimer)
        {
          [(BTSmartRoutingDaemon *)self _resetStemClickTransaction];
        }

        else
        {
          [(BTSmartRoutingDaemon *)self _startStemClickTransaction];
        }

        [(BTSmartRoutingDaemon *)self _startStemClickResumeTimer];
      }

      else if ([v7 isEqualToString:@"Pause"] && self->_stemClickTransactionTimer && -[SRStats stemClickResumeResultedInPlayback](self->_stats, "stemClickResumeResultedInPlayback"))
      {
        [(SRStats *)self->_stats setStemClickPlaybackPaused:1];
        [(BTSmartRoutingDaemon *)self _cancelStemClickResumeTimer];
      }
    }

    v5 = receivedCopy;
  }

  _objc_release_x1(v4, v5);
}

- (void)_nearbyInfoDeviceFound:(id)found
{
  sub_10007317C();
  v4 = v3;
  v21 = v5;
  identifier = [v21 identifier];
  uUIDString = [identifier UUIDString];

  if (!uUIDString)
  {
    goto LABEL_37;
  }

  audioRoutingScore = [v21 audioRoutingScore];
  v9 = [*(v4 + 1552) objectForKeyedSubscript:uUIDString];

  if (v9)
  {
    if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_17;
    }

    name = [v21 name];
    if (audioRoutingScore <= 0xF)
    {
      v11 = off_1002B8F50[audioRoutingScore];
    }
  }

  else
  {
    if (dword_1002F6778 > 30 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_17;
    }

    name = [v21 name];
    if (audioRoutingScore <= 0xF)
    {
      v12 = off_1002B8F50[audioRoutingScore];
    }
  }

  LogPrintF();

LABEL_17:
  if ([v4 _isSmartRoutingCapableDevice:v21])
  {
    v13 = *(v4 + 1552);
    if (!v13)
    {
      v14 = objc_alloc_init(NSMutableDictionary);
      v15 = *(v4 + 1552);
      *(v4 + 1552) = v14;

      v13 = *(v4 + 1552);
    }

    [v13 setObject:v21 forKeyedSubscript:uUIDString];
  }

  if (GestaltGetDeviceClass() == 1)
  {
    if (*(v4 + 928))
    {
      [v4 _checkTriangleRecovery];
    }

    else if ([*(v4 + 1552) count] == 1)
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      [v4 _nearbyDeviceInfoTriangleRecoveryTimer];
    }

    else
    {
      if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v16 = *(v4 + 640);
      if (v16)
      {
        v17 = v16;
        dispatch_source_cancel(v17);
        v18 = *(v4 + 640);
        *(v4 + 640) = 0;
      }
    }
  }

  [*(v4 + 416) trigger];
LABEL_37:

  sub_100073168();
}

- (void)_nearbyInfoDeviceLost:(id)lost
{
  sub_1000731A4();
  v4 = v3;
  v16 = v5;
  identifier = [v16 identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      idsIdentifier = [v16 idsIdentifier];
      name = [v16 name];
      LogPrintF();
    }

    sub_100073098(*(v4 + 1552), v8);
    if (GestaltGetDeviceClass() == 1)
    {
      if (*(v4 + 928))
      {
        [v4 _checkTriangleRecovery];
      }

      else if ([*(v4 + 1552) count] == 1)
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        [v4 _nearbyDeviceInfoTriangleRecoveryTimer];
      }

      else
      {
        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v10 = *(v4 + 640);
        if (v10)
        {
          v11 = v10;
          dispatch_source_cancel(v11);
          v12 = *(v4 + 640);
          *(v4 + 640) = 0;
        }
      }
    }

    [*(v4 + 416) trigger];
  }

  sub_100073190();
}

- (void)_workoutStateChanged
{
  if (_os_feature_enabled_impl())
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      [(SRWorkoutObserver *)self->_workoutObserver workoutActive];
      sub_100072F38();
      v8 = v3;
      LogPrintF();
    }

    if ([(SRWorkoutObserver *)self->_workoutObserver workoutActive])
    {
      [(BTSmartRoutingDaemon *)self _handleWorkoutSessionStart];
      activeHRMDevice = [(SRSourceDevice *)self->_sourceDevice activeHRMDevice];
      identifier = [activeHRMDevice identifier];

      if (identifier && (GestaltGetDeviceClass() == 1 || GestaltGetDeviceClass() == 3))
      {
        [sub_100072FBC() _showLowBatteryBannerForWorkoutIfNeededForDevice:?];
      }

      dataRelayAvailableServerSet = self->_dataRelayAvailableServerSet;
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000572C4;
      v10[3] = &unk_1002B85D0;
      v10[4] = self;
      [(NSMutableDictionary *)dataRelayAvailableServerSet enumerateKeysAndObjectsUsingBlock:v10];
    }

    else
    {
      [(BTSmartRoutingDaemon *)self _handleWorkoutSessionStop];
      v7 = self->_dataRelayAvailableServerSet;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100057420;
      v9[3] = &unk_1002B85D0;
      v9[4] = self;
      [(NSMutableDictionary *)v7 enumerateKeysAndObjectsUsingBlock:v9];
    }
  }
}

- (void)_wxDeviceFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    if (!self->_wxDevices)
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      wxDevices = self->_wxDevices;
      self->_wxDevices = v6;
    }

    bleDevice = [foundCopy bleDevice];
    advertisementFields = [bleDevice advertisementFields];
    if (!CFDictionaryGetInt64())
    {
      goto LABEL_176;
    }

    v132 = sub_100072EA4();
    v125 = sub_100072EA4();
    sub_100073000();
    v10 = CFDictionaryGetCFDataOfLength();
    v130 = uUIDString;
    v128 = v10;
    v129 = bleDevice;
    if (v10)
    {
      bytes = [v10 bytes];
      v11 = NSPrintF();
    }

    else
    {
      v11 = 0;
    }

    v127 = sub_100072EA4();
    v12 = sub_100072F44();
    sub_100072F88();
    v131 = CFDictionaryGetCFDataOfLength();
    v13 = sub_100072E64();
    v14 = sub_100072E64();
    v15 = sub_100072E64();
    v16 = sub_100072E64();
    sub_100072EF8();
    Int64 = CFDictionaryGetInt64();
    sub_100072EF8();
    v18 = CFDictionaryGetInt64();
    v124 = v12;
    if (dword_1002F6778 <= 30)
    {
      v19 = v18;
      if (dword_1002F6778 != -1 || _LogCategory_Initialize())
      {
        bleDevice2 = [foundCopy bleDevice];
        v21 = @"Primary";
        if ((v132 & 0x100) == 0)
        {
          v21 = @"Secondary";
        }

        v22 = @"Right";
        if ((v132 & 0x80) != 0)
        {
          v22 = @"Left";
        }

        if (v124 > 3)
        {
          v23 = "?";
        }

        else
        {
          v23 = off_1002B8ED0[v124];
        }

        if ((v13 & 0xF0) != 0)
        {
          v24 = "?";
        }

        else
        {
          v24 = off_1002B8F50[v13 & 0xF];
        }

        if ((v14 & 0xF0) != 0)
        {
          v25 = "?";
        }

        else
        {
          v25 = off_1002B8F50[v14 & 0xF];
        }

        if ((v16 & 0xFC) != 0)
        {
          v26 = "?";
        }

        else
        {
          v26 = off_1002B90D8[v16 & 3];
        }

        v27 = @"YES";
        if (!Int64)
        {
          v27 = @"NO";
        }

        v28 = "yes";
        if (!v19)
        {
          v28 = "no";
        }

        v118 = v25;
        v119 = v15;
        v117 = v24;
        v115 = v23;
        v116 = v131;
        v113 = v22;
        v114 = v127;
        v112 = v21;
        bytes = bleDevice2;
        v110 = v132;
        v121 = v27;
        v122 = v28;
        v120 = v26;
        LogPrintF();
      }
    }

    if ((v132 & 0x24) != 0)
    {
      v29 = 1;
    }

    else
    {
      v29 = [(BTSmartRoutingDaemon *)self _bluetoothProductIDNoEarDetect:v125];
    }

    uUIDString = v130;
    v30 = &dword_1002F6000;
    v122 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:v130, bytes, v110, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122];
    isInEar = [v122 isInEar];

    [(BTSmartRoutingDaemon *)self _nearbyWxChanged:foundCopy];
    [(BTSmartRoutingDaemon *)self _updateSRDiscoveredDeviceForNearbyWxChanged:foundCopy isNearby:1];
    if (v11)
    {
      v33 = [sub_100072F10() objectForKeyedSubscript:?];

      if (v33)
      {
        [(BTSmartRoutingDaemon *)self _lowestBatteryInfoForSFDevice:foundCopy];
        v35 = v34;
        sub_10007308C();
        if (v38 ^ v39 | v37 && (v36 != -1 || _LogCategory_Initialize()))
        {
          v111 = v35;
          otherTipiDeviceBTAddress3 = v11;
          LogPrintF();
        }

        v40 = [sub_100072F10() objectForKeyedSubscript:?];
        [v40 setLowestBudBatteryInfo:v35];
      }
    }

    v41 = [sub_100005AA4() objectForKeyedSubscript:?];
    v42 = v41;
    if (!v11 || !v41)
    {

      if (!v11)
      {
        goto LABEL_72;
      }

      goto LABEL_61;
    }

    v43 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v11];
    if (v43)
    {
      v44 = v43;
      v45 = [sub_100072F10() objectForKeyedSubscript:?];
      if (v45 && (sub_100073144(), v37))
      {
        [sub_100072F10() objectForKeyedSubscript:?];
        v46 = isInEar;
        v48 = v47 = v29;
        tipiHealingBackoff = [v48 tipiHealingBackoff];

        v29 = v47;
        isInEar = v46;
        uUIDString = v130;
        v30 = &dword_1002F6000;

        if (!tipiHealingBackoff)
        {
          goto LABEL_61;
        }

        sub_10007308C();
        if (v38 ^ v39 | v37 && (v49 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v42 = [sub_100072F10() objectForKeyedSubscript:?];
        [v42 setTipiHealingBackoff:0];
      }

      else
      {
      }
    }

LABEL_61:
    v50 = [sub_100072F10() objectForKeyedSubscript:?];
    if (v50)
    {
      v51 = v50;
      v52 = [sub_100072F10() objectForKeyedSubscript:?];
      if ([v52 hijackBackoffTicks])
      {
        hijackBackOffInitiator = self->_hijackBackOffInitiator;

        if (!hijackBackOffInitiator)
        {
          sub_100073144();
          if (!(!v37 & v54))
          {
            sub_10007308C();
            if (v38 ^ v39 | v37 && (v55 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            [sub_100073050() _hijackBackoffReset:? withReason:?];
          }
        }
      }

      else
      {
      }
    }

LABEL_72:
    if ((v132 & 1) == 0 && ![(BTSmartRoutingDaemon *)self _bluetoothProductIDNoUTP:v125])
    {
      v59 = [sub_100005AA4() objectForKeyedSubscript:?];

      v60 = v30[478];
      if (v59)
      {
        v61 = v29;
        if (v60 <= 30 && (v60 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        v69 = [sub_100005AA4() objectForKeyedSubscript:?];
        bleDevice3 = [v69 bleDevice];
        advertisementFields2 = [bleDevice3 advertisementFields];
        v72 = sub_100072EDC();

        if ((v72 & 0x100) != 0 && (v132 & 0x100) == 0)
        {
          sub_100072FD4();
          if (v38 ^ v39 | v37 && (v73 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          bleDevice = v129;
          goto LABEL_175;
        }

        sub_1000730B0();
        [(CUCoalescer *)self->_evaluatorCoalescer trigger];

        v29 = v61;
      }

      else
      {
        if (v60 <= 30 && (v60 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
        }

        sub_1000730B0();
        [(CUCoalescer *)self->_evaluatorCoalescer trigger];
      }

LABEL_159:
      v94 = [sub_100072F10() objectForKeyedSubscript:?];
      if (v94)
      {
        v95 = v94;
        v96 = [sub_100072F10() objectForKeyedSubscript:?];
        deviceName = [v96 deviceName];

        if (!deviceName)
        {
          v134 = +[CloudXPCService sharedInstance];
          deviceManager = [v134 deviceManager];
          v99 = [deviceManager fetchDeviceSyncWithAddress:v11];
          [v99 nickname];
          v100 = isInEar;
          v102 = v101 = v29;
          v103 = [sub_100072F10() objectForKeyedSubscript:?];
          [v103 setDeviceName:v102];

          v29 = v101;
          isInEar = v100;
          uUIDString = v130;
        }
      }

      bleDevice = v129;
      if (self->_prefSmartRoutingPreemptiveConnectedBanner)
      {
        v104 = [sub_100072F10() objectForKeyedSubscript:?];

        if (v104)
        {
          v105 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
          v106 = v105;
          if (((isInEar ^ 1) & v29) != 0 && ([v105 preemptiveBannerShown] & 1) == 0 && (objc_msgSend(v106, "firstPreemptiveBannerShown") & 1) == 0)
          {
            if ([(BTSmartRoutingDaemon *)self _showPreemptiveBannerIfNeeded:v106 inEarState:1 audioState:v124 wxAddress:v11])
            {
              sub_10007308C();
              if (v38 ^ v39 | v37)
              {
                if (v107 != -1 || _LogCategory_Initialize())
                {
                  LogPrintF();
                }
              }
            }
          }
        }
      }

      [sub_100073050() _evaluatorRunInUseBanner:?];
      [(BTSmartRoutingDaemon *)self _startAudioStateSnapshotTimer];
LABEL_175:

LABEL_176:
      goto LABEL_177;
    }

    v56 = [sub_100005AA4() objectForKeyedSubscript:?];

    if (!v56)
    {
LABEL_153:
      sub_1000730B0();
      [(CUCoalescer *)self->_evaluatorCoalescer trigger];
      if (v11)
      {
        v89 = [sub_100072F10() objectForKeyedSubscript:?];
        if (v89)
        {
          v90 = v89;
          v91 = [sub_100072F10() objectForKeyedSubscript:?];
          otherTipiDeviceBTAddress = [v91 otherTipiDeviceBTAddress];
          if (otherTipiDeviceBTAddress)
          {
          }

          else
          {
            tipiElectionInProgress = self->_tipiElectionInProgress;

            if (!tipiElectionInProgress)
            {
              [(BTSmartRoutingDaemon *)self _tipiHealingAttempt];
            }
          }
        }
      }

      goto LABEL_159;
    }

    v126 = v29;
    v57 = isInEar;
    sub_10007308C();
    if (v38 ^ v39 | v37 && (v58 != -1 || _LogCategory_Initialize()))
    {
      otherTipiDeviceBTAddress3 = v132;
      LogPrintF();
    }

    v62 = [sub_100005AA4() objectForKeyedSubscript:?];
    if (!v11)
    {
      goto LABEL_152;
    }

    v63 = [sub_100072F10() objectForKeyedSubscript:?];
    if (!v63)
    {
      goto LABEL_152;
    }

    v64 = v63;
    v65 = [sub_100072F10() objectForKeyedSubscript:?];
    otherTipiDeviceBTAddress2 = [v65 otherTipiDeviceBTAddress];

    if (!otherTipiDeviceBTAddress2)
    {
      goto LABEL_152;
    }

    sub_100072FD4();
    if (v38 ^ v39 | v37 && (v67 != -1 || _LogCategory_Initialize()))
    {
      v68 = [sub_100072F10() objectForKeyedSubscript:?];
      otherTipiDeviceBTAddress3 = [v68 otherTipiDeviceBTAddress];
      LogPrintF();
    }

    bleDevice4 = [v62 bleDevice];
    advertisementFields3 = [bleDevice4 advertisementFields];
    v76 = sub_100072EDC();

    if (((v76 ^ v132) & 0x100) != 0)
    {
      if (((v76 ^ v132) & 0x80) != 0)
      {
        goto LABEL_134;
      }

      sub_100072FD4();
      if (!(v38 ^ v39 | v37))
      {
        goto LABEL_131;
      }

      if (v78 != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }

      sub_100072FD4();
      if (!(v38 ^ v39 | v37) || v80 == -1 && !_LogCategory_Initialize())
      {
LABEL_131:
        self->_hfpBudswapDetected = 1;
        if (!self->_budSwapAddress)
        {
          v81 = [sub_100072F10() objectForKeyedSubscript:?];

          if (!v81)
          {
            v82 = objc_alloc_init(SRBudswapDevice);
            [(SRBudswapDevice *)v82 setReconnectionState:0];
            [(NSMutableDictionary *)self->_srBudswapDeviceMap setObject:v82 forKeyedSubscript:v11];
            objc_storeStrong(&self->_budSwapAddress, v11);
            [sub_100073050() _budSwapDetectionStartTimer:?];
          }
        }

LABEL_134:
        if (self->_tipiSetupTicks)
        {
          mach_absolute_time();
          tipiSetupTicks = self->_tipiSetupTicks;
          UpTicksToMilliseconds();
          sub_100073144();
          if (v37 && (v84 > 0x2710 || !self->_tipiSetupTicks))
          {
            goto LABEL_142;
          }
        }

        else
        {
          sub_100073144();
          if (v37)
          {
LABEL_142:
            v85 = isInEar;
            sub_100072F88();
            v86 = CFDictionaryGetCFDataOfLength();
            if (v86)
            {
              _myBluetoothAddressString = [(BTSmartRoutingDaemon *)self _myBluetoothAddressString];
              [_myBluetoothAddressString UTF8String];
              sub_100072E50();
              v88 = NSDataWithHex();
              if ([v88 length] == 6)
              {
                bytes2 = [v88 bytes];
                if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
                {
                  LogPrintF();
                }

                if (!memcmp([v86 bytes], bytes2 + 3, 3uLL))
                {
                  [sub_100073050() _removeTiPiState:?];
                }
              }
            }

            self->_tipiSetupTicks = 0;

            v57 = v85;
          }
        }

LABEL_152:

        isInEar = v57;
        v29 = v126;
        goto LABEL_153;
      }
    }

    else
    {
      if (((v76 ^ v132) & 0x80) == 0)
      {
        goto LABEL_134;
      }

      sub_100072FD4();
      if (!(v38 ^ v39 | v37))
      {
        goto LABEL_131;
      }

      if (v77 != -1 || _LogCategory_Initialize())
      {
        LogPrintF();
      }

      sub_100072FD4();
      if (!(v38 ^ v39 | v37) || v79 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_131;
      }
    }

    LogPrintF();
    goto LABEL_131;
  }

LABEL_177:
}

- (void)_wxDeviceLost:(id)lost
{
  sub_1000731A4();
  v4 = v3;
  v17 = v5;
  identifier = [v17 identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      bleDevice = [v17 bleDevice];
      name = [bleDevice name];
      LogPrintF();
    }

    bleDevice2 = [v17 bleDevice];
    advertisementFields = [bleDevice2 advertisementFields];
    v12 = sub_100072EDC();

    if (![v4[186] count])
    {
      [v4 _submitMetricNearby:v12];
    }

    sub_100073098(v4[186], v13);
    sub_100073098(v4[83], v14);
    [v4 _updateSRDiscoveredDeviceForNearbyWxChanged:v17 isNearby:0];
    [v4 _stopAudioStateSnapshotTimer:0];
    [v4[52] trigger];
  }

  sub_100073190();
}

- (void)_wxDiscoveryWatchRecoveryFoundDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      v16 = deviceCopy;
      LogPrintF();
    }

    watchWxDevices = self->_watchWxDevices;
    if (!watchWxDevices)
    {
      v6 = objc_alloc_init(NSMutableDictionary);
      v7 = self->_watchWxDevices;
      self->_watchWxDevices = v6;

      watchWxDevices = self->_watchWxDevices;
    }

    [(NSMutableDictionary *)watchWxDevices setObject:deviceCopy forKeyedSubscript:identifier, v16];
    [(CUCoalescer *)self->_evaluatorCoalescer trigger];
    addressData = [deviceCopy addressData];
    v9 = addressData;
    if (addressData)
    {
      bytes = [addressData bytes];
      v10 = NSPrintF();
      if (v10)
      {
        v11 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v10, bytes];
        if (v11)
        {
          v12 = v11;
          v13 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v10];
          otherTipiDeviceBTAddress = [v13 otherTipiDeviceBTAddress];
          if (otherTipiDeviceBTAddress)
          {
          }

          else
          {
            tipiElectionInProgress = self->_tipiElectionInProgress;

            if (!tipiElectionInProgress)
            {
              [(BTSmartRoutingDaemon *)self _tipiHealingAttempt];
            }
          }
        }
      }
    }

    else
    {
      v10 = 0;
    }

    if ([(NSMutableDictionary *)self->_watchWxDevices count]== 1)
    {
      [(BTSmartRoutingDaemon *)self _update];
    }
  }
}

- (void)_wxDiscoveryWatchRecoveryLostDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    sub_100073098(self->_watchWxDevices, v4);
    [(CUCoalescer *)self->_evaluatorCoalescer trigger];
  }
}

- (void)_submitNonSRConnectionMetric:(id)metric
{
  metricCopy = metric;
  btAddressData = [metricCopy btAddressData];
  v5 = CUPrintNSDataAddress();

  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_connectedDevices objectForKeyedSubscript:v5];
    if (v6)
    {
    }

    else
    {
      v7 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v5];

      if (!v7)
      {
        v8 = [metricCopy productID] - 8194;
        if (v8 <= 0x2D && ((1 << v8) & 0x20647A877F9BLL) != 0)
        {
          v9 = [metricCopy productID] - 8194;
          if (v9 > 0xE || ((1 << v9) & 0x409B) == 0)
          {
            [sub_100072FBC() _submitConnectionMetric:? andError:?];
          }
        }
      }
    }
  }
}

- (void)_updateSRDiscoveredDeviceForNearbyWxChanged:(id)changed isNearby:(BOOL)nearby
{
  nearbyCopy = nearby;
  changedCopy = changed;
  v6 = changedCopy;
  if (self->_prefSmartRoutingInUseBanner)
  {
    identifier = [changedCopy identifier];
    uUIDString = [identifier UUIDString];

    v95 = uUIDString;
    if (!uUIDString)
    {
LABEL_107:

      goto LABEL_108;
    }

    bleDevice = [v6 bleDevice];
    advertisementFields = [bleDevice advertisementFields];

    sub_100073000();
    v11 = CFDictionaryGetCFDataOfLength();
    v12 = v11;
    if (!v11)
    {
      v13 = 0;
LABEL_106:

      goto LABEL_107;
    }

    bytes = [v11 bytes];
    v13 = NSPrintF();
    if (!v13)
    {
      goto LABEL_106;
    }

    sub_100072EF8();
    if (!CFDictionaryGetInt64() || sub_100072EA4() != 1)
    {
      goto LABEL_106;
    }

    v85 = v12;
    v14 = sub_100072F44();
    bleDevice2 = [v6 bleDevice];
    advertisementFields2 = [bleDevice2 advertisementFields];
    v17 = sub_100072EDC();

    sub_100072EF8();
    Int64 = CFDictionaryGetInt64();
    CFStringGetTypeID();
    v91 = CFDictionaryGetTypedValue();
    sub_100072F88();
    v92 = CFDictionaryGetCFDataOfLength();
    bleDevice3 = [v6 bleDevice];
    advertisementFields3 = [bleDevice3 advertisementFields];
    v20 = sub_100072EDC();

    v94 = v13;
    if ((v20 & 0x24) != 0)
    {
      v89 = 1;
    }

    else
    {
      v89 = [(BTSmartRoutingDaemon *)self _bluetoothProductIDNoEarDetect:v17];
    }

    sub_100072E64();
    sub_100072EA4();
    v21 = sub_100072F44();
    bleDevice4 = [v6 bleDevice];
    rssi = [bleDevice4 rssi];

    sub_100072EF8();
    v81 = CFDictionaryGetInt64();
    sub_100072EF8();
    v83 = CFDictionaryGetInt64();
    sub_100072E64();
    sub_100072E64();
    sub_100072EF8();
    v23 = CFDictionaryGetInt64();
    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      v24 = "no";
      if (nearbyCopy)
      {
        v25 = "yes";
      }

      else
      {
        v25 = "no";
      }

      if (v14 > 3)
      {
        v26 = "?";
      }

      else
      {
        v26 = off_1002B8ED0[v14];
      }

      if (Int64)
      {
        v27 = "yes";
      }

      else
      {
        v27 = "no";
      }

      if (v89)
      {
        v28 = "yes";
      }

      else
      {
        v28 = "no";
      }

      if ((v20 & 4) != 0)
      {
        v29 = "yes";
      }

      else
      {
        v29 = "no";
      }

      if ((v20 & 0x20) != 0)
      {
        v30 = "yes";
      }

      else
      {
        v30 = "no";
      }

      if (v23)
      {
        v24 = "yes";
      }

      v72 = v17;
      v73 = "yes";
      v70 = v25;
      v71 = v26;
      v69 = v91;
      v67 = v13;
      v78 = v30;
      v79 = v24;
      v76 = v28;
      v77 = v29;
      v74 = v27;
      v75 = v92;
      LogPrintF();
    }

    v82 = v14;
    v31 = v17;
    v86 = v23;
    v32 = [(NSMutableDictionary *)self->_srDiscoveredDeviceMap objectForKeyedSubscript:v94, v67, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79];
    if (!v32)
    {
      v32 = objc_alloc_init(SRDiscoveredDevice);
    }

    v80 = v21;
    [(NSMutableDictionary *)self->_srDiscoveredDeviceMap setObject:v32 forKeyedSubscript:v94];
    v33 = [(AANearbyDeviceManagerDaemon *)self->_aaNearbyDeviceManagerDaemon deviceWithBluetoothAddress:v94];
    aaNearbyDevice = [(SRDiscoveredDevice *)v32 aaNearbyDevice];
    v35 = v33;
    v36 = v35;
    if (aaNearbyDevice == v35)
    {

      goto LABEL_45;
    }

    if ((v35 == 0) != (aaNearbyDevice != 0))
    {
      v37 = [aaNearbyDevice isEqual:v35];

      if (v37)
      {
LABEL_45:
        v90 = v6;
        v87 = v36;
        if (!v36)
        {
          v38 = [(AAPairedDeviceDaemon *)self->_aaPairedDeviceDaemon deviceWithIdentifier:v95];
          [(SRDiscoveredDevice *)v32 _setAADevice:v38];
        }

        v39 = v81 != 0;
        [(SRDiscoveredDevice *)v32 _setBtAddress:v94];
        [(SRDiscoveredDevice *)v32 _setIsNearby:nearbyCopy];
        [(SRDiscoveredDevice *)v32 _setNearbyiCloudSignIn:Int64 != 0];
        [(SRDiscoveredDevice *)v32 _setNearbyForceDisconnect:v39];
        [(SRDiscoveredDevice *)v32 _setNearbyName:v91];
        [(SRDiscoveredDevice *)v32 _setNearbyPaired:1];
        [(SRDiscoveredDevice *)v32 _setNearbyProductID:v31];
        [(SRDiscoveredDevice *)v32 _setNearbyWxDevice:v6];
        [(SRDiscoveredDevice *)v32 _setNearbyLastRouteHost:v92];
        [(SRDiscoveredDevice *)v32 _setNearbyPrevInEar:[(SRDiscoveredDevice *)v32 nearbyInEar]];
        if (v89)
        {
          v40 = 1;
        }

        else
        {
          v40 = 2;
        }

        [(SRDiscoveredDevice *)v32 setNearbyInEar:v40];
        [sub_100073150() _setNearbyOutOfCaseTime:?];
        [(SRDiscoveredDevice *)v32 _setNearbyStreamState:v82];
        [sub_100073150() _setNearbyConnectedSourceCount:?];
        [(SRDiscoveredDevice *)v32 setNearbyIsMeLastRoute:[(BTSmartRoutingDaemon *)self _isMyAddress:v92]];
        v41 = [(BTSmartRoutingDaemon *)self _getWxFWVersion:v94];
        [(SRDiscoveredDevice *)v32 setFwVersion:v41];

        [(SRDiscoveredDevice *)v32 setIdentifier:v95];
        [(SRDiscoveredDevice *)v32 setIsSRCapable:[(BTSmartRoutingDaemon *)self _supportsTipi:v94]];
        [(SRDiscoveredDevice *)v32 setNearbyAirplaneMode:(v20 >> 3) & 1];
        [(SRDiscoveredDevice *)v32 setNearbyAudioState:v80];
        [(SRDiscoveredDevice *)v32 setNearbyBLErssi:rssi];
        [(SRDiscoveredDevice *)v32 setNearbyForceDisconnectBit:v39];
        v42 = (v20 & 2) == 0 || v83 == 0;
        if (v42)
        {
          v43 = 0;
        }

        else
        {
          v43 = (v20 >> 4) & 1;
        }

        [(SRDiscoveredDevice *)v32 setNearbyInCase:v43];
        [(SRDiscoveredDevice *)v32 setNearbySubtype:1];
        [sub_100073150() setNearbyTipiScore1:?];
        [sub_100073150() setNearbyTipiScore2:?];
        [(SRDiscoveredDevice *)v32 setNearbyUpdateTick:mach_absolute_time()];
        v44 = [(AAPairedDeviceDaemon *)self->_aaPairedDeviceDaemon deviceWithIdentifier:v95];
        heartRateMonitorCapability = [v44 heartRateMonitorCapability];
        healthKitDataWriteAllowed = [v44 healthKitDataWriteAllowed];
        v47 = healthKitDataWriteAllowed == 1;
        aaDevice = [(SRDiscoveredDevice *)v32 aaDevice];
        productID = [aaDevice productID];

        if (productID == 8221)
        {
          heartRateMonitorEnabled = [v44 heartRateMonitorEnabled];
          v47 = healthKitDataWriteAllowed == 1 && heartRateMonitorEnabled == 1;
        }

        v42 = heartRateMonitorCapability == 2;
        v53 = v86;
        v52 = v87;
        v13 = v94;
        if (!v42 || !v47)
        {
          goto LABEL_90;
        }

        if (GestaltGetDeviceClass() != 1 && GestaltGetDeviceClass() != 3)
        {
LABEL_105:

          v6 = v90;
          v12 = v85;
          goto LABEL_106;
        }

        v54 = [(NSMutableDictionary *)self->_smartRoutingWxDeviceMap objectForKeyedSubscript:v94];
        v55 = v54;
        if (v54)
        {
          [v54 checkDataRelayServerPublishEligibility];
        }

        if ([(SRDiscoveredDevice *)v32 nearbyTipiScore1]== 10)
        {
          if (!v89)
          {
LABEL_72:
            lastDRHostIDSIdentifier = [(SRDiscoveredDevice *)v32 lastDRHostIDSIdentifier];

            if (lastDRHostIDSIdentifier)
            {
              [sub_10007312C() dataRelayRemoveAvailableDataTypesWithDiscoveredDevice:?];
              [sub_1000730CC() setLastDRHostIDSIdentifier:?];
              if ([(SRSourceDevice *)self->_sourceDevice DRServerIsATV])
              {
                [(SRSourceDevice *)self->_sourceDevice setDRServerIsATV:0];
              }
            }

LABEL_89:

LABEL_90:
            if ([(SRDiscoveredDevice *)v32 nearbyUSBPluggedIn]== 2 && v53)
            {
              [(SRDiscoveredDevice *)v32 setNearbyUSBPluggedInTick:mach_absolute_time()];
            }

            if (v53)
            {
              v64 = 1;
            }

            else
            {
              v64 = 2;
            }

            [(SRDiscoveredDevice *)v32 setNearbyUSBPluggedIn:v64];
            if (!nearbyCopy)
            {
              [sub_100073038() _setNearbyPrevInEar:?];
              [sub_1000730CC() _setNearbyLastRouteHost:?];
              [sub_100073038() setNearbyIsMeLastRoute:?];
              [sub_100073038() setNearbyUSBPluggedIn:?];
              [sub_1000730CC() setNearbyUpdateTick:?];
              [sub_100073038() setNearbyInEar:?];
              [sub_100073038() setPrevFailedTipiConnectType:?];
              lastDRHostIDSIdentifier2 = [(SRDiscoveredDevice *)v32 lastDRHostIDSIdentifier];

              if (lastDRHostIDSIdentifier2)
              {
                [sub_10007312C() dataRelayRemoveAvailableDataTypesWithDiscoveredDevice:?];
                [sub_1000730CC() setLastDRHostIDSIdentifier:?];
                if ([(SRSourceDevice *)self->_sourceDevice DRServerIsATV])
                {
                  [(SRSourceDevice *)self->_sourceDevice setDRServerIsATV:0];
                }
              }
            }

            goto LABEL_105;
          }
        }

        else if ((([(SRDiscoveredDevice *)v32 nearbyTipiScore1]== 12) & v89) == 0)
        {
          goto LABEL_72;
        }

        if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
        {
          v68 = "yes";
          LogPrintF();
        }

        v57 = [(BTSmartRoutingDaemon *)self _getIDSDeviceFromWxLastConnectedHost:v92, v68];
        v58 = v57;
        if (!v57 || ([v57 operatingSystemVersion], v96 <= 18))
        {
          if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          v52 = v87;
          goto LABEL_105;
        }

        lastDRHostIDSIdentifier3 = [(SRDiscoveredDevice *)v32 lastDRHostIDSIdentifier];
        uniqueID = [v58 uniqueID];
        v61 = [lastDRHostIDSIdentifier3 isEqualToString:uniqueID];

        if ((v61 & 1) == 0)
        {
          lastDRHostIDSIdentifier4 = [(SRDiscoveredDevice *)v32 lastDRHostIDSIdentifier];

          if (lastDRHostIDSIdentifier4)
          {
            [sub_10007312C() dataRelayRemoveAvailableDataTypesWithDiscoveredDevice:?];
          }

          uniqueID2 = [v58 uniqueID];
          [(SRDiscoveredDevice *)v32 setLastDRHostIDSIdentifier:uniqueID2];

          [sub_10007312C() dataRelayAddAvailableDataTypesWithDiscoveredDevice:?];
        }

        if (![(SRSourceDevice *)self->_sourceDevice DRServerIsATV])
        {
          [(SRSourceDevice *)self->_sourceDevice setDRServerIsATV:1];
        }

        v53 = v86;
        v52 = v87;
        v13 = v94;
        goto LABEL_89;
      }
    }

    else
    {
    }

    [(SRDiscoveredDevice *)v32 _setAANearbyDevice:v36];
    goto LABEL_45;
  }

LABEL_108:
}

- (void)_handleTUCallStateChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [changeCopy object];
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = sub_100003918;
    v11[4] = sub_100003838;
    v12 = [[SRCall alloc] initWithCall:object2];
    dispatchQueue = self->_dispatchQueue;
    sub_100072E30();
    v10[1] = 3221225472;
    v10[2] = sub_10005CAE4;
    v10[3] = &unk_1002B6ED8;
    v10[4] = self;
    v10[5] = v11;
    dispatch_async(v9, v10);
    _Block_object_dispose(v11, 8);
  }
}

- (BOOL)_isEligibleForPreemptiveBannerUponUnlock:(id)unlock
{
  unlockCopy = unlock;
  if (unlockCopy && self->_prefSmartRoutingPreemptiveConnectedBanner && (mach_absolute_time(), preemptiveBannerBlockedTicks = self->_preemptiveBannerBlockedTicks, UpTicksToSecondsF(), v6 < 2.0))
  {
    v7 = [sub_100073044() objectForKeyedSubscript:?];
    v8 = v7;
    if (v7)
    {
      nearbyWxDevice = [v7 nearbyWxDevice];
      identifier = [nearbyWxDevice identifier];
      uUIDString = [identifier UUIDString];

      v12 = [sub_10007305C() objectForKeyedSubscript:?];
      audioState = [v12 audioState];

      v14 = [sub_100072F04() _inEarNearbyCheck:?];
      v15 = [sub_10007305C() objectForKeyedSubscript:?];
      preemptiveBannerShown = [v15 preemptiveBannerShown];
      v17 = [sub_10007305C() objectForKeyedSubscript:?];
      v18 = -[BTSmartRoutingDaemon _isEligibleForPreemptiveBanner:firstPreemptiveBanner:inEarState:srDeviceCount:audioState:inAddress:](self, "_isEligibleForPreemptiveBanner:firstPreemptiveBanner:inEarState:srDeviceCount:audioState:inAddress:", preemptiveBannerShown, [v17 firstPreemptiveBannerShown], v14, -[NSMutableDictionary count](self->_smartRoutingWxDeviceMap, "count"), audioState, unlockCopy);
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

  return v18;
}

- (BOOL)_inCaseLidClosed:(id)closed
{
  sub_1000731A4();
  v4 = v3;
  v6 = v5;
  v7 = [*(v4 + 1240) objectForKeyedSubscript:v6];
  identifier = [v7 identifier];

  if (identifier)
  {
    v9 = [*(v4 + 664) objectForKeyedSubscript:identifier];
    v10 = v9;
    if (v9)
    {
      if ([v9 primaryInCase])
      {
        [v10 secondaryInCase];
      }

      [v10 lidClosed];
    }

    if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  sub_100073190();
  return result;
}

- (void)_nearbyWxChanged:(id)changed
{
  changedCopy = changed;
  identifier = [changedCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    if (!self->_nearbyWxDeviceMap)
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      nearbyWxDeviceMap = self->_nearbyWxDeviceMap;
      self->_nearbyWxDeviceMap = v7;
    }

    bleDevice = [changedCopy bleDevice];
    advertisementFields = [bleDevice advertisementFields];
    v11 = sub_100072EDC();

    bleDevice2 = [changedCopy bleDevice];
    advertisementFields2 = [bleDevice2 advertisementFields];
    v14 = sub_100072EDC();

    bleDevice3 = [changedCopy bleDevice];
    advertisementFields3 = [bleDevice3 advertisementFields];

    v17 = sub_100072EA4();
    sub_100072F88();
    v18 = CFDictionaryGetCFDataOfLength();
    sub_100073000();
    v19 = CFDictionaryGetCFDataOfLength();
    v51 = v18;
    v47 = v19;
    if (v19)
    {
      bytes = [v19 bytes];
      v20 = NSPrintF();
    }

    else
    {
      v20 = 0;
    }

    v21 = sub_100072F44();
    sub_100072EF8();
    Int64 = CFDictionaryGetInt64();
    v41 = sub_100072EA4();
    v46 = v14;
    if ((v11 & 0x24) != 0)
    {
      v45 = 1;
    }

    else
    {
      v45 = [(BTSmartRoutingDaemon *)self _bluetoothProductIDNoEarDetect:v14];
    }

    v43 = sub_100072E64();
    v42 = sub_100072E64();
    sub_100072EF8();
    v22 = CFDictionaryGetInt64();
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    v24 = &stru_1002C1358;
    if (TypedValue)
    {
      v24 = TypedValue;
    }

    v49 = uUIDString;
    v50 = v24;
    v25 = [(NSMutableDictionary *)self->_nearbyWxDeviceMap objectForKeyedSubscript:uUIDString];
    if (!v25)
    {
      v25 = objc_alloc_init(SRNearbyWxDevice);
    }

    selfCopy = self;
    v48 = v20;
    [(SRNearbyWxDevice *)v25 setAddress:v20, bytes];
    [(SRNearbyWxDevice *)v25 setAudioState:v21];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v54 = changedCopy;
    batteryInfo = [changedCopy batteryInfo];
    v27 = [batteryInfo countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v56;
      do
      {
        for (i = 0; i != v28; i = i + 1)
        {
          if (*v56 != v29)
          {
            objc_enumerationMutation(batteryInfo);
          }

          v31 = *(*(&v55 + 1) + 8 * i);
          if ([v31 batteryType] == 2)
          {
            [v31 batteryLevel];
            [(SRNearbyWxDevice *)v25 setBatteryLeft:?];
          }

          if ([v31 batteryType] == 3)
          {
            [v31 batteryLevel];
            [(SRNearbyWxDevice *)v25 setBatteryRight:?];
          }

          if ([v31 batteryType] == 4)
          {
            [v31 batteryLevel];
            [(SRNearbyWxDevice *)v25 setBatteryMain:?];
          }
        }

        v28 = [batteryInfo countByEnumeratingWithState:&v55 objects:v59 count:16];
      }

      while (v28);
    }

    [(BTSmartRoutingDaemon *)selfCopy _lowestBatteryInfoForSFDevice:v54];
    [(SRNearbyWxDevice *)v25 setLowestBudBatteryInfo:?];
    [(SRNearbyWxDevice *)v25 setPaired:Int64 != 0];
    [(SRNearbyWxDevice *)v25 setProductID:v46];
    [(SRNearbyWxDevice *)v25 setSourceCount:v17];
    v32 = v51;
    [(SRNearbyWxDevice *)v25 setLastConnectHost:v51];
    [(SRNearbyWxDevice *)v25 setLidClosed:v41 == 1];
    [(SRNearbyWxDevice *)v25 setPrimaryInEar:(v11 >> 2) & 1];
    [(SRNearbyWxDevice *)v25 setSecondaryInEar:(v11 >> 5) & 1];
    [(SRNearbyWxDevice *)v25 setPrimaryInCase:(v11 >> 1) & 1];
    [(SRNearbyWxDevice *)v25 setSecondaryInCase:(v11 >> 4) & 1];
    [(SRNearbyWxDevice *)v25 setIsInEar:v45];
    [(SRNearbyWxDevice *)v25 setIsUTPConnected:v11 & 1];
    [(SRNearbyWxDevice *)v25 setIdleTime:v43];
    [(SRNearbyWxDevice *)v25 setOutOfCaseTime:v42];
    [(SRNearbyWxDevice *)v25 setIcloudSignedIn:v22 != 0];
    v33 = v50;
    [(SRNearbyWxDevice *)v25 setName:v50];
    [(SRNearbyWxDevice *)v25 setLastWxAdvTicks:mach_absolute_time()];
    if (v17 == 1)
    {
      [(SRNearbyWxDevice *)v25 setOneSourceLastRouteHost:v51];
      v34 = v48;
      uUIDString = v49;
    }

    else
    {
      v34 = v48;
      uUIDString = v49;
      if (!v17)
      {
        [(SRNearbyWxDevice *)v25 setZeroSourceLastRouteHost:v51];
      }
    }

    [(NSMutableDictionary *)selfCopy->_nearbyWxDeviceMap setObject:v25 forKeyedSubscript:uUIDString];
    changedCopy = v54;
    if (dword_1002F6778 <= 50 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      address = [(SRNearbyWxDevice *)v25 address];
      [(SRNearbyWxDevice *)v25 isUTPConnected];
      [(SRNearbyWxDevice *)v25 sourceCount];
      audioState = [(SRNearbyWxDevice *)v25 audioState];
      if (audioState <= 3)
      {
        v36 = off_1002B8ED0[audioState];
      }

      lastConnectHost = [(SRNearbyWxDevice *)v25 lastConnectHost];
      zeroSourceLastRouteHost = [(SRNearbyWxDevice *)v25 zeroSourceLastRouteHost];
      oneSourceLastRouteHost = [(SRNearbyWxDevice *)v25 oneSourceLastRouteHost];
      [(SRNearbyWxDevice *)v25 lidClosed];
      [(SRNearbyWxDevice *)v25 primaryInEar];
      [(SRNearbyWxDevice *)v25 secondaryInEar];
      [(SRNearbyWxDevice *)v25 primaryInCase];
      [(SRNearbyWxDevice *)v25 secondaryInCase];
      [(SRNearbyWxDevice *)v25 batteryLeft];
      [(SRNearbyWxDevice *)v25 batteryRight];
      [(SRNearbyWxDevice *)v25 batteryMain];
      uUIDString = v49;
      v33 = v50;
      LogPrintF();

      changedCopy = v54;
      v32 = v51;
      v34 = v48;
    }
  }
}

- (void)_receivedAudioCategory:(id)category withOptions:(id)options
{
  categoryCopy = category;
  smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
  optionsCopy = options;
  v9 = [(NSMutableDictionary *)smartRoutingWxDeviceMap objectForKeyedSubscript:categoryCopy];
  v10 = [optionsCopy objectForKey:@"otherDeviceAudioCategory"];
  unsignedIntValue = [v10 unsignedIntValue];

  v12 = [optionsCopy objectForKey:@"btAddress"];
  v35 = [optionsCopy objectForKey:@"btName"];
  v13 = [optionsCopy objectForKey:@"playingApp"];
  v14 = [optionsCopy objectForKey:@"hostStreamingState"];

  v15 = [v14 isEqualToString:@"YES"];
  [v9 setOtherTipiDeviceIsStreamingAudio:v15];
  workoutObserver = [(BTSmartRoutingDaemon *)self workoutObserver];
  workoutActive = [workoutObserver workoutActive];

  if (v9)
  {
    otherTipiDeviceBTAddress = [v9 otherTipiDeviceBTAddress];
    v18 = [otherTipiDeviceBTAddress isEqualToString:v12];

    if ((v18 & 1) == 0)
    {
      if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
      {
        otherTipiDeviceBTAddress2 = [v9 otherTipiDeviceBTAddress];
        v32 = v12;
        LogPrintF();
      }

      [sub_100072FC8() _updateOtherTipiDevicewithAudioCategory:? otherAddress:? otherName:? otherVersion:?];
      [sub_100072FC8() _updateOtherTipiBuildVersion:?];
      [sub_100072FC8() _tipihHealingV2Handling:?];
    }
  }

  if (!self->_prefSmartRoutingForcedHijackv2)
  {
    goto LABEL_12;
  }

  v19 = 0;
  if (![v9 otherTipiAudioCategory] && unsignedIntValue >= 0x12D)
  {
    if ([v9 routingAction] == 1)
    {
LABEL_12:
      v19 = 0;
      goto LABEL_13;
    }

    [v9 setOtherTipiAudioCategory:unsignedIntValue];
    integerValue = [(NSNumber *)self->_localDeviceAudioCategory integerValue];
    v36 = 0;
    v28 = [(BTSmartRoutingDaemon *)self allowHijackWithAudioScore:integerValue hijackRoute:categoryCopy hijackDeniedReason:&v36];
    v19 = v36;
    if (dword_1002F6778 <= 90 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
    {
      v29 = "no";
      if (v28)
      {
        v29 = "yes";
      }

      otherTipiDeviceBTAddress2 = v29;
      LogPrintF();
    }

    if (v28)
    {
      [v9 setRoutingAction:1];
      [(BTSmartRoutingDaemon *)self _postNotification:"com.apple.BluetoothServices.AudioRoutingChanged"];
    }
  }

LABEL_13:
  [v9 setOtherTipiAudioCategory:{unsignedIntValue, otherTipiDeviceBTAddress2, v32}];
  [v9 setOtherTipiDevicePlayingApp:v13];
  [(BTSmartRoutingDaemon *)self _tipiHealingCompleteCheckTimerForDevice:v9];
  if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
  {
    otherTipiAudioCategory = [v9 otherTipiAudioCategory];
    v33 = v12;
    LogPrintF();
  }

  otherTipiDeviceIsWatch = [v9 otherTipiDeviceIsWatch];
  if (otherTipiDeviceIsWatch & 1) != 0 || ((workoutActive ^ 1))
  {
    if (!otherTipiDeviceIsWatch)
    {
      goto LABEL_39;
    }
  }

  else
  {
    workoutWx = [(BTSmartRoutingDaemon *)self workoutWx];

    if (workoutWx)
    {
      goto LABEL_39;
    }
  }

  if ([v9 otherTipiAudioCategory] == 100)
  {
    v22 = v15;
  }

  else
  {
    v22 = 1;
  }

  phoneOwnershipTimer = self->_phoneOwnershipTimer;
  if (v22)
  {
    if (!phoneOwnershipTimer)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

  if (phoneOwnershipTimer)
  {
LABEL_29:
    if ((([v9 otherTipiAudioCategory] < 0x65) & ~v15) == 0)
    {
      v24 = self->_phoneOwnershipTimer;
      if (v24)
      {
        v25 = v24;
        dispatch_source_cancel(v25);
        v26 = self->_phoneOwnershipTimer;
        self->_phoneOwnershipTimer = 0;
      }
    }

    goto LABEL_39;
  }

  if (([v9 routed] & 1) == 0)
  {
    [(BTSmartRoutingDaemon *)self _startPhoneOwnershipTimer:10];
  }

LABEL_39:
}

- (void)_sendNowPlayingTemporaryOverrideIfNeeded:(BOOL)needed
{
  if (!self->_prefSmartRoutingNowPlayingTemporaryOverride)
  {
    return;
  }

  neededCopy = needed;
  if (GestaltGetDeviceClass() == 1)
  {
    if (self->_temporaryOverrideTimer)
    {
      if (dword_1002F6778 > 90 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
      {
        return;
      }
    }

    else
    {
      if (!neededCopy || !self->_effectiveScreenLocked)
      {
        if (!self->_smartRoutingController)
        {
          [(BTSmartRoutingDaemon *)self _smartRoutingControllerEnsureStarted];
        }

        if (self->_stemClickTransactionTimer && self->_overrideMessageSent != neededCopy)
        {
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          [(BTSmartRoutingDaemon *)self _cancelStemClickTransaction];
        }

        smartRoutingWxDeviceMap = self->_smartRoutingWxDeviceMap;
        sub_100072E30();
        v7[1] = 3221225472;
        v7[2] = sub_1001E2F0C;
        v7[3] = &unk_1002B8690;
        v7[4] = self;
        v8 = neededCopy;
        v9 = 5;
        v10 = neededCopy;
        [v6 enumerateKeysAndObjectsUsingBlock:v7];
        return;
      }

      if (dword_1002F6778 > 90 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
      {
        return;
      }
    }
  }

  else if (dword_1002F6778 > 90 || dword_1002F6778 == -1 && !_LogCategory_Initialize())
  {
    return;
  }

  LogPrintF();
}

- (void)_tipiHealingCompleteCheckTimerForDevice:(id)device
{
  deviceCopy = device;
  v5 = deviceCopy;
  if (self->_tipiHealingHijackTimer)
  {
    tipiHealingHijackTimerAddress = self->_tipiHealingHijackTimerAddress;
    v15 = deviceCopy;
    deviceAddress = [deviceCopy deviceAddress];

    if (tipiHealingHijackTimerAddress == deviceAddress)
    {
      deviceCopy = [v15 audioRoutingRequest];
      if (deviceCopy)
      {
        v8 = deviceCopy;
        audioRoutingResponse = [v15 audioRoutingResponse];

        if (audioRoutingResponse)
        {
          [(BTSmartRoutingDaemon *)self _tipiHealingHijackTimerReset];
          if (dword_1002F6778 <= 30 && (dword_1002F6778 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
          }

          audioRoutingRequest = [v15 audioRoutingRequest];
          audioRoutingResponse2 = [v15 audioRoutingResponse];
          [sub_100072FBC() _smartRoutingAudioRoutingRequest:? withResponseHandler:?];

          goto LABEL_13;
        }
      }

      v5 = v15;
      if (dword_1002F6778 <= 90)
      {
        if (dword_1002F6778 != -1 || (deviceCopy = _LogCategory_Initialize(), v5 = v15, deviceCopy))
        {
          v13 = self->_tipiHealingHijackTimerAddress;
          deviceCopy = LogPrintF();
LABEL_13:
          v5 = v15;
        }
      }
    }

    else
    {
      v5 = v15;
      if (dword_1002F6778 <= 30)
      {
        if (dword_1002F6778 != -1 || (deviceCopy = _LogCategory_Initialize(), v5 = v15, deviceCopy))
        {
          v12 = self->_tipiHealingHijackTimerAddress;
          deviceAddress2 = [v5 deviceAddress];
          LogPrintF();

          goto LABEL_13;
        }
      }
    }
  }

  _objc_release_x1(deviceCopy, v5);
}

@end