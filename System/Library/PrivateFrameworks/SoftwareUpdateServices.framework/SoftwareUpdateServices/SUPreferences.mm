@interface SUPreferences
+ (SUPreferences)sharedInstance;
- (BOOL)_autoInstallDefaultValue;
- (BOOL)_autoInstallSecurityResponseDefaultValue;
- (BOOL)_cachedBoolValueForKey:(id)a3 withDefaultValue:(BOOL)a4;
- (BOOL)_getBooleanPreferenceForKey:(id)a3 withDefaultValue:(BOOL)a4;
- (BOOL)autoInstallSecurityResponse;
- (BOOL)autoInstallSecurityResponseForceOff;
- (BOOL)autoInstallSecurityResponseForceOn;
- (BOOL)autoInstallSystemAndDataFiles;
- (BOOL)autoInstallSystemDataFilesForceOff;
- (BOOL)autoInstallSystemDataFilesForceOn;
- (BOOL)autoUpdateForceOff;
- (BOOL)autoUpdateForceOn;
- (BOOL)disableAutoDownload;
- (BOOL)disableSplombo;
- (BOOL)isAutomaticUpdateV2Enabled;
- (BOOL)isChinaDevice;
- (BOOL)isKeySetInPreferences:(id)a3;
- (BOOL)previousUserSpecifiedAutoInstallSecurityResponse;
- (BOOL)previousUserSpecifiedAutomaticUpdateV2Enabled;
- (SUPreferences)init;
- (id)_cachedDictValueForKey:(id)a3;
- (id)_cachedNumberValueForKey:(id)a3;
- (id)_cachedObjectForKey:(id)a3 ofClass:(Class)a4 log:(BOOL)a5;
- (id)_cachedStringValueForKey:(id)a3;
- (id)_copyDictPreferenceForKey:(id)a3;
- (id)_copyNumberPreferenceForKey:(id)a3;
- (id)_copyStringPreferenceForKey:(id)a3;
- (id)_copyValueOfKey:(id)a3 withType:(int64_t)a4;
- (id)_mandatorySUFlagsForPreferences;
- (int)spaceOverrideCleanupTime;
- (int)testGetOffSampleRate;
- (unint64_t)spaceOverrideMaxPSUSOptionalSize;
- (void)_copyPreferenceForKey:(__CFString *)a3 ofType:(unint64_t)a4;
- (void)_loadPreferences:(BOOL)a3;
- (void)_setBooleanPreferenceForKey:(id)a3 value:(BOOL)a4;
- (void)_setCachedBooleanPreferenceForKey:(id)a3 value:(BOOL)a4;
- (void)_setCachedObjectPreferenceForKey:(id)a3 value:(id)a4;
- (void)_setObjectPreferenceForKey:(id)a3 value:(id)a4;
- (void)_setupAutomaticUpdateV2Enabled;
- (void)_setupSoftwareUpdateReserveDisabled;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)enableAutomaticDownload:(BOOL)a3;
- (void)preference:(id)a3 didChangeTo:(id)a4;
- (void)removeObserver:(id)a3;
- (void)setSoftwareUpdateReserveSize:(id)a3;
- (void)setSplatFollowUpDelayOverride:(id)a3;
- (void)setSystemGrowthMarginSize:(id)a3;
@end

@implementation SUPreferences

