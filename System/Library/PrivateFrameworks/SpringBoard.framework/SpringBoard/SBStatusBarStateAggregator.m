@interface SBStatusBarStateAggregator
+ (int)_thermalColorForLevel:(int64_t)a3;
- (BOOL)_isInAirplaneMode;
- (BOOL)_setItem:(int)a3 enabled:(BOOL)a4 inList:(BOOL *)a5 itemPostState:(unint64_t *)a6;
- (BOOL)_shouldShowPersonName;
- (BOOL)_systemApertureElementIsVisibleForStatusBarItem:(int)a3;
- (SBStatusBarStateAggregator)initWithMainDisplayWindowScene:(id)a3 registerForNotifications:(BOOL)a4;
- (SBUserSessionController)_userSessionController;
- (SBWindowScene)mainDisplayWindowScene;
- (id)_backgroundActivityDescriptorsForCallDescriptors:(id)a3;
- (id)_batteryDomainData;
- (id)_locationAttributionsForSensorActivityAttributions:(id)a3 includeRecent:(BOOL)a4;
- (id)_systemApertureElementIdentifiersForStatusBarItem:(int)a3;
- (int)_statusBarBatteryStateForSystemStatusChargingState:(unint64_t)a3;
- (void)_handleShowRSSIDefaultChange;
- (void)_invalidateSystemApertureChargingElementAssertionForReason:(id)a3;
- (void)_noteAirplaneModeChanged;
- (void)_notifyNonItemDataChanged;
- (void)_postItem:(int)a3 withState:(unint64_t)a4 inList:(unint64_t *)a5;
- (void)_registerForNotifications;
- (void)_removePlaygroundsBackgroundActivityAssertion;
- (void)_removeSatelliteSOSBackgroundActivityAssertion;
- (void)_removeTetheringBackgroundActivityAssertion;
- (void)_requestActions:(int)a3;
- (void)_resetTimeItemFormatter;
- (void)_restartTimeItemTimer;
- (void)_stopTimeItemTimer;
- (void)_temporarilyOverrideLocationItemForProminentIndication;
- (void)_tickRefCount:(int64_t *)a3 up:(BOOL)a4 withTransitionBlock:(id)a5;
- (void)_updateActiveAudioRecordingBackgroundActivityAssertionsForActiveSensorActivityAttributions:(id)a3;
- (void)_updateActivityItem;
- (void)_updateAirplaneMode;
- (void)_updateAirplayItem;
- (void)_updateAlarmItem;
- (void)_updateBackgroundActivityAssertionsForSystemStatusDomain:(unint64_t)a3 andData:(id)a4;
- (void)_updateBatteryItems;
- (void)_updateBluetoothBatteryItem;
- (void)_updateBluetoothHeadphonesItem;
- (void)_updateBluetoothItem;
- (void)_updateCallForwardingItem;
- (void)_updateCallForwardingItem:(int)a3 withInfo:(id)a4;
- (void)_updateCallToActionItem;
- (void)_updateCallingBackgroundActivityAssertionsForCallDescriptors:(id)a3;
- (void)_updateCarPlayItem;
- (void)_updateDataNetworkItem;
- (void)_updateDataNetworkItem:(int)a3 withData:(id)a4 primary:(BOOL)a5 dataNetworkTypeGetter:(id)a6 dataNetworkTypeSetter:(id)a7;
- (void)_updateDataNetworkItemsForRSSIChange;
- (void)_updateDisplayWarningItem;
- (void)_updateLiquidDetectionItem;
- (void)_updateLocationItem;
- (void)_updateLocationItemForLocationAttributions:(id)a3;
- (void)_updateLockItem;
- (void)_updateOverrideDate;
- (void)_updatePersonNameItem;
- (void)_updateQuietModeItem;
- (void)_updateRingerItem;
- (void)_updateRotationLockItem;
- (void)_updateSecondaryCallForwardingItem;
- (void)_updateSecondaryDataNetworkItem;
- (void)_updateSecondaryServiceItem;
- (void)_updateSecondarySignalStrengthItem;
- (void)_updateSensorActivityItem;
- (void)_updateServiceItem;
- (void)_updateServiceItem:(int)a3 withData:(id)a4 SIMInfo:(id)a5 otherSIMInfo:(id)a6 serviceStringGetter:(id)a7 serviceStringSetter:(id)a8 serviceCrossfadeStringGetter:(id)a9 serviceCrossfadeStringSetter:(id)a10 serviceContentTypeGetter:(id)a11 serviceContentTypeSetter:(id)a12 serviceBadgeStringGetter:(id)a13 serviceBadgeStringSetter:(id)a14;
- (void)_updateSignalStrengthItem;
- (void)_updateSignalStrengthItem:(int)a3 withData:(id)a4 SIMInfo:(id)a5 barsGetter:(id)a6 barsSetter:(id)a7;
- (void)_updateStateAtomicallyWithoutAnimationUsingBlock:(id)a3;
- (void)_updateStatusBarForSystemStatusDomainName:(unint64_t)a3 data:(id)a4;
- (void)_updateStatusBarItemsForSystemStatusDomain:(unint64_t)a3 andData:(id)a4;
- (void)_updateStewieItem;
- (void)_updateStudentItem;
- (void)_updateTTYItem;
- (void)_updateTetheringState;
- (void)_updateThermalColorItem;
- (void)_updateTimeItems;
- (void)_updateTimeItemsWithDate:(id)a3;
- (void)_updateVPNItem;
- (void)_updateVoiceControlItem;
- (void)activityDidChangeForSensorActivityDataProvider:(id)a3;
- (void)addPostingObserver:(id)a3;
- (void)beginCoalescentBlock;
- (void)centralManager:(id)a3 didUpdatePeripheralConnectionState:(id)a4;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)dealloc;
- (void)endCoalescentBlock;
- (void)removePostingObserver:(id)a3;
- (void)setAlarmEnabled:(BOOL)a3;
- (void)setBatteryChargingState:(unint64_t)a3;
- (void)setShouldShowBluetoothHeadphoneGlyph:(BOOL)a3 andShouldShowBluetoothHeadphoneBatteryPercent:(BOOL)a4;
- (void)setShowsActivityIndicatorEverywhere:(BOOL)a3;
- (void)setShowsOverridesForRecording:(BOOL)a3;
- (void)setShowsSyncActivityIndicator:(BOOL)a3;
- (void)setUserNameOverride:(id)a3;
- (void)systemApertureLayoutDidChange:(id)a3;
- (void)updateStatusBarItem:(int)a3;
@end

@implementation SBStatusBarStateAggregator

- (void)_temporarilyOverrideLocationItemForProminentIndication
{
  [(NSTimer *)self->_prominentLocationTimer invalidate];
  prominentLocationTimer = self->_prominentLocationTimer;
  self->_prominentLocationTimer = 0;

  self->_prominentLocationOverride = 1;
  [(SBStatusBarStateAggregator *)self _updateLocationItem];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __84__SBStatusBarStateAggregator__temporarilyOverrideLocationItemForProminentIndication__block_invoke;
  v6[3] = &unk_2783AD1F0;
  v6[4] = self;
  v4 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:0 repeats:v6 block:4.0];
  v5 = self->_prominentLocationTimer;
  self->_prominentLocationTimer = v4;
}

- (void)_updateLocationItem
{
  v3 = [SBApp sensorActivityDataProvider];
  v5 = [v3 activeAndRecentSensorActivityAttributions];

  v4 = [(SBStatusBarStateAggregator *)self _locationAttributionsForSensorActivityAttributions:v5 includeRecent:0];
  [(SBStatusBarStateAggregator *)self _updateLocationItemForLocationAttributions:v4];
}

- (void)beginCoalescentBlock
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:"-[SBStatusBarStateAggregator beginCoalescentBlock]" object:? file:? lineNumber:? description:?];
}

- (void)endCoalescentBlock
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBStatusBarStateAggregator.m" lineNumber:338 description:{@"unbalanced call to %s", "-[SBStatusBarStateAggregator endCoalescentBlock]"}];

  *a4 = *a3;
}

void __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained beginCoalescentBlock];
  v3[2](v3, WeakRetained);

  [WeakRetained endCoalescentBlock];
}

- (void)_updateActivityItem
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = [(SBStatusBarStateAggregator *)self _telephonyManager];
  syncActivityIndicatorCount = self->_syncActivityIndicatorCount;
  if (syncActivityIndicatorCount > 0)
  {
    v5 = 0;
    v6 = 1;
    goto LABEL_14;
  }

  v7 = [(SBStatusBarStateAggregator *)self telephonyDomain];
  v8 = [v7 data];
  v9 = [v8 primarySIMInfo];
  v10 = [v9 dataNetworkType];

  if (v10 || ([v3 hasNonCellularNetworkConnection] & 1) != 0 || (BKSDisplayServicesDisplayIsTethered() & 1) != 0 || (-[SBStatusBarStateAggregator _userSessionController](self, "_userSessionController"), v11 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v11, "isLoginSession"), v11, v6))
  {
    v12 = +[SBWorkspace mainWorkspace];
    v13 = [v12 transientOverlayPresentationManager];

    v14 = +[SBMainSwitcherControllerCoordinator _shim_activeSwitcherController];
    v15 = [v14 layoutStatePrimaryElement];
    v16 = [v15 workspaceEntity];
    v17 = [v16 applicationSceneEntity];
    v18 = [v17 sceneHandle];

    if (v18 && ([v13 hasActivePresentation] & 1) == 0)
    {
      v19 = [v18 application];
      v5 = [v19 bundleIdentifier];
    }

    else
    {
      v5 = 0;
    }

    if (self->_activityIndicatorEverywhereCount <= 0 && (![v13 hasActivePresentation] || (objc_msgSend(v13, "prefersStatusBarActivityItemVisible") & 1) == 0))
    {
      if (v18 && ([v13 hasActivePresentation] & 1) == 0)
      {
        v30 = [v18 application];
        v31 = [v30 showsProgress];
        goto LABEL_40;
      }

      if (!self->_showsActivityIndicatorOnHomeScreen)
      {
        v30 = +[SBApplicationPlaceholderController sharedInstance];
        v31 = [v30 isUsingNetwork];
LABEL_40:
        v6 = v31;

        goto LABEL_13;
      }
    }

    v6 = 1;
LABEL_13:

    goto LABEL_14;
  }

  v5 = 0;
LABEL_14:
  v20 = [(SBStatusBarStateAggregator *)self _setItem:32 enabled:v6];
  v21 = [v3 isUsingSlowDataConnection];
  if (syncActivityIndicatorCount < 1)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v5)
  {
    v23 = v5;
  }

  else
  {
    v23 = &stru_283094718;
  }

  v24 = v23;

  v25 = *(&self->_data + 2272);
  if (v22 != ((v25 & 2) == 0) && syncActivityIndicatorCount > 0 != ((v25 & 4) == 0))
  {
    if (([(__CFString *)v24 isEqualToString:self->_activityDisplayIdentifier]& 1) != 0)
    {
      goto LABEL_28;
    }

    v25 = *(&self->_data + 2272);
  }

  if (v22)
  {
    v26 = 2;
  }

  else
  {
    v26 = 0;
  }

  *(&self->_data + 2272) = v26 | (4 * (syncActivityIndicatorCount > 0)) | v25 & 0xF9;
  objc_storeStrong(&self->_activityDisplayIdentifier, v23);
  [(NSString *)self->_activityDisplayIdentifier getCString:self->_data.activityDisplayId maxLength:256 encoding:4];
  [(SBStatusBarStateAggregator *)self _notifyItemChanged:32];
  v20 = 1;
LABEL_28:
  if ((v6 & v20) == 1)
  {
    v27 = SBLogStatusBarish();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(&self->_data + 2272);
      activityDisplayIdentifier = self->_activityDisplayIdentifier;
      v32[0] = 67109634;
      v32[1] = (v28 >> 1) & 1;
      v33 = 1024;
      v34 = (v28 >> 2) & 1;
      v35 = 2114;
      v36 = activityDisplayIdentifier;
      _os_log_impl(&dword_21ED4E000, v27, OS_LOG_TYPE_DEFAULT, "activity info changed to slow=%i sync=%i identifier=%{public}@", v32, 0x18u);
    }
  }
}

- (void)_updateQuietModeItem
{
  v27 = *MEMORY[0x277D85DE8];
  if ([(SBStatusBarStateAggregator *)self _systemApertureElementIsVisibleForStatusBarItem:2])
  {

    [(SBStatusBarStateAggregator *)self _setItem:2 enabled:0];
  }

  else
  {
    v3 = self->_data.itemIsEnabled[2];
    v4 = *&self->_data.quietModeImage[208];
    v26[12] = *&self->_data.quietModeImage[192];
    v26[13] = v4;
    v5 = *&self->_data.quietModeImage[240];
    v26[14] = *&self->_data.quietModeImage[224];
    v26[15] = v5;
    v6 = *&self->_data.quietModeImage[144];
    v26[8] = *&self->_data.quietModeImage[128];
    v26[9] = v6;
    v7 = *&self->_data.quietModeImage[176];
    v26[10] = *&self->_data.quietModeImage[160];
    v26[11] = v7;
    v8 = *&self->_data.quietModeImage[80];
    v26[4] = *&self->_data.quietModeImage[64];
    v26[5] = v8;
    v9 = *&self->_data.quietModeImage[112];
    v26[6] = *&self->_data.quietModeImage[96];
    v26[7] = v9;
    v10 = *&self->_data.quietModeImage[16];
    v26[0] = *self->_data.quietModeImage;
    v26[1] = v10;
    v11 = *&self->_data.quietModeImage[48];
    v26[2] = *&self->_data.quietModeImage[32];
    v26[3] = v11;
    v12 = *&self->_data.quietModeName[208];
    __s1[12] = *&self->_data.quietModeName[192];
    __s1[13] = v12;
    v13 = *&self->_data.quietModeName[240];
    __s1[14] = *&self->_data.quietModeName[224];
    __s1[15] = v13;
    v14 = *&self->_data.quietModeName[144];
    __s1[8] = *&self->_data.quietModeName[128];
    __s1[9] = v14;
    v15 = *&self->_data.quietModeName[176];
    __s1[10] = *&self->_data.quietModeName[160];
    __s1[11] = v15;
    v16 = *&self->_data.quietModeName[80];
    __s1[4] = *&self->_data.quietModeName[64];
    __s1[5] = v16;
    v17 = *&self->_data.quietModeName[112];
    __s1[6] = *&self->_data.quietModeName[96];
    __s1[7] = v17;
    v18 = *&self->_data.quietModeName[16];
    __s1[0] = *self->_data.quietModeName;
    __s1[1] = v18;
    v19 = *&self->_data.quietModeName[48];
    __s1[2] = *&self->_data.quietModeName[32];
    __s1[3] = v19;
    v24 = [(SBStatusBarStateAggregator *)self focusDomain];
    v20 = [v24 data];
    v21 = [v20 modeSymbol];
    [v21 getCString:self->_data.quietModeImage maxLength:256 encoding:4];
    v22 = [v20 modeName];
    [v22 getCString:self->_data.quietModeName maxLength:256 encoding:4];
    if (v3 != (v21 != 0) || (v23 = memcmp(__s1, self->_data.quietModeName, 0x100uLL), memcmp(v26, self->_data.quietModeImage, 0x100uLL) | v23))
    {
      [(SBStatusBarStateAggregator *)self _requestActions:16];
    }

    [(SBStatusBarStateAggregator *)self _setItem:2 enabled:v21 != 0];
  }
}

- (void)_updateLockItem
{
  v3 = [SBApp authenticationController];
  v4 = [v3 isAuthenticated];

  [(SBStatusBarStateAggregator *)self _setItem:39 enabled:v4 ^ 1u];
}

uint64_t __51__SBStatusBarStateAggregator__restartTimeItemTimer__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 beginCoalescentBlock];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateTimeItemsWithDate:v4];

  v6 = *(a1 + 32);

  return [v6 endCoalescentBlock];
}

- (void)_restartTimeItemTimer
{
  [(SBStatusBarStateAggregator *)self beginCoalescentBlock];
  [(SBStatusBarStateAggregator *)self _updateTimeItems];
  [(SBStatusBarStateAggregator *)self endCoalescentBlock];
  if (!self->_dateTimeProviderToken)
  {
    objc_initWeak(&location, self);
    dateTimeProvider = self->_dateTimeProvider;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __51__SBStatusBarStateAggregator__restartTimeItemTimer__block_invoke;
    v6[3] = &unk_2783C37C0;
    v6[4] = self;
    objc_copyWeak(&v7, &location);
    v4 = [(SBFOverridableDateProvider *)dateTimeProvider observeMinuteUpdatesWithHandler:v6];
    dateTimeProviderToken = self->_dateTimeProviderToken;
    self->_dateTimeProviderToken = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

- (void)_updateTimeItems
{
  v3 = [(SBFOverridableDateProvider *)self->_dateTimeProvider date];
  [(SBStatusBarStateAggregator *)self _updateTimeItemsWithDate:v3];
}

void __60__SBStatusBarStateAggregator__updateBluetoothHeadphonesItem__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v4 = [v3 bs_map:&__block_literal_global_191_0];
  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SBStatusBarStateAggregator__updateBluetoothHeadphonesItem__block_invoke_3;
  block[3] = &unk_2783A8ED8;
  v9 = v3;
  v10 = v4;
  v11 = *(a1 + 32);
  v6 = v4;
  v7 = v3;
  dispatch_async(v5, block);
}

id __60__SBStatusBarStateAggregator__updateBluetoothHeadphonesItem__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SBBluetoothController sharedInstance];
  v4 = [v3 deviceForAudioRoute:v2];

  return v4;
}

