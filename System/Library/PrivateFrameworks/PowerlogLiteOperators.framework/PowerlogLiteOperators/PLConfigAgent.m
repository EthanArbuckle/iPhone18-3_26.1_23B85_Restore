@interface PLConfigAgent
+ (id)entryEventForwardDefinitionAmbientMode;
+ (id)entryEventForwardDefinitionContinuityCamera;
+ (id)entryEventForwardDefinitionFeatureFlag;
+ (id)entryEventForwardDefinitionKeyboardClicks;
+ (id)entryEventForwardDefinitionKeyboardHaptics;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventForwardDefintionRinger;
+ (id)entryEventNoneDefinitionConfig;
+ (id)entryEventNoneDefinitionPairedDeviceConfig;
+ (id)entryEventNoneDefinitions;
+ (id)getVersionDirectory:(int64_t)a3;
+ (int64_t)getOSVersionNumber;
+ (void)load;
+ (void)removeFilesFromPath:(id)a3 withMaxFiles:(int64_t)a4;
+ (void)resetRAPIDTaskingConfig;
- (BOOL)disableCABlanking;
- (BOOL)getMDMStatus;
- (BOOL)noWatchdogs;
- (PLConfigAgent)init;
- (double)logDeviceDiskSize;
- (id)baseband;
- (id)bootArgs;
- (id)deviceName;
- (id)deviceShutdownReasons;
- (id)getCoverGlass;
- (id)getDeviceSerialNumber;
- (id)getShutdownBootReason:(BOOL)a3;
- (id)getSplatVersionString;
- (id)hasEmbeddedSIM;
- (id)hwBoardRevision;
- (id)hwConfig;
- (id)logAndUpdateLastBuild:(id)a3;
- (id)logAndUpdateLastUpgradeTime:(id)a3;
- (id)logIcloudAccountType;
- (id)logLastBackupTime;
- (id)logLastUpgradeSystemTimestamp;
- (id)seedGroup;
- (int)getCoreCount:(int)a3;
- (int)getDeviceType;
- (int)getOSVariant;
- (int)getPerfLevelsCount;
- (int64_t)autolockTime;
- (int64_t)checkAndUpdateOSVersion:(id)a3;
- (unint64_t)getUpgradeType;
- (unint64_t)logInstallType:(id)a3;
- (unint64_t)rootInstalled;
- (unint64_t)volumeFreespace:(id)a3;
- (void)cleanupOldPowerlogs;
- (void)copyPowerlogsForPreUpgradeOSVersion:(int64_t)a3;
- (void)dealloc;
- (void)fileSizeSafeguards;
- (void)initOperatorDependancies;
- (void)log;
- (void)logCPUCoreConfig;
- (void)logConfigEntry:(id)a3;
- (void)logConfigEntryToCA:(id)a3;
- (void)logConfigToBGSQL:(id)a3;
- (void)logDeviceCapability;
- (void)logEntryToCA:(id)a3;
- (void)logEventForwardAmbientModeEnabled:(id)a3;
- (void)logEventForwardConsoleMode;
- (void)logEventForwardContinuityCamera:(id)a3;
- (void)logEventForwardKeyboardClicks;
- (void)logEventForwardKeyboardHaptics;
- (void)logEventForwardRingerState;
- (void)logEventForwardSysdiagnoseEvent:(BOOL)a3;
- (void)logEventNoneBuddyData:(id)a3;
- (void)logEventNoneConfig;
- (void)logEventNonePairedDeviceConfig;
- (void)logEventPointFeatureFlags:(id)a3;
- (void)logSystemReboot;
- (void)logToPPSBuild:(id)a3 atDate:(id)a4;
- (void)logUserspaceReboot;
- (void)maintainPreUpgradePowerlogs:(int64_t)a3;
- (void)pairStatusDidChange:(id)a3;
@end

@implementation PLConfigAgent

+ (void)load
{
  v2.receiver = a1;
  v2.super_class = &OBJC_METACLASS___PLConfigAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventForwardDefinitions
{
  v12[6] = *MEMORY[0x277D85DE8];
  v11[0] = @"KeyboardClicks";
  v2 = [objc_opt_class() entryEventForwardDefinitionKeyboardClicks];
  v12[0] = v2;
  v11[1] = @"KeyboardHaptics";
  v3 = [objc_opt_class() entryEventForwardDefinitionKeyboardHaptics];
  v12[1] = v3;
  v11[2] = @"Ringer";
  v4 = [objc_opt_class() entryEventForwardDefintionRinger];
  v12[2] = v4;
  v11[3] = @"ContinuityCamera";
  v5 = [objc_opt_class() entryEventForwardDefinitionContinuityCamera];
  v12[3] = v5;
  v11[4] = @"AmbientModeEnabled";
  v6 = [objc_opt_class() entryEventForwardDefinitionAmbientMode];
  v12[4] = v6;
  v11[5] = @"FeatureFlags";
  v7 = [objc_opt_class() entryEventForwardDefinitionFeatureFlag];
  v12[5] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:6];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)entryEventForwardDefinitionFeatureFlag
{
  v26[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D3F208] internalBuild];
  v3 = MEMORY[0x277CBEC10];
  if (v2)
  {
    v25[0] = *MEMORY[0x277D3F4E8];
    v4 = *MEMORY[0x277D3F4F8];
    v23[0] = *MEMORY[0x277D3F568];
    v23[1] = v4;
    v24[0] = &unk_282C1BEC8;
    v24[1] = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
    v26[0] = v18;
    v26[1] = v3;
    v5 = *MEMORY[0x277D3F500];
    v25[1] = *MEMORY[0x277D3F540];
    v25[2] = v5;
    v21[0] = @"key";
    v19[0] = @"Domain";
    v17 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v17 commonTypeDict_StringFormat];
    v20[0] = v6;
    v19[1] = @"FeatureName";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_StringFormat];
    v20[1] = v8;
    v19[2] = @"TargetRelease";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_StringFormat];
    v20[2] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:3];
    v21[1] = @"value";
    v22[0] = v11;
    v12 = [MEMORY[0x277D3F198] sharedInstance];
    v13 = [v12 commonTypeDict_IntegerFormat];
    v22[1] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    v26[2] = v14;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)entryEventForwardDefinitionKeyboardClicks
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1BED8;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"Enabled";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardDefinitionKeyboardHaptics
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1BED8;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"Enabled";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardDefintionRinger
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1BED8;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"Enabled";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardDefinitionContinuityCamera
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1BED8;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"Enabled";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventForwardDefinitionAmbientMode
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v12[0] = *MEMORY[0x277D3F568];
  v12[1] = v2;
  v13[0] = &unk_282C1BED8;
  v13[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v15[0] = v3;
  v14[1] = *MEMORY[0x277D3F540];
  v10 = @"Enabled";
  v4 = [MEMORY[0x277D3F198] sharedInstance];
  v5 = [v4 commonTypeDict_BoolFormat];
  v11 = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v15[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)entryEventNoneDefinitions
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"Config";
  v3 = [objc_opt_class() entryEventNoneDefinitionConfig];
  v10[0] = v3;
  v9[1] = @"PairedDeviceConfig";
  v4 = [objc_opt_class() entryEventNoneDefinitionPairedDeviceConfig];
  v10[1] = v4;
  v9[2] = @"AdapterInformation";
  v5 = [a1 entryEventNoneDefinitionAdapterInformation];
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)entryEventNoneDefinitionConfig
{
  v91[2] = *MEMORY[0x277D85DE8];
  v90[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F590];
  v88[0] = *MEMORY[0x277D3F568];
  v88[1] = v2;
  v89[0] = &unk_282C1BEE8;
  v89[1] = &unk_282C108C0;
  v88[2] = *MEMORY[0x277D3F588];
  v89[2] = &unk_282C1BEF8;
  v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:3];
  v91[0] = v85;
  v90[1] = *MEMORY[0x277D3F540];
  v86[0] = @"Build";
  v84 = [MEMORY[0x277D3F198] sharedInstance];
  v83 = [v84 commonTypeDict_StringFormat];
  v87[0] = v83;
  v86[1] = @"SupplementalBuild";
  v82 = [MEMORY[0x277D3F198] sharedInstance];
  v81 = [v82 commonTypeDict_StringFormat];
  v87[1] = v81;
  v86[2] = @"CustomerOS";
  v80 = [MEMORY[0x277D3F198] sharedInstance];
  v79 = [v80 commonTypeDict_BoolFormat];
  v87[2] = v79;
  v86[3] = @"Device";
  v78 = [MEMORY[0x277D3F198] sharedInstance];
  v77 = [v78 commonTypeDict_StringFormat];
  v87[3] = v77;
  v86[4] = @"DevBoard";
  v76 = [MEMORY[0x277D3F198] sharedInstance];
  v75 = [v76 commonTypeDict_BoolFormat];
  v87[4] = v75;
  v86[5] = @"CRKey";
  v74 = [MEMORY[0x277D3F198] sharedInstance];
  v73 = [v74 commonTypeDict_StringFormat];
  v87[5] = v73;
  v86[6] = @"CRKey2";
  v72 = [MEMORY[0x277D3F198] sharedInstance];
  v71 = [v72 commonTypeDict_StringFormat];
  v87[6] = v71;
  v86[7] = @"DeviceName";
  v70 = [MEMORY[0x277D3F198] sharedInstance];
  v69 = [v70 commonTypeDict_StringFormat];
  v87[7] = v69;
  v86[8] = @"BootArgs";
  v68 = [MEMORY[0x277D3F198] sharedInstance];
  v67 = [v68 commonTypeDict_StringFormat];
  v87[8] = v67;
  v86[9] = @"DeviceType";
  v66 = [MEMORY[0x277D3F198] sharedInstance];
  v65 = [v66 commonTypeDict_IntegerFormat];
  v87[9] = v65;
  v86[10] = @"DeviceBootTime";
  v64 = [MEMORY[0x277D3F198] sharedInstance];
  v63 = [v64 commonTypeDict_DateFormat];
  v87[10] = v63;
  v86[11] = @"LastBuild";
  v62 = [MEMORY[0x277D3F198] sharedInstance];
  v61 = [v62 commonTypeDict_StringFormat];
  v87[11] = v61;
  v86[12] = @"LastUpgradeTimestamp";
  v60 = [MEMORY[0x277D3F198] sharedInstance];
  v59 = [v60 commonTypeDict_RealFormat];
  v87[12] = v59;
  v86[13] = @"DeviceDiskSize";
  v58 = [MEMORY[0x277D3F198] sharedInstance];
  v57 = [v58 commonTypeDict_IntegerFormat];
  v87[13] = v57;
  v86[14] = @"MachTimeBaseRatio";
  v56 = [MEMORY[0x277D3F198] sharedInstance];
  v55 = [v56 commonTypeDict_RealFormat];
  v87[14] = v55;
  v86[15] = @"AutoLockTime";
  v54 = [MEMORY[0x277D3F198] sharedInstance];
  v53 = [v54 commonTypeDict_IntegerFormat];
  v87[15] = v53;
  v86[16] = @"Baseband";
  v52 = [MEMORY[0x277D3F198] sharedInstance];
  v51 = [v52 commonTypeDict_IntegerFormat];
  v87[16] = v51;
  v86[17] = @"BasebandFirmware";
  v50 = [MEMORY[0x277D3F198] sharedInstance];
  v49 = [v50 commonTypeDict_StringFormat];
  v87[17] = v49;
  v86[18] = @"BKNoWatchdogs";
  v48 = [MEMORY[0x277D3F198] sharedInstance];
  v47 = [v48 commonTypeDict_BoolFormat];
  v87[18] = v47;
  v86[19] = @"SBDisableCABlanking";
  v46 = [MEMORY[0x277D3F198] sharedInstance];
  v45 = [v46 commonTypeDict_BoolFormat];
  v87[19] = v45;
  v86[20] = @"AutomatedDeviceGroup";
  v44 = [MEMORY[0x277D3F198] sharedInstance];
  v43 = [v44 commonTypeDict_StringFormat];
  v87[20] = v43;
  v86[21] = @"SeedGroup";
  v42 = [MEMORY[0x277D3F198] sharedInstance];
  v41 = [v42 commonTypeDict_StringFormat];
  v87[21] = v41;
  v86[22] = @"ConfigNumber";
  v40 = [MEMORY[0x277D3F198] sharedInstance];
  v39 = [v40 commonTypeDict_StringFormat];
  v87[22] = v39;
  v86[23] = @"DebugBoardRevision";
  v38 = [MEMORY[0x277D3F198] sharedInstance];
  v37 = [v38 commonTypeDict_StringFormat];
  v87[23] = v37;
  v86[24] = @"LastBackupTimestamp";
  v36 = [MEMORY[0x277D3F198] sharedInstance];
  v35 = [v36 commonTypeDict_DateFormat];
  v87[24] = v35;
  v86[25] = @"DeviceBootReasons";
  v34 = [MEMORY[0x277D3F198] sharedInstance];
  v33 = [v34 commonTypeDict_StringFormat];
  v87[25] = v33;
  v86[26] = @"IcloudAccountType";
  v32 = [MEMORY[0x277D3F198] sharedInstance];
  v31 = [v32 commonTypeDict_StringFormat];
  v87[26] = v31;
  v86[27] = @"OSVariant";
  v30 = [MEMORY[0x277D3F198] sharedInstance];
  v29 = [v30 commonTypeDict_IntegerFormat];
  v87[27] = v29;
  v86[28] = @"RemainingDiskSpace";
  v28 = [MEMORY[0x277D3F198] sharedInstance];
  v27 = [v28 commonTypeDict_IntegerFormat];
  v87[28] = v27;
  v86[29] = @"DeviceSerialNumber";
  v26 = [MEMORY[0x277D3F198] sharedInstance];
  v25 = [v26 commonTypeDict_StringFormat];
  v87[29] = v25;
  v86[30] = @"MDMStatus";
  v24 = [MEMORY[0x277D3F198] sharedInstance];
  v23 = [v24 commonTypeDict_BoolFormat];
  v87[30] = v23;
  v86[31] = @"InstalledSplat";
  v22 = [MEMORY[0x277D3F198] sharedInstance];
  v21 = [v22 commonTypeDict_StringFormat];
  v87[31] = v21;
  v86[32] = @"Device_SoC";
  v20 = [MEMORY[0x277D3F198] sharedInstance];
  v19 = [v20 commonTypeDict_StringFormat];
  v87[32] = v19;
  v86[33] = @"RootInstalled";
  v18 = [MEMORY[0x277D3F198] sharedInstance];
  v17 = [v18 commonTypeDict_IntegerFormat];
  v87[33] = v17;
  v86[34] = @"LastUpgradeSystemTimestamp";
  v16 = [MEMORY[0x277D3F198] sharedInstance];
  v15 = [v16 commonTypeDict_RealFormat];
  v87[34] = v15;
  v86[35] = @"InstallType";
  v3 = [MEMORY[0x277D3F198] sharedInstance];
  v4 = [v3 commonTypeDict_IntegerFormat];
  v87[35] = v4;
  v86[36] = @"ADGOnly";
  v5 = [MEMORY[0x277D3F198] sharedInstance];
  v6 = [v5 commonTypeDict_StringFormat];
  v87[36] = v6;
  v86[37] = @"ExperimentGroup";
  v7 = [MEMORY[0x277D3F198] sharedInstance];
  v8 = [v7 commonTypeDict_StringFormat];
  v87[37] = v8;
  v86[38] = @"HasInternalKey";
  v9 = [MEMORY[0x277D3F198] sharedInstance];
  v10 = [v9 commonTypeDict_BoolFormat];
  v87[38] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:39];
  v91[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)entryEventNoneDefinitionPairedDeviceConfig
{
  v23[2] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D3F208] isiOS] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isWatch"))
  {
    v22[0] = *MEMORY[0x277D3F4E8];
    v2 = *MEMORY[0x277D3F590];
    v20[0] = *MEMORY[0x277D3F568];
    v20[1] = v2;
    v21[0] = &unk_282C1BEC8;
    v21[1] = &unk_282C108C0;
    v20[2] = *MEMORY[0x277D3F588];
    v21[2] = &unk_282C1BF08;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
    v23[0] = v17;
    v22[1] = *MEMORY[0x277D3F540];
    v18[0] = @"Build";
    v16 = [MEMORY[0x277D3F198] sharedInstance];
    v15 = [v16 commonTypeDict_StringFormat];
    v19[0] = v15;
    v18[1] = @"Device";
    v3 = [MEMORY[0x277D3F198] sharedInstance];
    v4 = [v3 commonTypeDict_StringFormat];
    v19[1] = v4;
    v18[2] = @"HWModel";
    v5 = [MEMORY[0x277D3F198] sharedInstance];
    v6 = [v5 commonTypeDict_StringFormat];
    v19[2] = v6;
    v18[3] = @"PairingID";
    v7 = [MEMORY[0x277D3F198] sharedInstance];
    v8 = [v7 commonTypeDict_StringFormat];
    v19[3] = v8;
    v18[4] = @"PMode";
    v9 = [MEMORY[0x277D3F198] sharedInstance];
    v10 = [v9 commonTypeDict_IntegerFormat];
    v19[4] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
    v23[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEC10];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (PLConfigAgent)init
{
  v6.receiver = self;
  v6.super_class = PLConfigAgent;
  v2 = [(PLAgent *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D3F1C8]) initWithOperator:v2 forService:@"IOPlatformExpertDevice"];
    iokitExpertDevice = v2->_iokitExpertDevice;
    v2->_iokitExpertDevice = v3;
  }

  return v2;
}

