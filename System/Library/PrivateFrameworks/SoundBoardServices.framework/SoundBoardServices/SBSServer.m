@interface SBSServer
+ (BOOL)_isInternalBuild;
+ (id)sharedInstance;
- (BOOL)_hasEntitlement:(id)a3;
- (BOOL)isMediaAlarm:(id)a3;
- (BOOL)isMediaAlarmInternal:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SBSAirDropServiceImplementer)airdropServiceDelegate;
- (SBSDebugInfoImplementer)debugInfoDelegate;
- (SBSHomePodControlsImplementer)controlsDelegate;
- (SBSPowerMonitorImplementer)powerMonitorDelegate;
- (SBSProfilesImplementer)profilesDelegate;
- (SBSProximityHandoffUIImplementer)proximityHandoffUIDelegate;
- (SBSServer)init;
- (SBSStereoLeaderRoleImplementer)stereoLeaderDelegate;
- (SBSSysdiagnoseImplementer)sysdiagnoseDelegate;
- (SBSSystemImplementer)systemDelegate;
- (SBSVolumeEventMonitorImplementer)volumeEventMonitorDelegate;
- (id)_gatherXPCClientInfo:(id)a3;
- (id)_processNameForPID:(int)a3;
- (void)_findConnectionAndSetClientType:(unint64_t)a3;
- (void)airDropSysdiagnose:(id)a3 airDropID:(id)a4 completionHandler:(id)a5;
- (void)airDropSysdiagnoseInternal:(id)a3 airDropID:(id)a4 completionHandler:(id)a5;
- (void)cancelCurrentSysdiagnose:(id)a3;
- (void)cancelSysdiagnoseInternal:(id)a3;
- (void)clearHomeSWUpdate;
- (void)clearHomeSWUpdateInternal;
- (void)createSysdiagnose:(id)a3;
- (void)createSysdiagnoseInternal:(id)a3;
- (void)disassociateCurrentNetwork;
- (void)disassociateCurrentNetworkInternal;
- (void)disassociateNetworkWithName:(id)a3;
- (void)disassociateNetworkWithNameInternal:(id)a3;
- (void)fetchLatestEvents:(int64_t)a3 completionHandler:(id)a4;
- (void)getAllDebugInfo:(id)a3;
- (void)getAllDebugInfoInternal:(id)a3;
- (void)getAllSyncedAlarmsAndTimers:(id)a3;
- (void)getAllSyncedAlarmsAndTimersInternal:(id)a3;
- (void)getFeatureFlags:(id)a3;
- (void)getFeatureFlagsInternal:(id)a3;
- (void)getInstalledProfilesInternal:(id)a3;
- (void)getLEDInfo:(id)a3;
- (void)getLEDInfoInternal:(id)a3;
- (void)getPowerEstimateForInterval:(float)a3 reply:(id)a4;
- (void)getPowerEstimateForIntervalInternal:(float)a3 reply:(id)a4;
- (void)getSelectDebugInfo:(id)a3 reply:(id)a4;
- (void)getSelectDebugInfoInternal:(id)a3 reply:(id)a4;
- (void)getTuningInfo:(id)a3;
- (void)getTuningInfoInternal:(id)a3;
- (void)getUserDefaults:(id)a3;
- (void)getUserDefaultsInternal:(id)a3;
- (void)getVolume:(id)a3;
- (void)getVolumeInternal:(id)a3;
- (void)handleClientDisconnection:(id)a3;
- (void)handoffCancelInternalWithHandoffType:(unint64_t)a3;
- (void)handoffCompleteInternalWithHandoffType:(unint64_t)a3;
- (void)handoffStartInternalWithHandoffType:(unint64_t)a3;
- (void)handoffStartWithArtworkColors:(id)a3 handoffType:(unint64_t)a4;
- (void)handoffStartWithArtworkColorsInternal:(id)a3 handoffType:(unint64_t)a4;
- (void)handoffStartWithHandoffType:(unint64_t)a3;
- (void)handoffUpdateIntensityInternal:(float)a3 handoffType:(unint64_t)a4;
- (void)identifyWithOptions:(id)a3;
- (void)identifyWithOptionsInternal:(id)a3;
- (void)injectSWUpdateToHome:(id)a3;
- (void)injectSWUpdateToHomeInternal:(id)a3;
- (void)installProfileDataInternal:(id)a3 completion:(id)a4;
- (void)intercomWithOptions:(id)a3;
- (void)intercomWithOptionsInternal:(id)a3;
- (void)isDeviceStereoFollower:(id)a3;
- (void)isDeviceStereoFollowerInternal:(id)a3;
- (void)obliterate:(id)a3;
- (void)obliterateInternal:(id)a3;
- (void)proximityHandoffCancelled;
- (void)proximityHandoffCompleted;
- (void)proximityHandoffInactive;
- (void)proximityHandoffStarted;
- (void)proximityHandoffUpdating;
- (void)reboot:(id)a3;
- (void)rebootInternal:(id)a3;
- (void)removeProfileByIdentifierInternal:(id)a3 completion:(id)a4;
- (void)render:(id)a3;
- (void)renderInternal:(id)a3;
- (void)requestDeferredReboot;
- (void)requestDeferredRebootInternal;
- (void)resetAllUserDefaults;
- (void)resetAllUserDefaultsInternal;
- (void)resetUserDefault:(id)a3;
- (void)resetUserDefaultInternal:(id)a3;
- (void)sendButtonCommand:(id)a3;
- (void)sendButtonCommandInternal:(id)a3;
- (void)sendLEDCommand:(id)a3;
- (void)sendLEDCommandInternal:(id)a3;
- (void)setFeatureFlags:(id)a3;
- (void)setFeatureFlagsInternal:(id)a3;
- (void)setHomeUpdateState:(int64_t)a3;
- (void)setHomeUpdateStateInternal:(int64_t)a3;
- (void)setLEDContents:(id)a3;
- (void)setLEDContentsInternal:(id)a3;
- (void)setTuningInfoOnBox:(id)a3 at:(id)a4 withValue:(float)a5;
- (void)setTuningInfoOnBoxInternal:(id)a3 at:(id)a4 withValue:(float)a5;
- (void)setTurnOffBrightnessFactor:(BOOL)a3;
- (void)setUserDefaults:(id)a3 withValue:(id)a4;
- (void)setUserDefaultsInternal:(id)a3 withValue:(id)a4;
- (void)setVolume:(float)a3;
- (void)setVolumeInternal:(float)a3;
- (void)siriSay:(id)a3;
- (void)siriSayInternal:(id)a3;
- (void)suScanForSoftwareUpdate;
- (void)suScanForSoftwareUpdateInternal;
- (void)triggerWiFiCoreCapture:(id)a3;
- (void)triggerWiFiCoreCaptureInternal:(id)a3;
@end