void __60__SBStatusBarStateAggregator__updateBluetoothHeadphonesItem__block_invoke_3(uint64_t a1)
{
  if (![*(a1 + 32) count])
  {
LABEL_26:
    v22 = 0;
    v23 = 0;
    goto LABEL_27;
  }

  v2 = 0;
  v3 = MEMORY[0x277D26D28];
  v4 = MEMORY[0x277D26C58];
  while (1)
  {
    v5 = [*(a1 + 32) objectAtIndex:v2];
    v6 = [v5 objectForKey:*v3];
    v7 = [v6 isEqualToString:*v4];

    v8 = [v5 objectForKey:*MEMORY[0x277D26D00]];
    v9 = [v8 BOOLValue];

    v10 = [v5 objectForKey:*MEMORY[0x277D26CE0]];
    v11 = [v10 BOOLValue];

    v12 = [v5 objectForKey:*MEMORY[0x277D26CC8]];
    v13 = [v12 BOOLValue];

    if ((v7 & 1) == 0 && (v9 & 1) == 0 && (v11 & 1) == 0 && !v13)
    {
      goto LABEL_25;
    }

    v14 = [*(a1 + 40) objectAtIndex:v2];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

LABEL_24:

LABEL_25:
    if (++v2 >= [*(a1 + 32) count])
    {
      goto LABEL_26;
    }
  }

  v15 = [v5 objectForKey:*MEMORY[0x277D26D30]];
  if (!v15 || ([v14 address], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16) || ((objc_msgSend(v14, "address"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v15, "hasPrefix:", v17), v17, !objc_msgSend(v14, "isAppleAudioDevice")) || !objc_msgSend(v14, "inEarDetectEnabled") ? (v20 = 0) : ((v29 = 3, v30 = 0, objc_msgSend(v14, "inEarStatusPrimary:secondary:", &v30, &v29), v30) ? (v19 = v29 == 0) : (v19 = 1), v19 ? (v20 = 0) : (v20 = 1)), objc_msgSend(v14, "type") != 20 ? (v21 = (objc_msgSend(v14, "type") != 16) | ~v18 | v20) : (LOBYTE(v21) = v20 | ~v18), v3 = MEMORY[0x277D26D28], (v21 & 1) != 0))
  {

    v4 = MEMORY[0x277D26C58];
    goto LABEL_24;
  }

  v22 = [v14 isAppleAudioDevice] ^ 1;
  if (v9 & 1 | ((v13 & 1) == 0) | v11 & 1)
  {
    v23 = 1;
  }

  else
  {
    v24 = [MEMORY[0x277CB8698] sharedSystemAudioContext];
    v25 = [v24 predictedOutputDevice];

    v23 = v25 != 0;
  }

LABEL_27:
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SBStatusBarStateAggregator__updateBluetoothHeadphonesItem__block_invoke_4;
  block[3] = &unk_2783AC158;
  block[4] = *(a1 + 48);
  v27 = v23;
  v28 = v22;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __60__SBStatusBarStateAggregator__updateBluetoothHeadphonesItem__block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setShouldShowBluetoothHeadphoneGlyph:*(a1 + 40) andShouldShowBluetoothHeadphoneBatteryPercent:*(a1 + 41)];
  v2 = *(a1 + 32);
  v3 = v2[8760];

  return [v2 _setItem:42 enabled:v3];
}

- (void)_updateBluetoothHeadphonesItem
{
  v3 = +[SBAVSystemControllerCache sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__SBStatusBarStateAggregator__updateBluetoothHeadphonesItem__block_invoke;
  v4[3] = &unk_2783AD2E0;
  v4[4] = self;
  [v3 fetchPickableRoutesWithCompletion:v4];
}

void __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_15(uint64_t a1, void *a2)
{
  v5 = [a2 callDescriptors];
  [*(a1 + 32) _updateCallingBackgroundActivityAssertionsForCallDescriptors:v5];
  v3 = [SBApp sensorActivityDataProvider];
  v4 = [v3 activeSensorActivityAttributions];

  [*(a1 + 32) _updateActiveAudioRecordingBackgroundActivityAssertionsForActiveSensorActivityAttributions:v4];
}

void __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_17;
  v6[3] = &unk_2783A9878;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (SBStatusBarStateAggregator)initWithMainDisplayWindowScene:(id)a3 registerForNotifications:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v51.receiver = self;
  v51.super_class = SBStatusBarStateAggregator;
  v7 = [(SBStatusBarStateAggregator *)&v51 init];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_mainDisplayWindowScene, v6);
    v9 = +[SBDefaults localDefaults];
    v10 = [v9 statusBarDefaults];
    statusBarDefaults = v8->_statusBarDefaults;
    v8->_statusBarDefaults = v10;

    v8->_cachedShowRSSI = [(SBStatusBarDefaults *)v8->_statusBarDefaults showRSSI];
    v8->_cachedShowThermalWarning = [(SBStatusBarDefaults *)v8->_statusBarDefaults showThermalWarning];
    v12 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    postObservers = v8->_postObservers;
    v8->_postObservers = v12;

    *(&v8->_data + 2536) = *(&v8->_data + 2536) & 0xFD | (2 * ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1));
    v14 = objc_alloc(MEMORY[0x277D65EC8]);
    v15 = [SBApp statusBarForEmbeddedDisplay];
    v16 = [v14 initWithReferenceView:v15];

    v17 = [objc_alloc(MEMORY[0x277D65F08]) initWithDateProvider:v16];
    dateTimeProvider = v8->_dateTimeProvider;
    v8->_dateTimeProvider = v17;

    v19 = [SBApp systemStatusServer];
    if (!v19)
    {
      [SBStatusBarStateAggregator initWithMainDisplayWindowScene:registerForNotifications:];
    }

    v20 = objc_alloc_init(SBSystemStatusBatteryDataProvider);
    batteryDataProvider = v8->_batteryDataProvider;
    v8->_batteryDataProvider = v20;

    v22 = [[SBSystemStatusStatusItemsDataProvider alloc] initWithMainDisplayWindowScene:v6];
    statusItemsDataProvider = v8->_statusItemsDataProvider;
    v8->_statusItemsDataProvider = v22;

    v24 = objc_alloc(MEMORY[0x277D6BFD0]);
    v25 = [SBApp telephonyStateProvider];
    v26 = [v24 initWithServerHandle:v19 stateProvider:v25];
    telephonyDataProvider = v8->_telephonyDataProvider;
    v8->_telephonyDataProvider = v26;

    v28 = objc_alloc_init(SBSystemStatusWifiDataProvider);
    wifiDataProvider = v8->_wifiDataProvider;
    v8->_wifiDataProvider = v28;

    v30 = objc_alloc_init(SBSystemStatusStatusBarOverridesArchiver);
    statusBarOverridesObserver = v8->_statusBarOverridesObserver;
    v8->_statusBarOverridesObserver = v30;

    v32 = [objc_alloc(MEMORY[0x277D6B928]) initWithServerHandle:v19];
    batteryDomain = v8->_batteryDomain;
    v8->_batteryDomain = v32;

    v34 = [objc_alloc(MEMORY[0x277D6B940]) initWithServerHandle:v19];
    callingDomain = v8->_callingDomain;
    v8->_callingDomain = v34;

    v36 = [objc_alloc(MEMORY[0x277D6B988]) initWithServerHandle:v19];
    focusDomain = v8->_focusDomain;
    v8->_focusDomain = v36;

    v38 = [objc_alloc(MEMORY[0x277D6BA38]) initWithServerHandle:v19];
    playgroundsDomain = v8->_playgroundsDomain;
    v8->_playgroundsDomain = v38;

    v40 = [objc_alloc(MEMORY[0x277D6BB50]) initWithServerHandle:v19];
    statusItemsDomain = v8->_statusItemsDomain;
    v8->_statusItemsDomain = v40;

    v42 = [objc_alloc(MEMORY[0x277D6BB70]) initWithServerHandle:v19];
    stewieDomain = v8->_stewieDomain;
    v8->_stewieDomain = v42;

    v44 = [objc_alloc(MEMORY[0x277D6BB90]) initWithServerHandle:v19];
    telephonyDomain = v8->_telephonyDomain;
    v8->_telephonyDomain = v44;

    v46 = [objc_alloc(MEMORY[0x277D6BBA0]) initWithServerHandle:v19];
    voiceControlDomain = v8->_voiceControlDomain;
    v8->_voiceControlDomain = v46;

    v48 = [objc_alloc(MEMORY[0x277D6BBB0]) initWithServerHandle:v19];
    wifiDomain = v8->_wifiDomain;
    v8->_wifiDomain = v48;

    if (v4)
    {
      [(SBStatusBarStateAggregator *)v8 _registerForNotifications];
    }
  }

  return v8;
}

- (void)dealloc
{
  v3 = [SBApp sensorActivityDataProvider];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  [(SBSystemStatusBatteryDataProvider *)self->_batteryDataProvider invalidate];
  [(SBSystemStatusStatusItemsDataProvider *)self->_statusItemsDataProvider invalidate];
  [(STTelephonyStatusDomainDataProvider *)self->_telephonyDataProvider invalidate];
  [(SBSystemStatusWifiDataProvider *)self->_wifiDataProvider invalidate];
  [(STBatteryStatusDomain *)self->_batteryDomain invalidate];
  [(STCallingStatusDomain *)self->_callingDomain invalidate];
  [(STFocusStatusDomain *)self->_focusDomain invalidate];
  [(STPlaygroundsStatusDomain *)self->_playgroundsDomain invalidate];
  [(STStatusItemsStatusDomain *)self->_statusItemsDomain invalidate];
  [(STStewieStatusDomain *)self->_stewieDomain invalidate];
  [(STTelephonyStatusDomain *)self->_telephonyDomain invalidate];
  [(STVoiceControlStatusDomain *)self->_voiceControlDomain invalidate];
  [(STWifiStatusDomain *)self->_wifiDomain invalidate];
  [(SBStatusBarStateAggregator *)self _stopTimeItemTimer];
  [(SBStatusBarStateAggregator *)self _removeTetheringBackgroundActivityAssertion];
  v5.receiver = self;
  v5.super_class = SBStatusBarStateAggregator;
  [(SBStatusBarStateAggregator *)&v5 dealloc];
}

- (SBUserSessionController)_userSessionController
{
  override_userSessionController = self->_override_userSessionController;
  if (override_userSessionController)
  {
    v3 = override_userSessionController;
  }

  else
  {
    v3 = [SBApp userSessionController];
  }

  return v3;
}

- (void)_updateStateAtomicallyWithoutAnimationUsingBlock:(id)a3
{
  v4 = a3;
  if (self->_performingAtomicUpdate)
  {
    [SBStatusBarStateAggregator _updateStateAtomicallyWithoutAnimationUsingBlock:];
  }

  self->_performingAtomicUpdate = 1;
  [(SBStatusBarStateAggregator *)self beginCoalescentBlock];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__SBStatusBarStateAggregator__updateStateAtomicallyWithoutAnimationUsingBlock___block_invoke;
  v7[3] = &unk_2783A95E8;
  v7[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __79__SBStatusBarStateAggregator__updateStateAtomicallyWithoutAnimationUsingBlock___block_invoke_2;
  v6[3] = &unk_2783C3458;
  v6[4] = self;
  (*(v4 + 2))(v4, &self->_atomicUpdateData, v7, v6);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __79__SBStatusBarStateAggregator__updateStateAtomicallyWithoutAnimationUsingBlock___block_invoke_4;
  v5[3] = &unk_2783C3458;
  v5[4] = self;
  (*(v4 + 2))(v4, &self->_data, &__block_literal_global_419, v5);
  [(SBStatusBarStateAggregator *)self endCoalescentBlock];
  self->_performingAtomicUpdate = 0;
}

- (void)_tickRefCount:(int64_t *)a3 up:(BOOL)a4 withTransitionBlock:(id)a5
{
  v5 = a4;
  v7 = a5;
  v8 = *a3;
  if (v5)
  {
    *a3 = v8 + 1;
    if (v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = v8 == 1;
  v10 = v8 < 1;
  v11 = v8 - 1;
  if (!v10)
  {
    *a3 = v11;
    if (v9)
    {
LABEL_7:
      v12 = v7;
      (*(v7 + 2))(v7, v5);
      v7 = v12;
    }
  }

LABEL_8:
}

- (void)setShowsOverridesForRecording:(BOOL)a3
{
  v3 = a3;
  v9 = *MEMORY[0x277D85DE8];
  v5 = SBLogStatusBarish();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240192;
    v8 = v3;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "set showing overrides for recording: %{public}d", buf, 8u);
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__SBStatusBarStateAggregator_setShowsOverridesForRecording___block_invoke;
  v6[3] = &unk_2783A9398;
  v6[4] = self;
  [(SBStatusBarStateAggregator *)self _tickRefCount:&self->_showsRecordingOverrides up:v3 withTransitionBlock:v6];
}

uint64_t __60__SBStatusBarStateAggregator_setShowsOverridesForRecording___block_invoke(uint64_t a1)
{
  [*(a1 + 32) beginCoalescentBlock];
  [*(a1 + 32) _updateOverrideDate];
  [*(a1 + 32) _updateAirplayItem];
  [*(a1 + 32) _updateSignalStrengthItem];
  [*(a1 + 32) _updateServiceItem];
  [*(a1 + 32) _updateDataNetworkItem];
  [*(a1 + 32) _updateSecondarySignalStrengthItem];
  [*(a1 + 32) _updateSecondaryServiceItem];
  [*(a1 + 32) _updateSecondaryDataNetworkItem];
  [*(a1 + 32) _updateBatteryItems];
  v2 = *(a1 + 32);

  return [v2 endCoalescentBlock];
}

- (void)setShouldShowBluetoothHeadphoneGlyph:(BOOL)a3 andShouldShowBluetoothHeadphoneBatteryPercent:(BOOL)a4
{
  if (self->_shouldShowBluetoothHeadphoneGlyph != a3 || self->_shouldShowBluetoothHeadphoneBatteryPercent != a4)
  {
    self->_shouldShowBluetoothHeadphoneGlyph = a3;
    self->_shouldShowBluetoothHeadphoneBatteryPercent = a4;
    [(SBStatusBarStateAggregator *)self _updateBluetoothBatteryItem];
  }
}

- (void)setAlarmEnabled:(BOOL)a3
{
  [(SBSystemStatusStatusItemsDataProvider *)self->_statusItemsDataProvider setAlarmEnabled:a3];

  [(SBStatusBarStateAggregator *)self updateStatusBarItem:18];
}

- (void)setShowsActivityIndicatorEverywhere:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __66__SBStatusBarStateAggregator_setShowsActivityIndicatorEverywhere___block_invoke;
  v3[3] = &unk_2783A9398;
  v3[4] = self;
  [(SBStatusBarStateAggregator *)self _tickRefCount:&self->_activityIndicatorEverywhereCount up:a3 withTransitionBlock:v3];
}

- (void)setShowsSyncActivityIndicator:(BOOL)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__SBStatusBarStateAggregator_setShowsSyncActivityIndicator___block_invoke;
  v3[3] = &unk_2783A9398;
  v3[4] = self;
  [(SBStatusBarStateAggregator *)self _tickRefCount:&self->_syncActivityIndicatorCount up:a3 withTransitionBlock:v3];
}

- (void)setUserNameOverride:(id)a3
{
  v4 = [a3 copy];
  overridePersonName = self->_overridePersonName;
  self->_overridePersonName = v4;

  [(SBStatusBarStateAggregator *)self updateStatusBarItem:8];
}

- (void)addPostingObserver:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_notifyingPostObservers)
  {
    [SBStatusBarStateAggregator addPostingObserver:];
    v4 = v7;
  }

  if (![(NSHashTable *)self->_postObservers containsObject:v4])
  {
    [(NSHashTable *)self->_postObservers addObject:v7];
    if (self->_hasPostedOnce)
    {
      [v7 statusBarStateAggregatorDidStartPost:self];
      for (i = 0; i != 46; ++i)
      {
        [v7 statusBarStateAggregator:self didVisitItem:i withUpdates:1 toData:&self->_data];
      }

      [v7 statusBarStateAggregator:self didUpdateNonItemData:&self->_data];
      if (!self->_coalescentBlockDepth)
      {
        [v7 statusBarStateAggregatorDidFinishPost:self withData:&self->_data actions:self->_actions];
      }
    }

    else
    {
      if (self->_coalescentBlockDepth)
      {
        [v7 statusBarStateAggregatorDidStartPost:self];
      }

      [(SBStatusBarStateAggregator *)self beginCoalescentBlock];
      [(SBStatusBarStateAggregator *)self _resetTimeItemFormatter];
      for (j = 0; j != 46; ++j)
      {
        [(SBStatusBarStateAggregator *)self updateStatusBarItem:j];
        [(SBStatusBarStateAggregator *)self _notifyItemChanged:j];
      }

      [(SBStatusBarStateAggregator *)self _updateTetheringState];
      self->_hasPostedOnce = 1;
      [(SBStatusBarStateAggregator *)self endCoalescentBlock];
    }
  }
}

- (void)removePostingObserver:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_notifyingPostObservers)
  {
    [SBStatusBarStateAggregator removePostingObserver:];
    v4 = v5;
  }

  [(NSHashTable *)self->_postObservers removeObject:v4];
}