- (unint64_t)volumeFreespace:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  memset(&v14, 0, 512);
  if (statfs([v3 fileSystemRepresentation], &v14))
  {
    v4 = PLLogConfig();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v8 = __error();
      v9 = strerror(*v8);
      v10 = 138412546;
      v11 = v3;
      v12 = 2080;
      v13 = v9;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "statfs failed for %@ : %s", &v10, 0x16u);
    }

    v5 = -1;
  }

  else
  {
    v5 = ((v14.f_bavail * v14.f_bsize) / 1000000000.0);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)bootArgs
{
  size = 0;
  if (sysctlbyname("kern.bootargs", 0, &size, 0, 0))
  {
    v2 = PLLogConfig();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "unable to retrieve size of kern.bootargs", buf, 2u);
    }

LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v3 = malloc_type_malloc(size, 0x100004077774924uLL);
  if (sysctlbyname("kern.bootargs", v3, &size, 0, 0))
  {
    v4 = PLLogConfig();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v8 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "unable to retrieve kern.bootargs", v8, 2u);
    }

    free(v3);
    goto LABEL_9;
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
  v5 = [v7 strip];

  free(v3);
LABEL_10:

  return v5;
}

- (unint64_t)rootInstalled
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 8;
  v9 = 0;
  v2 = sysctlbyname("kern.roots_installed", &v9, &v8, 0, 0);
  v3 = PLLogConfig();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = *__error();
      *buf = 67109120;
      LODWORD(v11) = v7;
      _os_log_error_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_ERROR, "Unable to get Installed root info kern.roots_installed: %{errno}d", buf, 8u);
    }

    result = -1;
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v11 = v9;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Installed root info kern.roots_installed: %llu", buf, 0xCu);
    }

    result = v9 != 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (int)getDeviceType
{
  if ([MEMORY[0x277D3F208] isiPad])
  {
    return 1;
  }

  if ([MEMORY[0x277D3F208] isiPhone])
  {
    return 0;
  }

  if ([MEMORY[0x277D3F208] isiPod])
  {
    return 2;
  }

  if ([MEMORY[0x277D3F208] isWatch])
  {
    return 3;
  }

  if ([MEMORY[0x277D3F208] isMac])
  {
    return 4;
  }

  if ([MEMORY[0x277D3F208] isHomePod])
  {
    return 5;
  }

  if ([MEMORY[0x277D3F208] isAppleTV])
  {
    return 6;
  }

  if ([MEMORY[0x277D3F208] isAppleVision])
  {
    return 86;
  }

  return 1000;
}

- (BOOL)noWatchdogs
{
  v2 = [MEMORY[0x277D3F180] objectForKey:@"BKNoWatchdogs" forApplicationID:@"com.apple.backboardd" synchronize:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)disableCABlanking
{
  v2 = [MEMORY[0x277D3F180] objectForKey:@"SBDisableCABlanking" forApplicationID:@"com.apple.springboard" synchronize:0];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 BOOLValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)autolockTime
{
  v2 = [MEMORY[0x277D26298] sharedConnection];
  v3 = [v2 effectiveValueForSetting:*MEMORY[0x277D25D70]];
  v4 = [v3 integerValue];

  return v4;
}

+ (void)resetRAPIDTaskingConfig
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D3F630];
  v3 = [MEMORY[0x277D3F180] objectForKey:*MEMORY[0x277D3F630]];
  if (v3)
  {
    v4 = PLLogConfig();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEFAULT, "Resetting RAPID Tasking config: %@", &v6, 0xCu);
    }

    [MEMORY[0x277D3F180] setObject:0 forKey:v2 saveToDisk:1];
    [MEMORY[0x277D3F180] setObject:0 forKey:*MEMORY[0x277D3F628] saveToDisk:1];
    [MEMORY[0x277D3F180] setObject:0 forKey:*MEMORY[0x277D3F640] saveToDisk:1];
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (int64_t)getOSVersionNumber
{
  v2 = [MEMORY[0x277CCAC38] processInfo];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  return 0;
}

- (int64_t)checkAndUpdateOSVersion:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D3F180];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__PLConfigAgent_checkAndUpdateOSVersion___block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F42D0 != -1)
  {
    dispatch_once(&qword_2811F42D0, block);
  }

  v6 = [v5 longForKey:@"LastOSVersion" ifNotSet:qword_2811F42D8];
  v7 = +[PLConfigAgent getOSVersionNumber];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLConfigAgent logInstallType:](self, "logInstallType:", v4)}];
  [MEMORY[0x277D3F180] setObject:v8 forKey:@"InstallType" saveToDisk:1];
  v9 = PLLogConfig();
  v10 = v9;
  if (v7 < 1 || v7 == v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEBUG, "OS version did not change", buf, 2u);
    }

    v6 = -1;
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134218240;
      v16 = v6;
      v17 = 2048;
      v18 = v7;
      _os_log_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_INFO, "OS version changed from: %ld to: %ld", buf, 0x16u);
    }

    v11 = MEMORY[0x277D3F180];
    v10 = [MEMORY[0x277CCABB0] numberWithLong:v7];
    [v11 setObject:v10 forKey:@"LastOSVersion" saveToDisk:1];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t __41__PLConfigAgent_checkAndUpdateOSVersion___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"DefaultOSVersion"];
  qword_2811F42D8 = result;
  return result;
}