@implementation SBSServer

- (void)setVolumeInternal:(float)a3
{
  v5 = [(SBSServer *)self debugInfoDelegate];
  *&v4 = a3;
  [v5 setVolume:v4];
}

- (void)getVolumeInternal:(id)a3
{
  v4 = a3;
  v5 = [(SBSServer *)self debugInfoDelegate];
  [v5 getVolume:v4];
}

- (void)installProfileDataInternal:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBSServer *)self profilesDelegate];
  [v8 installProfileData:v7 completion:v6];
}

- (void)removeProfileByIdentifierInternal:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBSServer *)self profilesDelegate];
  [v8 removeProfileByIdentifier:v7 completion:v6];
}

- (void)getInstalledProfilesInternal:(id)a3
{
  v4 = a3;
  v5 = [(SBSServer *)self profilesDelegate];
  [v5 getInstalledProfiles:v4];
}

- (void)getPowerEstimateForIntervalInternal:(float)a3 reply:(id)a4
{
  v6 = a4;
  v8 = [(SBSServer *)self powerMonitorDelegate];
  *&v7 = a3;
  [v8 getPowerEstimateForInterval:v6 reply:v7];
}

- (void)handoffCompleteInternalWithHandoffType:(unint64_t)a3
{
  v4 = [(SBSServer *)self proximityHandoffUIDelegate];
  [v4 handoffCompleteWithHandoffType:a3];
}

- (void)handoffCancelInternalWithHandoffType:(unint64_t)a3
{
  v4 = [(SBSServer *)self proximityHandoffUIDelegate];
  [v4 handoffCancelWithHandoffType:a3];
}

- (void)handoffUpdateIntensityInternal:(float)a3 handoffType:(unint64_t)a4
{
  v7 = [(SBSServer *)self proximityHandoffUIDelegate];
  *&v6 = a3;
  [v7 handoffUpdateIntensity:a4 handoffType:v6];
}

- (void)handoffStartWithArtworkColorsInternal:(id)a3 handoffType:(unint64_t)a4
{
  v6 = a3;
  v8 = [[SBSColorGroup alloc] initWithData:v6];

  v7 = [(SBSServer *)self proximityHandoffUIDelegate];
  [v7 handoffStartWithArtworkColors:v8 handoffType:a4];
}

- (void)handoffStartInternalWithHandoffType:(unint64_t)a3
{
  v4 = [(SBSServer *)self proximityHandoffUIDelegate];
  [v4 handoffStartWithHandoffType:a3];
}

- (void)intercomWithOptionsInternal:(id)a3
{
  v4 = a3;
  v5 = [(SBSServer *)self systemDelegate];
  [v5 intercomWithOptions:v4];
}

- (void)identifyWithOptionsInternal:(id)a3
{
  v4 = a3;
  v5 = [(SBSServer *)self systemDelegate];
  [v5 identifyWithOptions:v4];
}