- (void)_registerForNotifications
{
  v213[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = [MEMORY[0x277CCABD8] mainQueue];
  objc_initWeak(&location, self);
  v206[0] = MEMORY[0x277D85DD0];
  v206[1] = 3221225472;
  v206[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke;
  v206[3] = &unk_2783C3480;
  objc_copyWeak(&v207, &location);
  v5 = MEMORY[0x223D6F7F0](v206);
  v204[0] = MEMORY[0x277D85DD0];
  v204[1] = 3221225472;
  v204[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_2;
  v204[3] = &unk_2783B4BD8;
  v6 = v5;
  v205 = v6;
  v7 = [v3 addObserverForName:@"SBBootCompleteNotification" object:0 queue:v4 usingBlock:v204];
  v202[0] = MEMORY[0x277D85DD0];
  v202[1] = 3221225472;
  v202[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_4;
  v202[3] = &unk_2783B4BD8;
  v8 = v6;
  v203 = v8;
  v9 = [v3 addObserverForName:@"SBSignificantTimeChangedNotification" object:0 queue:v4 usingBlock:v202];
  v200[0] = MEMORY[0x277D85DD0];
  v200[1] = 3221225472;
  v200[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_6;
  v200[3] = &unk_2783B4BD8;
  v10 = v8;
  v201 = v10;
  v11 = [v3 addObserverForName:@"SBCurrentLocaleDidChangeNotification" object:0 queue:v4 usingBlock:v200];
  [v3 addObserver:self selector:sel__restartTimeItemTimer name:@"SBWorkspaceDidWakeFromSleepNotification" object:0];
  [v3 addObserver:self selector:sel_systemApertureLayoutDidChange_ name:@"SBSystemApertureLayoutDidChangeNotification" object:0];
  v199[0] = MEMORY[0x277D85DD0];
  v199[1] = 3221225472;
  v199[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_8;
  v199[3] = &unk_2783A8C18;
  v199[4] = self;
  block = MEMORY[0x223D6F7F0](v199);
  statusBarDefaults = self->_statusBarDefaults;
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"showOverridesForRecording"];
  v14 = MEMORY[0x277D85CD0];
  v15 = MEMORY[0x277D85CD0];
  v16 = [(SBStatusBarDefaults *)statusBarDefaults observeDefault:v13 onQueue:v14 withBlock:block];

  v17 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], block);

  v198[0] = MEMORY[0x277D85DD0];
  v198[1] = 3221225472;
  v198[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_9;
  v198[3] = &unk_2783C34C8;
  v198[4] = self;
  v18 = MEMORY[0x223D6F7F0](v198);
  v196[0] = MEMORY[0x277D85DD0];
  v196[1] = 3221225472;
  v196[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_10;
  v196[3] = &unk_2783A9348;
  v19 = v10;
  v197 = v19;
  v20 = MEMORY[0x223D6F7F0](v196);
  v21 = [(SBStatusBarStateAggregator *)self batteryDomain];
  v194[0] = MEMORY[0x277D85DD0];
  v194[1] = 3221225472;
  v194[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_12;
  v194[3] = &unk_2783C34F0;
  v126 = v20;
  v195 = v126;
  [v21 observeDataWithBlock:v194];

  v22 = [(SBStatusBarStateAggregator *)self batteryDomain];
  v23 = [v22 data];
  LODWORD(v20) = v23 == 0;

  if (v20)
  {
    [v3 addObserver:self selector:sel__updateBatteryItems name:@"SBSystemStatusBatteryDataProviderDidChangeNotification" object:0];
  }

  v24 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], v126);

  v25 = self->_statusBarDefaults;
  v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"showBatteryPercentage"];
  v213[0] = v26;
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"showBatteryLevel"];
  v213[1] = v27;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v213 count:2];
  v192[0] = MEMORY[0x277D85DD0];
  v192[1] = 3221225472;
  v192[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_13;
  v192[3] = &unk_2783A9348;
  v29 = v19;
  v193 = v29;
  v30 = [(SBStatusBarDefaults *)v25 observeDefaults:v28 onQueue:MEMORY[0x277D85CD0] withBlock:v192];

  v191[0] = MEMORY[0x277D85DD0];
  v191[1] = 3221225472;
  v191[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_15;
  v191[3] = &unk_2783C3518;
  v191[4] = self;
  v31 = MEMORY[0x223D6F7F0](v191);
  v32 = [(SBStatusBarStateAggregator *)self callingDomain];
  v189[0] = MEMORY[0x277D85DD0];
  v189[1] = 3221225472;
  v189[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_16;
  v189[3] = &unk_2783C3540;
  v33 = v31;
  v190 = v33;
  [v32 observeDataWithBlock:v189];

  v186[0] = MEMORY[0x277D85DD0];
  v186[1] = 3221225472;
  v186[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_18;
  v186[3] = &unk_2783AC308;
  objc_copyWeak(&v188, &location);
  v121 = v33;
  v187 = v121;
  v34 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], v186);

  v184[0] = MEMORY[0x277D85DD0];
  v184[1] = 3221225472;
  v184[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_19;
  v184[3] = &unk_2783A98A0;
  v184[4] = self;
  v35 = v29;
  v185 = v35;
  v36 = MEMORY[0x223D6F7F0](v184);
  v37 = [(SBStatusBarStateAggregator *)self wifiDomain];
  v182[0] = MEMORY[0x277D85DD0];
  v182[1] = 3221225472;
  v182[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_2_99;
  v182[3] = &unk_2783C3568;
  v125 = v36;
  v183 = v125;
  [v37 observeDataWithBlock:v182];

  v38 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], v125);

  v180[0] = MEMORY[0x277D85DD0];
  v180[1] = 3221225472;
  v180[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_3_101;
  v180[3] = &unk_2783A9348;
  v39 = v35;
  v181 = v39;
  v40 = MEMORY[0x223D6F7F0](v180);
  v41 = [(SBStatusBarStateAggregator *)self focusDomain];
  v178[0] = MEMORY[0x277D85DD0];
  v178[1] = 3221225472;
  v178[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_5_105;
  v178[3] = &unk_2783C3590;
  v124 = v40;
  v179 = v124;
  [v41 observeDataWithBlock:v178];

  v42 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], v124);

  v43 = [SBApp sensorActivityDataProvider];
  [v43 addObserver:self];
  v176[0] = MEMORY[0x277D85DD0];
  v176[1] = 3221225472;
  v176[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_6_107;
  v176[3] = &unk_2783A92D8;
  v176[4] = self;
  v120 = v43;
  v177 = v120;
  v44 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], v176);

  v45 = [(SBStatusBarStateAggregator *)self playgroundsDomain];
  v174[0] = MEMORY[0x277D85DD0];
  v174[1] = 3221225472;
  v174[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_7_108;
  v174[3] = &unk_2783C35B8;
  v46 = v18;
  v175 = v46;
  [v45 observeDataWithBlock:v174];

  v171[0] = MEMORY[0x277D85DD0];
  v171[1] = 3221225472;
  v171[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_9_111;
  v171[3] = &unk_2783AC308;
  objc_copyWeak(&v173, &location);
  v47 = v46;
  v172 = v47;
  v48 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], v171);

  v49 = [(SBStatusBarStateAggregator *)self statusItemsDomain];
  v169[0] = MEMORY[0x277D85DD0];
  v169[1] = 3221225472;
  v169[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_10_112;
  v169[3] = &unk_2783C35E0;
  v50 = v47;
  v170 = v50;
  [v49 observeDataWithBlock:v169];

  v166[0] = MEMORY[0x277D85DD0];
  v166[1] = 3221225472;
  v166[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_12_115;
  v166[3] = &unk_2783AC308;
  objc_copyWeak(&v168, &location);
  v51 = v50;
  v167 = v51;
  v52 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], v166);

  v53 = [(SBStatusBarStateAggregator *)self stewieDomain];
  v164[0] = MEMORY[0x277D85DD0];
  v164[1] = 3221225472;
  v164[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_13_116;
  v164[3] = &unk_2783C3608;
  v54 = v51;
  v165 = v54;
  [v53 observeDataWithBlock:v164];

  v161[0] = MEMORY[0x277D85DD0];
  v161[1] = 3221225472;
  v161[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_15_119;
  v161[3] = &unk_2783AC308;
  objc_copyWeak(&v163, &location);
  v119 = v54;
  v162 = v119;
  v55 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], v161);

  v159[0] = MEMORY[0x277D85DD0];
  v159[1] = 3221225472;
  v159[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_16_120;
  v159[3] = &unk_2783A9348;
  v56 = v39;
  v160 = v56;
  v57 = MEMORY[0x223D6F7F0](v159);
  v58 = [(SBStatusBarStateAggregator *)self telephonyDomain];
  v157[0] = MEMORY[0x277D85DD0];
  v157[1] = 3221225472;
  v157[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_18_124;
  v157[3] = &unk_2783C3630;
  v123 = v57;
  v158 = v123;
  [v58 observeDataWithBlock:v157];

  v59 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], v123);

  v155[0] = MEMORY[0x277D85DD0];
  v155[1] = 3221225472;
  v155[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_19_126;
  v155[3] = &unk_2783A9348;
  v60 = v56;
  v156 = v60;
  v61 = MEMORY[0x223D6F7F0](v155);
  v62 = [(SBStatusBarStateAggregator *)self voiceControlDomain];
  v153[0] = MEMORY[0x277D85DD0];
  v153[1] = 3221225472;
  v153[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_21;
  v153[3] = &unk_2783C3658;
  v122 = v61;
  v154 = v122;
  [v62 observeDataWithBlock:v153];

  v63 = MEMORY[0x277D85CD0];
  dispatch_async(MEMORY[0x277D85CD0], v122);

  v64 = self->_statusBarDefaults;
  v65 = [MEMORY[0x277CCACA8] stringWithUTF8String:"showRSSI"];
  v212 = v65;
  v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v212 count:1];
  v151[0] = MEMORY[0x277D85DD0];
  v151[1] = 3221225472;
  v151[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_22;
  v151[3] = &unk_2783A8C68;
  objc_copyWeak(&v152, &location);
  v67 = [(SBStatusBarDefaults *)v64 observeDefaults:v66 onQueue:MEMORY[0x277D85CD0] withBlock:v151];

  v68 = self->_statusBarDefaults;
  v69 = [MEMORY[0x277CCACA8] stringWithUTF8String:"showThermalWarning"];
  v211 = v69;
  v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v211 count:1];
  v149[0] = MEMORY[0x277D85DD0];
  v149[1] = 3221225472;
  v149[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_23;
  v149[3] = &unk_2783A98A0;
  v149[4] = self;
  v71 = v60;
  v150 = v71;
  v72 = [(SBStatusBarDefaults *)v68 observeDefaults:v70 onQueue:MEMORY[0x277D85CD0] withBlock:v149];

  [(SBStatusBarStateAggregator *)self _handleShowRSSIDefaultChange];
  v73 = +[SBAirplaneModeController sharedInstance];
  [v3 addObserver:self selector:sel_beginCoalescentBlock name:*MEMORY[0x277D679F8] object:0];
  [v3 addObserver:self selector:sel__noteAirplaneModeChanged name:*MEMORY[0x277D679E8] object:0];
  [v3 addObserver:self selector:sel_endCoalescentBlock name:*MEMORY[0x277D679F0] object:0];
  v74 = [MEMORY[0x277CF3248] sharedInstance];
  v75 = *MEMORY[0x277CF3190];
  v147[0] = MEMORY[0x277D85DD0];
  v147[1] = 3221225472;
  v147[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_25;
  v147[3] = &unk_2783B4BD8;
  v76 = v71;
  v148 = v76;
  v77 = [v3 addObserverForName:v75 object:0 queue:v4 usingBlock:v147];
  v78 = *MEMORY[0x277CF31A0];
  v145[0] = MEMORY[0x277D85DD0];
  v145[1] = 3221225472;
  v145[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_27;
  v145[3] = &unk_2783B4BD8;
  v79 = v76;
  v146 = v79;
  v80 = [v3 addObserverForName:v78 object:0 queue:v4 usingBlock:v145];
  v81 = [v74 connectedDevices];
  if ([v81 count])
  {
    v82 = [v81 mutableCopy];
    connectedClassicBluetoothDevices = self->_connectedClassicBluetoothDevices;
    self->_connectedClassicBluetoothDevices = v82;
  }

  v84 = objc_alloc(MEMORY[0x277CBDFF8]);
  v85 = *MEMORY[0x277CBDF08];
  v209[0] = *MEMORY[0x277CBDD90];
  v209[1] = v85;
  v210[0] = MEMORY[0x277CBEC38];
  v210[1] = MEMORY[0x277CBEC38];
  v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v210 forKeys:v209 count:2];
  v87 = [v84 initWithDelegate:self queue:MEMORY[0x277D85CD0] options:v86];
  coreBluetoothManager = self->_coreBluetoothManager;
  self->_coreBluetoothManager = v87;

  v89 = *MEMORY[0x277CF3150];
  v143[0] = MEMORY[0x277D85DD0];
  v143[1] = 3221225472;
  v143[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_29;
  v143[3] = &unk_2783B4BD8;
  v90 = v79;
  v144 = v90;
  v91 = [v3 addObserverForName:v89 object:0 queue:v4 usingBlock:v143];
  v92 = SBBluetoothConnectionChangedNotification;
  v141[0] = MEMORY[0x277D85DD0];
  v141[1] = 3221225472;
  v141[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_31;
  v141[3] = &unk_2783B4BD8;
  v93 = v90;
  v142 = v93;
  v94 = [v3 addObserverForName:v92 object:0 queue:v4 usingBlock:v141];
  v95 = +[SBAVSystemControllerCache sharedInstance];
  [v95 addObserver:self];

  v139[0] = MEMORY[0x277D85DD0];
  v139[1] = 3221225472;
  v139[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_33;
  v139[3] = &unk_2783B4BD8;
  v96 = v93;
  v140 = v96;
  v97 = MEMORY[0x223D6F7F0](v139);
  v98 = [v3 addObserverForName:SBBluetoothBatteryAvailabilityChangedNotification object:0 queue:v4 usingBlock:v97];
  v99 = [v3 addObserverForName:SBBluetoothBatteryLevelChangedNotification object:0 queue:v4 usingBlock:v97];
  v137[0] = MEMORY[0x277D85DD0];
  v137[1] = 3221225472;
  v137[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_35;
  v137[3] = &unk_2783B4BD8;
  v100 = v96;
  v138 = v100;
  v101 = MEMORY[0x223D6F7F0](v137);
  v102 = [v3 addObserverForName:@"SBApplicationShowsProgressChangedNotification" object:0 queue:v4 usingBlock:v101];
  v103 = [v3 addObserverForName:@"SBApplicationPlaceholdersNetworkUsageDidChangeNotification" object:0 queue:v4 usingBlock:v101];
  v104 = [v3 addObserverForName:@"SBFrontmostDisplayChangedNotification" object:0 queue:v4 usingBlock:v101];
  v105 = *MEMORY[0x277D67A90];
  v135[0] = MEMORY[0x277D85DD0];
  v135[1] = 3221225472;
  v135[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_37;
  v135[3] = &unk_2783B4BD8;
  v106 = v100;
  v136 = v106;
  v107 = [v3 addObserverForName:v105 object:0 queue:v4 usingBlock:v135];
  v108 = *MEMORY[0x277D66078];
  v133[0] = MEMORY[0x277D85DD0];
  v133[1] = 3221225472;
  v133[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_39;
  v133[3] = &unk_2783B4BD8;
  v109 = v106;
  v134 = v109;
  v110 = [v3 addObserverForName:v108 object:0 queue:v4 usingBlock:v133];
  v131[0] = MEMORY[0x277D85DD0];
  v131[1] = 3221225472;
  v131[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_41;
  v131[3] = &unk_2783B4BD8;
  v111 = v109;
  v132 = v111;
  v112 = [v3 addObserverForName:@"SBThermalControllerStateDidChange" object:0 queue:v4 usingBlock:v131];
  v129[0] = MEMORY[0x277D85DD0];
  v129[1] = 3221225472;
  v129[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_43;
  v129[3] = &unk_2783B4BD8;
  v113 = v111;
  v130 = v113;
  v114 = [v3 addObserverForName:@"SBRingerChangedNotification" object:0 queue:v4 usingBlock:v129];
  v128[0] = MEMORY[0x277D85DD0];
  v128[1] = 3221225472;
  v128[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_45;
  v128[3] = &unk_2783A8C18;
  v128[4] = self;
  v115 = MEMORY[0x223D6F7F0](v128);
  v116 = self->_statusBarDefaults;
  v117 = [MEMORY[0x277CCACA8] stringWithUTF8String:"showRingerState"];
  v118 = [(SBStatusBarDefaults *)v116 observeDefault:v117 onQueue:MEMORY[0x277D85CD0] withBlock:v115];

  objc_destroyWeak(&v152);
  objc_destroyWeak(&v163);

  objc_destroyWeak(&v168);
  objc_destroyWeak(&v173);

  objc_destroyWeak(&v188);
  objc_destroyWeak(&v207);
  objc_destroyWeak(&location);
}

void __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 _updatePersonNameItem];
  [v2 _updateLockItem];
  [v2 _updateRingerItem];
}

uint64_t __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) showOverridesForRecording];
  v3 = *(a1 + 32);

  return [v3 setShowsOverridesForRecording:v2];
}

void __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_14(uint64_t a1, void *a2)
{
  [a2 updateStatusBarItem:13];
  v2 = +[SBBluetoothController sharedInstance];
  [v2 updateBattery];
}

void __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained callingDomain];
  v3 = [v2 data];

  (*(*(a1 + 32) + 16))();
}

uint64_t __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_19(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = SBLogStatusBarish();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) wifiDomain];
    v4 = [v3 data];
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "STWifiStatusDomainData update: %{public}@", &v6, 0xCu);
  }

  return (*(*(a1 + 40) + 16))();
}

void __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_96(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 updateStatusBarItem:9];
  [v2 updateStatusBarItem:10];
  [v2 updateStatusBarItem:32];
}

void __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_7_108(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_8_109;
  v6[3] = &unk_2783A9878;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_9_111(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained playgroundsDomain];
  v3 = [v2 data];

  (*(*(a1 + 32) + 16))();
}

void __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_10_112(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_11_113;
  v6[3] = &unk_2783A9878;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_12_115(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained statusItemsDomain];
  v3 = [v2 data];

  (*(*(a1 + 32) + 16))();
}

void __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_13_116(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_14_117;
  v6[3] = &unk_2783A9878;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_15_119(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained stewieDomain];
  v3 = [v2 data];

  (*(*(a1 + 32) + 16))();
}

void __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_17_121(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 updateStatusBarItem:4];
  [v2 updateStatusBarItem:5];
  [v2 updateStatusBarItem:6];
  [v2 updateStatusBarItem:7];
  [v2 updateStatusBarItem:9];
  [v2 updateStatusBarItem:10];
  [v2 updateStatusBarItem:32];
  [v2 updateStatusBarItem:30];
  [v2 updateStatusBarItem:31];
  [v2 updateStatusBarItem:45];
}

void __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_22(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    *(WeakRetained + 8697) = [WeakRetained[1] showRSSI];
    [v2 _handleShowRSSIDefaultChange];
    [v2 _updateDataNetworkItemsForRSSIChange];
    WeakRetained = v2;
  }
}

