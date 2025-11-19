@interface SUControllerConfig
- (BOOL)_allowedToTurnOffAutoScan;
- (BOOL)_loadBooleanFromDefaults:(id)a3 usingDefault:(BOOL)a4 isStoredInverted:(BOOL)a5;
- (BOOL)_storeBooleanToDefaults:(id)a3 toValue:(BOOL)a4 isStoredInverted:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (SUControllerConfig)init;
- (SUControllerConfig)initWithCoder:(id)a3;
- (id)_copyStringFromDefaults:(id)a3 usingDefault:(id)a4;
- (id)_storeStringToDefaults:(id)a3 toValue:(id)a4;
- (id)changeSummary:(int64_t)a3;
- (id)copy;
- (id)description;
- (id)initFromDefaults:(int64_t)a3;
- (id)summary;
- (int64_t)_decodeInteger:(id)a3 forKey:(id)a4 withLimit:(int64_t)a5;
- (int64_t)_limitedInteger:(id)a3 checkingValue:(int64_t)a4 forKey:(id)a5 withLimit:(int64_t)a6;
- (int64_t)_loadBooleanFromDefaults:(id)a3 releaseType:(int64_t)a4 externalDefault:(BOOL)a5 internalDefault:(BOOL)a6 isStoredInverted:(BOOL)a7;
- (int64_t)_loadIntegerFromDefaults:(id)a3 releaseType:(int64_t)a4 externalDefault:(int64_t)a5 internalDefault:(int64_t)a6 withLimit:(int64_t)a7;
- (int64_t)_loadIntegerFromDefaults:(id)a3 usingDefault:(int64_t)a4 withLimit:(int64_t)a5;
- (int64_t)_storeIntegerToDefaults:(id)a3 toValue:(int64_t)a4;
- (void)encodeWithCoder:(id)a3;
- (void)modify:(id)a3 usingMask:(int64_t)a4;
@end

@implementation SUControllerConfig

- (SUControllerConfig)init
{
  v12.receiver = self;
  v12.super_class = SUControllerConfig;
  v2 = [(SUControllerConfig *)&v12 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_useSUCore = 16842753;
    v2->_performAutoInstall = 0;
    v2->_autoAcceptTermsAndConditions = updateRequiresDocAsset() ^ 1;
    *&v3->_autoActivityCheckPeriod = xmmword_26AB273E0;
    *&v3->_autoInstallWindowBeginHour = xmmword_26AB273F0;
    *&v3->_autoInstallWindowEndHour = xmmword_26AB27400;
    *&v3->_downloadDocAsset = 0;
    v3->_supervisedMDM = 0;
    requestedPMV = v3->_requestedPMV;
    v3->_requestedPMV = 0;

    v3->_delayPeriod = 0;
    installPhaseOSBackgroundImagePath = v3->_installPhaseOSBackgroundImagePath;
    v3->_installPhaseOSBackgroundImagePath = 0;

    *&v3->_restrictToFullReplacement = 0;
    updateMetricContext = v3->_updateMetricContext;
    v3->_updateMetricContext = 0;

    prerequisiteBuildVersion = v3->_prerequisiteBuildVersion;
    v3->_prerequisiteBuildVersion = 0;

    prerequisiteProductVersion = v3->_prerequisiteProductVersion;
    v3->_prerequisiteProductVersion = 0;

    asReleaseType = v3->_asReleaseType;
    v3->_asReleaseType = 0;

    simulatorCommandsFile = v3->_simulatorCommandsFile;
    v3->_simulatorCommandsFile = 0;

    v3->_maxOptionalPSUSDownloadSize = -1;
  }

  return v3;
}

- (id)initFromDefaults:(int64_t)a3
{
  v21.receiver = self;
  v21.super_class = SUControllerConfig;
  v4 = [(SUControllerConfig *)&v21 init];
  v5 = v4;
  if (v4)
  {
    v4->_internalDefaultsAsExternal = [(SUControllerConfig *)v4 _loadBooleanFromDefaults:@"SUInternalDefaultsAsExternal" usingDefault:0 isStoredInverted:0];
    v5->_useSUCore = 1;
    v5->_vpnOnDemandAsInternal = [(SUControllerConfig *)v5 _loadBooleanFromDefaults:@"SUVPNOnDemandAsInternal" usingDefault:0 isStoredInverted:0];
    *&v5->_performAutoScan = 257;
    v5->_performAutoInstall = [(SUControllerConfig *)v5 _loadBooleanFromDefaults:@"SUDisableAutoInstall" usingDefault:0 isStoredInverted:1];
    v5->_autoAcceptTermsAndConditions = [(SUControllerConfig *)v5 _loadBooleanFromDefaults:@"SUAutoAcceptTermsAndConditions" usingDefault:updateRequiresDocAsset() ^ 1 isStoredInverted:0];
    v5->_autoActivityCheckPeriod = [(SUControllerConfig *)v5 _loadIntegerFromDefaults:@"SUAutoActivityCheckPeriod" releaseType:a3 externalDefault:10080 internalDefault:240 withLimit:44640];
    v5->_autoInstallForceMaxWait = [(SUControllerConfig *)v5 _loadIntegerFromDefaults:@"SUAutoInstallForceMaxWait" usingDefault:20 withLimit:1440];
    v5->_autoInstallWindowBeginHour = [(SUControllerConfig *)v5 _loadIntegerFromDefaults:@"SUAutoInstallWindowBeginHour" usingDefault:2 withLimit:23];
    v5->_autoInstallWindowBeginMinute = [(SUControllerConfig *)v5 _loadIntegerFromDefaults:@"SUAutoInstallWindowBeginMinute" usingDefault:0 withLimit:59];
    v5->_autoInstallWindowEndHour = [(SUControllerConfig *)v5 _loadIntegerFromDefaults:@"SUAutoInstallWindowEndHour" usingDefault:4 withLimit:23];
    v5->_autoInstallWindowEndMinute = [(SUControllerConfig *)v5 _loadIntegerFromDefaults:@"SUAutoInstallWindowEndMinute" usingDefault:0 withLimit:59];
    v5->_downloadDocAsset = [(SUControllerConfig *)v5 _loadBooleanFromDefaults:@"SUDownloadDocAsset" usingDefault:0 isStoredInverted:0];
    v5->_ignoreRamping = [(SUControllerConfig *)v5 _loadBooleanFromDefaults:@"SUIgnoreRamping" usingDefault:0 isStoredInverted:0];
    v5->_supervisedMDM = [(SUControllerConfig *)v5 _loadBooleanFromDefaults:@"supervisedMDM" usingDefault:0 isStoredInverted:0];
    v6 = [(SUControllerConfig *)v5 _copyStringFromDefaults:@"requestedPMV" usingDefault:0];
    requestedPMV = v5->_requestedPMV;
    v5->_requestedPMV = v6;

    v5->_delayPeriod = [(SUControllerConfig *)v5 _loadIntegerFromDefaults:@"delayPeriod" usingDefault:0 withLimit:90];
    v8 = [(SUControllerConfig *)v5 _copyStringFromDefaults:@"installPhaseOSBackgroundImagePath" usingDefault:0];
    installPhaseOSBackgroundImagePath = v5->_installPhaseOSBackgroundImagePath;
    v5->_installPhaseOSBackgroundImagePath = v8;

    v5->_restrictToFullReplacement = [(SUControllerConfig *)v5 _loadBooleanFromDefaults:@"SURestrictToFullReplacement" usingDefault:0 isStoredInverted:0];
    v5->_allowSameVersionUpdates = [(SUControllerConfig *)v5 _loadBooleanFromDefaults:@"SUAllowSameVersionUpdates" usingDefault:0 isStoredInverted:0];
    v10 = [(SUControllerConfig *)v5 _copyStringFromDefaults:@"SUUpdateMetricContext" usingDefault:0];
    updateMetricContext = v5->_updateMetricContext;
    v5->_updateMetricContext = v10;

    v12 = [(SUControllerConfig *)v5 _copyStringFromDefaults:@"SUPrerequisiteBuildVersion" usingDefault:0];
    prerequisiteBuildVersion = v5->_prerequisiteBuildVersion;
    v5->_prerequisiteBuildVersion = v12;

    v14 = [(SUControllerConfig *)v5 _copyStringFromDefaults:@"SUPrerequisiteProductVersion" usingDefault:0];
    prerequisiteProductVersion = v5->_prerequisiteProductVersion;
    v5->_prerequisiteProductVersion = v14;

    v16 = [(SUControllerConfig *)v5 _copyStringFromDefaults:@"SUAsReleaseType" usingDefault:0];
    asReleaseType = v5->_asReleaseType;
    v5->_asReleaseType = v16;

    v18 = [(SUControllerConfig *)v5 _copyStringFromDefaults:@"SUSimulatorCommandsFile" usingDefault:0];
    simulatorCommandsFile = v5->_simulatorCommandsFile;
    v5->_simulatorCommandsFile = v18;

    v5->_useSpecifiedInstallWindow = [(SUControllerConfig *)v5 _loadBooleanFromDefaults:@"SUUseSpecifiedInstallWindow" usingDefault:0 isStoredInverted:0];
    v5->_expiredSpecifiedAsExpired = [(SUControllerConfig *)v5 _loadBooleanFromDefaults:@"SUExpiredSpecifiedAsExpired" usingDefault:0 isStoredInverted:0];
    v5->_hideIndicationMayReboot = [(SUControllerConfig *)v5 _loadBooleanFromDefaults:@"SUHideIndicationMayReboot" usingDefault:0 isStoredInverted:0];
    v5->_requirePrepareSize = [(SUControllerConfig *)v5 _loadBooleanFromDefaults:@"SURequirePrepareSize" usingDefault:0 isStoredInverted:0];
    v5->_installWindowAsDeltas = [(SUControllerConfig *)v5 _loadBooleanFromDefaults:@"SUInstallWindowAsDeltas" usingDefault:0 isStoredInverted:0];
    v5->_maxOptionalPSUSDownloadSize = [(SUControllerConfig *)v5 _loadIntegerFromDefaults:@"SUMaxOptionalPSUSDownloadSize" usingDefault:-1];
  }

  return v5;
}