+ (id)getVersionDirectory:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = +[PLConfigAgent getOSVersionNumber];
  v5 = PLLogConfig();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (a3 / 10000 == v4 / 10000)
  {
    if (v6)
    {
      v12 = 134218240;
      v13 = a3;
      v14 = 2048;
      v15 = v4;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Minor OS upgrade: %ld -> %ld", &v12, 0x16u);
    }

    v7 = @"/Library/BatteryLife/UpgradeLogs/MinorVersion";
  }

  else
  {
    if (v6)
    {
      v12 = 134218240;
      v13 = a3;
      v14 = 2048;
      v15 = v4;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Major OS upgrade: %ld -> %ld", &v12, 0x16u);
    }

    v7 = @"/Library/BatteryLife/UpgradeLogs/MajorVersion";
  }

  v8 = [MEMORY[0x277D3F258] containerPath];
  v9 = [v8 stringByAppendingString:v7];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)copyPowerlogsForPreUpgradeOSVersion:(int64_t)a3
{
  v76 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", a3];
  v5 = [PLConfigAgent getVersionDirectory:a3];
  v6 = [v5 stringByAppendingPathComponent:v4];
  v7 = PLLogConfig();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v69 = *&v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Copy logs to dir: %@", buf, 0xCu);
  }

  v8 = [MEMORY[0x277CCAA00] defaultManager];
  v65 = 0;
  v9 = [v8 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:0 error:&v65];
  v10 = v65;
  if (v9)
  {
    v42 = v5;
    v43 = v4;
    v11 = 0x277D3F000uLL;
    v12 = [MEMORY[0x277D3F258] containerPath];
    v13 = [v12 stringByAppendingString:@"/Library/BatteryLife/Archives/"];
    log = [v8 contentsOfDirectoryAtPath:v13 error:0];

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = [MEMORY[0x277D3F158] archiveEntriesFinished];
    v47 = [obj countByEnumeratingWithState:&v61 objects:v75 count:16];
    if (!v47)
    {
      goto LABEL_33;
    }

    v45 = *v62;
    v50 = *MEMORY[0x277CCA198];
    v51 = *MEMORY[0x277CCA1B0];
    while (1)
    {
      v14 = 0;
      do
      {
        if (*v62 != v45)
        {
          objc_enumerationMutation(obj);
        }

        v49 = v14;
        v15 = *(*(&v61 + 1) + 8 * v14);
        v16 = MEMORY[0x277CCAC30];
        v17 = [v15 uuid];
        v18 = [v16 predicateWithFormat:@"SELF CONTAINS %@", v17];

        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v48 = v18;
        v53 = [log filteredArrayUsingPredicate:v18];
        v54 = [v53 countByEnumeratingWithState:&v57 objects:v74 count:16];
        if (v54)
        {
          v19 = *v58;
          v52 = *v58;
          do
          {
            v20 = 0;
            do
            {
              if (*v58 != v19)
              {
                objc_enumerationMutation(v53);
              }

              v21 = *(*(&v57 + 1) + 8 * v20);
              v22 = [*(v11 + 600) containerPath];
              v23 = [v22 stringByAppendingString:@"/Library/BatteryLife/Archives/"];
              v24 = [v23 stringByAppendingPathComponent:v21];

              v25 = [v6 stringByAppendingPathComponent:v21];
              v26 = PLLogConfig();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412546;
                v69 = *&v24;
                v70 = 2112;
                v71 = v25;
                _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "Copying log at path: %@ to path: %@", buf, 0x16u);
              }

              v56 = v10;
              v27 = [v8 copyItemAtPath:v24 toPath:v25 error:&v56];
              v28 = v56;

              if (v27)
              {
                v29 = v8;
                v30 = v6;
                v31 = [MEMORY[0x277CCAA00] defaultManager];
                v66 = v51;
                v67 = v50;
                v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
                v55 = v28;
                v33 = [v31 setAttributes:v32 ofItemAtPath:v25 error:&v55];
                v10 = v55;

                if ((v33 & 1) == 0)
                {
                  v34 = PLLogConfig();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v69 = *&v25;
                    v70 = 2112;
                    v71 = v10;
                    _os_log_error_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_ERROR, "Failed to set file protection key for file at path: %@ with error: %@", buf, 0x16u);
                  }
                }

                [MEMORY[0x277D3F180] doubleForKey:@"PPSUpgradeLogRetentionDuration" ifNotSet:31449600.0];
                v36 = v35;
                v37 = [MEMORY[0x277CBEBC0] fileURLWithPath:v25];
                v38 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v36];
                v39 = [PPSFileUtilities markAsPurgeable:v37 urgency:512 startDate:v38];

                if (v39)
                {
                  v6 = v30;
                  v8 = v29;
                  v11 = 0x277D3F000;
                  v19 = v52;
                  goto LABEL_29;
                }

                v40 = PLLogConfig();
                v6 = v30;
                v8 = v29;
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  *buf = 134218242;
                  v69 = v36;
                  v70 = 2112;
                  v71 = v25;
                  _os_log_error_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_ERROR, "Failed to mark file at path as purgeable with retention duration of %f seconds: %@", buf, 0x16u);
                }

                v28 = v10;
                v11 = 0x277D3F000;
                v19 = v52;
              }

              else
              {
                v40 = PLLogConfig();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412802;
                  v69 = *&v24;
                  v70 = 2112;
                  v71 = v25;
                  v72 = 2112;
                  v73 = v28;
                  _os_log_error_impl(&dword_21A4C6000, v40, OS_LOG_TYPE_ERROR, "Failed to copy file at path: %@ to path: %@ with error: %@", buf, 0x20u);
                }
              }

              v10 = v28;
LABEL_29:

              ++v20;
            }

            while (v54 != v20);
            v54 = [v53 countByEnumeratingWithState:&v57 objects:v74 count:16];
          }

          while (v54);
        }

        v14 = v49 + 1;
      }

      while (v49 + 1 != v47);
      v47 = [obj countByEnumeratingWithState:&v61 objects:v75 count:16];
      if (!v47)
      {
LABEL_33:

        v5 = v42;
        v4 = v43;
        goto LABEL_36;
      }
    }
  }

  log = PLLogConfig();
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v69 = *&v6;
    v70 = 2112;
    v71 = v10;
    _os_log_error_impl(&dword_21A4C6000, log, OS_LOG_TYPE_ERROR, "Failed to create directory at path: %@ with error: %@", buf, 0x16u);
  }

LABEL_36:

  v41 = *MEMORY[0x277D85DE8];
}

+ (void)removeFilesFromPath:(id)a3 withMaxFiles:(int64_t)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 contentsOfDirectoryAtPath:v5 error:0];
  v8 = PLLogConfig();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v17 = v5;
    v18 = 2048;
    v19 = [v7 count];
    v20 = 2048;
    v21 = a4;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Remove files from path: %@ currFiles: %ld maxFiles:%ld", buf, 0x20u);
  }

  if ([v7 count] > a4)
  {
    v9 = [v7 sortedArrayUsingSelector:sel_compareInt_];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __50__PLConfigAgent_removeFilesFromPath_withMaxFiles___block_invoke;
    v11[3] = &unk_27825B900;
    v12 = v7;
    v15 = a4;
    v13 = v6;
    v14 = v5;
    [v9 enumerateObjectsUsingBlock:v11];
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __50__PLConfigAgent_removeFilesFromPath_withMaxFiles___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if ([*(a1 + 32) count] - a3 == *(a1 + 56))
  {
    *a4 = 1;
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 48) stringByAppendingPathComponent:v7];
    v15 = 0;
    v10 = [v8 removeItemAtPath:v9 error:&v15];
    v11 = v15;

    if ((v10 & 1) == 0)
    {
      v12 = PLLogConfig();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = [*(a1 + 48) stringByAppendingPathComponent:v7];
        *buf = 138412546;
        v17 = v14;
        v18 = 2112;
        v19 = v11;
        _os_log_error_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_ERROR, "Failed to remove file at path: %@ with error: %@", buf, 0x16u);
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)cleanupOldPowerlogs
{
  v3 = [(PLOperator *)self defaultLongForKey:@"MaxMajorVersionDirectories"];
  v4 = [(PLOperator *)self defaultLongForKey:@"MaxMinorVersionDirectories"];
  v5 = [MEMORY[0x277D3F258] containerPath];
  v6 = [v5 stringByAppendingString:@"/Library/BatteryLife/UpgradeLogs/MajorVersion"];
  [PLConfigAgent removeFilesFromPath:v6 withMaxFiles:v3];

  v8 = [MEMORY[0x277D3F258] containerPath];
  v7 = [v8 stringByAppendingString:@"/Library/BatteryLife/UpgradeLogs/MinorVersion"];
  [PLConfigAgent removeFilesFromPath:v7 withMaxFiles:v4];
}

- (void)fileSizeSafeguards
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D3F258];
  v4 = [MEMORY[0x277D3F258] containerPath];
  v5 = [v4 stringByAppendingString:@"/Library/BatteryLife/UpgradeLogs"];
  v6 = [v3 directorySize:v5];

  if (v6 > [(PLOperator *)self defaultLongForKey:@"MaxUpgradeFolderSize"])
  {
    v7 = PLLogConfig();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v19 = v6;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Total folder size: %ld exceeds max limit", buf, 0xCu);
    }

    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v9 = [MEMORY[0x277D3F258] containerPath];
    v10 = [v9 stringByAppendingString:@"/Library/BatteryLife/UpgradeLogs"];
    v17 = 0;
    v11 = [v8 removeItemAtPath:v10 error:&v17];
    v12 = v17;

    if ((v11 & 1) == 0)
    {
      v13 = PLLogConfig();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v15 = [MEMORY[0x277D3F258] containerPath];
        v16 = [v15 stringByAppendingString:@"/Library/BatteryLife/UpgradeLogs"];
        *buf = 138412546;
        v19 = v16;
        v20 = 2112;
        v21 = v12;
        _os_log_error_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_ERROR, "Failed to remove file at path: %@ with error: %@", buf, 0x16u);
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)maintainPreUpgradePowerlogs:(int64_t)a3
{
  if ([MEMORY[0x277D3F180] liteMode])
  {
    v5 = PLLogConfig();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Maintain pre-upgrade logs", buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__PLConfigAgent_maintainPreUpgradePowerlogs___block_invoke;
    block[3] = &unk_2782591D0;
    block[4] = self;
    if (qword_2811F42E0 != -1)
    {
      dispatch_once(&qword_2811F42E0, block);
    }

    if (qword_2811F42E8 <= a3)
    {
      [(PLConfigAgent *)self copyPowerlogsForPreUpgradeOSVersion:a3];
      [(PLConfigAgent *)self cleanupOldPowerlogs];
      [(PLConfigAgent *)self fileSizeSafeguards];
    }
  }
}

uint64_t __45__PLConfigAgent_maintainPreUpgradePowerlogs___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"DefaultOSVersion"];
  qword_2811F42E8 = result;
  return result;
}