uint64_t __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_23(uint64_t a1)
{
  *(*(a1 + 32) + 8698) = [*(*(a1 + 32) + 8) showThermalWarning];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_26;
  v7[3] = &unk_2783C3680;
  v8 = v3;
  v5 = *(v4 + 16);
  v6 = v3;
  v5(v4, v7);
}

void __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_26(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) object];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 && ([v11[1092] containsObject:v7] & 1) == 0)
  {
    v8 = v11[1092];
    if (!v8)
    {
      v9 = [MEMORY[0x277CBEB18] array];
      v10 = v11[1092];
      v11[1092] = v9;

      v8 = v11[1092];
    }

    [v8 addObject:v7];
    [v11 updateStatusBarItem:16];
  }
}

void __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_28;
  v7[3] = &unk_2783C3680;
  v8 = v3;
  v5 = *(v4 + 16);
  v6 = v3;
  v5(v4, v7);
}

void __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_28(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) object];
  v4 = objc_opt_class();
  v5 = v3;
  if (v4)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7 && [v9[1092] containsObject:v7])
  {
    [v9[1092] removeObject:v7];
    if (![v9[1092] count])
    {
      v8 = v9[1092];
      v9[1092] = 0;
    }

    [v9 updateStatusBarItem:16];
  }
}

void __55__SBStatusBarStateAggregator__registerForNotifications__block_invoke_32(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 updateStatusBarItem:9];
  [v2 updateStatusBarItem:10];
}

- (void)_updateTimeItemsWithDate:(id)a3
{
  v4 = a3;
  v5 = [(NSDateFormatter *)self->_timeItemDateFormatter stringFromDate:v4];
  v6 = [(NSDateFormatter *)self->_dateItemDateFormatter stringFromDate:v4];
  [(SBStatusBarStateAggregator *)self _setItem:0 enabled:1];
  [(SBStatusBarStateAggregator *)self _setItem:1 enabled:1];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__SBStatusBarStateAggregator__updateTimeItemsWithDate___block_invoke;
  v10[3] = &unk_2783C36A8;
  v10[4] = self;
  v7 = MEMORY[0x223D6F7F0](v10);
  if (([v5 isEqualToString:self->_timeItemTimeString] & 1) == 0)
  {
    objc_storeStrong(&self->_timeItemTimeString, v5);
    v8 = [(NSDateFormatter *)self->_shortTimeItemDateFormatter stringFromDate:v4];
    shortTimeItemTimeString = self->_shortTimeItemTimeString;
    self->_shortTimeItemTimeString = v8;

    (v7)[2](v7, self->_timeItemTimeString, self->_data.timeString, 0);
    (v7)[2](v7, self->_shortTimeItemTimeString, self->_data.shortTimeString, 0);
  }

  if (([v6 isEqualToString:self->_dateItemTimeString] & 1) == 0)
  {
    objc_storeStrong(&self->_dateItemTimeString, v6);
    (v7)[2](v7, self->_dateItemTimeString, self->_data.dateString, 1);
  }
}

double __55__SBStatusBarStateAggregator__updateTimeItemsWithDate___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = [a2 getCString:a3 maxLength:64 encoding:4];
  v7 = *(a1 + 32);
  if (v6)
  {

    [v7 _notifyItemChanged:a4];
  }

  else
  {
    result = 0.0;
    *(v7 + 494) = 0u;
    *(v7 + 510) = 0u;
    *(v7 + 462) = 0u;
    *(v7 + 478) = 0u;
  }

  return result;
}

- (BOOL)_isInAirplaneMode
{
  v2 = +[SBAirplaneModeController sharedInstance];
  v3 = [v2 isInAirplaneMode];

  return v3;
}

- (void)_updateAirplaneMode
{
  v3 = [(STStatusItemsStatusDomain *)self->_statusItemsDomain data];
  v4 = [v3 activeStatusItems];
  v5 = [v4 containsObject:*MEMORY[0x277D6BF48]];

  [(SBStatusBarStateAggregator *)self _setItem:3 enabled:v5];
}

- (void)_updateSignalStrengthItem
{
  v3 = [(SBStatusBarStateAggregator *)self telephonyDomain];
  v4 = [v3 data];

  v5 = [v4 primarySIMInfo];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SBStatusBarStateAggregator__updateSignalStrengthItem__block_invoke;
  v7[3] = &unk_2783C36D0;
  v7[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__SBStatusBarStateAggregator__updateSignalStrengthItem__block_invoke_2;
  v6[3] = &unk_2783A95E8;
  v6[4] = self;
  [(SBStatusBarStateAggregator *)self _updateSignalStrengthItem:4 withData:v4 SIMInfo:v5 barsGetter:v7 barsSetter:v6];
}

- (void)_updateSecondarySignalStrengthItem
{
  v3 = [(SBStatusBarStateAggregator *)self telephonyDomain];
  v4 = [v3 data];

  v5 = [v4 secondarySIMInfo];
  *(&self->_data + 3160) = *(&self->_data + 3160) & 0xFB | (4 * (v5 != 0));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__SBStatusBarStateAggregator__updateSecondarySignalStrengthItem__block_invoke;
  v7[3] = &unk_2783C36D0;
  v7[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__SBStatusBarStateAggregator__updateSecondarySignalStrengthItem__block_invoke_2;
  v6[3] = &unk_2783A95E8;
  v6[4] = self;
  [(SBStatusBarStateAggregator *)self _updateSignalStrengthItem:5 withData:v4 SIMInfo:v5 barsGetter:v7 barsSetter:v6];
}

- (void)_updateSignalStrengthItem:(int)a3 withData:(id)a4 SIMInfo:(id)a5 barsGetter:(id)a6 barsSetter:(id)a7
{
  v10 = *&a3;
  v33 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(SBStatusBarStateAggregator *)self _telephonyManager];
  v17 = [v16 containsCellularRadio];
  if (self->_showsRecordingOverrides && v17)
  {
    [(SBStatusBarStateAggregator *)self _setItem:v10 enabled:v10 == 4];
    if (v14[2](v14) != 4)
    {
      v15[2](v15, 4);
LABEL_22:
      [(SBStatusBarStateAggregator *)self _notifyItemChanged:v10];
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v18 = [v12 isCellularRadioCapabilityEnabled];
  v19 = [v13 cellularServiceState];
  if (v13 && v18 && v19 == 2 && ![(SBStatusBarStateAggregator *)self _isInAirplaneMode])
  {
    [(SBStatusBarStateAggregator *)self _setItem:v10 enabled:1];
    v21 = [v13 signalStrengthBars];
  }

  else
  {
    v20 = [v12 isRadioModuleDead];
    [(SBStatusBarStateAggregator *)self _setItem:v10 enabled:v20];
    if ((v20 & 1) == 0)
    {
      goto LABEL_23;
    }

    v21 = [v13 signalStrengthBars];
    if (!v13)
    {
      v22 = SBLogStatusBarish();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "Status bar data manager: reporting 0 signal strength bars because we have no SIM info.", buf, 2u);
      }

      goto LABEL_17;
    }
  }

  if (v21)
  {
    goto LABEL_18;
  }

  v22 = SBLogStatusBarish();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, v22, OS_LOG_TYPE_DEFAULT, "Status bar data manager: telephony domain reports 0 signal strength bars", buf, 2u);
    v21 = 0;
  }

LABEL_17:

LABEL_18:
  v23 = v14[2](v14);
  if (v23 != v21)
  {
    v24 = v23;
    v15[2](v15, v21);
    v25 = SBLogStatusBarish();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = SBStatusBarItemDebugName(v10);
      *buf = 138543874;
      v28 = v26;
      v29 = 1026;
      v30 = v24;
      v31 = 1026;
      v32 = v21;
      _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ changing from '%{public}d' to '%{public}d'", buf, 0x18u);
    }

    goto LABEL_22;
  }

LABEL_23:
}

- (void)_updateServiceItem
{
  v3 = [(SBStatusBarStateAggregator *)self telephonyDomain];
  v4 = [v3 data];

  v5 = [v4 primarySIMInfo];
  v6 = [v4 secondarySIMInfo];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __48__SBStatusBarStateAggregator__updateServiceItem__block_invoke;
  v14[3] = &unk_2783B1D60;
  v14[4] = self;
  v12[4] = self;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __48__SBStatusBarStateAggregator__updateServiceItem__block_invoke_2;
  v13[3] = &unk_2783B6F18;
  v13[4] = self;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__SBStatusBarStateAggregator__updateServiceItem__block_invoke_3;
  v12[3] = &unk_2783B1D60;
  v10[4] = self;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__SBStatusBarStateAggregator__updateServiceItem__block_invoke_4;
  v11[3] = &unk_2783B6F18;
  v11[4] = self;
  v9[4] = self;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__SBStatusBarStateAggregator__updateServiceItem__block_invoke_5;
  v10[3] = &unk_2783C36D0;
  v8[4] = self;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__SBStatusBarStateAggregator__updateServiceItem__block_invoke_6;
  v9[3] = &unk_2783A95E8;
  v7[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __48__SBStatusBarStateAggregator__updateServiceItem__block_invoke_7;
  v8[3] = &unk_2783B1D60;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__SBStatusBarStateAggregator__updateServiceItem__block_invoke_8;
  v7[3] = &unk_2783B6F18;
  [(SBStatusBarStateAggregator *)self _updateServiceItem:6 withData:v4 SIMInfo:v5 otherSIMInfo:v6 serviceStringGetter:v14 serviceStringSetter:v13 serviceCrossfadeStringGetter:v12 serviceCrossfadeStringSetter:v11 serviceContentTypeGetter:v10 serviceContentTypeSetter:v9 serviceBadgeStringGetter:v8 serviceBadgeStringSetter:v7];
}

void __48__SBStatusBarStateAggregator__updateServiceItem__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 8640), a2);
  v4 = a2;
  [*(*(a1 + 32) + 8640) getCString:*(a1 + 32) + 864 maxLength:100 encoding:4];
}

void __48__SBStatusBarStateAggregator__updateServiceItem__block_invoke_4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 8648), a2);
  v4 = a2;
  [*(*(a1 + 32) + 8648) getCString:*(a1 + 32) + 1064 maxLength:100 encoding:4];
}

void __48__SBStatusBarStateAggregator__updateServiceItem__block_invoke_8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 8672), a2);
  v4 = a2;
  [*(*(a1 + 32) + 8672) getCString:*(a1 + 32) + 3577 maxLength:100 encoding:4];
}

- (void)_updateSecondaryServiceItem
{
  v3 = [(SBStatusBarStateAggregator *)self telephonyDomain];
  v4 = [v3 data];

  v5 = [v4 secondarySIMInfo];
  v6 = *(&self->_data + 3160);
  *(&self->_data + 3160) = v6 & 0xFB | (4 * (v5 != 0));
  if (self->_showsRecordingOverrides)
  {
    *(&self->_data + 3160) = v6 & 0xFB;
  }

  else
  {
    v7 = [v4 primarySIMInfo];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __57__SBStatusBarStateAggregator__updateSecondaryServiceItem__block_invoke;
    v15[3] = &unk_2783B1D60;
    v15[4] = self;
    v13[4] = self;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __57__SBStatusBarStateAggregator__updateSecondaryServiceItem__block_invoke_2;
    v14[3] = &unk_2783B6F18;
    v14[4] = self;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __57__SBStatusBarStateAggregator__updateSecondaryServiceItem__block_invoke_3;
    v13[3] = &unk_2783B1D60;
    v11[4] = self;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __57__SBStatusBarStateAggregator__updateSecondaryServiceItem__block_invoke_4;
    v12[3] = &unk_2783B6F18;
    v12[4] = self;
    v10[4] = self;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __57__SBStatusBarStateAggregator__updateSecondaryServiceItem__block_invoke_5;
    v11[3] = &unk_2783C36D0;
    v9[4] = self;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __57__SBStatusBarStateAggregator__updateSecondaryServiceItem__block_invoke_6;
    v10[3] = &unk_2783A95E8;
    v8[4] = self;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __57__SBStatusBarStateAggregator__updateSecondaryServiceItem__block_invoke_7;
    v9[3] = &unk_2783B1D60;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __57__SBStatusBarStateAggregator__updateSecondaryServiceItem__block_invoke_8;
    v8[3] = &unk_2783B6F18;
    [(SBStatusBarStateAggregator *)self _updateServiceItem:7 withData:v4 SIMInfo:v5 otherSIMInfo:v7 serviceStringGetter:v15 serviceStringSetter:v14 serviceCrossfadeStringGetter:v13 serviceCrossfadeStringSetter:v12 serviceContentTypeGetter:v11 serviceContentTypeSetter:v10 serviceBadgeStringGetter:v9 serviceBadgeStringSetter:v8];
  }
}

void __57__SBStatusBarStateAggregator__updateSecondaryServiceItem__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 8656), a2);
  v4 = a2;
  [*(*(a1 + 32) + 8656) getCString:*(a1 + 32) + 964 maxLength:100 encoding:4];
}

void __57__SBStatusBarStateAggregator__updateSecondaryServiceItem__block_invoke_4(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 8664), a2);
  v4 = a2;
  [*(*(a1 + 32) + 8664) getCString:*(a1 + 32) + 1164 maxLength:100 encoding:4];
}

void __57__SBStatusBarStateAggregator__updateSecondaryServiceItem__block_invoke_8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(a1 + 32) + 8680), a2);
  v4 = a2;
  [*(*(a1 + 32) + 8680) getCString:*(a1 + 32) + 3677 maxLength:100 encoding:4];
}

- (void)_updateServiceItem:(int)a3 withData:(id)a4 SIMInfo:(id)a5 otherSIMInfo:(id)a6 serviceStringGetter:(id)a7 serviceStringSetter:(id)a8 serviceCrossfadeStringGetter:(id)a9 serviceCrossfadeStringSetter:(id)a10 serviceContentTypeGetter:(id)a11 serviceContentTypeSetter:(id)a12 serviceBadgeStringGetter:(id)a13 serviceBadgeStringSetter:(id)a14
{
  v91 = *MEMORY[0x277D85DE8];
  v84 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v83 = a9;
  v81 = a10;
  v82 = a11;
  v22 = a12;
  v23 = a13;
  v24 = a14;
  if (self->_showsRecordingOverrides)
  {
    [(SBStatusBarStateAggregator *)self _setItem:a3 enabled:1];
    v21[2](v21, &stru_283094718);
    v22[2](v22, 4);
    v25 = v84;
    v26 = v18;
    v27 = v19;
    v28 = v26;
    goto LABEL_77;
  }

  v29 = v18;
  if (!v18 || self->_suppressCellServiceForAirplaneModeTransition)
  {
    [(SBStatusBarStateAggregator *)self _setItem:a3 enabled:0];
    v25 = v84;
    v27 = v19;
    v28 = v29;
    goto LABEL_77;
  }

  v25 = v84;
  v27 = v19;
  if ([(SBStatusBarStateAggregator *)self _isInAirplaneMode])
  {
    v77 = v21;
    v30 = v29;
    v31 = [v29 isRegisteredWithoutCellular];
    [(SBStatusBarStateAggregator *)self _setItem:a3 enabled:v31];
    v28 = v30;
    v21 = v77;
    if ((v31 & 1) == 0)
    {
      goto LABEL_77;
    }
  }

  else
  {
    [(SBStatusBarStateAggregator *)self _setItem:a3 enabled:1];
    v28 = v29;
  }

  v80 = v20;
  v78 = [v84 isCellularRadioCapabilityEnabled];
  if ((v78 & 1) != 0 || [v28 isRegisteredWithoutCellular])
  {
    v75 = [v28 serviceDescription];
  }

  else
  {
    v32 = MGCopyAnswer();
    if (v32)
    {
      v33 = v32;
    }

    else
    {
      v33 = 0;
    }

    v75 = v33;
  }

  v34 = [(SBStatusBarStateAggregator *)self _shouldShowEmergencyOnlyStatusForInfo:v28];
  v35 = [v28 serviceState];
  v36 = [v84 isInactiveSOSEnabled];
  if ([v28 isBootstrap])
  {
    v73 = 0;
    if (((v34 | v36) & 1 & ((v35 & 0xFFFFFFFFFFFFFFFELL) == 2)) != 0)
    {
      v37 = 2;
    }

    else
    {
      v37 = 0;
    }

    *(&self->_data + 3160) = *(&self->_data + 3160) & 0xFC | (v34 | v36) & 1 | v37;
    v38 = 7;
    goto LABEL_27;
  }

  if (v78)
  {
    v39 = v35;
    v40 = self;
    if (v35 == 2)
    {
      v71 = 0;
      v73 = 0;
      v41 = a3;
      if (v34)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v34)
      {
        *(&self->_data + 3160) |= 1u;
        v42 = [v28 secondaryServiceDescription];
        v40 = self;
        v73 = v42;
        v43 = v34;
      }

      else
      {
        v43 = 0;
        v73 = 0;
      }

      v41 = a3;
      if (v39 == 1)
      {
        v71 = 5;
      }

      else
      {
        if ([v84 isUsingStewieConnection])
        {
          v71 = 0;
        }

        else
        {
          if ([v84 isRadioModuleDead])
          {
            v44 = 6;
          }

          else
          {
            v44 = 1;
          }

          v71 = v44;
        }

        v40 = self;
        v43 = v34;
      }

      if (v43)
      {
        goto LABEL_43;
      }

      v45 = [(SBStatusBarStateAggregator *)v40 _shouldShowEmergencyOnlyStatusForInfo:v27];
      v40 = self;
      if (v45)
      {
        goto LABEL_43;
      }
    }

    *(&v40->_data + 3160) = *(&v40->_data + 3160) & 0xFE | v36;
LABEL_43:
    if ((*(&v40->_data + 3160) & ((v39 & 0xFFFFFFFFFFFFFFFELL) == 2)) != 0)
    {
      v46 = 2;
    }

    else
    {
      v46 = 0;
    }

    *(&v40->_data + 3160) = v46 | *(&v40->_data + 3160) & 0xFD;
    goto LABEL_47;
  }

  v73 = 0;
  *(&self->_data + 3160) &= 0xFCu;
  v38 = 2;
LABEL_27:
  v71 = v38;
  v41 = a3;