- (SUPreferences)init
{
  v111.receiver = self;
  v111.super_class = SUPreferences;
  v2 = [(SUPreferences *)&v111 init];
  if (v2)
  {
    v3 = dispatch_workloop_create("com.apple.softwareupdateservices.preferencesWorkLoop");
    preferencesWorkloop = v2->_preferencesWorkloop;
    v2->_preferencesWorkloop = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cachedPreferences = v2->_cachedPreferences;
    v2->_cachedPreferences = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    preferencesDefinitions = v2->_preferencesDefinitions;
    v2->_preferencesDefinitions = v7;

    v9 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v9;

    v11 = [[SUPreferenceEntry alloc] initWithKey:@"SUUpdateRequiredFromFactory" type:0 description:@"Sets mandatory update dictionary value SUMandatoryUpdateRequiredFromFactory"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v11 forKey:@"SUUpdateRequiredFromFactory"];

    v12 = [[SUPreferenceEntry alloc] initWithKey:@"SUCheckForUpdateFromFactory" type:0 description:@"Sets mandatory update dictionary value SUMandatoryUpdateCheckForUpdateFromFactory"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v12 forKey:@"SUCheckForUpdateFromFactory"];

    v13 = [[SUPreferenceEntry alloc] initWithKey:@"SUUpdateRequiredOnErase" type:0 description:@"Sets mandatory update dictionary value SUMandatoryUpdateRequiredOnErase"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v13 forKey:@"SUUpdateRequiredOnErase"];

    v14 = [[SUPreferenceEntry alloc] initWithKey:@"SUCheckForUpdateOnErase" type:0 description:@"Sets mandatory update dictionary value SUMandatoryUpdateCheckForUpdateOnErase"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v14 forKey:@"SUCheckForUpdateOnErase"];

    v15 = [[SUPreferenceEntry alloc] initWithKey:@"SUDisableManagedRequest" type:0 description:@"Disables managed update requests"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v15 forKey:@"SUDisableManagedRequest"];

    v16 = [[SUPreferenceEntry alloc] initWithKey:@"SUDisableUserWiFiOnlyPeriod" type:0 description:@"Disables wifi-only download period, allowing cellular download immediately"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v16 forKey:@"SUDisableUserWiFiOnlyPeriod"];

    v17 = [[SUPreferenceEntry alloc] initWithKey:@"SUDisableBuildNumberComparison" type:0 description:@"Disables build version number comparison"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v17 forKey:@"SUDisableBuildNumberComparison"];

    v18 = [[SUPreferenceEntry alloc] initWithKey:@"SUAllowSameBuildUpdates" type:0 description:@"Allows device to update to the same build version as currently installed version"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v18 forKey:@"SUAllowSameBuildUpdates"];

    v19 = [[SUPreferenceEntry alloc] initWithKey:@"SUDisableAvailabilityAlerts" type:0 description:@"Disabled SU availability alerts"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v19 forKey:@"SUDisableAvailabilityAlerts"];

    v20 = [[SUPreferenceEntry alloc] initWithKey:@"SUDisableAutoDownload" type:0 description:@"Disabled automatic downloads of software update assets"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v20 forKey:@"SUDisableAutoDownload"];

    v21 = [[SUPreferenceEntry alloc] initWithKey:@"SUScanWeeklyInternally" type:0 description:@"Changes the auto scan interval to once a week for internal builds"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v21 forKey:@"SUScanWeeklyInternally"];

    v22 = [[SUPreferenceEntry alloc] initWithKey:@"SUForceFullReplacement" type:0 description:@"Forces the device to only return full replacement update assets"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v22 forKey:@"SUForceFullReplacement"];

    v23 = [[SUPreferenceEntry alloc] initWithKey:@"SUDisbaleFullReplacementFallback" type:0 description:@"Disabled full replacement fallback if prepare fails with patching error"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v23 forKey:@"SUDisbaleFullReplacementFallback"];

    v24 = [[SUPreferenceEntry alloc] initWithKey:@"SUAutoScanOverrideInterval" type:2 description:@"Overrides the auto scan interval to a specified number of seconds"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v24 forKey:@"SUAutoScanOverrideInterval"];

    v25 = [[SUPreferenceEntry alloc] initWithKey:@"SUAutoDownloadOverrideInterval" type:2 description:@"Overrides the auto download interval to a specified number of seconds"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v25 forKey:@"SUAutoDownloadOverrideInterval"];

    v26 = [[SUPreferenceEntry alloc] initWithKey:@"SUUpdateDelayInterval" type:2 description:@"Sets the managed update delay period to specified number of days. Requires SUShouldDelayUpdates = true"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v26 forKey:@"SUUpdateDelayInterval"];

    v27 = [[SUPreferenceEntry alloc] initWithKey:@"SUDelayInMinutes" type:0 description:@"Sets the managed update delay period interval to be in minutes instead of days"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v27 forKey:@"SUDelayInMinutes"];

    v28 = [[SUPreferenceEntry alloc] initWithKey:@"SUShouldDelayUpdates" type:0 description:@"Enables managed update delay period"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v28 forKey:@"SUShouldDelayUpdates"];

    v29 = [[SUPreferenceEntry alloc] initWithKey:@"SUUnmetConstraints" type:2 description:@"Simulates unmet installation constraints"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v29 forKey:@"SUUnmetConstraints"];

    v30 = [[SUPreferenceEntry alloc] initWithKey:@"SURequestedPMV" type:1 description:@"Simulates an MDM administrator pushing a requested product marketing version"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v30 forKey:@"SURequestedPMV"];

    v31 = [[SUPreferenceEntry alloc] initWithKey:@"SUAutoUpdateForceOn" type:0 description:@"Forces the auto install setting ON for client option and asset attribute"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v31 forKey:@"SUAutoUpdateForceOn"];

    v32 = [[SUPreferenceEntry alloc] initWithKey:@"SUAutoUpdateForceOff" type:0 description:@"Forces the auto install setting OFF for client option and asset attribute"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v32 forKey:@"SUAutoUpdateForceOff"];

    v33 = [[SUPreferenceEntry alloc] initWithKey:@"SUAutoSUStartDelta" type:2 description:@"Sets automatic installation start time to N seconds after prepare completes."];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v33 forKey:@"SUAutoSUStartDelta"];

    v34 = [[SUPreferenceEntry alloc] initWithKey:@"SUAutoSUEndDelta" type:2 description:@"Sets automatic installation end time to N seconds after prepare completes"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v34 forKey:@"SUAutoSUEndDelta"];

    v35 = [[SUPreferenceEntry alloc] initWithKey:@"SUAutoSUUnlockStartDelta" type:2 description:@"Sets automatic installation unlock start time to N seconds after prepare completes"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v35 forKey:@"SUAutoSUUnlockStartDelta"];

    v36 = [[SUPreferenceEntry alloc] initWithKey:@"SUAutoSUUnlockEndDelta" type:2 description:@"Sets automatic installation unlock end time to N seconds after prepare completes"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v36 forKey:@"SUAutoSUUnlockEndDelta"];

    v37 = [[SUPreferenceEntry alloc] initWithKey:@"SUAutomaticUpdateV2Enabled" type:0 description:@"Enables/Disabled automatic update client setting"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v37 forKey:@"SUAutomaticUpdateV2Enabled"];

    v38 = [[SUPreferenceEntry alloc] initWithKey:@"SUAutomaticUpdateV2Enabled_prev" type:0 description:@"Enables/Disabled automatic update client setting (previous user specified setting). Probably not what you're looking for. You likely want to use SUAutomaticUpdateV2Enabled"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v38 forKey:@"SUAutomaticUpdateV2Enabled_prev"];

    v39 = [[SUPreferenceEntry alloc] initWithKey:@"SUBannerDelay" type:2 description:@"Sets the delay value in seconds for presenting auto update banner (30 minutes by default)"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v39 forKey:@"SUBannerDelay"];

    v40 = [[SUPreferenceEntry alloc] initWithKey:@"SUAutoDownloadDeletedBuild" type:0 description:@"Enabled auto download of deleted builds"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v40 forKey:@"SUAutoDownloadDeletedBuild"];

    v41 = [[SUPreferenceEntry alloc] initWithKey:@"SUMDMSoftwareUpdatePath" type:2 description:@"Sets the MDM user initiated scan SU path\n\t0 = Default\n\t1 = slow lane\n\t2 = fast lane"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v41 forKey:@"SUMDMSoftwareUpdatePath"];

    v42 = [[SUPreferenceEntry alloc] initWithKey:@"SUAnalyticsSubmissionInterval" type:2 description:@"Sets the time interval(in minutes) for the submission of Analytics events"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v42 forKey:@"SUAnalyticsSubmissionInterval"];

    v43 = [[SUPreferenceEntry alloc] initWithKey:@"SUQueryCustomerBuilds" type:0 description:@"If set to true, MobileAsset query for SU, brain and doc asset will have NULL ReleaseType"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v43 forKey:@"SUQueryCustomerBuilds"];

    v44 = [[SUPreferenceEntry alloc] initWithKey:@"SUDisableRollback" type:0 description:@"Disabled Splat rollback"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v44 forKey:@"SUDisableRollback"];

    v45 = [[SUPreferenceEntry alloc] initWithKey:@"SUPreferencesSuggestedRollbackSplatVersion" type:1 description:@"Suggested rollback splat version"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v45 forKey:@"SUPreferencesSuggestedRollbackSplatVersion"];

    v46 = [[SUPreferenceEntry alloc] initWithKey:@"SUUseEmptyPatches" type:0 description:@"If set to true, MobileAsset query for SU, brain and doc asset will use Empty ReleaseType"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v46 forKey:@"SUUseEmptyPatches"];

    v47 = [[SUPreferenceEntry alloc] initWithKey:@"SUAllowSplatUpdate" type:0 description:@"Allow Splat software updates"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v47 forKey:@"SUAllowSplatUpdate"];

    v48 = [[SUPreferenceEntry alloc] initWithKey:@"SUFakeSplatInstalled" type:0 description:@"Fake Splat installed"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v48 forKey:@"SUFakeSplatInstalled"];

    v49 = [[SUPreferenceEntry alloc] initWithKey:@"SUAllowSameSplatUpdate" type:0 description:@"Allow updating Splat to the same version as currently installed splat"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v49 forKey:@"SUAllowSameSplatUpdate"];

    v50 = [[SUPreferenceEntry alloc] initWithKey:@"SUSplatScanInterval" type:2 description:@"Auto-scan interval for splat updates"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v50 forKey:@"SUSplatScanInterval"];

    v51 = [[SUPreferenceEntry alloc] initWithKey:@"SUAutoInstallSystemDataFilesForceOn" type:0 description:@"Forces the auto install system and data files setting ON for client option and asset attribute"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v51 forKey:@"SUAutoInstallSystemDataFilesForceOn"];

    v52 = [[SUPreferenceEntry alloc] initWithKey:@"SUAutoInstallSystemDataFilesForceOff" type:0 description:@"Forces the auto install system and data files setting OFF for client option and asset attribute"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v52 forKey:@"SUAutoInstallSystemDataFilesForceOff"];

    v53 = [[SUPreferenceEntry alloc] initWithKey:@"SUAutoInstallSystemDataFiles" type:0 description:@"Auto install system and data files"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v53 forKey:@"SUAutoInstallSystemDataFiles"];

    v54 = [[SUPreferenceEntry alloc] initWithKey:@"SUAutoInstallSecurityResponseForceOn" type:0 description:@"Forces the auto install Rapid Security Reponse setting ON for client option and asset attribute"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v54 forKey:@"SUAutoInstallSecurityResponseForceOn"];

    v55 = [[SUPreferenceEntry alloc] initWithKey:@"SUAutoInstallSecurityResponseForceOff" type:0 description:@"Forces the auto install Rapid Security Reponse setting OFF for client option and asset attribute"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v55 forKey:@"SUAutoInstallSecurityResponseForceOff"];

    v56 = [[SUPreferenceEntry alloc] initWithKey:@"SUAutoInstallSecurityResponse" type:0 description:@"Auto install Rapid Security Response"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v56 forKey:@"SUAutoInstallSecurityResponse"];

    v57 = [[SUPreferenceEntry alloc] initWithKey:@"SUAutoInstallSecurityResponse_prev" type:0 description:@"Auto install Rapid Security Response (previous user specified setting). Probably not what you're looking for. You likely want to use SUAutoInstallSecurityResponse"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v57 forKey:@"SUAutoInstallSecurityResponse_prev"];

    v58 = [[SUPreferenceEntry alloc] initWithKey:@"SUIgnoreBatteryInfo" type:0 description:@"If set to true, battery will be considered as plugged-in and fully charged"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v58 forKey:@"SUIgnoreBatteryInfo"];

    v59 = [[SUPreferenceEntry alloc] initWithKey:@"SUBatteryInfoOverridePluggedIn" type:2 description:@"If set to true, battery will be considered as plugged-in. If false, battery will be considered as not plugged in. This overrides SUIgnoreBatteryInfo"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v59 forKey:@"SUBatteryInfoOverridePluggedIn"];

    v60 = [[SUPreferenceEntry alloc] initWithKey:@"SUBatteryInfoOverrideWirelessCharging" type:2 description:@"If set to true, battery will be considered as wirelessly charging. If false, battery will be considered as wirelessly charging. This overrides SUIgnoreBatteryInfo"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v60 forKey:@"SUBatteryInfoOverrideWirelessCharging"];

    v61 = [[SUPreferenceEntry alloc] initWithKey:@"SUBatteryLevelOverride" type:2 description:@"Set this to a numerical value from 0 to 100 to override the current battery level. This overrides SUIgnoreBatteryInfo"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v61 forKey:@"SUBatteryLevelOverride"];

    v62 = [[SUPreferenceEntry alloc] initWithKey:@"SUCustomerPowerPolicies" type:0 description:@"If set to true, customer power policies will be used on internal build"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v62 forKey:@"SUCustomerPowerPolicies"];

    v63 = [[SUPreferenceEntry alloc] initWithKey:@"SUDisablePurgeOnNewerUpdateFound" type:0 description:@"If set to true, prepared updates will not be purged if a newer update is located"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v63 forKey:@"SUDisablePurgeOnNewerUpdateFound"];

    v64 = [[SUPreferenceEntry alloc] initWithKey:@"SURecommendedUpdateInterval" type:2 description:@"Interval time in seconds between recommended update notifications"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v64 forKey:@"SURecommendedUpdateInterval"];

    v65 = [[SUPreferenceEntry alloc] initWithKey:@"SUUseXPCActivityScheduler" type:0 description:@"If set to true, the SUCoreXPCActivity scheduler will be used for scheduling"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v65 forKey:@"SUUseXPCActivityScheduler"];

    v66 = [[SUPreferenceEntry alloc] initWithKey:@"SUNetworkMonitorOverride" type:2 description:@"Set this to override the network monitor."];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v66 forKey:@"SUNetworkMonitorOverride"];

    v67 = [[SUPreferenceEntry alloc] initWithKey:@"SUSkipDownload" type:0 description:@"If set to true, skip the download and the apply phases."];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v67 forKey:@"SUSkipDownload"];

    v68 = [[SUPreferenceEntry alloc] initWithKey:@"SUSkipApply" type:0 description:@"If set to true, skip the apply phase."];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v68 forKey:@"SUSkipApply"];

    v69 = [[SUPreferenceEntry alloc] initWithKey:@"SUSuppressSSOTokenInInstall" type:0 description:@"If set to true, suppress issuing apple connect SSO token when installing SU."];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v69 forKey:@"SUSuppressSSOTokenInInstall"];

    v70 = [[SUPreferenceEntry alloc] initWithKey:@"SUSuppressSSOTokenInDownload" type:0 description:@"If set to true, suppress issuing apple connect SSO token when downloading SU asset."];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v70 forKey:@"SUSuppressSSOTokenInDownload"];

    v71 = [[SUPreferenceEntry alloc] initWithKey:@"SUKeybagState" type:2 description:@"Set this to override the keybag state."];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v71 forKey:@"SUKeybagState"];

    v72 = [[SUPreferenceEntry alloc] initWithKey:@"SUBuddyInitiatedScan" type:0 description:@"If set to true, scans will be buddy-initiated"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v72 forKey:@"SUBuddyInitiatedScan"];

    v73 = [[SUPreferenceEntry alloc] initWithKey:@"SUInboxUpdaterdInitiatedScan" type:0 description:@"if set to true, scans will be initiated with inboxupdaterd"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v73 forKey:@"SUInboxUpdaterdInitiatedScan"];

    v74 = [[SUPreferenceEntry alloc] initWithKey:@"SUUseSpaceOverrides" type:0 description:@"If set to true, skip all actual space operations and use the overrides"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v74 forKey:@"SUUseSpaceOverrides"];

    v75 = [[SUPreferenceEntry alloc] initWithKey:@"SUSpaceOverrideHaveEnoughSpace" type:0 description:@"If set to false, the device will report an error of insufficient space"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v75 forKey:@"SUSpaceOverrideHaveEnoughSpace"];

    v76 = [[SUPreferenceEntry alloc] initWithKey:@"SUSpaceOverrideNeedCacheDelete" type:0 description:@"If set to true, CacheDelete will be needed (if enabled)"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v76 forKey:@"SUSpaceOverrideNeedCacheDelete"];

    v77 = [[SUPreferenceEntry alloc] initWithKey:@"SUSpaceOverrideNeedAppOffload" type:0 description:@"If set to true, AppOffload will be needed (if enabled)"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v77 forKey:@"SUSpaceOverrideNeedAppOffload"];

    v78 = [[SUPreferenceEntry alloc] initWithKey:@"SUSpaceOverrideNeedMobileAssetSuspend" type:0 description:@"If set to true, MobileAssetSuspend will be needed (if enabled)"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v78 forKey:@"SUSpaceOverrideNeedMobileAssetSuspend"];

    v79 = [[SUPreferenceEntry alloc] initWithKey:@"SUSpaceOverrideCleanupTime" type:2 description:@"Number of seconds for the cleanup to finish; even => success; odd => failure."];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v79 forKey:@"SUSpaceOverrideCleanupTime"];

    v80 = [[SUPreferenceEntry alloc] initWithKey:@"SUSpaceOverrideMaxPSUSOptionalSize" type:2 description:@"Number of bytes allowed to stage psus optional assets"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v80 forKey:@"SUSpaceOverrideMaxPSUSOptionalSize"];

    v81 = [[SUPreferenceEntry alloc] initWithKey:@"SUBypassSystemRootWarning" type:0 description:@"If set to true, updates won't be blocked on live fs"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v81 forKey:@"SUBypassSystemRootWarning"];

    v82 = [[SUPreferenceEntry alloc] initWithKey:@"SUDisableAutoDownloadJitter" type:0 description:@"If set to true, disable jitter for auto downloads"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v82 forKey:@"SUDisableAutoDownloadJitter"];

    v83 = [[SUPreferenceEntry alloc] initWithKey:@"SUDisableAutoInstallJitter" type:0 description:@"If set to true, disable jitter for auto installations"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v83 forKey:@"SUDisableAutoInstallJitter"];

    v84 = [[SUPreferenceEntry alloc] initWithKey:@"SUAutoInstallRetryDelay" type:2 description:@"Delay before scheduling another auto installation"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v84 forKey:@"SUAutoInstallRetryDelay"];

    v85 = [[SUPreferenceEntry alloc] initWithKey:@"SUOverrideRamping" type:0 description:@"If set to true, descriptors will be considered ramped"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v85 forKey:@"SUOverrideRamping"];

    v86 = [[SUPreferenceEntry alloc] initWithKey:@"SUOverrideGranularRamping" type:0 description:@"If set to true, descriptors will be considered granularly ramped"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v86 forKey:@"SUOverrideGranularRamping"];

    v87 = [[SUPreferenceEntry alloc] initWithKey:@"SUOverrideSessionIDRampingPortion" type:1 description:@"To override the ramping portion of the session id"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v87 forKey:@"SUOverrideSessionIDRampingPortion"];

    v88 = [[SUPreferenceEntry alloc] initWithKey:@"SUOverrideAllowAutoDownloadOnBattery" type:0 description:@"If set to true, allow auto-downloading on battery"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v88 forKey:@"SUOverrideAllowAutoDownloadOnBattery"];

    v89 = [[SUPreferenceEntry alloc] initWithKey:@"SUOverrideAutoDownloadOnBatteryDelay" type:2 description:@"Delay before auto-downloading on battery after the update is fully-unramped"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v89 forKey:@"SUOverrideAutoDownloadOnBatteryDelay"];

    v90 = [[SUPreferenceEntry alloc] initWithKey:@"SUDisableSplombo" type:0 description:@"If set to false, enable splombo"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v90 forKey:@"SUDisableSplombo"];

    v91 = [[SUPreferenceEntry alloc] initWithKey:@"SUFakeInstallFailure" type:0 description:@"If set to true, force an installation failure"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v91 forKey:@"SUFakeInstallFailure"];

    v92 = [[SUPreferenceEntry alloc] initWithKey:@"SUDisableFollowUps" type:0 description:@"If set to true, don't post followups"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v92 forKey:@"SUDisableFollowUps"];

    v93 = [[SUPreferenceEntry alloc] initWithKey:@"SUOverrideSplatComboBuildVersion" type:1 description:@"Set to override the build version of the associated splat for a splombo"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v93 forKey:@"SUOverrideSplatComboBuildVersion"];

    v94 = [[SUPreferenceEntry alloc] initWithKey:@"SUEnablePreSuStaging" type:0 description:@"If set to true, enable pre SU staging in SUCore"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v94 forKey:@"SUEnablePreSuStaging"];

    v95 = [[SUPreferenceEntry alloc] initWithKey:@"SUEnablePreSuStagingForOptionalAssets" type:0 description:@"If set to true, enable pre SU staging for optional assets in SUCore"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v95 forKey:@"SUEnablePreSuStagingForOptionalAssets"];

    v96 = [[SUPreferenceEntry alloc] initWithKey:@"SUSSOUsernameForPersonalization" type:1 description:@"If set, use this username for personalization"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v96 forKey:@"SUSSOUsernameForPersonalization"];

    v97 = [[SUPreferenceEntry alloc] initWithKey:@"SUSSOTokenForPersonalization" type:1 description:@"If set, use this token for personalization"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v97 forKey:@"SUSSOTokenForPersonalization"];

    v98 = [[SUPreferenceEntry alloc] initWithKey:@"SUOverrideCarrierDownloadPolicyProperties" type:3 description:@"Override carrier download policy properties. Don't set via sus_tool; use defaults write instead"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v98 forKey:@"SUOverrideCarrierDownloadPolicyProperties"];

    v99 = [[SUPreferenceEntry alloc] initWithKey:@"SUDisableAlternateScan" type:0 description:@"If set to true, disable the alternate scan"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v99 forKey:@"SUDisableAlternateScan"];

    v100 = [[SUPreferenceEntry alloc] initWithKey:@"SUAlternateAudience" type:1 description:@"If set, use this audience to perform the alternate scan"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v100 forKey:@"SUAlternateAudience"];

    v101 = [[SUPreferenceEntry alloc] initWithKey:@"SUAlwaysPromoteAlternate" type:0 description:@"If set to true, always promote the alternate update"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v101 forKey:@"SUAlwaysPromoteAlternate"];

    v102 = [[SUPreferenceEntry alloc] initWithKey:@"SUOverrideDocumentationPath" type:1 description:@"Path to override the documentation (presented in the pane)"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v102 forKey:@"SUOverrideDocumentationPath"];

    v103 = [[SUPreferenceEntry alloc] initWithKey:@"SUSoftwareUpdateReserveDisabled" type:0 description:@"Enable/Disable the reserve space feature"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v103 forKey:@"SUSoftwareUpdateReserveDisabled"];

    v104 = [[SUPreferenceEntry alloc] initWithKey:@"SUSoftwareUpdateReserveSize" type:2 description:@"override the reserve size for software update on the device"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v104 forKey:@"SUSoftwareUpdateReserveSize"];

    v105 = [[SUPreferenceEntry alloc] initWithKey:@"SUSystemGrowthMarginSize" type:2 description:@"override the system growth estiamtion of the new software update"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v105 forKey:@"SUSystemGrowthMarginSize"];

    v106 = [[SUPreferenceEntry alloc] initWithKey:@"SUTestGetOffSampleRate" type:2 description:@"The sample rate (probability) of enabling the Get-Off testing flow"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v106 forKey:@"SUTestGetOffSampleRate"];

    v107 = [[SUPreferenceEntry alloc] initWithKey:@"SUSplatFollowUpDelayOverride" type:2 description:@"Override the 7-day follow-up delay for splat-only updates (in seconds). For testing purposes only."];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v107 forKey:@"SUSplatFollowUpDelayOverride"];

    v108 = [[SUPreferenceEntry alloc] initWithKey:@"SUEnableRapidReturnToService" type:0 description:@"Enable Rapid Return to Service for testing"];
    [(NSMutableDictionary *)v2->_preferencesDefinitions setValue:v108 forKey:@"SUEnableRapidReturnToService"];

    [(SUPreferences *)v2 _loadPreferences:0];
    [(SUPreferences *)v2 _setupAutomaticUpdateV2Enabled];
    [(SUPreferences *)v2 _setupSoftwareUpdateReserveDisabled];
    CFPreferencesSynchronize(@"com.apple.softwareupdateservicesd", @"mobile", *MEMORY[0x277CBF010]);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, __SUPreferencesChanged, @"SUPreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"SUPreferencesChangedNotification", 0);
  v4.receiver = self;
  v4.super_class = SUPreferences;
  [(SUPreferences *)&v4 dealloc];
}