- (SUControllerConfig)initWithCoder:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = SUControllerConfig;
  v5 = [(SUControllerConfig *)&v23 init];
  v6 = v5;
  if (v5)
  {
    v7 = 1;
    v5->_useSUCore = 1;
    v5->_vpnOnDemandAsInternal = [v4 decodeBoolForKey:@"vpnOnDemandAsInternal"];
    if ([(SUControllerConfig *)v6 _allowedToTurnOffAutoScan])
    {
      v7 = [v4 decodeBoolForKey:@"performAutoScan"];
    }

    v6->_performAutoScan = v7;
    v6->_performAutoDownloadAndPrepare = [v4 decodeBoolForKey:@"performAutoDownloadAndPrepare"];
    v6->_performAutoInstall = [v4 decodeBoolForKey:@"performAutoInstall"];
    v6->_autoAcceptTermsAndConditions = [v4 decodeBoolForKey:@"autoAcceptTermsAndConditions"];
    v6->_autoActivityCheckPeriod = [(SUControllerConfig *)v6 _decodeInteger:v4 forKey:@"autoActivityCheckPeriod" withLimit:44640];
    v6->_autoInstallForceMaxWait = [(SUControllerConfig *)v6 _decodeInteger:v4 forKey:@"autoInstallForceMaxWait" withLimit:1440];
    v6->_autoInstallWindowBeginHour = [(SUControllerConfig *)v6 _decodeInteger:v4 forKey:@"autoInstallWindowBeginHour" withLimit:23];
    v6->_autoInstallWindowBeginMinute = [(SUControllerConfig *)v6 _decodeInteger:v4 forKey:@"autoInstallWindowBeginMinute" withLimit:59];
    v6->_autoInstallWindowEndHour = [(SUControllerConfig *)v6 _decodeInteger:v4 forKey:@"autoInstallWindowEndHour" withLimit:23];
    v6->_autoInstallWindowEndMinute = [(SUControllerConfig *)v6 _decodeInteger:v4 forKey:@"autoInstallWindowEndMinute" withLimit:59];
    v6->_downloadDocAsset = [v4 decodeBoolForKey:@"downloadDocAsset"];
    v6->_ignoreRamping = [v4 decodeBoolForKey:@"ignoreRamping"];
    v6->_supervisedMDM = [v4 decodeBoolForKey:@"supervisedMDM"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestedPMV"];
    requestedPMV = v6->_requestedPMV;
    v6->_requestedPMV = v8;

    v6->_delayPeriod = [(SUControllerConfig *)v6 _decodeInteger:v4 forKey:@"delayPeriod" withLimit:90];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installPhaseOSBackgroundImagePath"];
    installPhaseOSBackgroundImagePath = v6->_installPhaseOSBackgroundImagePath;
    v6->_installPhaseOSBackgroundImagePath = v10;

    v6->_restrictToFullReplacement = [v4 decodeBoolForKey:@"restrictToFullReplacement"];
    v6->_allowSameVersionUpdates = [v4 decodeBoolForKey:@"allowSameVersionUpdates"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"updateMetricContext"];
    updateMetricContext = v6->_updateMetricContext;
    v6->_updateMetricContext = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prerequisiteBuildVersion"];
    prerequisiteBuildVersion = v6->_prerequisiteBuildVersion;
    v6->_prerequisiteBuildVersion = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prerequisiteProductVersion"];
    prerequisiteProductVersion = v6->_prerequisiteProductVersion;
    v6->_prerequisiteProductVersion = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"asReleaseType"];
    asReleaseType = v6->_asReleaseType;
    v6->_asReleaseType = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"simulatorCommandsFile"];
    simulatorCommandsFile = v6->_simulatorCommandsFile;
    v6->_simulatorCommandsFile = v20;

    v6->_useSpecifiedInstallWindow = [v4 decodeBoolForKey:@"useSpecifiedInstallWindow"];
    v6->_expiredSpecifiedAsExpired = [v4 decodeBoolForKey:@"expiredSpecifiedAsExpired"];
    v6->_hideIndicationMayReboot = [v4 decodeBoolForKey:@"hideIndicationMayReboot"];
    v6->_internalDefaultsAsExternal = [v4 decodeBoolForKey:@"internalDefaultsAsExternal"];
    v6->_requirePrepareSize = [v4 decodeBoolForKey:@"requirePrepareSize"];
    v6->_installWindowAsDeltas = [v4 decodeBoolForKey:@"installWindowAsDeltas"];
    v6->_maxOptionalPSUSDownloadSize = [v4 decodeIntegerForKey:@"maxOptionalPSUSDownloadSize"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  [v11 encodeBool:-[SUControllerConfig useSUCore](self forKey:{"useSUCore"), @"useSUCore"}];
  [v11 encodeBool:-[SUControllerConfig vpnOnDemandAsInternal](self forKey:{"vpnOnDemandAsInternal"), @"vpnOnDemandAsInternal"}];
  [v11 encodeBool:-[SUControllerConfig performAutoScan](self forKey:{"performAutoScan"), @"performAutoScan"}];
  [v11 encodeBool:-[SUControllerConfig performAutoDownloadAndPrepare](self forKey:{"performAutoDownloadAndPrepare"), @"performAutoDownloadAndPrepare"}];
  [v11 encodeBool:-[SUControllerConfig performAutoInstall](self forKey:{"performAutoInstall"), @"performAutoInstall"}];
  [v11 encodeBool:-[SUControllerConfig autoAcceptTermsAndConditions](self forKey:{"autoAcceptTermsAndConditions"), @"autoAcceptTermsAndConditions"}];
  [v11 encodeInteger:-[SUControllerConfig autoActivityCheckPeriod](self forKey:{"autoActivityCheckPeriod"), @"autoActivityCheckPeriod"}];
  [v11 encodeInteger:-[SUControllerConfig autoInstallForceMaxWait](self forKey:{"autoInstallForceMaxWait"), @"autoInstallForceMaxWait"}];
  [v11 encodeInteger:-[SUControllerConfig autoInstallWindowBeginHour](self forKey:{"autoInstallWindowBeginHour"), @"autoInstallWindowBeginHour"}];
  [v11 encodeInteger:-[SUControllerConfig autoInstallWindowBeginMinute](self forKey:{"autoInstallWindowBeginMinute"), @"autoInstallWindowBeginMinute"}];
  [v11 encodeInteger:-[SUControllerConfig autoInstallWindowEndHour](self forKey:{"autoInstallWindowEndHour"), @"autoInstallWindowEndHour"}];
  [v11 encodeInteger:-[SUControllerConfig autoInstallWindowEndMinute](self forKey:{"autoInstallWindowEndMinute"), @"autoInstallWindowEndMinute"}];
  [v11 encodeBool:-[SUControllerConfig downloadDocAsset](self forKey:{"downloadDocAsset"), @"downloadDocAsset"}];
  [v11 encodeBool:-[SUControllerConfig ignoreRamping](self forKey:{"ignoreRamping"), @"ignoreRamping"}];
  [v11 encodeBool:-[SUControllerConfig supervisedMDM](self forKey:{"supervisedMDM"), @"supervisedMDM"}];
  v4 = [(SUControllerConfig *)self requestedPMV];
  [v11 encodeObject:v4 forKey:@"requestedPMV"];

  [v11 encodeInteger:-[SUControllerConfig delayPeriod](self forKey:{"delayPeriod"), @"delayPeriod"}];
  v5 = [(SUControllerConfig *)self installPhaseOSBackgroundImagePath];
  [v11 encodeObject:v5 forKey:@"installPhaseOSBackgroundImagePath"];

  [v11 encodeBool:-[SUControllerConfig restrictToFullReplacement](self forKey:{"restrictToFullReplacement"), @"restrictToFullReplacement"}];
  [v11 encodeBool:-[SUControllerConfig allowSameVersionUpdates](self forKey:{"allowSameVersionUpdates"), @"allowSameVersionUpdates"}];
  v6 = [(SUControllerConfig *)self updateMetricContext];
  [v11 encodeObject:v6 forKey:@"updateMetricContext"];

  v7 = [(SUControllerConfig *)self prerequisiteBuildVersion];
  [v11 encodeObject:v7 forKey:@"prerequisiteBuildVersion"];

  v8 = [(SUControllerConfig *)self prerequisiteProductVersion];
  [v11 encodeObject:v8 forKey:@"prerequisiteProductVersion"];

  v9 = [(SUControllerConfig *)self asReleaseType];
  [v11 encodeObject:v9 forKey:@"asReleaseType"];

  v10 = [(SUControllerConfig *)self simulatorCommandsFile];
  [v11 encodeObject:v10 forKey:@"simulatorCommandsFile"];

  [v11 encodeBool:-[SUControllerConfig useSpecifiedInstallWindow](self forKey:{"useSpecifiedInstallWindow"), @"useSpecifiedInstallWindow"}];
  [v11 encodeBool:-[SUControllerConfig expiredSpecifiedAsExpired](self forKey:{"expiredSpecifiedAsExpired"), @"expiredSpecifiedAsExpired"}];
  [v11 encodeBool:-[SUControllerConfig hideIndicationMayReboot](self forKey:{"hideIndicationMayReboot"), @"hideIndicationMayReboot"}];
  [v11 encodeBool:-[SUControllerConfig internalDefaultsAsExternal](self forKey:{"internalDefaultsAsExternal"), @"internalDefaultsAsExternal"}];
  [v11 encodeBool:-[SUControllerConfig requirePrepareSize](self forKey:{"requirePrepareSize"), @"requirePrepareSize"}];
  [v11 encodeBool:-[SUControllerConfig installWindowAsDeltas](self forKey:{"installWindowAsDeltas"), @"installWindowAsDeltas"}];
  [v11 encodeInteger:-[SUControllerConfig maxOptionalPSUSDownloadSize](self forKey:{"maxOptionalPSUSDownloadSize"), @"maxOptionalPSUSDownloadSize"}];
}