- (void)obliterateInternal:(id)a3
{
  v4 = a3;
  v5 = [(SBSServer *)self systemDelegate];
  [v5 obliterate:v4];
}

- (void)requestDeferredRebootInternal
{
  v2 = [(SBSServer *)self systemDelegate];
  [v2 requestDeferredReboot];
}

- (void)rebootInternal:(id)a3
{
  v4 = a3;
  v5 = [(SBSServer *)self systemDelegate];
  [v5 reboot:v4];
}

- (void)cancelSysdiagnoseInternal:(id)a3
{
  v4 = a3;
  v5 = [(SBSServer *)self sysdiagnoseDelegate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SBSServer_Internal__cancelSysdiagnoseInternal___block_invoke;
  v7[3] = &unk_279CD55F8;
  v8 = v4;
  v6 = v4;
  [v5 cancelCurrentSysdiagnose:v7];
}

- (void)airDropSysdiagnoseInternal:(id)a3 airDropID:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SBSServer *)self airdropServiceDelegate];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__SBSServer_Internal__airDropSysdiagnoseInternal_airDropID_completionHandler___block_invoke;
  v13[3] = &unk_279CD52E8;
  v14 = v8;
  v12 = v8;
  [v11 airDropSysdiagnose:v10 airDropID:v9 completionHandler:v13];
}

- (void)createSysdiagnoseInternal:(id)a3
{
  v4 = a3;
  v5 = [(SBSServer *)self sysdiagnoseDelegate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SBSServer_Internal__createSysdiagnoseInternal___block_invoke;
  v7[3] = &unk_279CD52C0;
  v8 = v4;
  v6 = v4;
  [v5 createSysdiagnose:v7];
}

- (void)isDeviceStereoFollowerInternal:(id)a3
{
  v4 = a3;
  v5 = [(SBSServer *)self stereoLeaderDelegate];
  [v5 isDeviceStereoFollower:v4];
}

- (void)suScanForSoftwareUpdateInternal
{
  v2 = [(SBSServer *)self debugInfoDelegate];
  [v2 suScanForSoftwareUpdate];
}

- (void)siriSayInternal:(id)a3
{
  v4 = a3;
  v5 = [(SBSServer *)self debugInfoDelegate];
  [v5 siriSay:v4];
}

- (void)renderInternal:(id)a3
{
  v4 = a3;
  v5 = [(SBSServer *)self debugInfoDelegate];
  [v5 render:v4];
}

- (void)setLEDContentsInternal:(id)a3
{
  v4 = a3;
  v5 = [(SBSServer *)self debugInfoDelegate];
  [v5 setLEDContents:v4];
}

- (void)setFeatureFlagsInternal:(id)a3
{
  v4 = a3;
  v5 = [(SBSServer *)self debugInfoDelegate];
  [v5 setFeatureFlags:v4];
}

- (void)getFeatureFlagsInternal:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SBSServer *)self debugInfoDelegate];
    [v5 getFeatureFlags:v4];
  }
}

- (void)disassociateNetworkWithNameInternal:(id)a3
{
  v4 = a3;
  v5 = [(SBSServer *)self debugInfoDelegate];
  [v5 disassociateNetworkWithName:v4];
}

- (void)disassociateCurrentNetworkInternal
{
  v2 = [(SBSServer *)self debugInfoDelegate];
  [v2 disassociateCurrentNetwork];
}

- (void)clearHomeSWUpdateInternal
{
  v2 = [(SBSServer *)self debugInfoDelegate];
  [v2 clearHomeSWUpdate];
}

- (void)setHomeUpdateStateInternal:(int64_t)a3
{
  v4 = [(SBSServer *)self debugInfoDelegate];
  [v4 setHomeUpdateState:a3];
}

- (void)injectSWUpdateToHomeInternal:(id)a3
{
  v4 = a3;
  v5 = [(SBSServer *)self debugInfoDelegate];
  [v5 injectSWUpdateToHome:v4];
}

- (void)sendButtonCommandInternal:(id)a3
{
  v4 = a3;
  v5 = [(SBSServer *)self debugInfoDelegate];
  [v5 sendButtonCommand:v4];
}

- (void)triggerWiFiCoreCaptureInternal:(id)a3
{
  v4 = a3;
  v5 = [(SBSServer *)self debugInfoDelegate];
  [v5 triggerWiFiCoreCapture:v4];
}

- (void)sendLEDCommandInternal:(id)a3
{
  v4 = a3;
  v5 = [(SBSServer *)self debugInfoDelegate];
  [v5 sendLEDCommand:v4];
}

- (void)resetUserDefaultInternal:(id)a3
{
  v4 = a3;
  v5 = [(SBSServer *)self debugInfoDelegate];
  [v5 resetUserDefault:v4];
}

- (void)resetAllUserDefaultsInternal
{
  v2 = [(SBSServer *)self debugInfoDelegate];
  [v2 resetAllUserDefaults];
}