+ (SUPreferences)sharedInstance
{
  if (sharedInstance_pred_4 != -1)
  {
    +[SUPreferences sharedInstance];
  }

  v3 = sharedInstance___instance_10;

  return v3;
}

uint64_t __31__SUPreferences_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SUPreferences);
  v1 = sharedInstance___instance_10;
  sharedInstance___instance_10 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  preferencesWorkloop = self->_preferencesWorkloop;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__SUPreferences_addObserver___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_and_wait(preferencesWorkloop, v7);
}

void __29__SUPreferences_addObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  preferencesWorkloop = self->_preferencesWorkloop;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__SUPreferences_removeObserver___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async_and_wait(preferencesWorkloop, v7);
}

void __32__SUPreferences_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)preference:(id)a3 didChangeTo:(id)a4
{
  v6 = a3;
  v7 = a4;
  preferencesWorkloop = self->_preferencesWorkloop;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SUPreferences_preference_didChangeTo___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(preferencesWorkloop, block);
}

void __40__SUPreferences_preference_didChangeTo___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*(a1 + 32) observers];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 preferences:*(a1 + 32) didChangePreference:*(a1 + 40) toValue:*(a1 + 48)];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)disableAutoDownload
{
  v3 = [(SUPreferences *)self _autoDownloadDisableDefaultValue];

  return [(SUPreferences *)self _cachedBoolValueForKey:@"SUDisableAutoDownload" withDefaultValue:v3];
}