- (unint64_t)getUpgradeType
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D3F180];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__PLConfigAgent_getUpgradeType__block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  if (qword_2811F42F0 != -1)
  {
    dispatch_once(&qword_2811F42F0, block);
  }

  v3 = [v2 longForKey:@"LastOSVersion" ifNotSet:qword_2811F42F8];
  v4 = +[PLConfigAgent getOSVersionNumber];
  v5 = PLLogConfig();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (v3 / 10000 == v4 / 10000)
  {
    if (v6)
    {
      *buf = 134218240;
      v12 = v3;
      v13 = 2048;
      v14 = v4;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Minor OS upgrade: %ld -> %ld", buf, 0x16u);
    }

    v7 = 1;
  }

  else if (v6)
  {
    *buf = 134218240;
    v12 = v3;
    v13 = 2048;
    v14 = v4;
    v7 = 2;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Major OS upgrade: %ld -> %ld", buf, 0x16u);
  }

  else
  {
    v7 = 2;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __31__PLConfigAgent_getUpgradeType__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) defaultLongForKey:@"DefaultOSVersion"];
  qword_2811F42F8 = result;
  return result;
}

- (id)logAndUpdateLastBuild:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D3F180] objectForKey:@"LastBuild" forApplicationID:@"com.apple.powerlogd" synchronize:0];
  if (v4 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    v7 = PLLogConfig();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v23 = v4;
      v24 = 2112;
      v25 = v5;
      _os_log_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_INFO, "Update detected - Current Build %@ -> Last Build %@", buf, 0x16u);
    }

    [MEMORY[0x277D3F180] setObject:v4 forKey:@"LastBuild" saveToDisk:1];
    +[PLConfigAgent resetRAPIDTaskingConfig];
    [(PLConfigAgent *)self maintainPreUpgradePowerlogs:[(PLConfigAgent *)self checkAndUpdateOSVersion:v5]];
    if (v5)
    {
      v8 = PLLogConfig();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v23 = v5;
        v24 = 2112;
        v25 = v4;
        _os_log_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_INFO, "The device has been updated from build version %@ to build version %@", buf, 0x16u);
      }

      v9 = dispatch_time(0, 60000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __39__PLConfigAgent_logAndUpdateLastBuild___block_invoke;
      block[3] = &unk_278259658;
      v10 = v5;
      v20 = v10;
      v21 = v4;
      dispatch_after(v9, MEMORY[0x277D85CD0], block);

      [MEMORY[0x277D3F180] setObject:v10 forKey:@"PreviousUpdateBuild" saveToDisk:1];
      v11 = PLLogConfig();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_INFO, "Set the previous update build to last build", buf, 2u);
      }
    }

    v12 = [MEMORY[0x277D3F180] objectForKey:@"InstallType" ifNotSet:&unk_282C10920];
    [v12 unsignedLongLongValue];

    v17 = v5;
    v18 = v4;
    AnalyticsSendEventLazy();

    v6 = v17;
  }

  else
  {
    v6 = PLLogConfig();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Not an update case - logging at powerlog init", buf, 2u);
    }
  }

  v13 = [MEMORY[0x277D3F180] objectForKey:@"PreviousUpdateBuild" forApplicationID:@"com.apple.powerlogd" synchronize:0];
  v14 = PLLogConfig();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v23 = v13;
    v24 = 2112;
    v25 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_DEBUG, "Sending lastBuild value - prev update build %@ and last %@", buf, 0x16u);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

void __39__PLConfigAgent_logAndUpdateLastBuild___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@_%@", @"Upgrade", *(a1 + 32), *(a1 + 40)];
  v2 = PLGenerateBatteryUIPlist();

  if ((v2 & 1) == 0)
  {
    v3 = PLLogConfig();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_ERROR, "Failed to generate a new BUI upgrade plist", buf, 2u);
    }
  }
}

id __39__PLConfigAgent_logAndUpdateLastBuild___block_invoke_297(void *a1)
{
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = v2;
  if (a1[4])
  {
    v4 = a1[4];
  }

  else
  {
    v4 = @"None";
  }

  [v2 setObject:v4 forKeyedSubscript:@"LastBuild"];
  [v3 setObject:a1[5] forKeyedSubscript:@"Build"];
  if (a1[4])
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a1[6]];
    [v3 setObject:v5 forKeyedSubscript:@"Type"];
  }

  else
  {
    [v3 setObject:&unk_282C108D8 forKeyedSubscript:@"Type"];
  }

  return v3;
}

- (id)logAndUpdateLastUpgradeTime:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D3F180] objectForKey:@"LastBuild" forApplicationID:@"com.apple.powerlogd" synchronize:0];
  v6 = [MEMORY[0x277D3F180] objectForKey:@"LastUpgradeTimestamp" forApplicationID:@"com.apple.powerlogd" synchronize:0];
  v7 = [MEMORY[0x277D3F180] objectForKey:@"LastUpgradeSystemTimestamp" forApplicationID:@"com.apple.powerlogd" synchronize:0];
  if (v4 && ([v4 isEqualToString:v5] & 1) == 0)
  {
    v8 = [MEMORY[0x277CBEAA8] date];
    v9 = [v8 convertFromSystemToMonotonic];
    v10 = MEMORY[0x277CCABB0];
    [v8 timeIntervalSince1970];
    v11 = [v10 numberWithDouble:?];

    v12 = MEMORY[0x277D3F180];
    v13 = MEMORY[0x277CCABB0];
    [v9 timeIntervalSince1970];
    v14 = [v13 numberWithDouble:?];
    [v12 setObject:v14 forKey:@"LastUpgradeTimestamp" saveToDisk:1];

    [MEMORY[0x277D3F180] setObject:v11 forKey:@"LastUpgradeSystemTimestamp" saveToDisk:1];
    [MEMORY[0x277D3F180] setObject:v11 forKey:@"LastBGSQLUpgradeSystemTimestamp" saveToDisk:1];
    v15 = PLLogConfig();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v22 = v4;
      v23 = 2112;
      v24 = v5;
      v25 = 2112;
      v26 = v8;
      _os_log_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_INFO, "Update detected - Current Build %@ -> Last Build %@ and timestamp %@", buf, 0x20u);
    }

    [(PLConfigAgent *)self logToPPSBuild:v4 atDate:v9];
    v7 = v11;
  }

  else
  {
    v8 = PLLogConfig();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Not an update case - logging upgrade timestamp at powerlog init", buf, 2u);
    }
  }

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v7 doubleValue];
      ADClientSetValueForScalarKey();
      v20 = v7;
      AnalyticsSendEventLazy();
    }
  }

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v16 = v6;
  }

  else
  {
    v17 = PLLogConfig();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_INFO, "Returning lastUpgradeTimestamp as nil", buf, 2u);
    }

    v16 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

id __45__PLConfigAgent_logAndUpdateLastUpgradeTime___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"lastUpgradeSystemTimestamp";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)logLastUpgradeSystemTimestamp
{
  v2 = [MEMORY[0x277D3F180] objectForKey:@"LastUpgradeSystemTimestamp" forApplicationID:@"com.apple.powerlogd" synchronize:0];
  v3 = MEMORY[0x277CCABB0];
  [v2 doubleValue];
  v5 = [v3 numberWithDouble:floor(v4 / 3600.0) * 3600.0];

  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
  }

  else
  {
    v7 = PLLogConfig();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_INFO, "Returning lastUpgradeSystemTimestamp as nil", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (unint64_t)logInstallType:(id)a3
{
  if (a3)
  {
    return [(PLConfigAgent *)self getUpgradeType];
  }

  else
  {
    return 0;
  }
}

- (void)logToPPSBuild:(id)a3 atDate:(id)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"build";
  v13[0] = a3;
  v6 = MEMORY[0x277CBEAC0];
  v7 = a4;
  v8 = a3;
  v9 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v10 = [MEMORY[0x277CBEAA8] nearestMidnightBeforeDate:v7];

  [(PLOperator *)self logForSubsystem:@"PPTStorageOperator" category:@"Config" data:v9 date:v10];
  v11 = *MEMORY[0x277D85DE8];
}

- (double)logDeviceDiskSize
{
  v2 = MGCopyAnswer();
  v3 = [v2 objectForKey:*MEMORY[0x277D823C8]];
  [v3 doubleValue];
  v5 = (v4 / 1000000000.0);

  return v5;
}

- (id)logLastBackupTime
{
  v2 = [MEMORY[0x277D3F180] objectForKey:@"LastBackupTimestamp" forApplicationID:@"com.apple.powerlogd" synchronize:0];
  if (v2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = MEMORY[0x277CBEAA8];
    [v2 doubleValue];
    v4 = [v3 dateWithTimeIntervalSince1970:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)logIcloudAccountType
{
  v2 = objc_alloc_init(MEMORY[0x277CB8F48]);
  v3 = [v2 aa_primaryAppleAccount];
  v4 = [v3 aa_lastKnownQuota];
  v5 = v4;
  if (v4)
  {
    v6 = [MEMORY[0x277CCA8E8] stringFromByteCount:objc_msgSend(v4 countStyle:{"longLongValue"), 3}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)seedGroup
{
  v2 = [MEMORY[0x277D3F180] sharedDefaults];
  v3 = [v2 managedPrefsObjectForKey:@"SeedGroup" forApplicationID:@".GlobalPreferences" synchronize:1];

  return v3;
}

- (id)deviceShutdownReasons
{
  v2 = IOServiceMatching("IOService");
  if (!v2)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_20;
  }

  v3 = v2;
  valuePtr = 0;
  v4 = *MEMORY[0x277CBECE8];
  cf = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt32Type, &valuePtr);
  v5 = CFDictionaryCreate(v4, &deviceShutdownReasons_tmp, &cf, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v5)
  {
    CFRelease(v3);
    if (deviceShutdownReasons_tmp)
    {
      CFRelease(deviceShutdownReasons_tmp);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_9;
  }

  v6 = v5;
  CFDictionarySetValue(v3, @"IOPropertyMatch", v5);
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v3);
  if (MatchingService)
  {
    v8 = MatchingService;
    v9 = [MEMORY[0x277D3F1C8] snapshotFromIOEntry:MatchingService];
    IOObjectRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  CFRelease(v6);
  if (deviceShutdownReasons_tmp)
  {
    CFRelease(deviceShutdownReasons_tmp);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v9)
  {
    v10 = [v9 objectForKeyedSubscript:@"IOPMUBootErrorFaults"];

    if (v10)
    {
      v11 = [v9 objectForKeyedSubscript:@"IOPMUBootErrorFaults"];
      v12 = [v11 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

      v10 = [v12 componentsJoinedByString:{@", "}];
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_20:

  return v10;
}

- (BOOL)getMDMStatus
{
  v2 = [MEMORY[0x277D26298] sharedConnection];
  v3 = [v2 installedMDMProfileIdentifier];
  v4 = v3 != 0;

  return v4;
}

- (id)getSplatVersionString
{
  if (qword_2811F4308 != -1)
  {
    dispatch_once(&qword_2811F4308, &__block_literal_global_349);
  }

  v3 = qword_2811F4300;

  return v3;
}

uint64_t __38__PLConfigAgent_getSplatVersionString__block_invoke()
{
  qword_2811F4300 = CFCopySystemVersionString();

  return MEMORY[0x2821F96F8]();
}

- (id)deviceName
{
  if ([MEMORY[0x277D3F180] fullMode])
  {
    v2 = [MEMORY[0x277D3F1B8] getUserAssignedDeviceName];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (int)getOSVariant
{
  if (os_variant_has_internal_diagnostics())
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  if (os_variant_has_internal_content())
  {
    v2 |= 4u;
  }

  if (os_variant_has_internal_ui())
  {
    return v2 | 8;
  }

  else
  {
    return v2;
  }
}

- (id)baseband
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [MEMORY[0x277D3F208] kPLBasebandClassOfDevice];

  return [v2 numberWithInt:v3];
}

- (id)getCoverGlass
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)hasEmbeddedSIM
{
  v2 = MGCopyAnswer();

  return v2;
}

- (int)getPerfLevelsCount
{
  v6 = 0;
  v5 = 4;
  if (!sysctlbyname("hw.nperflevels", &v6, &v5, 0, 0))
  {
    return v6;
  }

  v2 = PLLogConfig();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_ERROR, "Unable to retrieve hw.nperflevels", v4, 2u);
  }

  return 0;
}

- (int)getCoreCount:(int)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = "hw.perflevel1.physicalcpu";
  }

  else
  {
    v4 = "hw.perflevel0.physicalcpu";
  }

  v9 = 0;
  v8 = 4;
  if (sysctlbyname(v4, &v9, &v8, 0, 0))
  {
    v5 = PLLogConfig();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v11 = a3;
      _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "Unable to retrieve hw.perflevel%d.physicalcpu", buf, 8u);
    }

    result = 0;
  }

  else
  {
    result = v9;
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)getShutdownBootReason:(BOOL)a3
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = "kern.shutdownreason";
  }

  else
  {
    v3 = "kern.bootreason";
  }

  v11 = 0;
  sysctlbyname(v3, 0, &v11, 0, 0);
  if (v11)
  {
    v4 = &v10 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v4, v11);
    if (sysctlbyname(v3, v4, &v11, 0, 0))
    {
      v5 = PLLogConfig();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
        *buf = 138412290;
        v13 = v9;
        _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "Unable to retrieve %@", buf, 0xCu);
      }

      v6 = 0;
    }

    else
    {
      v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:v4];
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)hwConfig
{
  if (hwConfig_onceToken != -1)
  {
    dispatch_once(&hwConfig_onceToken, &__block_literal_global_366);
  }

  v3 = hwConfig___config;

  return v3;
}