- (void)setUserDefaultsInternal:(id)a3 withValue:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBSServer *)self debugInfoDelegate];
  [v8 setUserDefaults:v7 withValue:v6];
}

- (void)getUserDefaultsInternal:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SBSServer *)self debugInfoDelegate];
    [v5 getUserDefaults:v4];
  }
}

- (void)setTuningInfoOnBoxInternal:(id)a3 at:(id)a4 withValue:(float)a5
{
  v8 = a4;
  v9 = a3;
  v11 = [(SBSServer *)self debugInfoDelegate];
  *&v10 = a5;
  [v11 setTuningInfoOnBox:v9 at:v8 withValue:v10];
}

- (void)getTuningInfoInternal:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SBSServer *)self debugInfoDelegate];
    [v5 getTuningInfo:v4];
  }
}

- (BOOL)isMediaAlarmInternal:(id)a3
{
  v4 = a3;
  v5 = [(SBSServer *)self controlsDelegate];
  if (v5 && (v6 = v5, [(SBSServer *)self controlsDelegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(SBSServer *)self controlsDelegate];
    v10 = [v9 isMediaAlarm:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)getAllSyncedAlarmsAndTimersInternal:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SBSServer *)self controlsDelegate];
    [v5 getAllSyncedAlarmsAndTimers:v4];
  }
}

- (void)getLEDInfoInternal:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SBSServer *)self debugInfoDelegate];
    [v5 getLEDInfo:v4];
  }
}

- (void)getSelectDebugInfoInternal:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBSServer *)self debugInfoDelegate];
  [v8 getSelectDebugInfo:v7 reply:v6];
}

- (void)getAllDebugInfoInternal:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [(SBSServer *)self debugInfoDelegate];
    [v5 getAllDebugInfo:v4];
  }
}

- (SBSProximityHandoffUIImplementer)proximityHandoffUIDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_proximityHandoffUIDelegate);

  return WeakRetained;
}

- (SBSVolumeEventMonitorImplementer)volumeEventMonitorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_volumeEventMonitorDelegate);

  return WeakRetained;
}

- (SBSProfilesImplementer)profilesDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_profilesDelegate);

  return WeakRetained;
}

- (SBSPowerMonitorImplementer)powerMonitorDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_powerMonitorDelegate);

  return WeakRetained;
}

- (SBSHomePodControlsImplementer)controlsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_controlsDelegate);

  return WeakRetained;
}

- (SBSAirDropServiceImplementer)airdropServiceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_airdropServiceDelegate);

  return WeakRetained;
}

- (SBSSysdiagnoseImplementer)sysdiagnoseDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sysdiagnoseDelegate);

  return WeakRetained;
}

- (SBSSystemImplementer)systemDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_systemDelegate);

  return WeakRetained;
}

- (SBSDebugInfoImplementer)debugInfoDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_debugInfoDelegate);

  return WeakRetained;
}

- (SBSStereoLeaderRoleImplementer)stereoLeaderDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_stereoLeaderDelegate);

  return WeakRetained;
}

- (id)_gatherXPCClientInfo:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCAE80] currentConnection];
  v6 = [v5 processIdentifier];
  v7 = [(SBSServer *)self _processNameForPID:v6];
  if (v4)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v4];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v10 = [MEMORY[0x277CCABB0] numberWithInt:v6];
  [v9 setObject:v10 forKey:@"pid"];

  [v9 setObject:v7 forKey:@"process-name"];
  v11 = [v9 copy];

  return v11;
}

- (id)_processNameForPID:(int)a3
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, 512);
  v6 = 648;
  *v7 = 0xE00000001;
  v8 = 1;
  v9 = a3;
  if (sysctl(v7, 4u, v10, &v6, 0, 0) < 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v10[15] + 3];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)_hasEntitlement:(id)a3
{
  v3 = MEMORY[0x277CCAE80];
  v4 = a3;
  v5 = [v3 currentConnection];
  v6 = [v5 valueForEntitlement:v4];

  LOBYTE(v4) = [MEMORY[0x277CBEC38] isEqual:v6];
  return v4;
}

- (void)_findConnectionAndSetClientType:(unint64_t)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCAE80] currentConnection];
  v6 = self->_clients;
  objc_sync_enter(v6);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_clients;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 connection];
        v13 = v12 == v5;

        if (v13)
        {
          [v11 setClientType:a3];
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v6);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)getPowerEstimateForInterval:(float)a3 reply:(id)a4
{
  v6 = a4;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.soundboard.system"])
  {
    *&v7 = a3;
    [(SBSServer *)self getPowerEstimateForIntervalInternal:v6 reply:v7];
  }

  else
  {
    v8 = _SBSLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_26B246000, v8, OS_LOG_TYPE_ERROR, "Missing required entitlement for identify", v9, 2u);
    }
  }
}