- (BOOL)autoInstallSystemDataFilesForceOn
{
  v9 = [(SUPreferences *)self _cachedBoolValueForKey:@"SUAutoInstallSystemDataFilesForceOn" withDefaultValue:0];
  if (v9)
  {
    SULogInfo(@"%s: %@ is ON", v2, v3, v4, v5, v6, v7, v8, "[SUPreferences autoInstallSystemDataFilesForceOn]");
  }

  return v9;
}

- (BOOL)autoInstallSystemDataFilesForceOff
{
  v9 = [(SUPreferences *)self _cachedBoolValueForKey:@"SUAutoInstallSystemDataFilesForceOff" withDefaultValue:0];
  if (v9)
  {
    SULogInfo(@"%s: %@ is OFF", v2, v3, v4, v5, v6, v7, v8, "[SUPreferences autoInstallSystemDataFilesForceOff]");
  }

  return v9;
}

- (BOOL)autoInstallSystemAndDataFiles
{
  v3 = [(SUPreferences *)self _autoInstallSystemDataFilesDefaultValue];

  return [(SUPreferences *)self _cachedBoolValueForKey:@"SUAutoInstallSystemDataFiles" withDefaultValue:v3];
}

- (BOOL)autoInstallSecurityResponseForceOn
{
  v9 = [(SUPreferences *)self _cachedBoolValueForKey:@"SUAutoInstallSecurityResponseForceOn" withDefaultValue:0];
  if (v9)
  {
    SULogInfo(@"%s: %@ is ON", v2, v3, v4, v5, v6, v7, v8, "[SUPreferences autoInstallSecurityResponseForceOn]");
  }

  return v9;
}