LABEL_47:
  v47 = SBLogStatusBarish();
  v25 = v84;
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    v48 = *(&self->_data + 3160);
    *buf = 67240448;
    *v88 = v48 & 1;
    *&v88[4] = 1026;
    *&v88[6] = (v48 >> 1) & 1;
    _os_log_impl(&dword_21ED4E000, v47, OS_LOG_TYPE_DEFAULT, "shouldShowEmergencyOnlyStatus: %{public}i, emergencyOnly: %{public}i", buf, 0xEu);
  }

  v69 = v27;

  v49 = @"secondary ";
  if (v41 != 7)
  {
    v49 = &stru_283094718;
  }

  v79 = v49;
  if (v71 != v82[2]())
  {
    v50 = SBLogStatusBarish();
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      serviceContentType = self->_data.serviceContentType;
      *buf = 138543874;
      *v88 = v79;
      *&v88[8] = 1024;
      *v89 = serviceContentType;
      *&v89[4] = 1024;
      *&v89[6] = v71;
      _os_log_impl(&dword_21ED4E000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@serviceContent changing from %i to %i", buf, 0x18u);
    }

    v22[2](v22, v71);
    [(SBStatusBarStateAggregator *)self _notifyItemChanged:v41];
  }

  v52 = &stru_283094718;
  if (v75)
  {
    v52 = v75;
  }

  v53 = v41;
  v54 = v52;

  v55 = v80[2]();
  v76 = v54;
  v56 = v54;
  v57 = v53;
  v72 = v55;
  v27 = v69;
  if (([(__CFString *)v56 isEqualToString:?]& 1) == 0)
  {
    v58 = SBLogStatusBarish();
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      v59 = SBStatusBarItemDebugName(v57);
      *buf = 138543874;
      *v88 = v59;
      *&v88[8] = 2114;
      *v89 = v72;
      *&v89[8] = 2114;
      v90 = v76;
      _os_log_impl(&dword_21ED4E000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@ changing from '%{public}@' to '%{public}@'", buf, 0x20u);

      v57 = a3;
    }

    v21[2](v21, v76);
    [(SBStatusBarStateAggregator *)self _notifyItemChanged:v57];
    [(SBStatusBarStateAggregator *)self _requestActions:1];
  }

  v60 = &stru_283094718;
  if (v73)
  {
    v60 = v73;
  }

  v61 = v60;

  v83[2]();
  v70 = v74 = v61;
  if (([(__CFString *)v61 isEqualToString:?]& 1) == 0)
  {
    v62 = SBLogStatusBarish();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *v88 = v79;
      *&v88[8] = 2114;
      *v89 = v70;
      *&v89[8] = 2114;
      v90 = v61;
      _os_log_impl(&dword_21ED4E000, v62, OS_LOG_TYPE_DEFAULT, "%{public}@serviceCrossfade changing from '%{public}@' to '%{public}@'", buf, 0x20u);
    }

    v81[2](v81, v61);
    [(SBStatusBarStateAggregator *)self _notifyItemChanged:a3];
    [(SBStatusBarStateAggregator *)self _requestActions:8];
  }

  v63 = &stru_283094718;
  if (v69)
  {
    v64 = [v28 shortLabel];
    v65 = v64;
    if (v64)
    {
      v66 = v64;
    }

    else
    {
      v66 = &stru_283094718;
    }

    v63 = v66;
  }

  v67 = v23[2](v23);
  if (([(__CFString *)v63 isEqualToString:v67]& 1) == 0)
  {
    v68 = SBLogStatusBarish();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *v88 = v79;
      *&v88[8] = 2114;
      *v89 = v67;
      *&v89[8] = 2114;
      v90 = v63;
      _os_log_impl(&dword_21ED4E000, v68, OS_LOG_TYPE_DEFAULT, "%{public}@serviceBadgeString changing from '%{public}@' to '%{public}@'", buf, 0x20u);
    }

    v24[2](v24, v63);
    [(SBStatusBarStateAggregator *)self _notifyItemChanged:a3];
  }

  v20 = v80;
LABEL_77:
}

- (void)_updateDataNetworkItem
{
  v3 = [(SBStatusBarStateAggregator *)self telephonyDomain];
  v4 = [v3 data];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SBStatusBarStateAggregator__updateDataNetworkItem__block_invoke;
  v6[3] = &unk_2783C36D0;
  v6[4] = self;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__SBStatusBarStateAggregator__updateDataNetworkItem__block_invoke_2;
  v5[3] = &unk_2783A95E8;
  v5[4] = self;
  [(SBStatusBarStateAggregator *)self _updateDataNetworkItem:9 withData:v4 primary:1 dataNetworkTypeGetter:v6 dataNetworkTypeSetter:v5];
}

- (void)_updateSecondaryDataNetworkItem
{
  v3 = [(SBStatusBarStateAggregator *)self telephonyDomain];
  v4 = [v3 data];

  v5 = [v4 secondarySIMInfo];
  *(&self->_data + 3160) = *(&self->_data + 3160) & 0xFB | (4 * (v5 != 0));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__SBStatusBarStateAggregator__updateSecondaryDataNetworkItem__block_invoke;
  v7[3] = &unk_2783C36D0;
  v7[4] = self;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__SBStatusBarStateAggregator__updateSecondaryDataNetworkItem__block_invoke_2;
  v6[3] = &unk_2783A95E8;
  v6[4] = self;
  [(SBStatusBarStateAggregator *)self _updateDataNetworkItem:10 withData:v4 primary:0 dataNetworkTypeGetter:v7 dataNetworkTypeSetter:v6];
}

- (void)_updateDataNetworkItem:(int)a3 withData:(id)a4 primary:(BOOL)a5 dataNetworkTypeGetter:(id)a6 dataNetworkTypeSetter:(id)a7
{
  v8 = a5;
  v48 = *MEMORY[0x277D85DE8];
  v42 = a7;
  v12 = (a6 + 16);
  v11 = *(a6 + 2);
  v13 = a6;
  v14 = a4;
  v15 = v11(v13);
  cachedShowRSSI = self->_cachedShowRSSI;
  v17 = [v14 primarySIMInfo];
  v18 = [v14 secondarySIMInfo];

  if (v8)
  {
    v19 = v17;
  }

  else
  {
    v19 = v18;
  }

  v20 = v19;
  v40 = v20;
  v41 = v18;
  if (self->_showsRecordingOverrides)
  {
    v39 = 0;
    v15 = 5;
    v21 = 3;
LABEL_11:
    v25 = v8;
    goto LABEL_12;
  }

  v22 = v20;
  HIDWORD(v39) = cachedShowRSSI;
  if (([v17 isProvidingDataConnection] & 1) != 0 || objc_msgSend(v18, "isProvidingDataConnection"))
  {
    v8 = [v22 isProvidingDataConnection];
  }

  v23 = +[SBBluetoothController sharedInstance];
  v24 = [v23 tetheringConnected];

  if (v24)
  {
    LODWORD(v39) = 0;
    v21 = 0;
    v15 = 6;
    goto LABEL_11;
  }

  v38 = v17;
  v34 = [(SBStatusBarStateAggregator *)self wifiDomain];
  v35 = [v34 data];

  if ([v35 isWifiActive])
  {
    if ([v35 isAssociatedToIOSHotspot])
    {
      v15 = 6;
    }

    else
    {
      v15 = 5;
    }

    v21 = [v35 signalStrengthBars];
    v36 = +[SBWiFiManager sharedInstance];
    LODWORD(v39) = [v36 signalStrengthRSSI];

LABEL_40:
    v25 = v8;
  }

  else
  {
    v8 = [v22 isProvidingDataConnection];
    if (v22)
    {
      v37 = [v22 dataNetworkType];
      LODWORD(v39) = 0;
      v21 = 0;
      v15 = 7;
      v25 = v8;
      switch(v37)
      {
        case 1:
          break;
        case 2:
          LODWORD(v39) = 0;
          v21 = 0;
          v15 = 0;
          goto LABEL_40;
        case 3:
          LODWORD(v39) = 0;
          v21 = 0;
          v15 = 1;
          goto LABEL_40;
        case 4:
        case 5:
          LODWORD(v39) = 0;
          v21 = 0;
          v15 = 2;
          goto LABEL_40;
        case 6:
          LODWORD(v39) = 0;
          v21 = 0;
          v15 = 3;
          goto LABEL_40;
        case 7:
          LODWORD(v39) = 0;
          v21 = 0;
          v15 = 4;
          goto LABEL_40;
        case 8:
          LODWORD(v39) = 0;
          v21 = 0;
          v15 = 9;
          goto LABEL_40;
        case 9:
          LODWORD(v39) = 0;
          v21 = 0;
          v15 = 10;
          goto LABEL_40;
        case 10:
          LODWORD(v39) = 0;
          v21 = 0;
          v15 = 8;
          goto LABEL_40;
        case 11:
          LODWORD(v39) = 0;
          v21 = 0;
          v15 = 11;
          goto LABEL_40;
        case 12:
          LODWORD(v39) = 0;
          v21 = 0;
          v15 = 12;
          goto LABEL_40;
        case 13:
          LODWORD(v39) = 0;
          v21 = 0;
          v15 = 13;
          goto LABEL_40;
        case 14:
          LODWORD(v39) = 0;
          v21 = 0;
          v15 = 14;
          goto LABEL_40;
        case 15:
          LODWORD(v39) = 0;
          v21 = 0;
          v15 = 15;
          goto LABEL_40;
        case 16:
          LODWORD(v39) = 0;
          v21 = 0;
          v15 = 16;
          goto LABEL_40;
        default:
          goto LABEL_44;
      }
    }

    else
    {
LABEL_44:
      LODWORD(v39) = 0;
      v21 = 0;
      v25 = 0;
    }
  }

  v17 = v38;
LABEL_12:
  v26 = [(SBStatusBarStateAggregator *)self _setItem:a3 enabled:v25];
  v27 = (*v12)(v13);

  if (v15 == v27)
  {
    v28 = v42;
    if (!v8)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v28 = v42;
    (*(v42 + 2))(v42, v15);
    if (v25)
    {
      [(SBStatusBarStateAggregator *)self _notifyItemChanged:a3];
    }

    v26 = 1;
    if (!v8)
    {
      goto LABEL_30;
    }
  }

  if (v21 != self->_data.wifiSignalStrengthBars)
  {
    self->_data.wifiSignalStrengthBars = v21;
    if (v25)
    {
      [(SBStatusBarStateAggregator *)self _notifyItemChanged:a3];
    }
  }

  if (v39 != self->_data.wifiSignalStrengthRaw)
  {
    self->_data.wifiSignalStrengthRaw = v39;
    if ((v25 & HIDWORD(v39)) == 1)
    {
      [(SBStatusBarStateAggregator *)self _notifyItemChanged:a3];
    }
  }

  v29 = *(&self->_data + 2529);
  if (((HIDWORD(v39) ^ ((v29 & 4) == 0)) & 1) == 0)
  {
    if (HIDWORD(v39))
    {
      v30 = 4;
    }

    else
    {
      v30 = 0;
    }

    *(&self->_data + 2529) = v29 & 0xFB | v30;
    if (!v25)
    {
      goto LABEL_34;
    }

    [(SBStatusBarStateAggregator *)self _notifyItemChanged:a3];
  }

LABEL_30:
  if ((v25 & v26) == 1)
  {
    v31 = SBLogStatusBarish();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = SBStatusBarItemDebugName(a3);
      v33 = SBStatusBarDataNetworkDebugName(v15);
      *buf = 138543618;
      v45 = v32;
      v46 = 2114;
      v47 = v33;
      _os_log_impl(&dword_21ED4E000, v31, OS_LOG_TYPE_DEFAULT, "%{public}@ changed to %{public}@", buf, 0x16u);
    }
  }

LABEL_34:
}

- (void)_handleShowRSSIDefaultChange
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = v3;
  if (self->_cachedShowRSSI)
  {
    [v3 addObserver:self selector:sel__updateDataNetworkItemsForRSSIChange name:@"SBWifiManagerRSSIChangedNotification" object:0];
  }

  else
  {
    [v3 removeObserver:self name:@"SBWifiManagerRSSIChangedNotification" object:0];
  }
}

- (void)_updateDataNetworkItemsForRSSIChange
{
  [(SBStatusBarStateAggregator *)self beginCoalescentBlock];
  [(SBStatusBarStateAggregator *)self updateStatusBarItem:9];
  [(SBStatusBarStateAggregator *)self updateStatusBarItem:10];

  [(SBStatusBarStateAggregator *)self endCoalescentBlock];
}

- (void)_updateLiquidDetectionItem
{
  v3 = [(STStatusItemsStatusDomain *)self->_statusItemsDomain data];
  v4 = [v3 activeStatusItems];
  v5 = [v4 containsObject:*MEMORY[0x277D6BF68]];

  [(SBStatusBarStateAggregator *)self _setItem:40 enabled:v5];
}

- (void)_updateStewieItem
{
  v2 = [(SBStatusBarStateAggregator *)self telephonyDomain];
  v3 = [v2 data];

  LOBYTE(v2) = [v3 isUsingStewieForSOS];
  v4 = [v3 isUsingStewieConnection];
  if (v2)
  {
    [MEMORY[0x277D6BAE8] entryWithConnectionStatus:v4];
  }

  else
  {
    [MEMORY[0x277D6BAE8] disabledEntry];
  }
  v5 = ;
  v6 = [MEMORY[0x277D6BFE0] sharedInstance];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__SBStatusBarStateAggregator__updateStewieItem__block_invoke;
  v8[3] = &unk_2783C36F8;
  v9 = v5;
  v7 = v5;
  [v6 updateWithData:v8];
}

- (void)_updateBatteryItems
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(SBStatusBarStateAggregator *)self _batteryDomainData];
  v4 = [v3 chargingState];
  [(SBStatusBarStateAggregator *)self setBatteryChargingState:v4];
  if (self->_showsRecordingOverrides)
  {
    v5 = 100;
  }

  else
  {
    v5 = [v3 percentCharge];
  }

  v6 = [(SBStatusBarStateAggregator *)self _statusBarBatteryStateForSystemStatusChargingState:v4];
  v7 = [v3 chargingDescriptionType];
  v8 = [v3 isBatterySaverModeActive];
  if (v5 <= 0)
  {
    v9 = SBLogStatusBarish();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = SBStatusBarBatteryStateDebugName(v6);
      v25 = 138543618;
      v26 = v10;
      v27 = 1024;
      v28 = v5;
      _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "battery info changed to unpresentable (%{public}@ %i), resetting to capacity 1", &v25, 0x12u);
    }

    v5 = 1;
  }

  v11 = [v3 chargingDescription];
  v12 = v11;
  v13 = &stru_283094718;
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  if (self->_showsRecordingOverrides)
  {
    v15 = [MEMORY[0x277CF0DA8] localizedBatteryDetailTextForBatteryLevel:100.0];

    v14 = v15;
  }

  if (os_variant_has_internal_content() && ([(SBStatusBarDefaults *)self->_statusBarDefaults showBatteryLevel]& 1) != 0)
  {
    v16 = 1;
  }

  else
  {
    v17 = [MEMORY[0x277CF0CA8] sharedInstance];
    v18 = [v17 hasGasGauge];

    if (v18)
    {
      v16 = [(SBStatusBarDefaults *)self->_statusBarDefaults showBatteryPercentage];
    }

    else
    {
      v16 = 0;
    }
  }

  v19 = [(__CFString *)v14 isEqualToString:self->_batteryDetailString];
  if ((v19 & 1) == 0)
  {
    objc_storeStrong(&self->_batteryDetailString, v14);
    [(NSString *)self->_batteryDetailString getCString:self->_data.batteryDetailString maxLength:150 encoding:4];
  }

  if (v5 == self->_data.batteryCapacity && v6 == self->_data.batteryState && v8 == (*(&self->_data + 2536) & 1))
  {
    [(SBStatusBarStateAggregator *)self _setItem:12 enabled:1];
    [(SBStatusBarStateAggregator *)self _setItem:13 enabled:v16];
    [(SBStatusBarStateAggregator *)self _setItem:14 enabled:v7 == 2];
    if (v19)
    {
      goto LABEL_27;
    }
  }

  else
  {
    self->_data.batteryCapacity = v5;
    self->_data.batteryState = v6;
    *(&self->_data + 2536) = *(&self->_data + 2536) & 0xFE | v8;
    [(SBStatusBarStateAggregator *)self _setItem:12 enabled:1];
    [(SBStatusBarStateAggregator *)self _setItem:13 enabled:v16];
    [(SBStatusBarStateAggregator *)self _setItem:14 enabled:v7 == 2];
  }

  v20 = SBLogStatusBarish();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = SBStatusBarBatteryStateDebugName(v6);
    batteryDetailString = self->_batteryDetailString;
    v25 = 138544130;
    v26 = v21;
    v27 = 1024;
    v28 = v5;
    v29 = 2114;
    v30 = batteryDetailString;
    v31 = 1024;
    v32 = v8;
    _os_log_impl(&dword_21ED4E000, v20, OS_LOG_TYPE_DEFAULT, "battery info changed to (%{public}@ %i) with detail='%{public}@', low power mode='%i'", &v25, 0x22u);
  }

  [(SBStatusBarStateAggregator *)self _notifyItemChanged:12];
  [(SBStatusBarStateAggregator *)self _notifyItemChanged:13];
  [(SBStatusBarStateAggregator *)self _notifyItemChanged:14];
LABEL_27:
  if (self->_showsRecordingOverrides)
  {
    self->_data.batteryState = 0;
    v23 = [MEMORY[0x277D75418] currentDevice];
    v24 = [v23 userInterfaceIdiom];

    if ((v24 & 0xFFFFFFFFFFFFFFFBLL) != 1)
    {
      [(SBStatusBarStateAggregator *)self _setItem:13 enabled:0];
    }
  }
}