- (void)proximityHandoffUpdating
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = self->_clients;
  objc_sync_enter(v3);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_clients;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 clientType] == 5)
        {
          v9 = [v8 connection];
          v10 = [v9 remoteObjectProxy];
          [v10 handoffUpdating];

          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v3);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)proximityHandoffStarted
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = self->_clients;
  objc_sync_enter(v3);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_clients;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 clientType] == 5)
        {
          v9 = [v8 connection];
          v10 = [v9 remoteObjectProxy];
          [v10 handoffStarted];

          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v3);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)proximityHandoffInactive
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = self->_clients;
  objc_sync_enter(v3);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_clients;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 clientType] == 5)
        {
          v9 = [v8 connection];
          v10 = [v9 remoteObjectProxy];
          [v10 handoffInactive];

          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v3);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)proximityHandoffCompleted
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = self->_clients;
  objc_sync_enter(v3);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_clients;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 clientType] == 5)
        {
          v9 = [v8 connection];
          v10 = [v9 remoteObjectProxy];
          [v10 handoffCompleted];

          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v3);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)proximityHandoffCancelled
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = self->_clients;
  objc_sync_enter(v3);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_clients;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 clientType] == 5)
        {
          v9 = [v8 connection];
          v10 = [v9 remoteObjectProxy];
          [v10 handoffCancelled];

          goto LABEL_11;
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_sync_exit(v3);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)handoffStartWithArtworkColors:(id)a3 handoffType:(unint64_t)a4
{
  v6 = a3;
  [(SBSServer *)self _findConnectionAndSetClientType:5];
  v7 = [v6 data];

  [(SBSServer *)self handoffStartWithArtworkColorsInternal:v7 handoffType:a4];
}

- (void)handoffStartWithHandoffType:(unint64_t)a3
{
  [(SBSServer *)self _findConnectionAndSetClientType:5];

  [(SBSServer *)self handoffStartInternalWithHandoffType:a3];
}

- (void)fetchLatestEvents:(int64_t)a3 completionHandler:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    v7 = [(SBSServer *)self volumeEventMonitorDelegate];
    [v7 fetchLatestEvents:a3 completionHandler:v6];
  }

  else
  {
    v8 = _SBSLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315138;
      v11 = "[SBSServer fetchLatestEvents:completionHandler:]";
      _os_log_error_impl(&dword_26B246000, v8, OS_LOG_TYPE_ERROR, "Trying to call %s without entitlement", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)render:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self renderInternal:v4];
  }

  else
  {
    v5 = _SBSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Trying to call render without entitlement", v6, 2u);
    }
  }
}

- (void)setTurnOffBrightnessFactor:(BOOL)a3
{
  v3 = _SBSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_26B246000, v3, OS_LOG_TYPE_ERROR, "setTurnOffBrightnessFactor not supported.", v4, 2u);
  }
}

- (void)intercomWithOptions:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.soundboard.system"])
  {
    v5 = [(SBSServer *)self _gatherXPCClientInfo:v4];
    [(SBSServer *)self intercomWithOptionsInternal:v5];
  }

  else
  {
    v6 = _SBSLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_26B246000, v6, OS_LOG_TYPE_ERROR, "Missing required entitlement for intercom", v7, 2u);
    }
  }
}

- (void)identifyWithOptions:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.soundboard.system"])
  {
    v5 = [(SBSServer *)self _gatherXPCClientInfo:v4];
    [(SBSServer *)self identifyWithOptionsInternal:v5];
  }

  else
  {
    v6 = _SBSLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_26B246000, v6, OS_LOG_TYPE_ERROR, "Missing required entitlement for identify", v7, 2u);
    }
  }
}

- (void)obliterate:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.soundboard.system"])
  {
    v5 = [(SBSServer *)self _gatherXPCClientInfo:v4];
    [(SBSServer *)self obliterateInternal:v5];
  }

  else
  {
    v6 = _SBSLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_26B246000, v6, OS_LOG_TYPE_ERROR, "Missing required entitlement for obliterate", v7, 2u);
    }
  }
}

- (void)requestDeferredReboot
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(SBSServer *)self _hasEntitlement:@"com.apple.soundboard.system"];
  v4 = _SBSLoggingFacility();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(SBSServer *)self _gatherXPCClientInfo:0];
      v8 = 136315394;
      v9 = "[SBSServer requestDeferredReboot]";
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_26B246000, v5, OS_LOG_TYPE_DEFAULT, "In %s Client Info..%@", &v8, 0x16u);
    }

    [(SBSServer *)self requestDeferredRebootInternal];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Missing required entitlement for requestDeferredReboot", &v8, 2u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)reboot:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.soundboard.system"])
  {
    v5 = [(SBSServer *)self _gatherXPCClientInfo:v4];
    [(SBSServer *)self rebootInternal:v5];
  }

  else
  {
    v6 = _SBSLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_26B246000, v6, OS_LOG_TYPE_ERROR, "Missing required entitlement for reboot", v7, 2u);
    }
  }
}