void __25__PLConfigAgent_hwConfig__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      v3 = CFGetTypeID(v1);
      if (v3 == CFDataGetTypeID())
      {
        BytePtr = CFDataGetBytePtr(v1);
        Length = CFDataGetLength(v1);
        v6 = malloc_type_malloc(Length + 1, 0x1FCA0D5FuLL);
        bzero(v6, Length + 1);
        memcpy(v6, BytePtr, Length);
        v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
        free(v6);
      }

      else
      {
        v7 = 0;
      }

      v8 = hwConfig___config;
      hwConfig___config = v7;
    }
  }
}

- (id)hwBoardRevision
{
  if (hwBoardRevision_onceToken != -1)
  {
    dispatch_once(&hwBoardRevision_onceToken, &__block_literal_global_368);
  }

  v3 = hwBoardRevision___revision;

  return v3;
}

void __32__PLConfigAgent_hwBoardRevision__block_invoke()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFDataGetTypeID())
    {
      v3 = CFGetTypeID(v1);
      if (v3 == CFDataGetTypeID())
      {
        BytePtr = CFDataGetBytePtr(v1);
        Length = CFDataGetLength(v1);
        v6 = malloc_type_malloc(2 * Length + 3, 0x973E0A97uLL);
        bzero(v6, 2 * Length + 3);
        strcpy(v6, "0x");
        if (Length >= 1)
        {
          v7 = 2;
          do
          {
            v8 = *BytePtr++;
            v7 += snprintf(v6 + v7, 3uLL, "%02x", v8);
            --Length;
          }

          while (Length);
        }

        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
        free(v6);
      }

      else
      {
        v9 = 0;
      }

      v10 = hwBoardRevision___revision;
      hwBoardRevision___revision = v9;
    }
  }
}

- (id)getDeviceSerialNumber
{
  v2 = MEMORY[0x277D3F1C8];
  v3 = [(PLConfigAgent *)self iokitExpertDevice];
  v4 = [v2 snapshotFromIOEntry:objc_msgSend(v3 forKey:{"service"), @"IOPlatformSerialNumber"}];

  return v4;
}

- (void)initOperatorDependancies
{
  v50[2] = *MEMORY[0x277D85DE8];
  v3 = PLLogConfig();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(location[0]) = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Telemetry on system & userspace reboots events for BGSQL", location, 2u);
  }

  [(PLConfigAgent *)self logUserspaceReboot];
  [(PLConfigAgent *)self logSystemReboot];
  v4 = objc_alloc(MEMORY[0x277D3F160]);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __41__PLConfigAgent_initOperatorDependancies__block_invoke;
  v48[3] = &unk_2782597E8;
  v48[4] = self;
  v5 = [v4 initWithOperator:self forNotification:@"com.apple.sysdiagnose.sysdiagnoseStarted" requireState:0 withBlock:v48];
  sysdiagnoseStartListener = self->_sysdiagnoseStartListener;
  self->_sysdiagnoseStartListener = v5;

  v7 = objc_alloc(MEMORY[0x277D3F160]);
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __41__PLConfigAgent_initOperatorDependancies__block_invoke_374;
  v47[3] = &unk_2782597E8;
  v47[4] = self;
  v8 = [v7 initWithOperator:self forNotification:@"com.apple.sysdiagnose.sysdiagnoseStopped" requireState:0 withBlock:v47];
  sysdiagnoseStopListener = self->_sysdiagnoseStopListener;
  self->_sysdiagnoseStopListener = v8;

  v10 = [MEMORY[0x277CCAB98] defaultCenter];
  [v10 addObserver:self selector:sel_pairStatusDidChange_ name:*MEMORY[0x277D2BC68] object:0];

  v11 = [MEMORY[0x277CCAB98] defaultCenter];
  [v11 addObserver:self selector:sel_pairStatusDidChange_ name:*MEMORY[0x277D2BC78] object:0];

  v12 = [MEMORY[0x277CCAB98] defaultCenter];
  [v12 addObserver:self selector:sel_pairStatusDidChange_ name:*MEMORY[0x277D2BC90] object:0];

  v13 = objc_alloc(MEMORY[0x277D3F160]);
  v14 = [(PLOperator *)self workQueue];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __41__PLConfigAgent_initOperatorDependancies__block_invoke_381;
  v46[3] = &unk_2782597E8;
  v46[4] = self;
  v15 = [v13 initWithWorkQueue:v14 forNotification:@"com.apple.system.console_mode_changed" requireState:1 withBlock:v46];
  [(PLConfigAgent *)self setConsoleModeListener:v15];

  v16 = objc_alloc(MEMORY[0x277D3F160]);
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __41__PLConfigAgent_initOperatorDependancies__block_invoke_385;
  v45[3] = &unk_2782597E8;
  v45[4] = self;
  v17 = [v16 initWithOperator:self forNotification:@"com.apple.keyboard.preferences.haptic-feedback.changed" requireState:0 withBlock:v45];
  notificationKeyboardHaptics = self->_notificationKeyboardHaptics;
  self->_notificationKeyboardHaptics = v17;

  v19 = objc_alloc(MEMORY[0x277D3F160]);
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __41__PLConfigAgent_initOperatorDependancies__block_invoke_389;
  v44[3] = &unk_2782597E8;
  v44[4] = self;
  v20 = [v19 initWithOperator:self forNotification:@"com.apple.preferences.sounds.keyboard-audio.changed" requireState:0 withBlock:v44];
  notificationKeyboardClicks = self->_notificationKeyboardClicks;
  self->_notificationKeyboardClicks = v20;

  _ringerStateNotifyToken = -1;
  objc_initWeak(location, self);
  v22 = MEMORY[0x277D85CD0];
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __41__PLConfigAgent_initOperatorDependancies__block_invoke_391;
  handler[3] = &unk_278259630;
  objc_copyWeak(&v42, location);
  notify_register_dispatch("com.apple.springboard.ringerstate", &_ringerStateNotifyToken, MEMORY[0x277D85CD0], handler);

  if (_ringerStateNotifyToken != -1)
  {
    [(PLConfigAgent *)self logEventForwardRingerState];
  }

  v23 = objc_alloc(MEMORY[0x277D3F270]);
  v49[0] = @"clientID";
  v49[1] = @"event";
  v50[0] = &unk_282C10938;
  v50[1] = @"ContinuityCamera";
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:2];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __41__PLConfigAgent_initOperatorDependancies__block_invoke_402;
  v40[3] = &unk_27825A1D8;
  v40[4] = self;
  v25 = [v23 initWithOperator:self withRegistration:v24 withBlock:v40];
  continuityCameraNotification = self->_continuityCameraNotification;
  self->_continuityCameraNotification = v25;

  v27 = objc_alloc(MEMORY[0x277D3F270]);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __41__PLConfigAgent_initOperatorDependancies__block_invoke_410;
  v39[3] = &unk_27825A1D8;
  v39[4] = self;
  v28 = [v27 initWithOperator:self withRegistration:&unk_282C17568 withBlock:v39];
  ambientModeListener = self->_ambientModeListener;
  self->_ambientModeListener = v28;

  v30 = objc_alloc(MEMORY[0x277D3F270]);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __41__PLConfigAgent_initOperatorDependancies__block_invoke_420;
  v38[3] = &unk_27825A1D8;
  v38[4] = self;
  v31 = [v30 initWithOperator:self withRegistration:&unk_282C17590 withBlock:v38];
  buddyDataListener = self->_buddyDataListener;
  self->_buddyDataListener = v31;

  if ([MEMORY[0x277D3F258] deviceRebooted] && objc_msgSend(MEMORY[0x277D3F208], "internalBuild"))
  {
    v33 = PLLogConfig();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *v37 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v33, OS_LOG_TYPE_DEBUG, "Device rebooted, spinning up PPSFeatureFlagReaderHelper", v37, 2u);
    }

    v34 = objc_alloc_init(PPSFeatureFlagReaderHelper);
    v35 = [(PPSFeatureFlagReaderHelper *)v34 getFeatureFlags];
    [(PLConfigAgent *)self logEventPointFeatureFlags:v35];
  }

  objc_destroyWeak(&v42);
  objc_destroyWeak(location);
  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __41__PLConfigAgent_initOperatorDependancies__block_invoke(uint64_t a1)
{
  v2 = PLLogConfig();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Sysdiagnose started", v4, 2u);
  }

  return [*(a1 + 32) logEventForwardSysdiagnoseEvent:1];
}

uint64_t __41__PLConfigAgent_initOperatorDependancies__block_invoke_374(uint64_t a1)
{
  v2 = PLLogConfig();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Sysdiagnose stopped", v4, 2u);
  }

  return [*(a1 + 32) logEventForwardSysdiagnoseEvent:0];
}

uint64_t __41__PLConfigAgent_initOperatorDependancies__block_invoke_381(uint64_t a1)
{
  v2 = PLLogConfig();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Console Mode changed", v4, 2u);
  }

  return [*(a1 + 32) logEventForwardConsoleMode];
}

void __41__PLConfigAgent_initOperatorDependancies__block_invoke_385(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogConfig();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Keyboard Haptics Changed: %@", &v7, 0xCu);
  }

  [*(a1 + 32) logEventForwardKeyboardHaptics];
  v6 = *MEMORY[0x277D85DE8];
}