- (int)_statusBarBatteryStateForSystemStatusChargingState:(unint64_t)a3
{
  if (a3 - 1 < 3)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v9 = a3;
  v4 = [v9 state];
  if (v4 == 10 || v4 == 5)
  {
    v8 = [v9 retrieveConnectedPeripheralsWithServices:0 allowAll:1];
    if ([v8 count])
    {
      v6 = [v8 mutableCopy];
      connectedLEBluetoothDevices = self->_connectedLEBluetoothDevices;
      self->_connectedLEBluetoothDevices = v6;
    }
  }

  else
  {
    v8 = self->_connectedLEBluetoothDevices;
    self->_connectedLEBluetoothDevices = 0;
  }

  [(SBStatusBarStateAggregator *)self updateStatusBarItem:16];
}

- (void)centralManager:(id)a3 didUpdatePeripheralConnectionState:(id)a4
{
  v11 = a4;
  v5 = [v11 isConnectedToSystem];
  v6 = [(NSMutableArray *)self->_connectedLEBluetoothDevices containsObject:v11];
  if (v5)
  {
    if (v6)
    {
      goto LABEL_10;
    }

    connectedLEBluetoothDevices = self->_connectedLEBluetoothDevices;
    if (!connectedLEBluetoothDevices)
    {
      v8 = [MEMORY[0x277CBEB18] array];
      v9 = self->_connectedLEBluetoothDevices;
      self->_connectedLEBluetoothDevices = v8;

      connectedLEBluetoothDevices = self->_connectedLEBluetoothDevices;
    }

    [(NSMutableArray *)connectedLEBluetoothDevices addObject:v11];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_10;
    }

    [(NSMutableArray *)self->_connectedLEBluetoothDevices removeObject:v11];
    if (![(NSMutableArray *)self->_connectedLEBluetoothDevices count])
    {
      v10 = self->_connectedLEBluetoothDevices;
      self->_connectedLEBluetoothDevices = 0;
    }
  }

  [(SBStatusBarStateAggregator *)self updateStatusBarItem:16];
LABEL_10:
}

- (void)_updateBluetoothItem
{
  v9 = *MEMORY[0x277D85DE8];
  if (MGGetBoolAnswer() && (v3 = [(NSMutableArray *)self->_connectedClassicBluetoothDevices count], v3 + [(NSMutableArray *)self->_connectedLEBluetoothDevices count]))
  {
    v5 = [(SBStatusBarStateAggregator *)self _setItem:16 enabled:1];
    if (*(&self->_data + 2529))
    {
      if (!v5)
      {
        return;
      }
    }

    else
    {
      *(&self->_data + 2529) |= 1u;
      [(SBStatusBarStateAggregator *)self _notifyItemChanged:16];
      [(SBStatusBarStateAggregator *)self _requestActions:2];
    }
  }

  else
  {
    v4 = [(SBStatusBarStateAggregator *)self _setItem:16 enabled:0];
    *(&self->_data + 2529) &= ~1u;
    if (!v4)
    {
      return;
    }
  }

  v6 = SBLogStatusBarish();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(&self->_data + 2529) & 1;
    v8[0] = 67109120;
    v8[1] = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "bluetoothConnected changed to %i", v8, 8u);
  }
}

- (void)_updateBluetoothBatteryItem
{
  if (MGGetBoolAnswer())
  {
    v3 = +[SBBluetoothController sharedInstance];
    if ([v3 canReportBatteryLevel] && self->_shouldShowBluetoothHeadphoneBatteryPercent)
    {
      v4 = [v3 batteryLevel];

      [(SBStatusBarStateAggregator *)self _setItem:15 enabled:1];
      if (v4 != self->_data.bluetoothBatteryCapacity)
      {
        self->_data.bluetoothBatteryCapacity = v4;

        [(SBStatusBarStateAggregator *)self _notifyItemChanged:15];
      }

      return;
    }
  }

  [(SBStatusBarStateAggregator *)self _setItem:15 enabled:0];
}

- (void)_updateTTYItem
{
  v3 = [(STStatusItemsStatusDomain *)self->_statusItemsDomain data];
  v4 = [v3 activeStatusItems];
  v5 = [v4 containsObject:*MEMORY[0x277D6BF80]];

  [(SBStatusBarStateAggregator *)self _setItem:17 enabled:v5];
}

- (void)_updateAlarmItem
{
  v3 = [(STStatusItemsStatusDomain *)self->_statusItemsDomain data];
  v4 = [v3 activeStatusItems];
  v5 = [v4 containsObject:*MEMORY[0x277D6BF50]];

  [(SBStatusBarStateAggregator *)self _setItem:18 enabled:v5];
}

- (void)_updateVPNItem
{
  v3 = [(STStatusItemsStatusDomain *)self->_statusItemsDomain data];
  v4 = [v3 activeStatusItems];
  v5 = [v4 containsObject:*MEMORY[0x277D6BF88]];

  [(SBStatusBarStateAggregator *)self _setItem:29 enabled:v5];
}

- (void)_updateStudentItem
{
  v3 = [(STStatusItemsStatusDomain *)self->_statusItemsDomain data];
  v4 = [v3 activeStatusItems];
  v5 = [v4 containsObject:*MEMORY[0x277D6BF78]];

  [(SBStatusBarStateAggregator *)self _setItem:27 enabled:v5];
}

- (void)_updateCallForwardingItem
{
  v3 = [(SBStatusBarStateAggregator *)self telephonyDomain];
  v4 = [v3 data];
  v5 = [v4 primarySIMInfo];

  [(SBStatusBarStateAggregator *)self _updateCallForwardingItem:30 withInfo:v5];
}

- (void)_updateSecondaryCallForwardingItem
{
  v3 = [(SBStatusBarStateAggregator *)self telephonyDomain];
  v4 = [v3 data];
  v5 = [v4 secondarySIMInfo];

  [(SBStatusBarStateAggregator *)self _updateCallForwardingItem:31 withInfo:v5];
}

- (void)_updateCallForwardingItem:(int)a3 withInfo:(id)a4
{
  v4 = *&a3;
  v6 = [a4 isCallForwardingEnabled];

  [(SBStatusBarStateAggregator *)self _setItem:v4 enabled:v6];
}

- (void)_updateVoiceControlItem
{
  v3 = [(SBStatusBarStateAggregator *)self voiceControlDomain];
  v8 = [v3 data];

  v4 = [v8 isVoiceControlActive];
  [(SBStatusBarStateAggregator *)self _setItem:41 enabled:v4];
  if (v4)
  {
    v5 = [v8 listeningState];
    v6 = 2 * (v5 == 2);
    if (v5 == 1)
    {
      v6 = 1;
    }

    v7 = *(&self->_data + 2529);
    if (v6 != ((v7 >> 5) & 3))
    {
      *(&self->_data + 2529) = v7 & 0x9F | (32 * v6);
      [(SBStatusBarStateAggregator *)self _notifyItemChanged:41];
    }
  }
}

- (void)_updateLocationItemForLocationAttributions:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a3 count];
  v5 = *(&self->_data + 2529);
  v6 = v5 & 0xE7;
  if (self->_prominentLocationOverride)
  {
    v6 = v5 & 0xE7 | 0x10;
  }

  if (v4)
  {
    prominentLocationOverride = 1;
  }

  else
  {
    prominentLocationOverride = self->_prominentLocationOverride;
  }

  *(&self->_data + 2529) = v6;
  v8 = (v6 ^ v5) & 0x18;
  v9 = [(SBStatusBarStateAggregator *)self _setItem:21 enabled:prominentLocationOverride];
  if (prominentLocationOverride && (v8 != 0 || v9))
  {
    [(SBStatusBarStateAggregator *)self _notifyItemChanged:21];
    if (v8)
    {
      v10 = SBLogStatusBarish();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = (*(&self->_data + 2529) >> 3) & 3;
        v12[0] = 67109120;
        v12[1] = v11;
        _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "locationType changed to %i", v12, 8u);
      }
    }
  }
}

- (void)_updateRotationLockItem
{
  v3 = [(STStatusItemsStatusDomain *)self->_statusItemsDomain data];
  v4 = [v3 activeStatusItems];
  v5 = [v4 containsObject:*MEMORY[0x277D6BF70]];

  [(SBStatusBarStateAggregator *)self _setItem:22 enabled:v5];
}

- (void)_updateAirplayItem
{
  if (self->_showsRecordingOverrides)
  {
    v3 = 0;
  }

  else
  {
    v4 = [(STStatusItemsStatusDomain *)self->_statusItemsDomain data];
    v5 = [v4 activeStatusItems];
    v3 = [v5 containsObject:*MEMORY[0x277D6BF40]];
  }

  [(SBStatusBarStateAggregator *)self _setItem:24 enabled:v3];
}

- (void)_updateThermalColorItem
{
  if (os_variant_has_internal_content() && self->_cachedShowThermalWarning)
  {
    v3 = +[SBThermalController sharedInstance];
    v4 = [objc_opt_class() _thermalColorForLevel:{objc_msgSend(v3, "level")}];
    v5 = v4 != 0;
    if (v4)
    {
      v6 = [v3 isInSunlight];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v4 = 0;
    v5 = 0;
  }

  [(SBStatusBarStateAggregator *)self _setItem:33 enabled:v5];
  v7 = *(&self->_data + 2272);
  if (self->_data.thermalColor != v4 || v6 != (v7 & 1))
  {
    self->_data.thermalColor = v4;
    *(&self->_data + 2272) = v7 & 0xFE | v6;

    [(SBStatusBarStateAggregator *)self _notifyItemChanged:33];
  }
}

- (void)_updateDisplayWarningItem
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = [(STStatusItemsStatusDomain *)self->_statusItemsDomain data];
  v4 = [v3 activeStatusItems];
  v5 = [v4 containsObject:*MEMORY[0x277D6BF60]];

  v6 = SBLogStatusBarish();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"disabled";
    if (v5)
    {
      v7 = @"enabled";
    }

    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Display reference mode warning %{public}@", &v8, 0xCu);
  }

  [(SBStatusBarStateAggregator *)self _setItem:44 enabled:v5];
}

- (void)_updateCarPlayItem
{
  v3 = [(STStatusItemsStatusDomain *)self->_statusItemsDomain data];
  v4 = [v3 activeStatusItems];
  v5 = [v4 containsObject:*MEMORY[0x277D6BF58]];

  [(SBStatusBarStateAggregator *)self _setItem:26 enabled:v5];
}

- (void)_updateSensorActivityItem
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [SBApp windowSceneManager];
  v4 = [v3 connectedWindowScenes];

  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    LOBYTE(v7) = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) recordingIndicatorManager];
        v11 = v10;
        if (v7)
        {
          v7 = 1;
        }

        else
        {
          v7 = [v10 isIndicatorVisibleAtStatusBarLocation];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  [(SBStatusBarStateAggregator *)self _setItem:28 enabled:v7];
}

- (void)_updatePersonNameItem
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(SBStatusBarStateAggregator *)self _shouldShowPersonName])
  {
    overridePersonName = self->_overridePersonName;
    if (overridePersonName)
    {
      v4 = overridePersonName;
    }

    else
    {
      v5 = [(SBStatusBarStateAggregator *)self _userSessionController];
      v6 = [v5 user];
      v4 = [v6 displayName];
    }
  }

  else
  {
    v4 = 0;
  }

  if (![(NSString *)self->_personName isEqualToString:v4])
  {
    v7 = SBLogStatusBarish();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      personName = self->_personName;
      v12 = 138543618;
      v13 = personName;
      v14 = 2114;
      v15 = v4;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "personName changing from '%{public}@' to '%{public}@'", &v12, 0x16u);
    }

    v9 = self->_personName;
    self->_personName = v4;
    v10 = v4;

    [(SBStatusBarStateAggregator *)self beginCoalescentBlock];
    [(SBStatusBarStateAggregator *)self _setItem:8 enabled:[(NSString *)self->_personName length]!= 0];
    v11 = &stru_283094718;
    if (v10)
    {
      v11 = v10;
    }

    v4 = v11;

    [(NSString *)v4 getCString:self->_data.personName maxLength:100 encoding:4];
    [(SBStatusBarStateAggregator *)self _notifyItemChanged:8];
    [(SBStatusBarStateAggregator *)self _updateServiceItem];
    [(SBStatusBarStateAggregator *)self _updateSecondaryServiceItem];
    [(SBStatusBarStateAggregator *)self endCoalescentBlock];
  }
}

- (void)_updateCallToActionItem
{
  v3 = [(STStatusItemsStatusDomain *)self->_statusItemsDomain data];
  v4 = [v3 attributions];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __53__SBStatusBarStateAggregator__updateCallToActionItem__block_invoke;
  v22[3] = &unk_2783C3720;
  v5 = v3;
  v23 = v5;
  v6 = [v4 bs_firstObjectPassingTest:v22];

  v7 = [v6 statusItemIdentifier];
  if ((BSEqualObjects() & 1) == 0)
  {
    v8 = [v7 copy];
    callToActionIdentifier = self->_callToActionIdentifier;
    self->_callToActionIdentifier = v8;

    if (self->_callToActionIdentifier)
    {
      v10 = [v5 visualDescriptorForStatusItemWithIdentifier:v7];
      v11 = MEMORY[0x277D6BAB0];
      v12 = [v10 systemImageName];
      v13 = [v11 entryWithImageNamed:v12];
    }

    else
    {
      v13 = [MEMORY[0x277D6BAB0] disabledEntry];
    }

    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __53__SBStatusBarStateAggregator__updateCallToActionItem__block_invoke_2;
    v20 = &unk_2783C36F8;
    v21 = v13;
    v14 = v13;
    v15 = MEMORY[0x223D6F7F0](&v17);
    v16 = [MEMORY[0x277D6BFE0] sharedInstance];
    [v16 updateWithData:v15];
  }
}

uint64_t __53__SBStatusBarStateAggregator__updateCallToActionItem__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 statusItemIdentifier];
  v4 = [*(a1 + 32) visualDescriptorForStatusItemWithIdentifier:v3];
  v5 = [v4 isCallToAction];

  return v5;
}

- (void)_updateRingerItem
{
  v3 = [SBApp ringerControl];
  v4 = [(SBRingerControl *)v3 isRingerMuted];

  if ([(SBStatusBarDefaults *)self->_statusBarDefaults showRingerState])
  {
    [MEMORY[0x277D6BA70] entryWithBoolValue:v4];
  }

  else
  {
    [MEMORY[0x277D6BA70] disabledEntry];
  }
  v5 = ;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__SBStatusBarStateAggregator__updateRingerItem__block_invoke;
  v9[3] = &unk_2783C36F8;
  v10 = v5;
  v6 = v5;
  v7 = MEMORY[0x223D6F7F0](v9);
  v8 = [MEMORY[0x277D6BFE0] sharedInstance];
  [v8 updateWithData:v7];
}

- (void)_updateStatusBarForSystemStatusDomainName:(unint64_t)a3 data:(id)a4
{
  v6 = a4;
  switch(a3)
  {
    case 0xFuLL:
      [(SBStatusBarStateAggregator *)self _updateStatusBarItemsForSystemStatusDomain:15 andData:v6];
      goto LABEL_11;
    case 9uLL:
      v7 = self;
      v8 = 9;
      goto LABEL_6;
    case 8uLL:
      v7 = self;
      v8 = 8;
LABEL_6:
      [(SBStatusBarStateAggregator *)v7 _updateBackgroundActivityAssertionsForSystemStatusDomain:v8 andData:v6];
      goto LABEL_11;
  }

  v9 = SBLogStatusBarish();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
  {
    [SBStatusBarStateAggregator _updateStatusBarForSystemStatusDomainName:v9 data:?];
  }

LABEL_11:
}

- (void)_updateBackgroundActivityAssertionsForSystemStatusDomain:(unint64_t)a3 andData:(id)a4
{
  v6 = a4;
  if (a3 == 9)
  {
    v10 = objc_opt_class();
    v11 = v6;
    if (v10)
    {
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (![v13 isStewieActive])
    {
      [(SBStatusBarStateAggregator *)self _removeSatelliteSOSBackgroundActivityAssertion];
      goto LABEL_22;
    }

    if (!self->_satelliteSOSBackgroundActivityAssertion)
    {
      v18 = [MEMORY[0x277D669F0] assertionWithBackgroundActivityIdentifier:*MEMORY[0x277D6BCB0] forPID:getpid() exclusive:0 showsWhenForeground:0];
      satelliteSOSBackgroundActivityAssertion = self->_satelliteSOSBackgroundActivityAssertion;
      self->_satelliteSOSBackgroundActivityAssertion = v18;

      objc_initWeak(&location, self);
      v20 = self->_satelliteSOSBackgroundActivityAssertion;
      v17 = v21;
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __95__SBStatusBarStateAggregator__updateBackgroundActivityAssertionsForSystemStatusDomain_andData___block_invoke_216;
      v21[3] = &unk_2783A8C68;
      objc_copyWeak(&v22, &location);
      [(SBSBackgroundActivityAssertion *)v20 acquireWithHandler:&__block_literal_global_215_1 invalidationHandler:v21];
      goto LABEL_20;
    }

LABEL_22:

    goto LABEL_23;
  }

  if (a3 == 8)
  {
    v7 = objc_opt_class();
    v8 = v6;
    if (v7)
    {
      if (objc_opt_isKindOfClass())
      {
        v9 = v8;
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

    v13 = v9;

    if ([v13 isPlaygroundsActive])
    {
      if (!self->_playgroundsBackgroundActivityAssertion)
      {
        v14 = [MEMORY[0x277D669F0] assertionWithBackgroundActivityIdentifier:*MEMORY[0x277D6BCA0] forPID:getpid() exclusive:0 showsWhenForeground:0];
        playgroundsBackgroundActivityAssertion = self->_playgroundsBackgroundActivityAssertion;
        self->_playgroundsBackgroundActivityAssertion = v14;

        objc_initWeak(&location, self);
        v16 = self->_playgroundsBackgroundActivityAssertion;
        v17 = v23;
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __95__SBStatusBarStateAggregator__updateBackgroundActivityAssertionsForSystemStatusDomain_andData___block_invoke_212;
        v23[3] = &unk_2783A8C68;
        objc_copyWeak(&v24, &location);
        [(SBSBackgroundActivityAssertion *)v16 acquireWithHandler:&__block_literal_global_211_1 invalidationHandler:v23];
LABEL_20:
        objc_destroyWeak(v17 + 4);
        objc_destroyWeak(&location);
        goto LABEL_22;
      }
    }

    else
    {
      [(SBStatusBarStateAggregator *)self _removePlaygroundsBackgroundActivityAssertion];
    }

    goto LABEL_22;
  }

LABEL_23:
}

void __95__SBStatusBarStateAggregator__updateBackgroundActivityAssertionsForSystemStatusDomain_andData___block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = SBLogStatusBarish();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __95__SBStatusBarStateAggregator__updateBackgroundActivityAssertionsForSystemStatusDomain_andData___block_invoke_cold_1(v2);
    }
  }
}