- (BOOL)autoInstallSecurityResponseForceOff
{
  v9 = [(SUPreferences *)self _cachedBoolValueForKey:@"SUAutoInstallSecurityResponseForceOff" withDefaultValue:0];
  if (v9)
  {
    SULogInfo(@"%s: %@ is OFF", v2, v3, v4, v5, v6, v7, v8, "[SUPreferences autoInstallSecurityResponseForceOff]");
  }

  return v9;
}

- (BOOL)autoInstallSecurityResponse
{
  v3 = [(SUPreferences *)self _autoInstallSecurityResponseDefaultValue];

  return [(SUPreferences *)self _cachedBoolValueForKey:@"SUAutoInstallSecurityResponse" withDefaultValue:v3];
}

- (BOOL)previousUserSpecifiedAutoInstallSecurityResponse
{
  v3 = [(SUPreferences *)self _autoInstallSecurityResponseDefaultValue];

  return [(SUPreferences *)self _cachedBoolValueForKey:@"SUAutoInstallSecurityResponse_prev" withDefaultValue:v3];
}

- (BOOL)autoUpdateForceOn
{
  v9 = [(SUPreferences *)self _cachedBoolValueForKey:@"SUAutoUpdateForceOn" withDefaultValue:0];
  if (v9)
  {
    SULogInfo(@"%s: %@ is ON", v2, v3, v4, v5, v6, v7, v8, "[SUPreferences autoUpdateForceOn]");
  }

  return v9;
}