- (void)airDropSysdiagnose:(id)a3 airDropID:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.soundboard.sysdiagnose"])
  {
    [(SBSServer *)self _findConnectionAndSetClientType:2];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__SBSServer_airDropSysdiagnose_airDropID_completionHandler___block_invoke;
    v13[3] = &unk_279CD52E8;
    v14 = v10;
    [(SBSServer *)self airDropSysdiagnoseInternal:v8 airDropID:v9 completionHandler:v13];
    v11 = v14;
  }

  else
  {
    v12 = _SBSLoggingFacility();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26B246000, v12, OS_LOG_TYPE_ERROR, "Missing Entitlement for starting sysdiagnose", buf, 2u);
    }

    v11 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.soundboardservices" code:1001 userInfo:0];
    (*(v10 + 2))(v10, 0, v11);
  }
}

- (void)cancelCurrentSysdiagnose:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.soundboard.sysdiagnose"])
  {
    [(SBSServer *)self _findConnectionAndSetClientType:2];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SBSServer_cancelCurrentSysdiagnose___block_invoke;
    v7[3] = &unk_279CD55F8;
    v8 = v4;
    [(SBSServer *)self cancelSysdiagnoseInternal:v7];
    v5 = v8;
  }

  else
  {
    v6 = _SBSLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26B246000, v6, OS_LOG_TYPE_ERROR, "Missing Entitlement for cancelling sysdiagnose", buf, 2u);
    }

    v5 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.soundboardservices" code:1001 userInfo:0];
    (*(v4 + 2))(v4, v5);
  }
}

- (void)createSysdiagnose:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.soundboard.sysdiagnose"])
  {
    [(SBSServer *)self _findConnectionAndSetClientType:2];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__SBSServer_createSysdiagnose___block_invoke;
    v7[3] = &unk_279CD52C0;
    v8 = v4;
    [(SBSServer *)self createSysdiagnoseInternal:v7];
    v5 = v8;
  }

  else
  {
    v6 = _SBSLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26B246000, v6, OS_LOG_TYPE_ERROR, "Missing Entitlement for starting sysdiagnose", buf, 2u);
    }

    v5 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"com.apple.soundboardservices" code:1001 userInfo:0];
    (*(v4 + 2))(v4, 0, v5);
  }
}

- (void)isDeviceStereoFollower:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.stereoleader.soundboard"])
  {
    [(SBSServer *)self _findConnectionAndSetClientType:1];
    [(SBSServer *)self isDeviceStereoFollowerInternal:v4];
  }

  else
  {
    v5 = _SBSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Trying to call isDeviceStereoFollower without entitlement", v6, 2u);
    }
  }
}

- (void)setVolume:(float)a3
{
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    *&v5 = a3;

    [(SBSServer *)self setVolumeInternal:v5];
  }

  else
  {
    v6 = _SBSLoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&dword_26B246000, v6, OS_LOG_TYPE_ERROR, "Trying to call setLEDContents without entitlement", v7, 2u);
    }
  }
}

- (void)getVolume:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self getVolumeInternal:v4];
  }

  else
  {
    v5 = _SBSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Trying to call setLEDContents without entitlement", v6, 2u);
    }
  }
}

- (void)siriSay:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self siriSayInternal:v4];
  }

  else
  {
    v5 = _SBSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Trying to call siriSay without entitlement", v6, 2u);
    }
  }
}

- (void)setLEDContents:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self setLEDContentsInternal:v4];
  }

  else
  {
    v5 = _SBSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Trying to call setLEDContents without entitlement", v6, 2u);
    }
  }
}

- (void)setFeatureFlags:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self setFeatureFlagsInternal:v4];
  }

  else
  {
    v5 = _SBSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Trying to call setFeatureFlags without entitlement", v6, 2u);
    }
  }
}

- (void)getFeatureFlags:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self getFeatureFlagsInternal:v4];
  }

  else
  {
    v5 = _SBSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Trying to call getFeatureFlags without entitlement", v6, 2u);
    }
  }
}

- (void)disassociateNetworkWithName:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self disassociateNetworkWithNameInternal:v4];
  }

  else
  {
    v5 = _SBSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Trying to call sendButton without entitlement", v6, 2u);
    }
  }
}

- (void)disassociateCurrentNetwork
{
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {

    [(SBSServer *)self disassociateCurrentNetworkInternal];
  }

  else
  {
    v3 = _SBSLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_26B246000, v3, OS_LOG_TYPE_ERROR, "Trying to call sendButton without entitlement", v4, 2u);
    }
  }
}

- (void)clearHomeSWUpdate
{
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {

    [(SBSServer *)self clearHomeSWUpdateInternal];
  }

  else
  {
    v3 = _SBSLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_26B246000, v3, OS_LOG_TYPE_ERROR, "Trying to call sendButton without entitlement", v4, 2u);
    }
  }
}