void __95__SBStatusBarStateAggregator__updateBackgroundActivityAssertionsForSystemStatusDomain_andData___block_invoke_212(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__SBStatusBarStateAggregator__updateBackgroundActivityAssertionsForSystemStatusDomain_andData___block_invoke_2;
  block[3] = &unk_2783A8C68;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __95__SBStatusBarStateAggregator__updateBackgroundActivityAssertionsForSystemStatusDomain_andData___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removePlaygroundsBackgroundActivityAssertion];
}

void __95__SBStatusBarStateAggregator__updateBackgroundActivityAssertionsForSystemStatusDomain_andData___block_invoke_3(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = SBLogStatusBarish();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __95__SBStatusBarStateAggregator__updateBackgroundActivityAssertionsForSystemStatusDomain_andData___block_invoke_3_cold_1(v2);
    }
  }
}

void __95__SBStatusBarStateAggregator__updateBackgroundActivityAssertionsForSystemStatusDomain_andData___block_invoke_216(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__SBStatusBarStateAggregator__updateBackgroundActivityAssertionsForSystemStatusDomain_andData___block_invoke_2_217;
  block[3] = &unk_2783A8C68;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __95__SBStatusBarStateAggregator__updateBackgroundActivityAssertionsForSystemStatusDomain_andData___block_invoke_2_217(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeSatelliteSOSBackgroundActivityAssertion];
}

- (void)_updateStatusBarItemsForSystemStatusDomain:(unint64_t)a3 andData:(id)a4
{
  if (a3 == 15)
  {
    [(SBStatusBarStateAggregator *)self _updateAirplaneMode:15];
    [(SBStatusBarStateAggregator *)self _updateAirplayItem];
    [(SBStatusBarStateAggregator *)self _updateAlarmItem];
    [(SBStatusBarStateAggregator *)self _updateCarPlayItem];
    [(SBStatusBarStateAggregator *)self _updateDisplayWarningItem];
    [(SBStatusBarStateAggregator *)self _updateRotationLockItem];
    [(SBStatusBarStateAggregator *)self _updateStudentItem];
    [(SBStatusBarStateAggregator *)self _updateTTYItem];
    [(SBStatusBarStateAggregator *)self _updateVPNItem];

    [(SBStatusBarStateAggregator *)self _updateCallToActionItem];
  }

  else
  {
    v6 = SBLogStatusBarish();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SBStatusBarStateAggregator _updateStatusBarItemsForSystemStatusDomain:a3 andData:v6];
    }
  }
}

- (id)_batteryDomainData
{
  v3 = [(SBStatusBarStateAggregator *)self batteryDomain];
  v4 = [v3 data];

  if (!self->_hasReceivedBatteryDataFromSystemStatus)
  {
    if (v4)
    {
      v5 = [MEMORY[0x277CCAB98] defaultCenter];
      [v5 removeObserver:self name:@"SBSystemStatusBatteryDataProviderDidChangeNotification" object:0];

      self->_hasReceivedBatteryDataFromSystemStatus = 1;
    }

    else
    {
      v6 = SBLogStatusBarish();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "Using fallback battery data until first update from SystemStatus", v8, 2u);
      }

      v4 = [(SBSystemStatusBatteryDataProvider *)self->_batteryDataProvider lastPublishedData];
    }
  }

  return v4;
}

- (void)_removePlaygroundsBackgroundActivityAssertion
{
  playgroundsBackgroundActivityAssertion = self->_playgroundsBackgroundActivityAssertion;
  if (playgroundsBackgroundActivityAssertion)
  {
    [(SBSBackgroundActivityAssertion *)playgroundsBackgroundActivityAssertion invalidate];
    v4 = self->_playgroundsBackgroundActivityAssertion;
    self->_playgroundsBackgroundActivityAssertion = 0;
  }
}

- (void)_removeSatelliteSOSBackgroundActivityAssertion
{
  satelliteSOSBackgroundActivityAssertion = self->_satelliteSOSBackgroundActivityAssertion;
  if (satelliteSOSBackgroundActivityAssertion)
  {
    [(SBSBackgroundActivityAssertion *)satelliteSOSBackgroundActivityAssertion invalidate];
    v4 = self->_satelliteSOSBackgroundActivityAssertion;
    self->_satelliteSOSBackgroundActivityAssertion = 0;
  }
}

- (void)_removeTetheringBackgroundActivityAssertion
{
  tetheringBackgroundActivityAssertion = self->_tetheringBackgroundActivityAssertion;
  if (tetheringBackgroundActivityAssertion)
  {
    [(SBSBackgroundActivityAssertion *)tetheringBackgroundActivityAssertion invalidate];
    v4 = self->_tetheringBackgroundActivityAssertion;
    self->_tetheringBackgroundActivityAssertion = 0;
  }
}

- (void)_updateTetheringState
{
  v3 = [(SBStatusBarStateAggregator *)self _telephonyManager];
  if ([v3 isNetworkTethering])
  {
    v4 = [v3 numberOfNetworkTetheredDevices];
    v5 = SBApp;
    if (v4 == 1)
    {
      v6 = @"INTERNET_TETHERING_SINGLE_HOST";
    }

    else
    {
      v6 = @"INTERNET_TETHERING_MULTIPLE_HOSTS";
    }

    v7 = [MEMORY[0x277CCABB0] numberWithInt:v4];
    v8 = [v5 formattedDecimalStringForNumber:v7];

    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 localizedStringForKey:v6 value:&stru_283094718 table:@"SpringBoard"];
    v12 = [v9 stringWithFormat:v11, v8];

    if (!self->_tetheringBackgroundActivityAssertion)
    {
      v13 = [MEMORY[0x277D669F0] assertionWithBackgroundActivityIdentifier:*MEMORY[0x277D6BCF8] forPID:getpid() exclusive:1 showsWhenForeground:1];
      tetheringBackgroundActivityAssertion = self->_tetheringBackgroundActivityAssertion;
      self->_tetheringBackgroundActivityAssertion = v13;

      objc_initWeak(&location, self);
      v15 = self->_tetheringBackgroundActivityAssertion;
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __51__SBStatusBarStateAggregator__updateTetheringState__block_invoke_231;
      v16[3] = &unk_2783A8C68;
      objc_copyWeak(&v17, &location);
      [(SBSBackgroundActivityAssertion *)v15 acquireWithHandler:&__block_literal_global_230_0 invalidationHandler:v16];
      objc_destroyWeak(&v17);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [(SBStatusBarStateAggregator *)self _removeTetheringBackgroundActivityAssertion];
    LODWORD(v4) = 0;
    v12 = &stru_283094718;
  }

  [(SBSBackgroundActivityAssertion *)self->_tetheringBackgroundActivityAssertion setStatusString:v12];
  if (self->_data.tetheringConnectionCount != v4)
  {
    self->_data.tetheringConnectionCount = v4;
    [(SBStatusBarStateAggregator *)self _notifyNonItemDataChanged];
  }
}

void __51__SBStatusBarStateAggregator__updateTetheringState__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = SBLogStatusBarish();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_DEFAULT, "Failed to acquire tethering status bar style override", v3, 2u);
    }
  }
}

void __51__SBStatusBarStateAggregator__updateTetheringState__block_invoke_231(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SBStatusBarStateAggregator__updateTetheringState__block_invoke_2;
  block[3] = &unk_2783A8C68;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __51__SBStatusBarStateAggregator__updateTetheringState__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _removeTetheringBackgroundActivityAssertion];
}

- (id)_backgroundActivityDescriptorsForCallDescriptors:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v41 = [MEMORY[0x277CBEB58] set];
  }

  else
  {
    v41 = 0;
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v4)
  {
    v5 = v4;
    v40 = *v43;
    v6 = *MEMORY[0x277D6BC60];
    v28 = *MEMORY[0x277D6BCE8];
    v33 = *MEMORY[0x277D6BCD8];
    v36 = *MEMORY[0x277D6BCE0];
    v38 = *MEMORY[0x277D6BC58];
    v37 = *MEMORY[0x277D6BBD8];
    v32 = *MEMORY[0x277D6BC68];
    v31 = *MEMORY[0x277D6BD00];
    v35 = *MEMORY[0x277D6BD08];
    v29 = *MEMORY[0x277D6BC18];
    v30 = *MEMORY[0x277D6BC08];
    v34 = *MEMORY[0x277D6BC10];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v43 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v42 + 1) + 8 * i);
        v9 = [v8 callState];
        v10 = [v8 callState];
        v11 = [v8 callState];
        v12 = [v8 callState];
        v13 = [v8 callState];
        v14 = v6;
        v15 = [v8 callType];
        if (v15 > 1)
        {
          if (v15 == 2)
          {
            if (v9 == 1)
            {
              v16 = v36;
            }

            else
            {
              v20 = [v8 copresenceActivityType];
              if (v20 > 5)
              {
                goto LABEL_41;
              }

              if (v20 == 3)
              {
                v16 = v28;
              }

              else
              {
                v16 = v33;
              }
            }

LABEL_39:
            v19 = v16;
            v17 = v14;
          }

          else
          {
            if (v15 == 3)
            {
              v16 = v38;
              if (v11 != 2)
              {
                v16 = v37;
              }

              goto LABEL_39;
            }

LABEL_19:
            v17 = SBLogStatusBarish();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = [v8 callType];
              *buf = 134217984;
              *&buf[4] = v18;
              _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "[Call Type] Unhandled enum value: %lu", buf, 0xCu);
            }

            v19 = v14;
          }

LABEL_40:

          v14 = v19;
          goto LABEL_41;
        }

        if (v15)
        {
          if (v15 == 1)
          {
            if (v9 == 1)
            {
              v16 = v35;
            }

            else if (v10 == 3)
            {
              v16 = v31;
            }

            else
            {
              v16 = v32;
            }

            goto LABEL_39;
          }

          goto LABEL_19;
        }

        if (v9 == 1)
        {
          v16 = v34;
          goto LABEL_39;
        }

        if (v10 == 3)
        {
          v16 = v30;
          goto LABEL_39;
        }

        if (v12 == 4)
        {
          v16 = v29;
          goto LABEL_39;
        }

        v17 = v14;
        v19 = @"com.apple.systemstatus.background-activity.CallRecording";
        if (v13 == 6)
        {
          goto LABEL_40;
        }

LABEL_41:
        v21 = getpid();
        v22 = [v8 callProviderAttribution];

        if (v22)
        {
          *buf = 0u;
          v47 = 0u;
          v23 = [v8 callProviderAttribution];
          v24 = v23;
          if (v23)
          {
            [v23 auditToken];
          }

          else
          {
            *buf = 0u;
            v47 = 0u;
          }

          v21 = BSPIDForAuditToken();
        }

        v25 = [[SBStatusBarBackgroundActivityDescriptor alloc] initWithBackgroundActivityIdentifier:v14 pid:v21];
        [v41 addObject:v25];
      }

      v5 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v5);
  }

  v26 = [v41 copy];

  return v26;
}

- (void)_updateCallingBackgroundActivityAssertionsForCallDescriptors:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = [(SBStatusBarStateAggregator *)self _backgroundActivityDescriptorsForCallDescriptors:a3];
  v5 = [(NSMutableDictionary *)self->_callingBackgroundActivityAssertionsByDescriptor allKeys];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __91__SBStatusBarStateAggregator__updateCallingBackgroundActivityAssertionsForCallDescriptors___block_invoke;
  v25[3] = &unk_2783C3770;
  v25[4] = self;
  v6 = v4;
  v26 = v6;
  v7 = [v5 bs_compactMap:v25];

  if ([v6 count] && !self->_callingBackgroundActivityAssertionsByDescriptor)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
    callingBackgroundActivityAssertionsByDescriptor = self->_callingBackgroundActivityAssertionsByDescriptor;
    self->_callingBackgroundActivityAssertionsByDescriptor = v8;
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __91__SBStatusBarStateAggregator__updateCallingBackgroundActivityAssertionsForCallDescriptors___block_invoke_3;
  v24[3] = &unk_2783C3798;
  v24[4] = self;
  v19 = v6;
  [v6 enumerateObjectsUsingBlock:v24];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v20 + 1) + 8 * i);
        v16 = [(NSMutableDictionary *)self->_callingBackgroundActivityAssertionsByDescriptor objectForKeyedSubscript:v15];
        v17 = SBLogStatusBarish();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v28 = v16;
          _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "invalidating %{public}@", buf, 0xCu);
        }

        [v16 invalidate];
        [(NSMutableDictionary *)self->_callingBackgroundActivityAssertionsByDescriptor setObject:0 forKeyedSubscript:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v20 objects:v29 count:16];
    }

    while (v12);
  }

  if (![(NSMutableDictionary *)self->_callingBackgroundActivityAssertionsByDescriptor count])
  {
    v18 = self->_callingBackgroundActivityAssertionsByDescriptor;
    self->_callingBackgroundActivityAssertionsByDescriptor = 0;
  }
}

void *__91__SBStatusBarStateAggregator__updateCallingBackgroundActivityAssertionsForCallDescriptors___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 8784);
  v4 = a2;
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__SBStatusBarStateAggregator__updateCallingBackgroundActivityAssertionsForCallDescriptors___block_invoke_2;
  v11[3] = &unk_2783C3748;
  v12 = v5;
  v7 = v5;
  if ([v6 bs_containsObjectPassingTest:v11])
  {
    v8 = 0;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  return v8;
}

uint64_t __91__SBStatusBarStateAggregator__updateCallingBackgroundActivityAssertionsForCallDescriptors___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) pid];
  if (v4 == [v3 pid])
  {
    v5 = [*(a1 + 32) backgroundActivityIdentifiers];
    v6 = [v3 backgroundActivityIdentifier];
    v7 = [v5 containsObject:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __91__SBStatusBarStateAggregator__updateCallingBackgroundActivityAssertionsForCallDescriptors___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 8784) objectForKeyedSubscript:v3];

  if (!v4)
  {
    v5 = MEMORY[0x277D669F0];
    v6 = [v3 backgroundActivityIdentifier];
    v7 = [v5 assertionWithBackgroundActivityIdentifier:v6 forPID:objc_msgSend(v3 exclusive:"pid") showsWhenForeground:{0, 1}];

    [*(*(a1 + 32) + 8784) setObject:v7 forKeyedSubscript:v3];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __91__SBStatusBarStateAggregator__updateCallingBackgroundActivityAssertionsForCallDescriptors___block_invoke_4;
    v17[3] = &unk_2783A9940;
    v18 = v7;
    v8 = v3;
    v9 = *(a1 + 32);
    v19 = v8;
    v20 = v9;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __91__SBStatusBarStateAggregator__updateCallingBackgroundActivityAssertionsForCallDescriptors___block_invoke_240;
    v13[3] = &unk_2783A8ED8;
    v10 = v8;
    v11 = *(a1 + 32);
    v14 = v10;
    v15 = v11;
    v16 = v18;
    v12 = v18;
    [v12 acquireWithHandler:v17 invalidationHandler:v13];
  }
}

void __91__SBStatusBarStateAggregator__updateCallingBackgroundActivityAssertionsForCallDescriptors___block_invoke_4(void *a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = SBLogStatusBarish();
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v9 = 138543362;
      v10 = v6;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "acquired %{public}@", &v9, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __91__SBStatusBarStateAggregator__updateCallingBackgroundActivityAssertionsForCallDescriptors___block_invoke_4_cold_1(a1);
    }

    v7 = [*(a1[6] + 8784) objectForKeyedSubscript:a1[5]];
    v8 = a1[4];

    if (v7 == v8)
    {
      [*(a1[6] + 8784) setObject:0 forKeyedSubscript:a1[5]];
    }
  }
}

void __91__SBStatusBarStateAggregator__updateCallingBackgroundActivityAssertionsForCallDescriptors___block_invoke_240(void *a1)
{
  v2 = SBLogStatusBarish();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    __91__SBStatusBarStateAggregator__updateCallingBackgroundActivityAssertionsForCallDescriptors___block_invoke_240_cold_1(a1);
  }

  v3 = [*(a1[5] + 8784) objectForKeyedSubscript:a1[4]];
  v4 = a1[6];

  if (v3 == v4)
  {
    [*(a1[5] + 8784) setObject:0 forKeyedSubscript:a1[4]];
  }
}