- (BOOL)autoUpdateForceOff
{
  v9 = [(SUPreferences *)self _cachedBoolValueForKey:@"SUAutoUpdateForceOff" withDefaultValue:0];
  if (v9)
  {
    SULogInfo(@"%s: %@ is OFF", v2, v3, v4, v5, v6, v7, v8, "[SUPreferences autoUpdateForceOff]");
  }

  return v9;
}

- (BOOL)isAutomaticUpdateV2Enabled
{
  v3 = [(SUPreferences *)self _autoInstallDefaultValue];

  return [(SUPreferences *)self _cachedBoolValueForKey:@"SUAutomaticUpdateV2Enabled" withDefaultValue:v3];
}

- (BOOL)previousUserSpecifiedAutomaticUpdateV2Enabled
{
  v3 = [(SUPreferences *)self _autoInstallDefaultValue];

  return [(SUPreferences *)self _cachedBoolValueForKey:@"SUAutomaticUpdateV2Enabled_prev" withDefaultValue:v3];
}

- (void)_loadPreferences:(BOOL)a3
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__20;
  v8[4] = __Block_byref_object_dispose__20;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  preferencesWorkloop = self->_preferencesWorkloop;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__SUPreferences__loadPreferences___block_invoke;
  block[3] = &unk_279CAD070;
  block[4] = self;
  block[5] = v8;
  v7 = a3;
  dispatch_async_and_wait(preferencesWorkloop, block);
  _Block_object_dispose(v8, 8);
}

void __34__SUPreferences__loadPreferences___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v71 = *MEMORY[0x277D85DE8];
  SULogInfo(@"%s: loading preferences", a2, a3, a4, a5, a6, a7, a8, "[SUPreferences _loadPreferences:]_block_invoke");
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v10 = [*(*(a1 + 32) + 16) allValues];
  v11 = [v10 countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v66;
    v60 = a1;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v66 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v65 + 1) + 8 * i);
        v16 = *(*(a1 + 32) + 24);
        v17 = [v15 preferenceKey];
        v18 = [v16 valueForKey:v17];

        v19 = *(a1 + 32);
        v20 = [v15 preferenceKey];
        LODWORD(v19) = [v19 isKeySetInPreferences:v20];

        if (v19)
        {
          v21 = *(a1 + 32);
          v22 = [v15 preferenceKey];
          v23 = [v21 _copyValueOfKey:v22 withType:{objc_msgSend(v15, "type")}];

          if (([v18 isEqual:v23] & 1) == 0)
          {
            v24 = *(*(*(a1 + 40) + 8) + 40);
            [v15 preferenceKey];
            v25 = v12;
            v26 = v13;
            v27 = v10;
            v29 = v28 = v9;
            [v24 setValue:v23 forKey:v29];

            v9 = v28;
            v10 = v27;
            v13 = v26;
            v12 = v25;
            a1 = v60;
          }

          v30 = [v15 preferenceKey];
          v31 = v9;
        }

        else
        {
          if (!v18)
          {
            goto LABEL_13;
          }

          v32 = *(*(*(a1 + 40) + 8) + 40);
          v23 = [MEMORY[0x277CBEB68] null];
          v30 = [v15 preferenceKey];
          v31 = v32;
        }

        [v31 setValue:v23 forKey:v30];

LABEL_13:
      }

      v12 = [v10 countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v12);
  }

  objc_storeStrong((*(a1 + 32) + 24), v9);
  SULogInfo(@"%s: done loading preferences", v33, v34, v35, v36, v37, v38, v39, "[SUPreferences _loadPreferences:]_block_invoke");
  if (*(a1 + 48) == 1)
  {
    v47 = *(*(*(a1 + 40) + 8) + 40);
    if (v47 && [v47 count])
    {
      v48 = v9;
      v59 = *(*(*(a1 + 40) + 8) + 40);
      SULogInfo(@"%s: Iterating over all the change preferences, ChangePref: %@", v40, v41, v42, v43, v44, v45, v46, "[SUPreferences _loadPreferences:]_block_invoke");
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v49 = [*(*(*(a1 + 40) + 8) + 40) allKeys];
      v50 = [v49 countByEnumeratingWithState:&v61 objects:v69 count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v62;
        do
        {
          for (j = 0; j != v51; ++j)
          {
            if (*v62 != v52)
            {
              objc_enumerationMutation(v49);
            }

            v54 = *(*(&v61 + 1) + 8 * j);
            v55 = [*(*(*(a1 + 40) + 8) + 40) valueForKey:v54];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v56 = 0;
            }

            else
            {
              v56 = v55;
            }

            v57 = v56;

            [*(a1 + 32) preference:v54 didChangeTo:v57];
          }

          v51 = [v49 countByEnumeratingWithState:&v61 objects:v69 count:16];
        }

        while (v51);
      }

      v9 = v48;
    }

    else
    {
      SULogInfo(@"%s: reloaded preferences after getting, but nothing seems to have changed.", v40, v41, v42, v43, v44, v45, v46, "[SUPreferences _loadPreferences:]_block_invoke");
    }
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (id)_mandatorySUFlagsForPreferences
{
  v25[4] = *MEMORY[0x277D85DE8];
  v24[0] = @"SUUpdateRequiredFromFactory";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v25[0] = v3;
  v24[1] = @"SUCheckForUpdateFromFactory";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v25[1] = v4;
  v24[2] = @"SUUpdateRequiredOnErase";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:4];
  v25[2] = v5;
  v24[3] = @"SUCheckForUpdateOnErase";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:8];
  v25[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:4];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = [v7 allKeys];
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if ([(SUPreferences *)self _getBooleanPreferenceForKey:v14 withDefaultValue:0])
        {
          v15 = [v7 objectForKey:v14];
          v11 |= [v15 unsignedIntegerValue];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v11];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_copyValueOfKey:(id)a3 withType:(int64_t)a4
{
  v6 = a3;
  v14 = v6;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      v15 = [(SUPreferences *)self _copyNumberPreferenceForKey:v6];
      goto LABEL_11;
    }

    if (a4 == 3)
    {
      v15 = [(SUPreferences *)self _copyDictPreferenceForKey:v6];
      goto LABEL_11;
    }
  }

  else
  {
    if (!a4)
    {
      v17 = [(SUPreferences *)self _getBooleanPreferenceForKey:v6 withDefaultValue:0];
      v15 = [MEMORY[0x277CCABB0] numberWithBool:v17];
      goto LABEL_11;
    }

    if (a4 == 1)
    {
      v15 = [(SUPreferences *)self _copyStringPreferenceForKey:v6];
LABEL_11:
      v16 = v15;
      goto LABEL_12;
    }
  }

  SULogInfo(@"Unknown SUPreferenceType for key: %@ type:%ld", v7, v8, v9, v10, v11, v12, v13, v6);
  v16 = 0;