- (void)setHomeUpdateState:(int64_t)a3
{
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {

    [(SBSServer *)self setHomeUpdateStateInternal:a3];
  }

  else
  {
    v5 = _SBSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Trying to call sendButton without entitlement", v6, 2u);
    }
  }
}

- (void)injectSWUpdateToHome:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self injectSWUpdateToHomeInternal:v4];
  }

  else
  {
    v5 = _SBSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Trying to call sendButton without entitlement", v6, 2u);
    }
  }
}

- (void)suScanForSoftwareUpdate
{
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {

    [(SBSServer *)self suScanForSoftwareUpdateInternal];
  }

  else
  {
    v3 = _SBSLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_26B246000, v3, OS_LOG_TYPE_ERROR, "Trying to call sendButton without entitlement", v4, 2u);
    }
  }
}

- (void)sendButtonCommand:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self sendButtonCommandInternal:v4];
  }

  else
  {
    v5 = _SBSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Trying to call sendButton without entitlement", v6, 2u);
    }
  }
}

- (void)triggerWiFiCoreCapture:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self triggerWiFiCoreCaptureInternal:v4];
  }

  else
  {
    v5 = _SBSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Trying to call triggerWiFiCoreCapture without entitlement", v6, 2u);
    }
  }
}

- (void)sendLEDCommand:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self sendLEDCommandInternal:v4];
  }

  else
  {
    v5 = _SBSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Trying to call sendLED without entitlement", v6, 2u);
    }
  }
}

- (void)resetUserDefault:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self resetUserDefaultInternal:v4];
  }

  else
  {
    v5 = _SBSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Trying to call resetUserDefault without entitlement", v6, 2u);
    }
  }
}

- (void)resetAllUserDefaults
{
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {

    [(SBSServer *)self resetAllUserDefaultsInternal];
  }

  else
  {
    v3 = _SBSLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_26B246000, v3, OS_LOG_TYPE_ERROR, "Trying to call resetAllUserDefaults without entitlement", v4, 2u);
    }
  }
}

- (void)setUserDefaults:(id)a3 withValue:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self setUserDefaultsInternal:v6 withValue:v7];
  }

  else
  {
    v8 = _SBSLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_26B246000, v8, OS_LOG_TYPE_ERROR, "Trying to call setUserDefaults without entitlement", v9, 2u);
    }
  }
}

- (void)getUserDefaults:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self getUserDefaultsInternal:v4];
  }

  else
  {
    v5 = _SBSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Trying to call getUserDefaults without entitlement", v6, 2u);
    }
  }
}

- (void)setTuningInfoOnBox:(id)a3 at:(id)a4 withValue:(float)a5
{
  v8 = a3;
  v9 = a4;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    *&v10 = a5;
    [(SBSServer *)self setTuningInfoOnBoxInternal:v8 at:v9 withValue:v10];
  }

  else
  {
    v11 = _SBSLoggingFacility();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_26B246000, v11, OS_LOG_TYPE_ERROR, "Trying to call setTuningInfoOnBox without entitlement", v12, 2u);
    }
  }
}

- (void)getTuningInfo:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self getTuningInfoInternal:v4];
  }

  else
  {
    v5 = _SBSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Trying to call getTuningInfo without entitlement", v6, 2u);
    }
  }
}

- (BOOL)isMediaAlarm:(id)a3
{
  if (![(SBSServer *)self _hasEntitlement:@"com.apple.soundboard.homepodcontrols"])
  {
    v3 = _SBSLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_26B246000, v3, OS_LOG_TYPE_ERROR, "Trying to call isMediaAlarm without entitlement", v5, 2u);
    }
  }

  return 0;
}

- (void)getAllSyncedAlarmsAndTimers:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.soundboard.homepodcontrols"])
  {
    [(SBSServer *)self getAllSyncedAlarmsAndTimersInternal:v4];
  }

  else
  {
    v5 = _SBSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Trying to call getAllSyncedAlarmsAndTimers without entitlement", v6, 2u);
    }
  }
}

- (void)getLEDInfo:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self getLEDInfoInternal:v4];
  }

  else
  {
    v5 = _SBSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Trying to call getLEDInfo without entitlement", v6, 2u);
    }
  }
}

- (void)getSelectDebugInfo:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self getSelectDebugInfoInternal:v6 reply:v7];
  }

  else
  {
    v8 = _SBSLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_26B246000, v8, OS_LOG_TYPE_ERROR, "Trying to call getSelectDebugInfo without entitlement", v9, 2u);
    }

    v7[2](v7, MEMORY[0x277CBEC10]);
  }
}

- (void)getAllDebugInfo:(id)a3
{
  v4 = a3;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self getAllDebugInfoInternal:v4];
  }

  else
  {
    v5 = _SBSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_26B246000, v5, OS_LOG_TYPE_ERROR, "Trying to call getAllDebugInfo without entitlement", v6, 2u);
    }
  }
}