void __41__PLConfigAgent_initOperatorDependancies__block_invoke_389(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = PLLogConfig();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Keyboard Clicks Changed: %@", &v7, 0xCu);
  }

  [*(a1 + 32) logEventForwardKeyboardClicks];
  v6 = *MEMORY[0x277D85DE8];
}

void __41__PLConfigAgent_initOperatorDependancies__block_invoke_391(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained logEventForwardRingerState];
}

void __41__PLConfigAgent_initOperatorDependancies__block_invoke_402(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogConfig();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Continuity Camera payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardContinuityCamera:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __41__PLConfigAgent_initOperatorDependancies__block_invoke_410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogConfig();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "AmbientModeEnabled Changed: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventForwardAmbientModeEnabled:v6];
  v8 = *MEMORY[0x277D85DE8];
}

void __41__PLConfigAgent_initOperatorDependancies__block_invoke_420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogConfig();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "ConfigMetrics BuddyData payload: %@", &v9, 0xCu);
  }

  [*(a1 + 32) logEventNoneBuddyData:v6];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D2BC68] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x277D2BC78] object:0];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x277D2BC90] object:0];

  v6.receiver = self;
  v6.super_class = PLConfigAgent;
  [(PLAgent *)&v6 dealloc];
}

- (void)log
{
  [(PLConfigAgent *)self logEventNoneConfig];
  [(PLConfigAgent *)self logEventNonePairedDeviceConfig];
  [(PLConfigAgent *)self logEventForwardKeyboardHaptics];
  [(PLConfigAgent *)self logEventForwardKeyboardClicks];
  [(PLConfigAgent *)self logEventForwardRingerState];
  [(PLConfigAgent *)self logEventForwardConsoleMode];
  [(PLConfigAgent *)self logDeviceCapability];

  [(PLConfigAgent *)self logCPUCoreConfig];
}

- (void)logEventPointFeatureFlags:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(PLOperator *)PLConfigAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"FeatureFlags"];
  v6 = [MEMORY[0x277D3F258] deviceBootTime];
  v7 = objc_opt_new();
  v8 = PLLogConfig();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v49 = v4;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "PPSFeatureFlagReader currFeatureFlags set : %@", buf, 0xCu);
  }

  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v5 withDate:v6];
  if ([v4 count])
  {
    v32 = v9;
    v33 = v7;
    v27 = self;
    v28 = v6;
    v29 = v5;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v4;
    v34 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
    v10 = 0;
    if (v34)
    {
      v31 = *v36;
      do
      {
        v11 = 0;
        v12 = v10;
        do
        {
          if (*v36 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v35 + 1) + 8 * v11);
          v43[0] = @"Domain";
          v14 = [v13 objectForKeyedSubscript:@"Domain"];
          v44[0] = v14;
          v43[1] = @"FeatureName";
          v15 = [v13 objectForKeyedSubscript:@"FeatureName"];
          v44[1] = v15;
          v43[2] = @"TargetRelease";
          v16 = [v13 objectForKeyedSubscript:@"TargetRelease"];
          v44[2] = v16;
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:3];

          v17 = [v13 objectForKeyedSubscript:@"State"];
          [v32 setObject:v17 forKeyedSubscript:v10];

          v41[0] = @"Domain";
          v18 = [v13 objectForKeyedSubscript:@"Domain"];
          v42[0] = v18;
          v41[1] = @"FeatureName";
          v19 = [v13 objectForKeyedSubscript:@"FeatureName"];
          v42[1] = v19;
          v41[2] = @"TargetRelease";
          v20 = [v13 objectForKeyedSubscript:@"TargetRelease"];
          v42[2] = v20;
          v41[3] = @"State";
          v21 = [v13 objectForKeyedSubscript:@"State"];
          v42[3] = v21;
          v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:4];
          [v33 addObject:v22];

          ++v11;
          v12 = v10;
        }

        while (v34 != v11);
        v34 = [obj countByEnumeratingWithState:&v35 objects:v45 count:16];
      }

      while (v34);
    }

    self = v27;
    v9 = v32;
    [(PLOperator *)v27 logEntry:v32];
    v7 = v33;
    v39 = @"__PPSKVPairs__";
    v40 = v33;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
    v5 = v29;
    v6 = v28;
  }

  else
  {
    v24 = PLLogConfig();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v24, OS_LOG_TYPE_DEBUG, "PPSFeatureFlagReader currFeatureFlags set is empty, all Feature Flags are in Default State", buf, 2u);
    }

    v10 = &unk_282C175B8;
    [v9 setObject:&unk_282C10980 forKeyedSubscript:&unk_282C175B8];
    [(PLOperator *)self logEntry:v9];
    [v7 addObject:&unk_282C175E0];
    v46 = @"__PPSKVPairs__";
    v47 = v7;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  }

  v25 = [v9 entryDate];
  [(PLOperator *)self logForSubsystem:@"BackgroundProcessing" category:@"FeatureFlag" data:v23 date:v25];

  v26 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardSysdiagnoseEvent:(BOOL)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v15 = @"Start";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:?];
  v16[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  [(PLOperator *)self logForSubsystem:@"ConfigMetrics" category:@"SysdiagnoseEvent" data:v6];
  if (!a3)
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    [v7 timeIntervalSince1970];
    v9 = v8;

    v13[0] = @"TaskEndTime";
    v10 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    v13[1] = @"Reason";
    v14[0] = v10;
    v14[1] = &unk_282C108F0;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

    [(PLOperator *)self logForSubsystem:@"BackgroundProcessing" category:@"TimeOfCaptureEvent" data:v11];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardKeyboardHaptics
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)PLConfigAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"KeyboardHaptics"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
  v5 = [MEMORY[0x277D3F180] objectForKey:@"KeyboardVisceral" forApplicationID:@"com.apple.keyboard.preferences" synchronize:1];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  v8 = PLLogConfig();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11[0] = 67109120;
    v11[1] = v7;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Keyboard Haptics state: %d", v11, 8u);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:v7];
  [v4 setObject:v9 forKeyedSubscript:@"Enabled"];

  [(PLOperator *)self logEntry:v4];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardKeyboardClicks
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(PLOperator *)PLConfigAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"KeyboardClicks"];
  v4 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v3];
  v5 = 1;
  v6 = [MEMORY[0x277D3F180] objectForKey:@"keyboard-audio" forApplicationID:@"com.apple.preferences.sounds" synchronize:1];
  v7 = v6;
  if (v6)
  {
    v5 = [v6 BOOLValue];
  }

  v8 = PLLogConfig();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v11[0] = 67109120;
    v11[1] = v5;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Keyboard Clicks state: %d", v11, 8u);
  }

  v9 = [MEMORY[0x277CCABB0] numberWithBool:v5];
  [v4 setObject:v9 forKeyedSubscript:@"Enabled"];

  [(PLOperator *)self logEntry:v4];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardRingerState
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = PLLogConfig();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12[0]) = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Ringer State changed", v12, 2u);
  }

  v4 = _ringerStateNotifyToken;
  if (_ringerStateNotifyToken == -1)
  {
    v5 = PLLogConfig();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v12[0]) = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Ringer NOTIFY_TOKEN_INVALID", v12, 2u);
    }

    v4 = _ringerStateNotifyToken;
  }

  v12[0] = 0;
  notify_get_state(v4, v12);
  v6 = v12[0];
  v7 = PLLogConfig();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v14 = v6 != 0;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Ringer state: %d", buf, 8u);
  }

  v8 = [(PLOperator *)PLConfigAgent entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"Ringer"];
  v9 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v8];
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v6 != 0];
  [v9 setObject:v10 forKeyedSubscript:@"Enabled"];

  [(PLOperator *)self logEntry:v9];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)logEventForwardAmbientModeEnabled:(id)a3
{
  v4 = *MEMORY[0x277D3F5D0];
  v5 = a3;
  v7 = [(PLOperator *)PLConfigAgent entryKeyForType:v4 andName:@"AmbientModeEnabled"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:v5];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardContinuityCamera:(id)a3
{
  v4 = a3;
  v6 = [objc_opt_class() entryKeyForType:*MEMORY[0x277D3F5D0] andName:@"ContinuityCamera"];
  v5 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6 withRawData:v4];

  [(PLOperator *)self logEntry:v5];
}

- (void)logEventNoneBuddyData:(id)a3
{
  v4 = a3;
  [(PLOperator *)self logForSubsystem:@"ConfigMetrics" category:@"BuddyData" data:v4];
  [(PLOperator *)self logForSubsystem:@"BackgroundProcessing" category:@"BuddyData" data:v4];

  v5 = [(PLOperator *)self storage];
  [v5 flushCachesWithReason:@"BuddyData"];
}

- (void)logEventForwardConsoleMode
{
  v15 = *MEMORY[0x277D85DE8];
  state64 = 0;
  v3 = [(PLConfigAgent *)self consoleModeListener];
  state = notify_get_state([v3 stateToken], &state64);

  if (state)
  {
    v5 = PLLogConfig();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Console Mode state Unavailable", buf, 2u);
    }
  }

  else
  {
    v6 = state64;
    v7 = PLLogConfig();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v14 = v6 != 0;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "Console Mode state: %d", buf, 8u);
    }

    v11 = @"Enabled";
    v8 = [MEMORY[0x277CCABB0] numberWithBool:v6 != 0];
    v12 = v8;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];

    [(PLOperator *)self logForSubsystem:@"ConfigMetrics" category:@"ConsoleModeEnabled" data:v5];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)logUserspaceReboot
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v19 = 0;
  v18 = 4;
  v4 = sysctlbyname("kern.userspacerebootpurpose", &v19, &v18, 0, 0);
  v5 = PLLogConfig();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v14 = *__error();
      *buf = 67109120;
      LODWORD(v21) = v14;
      _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, "Unable to get kern.userspacerebootpurpose: %{errno}d", buf, 8u);
    }

    [v3 setObject:&unk_282C10998 forKeyedSubscript:@"Reason"];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      LODWORD(v21) = v19;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Reboot Purpose kern.userspacerebootpurpose value: %u", buf, 8u);
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19];
    [v3 setObject:v7 forKeyedSubscript:@"Reason"];
  }

  v17 = 0;
  v8 = [MEMORY[0x277CBEAA8] date];
  v16 = 8;
  v9 = sysctlbyname("kern.userspacereboottime", &v17, &v16, 0, 0);
  v10 = PLLogConfig();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = *__error();
      *buf = 67109120;
      LODWORD(v21) = v15;
      _os_log_error_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_ERROR, "Unable to get kern.userspacereboottime: %{errno}d", buf, 8u);
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v21 = v17;
      _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "RebootEvents kern.userspacereboottime value: %llu", buf, 0xCu);
    }

    [v3 setObject:&unk_282C10980 forKeyedSubscript:@"Event"];
    if (v17)
    {
      v12 = [MEMORY[0x277D3F258] dateFromnSecEpoch:?];

      [(PLOperator *)self logForSubsystem:@"BackgroundProcessing" category:@"RebootEvents" data:v3 date:v12];
      v8 = v12;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)logSystemReboot
{
  v29[2] = *MEMORY[0x277D85DE8];
  v23 = 8;
  v24 = 0.0;
  v3 = sysctlbyname("kern.shutdowntime", &v24, &v23, 0, 0);
  v4 = PLLogConfig();
  v5 = v4;
  if (!v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v26 = v24;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "RebootEvents kern.shutdowntime value: %llu", buf, 0xCu);
    }

    v5 = [MEMORY[0x277CBEAA8] date];
    v7 = sysctlbyname("kern.monotonicclock_usecs", v29, &v23, 0, 0);
    v8 = PLLogConfig();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v10 = *__error();
        *buf = 67109120;
        LODWORD(v26) = v10;
        v11 = "Unable to get kern.monotonicclock_usecs: %{errno}d";
        v12 = v9;
        v13 = 8;