LABEL_12:

  return v16;
}

- (BOOL)_getBooleanPreferenceForKey:(id)a3 withDefaultValue:(BOOL)a4
{
  v6 = a3;
  v7 = [(SUPreferences *)self _copyPreferenceForKey:v6 ofType:CFBooleanGetTypeID()];

  if (v7)
  {
    a4 = CFBooleanGetValue(v7) != 0;
    CFRelease(v7);
  }

  return a4;
}

- (void)_setCachedBooleanPreferenceForKey:(id)a3 value:(BOOL)a4
{
  v6 = a3;
  preferencesWorkloop = self->_preferencesWorkloop;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__SUPreferences__setCachedBooleanPreferenceForKey_value___block_invoke;
  block[3] = &unk_279CAAE40;
  block[4] = self;
  v10 = v6;
  v11 = a4;
  v8 = v6;
  dispatch_async(preferencesWorkloop, block);
}

void __57__SUPreferences__setCachedBooleanPreferenceForKey_value___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 48)];
  [*(*(a1 + 32) + 24) setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (void)_setCachedObjectPreferenceForKey:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  preferencesWorkloop = self->_preferencesWorkloop;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__SUPreferences__setCachedObjectPreferenceForKey_value___block_invoke;
  block[3] = &unk_279CAA798;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(preferencesWorkloop, block);
}

- (id)_cachedObjectForKey:(id)a3 ofClass:(Class)a4 log:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__20;
  v30 = __Block_byref_object_dispose__20;
  v31 = 0;
  preferencesWorkloop = self->_preferencesWorkloop;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__SUPreferences__cachedObjectForKey_ofClass_log___block_invoke;
  block[3] = &unk_279CAD098;
  block[4] = self;
  v10 = v8;
  v24 = &v26;
  v25 = a4;
  v23 = v10;
  dispatch_async_and_wait(preferencesWorkloop, block);
  v18 = v27[5];
  if (v18 && v5)
  {
    v21 = v27[5];
    SULogDebug(@"[SUPreferences] %@ is set to %@", v11, v12, v13, v14, v15, v16, v17, v10);
    v18 = v27[5];
  }

  v19 = v18;

  _Block_object_dispose(&v26, 8);

  return v19;
}

uint64_t __49__SUPreferences__cachedObjectForKey_ofClass_log___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) valueForKey:a1[5]];
  if (v2)
  {
    v3 = a1[7];
    obj = v2;
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong((*(a1[6] + 8) + 40), obj);
    }
  }

  return MEMORY[0x2821F9730]();
}

- (BOOL)_cachedBoolValueForKey:(id)a3 withDefaultValue:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(SUPreferences *)self _cachedObjectForKey:v6 ofClass:objc_opt_class() log:0];
  v15 = v7;
  if (v7)
  {
    v16 = [v7 BOOLValue];
  }

  else
  {
    v16 = v4;
  }

  if (v16 != v4)
  {
    SULogDebug(@"[SUPreferences] %@ is set to %@", v8, v9, v10, v11, v12, v13, v14, v6);
  }

  return v16;
}

- (id)_cachedStringValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(SUPreferences *)self _cachedObjectForKey:v4 ofClass:objc_opt_class() log:1];

  return v5;
}

- (id)_cachedNumberValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(SUPreferences *)self _cachedObjectForKey:v4 ofClass:objc_opt_class() log:1];

  return v5;
}

- (id)_cachedDictValueForKey:(id)a3
{
  v4 = a3;
  v5 = [(SUPreferences *)self _cachedObjectForKey:v4 ofClass:objc_opt_class() log:1];

  return v5;
}

- (void)_setBooleanPreferenceForKey:(id)a3 value:(BOOL)a4
{
  if (a4)
  {
    v4 = MEMORY[0x277CBED28];
  }

  else
  {
    v4 = MEMORY[0x277CBED10];
  }

  v5 = *v4;
  v6 = *MEMORY[0x277CBF010];
  v7 = a3;
  CFPreferencesSetValue(v7, v5, @"com.apple.softwareupdateservicesd", @"mobile", v6);
  CFPreferencesSynchronize(@"com.apple.softwareupdateservicesd", @"mobile", v6);
  SULogDebug(@"%s: posting change notification... Key: %@ enabled: %@", v8, v9, v10, v11, v12, v13, v14, "[SUPreferences _setBooleanPreferenceForKey:value:]");

  v15 = [@"SUPreferencesChangedNotification" UTF8String];

  notify_post(v15);
}

- (void)_setObjectPreferenceForKey:(id)a3 value:(id)a4
{
  v5 = *MEMORY[0x277CBF010];
  v6 = a4;
  v7 = a3;
  CFPreferencesSetValue(v7, v6, @"com.apple.softwareupdateservicesd", @"mobile", v5);
  CFPreferencesSynchronize(@"com.apple.softwareupdateservicesd", @"mobile", v5);
  SULogDebug(@"%s: posting change notification... Key: %@: Value: %@", v8, v9, v10, v11, v12, v13, v14, "[SUPreferences _setObjectPreferenceForKey:value:]");

  v15 = [@"SUPreferencesChangedNotification" UTF8String];

  notify_post(v15);
}

