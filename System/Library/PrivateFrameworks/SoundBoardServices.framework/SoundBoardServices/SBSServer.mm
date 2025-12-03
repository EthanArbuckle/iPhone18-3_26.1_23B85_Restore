@interface SBSServer
+ (BOOL)_isInternalBuild;
+ (id)sharedInstance;
- (BOOL)_hasEntitlement:(id)entitlement;
- (BOOL)isMediaAlarm:(id)alarm;
- (BOOL)isMediaAlarmInternal:(id)internal;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
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
- (id)_gatherXPCClientInfo:(id)info;
- (id)_processNameForPID:(int)d;
- (void)_findConnectionAndSetClientType:(unint64_t)type;
- (void)airDropSysdiagnose:(id)sysdiagnose airDropID:(id)d completionHandler:(id)handler;
- (void)airDropSysdiagnoseInternal:(id)internal airDropID:(id)d completionHandler:(id)handler;
- (void)cancelCurrentSysdiagnose:(id)sysdiagnose;
- (void)cancelSysdiagnoseInternal:(id)internal;
- (void)clearHomeSWUpdate;
- (void)clearHomeSWUpdateInternal;
- (void)createSysdiagnose:(id)sysdiagnose;
- (void)createSysdiagnoseInternal:(id)internal;
- (void)disassociateCurrentNetwork;
- (void)disassociateCurrentNetworkInternal;
- (void)disassociateNetworkWithName:(id)name;
- (void)disassociateNetworkWithNameInternal:(id)internal;
- (void)fetchLatestEvents:(int64_t)events completionHandler:(id)handler;
- (void)getAllDebugInfo:(id)info;
- (void)getAllDebugInfoInternal:(id)internal;
- (void)getAllSyncedAlarmsAndTimers:(id)timers;
- (void)getAllSyncedAlarmsAndTimersInternal:(id)internal;
- (void)getFeatureFlags:(id)flags;
- (void)getFeatureFlagsInternal:(id)internal;
- (void)getInstalledProfilesInternal:(id)internal;
- (void)getLEDInfo:(id)info;
- (void)getLEDInfoInternal:(id)internal;
- (void)getPowerEstimateForInterval:(float)interval reply:(id)reply;
- (void)getPowerEstimateForIntervalInternal:(float)internal reply:(id)reply;
- (void)getSelectDebugInfo:(id)info reply:(id)reply;
- (void)getSelectDebugInfoInternal:(id)internal reply:(id)reply;
- (void)getTuningInfo:(id)info;
- (void)getTuningInfoInternal:(id)internal;
- (void)getUserDefaults:(id)defaults;
- (void)getUserDefaultsInternal:(id)internal;
- (void)getVolume:(id)volume;
- (void)getVolumeInternal:(id)internal;
- (void)handleClientDisconnection:(id)disconnection;
- (void)handoffCancelInternalWithHandoffType:(unint64_t)type;
- (void)handoffCompleteInternalWithHandoffType:(unint64_t)type;
- (void)handoffStartInternalWithHandoffType:(unint64_t)type;
- (void)handoffStartWithArtworkColors:(id)colors handoffType:(unint64_t)type;
- (void)handoffStartWithArtworkColorsInternal:(id)internal handoffType:(unint64_t)type;
- (void)handoffStartWithHandoffType:(unint64_t)type;
- (void)handoffUpdateIntensityInternal:(float)internal handoffType:(unint64_t)type;
- (void)identifyWithOptions:(id)options;
- (void)identifyWithOptionsInternal:(id)internal;
- (void)injectSWUpdateToHome:(id)home;
- (void)injectSWUpdateToHomeInternal:(id)internal;
- (void)installProfileDataInternal:(id)internal completion:(id)completion;
- (void)intercomWithOptions:(id)options;
- (void)intercomWithOptionsInternal:(id)internal;
- (void)isDeviceStereoFollower:(id)follower;
- (void)isDeviceStereoFollowerInternal:(id)internal;
- (void)obliterate:(id)obliterate;
- (void)obliterateInternal:(id)internal;
- (void)proximityHandoffCancelled;
- (void)proximityHandoffCompleted;
- (void)proximityHandoffInactive;
- (void)proximityHandoffStarted;
- (void)proximityHandoffUpdating;
- (void)reboot:(id)reboot;
- (void)rebootInternal:(id)internal;
- (void)removeProfileByIdentifierInternal:(id)internal completion:(id)completion;
- (void)render:(id)render;
- (void)renderInternal:(id)internal;
- (void)requestDeferredReboot;
- (void)requestDeferredRebootInternal;
- (void)resetAllUserDefaults;
- (void)resetAllUserDefaultsInternal;
- (void)resetUserDefault:(id)default;
- (void)resetUserDefaultInternal:(id)internal;
- (void)sendButtonCommand:(id)command;
- (void)sendButtonCommandInternal:(id)internal;
- (void)sendLEDCommand:(id)command;
- (void)sendLEDCommandInternal:(id)internal;
- (void)setFeatureFlags:(id)flags;
- (void)setFeatureFlagsInternal:(id)internal;
- (void)setHomeUpdateState:(int64_t)state;
- (void)setHomeUpdateStateInternal:(int64_t)internal;
- (void)setLEDContents:(id)contents;
- (void)setLEDContentsInternal:(id)internal;
- (void)setTuningInfoOnBox:(id)box at:(id)at withValue:(float)value;
- (void)setTuningInfoOnBoxInternal:(id)internal at:(id)at withValue:(float)value;
- (void)setTurnOffBrightnessFactor:(BOOL)factor;
- (void)setUserDefaults:(id)defaults withValue:(id)value;
- (void)setUserDefaultsInternal:(id)internal withValue:(id)value;
- (void)setVolume:(float)volume;
- (void)setVolumeInternal:(float)internal;
- (void)siriSay:(id)say;
- (void)siriSayInternal:(id)internal;
- (void)suScanForSoftwareUpdate;
- (void)suScanForSoftwareUpdateInternal;
- (void)triggerWiFiCoreCapture:(id)capture;
- (void)triggerWiFiCoreCaptureInternal:(id)internal;
@end