LABEL_21:
        _os_log_error_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_ERROR, v11, buf, v13);
        goto LABEL_44;
      }

      goto LABEL_44;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218240;
      v26 = *v29;
      v27 = 2048;
      v28 = v29[1];
      _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "RebootEvents kern.monotonicclock_usecs values: %llu, %llu", buf, 0x16u);
    }

    if (v24 == 0.0 || (v14 = v29[0]) == 0)
    {
      v9 = PLLogConfig();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v11 = "kern.shutdowntime & kern.monotonicclock_usecs must both be non-zero";
        v12 = v9;
        v13 = 2;
        goto LABEL_21;
      }

LABEL_44:

      goto LABEL_45;
    }

    v9 = objc_opt_new();
    [v9 setObject:&unk_282C108F0 forKeyedSubscript:@"Event"];
    v15 = (v14 - *&v24) / 1000000.0;
    v16 = PLLogConfig();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v26 = v15;
      _os_log_debug_impl(&dword_21A4C6000, v16, OS_LOG_TYPE_DEBUG, "Elapsed PMU RTC ticks in USecs since shutdown: %f", buf, 0xCu);
    }

    v17 = [v5 dateByAddingTimeInterval:-v15];
    v18 = [v17 convertFromSystemToMonotonic];

    [(PLConfigAgent *)self getShutdownBootReason:1];
    v19 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v20 = PLLogConfig();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v26 = v19;
      _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "Shutdown Reason: %@", buf, 0xCu);
    }

    [v9 setObject:&unk_282C10998 forKeyedSubscript:@"Reason"];
    if ([*&v19 containsString:@"unknown"])
    {
      v21 = &unk_282C109B0;
    }

    else if ([*&v19 containsString:@"smc_thermal_critical"])
    {
      v21 = &unk_282C109C8;
    }

    else if ([*&v19 containsString:@"smc_dark_wake_thermal_critical"])
    {
      v21 = &unk_282C109E0;
    }

    else if ([*&v19 containsString:@"smc_remote_mgmt"])
    {
      v21 = &unk_282C109F8;
    }

    else if ([*&v19 containsString:@"ap_shutdown"])
    {
      v21 = &unk_282C10A10;
    }

    else if ([*&v19 containsString:@"ap_panic"])
    {
      v21 = &unk_282C10A28;
    }

    else if ([*&v19 containsString:@"ap_restart"])
    {
      v21 = &unk_282C10A40;
    }

    else if ([*&v19 containsString:@"ap_wdt_expiry"])
    {
      v21 = &unk_282C10A58;
    }

    else if ([*&v19 containsString:@"ap_sys_reset"])
    {
      v21 = &unk_282C10A70;
    }

    else if ([*&v19 containsString:@"ap_hibernate"])
    {
      v21 = &unk_282C10A88;
    }

    else
    {
      if (![*&v19 containsString:@"ap_virtual_slp_ll"])
      {
LABEL_43:
        [(PLOperator *)self logForSubsystem:@"BackgroundProcessing" category:@"RebootEvents" data:v9 date:v18];

        goto LABEL_44;
      }

      v21 = &unk_282C10AA0;
    }

    [v9 setObject:v21 forKeyedSubscript:@"Reason"];
    goto LABEL_43;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *__error();
    *buf = 67109120;
    LODWORD(v26) = v6;
    _os_log_error_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_ERROR, "Unable to get kern.shutdowntime: %{errno}d", buf, 8u);
  }

LABEL_45:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)logDeviceCapability
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277D3F288] deviceCapabilityMapping];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__PLConfigAgent_logDeviceCapability__block_invoke;
  v6[3] = &unk_27825B950;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
  [(PLOperator *)self logForSubsystem:@"ConfigMetrics" category:@"DeviceCapability" data:v5];
}

void __36__PLConfigAgent_logDeviceCapability__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v8 = [v5 numberWithInteger:a3];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Capability%@", v8];
  [*(a1 + 32) setObject:v6 forKey:v7];
}

- (void)logCPUCoreConfig
{
  v10 = objc_opt_new();
  v3 = [(PLConfigAgent *)self getPerfLevelsCount];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:v3];
  [v10 setObject:v4 forKeyedSubscript:@"numCoreTypes"];

  if (v3 >= 1)
  {
    v5 = 0;
    do
    {
      if (v5)
      {
        v6 = @"numEcpuCores";
      }

      else
      {
        v6 = @"numPcpuCores";
      }

      v7 = MEMORY[0x277CCABB0];
      v8 = v6;
      v9 = [v7 numberWithInt:{-[PLConfigAgent getCoreCount:](self, "getCoreCount:", v5)}];
      [v10 setObject:v9 forKeyedSubscript:v8];

      v5 = (v5 + 1);
    }

    while (v3 != v5);
  }

  [(PLOperator *)self logForSubsystem:@"ConfigMetrics" category:@"CPUCoreConfig" data:v10];
}

- (void)logConfigToBGSQL:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277D3F180] objectForKey:@"LastBGSQLUpgradeSystemTimestamp" forApplicationID:@"com.apple.powerlogd" synchronize:0];
  v6 = MEMORY[0x277CCABB0];
  v7 = [v4 objectForKeyedSubscript:@"DeviceBootTime"];
  v8 = [v7 convertFromMonotonicToSystem];
  [v8 timeIntervalSince1970];
  v9 = [v6 numberWithDouble:?];

  v10 = PLLogConfig();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = MEMORY[0x277CCABB0];
    [v5 doubleValue];
    v13 = v12;
    [v9 doubleValue];
    if (v13 < v14)
    {
      v14 = v13;
    }

    v15 = [v11 numberWithDouble:v14];
    v26 = 138412802;
    v27 = v5;
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = v15;
    _os_log_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_DEFAULT, "Config - Device upgrade timestamp is %@ and system boot time is %@ and @(MIN([lastUpgradeSystemTimestamp doubleValue], [systemBootTimestamp doubleValue])) is %@", &v26, 0x20u);
  }

  v16 = MEMORY[0x277CCABB0];
  [v5 doubleValue];
  v18 = v17;
  [v9 doubleValue];
  if (v18 < v19)
  {
    v19 = v18;
  }

  v20 = [v16 numberWithDouble:v19];
  [v4 setObject:v20 forKeyedSubscript:@"LastUpgradeSystemTimestamp"];

  v21 = MEMORY[0x277D3F180];
  v22 = [v4 objectForKeyedSubscript:@"LastUpgradeSystemTimestamp"];
  [v21 setObject:v22 forKey:@"LastBGSQLUpgradeSystemTimestamp" saveToDisk:1];

  v23 = [v4 dictionary];
  v24 = [v4 entryDate];
  [(PLOperator *)self logForSubsystem:@"BackgroundProcessing" category:@"Config" data:v23 date:v24];

  v25 = *MEMORY[0x277D85DE8];
}

- (void)logConfigEntry:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v15 = [v4 dictionary];

  v6 = [(PLConfigAgent *)self getCoverGlass];
  [v15 setObject:v6 forKeyedSubscript:@"DeviceCoverGlassCoating"];

  v7 = [(PLConfigAgent *)self hasEmbeddedSIM];
  [v15 setObject:v7 forKeyedSubscript:@"HasEmbeddedSIM"];

  v8 = [(PLConfigAgent *)self getShutdownBootReason:1];
  [v15 setObject:v8 forKeyedSubscript:@"ShutdownReason"];

  v9 = [(PLConfigAgent *)self getShutdownBootReason:0];
  [v15 setObject:v9 forKeyedSubscript:@"BootReason"];

  v10 = [v4 entryDate];

  [(PLOperator *)self logForSubsystem:@"ConfigMetrics" category:@"DeviceConfig" data:v15 date:v10];
  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v11 = MEMORY[0x277CBEB38];
    v12 = [v15 objectForKeyedSubscript:@"DeviceSerialNumber"];
    v13 = [v11 dictionaryWithObject:v12 forKey:@"DeviceSerialNumber"];

    [(PLOperator *)self logForSubsystem:@"XcodeMetrics" category:@"DeviceConfig" data:v13];
    v14 = v13;
  }

  else
  {
    v14 = v15;
  }

  v16 = v14;
  [(PLConfigAgent *)self logConfigEntryToCA:v14];
}