- (id)_copyStringPreferenceForKey:(id)a3
{
  v4 = a3;
  v5 = [(SUPreferences *)self _copyPreferenceForKey:v4 ofType:CFStringGetTypeID()];

  return v5;
}

- (id)_copyNumberPreferenceForKey:(id)a3
{
  v4 = a3;
  v5 = [(SUPreferences *)self _copyPreferenceForKey:v4 ofType:CFNumberGetTypeID()];

  return v5;
}

- (id)_copyDictPreferenceForKey:(id)a3
{
  v4 = a3;
  v5 = [(SUPreferences *)self _copyPreferenceForKey:v4 ofType:CFDictionaryGetTypeID()];

  return v5;
}

- (void)_copyPreferenceForKey:(__CFString *)a3 ofType:(unint64_t)a4
{
  v5 = CFPreferencesCopyValue(a3, @"com.apple.softwareupdateservicesd", @"mobile", *MEMORY[0x277CBF010]);
  v6 = v5;
  if (v5 && CFGetTypeID(v5) != a4)
  {
    CFRelease(v6);
    return 0;
  }

  return v6;
}

- (void)enableAutomaticDownload:(BOOL)a3
{
  v3 = a3;
  if ([(SUPreferences *)self isAutomaticDownloadEnabled]!= a3)
  {
    [(SUPreferences *)self _setCachedBooleanPreferenceForKey:@"SUDisableAutoDownload" value:!v3];
    [(SUPreferences *)self _setBooleanPreferenceForKey:@"SUDisableAutoDownload" value:!v3];
    if (!v3)
    {
      [(SUPreferences *)self _setCachedBooleanPreferenceForKey:@"SUAutomaticUpdateV2Enabled" value:0];
      [(SUPreferences *)self _setBooleanPreferenceForKey:@"SUAutomaticUpdateV2Enabled" value:0];
      v5 = [@"SUPreferencesChangedNotificationAutoUpdate" UTF8String];

      notify_post(v5);
    }
  }
}

- (BOOL)isChinaDevice
{
  v2 = MGCopyAnswerWithError();
  if (v2)
  {
    v10 = v2;
    v11 = [v2 isEqualToString:@"CH"];
    CFRelease(v10);
  }

  else
  {
    SULogDebug(@"Failed to copy region code: %d", v3, v4, v5, v6, v7, v8, v9, 0);
    return 0;
  }

  return v11;
}

- (BOOL)_autoInstallDefaultValue
{
  if ([(SUPreferences *)self isChinaDevice])
  {
    SULogDebug(@"Defaulting to Auto Install OFF for green tea", v3, v4, v5, v6, v7, v8, v9, v11);
    return 0;
  }

  else
  {

    return [(SUPreferences *)self isAutomaticDownloadEnabled];
  }
}

- (BOOL)_autoInstallSecurityResponseDefaultValue
{
  v3 = [(SUPreferences *)self autoInstallSystemAndDataFiles];
  if (![(SUPreferences *)self isChinaDevice])
  {
    return v3;
  }

  return [(SUPreferences *)self isAutomaticUpdateV2Enabled];
}

- (BOOL)isKeySetInPreferences:(id)a3
{
  v3 = CFPreferencesCopyValue(a3, @"com.apple.softwareupdateservicesd", @"mobile", *MEMORY[0x277CBF010]);
  v4 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return v4 != 0;
}

- (void)_setupAutomaticUpdateV2Enabled
{
  v3 = ![(SUPreferences *)self disableAutoDownload]&& [(SUPreferences *)self _getBooleanPreferenceForKey:@"SUAutomaticUpdateV2Enabled" withDefaultValue:[(SUPreferences *)self _autoInstallDefaultValue]];

  [(SUPreferences *)self _setCachedBooleanPreferenceForKey:@"SUAutomaticUpdateV2Enabled" value:v3];
}

- (void)_setupSoftwareUpdateReserveDisabled
{
  v3 = [(SUPreferences *)self disableAutoDownload]|| [(SUPreferences *)self _getBooleanPreferenceForKey:@"SUSoftwareUpdateReserveDisabled" withDefaultValue:0];

  [(SUPreferences *)self _setCachedBooleanPreferenceForKey:@"SUSoftwareUpdateReserveDisabled" value:v3];
}

- (int)spaceOverrideCleanupTime
{
  v2 = [(SUPreferences *)self _cachedNumberValueForKey:@"SUSpaceOverrideCleanupTime"];
  v3 = [v2 intValue];

  return v3;
}

- (unint64_t)spaceOverrideMaxPSUSOptionalSize
{
  v2 = [(SUPreferences *)self _cachedNumberValueForKey:@"SUSpaceOverrideMaxPSUSOptionalSize"];
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (BOOL)disableSplombo
{
  v3 = [(SUPreferences *)self _cachedBoolValueForKey:@"SUDisableSplombo" withDefaultValue:0];
  if ([(SUPreferences *)self isAutomaticUpdateV2Enabled])
  {
    v3 |= ![(SUPreferences *)self autoInstallSecurityResponse];
  }

  return v3 & 1;
}

- (void)setSoftwareUpdateReserveSize:(id)a3
{
  v11 = a3;
  SULogInfo(@"Setting software update reserve size to %@", v4, v5, v6, v7, v8, v9, v10, v11);
  [(SUPreferences *)self _setCachedObjectPreferenceForKey:@"SUSoftwareUpdateReserveSize" value:v11];
  [(SUPreferences *)self _setObjectPreferenceForKey:@"SUSoftwareUpdateReserveSize" value:v11];
}

- (void)setSystemGrowthMarginSize:(id)a3
{
  v11 = a3;
  SULogInfo(@"Setting systemGrowthMarginSize to %@", v4, v5, v6, v7, v8, v9, v10, v11);
  [(SUPreferences *)self _setCachedObjectPreferenceForKey:@"SUSystemGrowthMarginSize" value:v11];
  [(SUPreferences *)self _setObjectPreferenceForKey:@"SUSystemGrowthMarginSize" value:v11];
}

- (int)testGetOffSampleRate
{
  v2 = [(SUPreferences *)self _cachedNumberValueForKey:@"SUTestGetOffSampleRate"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 10;
  }

  return v4;
}

- (void)setSplatFollowUpDelayOverride:(id)a3
{
  v11 = a3;
  SULogInfo(@"Override splat follow up delay: %@", v4, v5, v6, v7, v8, v9, v10, v11);
  [(SUPreferences *)self _setCachedObjectPreferenceForKey:@"SUSplatFollowUpDelayOverride" value:v11];
  [(SUPreferences *)self _setObjectPreferenceForKey:@"SUSplatFollowUpDelayOverride" value:v11];
}

@end