@implementation SBSServer

- (void)setVolumeInternal:(float)internal
{
  debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
  *&v4 = internal;
  [debugInfoDelegate setVolume:v4];
}

- (void)getVolumeInternal:(id)internal
{
  internalCopy = internal;
  debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
  [debugInfoDelegate getVolume:internalCopy];
}

- (void)installProfileDataInternal:(id)internal completion:(id)completion
{
  completionCopy = completion;
  internalCopy = internal;
  profilesDelegate = [(SBSServer *)self profilesDelegate];
  [profilesDelegate installProfileData:internalCopy completion:completionCopy];
}

- (void)removeProfileByIdentifierInternal:(id)internal completion:(id)completion
{
  completionCopy = completion;
  internalCopy = internal;
  profilesDelegate = [(SBSServer *)self profilesDelegate];
  [profilesDelegate removeProfileByIdentifier:internalCopy completion:completionCopy];
}

- (void)getInstalledProfilesInternal:(id)internal
{
  internalCopy = internal;
  profilesDelegate = [(SBSServer *)self profilesDelegate];
  [profilesDelegate getInstalledProfiles:internalCopy];
}

- (void)getPowerEstimateForIntervalInternal:(float)internal reply:(id)reply
{
  replyCopy = reply;
  powerMonitorDelegate = [(SBSServer *)self powerMonitorDelegate];
  *&v7 = internal;
  [powerMonitorDelegate getPowerEstimateForInterval:replyCopy reply:v7];
}

- (void)handoffCompleteInternalWithHandoffType:(unint64_t)type
{
  proximityHandoffUIDelegate = [(SBSServer *)self proximityHandoffUIDelegate];
  [proximityHandoffUIDelegate handoffCompleteWithHandoffType:type];
}

- (void)handoffCancelInternalWithHandoffType:(unint64_t)type
{
  proximityHandoffUIDelegate = [(SBSServer *)self proximityHandoffUIDelegate];
  [proximityHandoffUIDelegate handoffCancelWithHandoffType:type];
}

- (void)handoffUpdateIntensityInternal:(float)internal handoffType:(unint64_t)type
{
  proximityHandoffUIDelegate = [(SBSServer *)self proximityHandoffUIDelegate];
  *&v6 = internal;
  [proximityHandoffUIDelegate handoffUpdateIntensity:type handoffType:v6];
}