- (id)copy
{
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

- (void)modify:(id)a3 usingMask:(int64_t)a4
{
  v6 = a3;
  v7 = v6;
  v35 = v6;
  if ((a4 & 0x10000) != 0)
  {
    v8 = [v6 useSUCore];
    v7 = v35;
    if ((v8 & 1) == 0)
    {
      v9 = [MEMORY[0x277D64428] sharedDiag];
      v10 = objc_alloc(MEMORY[0x277CCACA8]);
      v11 = [v35 useSUCore];
      v12 = @"NO";
      if (v11)
      {
        v12 = @"YES";
      }

      v13 = [v10 initWithFormat:@"attempt to set %@ to %@ (only supported value is %@ [as of 4.2.1])", @"useSUCore", v12, @"YES"];
      [v9 trackAnomaly:@"[CONFIG]" forReason:v13 withResult:8102 withError:0];

      v7 = v35;
    }
  }

  if ((a4 & 0x8000000) != 0)
  {
    -[SUControllerConfig setVpnOnDemandAsInternal:](self, "setVpnOnDemandAsInternal:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUVPNOnDemandAsInternal", [v7 vpnOnDemandAsInternal], 0));
    v7 = v35;
  }

  if (a4)
  {
    v14 = [(SUControllerConfig *)self _allowedToTurnOffAutoScan];
    v15 = [v35 performAutoScan];
    if (v14)
    {
      [(SUControllerConfig *)self setPerformAutoScan:[(SUControllerConfig *)self _storeBooleanToDefaults:@"SUDisableAutoScan" toValue:v15 isStoredInverted:1]];
    }

    else
    {
      v7 = v35;
      if (v15)
      {
        goto LABEL_16;
      }

      v16 = [MEMORY[0x277D64428] sharedDiag];
      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      v18 = [v35 performAutoScan];
      v19 = @"NO";
      if (v18)
      {
        v19 = @"YES";
      }

      v20 = [v17 initWithFormat:@"attempt to set %@ to %@ (only supported value is %@ [as of 4.2.1])", @"performAutoScan", v19, @"YES"];
      [v16 trackAnomaly:@"[CONFIG]" forReason:v20 withResult:8102 withError:0];
    }

    v7 = v35;
  }

LABEL_16:
  if ((a4 & 2) != 0)
  {
    -[SUControllerConfig setPerformAutoDownloadAndPrepare:](self, "setPerformAutoDownloadAndPrepare:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUDisableAutoDownloadAndPrepare", [v7 performAutoDownloadAndPrepare], 1));
    v7 = v35;
    if ((a4 & 4) == 0)
    {
LABEL_18:
      if ((a4 & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_51;
    }
  }

  else if ((a4 & 4) == 0)
  {
    goto LABEL_18;
  }

  -[SUControllerConfig setPerformAutoInstall:](self, "setPerformAutoInstall:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUDisableAutoInstall", [v7 performAutoInstall], 1));
  v7 = v35;
  if ((a4 & 8) == 0)
  {
LABEL_19:
    if ((a4 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  -[SUControllerConfig setAutoAcceptTermsAndConditions:](self, "setAutoAcceptTermsAndConditions:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUAutoAcceptTermsAndConditions", [v7 autoAcceptTermsAndConditions], 0));
  v7 = v35;
  if ((a4 & 0x10) == 0)
  {
LABEL_20:
    if ((a4 & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  -[SUControllerConfig setAutoActivityCheckPeriod:](self, "setAutoActivityCheckPeriod:", -[SUControllerConfig _storeIntegerToDefaults:toValue:](self, "_storeIntegerToDefaults:toValue:", @"SUAutoActivityCheckPeriod", [v7 autoActivityCheckPeriod]));
  v7 = v35;
  if ((a4 & 0x2000) == 0)
  {
LABEL_21:
    if ((a4 & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  -[SUControllerConfig setAutoInstallForceMaxWait:](self, "setAutoInstallForceMaxWait:", -[SUControllerConfig _storeIntegerToDefaults:toValue:](self, "_storeIntegerToDefaults:toValue:", @"SUAutoInstallForceMaxWait", [v7 autoInstallForceMaxWait]));
  v7 = v35;
  if ((a4 & 0x80) == 0)
  {
LABEL_22:
    if ((a4 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  -[SUControllerConfig setAutoInstallWindowBeginHour:](self, "setAutoInstallWindowBeginHour:", -[SUControllerConfig _storeIntegerToDefaults:toValue:](self, "_storeIntegerToDefaults:toValue:", @"SUAutoInstallWindowBeginHour", [v7 autoInstallWindowBeginHour]));
  v7 = v35;
  if ((a4 & 0x100) == 0)
  {
LABEL_23:
    if ((a4 & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  -[SUControllerConfig setAutoInstallWindowBeginMinute:](self, "setAutoInstallWindowBeginMinute:", -[SUControllerConfig _storeIntegerToDefaults:toValue:](self, "_storeIntegerToDefaults:toValue:", @"SUAutoInstallWindowBeginMinute", [v7 autoInstallWindowBeginMinute]));
  v7 = v35;
  if ((a4 & 0x200) == 0)
  {
LABEL_24:
    if ((a4 & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  -[SUControllerConfig setAutoInstallWindowEndHour:](self, "setAutoInstallWindowEndHour:", -[SUControllerConfig _storeIntegerToDefaults:toValue:](self, "_storeIntegerToDefaults:toValue:", @"SUAutoInstallWindowEndHour", [v7 autoInstallWindowEndHour]));
  v7 = v35;
  if ((a4 & 0x400) == 0)
  {
LABEL_25:
    if ((a4 & 0x400000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  -[SUControllerConfig setAutoInstallWindowEndMinute:](self, "setAutoInstallWindowEndMinute:", -[SUControllerConfig _storeIntegerToDefaults:toValue:](self, "_storeIntegerToDefaults:toValue:", @"SUAutoInstallWindowEndMinute", [v7 autoInstallWindowEndMinute]));
  v7 = v35;
  if ((a4 & 0x400000) == 0)
  {
LABEL_26:
    if ((a4 & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  -[SUControllerConfig setDownloadDocAsset:](self, "setDownloadDocAsset:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUDownloadDocAsset", [v7 downloadDocAsset], 0));
  v7 = v35;
  if ((a4 & 0x800000) == 0)
  {
LABEL_27:
    if ((a4 & 0x10000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  -[SUControllerConfig setIgnoreRamping:](self, "setIgnoreRamping:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUIgnoreRamping", [v7 ignoreRamping], 0));
  v7 = v35;
  if ((a4 & 0x10000000) == 0)
  {
LABEL_28:
    if ((a4 & 0x20000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  -[SUControllerConfig setSupervisedMDM:](self, "setSupervisedMDM:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"supervisedMDM", [v7 supervisedMDM], 0));
  v7 = v35;
  if ((a4 & 0x20000000) == 0)
  {
LABEL_29:
    if ((a4 & 0x40000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  v21 = [v7 requestedPMV];
  v22 = [(SUControllerConfig *)self _storeStringToDefaults:@"requestedPMV" toValue:v21];
  [(SUControllerConfig *)self setRequestedPMV:v22];

  v7 = v35;
  if ((a4 & 0x40000000) == 0)
  {
LABEL_30:
    if ((a4 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  -[SUControllerConfig setDelayPeriod:](self, "setDelayPeriod:", -[SUControllerConfig _storeIntegerToDefaults:toValue:](self, "_storeIntegerToDefaults:toValue:", @"delayPeriod", [v7 delayPeriod]));
  v7 = v35;
  if ((a4 & 0x80000000) == 0)
  {
LABEL_31:
    if ((a4 & 0x20) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_63:
  v23 = [v7 installPhaseOSBackgroundImagePath];
  v24 = [(SUControllerConfig *)self _storeStringToDefaults:@"installPhaseOSBackgroundImagePath" toValue:v23];
  [(SUControllerConfig *)self setInstallPhaseOSBackgroundImagePath:v24];

  v7 = v35;
  if ((a4 & 0x20) == 0)
  {
LABEL_32:
    if ((a4 & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_65;
  }

LABEL_64:
  -[SUControllerConfig setRestrictToFullReplacement:](self, "setRestrictToFullReplacement:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SURestrictToFullReplacement", [v7 restrictToFullReplacement], 0));
  v7 = v35;
  if ((a4 & 0x40) == 0)
  {
LABEL_33:
    if ((a4 & 0x4000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_66;
  }

LABEL_65:
  -[SUControllerConfig setAllowSameVersionUpdates:](self, "setAllowSameVersionUpdates:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUAllowSameVersionUpdates", [v7 allowSameVersionUpdates], 0));
  v7 = v35;
  if ((a4 & 0x4000000) == 0)
  {
LABEL_34:
    if ((a4 & 0x20000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_67;
  }

LABEL_66:
  v25 = [v7 updateMetricContext];
  v26 = [(SUControllerConfig *)self _storeStringToDefaults:@"SUUpdateMetricContext" toValue:v25];
  [(SUControllerConfig *)self setUpdateMetricContext:v26];

  v7 = v35;
  if ((a4 & 0x20000) == 0)
  {
LABEL_35:
    if ((a4 & 0x40000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_68;
  }

LABEL_67:
  v27 = [v7 prerequisiteBuildVersion];
  v28 = [(SUControllerConfig *)self _storeStringToDefaults:@"SUPrerequisiteBuildVersion" toValue:v27];
  [(SUControllerConfig *)self setPrerequisiteBuildVersion:v28];

  v7 = v35;
  if ((a4 & 0x40000) == 0)
  {
LABEL_36:
    if ((a4 & 0x80000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_69;
  }

LABEL_68:
  v29 = [v7 prerequisiteProductVersion];
  v30 = [(SUControllerConfig *)self _storeStringToDefaults:@"SUPrerequisiteProductVersion" toValue:v29];
  [(SUControllerConfig *)self setPrerequisiteProductVersion:v30];

  v7 = v35;
  if ((a4 & 0x80000) == 0)
  {
LABEL_37:
    if ((a4 & 0x200000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_70;
  }

LABEL_69:
  v31 = [v7 asReleaseType];
  v32 = [(SUControllerConfig *)self _storeStringToDefaults:@"SUAsReleaseType" toValue:v31];
  [(SUControllerConfig *)self setAsReleaseType:v32];

  v7 = v35;
  if ((a4 & 0x200000) == 0)
  {
LABEL_38:
    if ((a4 & 0x800) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_71;
  }

LABEL_70:
  v33 = [v7 simulatorCommandsFile];
  v34 = [(SUControllerConfig *)self _storeStringToDefaults:@"SUSimulatorCommandsFile" toValue:v33];
  [(SUControllerConfig *)self setSimulatorCommandsFile:v34];

  v7 = v35;
  if ((a4 & 0x800) == 0)
  {
LABEL_39:
    if ((a4 & 0x100000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_72;
  }

LABEL_71:
  -[SUControllerConfig setUseSpecifiedInstallWindow:](self, "setUseSpecifiedInstallWindow:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUUseSpecifiedInstallWindow", [v7 useSpecifiedInstallWindow], 0));
  v7 = v35;
  if ((a4 & 0x100000) == 0)
  {
LABEL_40:
    if ((a4 & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_73;
  }

LABEL_72:
  -[SUControllerConfig setExpiredSpecifiedAsExpired:](self, "setExpiredSpecifiedAsExpired:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUExpiredSpecifiedAsExpired", [v7 expiredSpecifiedAsExpired], 0));
  v7 = v35;
  if ((a4 & 0x1000) == 0)
  {
LABEL_41:
    if ((a4 & 0x2000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_74;
  }

LABEL_73:
  -[SUControllerConfig setHideIndicationMayReboot:](self, "setHideIndicationMayReboot:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUHideIndicationMayReboot", [v7 hideIndicationMayReboot], 0));
  v7 = v35;
  if ((a4 & 0x2000000) == 0)
  {
LABEL_42:
    if ((a4 & 0x4000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_75;
  }

LABEL_74:
  -[SUControllerConfig setInternalDefaultsAsExternal:](self, "setInternalDefaultsAsExternal:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUInternalDefaultsAsExternal", [v7 internalDefaultsAsExternal], 0));
  v7 = v35;
  if ((a4 & 0x4000) == 0)
  {
LABEL_43:
    if ((a4 & 0x8000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_76;
  }

LABEL_75:
  -[SUControllerConfig setRequirePrepareSize:](self, "setRequirePrepareSize:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SURequirePrepareSize", [v7 requirePrepareSize], 0));
  v7 = v35;
  if ((a4 & 0x8000) == 0)
  {
LABEL_44:
    if ((a4 & 0x100000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_76:
  -[SUControllerConfig setInstallWindowAsDeltas:](self, "setInstallWindowAsDeltas:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUInstallWindowAsDeltas", [v7 installWindowAsDeltas], 0));
  v7 = v35;
  if ((a4 & 0x100000000) != 0)
  {
LABEL_45:
    -[SUControllerConfig setMaxOptionalPSUSDownloadSize:](self, "setMaxOptionalPSUSDownloadSize:", -[SUControllerConfig _storeIntegerToDefaults:toValue:](self, "_storeIntegerToDefaults:toValue:", @"SUMaxOptionalPSUSDownloadSize", [v7 maxOptionalPSUSDownloadSize]));
  }

LABEL_46:

  MEMORY[0x2821F96F8]();
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(SUControllerConfig *)self useSUCore];
  if (v5 != [v4 useSUCore])
  {
    goto LABEL_16;
  }

  v6 = [(SUControllerConfig *)self vpnOnDemandAsInternal];
  if (v6 != [v4 vpnOnDemandAsInternal])
  {
    goto LABEL_16;
  }

  v7 = [(SUControllerConfig *)self performAutoScan];
  if (v7 != [v4 performAutoScan])
  {
    goto LABEL_16;
  }

  v8 = [(SUControllerConfig *)self performAutoDownloadAndPrepare];
  if (v8 != [v4 performAutoDownloadAndPrepare])
  {
    goto LABEL_16;
  }

  v9 = [(SUControllerConfig *)self performAutoInstall];
  if (v9 != [v4 performAutoInstall])
  {
    goto LABEL_16;
  }

  v10 = [(SUControllerConfig *)self autoAcceptTermsAndConditions];
  if (v10 != [v4 autoAcceptTermsAndConditions])
  {
    goto LABEL_16;
  }

  v11 = [(SUControllerConfig *)self autoActivityCheckPeriod];
  if (v11 != [v4 autoActivityCheckPeriod])
  {
    goto LABEL_16;
  }

  v12 = [(SUControllerConfig *)self autoInstallForceMaxWait];
  if (v12 != [v4 autoInstallForceMaxWait])
  {
    goto LABEL_16;
  }

  v13 = [(SUControllerConfig *)self autoInstallWindowBeginHour];
  if (v13 == [v4 autoInstallWindowBeginHour] && (v14 = -[SUControllerConfig autoInstallWindowBeginMinute](self, "autoInstallWindowBeginMinute"), v14 == objc_msgSend(v4, "autoInstallWindowBeginMinute")) && (v15 = -[SUControllerConfig autoInstallWindowEndHour](self, "autoInstallWindowEndHour"), v15 == objc_msgSend(v4, "autoInstallWindowEndHour")) && (v16 = -[SUControllerConfig autoInstallWindowEndMinute](self, "autoInstallWindowEndMinute"), v16 == objc_msgSend(v4, "autoInstallWindowEndMinute")) && (v17 = -[SUControllerConfig downloadDocAsset](self, "downloadDocAsset"), v17 == objc_msgSend(v4, "downloadDocAsset")) && (v18 = -[SUControllerConfig ignoreRamping](self, "ignoreRamping"), v18 == objc_msgSend(v4, "ignoreRamping")) && (v19 = -[SUControllerConfig supervisedMDM](self, "supervisedMDM"), v19 == objc_msgSend(v4, "supervisedMDM")))
  {
    v22 = [(SUControllerConfig *)self requestedPMV];
    v23 = [v4 requestedPMV];
    if (doStringsMatch(v22, v23) && (v24 = -[SUControllerConfig delayPeriod](self, "delayPeriod"), v24 == [v4 delayPeriod]))
    {
      v25 = [(SUControllerConfig *)self installPhaseOSBackgroundImagePath];
      v26 = [v4 installPhaseOSBackgroundImagePath];
      if (!doStringsMatch(v25, v26))
      {
        goto LABEL_36;
      }

      v27 = [(SUControllerConfig *)self restrictToFullReplacement];
      if (v27 != [v4 restrictToFullReplacement])
      {
        goto LABEL_36;
      }

      v28 = [(SUControllerConfig *)self allowSameVersionUpdates];
      if (v28 != [v4 allowSameVersionUpdates])
      {
        goto LABEL_36;
      }

      v29 = [(SUControllerConfig *)self useSpecifiedInstallWindow];
      if (v29 == [v4 useSpecifiedInstallWindow] && (v30 = -[SUControllerConfig expiredSpecifiedAsExpired](self, "expiredSpecifiedAsExpired"), v30 == objc_msgSend(v4, "expiredSpecifiedAsExpired")) && (v31 = -[SUControllerConfig hideIndicationMayReboot](self, "hideIndicationMayReboot"), v31 == objc_msgSend(v4, "hideIndicationMayReboot")) && (v32 = -[SUControllerConfig internalDefaultsAsExternal](self, "internalDefaultsAsExternal"), v32 == objc_msgSend(v4, "internalDefaultsAsExternal")) && (v33 = -[SUControllerConfig requirePrepareSize](self, "requirePrepareSize"), v33 == objc_msgSend(v4, "requirePrepareSize")) && (v34 = -[SUControllerConfig installWindowAsDeltas](self, "installWindowAsDeltas"), v34 == objc_msgSend(v4, "installWindowAsDeltas")) && (v35 = -[SUControllerConfig maxOptionalPSUSDownloadSize](self, "maxOptionalPSUSDownloadSize"), v35 == objc_msgSend(v4, "maxOptionalPSUSDownloadSize")))
      {
        v36 = [(SUControllerConfig *)self updateMetricContext];
        v37 = [v4 updateMetricContext];
        if (doStringsMatch(v36, v37))
        {
          v38 = [(SUControllerConfig *)self prerequisiteBuildVersion];
          v39 = [v4 prerequisiteBuildVersion];
          v48 = v38;
          if (doStringsMatch(v38, v39))
          {
            v40 = [(SUControllerConfig *)self prerequisiteProductVersion];
            v46 = [v4 prerequisiteProductVersion];
            v47 = v40;
            if (doStringsMatch(v40, v46))
            {
              v41 = [(SUControllerConfig *)self asReleaseType];
              v44 = [v4 asReleaseType];
              v45 = v41;
              if (doStringsMatch(v41, v44))
              {
                v43 = [(SUControllerConfig *)self simulatorCommandsFile];
                v42 = [v4 simulatorCommandsFile];
                v20 = doStringsMatch(v43, v42);
              }

              else
              {
                v20 = 0;
              }
            }

            else
            {
              v20 = 0;
            }
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
LABEL_36:
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
LABEL_16:
    v20 = 0;
  }

  return v20;
}

- (id)description
{
  v60 = MEMORY[0x277CCACA8];
  v3 = @"NO";
  if ([(SUControllerConfig *)self useSUCore])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v58 = v4;
  if ([(SUControllerConfig *)self vpnOnDemandAsInternal])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v56 = v5;
  if ([(SUControllerConfig *)self performAutoScan])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  v55 = v6;
  if ([(SUControllerConfig *)self performAutoDownloadAndPrepare])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v54 = v7;
  if ([(SUControllerConfig *)self performAutoInstall])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v52 = v8;
  if ([(SUControllerConfig *)self autoAcceptTermsAndConditions])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v51 = v9;
  v49 = [(SUControllerConfig *)self autoActivityCheckPeriod];
  v48 = [(SUControllerConfig *)self autoInstallForceMaxWait];
  v47 = [(SUControllerConfig *)self autoInstallWindowBeginHour];
  v46 = [(SUControllerConfig *)self autoInstallWindowBeginMinute];
  v45 = [(SUControllerConfig *)self autoInstallWindowEndHour];
  v43 = [(SUControllerConfig *)self autoInstallWindowEndMinute];
  if ([(SUControllerConfig *)self downloadDocAsset])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v42 = v10;
  if ([(SUControllerConfig *)self ignoreRamping])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v40 = v11;
  if ([(SUControllerConfig *)self supervisedMDM])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v39 = v12;
  v13 = [(SUControllerConfig *)self requestedPMV];
  if (v13)
  {
    v14 = [(SUControllerConfig *)self requestedPMV];
  }

  else
  {
    v14 = @"(default)";
  }

  v36 = [(SUControllerConfig *)self delayPeriod];
  v15 = [(SUControllerConfig *)self installPhaseOSBackgroundImagePath];
  if (v15)
  {
    v50 = [(SUControllerConfig *)self installPhaseOSBackgroundImagePath];
  }

  else
  {
    v50 = @"(default)";
  }

  if ([(SUControllerConfig *)self restrictToFullReplacement])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  v33 = v16;
  if ([(SUControllerConfig *)self allowSameVersionUpdates])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v32 = v17;
  v44 = [(SUControllerConfig *)self updateMetricContext];
  if (v44)
  {
    v18 = [(SUControllerConfig *)self updateMetricContext];
  }

  else
  {
    v18 = @"(default)";
  }

  v19 = [(SUControllerConfig *)self prerequisiteBuildVersion];
  if (v19)
  {
    v20 = [(SUControllerConfig *)self prerequisiteBuildVersion];
  }

  else
  {
    v20 = @"(default)";
  }

  v35 = [(SUControllerConfig *)self prerequisiteProductVersion];
  v38 = v19;
  if (v35)
  {
    v21 = [(SUControllerConfig *)self prerequisiteProductVersion];
  }

  else
  {
    v21 = @"(default)";
  }

  v22 = [(SUControllerConfig *)self asReleaseType];
  v53 = v15;
  if (v22)
  {
    v61 = [(SUControllerConfig *)self asReleaseType];
  }

  else
  {
    v61 = @"(default)";
  }

  v23 = [(SUControllerConfig *)self simulatorCommandsFile];
  v59 = v13;
  v57 = v14;
  v41 = v18;
  v37 = v20;
  v34 = v21;
  if (v23)
  {
    v31 = [(SUControllerConfig *)self simulatorCommandsFile];
  }

  else
  {
    v31 = @"(default)";
  }

  if ([(SUControllerConfig *)self useSpecifiedInstallWindow])
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  if ([(SUControllerConfig *)self expiredSpecifiedAsExpired])
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  if ([(SUControllerConfig *)self hideIndicationMayReboot])
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  if ([(SUControllerConfig *)self internalDefaultsAsExternal])
  {
    v27 = @"YES";
  }

  else
  {
    v27 = @"NO";
  }

  if ([(SUControllerConfig *)self requirePrepareSize])
  {
    v28 = @"YES";
  }

  else
  {
    v28 = @"NO";
  }

  if ([(SUControllerConfig *)self installWindowAsDeltas])
  {
    v3 = @"YES";
  }

  v29 = [v60 stringWithFormat:@"\nuseSUCore: %@\nVPNOnDemandAsInternal: %@\nPerformAutoScan: %@\nPerformAutoDownloadAndPrepare: %@\nPerformAutoInstall: %@\nAutoAcceptTermsAndConditions: %@\nAutoActivityCheckPeriod: %d minutes\nAutoInstallForceMaxWait: %d minutes\nAutoInstallWindowBegin: %02d:%02d\nAutoInstallWindowEnd: %02d:%02d\nDownloadDocAsset: %@\nIgnoreRamping: %@\nSupervisedMDM: %@\nRequestedPMV: %@\nDelayPeriod: %d days\nInstallPhaseOSBackgroundImagePath: %@\nRestrictToFullReplacement: %@\nAllowSameVersionUpdates: %@\nUpdateMetricContext: %@\nPrerequisiteBuildVersion: %@\nPrerequisiteProductVersion: %@\nAsReleaseType: %@\nsimulatorCommandsFile: %@\nuseSpecifiedInstallWindow: %@\nexpiredSpecifiedAsExpired: %@\nHideIndicationMayReboot: %@\nInternalDefaultsAsExternal: %@\nRequirePrepareSize: %@\nInstallWindowAsDeltas: %@\nmaxOptionalPSUSDownloadSize: %ld", v58, v56, v55, v54, v52, v51, v49, v48, v47, v46, v45, v43, v42, v40, v39, v57, v36, v50, v33, v32, v41, v37, v34, v61, v31, v24, v25, v26, v27, v28, v3, -[SUControllerConfig maxOptionalPSUSDownloadSize](self, "maxOptionalPSUSDownloadSize")];
  if (v23)
  {
  }

  if (v22)
  {
  }

  if (v35)
  {
  }

  if (v38)
  {
  }

  if (v44)
  {
  }

  if (v53)
  {
  }

  if (v59)
  {
  }

  return v29;
}

- (id)summary
{
  v60 = MEMORY[0x277CCACA8];
  v3 = @"N";
  if ([(SUControllerConfig *)self useSUCore])
  {
    v4 = @"Y";
  }

  else
  {
    v4 = @"N";
  }

  v58 = v4;
  if ([(SUControllerConfig *)self vpnOnDemandAsInternal])
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  v56 = v5;
  if ([(SUControllerConfig *)self performAutoScan])
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  v55 = v6;
  if ([(SUControllerConfig *)self performAutoDownloadAndPrepare])
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v54 = v7;
  if ([(SUControllerConfig *)self performAutoInstall])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  v52 = v8;
  if ([(SUControllerConfig *)self autoAcceptTermsAndConditions])
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  v51 = v9;
  v49 = [(SUControllerConfig *)self autoActivityCheckPeriod];
  v48 = [(SUControllerConfig *)self autoInstallForceMaxWait];
  v47 = [(SUControllerConfig *)self autoInstallWindowBeginHour];
  v46 = [(SUControllerConfig *)self autoInstallWindowBeginMinute];
  v45 = [(SUControllerConfig *)self autoInstallWindowEndHour];
  v43 = [(SUControllerConfig *)self autoInstallWindowEndMinute];
  if ([(SUControllerConfig *)self downloadDocAsset])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  v42 = v10;
  if ([(SUControllerConfig *)self ignoreRamping])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  v40 = v11;
  if ([(SUControllerConfig *)self supervisedMDM])
  {
    v12 = @"Y";
  }

  else
  {
    v12 = @"N";
  }

  v39 = v12;
  v13 = [(SUControllerConfig *)self requestedPMV];
  if (v13)
  {
    v14 = [(SUControllerConfig *)self requestedPMV];
  }

  else
  {
    v14 = @"!";
  }

  v36 = [(SUControllerConfig *)self delayPeriod];
  v15 = [(SUControllerConfig *)self installPhaseOSBackgroundImagePath];
  if (v15)
  {
    v50 = [(SUControllerConfig *)self installPhaseOSBackgroundImagePath];
  }

  else
  {
    v50 = @"!";
  }

  if ([(SUControllerConfig *)self restrictToFullReplacement])
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v33 = v16;
  if ([(SUControllerConfig *)self allowSameVersionUpdates])
  {
    v17 = @"Y";
  }

  else
  {
    v17 = @"N";
  }

  v32 = v17;
  v44 = [(SUControllerConfig *)self updateMetricContext];
  if (v44)
  {
    v18 = [(SUControllerConfig *)self updateMetricContext];
  }

  else
  {
    v18 = @"!";
  }

  v19 = [(SUControllerConfig *)self prerequisiteBuildVersion];
  if (v19)
  {
    v20 = [(SUControllerConfig *)self prerequisiteBuildVersion];
  }

  else
  {
    v20 = @"!";
  }

  v35 = [(SUControllerConfig *)self prerequisiteProductVersion];
  v38 = v19;
  if (v35)
  {
    v21 = [(SUControllerConfig *)self prerequisiteProductVersion];
  }

  else
  {
    v21 = @"!";
  }

  v22 = [(SUControllerConfig *)self asReleaseType];
  v53 = v15;
  if (v22)
  {
    v61 = [(SUControllerConfig *)self asReleaseType];
  }

  else
  {
    v61 = @"!";
  }

  v23 = [(SUControllerConfig *)self simulatorCommandsFile];
  v59 = v13;
  v57 = v14;
  v41 = v18;
  v37 = v20;
  v34 = v21;
  if (v23)
  {
    v31 = [(SUControllerConfig *)self simulatorCommandsFile];
  }

  else
  {
    v31 = @"!";
  }

  if ([(SUControllerConfig *)self useSpecifiedInstallWindow])
  {
    v24 = @"Y";
  }

  else
  {
    v24 = @"N";
  }

  if ([(SUControllerConfig *)self expiredSpecifiedAsExpired])
  {
    v25 = @"Y";
  }

  else
  {
    v25 = @"N";
  }

  if ([(SUControllerConfig *)self hideIndicationMayReboot])
  {
    v26 = @"Y";
  }

  else
  {
    v26 = @"N";
  }

  if ([(SUControllerConfig *)self internalDefaultsAsExternal])
  {
    v27 = @"Y";
  }

  else
  {
    v27 = @"N";
  }

  if ([(SUControllerConfig *)self requirePrepareSize])
  {
    v28 = @"Y";
  }

  else
  {
    v28 = @"N";
  }

  if ([(SUControllerConfig *)self installWindowAsDeltas])
  {
    v3 = @"Y";
  }

  v29 = [v60 stringWithFormat:@"useSUCore:%@, vpnAsInternal:%@, autoScan:%@, autoDownload:%@, autoInstall:%@, autoAccept:%@, activityPeriod:%d, forceMaxWait:%d, windowBegin:%02d:%02d, windowEnd:%02d:%02d, downloadDoc:%@, ignoreRamp:%@, supervisedMDM:%@, requestedPMV:%@, delayPeriod:%d, installPhaseBGImgPath:%@, restrictToFull:%@, allowSame:%@, context:%@, asBuild:%@, asProduct:%@, asRelease:%@, simFile:%@, useInstallWindow:%@, expiredAsExpired:%@, hideMayReboot:%@, asExternal:%@, requirePrepSize:%@, windowDeltas:%@, maxOptionalPSUSDownloadSize:%ld", v58, v56, v55, v54, v52, v51, v49, v48, v47, v46, v45, v43, v42, v40, v39, v57, v36, v50, v33, v32, v41, v37, v34, v61, v31, v24, v25, v26, v27, v28, v3, -[SUControllerConfig maxOptionalPSUSDownloadSize](self, "maxOptionalPSUSDownloadSize")];
  if (v23)
  {
  }

  if (v22)
  {
  }

  if (v35)
  {
  }

  if (v38)
  {
  }

  if (v44)
  {
  }

  if (v53)
  {
  }

  if (v59)
  {
  }

  return v29;
}

- (id)changeSummary:(int64_t)a3
{
  if ((a3 & 0x8000000) != 0)
  {
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    if ([(SUControllerConfig *)self vpnOnDemandAsInternal])
    {
      v7 = @"Y";
    }

    else
    {
      v7 = @"N";
    }

    v8 = [v6 initWithFormat:@"|vpnAsInternal:%@", v7];
    v5 = [&stru_287B3F250 stringByAppendingString:v8];

    if ((a3 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = &stru_287B3F250;
    if ((a3 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  if ([(SUControllerConfig *)self _allowedToTurnOffAutoScan])
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    if ([(SUControllerConfig *)self performAutoScan])
    {
      v10 = @"Y";
    }

    else
    {
      v10 = @"N";
    }

    v11 = [v9 initWithFormat:@"|autoScan:%@", v10];
    v12 = [(__CFString *)v5 stringByAppendingString:v11];

    v5 = v12;
  }

LABEL_13:
  if ((a3 & 2) != 0)
  {
    v24 = objc_alloc(MEMORY[0x277CCACA8]);
    if ([(SUControllerConfig *)self performAutoDownloadAndPrepare])
    {
      v25 = @"Y";
    }

    else
    {
      v25 = @"N";
    }

    v26 = [v24 initWithFormat:@"|autoDownload:%@", v25];
    v27 = [(__CFString *)v5 stringByAppendingString:v26];

    v5 = v27;
    if ((a3 & 4) == 0)
    {
LABEL_15:
      if ((a3 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_55;
    }
  }

  else if ((a3 & 4) == 0)
  {
    goto LABEL_15;
  }

  v28 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([(SUControllerConfig *)self performAutoInstall])
  {
    v29 = @"Y";
  }

  else
  {
    v29 = @"N";
  }

  v30 = [v28 initWithFormat:@"|autoInstall:%@", v29];
  v31 = [(__CFString *)v5 stringByAppendingString:v30];

  v5 = v31;
  if ((a3 & 8) == 0)
  {
LABEL_16:
    if ((a3 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_59;
  }

LABEL_55:
  v32 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([(SUControllerConfig *)self autoAcceptTermsAndConditions])
  {
    v33 = @"Y";
  }

  else
  {
    v33 = @"N";
  }

  v34 = [v32 initWithFormat:@"|autoAccept:%@", v33];
  v35 = [(__CFString *)v5 stringByAppendingString:v34];

  v5 = v35;
  if ((a3 & 0x10) == 0)
  {
LABEL_17:
    if ((a3 & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_59:
  v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|activityPeriod:%d", -[SUControllerConfig autoActivityCheckPeriod](self, "autoActivityCheckPeriod")];
  v37 = [(__CFString *)v5 stringByAppendingString:v36];

  v5 = v37;
  if ((a3 & 0x2000) != 0)
  {
LABEL_18:
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|forceMaxWait:%d", -[SUControllerConfig autoInstallForceMaxWait](self, "autoInstallForceMaxWait")];
    v14 = [(__CFString *)v5 stringByAppendingString:v13];

    v5 = v14;
  }

LABEL_19:
  if ((a3 & 0x180) != 0)
  {
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|windowBegin:%02d:%02d", -[SUControllerConfig autoInstallWindowBeginHour](self, "autoInstallWindowBeginHour"), -[SUControllerConfig autoInstallWindowBeginMinute](self, "autoInstallWindowBeginMinute")];
    v16 = [(__CFString *)v5 stringByAppendingString:v15];

    v5 = v16;
  }

  if ((a3 & 0x600) != 0)
  {
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|windowEnd:%02d:%02d", -[SUControllerConfig autoInstallWindowEndHour](self, "autoInstallWindowEndHour"), -[SUControllerConfig autoInstallWindowEndMinute](self, "autoInstallWindowEndMinute")];
    v18 = [(__CFString *)v5 stringByAppendingString:v17];

    v5 = v18;
  }

  if ((a3 & 0x400000) != 0)
  {
    v38 = objc_alloc(MEMORY[0x277CCACA8]);
    if ([(SUControllerConfig *)self downloadDocAsset])
    {
      v39 = @"Y";
    }

    else
    {
      v39 = @"N";
    }

    v40 = [v38 initWithFormat:@"|downloadDoc:%@", v39];
    v41 = [(__CFString *)v5 stringByAppendingString:v40];

    v5 = v41;
    if ((a3 & 0x800000) == 0)
    {
LABEL_25:
      if ((a3 & 0x10000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_69;
    }
  }

  else if ((a3 & 0x800000) == 0)
  {
    goto LABEL_25;
  }

  v42 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([(SUControllerConfig *)self ignoreRamping])
  {
    v43 = @"Y";
  }

  else
  {
    v43 = @"N";
  }

  v44 = [v42 initWithFormat:@"|ignoreRamping:%@", v43];
  v45 = [(__CFString *)v5 stringByAppendingString:v44];

  v5 = v45;
  if ((a3 & 0x10000000) == 0)
  {
LABEL_26:
    if ((a3 & 0x20000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_73;
  }

LABEL_69:
  v46 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([(SUControllerConfig *)self supervisedMDM])
  {
    v47 = @"Y";
  }

  else
  {
    v47 = @"N";
  }

  v48 = [v46 initWithFormat:@"|supervisedMDM:%@", v47];
  v49 = [(__CFString *)v5 stringByAppendingString:v48];

  v5 = v49;
  if ((a3 & 0x20000000) == 0)
  {
LABEL_27:
    if ((a3 & 0x40000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_79;
  }

LABEL_73:
  v50 = objc_alloc(MEMORY[0x277CCACA8]);
  v51 = [(SUControllerConfig *)self requestedPMV];
  if (v51)
  {
    v52 = [(SUControllerConfig *)self requestedPMV];
  }

  else
  {
    v52 = @"!";
  }

  v53 = [v50 initWithFormat:@"|requestedPMV:%@", v52];
  v54 = [(__CFString *)v5 stringByAppendingString:v53];

  if (v51)
  {
  }

  v5 = v54;
  if ((a3 & 0x40000000) == 0)
  {
LABEL_28:
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_80;
  }

LABEL_79:
  v55 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|delayPeriod:%d", -[SUControllerConfig delayPeriod](self, "delayPeriod")];
  v56 = [(__CFString *)v5 stringByAppendingString:v55];

  v5 = v56;
  if ((a3 & 0x80000000) == 0)
  {
LABEL_29:
    if ((a3 & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_86;
  }

LABEL_80:
  v57 = objc_alloc(MEMORY[0x277CCACA8]);
  v58 = [(SUControllerConfig *)self installPhaseOSBackgroundImagePath];
  if (v58)
  {
    v59 = [(SUControllerConfig *)self installPhaseOSBackgroundImagePath];
  }

  else
  {
    v59 = @"!";
  }

  v60 = [v57 initWithFormat:@"|installPhaseOSBgImgPath:%@", v59];
  v61 = [(__CFString *)v5 stringByAppendingString:v60];

  if (v58)
  {
  }

  v5 = v61;
  if ((a3 & 0x20) == 0)
  {
LABEL_30:
    if ((a3 & 0x40) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_90;
  }

LABEL_86:
  v62 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([(SUControllerConfig *)self restrictToFullReplacement])
  {
    v63 = @"Y";
  }

  else
  {
    v63 = @"N";
  }

  v64 = [v62 initWithFormat:@"|restrictToFull:%@", v63];
  v65 = [(__CFString *)v5 stringByAppendingString:v64];

  v5 = v65;
  if ((a3 & 0x40) == 0)
  {
LABEL_31:
    if ((a3 & 0x4000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_94;
  }

LABEL_90:
  v66 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([(SUControllerConfig *)self allowSameVersionUpdates])
  {
    v67 = @"Y";
  }

  else
  {
    v67 = @"N";
  }

  v68 = [v66 initWithFormat:@"|allowSame:%@", v67];
  v69 = [(__CFString *)v5 stringByAppendingString:v68];

  v5 = v69;
  if ((a3 & 0x4000000) == 0)
  {
LABEL_32:
    if ((a3 & 0x20000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_100;
  }

LABEL_94:
  v70 = objc_alloc(MEMORY[0x277CCACA8]);
  v71 = [(SUControllerConfig *)self updateMetricContext];
  if (v71)
  {
    v72 = [(SUControllerConfig *)self updateMetricContext];
  }

  else
  {
    v72 = @"!";
  }

  v73 = [v70 initWithFormat:@"|context:%@", v72];
  v74 = [(__CFString *)v5 stringByAppendingString:v73];

  if (v71)
  {
  }

  v5 = v74;
  if ((a3 & 0x20000) == 0)
  {
LABEL_33:
    if ((a3 & 0x40000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_106;
  }

LABEL_100:
  v75 = objc_alloc(MEMORY[0x277CCACA8]);
  v76 = [(SUControllerConfig *)self prerequisiteBuildVersion];
  if (v76)
  {
    v77 = [(SUControllerConfig *)self prerequisiteBuildVersion];
  }

  else
  {
    v77 = @"!";
  }

  v78 = [v75 initWithFormat:@"|asBuild:%@", v77];
  v79 = [(__CFString *)v5 stringByAppendingString:v78];

  if (v76)
  {
  }

  v5 = v79;
  if ((a3 & 0x40000) == 0)
  {
LABEL_34:
    if ((a3 & 0x80000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_112;
  }

LABEL_106:
  v80 = objc_alloc(MEMORY[0x277CCACA8]);
  v81 = [(SUControllerConfig *)self prerequisiteProductVersion];
  if (v81)
  {
    v82 = [(SUControllerConfig *)self prerequisiteProductVersion];
  }

  else
  {
    v82 = @"!";
  }

  v83 = [v80 initWithFormat:@"|asProduct:%@", v82];
  v84 = [(__CFString *)v5 stringByAppendingString:v83];

  if (v81)
  {
  }

  v5 = v84;
  if ((a3 & 0x80000) == 0)
  {
LABEL_35:
    if ((a3 & 0x200000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_118;
  }

LABEL_112:
  v85 = objc_alloc(MEMORY[0x277CCACA8]);
  v86 = [(SUControllerConfig *)self asReleaseType];
  if (v86)
  {
    v87 = [(SUControllerConfig *)self asReleaseType];
  }

  else
  {
    v87 = @"!";
  }

  v88 = [v85 initWithFormat:@"|asRelease:%@", v87];
  v89 = [(__CFString *)v5 stringByAppendingString:v88];

  if (v86)
  {
  }

  v5 = v89;
  if ((a3 & 0x200000) == 0)
  {
LABEL_36:
    if ((a3 & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_124;
  }

LABEL_118:
  v90 = objc_alloc(MEMORY[0x277CCACA8]);
  v91 = [(SUControllerConfig *)self simulatorCommandsFile];
  if (v91)
  {
    v92 = [(SUControllerConfig *)self simulatorCommandsFile];
  }

  else
  {
    v92 = @"!";
  }

  v93 = [v90 initWithFormat:@"|simFile:%@", v92];
  v94 = [(__CFString *)v5 stringByAppendingString:v93];

  if (v91)
  {
  }

  v5 = v94;
  if ((a3 & 0x800) == 0)
  {
LABEL_37:
    if ((a3 & 0x100000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_128;
  }

LABEL_124:
  v95 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([(SUControllerConfig *)self useSpecifiedInstallWindow])
  {
    v96 = @"Y";
  }

  else
  {
    v96 = @"N";
  }

  v97 = [v95 initWithFormat:@"|useInstallWindow:%@", v96];
  v98 = [(__CFString *)v5 stringByAppendingString:v97];

  v5 = v98;
  if ((a3 & 0x100000) == 0)
  {
LABEL_38:
    if ((a3 & 0x1000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_132;
  }

LABEL_128:
  v99 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([(SUControllerConfig *)self expiredSpecifiedAsExpired])
  {
    v100 = @"Y";
  }

  else
  {
    v100 = @"N";
  }

  v101 = [v99 initWithFormat:@"|expiredAsExpired:%@", v100];
  v102 = [(__CFString *)v5 stringByAppendingString:v101];

  v5 = v102;
  if ((a3 & 0x1000) == 0)
  {
LABEL_39:
    if ((a3 & 0x2000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_136;
  }

LABEL_132:
  v103 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([(SUControllerConfig *)self hideIndicationMayReboot])
  {
    v104 = @"Y";
  }

  else
  {
    v104 = @"N";
  }

  v105 = [v103 initWithFormat:@"|hideMayReboot:%@", v104];
  v106 = [(__CFString *)v5 stringByAppendingString:v105];

  v5 = v106;
  if ((a3 & 0x2000000) == 0)
  {
LABEL_40:
    if ((a3 & 0x4000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_140;
  }

LABEL_136:
  v107 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([(SUControllerConfig *)self internalDefaultsAsExternal])
  {
    v108 = @"Y";
  }

  else
  {
    v108 = @"N";
  }

  v109 = [v107 initWithFormat:@"|asExternal:%@", v108];
  v110 = [(__CFString *)v5 stringByAppendingString:v109];

  v5 = v110;
  if ((a3 & 0x4000) == 0)
  {
LABEL_41:
    if ((a3 & 0x8000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_144;
  }

LABEL_140:
  v111 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([(SUControllerConfig *)self requirePrepareSize])
  {
    v112 = @"Y";
  }

  else
  {
    v112 = @"N";
  }

  v113 = [v111 initWithFormat:@"|requirePrepSize:%@", v112];
  v114 = [(__CFString *)v5 stringByAppendingString:v113];

  v5 = v114;
  if ((a3 & 0x8000) == 0)
  {
LABEL_42:
    if ((a3 & 0x100000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_144:
  v115 = objc_alloc(MEMORY[0x277CCACA8]);
  if ([(SUControllerConfig *)self installWindowAsDeltas])
  {
    v116 = @"Y";
  }

  else
  {
    v116 = @"N";
  }

  v117 = [v115 initWithFormat:@"|windowDeltas:%@", v116];
  v118 = [(__CFString *)v5 stringByAppendingString:v117];

  v5 = v118;
  if ((a3 & 0x100000000) == 0)
  {
    goto LABEL_44;
  }

LABEL_43:
  v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|maxOptionalPSUSSize:%ld", -[SUControllerConfig maxOptionalPSUSDownloadSize](self, "maxOptionalPSUSDownloadSize")];
  v20 = [(__CFString *)v5 stringByAppendingString:v19];

  v5 = v20;
LABEL_44:
  if (([(__CFString *)v5 isEqualToString:&stru_287B3F250]& 1) == 0)
  {
    v21 = [(__CFString *)v5 stringByAppendingString:@"|"];

    v5 = v21;
  }

  v22 = v5;

  return v5;
}

- (BOOL)_loadBooleanFromDefaults:(id)a3 usingDefault:(BOOL)a4 isStoredInverted:(BOOL)a5
{
  v5 = a5;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(a3, @"com.apple.SUController", &keyExistsAndHasValidFormat);
  v8 = AppBooleanValue != 0;
  if (v5)
  {
    v8 = AppBooleanValue == 0;
  }

  if (keyExistsAndHasValidFormat)
  {
    return v8;
  }

  else
  {
    return a4;
  }
}

- (int64_t)_loadBooleanFromDefaults:(id)a3 releaseType:(int64_t)a4 externalDefault:(BOOL)a5 internalDefault:(BOOL)a6 isStoredInverted:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(a3, @"com.apple.SUController", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v13 = AppBooleanValue != 0;
    if (v7)
    {
      return AppBooleanValue == 0;
    }
  }

  else if ((a4 - 3) < 0xFFFFFFFFFFFFFFFELL || self->_internalDefaultsAsExternal)
  {
    return v9;
  }

  else
  {
    return v8;
  }

  return v13;
}

- (int64_t)_loadIntegerFromDefaults:(id)a3 usingDefault:(int64_t)a4 withLimit:(int64_t)a5
{
  v8 = a3;
  v9 = CFPreferencesCopyAppValue(v8, @"com.apple.SUController");
  v10 = v9;
  if (v9)
  {
    a4 = -[SUControllerConfig _limitedInteger:checkingValue:forKey:withLimit:](self, "_limitedInteger:checkingValue:forKey:withLimit:", @"load", [v9 intValue], v8, a5);
  }

  return a4;
}

- (int64_t)_loadIntegerFromDefaults:(id)a3 releaseType:(int64_t)a4 externalDefault:(int64_t)a5 internalDefault:(int64_t)a6 withLimit:(int64_t)a7
{
  v12 = a3;
  v13 = CFPreferencesCopyAppValue(v12, @"com.apple.SUController");
  v14 = v13;
  if (v13)
  {
    v15 = -[SUControllerConfig _limitedInteger:checkingValue:forKey:withLimit:](self, "_limitedInteger:checkingValue:forKey:withLimit:", @"load", [v13 intValue], v12, a7);
  }

  else if ((a4 - 3) < 0xFFFFFFFFFFFFFFFELL || self->_internalDefaultsAsExternal)
  {
    v15 = a5;
  }

  else
  {
    v15 = a6;
  }

  return v15;
}

- (id)_copyStringFromDefaults:(id)a3 usingDefault:(id)a4
{
  v5 = a4;
  v6 = CFPreferencesCopyAppValue(a3, @"com.apple.SUController");
  v7 = v6;
  if (v5 && !v6)
  {
    v7 = [v5 copy];
  }

  return v7;
}

- (BOOL)_storeBooleanToDefaults:(id)a3 toValue:(BOOL)a4 isStoredInverted:(BOOL)a5
{
  if (a4 != a5)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  CFPreferencesSetAppValue(a3, v6, @"com.apple.SUController");
  return a4;
}

- (int64_t)_storeIntegerToDefaults:(id)a3 toValue:(int64_t)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", a4];
  if (v6)
  {
    CFPreferencesSetAppValue(v5, v6, @"com.apple.SUController");
  }

  return a4;
}

- (id)_storeStringToDefaults:(id)a3 toValue:(id)a4
{
  v5 = a4;
  CFPreferencesSetAppValue(a3, v5, @"com.apple.SUController");

  return v5;
}

- (int64_t)_decodeInteger:(id)a3 forKey:(id)a4 withLimit:(int64_t)a5
{
  v8 = a4;
  v9 = -[SUControllerConfig _limitedInteger:checkingValue:forKey:withLimit:](self, "_limitedInteger:checkingValue:forKey:withLimit:", @"decode", [a3 decodeIntegerForKey:v8], v8, a5);

  return v9;
}

- (int64_t)_limitedInteger:(id)a3 checkingValue:(int64_t)a4 forKey:(id)a5 withLimit:(int64_t)a6
{
  v9 = a3;
  v10 = a5;
  if (a4 < 0)
  {
    v11 = [MEMORY[0x277D64428] sharedDiag];
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"attempt to %@ %@ to negative value(%ld) - using value of 0", v9, v10, a4];
    [v11 trackAnomaly:@"[CONFIG]" forReason:v12 withResult:8102 withError:0];
    a6 = 0;
    goto LABEL_6;
  }

  if (a6 && a4 > a6)
  {
    v11 = [MEMORY[0x277D64428] sharedDiag];
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"attempt to %@ %@ to over-limit value(%ld) - using value of %ld", v9, v10, a4, a6];
    [v11 trackAnomaly:@"[CONFIG]" forReason:v12 withResult:8102 withError:0];
LABEL_6:

    a4 = a6;
  }

  return a4;
}

- (BOOL)_allowedToTurnOffAutoScan
{
  v2 = [MEMORY[0x277D64418] sharedDevice];
  v3 = [v2 deviceClass];
  v4 = [v3 isEqualToString:@"AppleTV"];

  return v4;
}

@end