- (id)_systemApertureElementIdentifiersForStatusBarItem:(int)a3
{
  v6[2] = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    v3 = *MEMORY[0x277D67FE0];
    v6[0] = *MEMORY[0x277D67FD8];
    v6[1] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_systemApertureElementIsVisibleForStatusBarItem:(int)a3
{
  v4 = [(SBStatusBarStateAggregator *)self _systemApertureElementIdentifiersForStatusBarItem:*&a3];
  v5 = [(SBStatusBarStateAggregator *)self systemApertureVisibleElementIdentifiers];
  v6 = [v5 firstObjectCommonWithArray:v4];
  v7 = v6 != 0;

  return v7;
}

- (void)setBatteryChargingState:(unint64_t)a3
{
  batteryChargingState = self->_batteryChargingState;
  if (batteryChargingState != a3)
  {
    if (a3 - 1 >= 3)
    {
      if (!a3)
      {
        [(SBStatusBarStateAggregator *)self _invalidateSystemApertureChargingElementAssertionForReason:@"Charging ended"];
      }
    }

    else
    {
      v6 = SBSIsSystemApertureAvailable();
      if (!batteryChargingState)
      {
        if (v6)
        {
          v7 = +[SBLockScreenManager sharedInstance];
          v8 = [v7 isUILocked];

          v9 = +[SBUIController sharedInstance];
          v10 = [v9 isConnectedToWirelessInternalCharger];

          v11 = +[SBUIController sharedInstance];
          v12 = [v11 isConnectedToWirelessInternalChargingAccessory];

          if (!v8 || ((v10 | v12) & 1) == 0)
          {
            v13 = [(SBStatusBarStateAggregator *)self _batteryDomainData];
            v14 = v13;
            v15 = 1.0;
            if (!self->_showsRecordingOverrides)
            {
              v15 = [v13 percentCharge] / 100.0;
            }

            v16 = objc_alloc_init(SBChargingSystemApertureElementProvider);
            v17 = [(SBChargingSystemApertureElementProvider *)v16 powerElementWithBatteryCapacity:v15];
            v18 = [SBApp systemApertureControllerForMainDisplay];
            v19 = [v18 registerElement:v17];
            systemApertureChargingElementAssertion = self->_systemApertureChargingElementAssertion;
            self->_systemApertureChargingElementAssertion = v19;
          }
        }
      }
    }

    self->_batteryChargingState = a3;
  }
}

- (void)_invalidateSystemApertureChargingElementAssertionForReason:(id)a3
{
  [(SAInvalidatable *)self->_systemApertureChargingElementAssertion invalidateWithReason:a3];
  systemApertureChargingElementAssertion = self->_systemApertureChargingElementAssertion;
  self->_systemApertureChargingElementAssertion = 0;
}

- (void)updateStatusBarItem:(int)a3
{
  [(SBStatusBarStateAggregator *)self beginCoalescentBlock];
  switch(a3)
  {
    case 0:
    case 1:
      [(SBStatusBarStateAggregator *)self _updateTimeItems];
      break;
    case 2:
      [(SBStatusBarStateAggregator *)self _updateQuietModeItem];
      break;
    case 3:
      [(SBStatusBarStateAggregator *)self _updateAirplaneMode];
      break;
    case 4:
      [(SBStatusBarStateAggregator *)self _updateSignalStrengthItem];
      break;
    case 5:
      [(SBStatusBarStateAggregator *)self _updateSecondarySignalStrengthItem];
      break;
    case 6:
      [(SBStatusBarStateAggregator *)self _updateServiceItem];
      break;
    case 7:
      [(SBStatusBarStateAggregator *)self _updateSecondaryServiceItem];
      break;
    case 8:
      [(SBStatusBarStateAggregator *)self _updatePersonNameItem];
      break;
    case 9:
      [(SBStatusBarStateAggregator *)self _updateDataNetworkItem];
      break;
    case 10:
      [(SBStatusBarStateAggregator *)self _updateSecondaryDataNetworkItem];
      break;
    case 12:
    case 13:
    case 14:
      [(SBStatusBarStateAggregator *)self _updateBatteryItems];
      break;
    case 15:
      [(SBStatusBarStateAggregator *)self _updateBluetoothBatteryItem];
      break;
    case 16:
      [(SBStatusBarStateAggregator *)self _updateBluetoothItem];
      break;
    case 17:
      [(SBStatusBarStateAggregator *)self _updateTTYItem];
      break;
    case 18:
      [(SBStatusBarStateAggregator *)self _updateAlarmItem];
      break;
    case 19:
    case 23:
    case 25:
    case 34:
    case 36:
    case 40:
      break;
    case 21:
      [(SBStatusBarStateAggregator *)self _updateLocationItem];
      break;
    case 22:
      [(SBStatusBarStateAggregator *)self _updateRotationLockItem];
      break;
    case 24:
      [(SBStatusBarStateAggregator *)self _updateAirplayItem];
      break;
    case 26:
      [(SBStatusBarStateAggregator *)self _updateCarPlayItem];
      break;
    case 28:
      [(SBStatusBarStateAggregator *)self _updateSensorActivityItem];
      break;
    case 29:
      [(SBStatusBarStateAggregator *)self _updateVPNItem];
      break;
    case 30:
      [(SBStatusBarStateAggregator *)self _updateCallForwardingItem];
      break;
    case 31:
      [(SBStatusBarStateAggregator *)self _updateSecondaryCallForwardingItem];
      break;
    case 32:
      [(SBStatusBarStateAggregator *)self _updateActivityItem];
      break;
    case 33:
      [(SBStatusBarStateAggregator *)self _updateThermalColorItem];
      break;
    case 41:
      [(SBStatusBarStateAggregator *)self _updateVoiceControlItem];
      break;
    case 42:
      [(SBStatusBarStateAggregator *)self _updateBluetoothHeadphonesItem];
      break;
    case 44:
      [(SBStatusBarStateAggregator *)self _updateDisplayWarningItem];
      break;
    case 45:
      [(SBStatusBarStateAggregator *)self _updateStewieItem];
      break;
    default:
      v5 = SBLogStatusBarish();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        [(SBStatusBarStateAggregator *)a3 updateStatusBarItem:v5];
      }

      break;
  }

  [(SBStatusBarStateAggregator *)self endCoalescentBlock];
}

- (void)_postItem:(int)a3 withState:(unint64_t)a4 inList:(unint64_t *)a5
{
  if (a3 <= 0x2D && a5)
  {
    [(SBStatusBarStateAggregator *)self beginCoalescentBlock];
    a5[a3] |= a4;

    [(SBStatusBarStateAggregator *)self endCoalescentBlock];
  }
}

- (BOOL)_setItem:(int)a3 enabled:(BOOL)a4 inList:(BOOL *)a5 itemPostState:(unint64_t *)a6
{
  v16 = *MEMORY[0x277D85DE8];
  if (a3 > 0x2D)
  {
    return 0;
  }

  v6 = a4;
  v7 = *&a3;
  v8 = a5[a3];
  a5[a3] = a4;
  [SBStatusBarStateAggregator _postItem:"_postItem:withState:inList:" withState:? inList:?];
  if (v8 == v6)
  {
    return 0;
  }

  v10 = SBLogStatusBarish();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v11)
    {
      v12 = SBStatusBarItemDebugName(v7);
      v14 = 138543362;
      v15 = v12;
      v13 = "%{public}@ is unchanged, still enabled";
LABEL_9:
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, v13, &v14, 0xCu);
    }
  }

  else if (v11)
  {
    v12 = SBStatusBarItemDebugName(v7);
    v14 = 138543362;
    v15 = v12;
    v13 = "%{public}@ is unchanged, still disabled";
    goto LABEL_9;
  }

  return 1;
}

- (void)_notifyNonItemDataChanged
{
  [(SBStatusBarStateAggregator *)self beginCoalescentBlock];
  self->_nonItemDataChanged = 1;

  [(SBStatusBarStateAggregator *)self endCoalescentBlock];
}

- (void)_requestActions:(int)a3
{
  if ((a3 & ~self->_actions) != 0)
  {
    [(SBStatusBarStateAggregator *)self beginCoalescentBlock];
    self->_actions |= a3;

    [(SBStatusBarStateAggregator *)self endCoalescentBlock];
  }
}

- (void)_stopTimeItemTimer
{
  if (self->_dateTimeProviderToken)
  {
    [(SBFOverridableDateProvider *)self->_dateTimeProvider removeMinuteUpdateHandler:?];
    dateTimeProviderToken = self->_dateTimeProviderToken;
    self->_dateTimeProviderToken = 0;
  }
}

- (void)_resetTimeItemFormatter
{
  v19 = [MEMORY[0x277CBEAF8] currentLocale];
  v3 = [(NSDateFormatter *)self->_timeItemDateFormatter locale];

  if (v19 == v3)
  {
    timeItemDateFormatter = self->_timeItemDateFormatter;
    v18 = [MEMORY[0x277CBEBB0] systemTimeZone];
    [(NSDateFormatter *)timeItemDateFormatter setTimeZone:v18];

    [(SBStatusBarStateAggregator *)self _updateOverrideDate];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CCA968]);
    v5 = self->_timeItemDateFormatter;
    self->_timeItemDateFormatter = v4;

    [(NSDateFormatter *)self->_timeItemDateFormatter setLocale:v19];
    [(NSDateFormatter *)self->_timeItemDateFormatter setDateStyle:0];
    [(NSDateFormatter *)self->_timeItemDateFormatter setTimeStyle:1];
    v6 = [MEMORY[0x277CF0BF0] formatterForDateAsTimeNoAMPMWithLocale:v19];
    shortTimeItemDateFormatter = self->_shortTimeItemDateFormatter;
    self->_shortTimeItemDateFormatter = v6;

    v8 = [(NSDateFormatter *)self->_timeItemDateFormatter copy];
    dateItemDateFormatter = self->_dateItemDateFormatter;
    self->_dateItemDateFormatter = v8;

    [(NSDateFormatter *)self->_dateItemDateFormatter setFormattingContext:2];
    v10 = MEMORY[0x277CCA968];
    v11 = [MEMORY[0x277CCA8D8] mainBundle];
    v12 = [v11 localizedStringForKey:@"STATUS_BAR_DATE_FORMAT_STRING" value:&stru_283094718 table:@"SpringBoard"];
    v13 = [v10 dateFormatFromTemplate:v12 options:0 locale:v19];

    v14 = [MEMORY[0x277CCA8D8] mainBundle];
    v15 = [v14 localizedStringForKey:@"STATUS_BAR_DATE_FORMAT_SEPARATOR_TO_STRIP" value:&stru_283094718 table:@"SpringBoard"];

    if ([v15 length])
    {
      v16 = [v13 stringByReplacingOccurrencesOfString:v15 withString:&stru_283094718];

      v13 = v16;
    }

    [(NSDateFormatter *)self->_dateItemDateFormatter setDateFormat:v13];
  }

  [(SBStatusBarStateAggregator *)self _restartTimeItemTimer];
}

- (void)_updateOverrideDate
{
  if (self->_showsRecordingOverrides)
  {
    v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:1168335660.0];
    v3 = [MEMORY[0x277CBEBB0] systemTimeZone];
    v4 = 1168335660.0 - [v3 secondsFromGMTForDate:v2];

    v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v4];
  }

  else
  {
    v6 = 0;
  }

  v5 = [MEMORY[0x277D65E40] sharedInstance];
  [v5 setOverrideDate:v6];
}

- (BOOL)_shouldShowPersonName
{
  v3 = [(SBStatusBarStateAggregator *)self _userSessionController];
  v4 = v3;
  if (self->_overridePersonName)
  {
    LOBYTE(v5) = 1;
  }

  else if ([v3 isMultiUserSupported])
  {
    v6 = [v4 user];
    v7 = v6 != 0;

    v5 = v7 & ([v4 isLoginSession] ^ 1);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_noteAirplaneModeChanged
{
  v3 = [(SBStatusBarStateAggregator *)self _telephonyManager];

  if (v3)
  {
    v4 = [(SBStatusBarStateAggregator *)self _isInAirplaneMode];
    [(SBStatusBarStateAggregator *)self beginCoalescentBlock];
    [(SBStatusBarStateAggregator *)self _setItem:3 enabled:v4];
    [(SBStatusBarStateAggregator *)self _requestActions:4];
    if (v4)
    {
      [(SBStatusBarStateAggregator *)self _setItem:6 enabled:0];
      [(SBStatusBarStateAggregator *)self _setItem:7 enabled:0];
      v5 = self->_airplaneTransitionToken + 1;
      self->_airplaneTransitionToken = v5;
      self->_suppressCellServiceForAirplaneModeTransition = 1;
      v6 = dispatch_time(0, 5000000000);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __54__SBStatusBarStateAggregator__noteAirplaneModeChanged__block_invoke;
      v7[3] = &unk_2783A8BC8;
      v7[4] = self;
      v7[5] = v5;
      dispatch_after(v6, MEMORY[0x277D85CD0], v7);
    }

    else
    {
      ++self->_airplaneTransitionToken;
      self->_suppressCellServiceForAirplaneModeTransition = 0;
      [(SBStatusBarStateAggregator *)self updateStatusBarItem:6];
      [(SBStatusBarStateAggregator *)self updateStatusBarItem:7];
    }

    [(SBStatusBarStateAggregator *)self endCoalescentBlock];
  }
}

uint64_t __54__SBStatusBarStateAggregator__noteAirplaneModeChanged__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if (*(result + 40) == *(v2 + 8688))
  {
    v3 = result;
    *(v2 + 8696) = 0;
    [*(result + 32) updateStatusBarItem:6];
    v4 = *(v3 + 32);

    return [v4 updateStatusBarItem:7];
  }

  return result;
}

+ (int)_thermalColorForLevel:(int64_t)a3
{
  if ((a3 + 2) > 5)
  {
    return 0;
  }

  else
  {
    return dword_21F8A88A8[a3 + 2];
  }
}

- (id)_locationAttributionsForSensorActivityAttributions:(id)a3 includeRecent:(BOOL)a4
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __95__SBStatusBarStateAggregator__locationAttributionsForSensorActivityAttributions_includeRecent___block_invoke;
  v6[3] = &__block_descriptor_33_e37_B16__0__SBSensorActivityAttribution_8l;
  v7 = a4;
  v4 = [a3 bs_filter:v6];

  return v4;
}

uint64_t __95__SBStatusBarStateAggregator__locationAttributionsForSensorActivityAttributions_includeRecent___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 sensor];
  if (v5 == 2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  if ((v4 & 1) == 0 && v5 == 2)
  {
    v6 = [v3 usedRecently] ^ 1;
  }

  return v6;
}

- (void)systemApertureLayoutDidChange:(id)a3
{
  v5 = [a3 userInfo];
  v4 = [v5 objectForKey:@"SBSystemApertureVisibleElementIdentifiers"];
  [(SBStatusBarStateAggregator *)self setSystemApertureVisibleElementIdentifiers:v4];
  [(SBStatusBarStateAggregator *)self _updateStatusBarItemsWithRelatedSystemApertureElements];
}

- (void)activityDidChangeForSensorActivityDataProvider:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = [SBApp sensorActivityDataProvider];
  v5 = [v4 activeSensorActivityAttributions];

  v23 = self;
  v6 = [(SBStatusBarStateAggregator *)self _locationAttributionsForSensorActivityAttributions:v5 includeRecent:0];
  v7 = +[SBMainSwitcherControllerCoordinator _shim_activeSwitcherController];
  v8 = [v7 layoutStatePrimaryElement];
  v9 = [v8 workspaceEntity];
  v10 = [v9 applicationSceneEntity];
  v11 = [v10 sceneHandle];
  v12 = [v11 application];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = v6;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    while (2)
    {
      v17 = 0;
      do
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v24 + 1) + 8 * v17);
        v19 = +[SBApplicationController sharedInstance];
        v20 = [v18 bundleIdentifier];
        v21 = [v19 applicationWithBundleIdentifier:v20];

        if ([v12 isSameExecutableAsApplication:v21] && (objc_msgSend(v21, "hasProminentlyIndicatedLocationUseWhileForeground") & 1) == 0)
        {
          [v21 setHasProminentlyIndicatedLocationUseWhileForeground:1];
          v22 = v23;
          [(SBStatusBarStateAggregator *)v23 _temporarilyOverrideLocationItemForProminentIndication];

          goto LABEL_12;
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v22 = v23;
  [(SBStatusBarStateAggregator *)v23 _updateLocationItem];
LABEL_12:
  [(SBStatusBarStateAggregator *)v22 _updateActiveAudioRecordingBackgroundActivityAssertionsForActiveSensorActivityAttributions:v5];
}

- (void)_updateActiveAudioRecordingBackgroundActivityAssertionsForActiveSensorActivityAttributions:(id)a3
{
  v4 = SBApp;
  v5 = a3;
  v9 = [v4 audioRecordingManager];
  v6 = [(SBStatusBarStateAggregator *)self _activeAudioRecordingAttributionsForSensorActivityAttributions:v5];

  v7 = [(STCallingStatusDomain *)self->_callingDomain data];
  v8 = [v7 callDescriptors];

  [v9 setNowRecordingAppForActiveAudioRecordingAttributions:v6 callDescriptors:v8];
}

uint64_t __93__SBStatusBarStateAggregator__activeAudioRecordingAttributionsForSensorActivityAttributions___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 sensor] == 1)
  {
    v3 = [v2 usedRecently] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (SBWindowScene)mainDisplayWindowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_mainDisplayWindowScene);

  return WeakRetained;
}

- (void)initWithMainDisplayWindowScene:registerForNotifications:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_updateStateAtomicallyWithoutAnimationUsingBlock:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  v1 = NSStringFromSelector(v0);
  OUTLINED_FUNCTION_0_3();
  [v2 handleFailureInMethod:v1 object:? file:? lineNumber:? description:?];
}

- (void)addPostingObserver:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:"-[SBStatusBarStateAggregator addPostingObserver:]" object:? file:? lineNumber:? description:?];
}

- (void)removePostingObserver:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:"-[SBStatusBarStateAggregator removePostingObserver:]" object:? file:? lineNumber:? description:?];
}

- (void)_updateStatusBarItemsForSystemStatusDomain:(uint64_t)a1 andData:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = STSystemStatusDescriptionForDomain();
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Don't know how to update items for %@", &v4, 0xCu);
}

void __91__SBStatusBarStateAggregator__updateCallingBackgroundActivityAssertionsForCallDescriptors___block_invoke_4_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) backgroundActivityIdentifier];
  v2 = STBackgroundActivityIdentifierDescription();
  OUTLINED_FUNCTION_2_39(&dword_21ED4E000, v3, v4, "failed to acquire calling background activity assertion for identifier: %{public}@", v5, v6, v7, v8, 2u);
}

void __91__SBStatusBarStateAggregator__updateCallingBackgroundActivityAssertionsForCallDescriptors___block_invoke_240_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 32) backgroundActivityIdentifier];
  v2 = STBackgroundActivityIdentifierDescription();
  OUTLINED_FUNCTION_2_39(&dword_21ED4E000, v3, v4, "calling background activity assertion unexpectedly invalidated for identifier: %{public}@", v5, v6, v7, v8, 2u);
}

- (void)updateStatusBarItem:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_debug_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_DEBUG, "*** [SBStatusBarStateAggregator] cannot update unknown status bar item (%i)", v2, 8u);
}

@end