- (void)handoffStartWithArtworkColorsInternal:(id)internal handoffType:(unint64_t)type
{
  internalCopy = internal;
  v8 = [[SBSColorGroup alloc] initWithData:internalCopy];

  proximityHandoffUIDelegate = [(SBSServer *)self proximityHandoffUIDelegate];
  [proximityHandoffUIDelegate handoffStartWithArtworkColors:v8 handoffType:type];
}

- (void)handoffStartInternalWithHandoffType:(unint64_t)type
{
  proximityHandoffUIDelegate = [(SBSServer *)self proximityHandoffUIDelegate];
  [proximityHandoffUIDelegate handoffStartWithHandoffType:type];
}

- (void)intercomWithOptionsInternal:(id)internal
{
  internalCopy = internal;
  systemDelegate = [(SBSServer *)self systemDelegate];
  [systemDelegate intercomWithOptions:internalCopy];
}

- (void)identifyWithOptionsInternal:(id)internal
{
  internalCopy = internal;
  systemDelegate = [(SBSServer *)self systemDelegate];
  [systemDelegate identifyWithOptions:internalCopy];
}

- (void)obliterateInternal:(id)internal
{
  internalCopy = internal;
  systemDelegate = [(SBSServer *)self systemDelegate];
  [systemDelegate obliterate:internalCopy];
}

- (void)requestDeferredRebootInternal
{
  systemDelegate = [(SBSServer *)self systemDelegate];
  [systemDelegate requestDeferredReboot];
}

- (void)rebootInternal:(id)internal
{
  internalCopy = internal;
  systemDelegate = [(SBSServer *)self systemDelegate];
  [systemDelegate reboot:internalCopy];
}

- (void)cancelSysdiagnoseInternal:(id)internal
{
  internalCopy = internal;
  sysdiagnoseDelegate = [(SBSServer *)self sysdiagnoseDelegate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SBSServer_Internal__cancelSysdiagnoseInternal___block_invoke;
  v7[3] = &unk_279CD55F8;
  v8 = internalCopy;
  v6 = internalCopy;
  [sysdiagnoseDelegate cancelCurrentSysdiagnose:v7];
}

- (void)airDropSysdiagnoseInternal:(id)internal airDropID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  internalCopy = internal;
  airdropServiceDelegate = [(SBSServer *)self airdropServiceDelegate];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __78__SBSServer_Internal__airDropSysdiagnoseInternal_airDropID_completionHandler___block_invoke;
  v13[3] = &unk_279CD52E8;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [airdropServiceDelegate airDropSysdiagnose:internalCopy airDropID:dCopy completionHandler:v13];
}