- (void)handleClientDisconnection:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _SBSLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v4;
    _os_log_impl(&dword_26B246000, v5, OS_LOG_TYPE_DEFAULT, "Client with connection %@ is disconnecting.", buf, 0xCu);
  }

  v6 = self->_clients;
  objc_sync_enter(v6);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = self->_clients;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v20 + 1) + 8 * i);
        v12 = [v11 connection];
        v13 = v12 == v4;

        if (v13)
        {
          if ([v11 clientType] == 5)
          {
            v15 = [(SBSServer *)self proximityHandoffUIDelegate];
            v16 = v15 == 0;

            if (!v16)
            {
              v17 = [(SBSServer *)self proximityHandoffUIDelegate];
              [v17 handoffCancelWithHandoffType:0];
            }
          }

          v14 = v11;
          goto LABEL_16;
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_16:

  v18 = _SBSLoggingFacility();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v14;
    _os_log_impl(&dword_26B246000, v18, OS_LOG_TYPE_DEFAULT, "Client object found: %@", buf, 0xCu);
  }

  if (v14)
  {
    [(NSMutableArray *)self->_clients removeObject:v14];
  }

  objc_sync_exit(v6);

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(SBSClient);
  [(SBSClient *)v8 setConnection:v7];
  [(SBSClient *)v8 setClientType:0];
  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287BCB3C8];
  v10 = [(SBSClient *)v8 connection];
  [v10 setExportedInterface:v9];

  v11 = [(SBSClient *)v8 connection];
  [v11 setExportedObject:self];

  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287BCD1E0];
  v13 = [(SBSClient *)v8 connection];
  [v13 setRemoteObjectInterface:v12];

  v14 = [(SBSClient *)v8 connection];
  v15 = [v14 exportedInterface];
  v16 = [v15 classesForSelector:sel_getAllSyncedAlarmsAndTimers_ argumentIndex:0 ofReply:1];

  v17 = MEMORY[0x277CBEB98];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [v16 setByAddingObjectsFromSet:v19];

  v21 = [(SBSClient *)v8 connection];
  v22 = [v21 exportedInterface];
  [v22 setClasses:v20 forSelector:sel_getAllSyncedAlarmsAndTimers_ argumentIndex:0 ofReply:1];

  objc_initWeak(&location, self);
  v23 = [(SBSClient *)v8 connection];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __48__SBSServer_listener_shouldAcceptNewConnection___block_invoke;
  v33[3] = &unk_279CD5290;
  objc_copyWeak(&v35, &location);
  v24 = v7;
  v34 = v24;
  [v23 setInterruptionHandler:v33];

  v25 = [(SBSClient *)v8 connection];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __48__SBSServer_listener_shouldAcceptNewConnection___block_invoke_2;
  v30[3] = &unk_279CD5290;
  objc_copyWeak(&v32, &location);
  v26 = v24;
  v31 = v26;
  [v25 setInvalidationHandler:v30];

  v27 = self->_clients;
  objc_sync_enter(v27);
  [(NSMutableArray *)self->_clients addObject:v8];
  objc_sync_exit(v27);

  v28 = [(SBSClient *)v8 connection];
  [v28 resume];

  objc_destroyWeak(&v32);
  objc_destroyWeak(&v35);
  objc_destroyWeak(&location);

  return 1;
}

void __48__SBSServer_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleClientDisconnection:*(a1 + 32)];
}

void __48__SBSServer_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained handleClientDisconnection:*(a1 + 32)];
}

- (SBSServer)init
{
  v12.receiver = self;
  v12.super_class = SBSServer;
  v2 = [(SBSServer *)&v12 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.soundboardservices.server"];
    serverListener = v2->_serverListener;
    v2->_serverListener = v3;

    [(NSXPCListener *)v2->_serverListener setDelegate:v2];
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    clients = v2->_clients;
    v2->_clients = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    delegates = v2->_delegates;
    v2->_delegates = v7;

    [(NSXPCListener *)v2->_serverListener resume];
    if (+[SBSServer _isInternalBuild])
    {
      v9 = [[SBSRemoteDeviceReceiver alloc] initWithDelegate:v2];
      receiver = v2->_receiver;
      v2->_receiver = v9;
    }
  }

  return v2;
}

+ (BOOL)_isInternalBuild
{
  if (_isInternalBuild_onceToken != -1)
  {
    dispatch_once(&_isInternalBuild_onceToken, &__block_literal_global);
  }

  return _isInternalBuild_isInternal;
}

uint64_t __29__SBSServer__isInternalBuild__block_invoke()
{
  result = os_variant_allows_internal_security_policies();
  _isInternalBuild_isInternal = result;
  return result;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__SBSServer_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sSharedInstance;

  return v2;
}

uint64_t __27__SBSServer_sharedInstance__block_invoke(uint64_t a1)
{
  sSharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

@end