- (void)logEventNoneConfig
{
  v3 = [(PLOperator *)PLConfigAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"Config"];
  v4 = objc_alloc(MEMORY[0x277D3F190]);
  v5 = [MEMORY[0x277D3F2A0] sharedCore];
  v6 = [v5 launchDate];
  v7 = [v4 initWithEntryKey:v3 withDate:v6];

  v8 = [MEMORY[0x277D3F258] buildVersion];
  [v7 setObject:v8 forKeyedSubscript:@"Build"];

  v9 = [MEMORY[0x277D3F258] supplementalBuildVersion];
  [v7 setObject:v9 forKeyedSubscript:@"SupplementalBuild"];

  v10 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(MEMORY[0x277D3F208], "internalBuild") ^ 1}];
  [v7 setObject:v10 forKeyedSubscript:@"CustomerOS"];

  v11 = [MEMORY[0x277D3F1B8] getHardwareModel];
  [v7 setObject:v11 forKeyedSubscript:@"Device"];

  v12 = [MEMORY[0x277D3F258] crashReporterKey];
  [v7 setObject:v12 forKeyedSubscript:@"CRKey"];

  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v13 = [MEMORY[0x277D3F258] crashReporterKey];
    [v7 setObject:v13 forKeyedSubscript:@"CRKey2"];

    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLConfigAgent rootInstalled](self, "rootInstalled")}];
    [v7 setObject:v14 forKeyedSubscript:@"RootInstalled"];

    v15 = [MEMORY[0x277D3F258] mobileUserADG];
    [v7 setObject:v15 forKeyedSubscript:@"ADGOnly"];

    v16 = [MEMORY[0x277D3F258] experimentGroup];
    [v7 setObject:v16 forKeyedSubscript:@"ExperimentGroup"];

    v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D3F258], "hasInternalKey")}];
    [v7 setObject:v17 forKeyedSubscript:@"HasInternalKey"];
  }

  v18 = [(PLConfigAgent *)self deviceName];
  [v7 setObject:v18 forKeyedSubscript:@"DeviceName"];

  v19 = [MEMORY[0x277D3F258] deviceBootArgs];
  [v7 setObject:v19 forKeyedSubscript:@"BootArgs"];

  v20 = [MEMORY[0x277D3F258] deviceBootTime];
  [v7 setObject:v20 forKeyedSubscript:@"DeviceBootTime"];

  v21 = [MEMORY[0x277CCABB0] numberWithInt:{-[PLConfigAgent getDeviceType](self, "getDeviceType")}];
  [v7 setObject:v21 forKeyedSubscript:@"DeviceType"];

  v22 = [v7 objectForKeyedSubscript:@"Build"];
  v23 = [(PLConfigAgent *)self logAndUpdateLastUpgradeTime:v22];
  [v7 setObject:v23 forKeyedSubscript:@"LastUpgradeTimestamp"];

  v24 = [v7 objectForKeyedSubscript:@"Build"];
  v25 = [(PLConfigAgent *)self logAndUpdateLastBuild:v24];
  [v7 setObject:v25 forKeyedSubscript:@"LastBuild"];

  v26 = MEMORY[0x277CCABB0];
  [MEMORY[0x277D3F258] getMachbaseTimeRatio];
  v27 = [v26 numberWithDouble:?];
  [v7 setObject:v27 forKeyedSubscript:@"MachTimeBaseRatio"];

  v28 = [MEMORY[0x277CCABB0] numberWithInteger:{-[PLConfigAgent autolockTime](self, "autolockTime")}];
  [v7 setObject:v28 forKeyedSubscript:@"AutoLockTime"];

  v29 = [(PLConfigAgent *)self baseband];
  [v7 setObject:v29 forKeyedSubscript:@"Baseband"];

  v30 = [MEMORY[0x277D3F1B8] getBasebandFirmwareVersion];
  [v7 setObject:v30 forKeyedSubscript:@"BasebandFirmware"];

  v31 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLConfigAgent noWatchdogs](self, "noWatchdogs")}];
  [v7 setObject:v31 forKeyedSubscript:@"BKNoWatchdogs"];

  v32 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLConfigAgent disableCABlanking](self, "disableCABlanking")}];
  [v7 setObject:v32 forKeyedSubscript:@"SBDisableCABlanking"];

  v33 = [MEMORY[0x277D3F258] automatedDeviceGroup];
  [v7 setObject:v33 forKeyedSubscript:@"AutomatedDeviceGroup"];

  v34 = [(PLConfigAgent *)self seedGroup];
  [v7 setObject:v34 forKeyedSubscript:@"SeedGroup"];

  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v35 = [(PLConfigAgent *)self hwConfig];
    [v7 setObject:v35 forKeyedSubscript:@"ConfigNumber"];

    v36 = [(PLConfigAgent *)self hwBoardRevision];
    [v7 setObject:v36 forKeyedSubscript:@"DebugBoardRevision"];

    v37 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277D3F1B8], "isDevBoard")}];
    [v7 setObject:v37 forKeyedSubscript:@"DevBoard"];
  }

  v38 = [(PLConfigAgent *)self logLastBackupTime];
  [v7 setObject:v38 forKeyedSubscript:@"LastBackupTimestamp"];

  v39 = [(PLConfigAgent *)self logIcloudAccountType];
  [v7 setObject:v39 forKeyedSubscript:@"IcloudAccountType"];

  v40 = [MEMORY[0x277CCABB0] numberWithInt:{-[PLConfigAgent getOSVariant](self, "getOSVariant")}];
  [v7 setObject:v40 forKeyedSubscript:@"OSVariant"];

  v41 = MEMORY[0x277CCABB0];
  [(PLConfigAgent *)self logDeviceDiskSize];
  v42 = [v41 numberWithDouble:?];
  [v7 setObject:v42 forKeyedSubscript:@"DeviceDiskSize"];

  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[PLConfigAgent volumeFreespace:](self, "volumeFreespace:", @"/"}];
  [v7 setObject:v43 forKeyedSubscript:@"RemainingDiskSpace"];

  if ([MEMORY[0x277D3F208] internalBuild])
  {
    v44 = [(PLConfigAgent *)self getDeviceSerialNumber];
    [v7 setObject:v44 forKeyedSubscript:@"DeviceSerialNumber"];
  }

  v45 = [(PLConfigAgent *)self getSplatVersionString];
  [v7 setObject:v45 forKeyedSubscript:@"InstalledSplat"];

  v46 = [(PLConfigAgent *)self logLastUpgradeSystemTimestamp];
  [v7 setObject:v46 forKeyedSubscript:@"LastUpgradeSystemTimestamp"];

  v47 = [MEMORY[0x277D3F180] objectForKey:@"InstallType" ifNotSet:&unk_282C10AB8];
  [v7 setObject:v47 forKeyedSubscript:@"InstallType"];

  v48 = [MEMORY[0x277D3F1B8] getHardwarePlatform];
  [v7 setObject:v48 forKeyedSubscript:@"Device_SoC"];

  if ((os_variant_is_darwinos() & 1) == 0)
  {
    v49 = [(PLConfigAgent *)self deviceShutdownReasons];
    [v7 setObject:v49 forKeyedSubscript:@"DeviceBootReasons"];

    v50 = [(PLConfigAgent *)self getMDMStatus];
    v51 = [MEMORY[0x277CCABB0] numberWithBool:v50];
    [v7 setObject:v51 forKeyedSubscript:@"MDMStatus"];

    if (([MEMORY[0x277D3F208] isiOS] & 1) != 0 || objc_msgSend(MEMORY[0x277D3F208], "isMac"))
    {
      AnalyticsSendEventLazy();
    }
  }

  [(PLOperator *)self logEntry:v7];
  [(PLConfigAgent *)self logConfigEntry:v7];
  [(PLConfigAgent *)self logEntryToCA:v7];
  [(PLConfigAgent *)self logConfigToBGSQL:v7];
  v52 = [(PLOperator *)self storage];
  [v52 flushCachesWithReason:@"DeviceConfig"];
}

id __35__PLConfigAgent_logEventNoneConfig__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"MDMStatus";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)pairStatusDidChange:(id)a3
{
  v4 = [(PLOperator *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__PLConfigAgent_pairStatusDidChange___block_invoke;
  block[3] = &unk_2782591D0;
  block[4] = self;
  dispatch_async(v4, block);
}

uint64_t __37__PLConfigAgent_pairStatusDidChange___block_invoke(uint64_t a1)
{
  v2 = PLLogConfig();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "Gizmo pairStatusDidChange:", v4, 2u);
  }

  return [*(a1 + 32) logEventNonePairedDeviceConfig];
}

- (void)logEventNonePairedDeviceConfig
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D2BCF8] sharedInstance];
  v5 = [v4 getActivePairedDevice];

  v6 = [(PLOperator *)PLConfigAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"PairedDeviceConfig"];
  v40 = self;
  v7 = [(PLOperator *)self storage];
  v8 = [v7 lastEntryForKey:v6];

  v9 = *MEMORY[0x277D2BC08];
  v10 = [v5 valueForProperty:*MEMORY[0x277D2BC08]];
  v11 = v10;
  if (v8)
  {
    v2 = [v8 objectForKeyedSubscript:@"Build"];
    if (!(v2 | v11))
    {
      goto LABEL_7;
    }
  }

  else if (!v10)
  {
LABEL_7:
    v14 = 0;
    goto LABEL_10;
  }

  v12 = [v8 objectForKeyedSubscript:@"Build"];
  v13 = [v11 isEqualToString:v12];

  if (v8)
  {

    if (v13)
    {
      goto LABEL_7;
    }
  }

  else if (v13)
  {
    goto LABEL_7;
  }

  v14 = 1;
LABEL_10:
  v15 = PLLogConfig();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v42 = v14;
    _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "PairedDeviceConfig: build changed = %d)\n", buf, 8u);
  }

  v39 = v14;

  v16 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v6];
  if (v5)
  {
    if ([MEMORY[0x277D3F208] internalBuild])
    {
      v17 = [v5 valueForProperty:*MEMORY[0x277D2BBB8]];
      v18 = [v17 UUIDString];
      [v16 setObject:v18 forKeyedSubscript:@"PairingID"];
    }

    v19 = [v5 valueForProperty:v9];
    [v16 setObject:v19 forKeyedSubscript:@"Build"];

    v20 = [v5 valueForProperty:*MEMORY[0x277D2BBC0]];
    [v16 setObject:v20 forKeyedSubscript:@"Device"];

    v21 = [v5 valueForProperty:*MEMORY[0x277D2BB08]];
    [v16 setObject:v21 forKeyedSubscript:@"HWModel"];

    v22 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"C5DDE5DD-2FF7-4735-80A3-0108488556DE"];
    LODWORD(v23) = [v5 supportsCapability:v22];

    v23 = v23;
  }

  else
  {
    v23 = 0;
  }

  v24 = [MEMORY[0x277D2BCF8] sharedInstance];
  v25 = [MEMORY[0x277D2BCF8] activePairedDeviceSelectorBlock];
  v26 = [v24 getAllDevicesWithArchivedAltAccountDevicesMatching:v25];
  v27 = [v26 firstObject];

  if (v27)
  {
    v28 = [v27 valueForProperty:*MEMORY[0x277D2BB28]];
    v29 = [v28 BOOLValue];

    if (v29)
    {
      v23 |= 2uLL;
    }
  }

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v23];
  [v16 setObject:v30 forKeyedSubscript:@"PMode"];

  if ([MEMORY[0x277D3F208] isWatch])
  {
    ADClientSetValueForScalarKey();
    AnalyticsSendEventLazy();
  }

  if (!v8)
  {
    goto LABEL_27;
  }

  v31 = [v8 objectForKeyedSubscript:@"PMode"];
  if (!v31)
  {
    goto LABEL_27;
  }

  v32 = v31;
  v33 = [v8 objectForKeyedSubscript:@"PMode"];
  v34 = [v33 unsignedIntegerValue];

  if (v34 == v23)
  {
    if (!v39)
    {
      goto LABEL_31;
    }
  }

  else
  {
LABEL_27:
    v35 = PLLogConfig();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v37 = [v8 objectForKeyedSubscript:@"PMode"];
      v38 = [v37 unsignedIntegerValue];
      *buf = 67109632;
      v42 = 1;
      v43 = 1024;
      v44 = v38;
      v45 = 1024;
      v46 = v23;
      _os_log_debug_impl(&dword_21A4C6000, v35, OS_LOG_TYPE_DEBUG, "PairedDeviceConfig: mode changed = %d (0x%x -> 0x%x)\n", buf, 0x14u);
    }
  }

  [(PLOperator *)v40 logEntry:v16];
LABEL_31:

  v36 = *MEMORY[0x277D85DE8];
}

id __47__PLConfigAgent_logEventNonePairedDeviceConfig__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"mode";
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 32)];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)logEntryToCA:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x277D3F258] deviceRebooted])
  {
    v4 = [v3 objectForKeyedSubscript:@"DeviceBootReasons"];
    v5 = v4;
    if (v4)
    {
      if ([v4 rangeOfString:@"vdd_under"] != 0x7FFFFFFFFFFFFFFFLL)
      {
        MEMORY[0x21CEDCD40](@"com.apple.power.boot.vdd_under", 1);
        AnalyticsSendEventLazy();
      }

      v6 = v5;
      AnalyticsSendEventLazy();
    }
  }
}

id __30__PLConfigAgent_logEntryToCA___block_invoke_2(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v5 = @"deviceBootReasons";
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)logConfigEntryToCA:(id)a3
{
  v3 = a3;
  if ([MEMORY[0x277D3F258] deviceRebooted])
  {
    v4 = [v3 objectForKeyedSubscript:@"ShutdownReason"];
    v5 = [v3 objectForKeyedSubscript:@"BootReason"];
    v6 = v5;
    if (v4 && v5)
    {
      v7 = v4;
      v8 = v6;
      AnalyticsSendEventLazy();
    }
  }
}

id __36__PLConfigAgent_logConfigEntryToCA___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:*(a1 + 32) forKeyedSubscript:@"ShutdownReason"];
  [v2 setObject:*(a1 + 40) forKeyedSubscript:@"BootReason"];

  return v2;
}

@end