- (void)createSysdiagnoseInternal:(id)internal
{
  internalCopy = internal;
  sysdiagnoseDelegate = [(SBSServer *)self sysdiagnoseDelegate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__SBSServer_Internal__createSysdiagnoseInternal___block_invoke;
  v7[3] = &unk_279CD52C0;
  v8 = internalCopy;
  v6 = internalCopy;
  [sysdiagnoseDelegate createSysdiagnose:v7];
}

- (void)isDeviceStereoFollowerInternal:(id)internal
{
  internalCopy = internal;
  stereoLeaderDelegate = [(SBSServer *)self stereoLeaderDelegate];
  [stereoLeaderDelegate isDeviceStereoFollower:internalCopy];
}

- (void)suScanForSoftwareUpdateInternal
{
  debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
  [debugInfoDelegate suScanForSoftwareUpdate];
}

- (void)siriSayInternal:(id)internal
{
  internalCopy = internal;
  debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
  [debugInfoDelegate siriSay:internalCopy];
}

- (void)renderInternal:(id)internal
{
  internalCopy = internal;
  debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
  [debugInfoDelegate render:internalCopy];
}

- (void)setLEDContentsInternal:(id)internal
{
  internalCopy = internal;
  debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
  [debugInfoDelegate setLEDContents:internalCopy];
}

- (void)setFeatureFlagsInternal:(id)internal
{
  internalCopy = internal;
  debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
  [debugInfoDelegate setFeatureFlags:internalCopy];
}

- (void)getFeatureFlagsInternal:(id)internal
{
  if (internal)
  {
    internalCopy = internal;
    debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
    [debugInfoDelegate getFeatureFlags:internalCopy];
  }
}

- (void)disassociateNetworkWithNameInternal:(id)internal
{
  internalCopy = internal;
  debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
  [debugInfoDelegate disassociateNetworkWithName:internalCopy];
}

- (void)disassociateCurrentNetworkInternal
{
  debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
  [debugInfoDelegate disassociateCurrentNetwork];
}

- (void)clearHomeSWUpdateInternal
{
  debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
  [debugInfoDelegate clearHomeSWUpdate];
}

- (void)setHomeUpdateStateInternal:(int64_t)internal
{
  debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
  [debugInfoDelegate setHomeUpdateState:internal];
}

- (void)injectSWUpdateToHomeInternal:(id)internal
{
  internalCopy = internal;
  debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
  [debugInfoDelegate injectSWUpdateToHome:internalCopy];
}

- (void)sendButtonCommandInternal:(id)internal
{
  internalCopy = internal;
  debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
  [debugInfoDelegate sendButtonCommand:internalCopy];
}

- (void)triggerWiFiCoreCaptureInternal:(id)internal
{
  internalCopy = internal;
  debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
  [debugInfoDelegate triggerWiFiCoreCapture:internalCopy];
}

- (void)sendLEDCommandInternal:(id)internal
{
  internalCopy = internal;
  debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
  [debugInfoDelegate sendLEDCommand:internalCopy];
}

- (void)resetUserDefaultInternal:(id)internal
{
  internalCopy = internal;
  debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
  [debugInfoDelegate resetUserDefault:internalCopy];
}

- (void)resetAllUserDefaultsInternal
{
  debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
  [debugInfoDelegate resetAllUserDefaults];
}

- (void)setUserDefaultsInternal:(id)internal withValue:(id)value
{
  valueCopy = value;
  internalCopy = internal;
  debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
  [debugInfoDelegate setUserDefaults:internalCopy withValue:valueCopy];
}

- (void)getUserDefaultsInternal:(id)internal
{
  if (internal)
  {
    internalCopy = internal;
    debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
    [debugInfoDelegate getUserDefaults:internalCopy];
  }
}

- (void)setTuningInfoOnBoxInternal:(id)internal at:(id)at withValue:(float)value
{
  atCopy = at;
  internalCopy = internal;
  debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
  *&v10 = value;
  [debugInfoDelegate setTuningInfoOnBox:internalCopy at:atCopy withValue:v10];
}

- (void)getTuningInfoInternal:(id)internal
{
  if (internal)
  {
    internalCopy = internal;
    debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
    [debugInfoDelegate getTuningInfo:internalCopy];
  }
}

- (BOOL)isMediaAlarmInternal:(id)internal
{
  internalCopy = internal;
  controlsDelegate = [(SBSServer *)self controlsDelegate];
  if (controlsDelegate && (v6 = controlsDelegate, [(SBSServer *)self controlsDelegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    controlsDelegate2 = [(SBSServer *)self controlsDelegate];
    v10 = [controlsDelegate2 isMediaAlarm:internalCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)getAllSyncedAlarmsAndTimersInternal:(id)internal
{
  if (internal)
  {
    internalCopy = internal;
    controlsDelegate = [(SBSServer *)self controlsDelegate];
    [controlsDelegate getAllSyncedAlarmsAndTimers:internalCopy];
  }
}

- (void)getLEDInfoInternal:(id)internal
{
  if (internal)
  {
    internalCopy = internal;
    debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
    [debugInfoDelegate getLEDInfo:internalCopy];
  }
}

- (void)getSelectDebugInfoInternal:(id)internal reply:(id)reply
{
  replyCopy = reply;
  internalCopy = internal;
  debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
  [debugInfoDelegate getSelectDebugInfo:internalCopy reply:replyCopy];
}

- (void)getAllDebugInfoInternal:(id)internal
{
  if (internal)
  {
    internalCopy = internal;
    debugInfoDelegate = [(SBSServer *)self debugInfoDelegate];
    [debugInfoDelegate getAllDebugInfo:internalCopy];
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

- (id)_gatherXPCClientInfo:(id)info
{
  infoCopy = info;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  processIdentifier = [currentConnection processIdentifier];
  v7 = [(SBSServer *)self _processNameForPID:processIdentifier];
  if (infoCopy)
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:infoCopy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  v10 = [MEMORY[0x277CCABB0] numberWithInt:processIdentifier];
  [v9 setObject:v10 forKey:@"pid"];

  [v9 setObject:v7 forKey:@"process-name"];
  v11 = [v9 copy];

  return v11;
}

- (id)_processNameForPID:(int)d
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, 512);
  v6 = 648;
  *v7 = 0xE00000001;
  v8 = 1;
  dCopy = d;
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

- (BOOL)_hasEntitlement:(id)entitlement
{
  v3 = MEMORY[0x277CCAE80];
  entitlementCopy = entitlement;
  currentConnection = [v3 currentConnection];
  v6 = [currentConnection valueForEntitlement:entitlementCopy];

  LOBYTE(entitlementCopy) = [MEMORY[0x277CBEC38] isEqual:v6];
  return entitlementCopy;
}

- (void)_findConnectionAndSetClientType:(unint64_t)type
{
  v20 = *MEMORY[0x277D85DE8];
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
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
        connection = [v11 connection];
        v13 = connection == currentConnection;

        if (v13)
        {
          [v11 setClientType:type];
        }
      }

      v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  objc_sync_exit(v6);
  v14 = *MEMORY[0x277D85DE8];
}

- (void)getPowerEstimateForInterval:(float)interval reply:(id)reply
{
  replyCopy = reply;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.soundboard.system"])
  {
    *&v7 = interval;
    [(SBSServer *)self getPowerEstimateForIntervalInternal:replyCopy reply:v7];
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
          connection = [v8 connection];
          remoteObjectProxy = [connection remoteObjectProxy];
          [remoteObjectProxy handoffUpdating];

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
          connection = [v8 connection];
          remoteObjectProxy = [connection remoteObjectProxy];
          [remoteObjectProxy handoffStarted];

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
          connection = [v8 connection];
          remoteObjectProxy = [connection remoteObjectProxy];
          [remoteObjectProxy handoffInactive];

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
          connection = [v8 connection];
          remoteObjectProxy = [connection remoteObjectProxy];
          [remoteObjectProxy handoffCompleted];

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
          connection = [v8 connection];
          remoteObjectProxy = [connection remoteObjectProxy];
          [remoteObjectProxy handoffCancelled];

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

- (void)handoffStartWithArtworkColors:(id)colors handoffType:(unint64_t)type
{
  colorsCopy = colors;
  [(SBSServer *)self _findConnectionAndSetClientType:5];
  data = [colorsCopy data];

  [(SBSServer *)self handoffStartWithArtworkColorsInternal:data handoffType:type];
}

- (void)handoffStartWithHandoffType:(unint64_t)type
{
  [(SBSServer *)self _findConnectionAndSetClientType:5];

  [(SBSServer *)self handoffStartInternalWithHandoffType:type];
}

- (void)fetchLatestEvents:(int64_t)events completionHandler:(id)handler
{
  v12 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    volumeEventMonitorDelegate = [(SBSServer *)self volumeEventMonitorDelegate];
    [volumeEventMonitorDelegate fetchLatestEvents:events completionHandler:handlerCopy];
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

- (void)render:(id)render
{
  renderCopy = render;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self renderInternal:renderCopy];
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

- (void)setTurnOffBrightnessFactor:(BOOL)factor
{
  v3 = _SBSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_26B246000, v3, OS_LOG_TYPE_ERROR, "setTurnOffBrightnessFactor not supported.", v4, 2u);
  }
}

- (void)intercomWithOptions:(id)options
{
  optionsCopy = options;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.soundboard.system"])
  {
    v5 = [(SBSServer *)self _gatherXPCClientInfo:optionsCopy];
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

- (void)identifyWithOptions:(id)options
{
  optionsCopy = options;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.soundboard.system"])
  {
    v5 = [(SBSServer *)self _gatherXPCClientInfo:optionsCopy];
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

- (void)obliterate:(id)obliterate
{
  obliterateCopy = obliterate;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.soundboard.system"])
  {
    v5 = [(SBSServer *)self _gatherXPCClientInfo:obliterateCopy];
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

- (void)reboot:(id)reboot
{
  rebootCopy = reboot;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.soundboard.system"])
  {
    v5 = [(SBSServer *)self _gatherXPCClientInfo:rebootCopy];
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

- (void)airDropSysdiagnose:(id)sysdiagnose airDropID:(id)d completionHandler:(id)handler
{
  sysdiagnoseCopy = sysdiagnose;
  dCopy = d;
  handlerCopy = handler;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.soundboard.sysdiagnose"])
  {
    [(SBSServer *)self _findConnectionAndSetClientType:2];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__SBSServer_airDropSysdiagnose_airDropID_completionHandler___block_invoke;
    v13[3] = &unk_279CD52E8;
    v14 = handlerCopy;
    [(SBSServer *)self airDropSysdiagnoseInternal:sysdiagnoseCopy airDropID:dCopy completionHandler:v13];
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
    (*(handlerCopy + 2))(handlerCopy, 0, v11);
  }
}

- (void)cancelCurrentSysdiagnose:(id)sysdiagnose
{
  sysdiagnoseCopy = sysdiagnose;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.soundboard.sysdiagnose"])
  {
    [(SBSServer *)self _findConnectionAndSetClientType:2];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __38__SBSServer_cancelCurrentSysdiagnose___block_invoke;
    v7[3] = &unk_279CD55F8;
    v8 = sysdiagnoseCopy;
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
    (*(sysdiagnoseCopy + 2))(sysdiagnoseCopy, v5);
  }
}

- (void)createSysdiagnose:(id)sysdiagnose
{
  sysdiagnoseCopy = sysdiagnose;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.soundboard.sysdiagnose"])
  {
    [(SBSServer *)self _findConnectionAndSetClientType:2];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__SBSServer_createSysdiagnose___block_invoke;
    v7[3] = &unk_279CD52C0;
    v8 = sysdiagnoseCopy;
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
    (*(sysdiagnoseCopy + 2))(sysdiagnoseCopy, 0, v5);
  }
}

- (void)isDeviceStereoFollower:(id)follower
{
  followerCopy = follower;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.stereoleader.soundboard"])
  {
    [(SBSServer *)self _findConnectionAndSetClientType:1];
    [(SBSServer *)self isDeviceStereoFollowerInternal:followerCopy];
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

- (void)setVolume:(float)volume
{
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    *&v5 = volume;

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

- (void)getVolume:(id)volume
{
  volumeCopy = volume;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self getVolumeInternal:volumeCopy];
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

- (void)siriSay:(id)say
{
  sayCopy = say;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self siriSayInternal:sayCopy];
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

- (void)setLEDContents:(id)contents
{
  contentsCopy = contents;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self setLEDContentsInternal:contentsCopy];
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

- (void)setFeatureFlags:(id)flags
{
  flagsCopy = flags;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self setFeatureFlagsInternal:flagsCopy];
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

- (void)getFeatureFlags:(id)flags
{
  flagsCopy = flags;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self getFeatureFlagsInternal:flagsCopy];
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

- (void)disassociateNetworkWithName:(id)name
{
  nameCopy = name;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self disassociateNetworkWithNameInternal:nameCopy];
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

- (void)setHomeUpdateState:(int64_t)state
{
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {

    [(SBSServer *)self setHomeUpdateStateInternal:state];
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

- (void)injectSWUpdateToHome:(id)home
{
  homeCopy = home;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self injectSWUpdateToHomeInternal:homeCopy];
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

- (void)sendButtonCommand:(id)command
{
  commandCopy = command;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self sendButtonCommandInternal:commandCopy];
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

- (void)triggerWiFiCoreCapture:(id)capture
{
  captureCopy = capture;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self triggerWiFiCoreCaptureInternal:captureCopy];
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

- (void)sendLEDCommand:(id)command
{
  commandCopy = command;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self sendLEDCommandInternal:commandCopy];
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

- (void)resetUserDefault:(id)default
{
  defaultCopy = default;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self resetUserDefaultInternal:defaultCopy];
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

- (void)setUserDefaults:(id)defaults withValue:(id)value
{
  defaultsCopy = defaults;
  valueCopy = value;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self setUserDefaultsInternal:defaultsCopy withValue:valueCopy];
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

- (void)getUserDefaults:(id)defaults
{
  defaultsCopy = defaults;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self getUserDefaultsInternal:defaultsCopy];
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

- (void)setTuningInfoOnBox:(id)box at:(id)at withValue:(float)value
{
  boxCopy = box;
  atCopy = at;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    *&v10 = value;
    [(SBSServer *)self setTuningInfoOnBoxInternal:boxCopy at:atCopy withValue:v10];
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

- (void)getTuningInfo:(id)info
{
  infoCopy = info;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self getTuningInfoInternal:infoCopy];
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

- (BOOL)isMediaAlarm:(id)alarm
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

- (void)getAllSyncedAlarmsAndTimers:(id)timers
{
  timersCopy = timers;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.soundboard.homepodcontrols"])
  {
    [(SBSServer *)self getAllSyncedAlarmsAndTimersInternal:timersCopy];
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

- (void)getLEDInfo:(id)info
{
  infoCopy = info;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self getLEDInfoInternal:infoCopy];
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

- (void)getSelectDebugInfo:(id)info reply:(id)reply
{
  infoCopy = info;
  replyCopy = reply;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self getSelectDebugInfoInternal:infoCopy reply:replyCopy];
  }

  else
  {
    v8 = _SBSLoggingFacility();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_26B246000, v8, OS_LOG_TYPE_ERROR, "Trying to call getSelectDebugInfo without entitlement", v9, 2u);
    }

    replyCopy[2](replyCopy, MEMORY[0x277CBEC10]);
  }
}

- (void)getAllDebugInfo:(id)info
{
  infoCopy = info;
  if ([(SBSServer *)self _hasEntitlement:@"com.apple.debuginfo.soundboard"])
  {
    [(SBSServer *)self getAllDebugInfoInternal:infoCopy];
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

- (void)handleClientDisconnection:(id)disconnection
{
  v27 = *MEMORY[0x277D85DE8];
  disconnectionCopy = disconnection;
  v5 = _SBSLoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = disconnectionCopy;
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
        connection = [v11 connection];
        v13 = connection == disconnectionCopy;

        if (v13)
        {
          if ([v11 clientType] == 5)
          {
            proximityHandoffUIDelegate = [(SBSServer *)self proximityHandoffUIDelegate];
            v16 = proximityHandoffUIDelegate == 0;

            if (!v16)
            {
              proximityHandoffUIDelegate2 = [(SBSServer *)self proximityHandoffUIDelegate];
              [proximityHandoffUIDelegate2 handoffCancelWithHandoffType:0];
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = objc_alloc_init(SBSClient);
  [(SBSClient *)v8 setConnection:connectionCopy];
  [(SBSClient *)v8 setClientType:0];
  v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287BCB3C8];
  connection = [(SBSClient *)v8 connection];
  [connection setExportedInterface:v9];

  connection2 = [(SBSClient *)v8 connection];
  [connection2 setExportedObject:self];

  v12 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287BCD1E0];
  connection3 = [(SBSClient *)v8 connection];
  [connection3 setRemoteObjectInterface:v12];

  connection4 = [(SBSClient *)v8 connection];
  exportedInterface = [connection4 exportedInterface];
  v16 = [exportedInterface classesForSelector:sel_getAllSyncedAlarmsAndTimers_ argumentIndex:0 ofReply:1];

  v17 = MEMORY[0x277CBEB98];
  v18 = objc_opt_class();
  v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
  v20 = [v16 setByAddingObjectsFromSet:v19];

  connection5 = [(SBSClient *)v8 connection];
  exportedInterface2 = [connection5 exportedInterface];
  [exportedInterface2 setClasses:v20 forSelector:sel_getAllSyncedAlarmsAndTimers_ argumentIndex:0 ofReply:1];

  objc_initWeak(&location, self);
  connection6 = [(SBSClient *)v8 connection];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __48__SBSServer_listener_shouldAcceptNewConnection___block_invoke;
  v33[3] = &unk_279CD5290;
  objc_copyWeak(&v35, &location);
  v24 = connectionCopy;
  v34 = v24;
  [connection6 setInterruptionHandler:v33];

  connection7 = [(SBSClient *)v8 connection];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __48__SBSServer_listener_shouldAcceptNewConnection___block_invoke_2;
  v30[3] = &unk_279CD5290;
  objc_copyWeak(&v32, &location);
  v26 = v24;
  v31 = v26;
  [connection7 setInvalidationHandler:v30];

  v27 = self->_clients;
  objc_sync_enter(v27);
  [(NSMutableArray *)self->_clients addObject:v8];
  objc_sync_exit(v27);

  connection8 = [(SBSClient *)v8 connection];
  [connection8 resume];

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
  block[4] = self;
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