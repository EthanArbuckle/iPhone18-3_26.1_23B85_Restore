@interface SUControllerConfig
- (BOOL)_allowedToTurnOffAutoScan;
- (BOOL)_loadBooleanFromDefaults:(id)defaults usingDefault:(BOOL)default isStoredInverted:(BOOL)inverted;
- (BOOL)_storeBooleanToDefaults:(id)defaults toValue:(BOOL)value isStoredInverted:(BOOL)inverted;
- (BOOL)isEqual:(id)equal;
- (SUControllerConfig)init;
- (SUControllerConfig)initWithCoder:(id)coder;
- (id)_copyStringFromDefaults:(id)defaults usingDefault:(id)default;
- (id)_storeStringToDefaults:(id)defaults toValue:(id)value;
- (id)changeSummary:(int64_t)summary;
- (id)copy;
- (id)description;
- (id)initFromDefaults:(int64_t)defaults;
- (id)summary;
- (int64_t)_decodeInteger:(id)integer forKey:(id)key withLimit:(int64_t)limit;
- (int64_t)_limitedInteger:(id)integer checkingValue:(int64_t)value forKey:(id)key withLimit:(int64_t)limit;
- (int64_t)_loadBooleanFromDefaults:(id)defaults releaseType:(int64_t)type externalDefault:(BOOL)default internalDefault:(BOOL)internalDefault isStoredInverted:(BOOL)inverted;
- (int64_t)_loadIntegerFromDefaults:(id)defaults releaseType:(int64_t)type externalDefault:(int64_t)default internalDefault:(int64_t)internalDefault withLimit:(int64_t)limit;
- (int64_t)_loadIntegerFromDefaults:(id)defaults usingDefault:(int64_t)default withLimit:(int64_t)limit;
- (int64_t)_storeIntegerToDefaults:(id)defaults toValue:(int64_t)value;
- (void)encodeWithCoder:(id)coder;
- (void)modify:(id)modify usingMask:(int64_t)mask;
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

- (id)initFromDefaults:(int64_t)defaults
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
    v5->_autoActivityCheckPeriod = [(SUControllerConfig *)v5 _loadIntegerFromDefaults:@"SUAutoActivityCheckPeriod" releaseType:defaults externalDefault:10080 internalDefault:240 withLimit:44640];
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

- (SUControllerConfig)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = SUControllerConfig;
  v5 = [(SUControllerConfig *)&v23 init];
  v6 = v5;
  if (v5)
  {
    v7 = 1;
    v5->_useSUCore = 1;
    v5->_vpnOnDemandAsInternal = [coderCopy decodeBoolForKey:@"vpnOnDemandAsInternal"];
    if ([(SUControllerConfig *)v6 _allowedToTurnOffAutoScan])
    {
      v7 = [coderCopy decodeBoolForKey:@"performAutoScan"];
    }

    v6->_performAutoScan = v7;
    v6->_performAutoDownloadAndPrepare = [coderCopy decodeBoolForKey:@"performAutoDownloadAndPrepare"];
    v6->_performAutoInstall = [coderCopy decodeBoolForKey:@"performAutoInstall"];
    v6->_autoAcceptTermsAndConditions = [coderCopy decodeBoolForKey:@"autoAcceptTermsAndConditions"];
    v6->_autoActivityCheckPeriod = [(SUControllerConfig *)v6 _decodeInteger:coderCopy forKey:@"autoActivityCheckPeriod" withLimit:44640];
    v6->_autoInstallForceMaxWait = [(SUControllerConfig *)v6 _decodeInteger:coderCopy forKey:@"autoInstallForceMaxWait" withLimit:1440];
    v6->_autoInstallWindowBeginHour = [(SUControllerConfig *)v6 _decodeInteger:coderCopy forKey:@"autoInstallWindowBeginHour" withLimit:23];
    v6->_autoInstallWindowBeginMinute = [(SUControllerConfig *)v6 _decodeInteger:coderCopy forKey:@"autoInstallWindowBeginMinute" withLimit:59];
    v6->_autoInstallWindowEndHour = [(SUControllerConfig *)v6 _decodeInteger:coderCopy forKey:@"autoInstallWindowEndHour" withLimit:23];
    v6->_autoInstallWindowEndMinute = [(SUControllerConfig *)v6 _decodeInteger:coderCopy forKey:@"autoInstallWindowEndMinute" withLimit:59];
    v6->_downloadDocAsset = [coderCopy decodeBoolForKey:@"downloadDocAsset"];
    v6->_ignoreRamping = [coderCopy decodeBoolForKey:@"ignoreRamping"];
    v6->_supervisedMDM = [coderCopy decodeBoolForKey:@"supervisedMDM"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestedPMV"];
    requestedPMV = v6->_requestedPMV;
    v6->_requestedPMV = v8;

    v6->_delayPeriod = [(SUControllerConfig *)v6 _decodeInteger:coderCopy forKey:@"delayPeriod" withLimit:90];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installPhaseOSBackgroundImagePath"];
    installPhaseOSBackgroundImagePath = v6->_installPhaseOSBackgroundImagePath;
    v6->_installPhaseOSBackgroundImagePath = v10;

    v6->_restrictToFullReplacement = [coderCopy decodeBoolForKey:@"restrictToFullReplacement"];
    v6->_allowSameVersionUpdates = [coderCopy decodeBoolForKey:@"allowSameVersionUpdates"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"updateMetricContext"];
    updateMetricContext = v6->_updateMetricContext;
    v6->_updateMetricContext = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prerequisiteBuildVersion"];
    prerequisiteBuildVersion = v6->_prerequisiteBuildVersion;
    v6->_prerequisiteBuildVersion = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prerequisiteProductVersion"];
    prerequisiteProductVersion = v6->_prerequisiteProductVersion;
    v6->_prerequisiteProductVersion = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asReleaseType"];
    asReleaseType = v6->_asReleaseType;
    v6->_asReleaseType = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"simulatorCommandsFile"];
    simulatorCommandsFile = v6->_simulatorCommandsFile;
    v6->_simulatorCommandsFile = v20;

    v6->_useSpecifiedInstallWindow = [coderCopy decodeBoolForKey:@"useSpecifiedInstallWindow"];
    v6->_expiredSpecifiedAsExpired = [coderCopy decodeBoolForKey:@"expiredSpecifiedAsExpired"];
    v6->_hideIndicationMayReboot = [coderCopy decodeBoolForKey:@"hideIndicationMayReboot"];
    v6->_internalDefaultsAsExternal = [coderCopy decodeBoolForKey:@"internalDefaultsAsExternal"];
    v6->_requirePrepareSize = [coderCopy decodeBoolForKey:@"requirePrepareSize"];
    v6->_installWindowAsDeltas = [coderCopy decodeBoolForKey:@"installWindowAsDeltas"];
    v6->_maxOptionalPSUSDownloadSize = [coderCopy decodeIntegerForKey:@"maxOptionalPSUSDownloadSize"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:-[SUControllerConfig useSUCore](self forKey:{"useSUCore"), @"useSUCore"}];
  [coderCopy encodeBool:-[SUControllerConfig vpnOnDemandAsInternal](self forKey:{"vpnOnDemandAsInternal"), @"vpnOnDemandAsInternal"}];
  [coderCopy encodeBool:-[SUControllerConfig performAutoScan](self forKey:{"performAutoScan"), @"performAutoScan"}];
  [coderCopy encodeBool:-[SUControllerConfig performAutoDownloadAndPrepare](self forKey:{"performAutoDownloadAndPrepare"), @"performAutoDownloadAndPrepare"}];
  [coderCopy encodeBool:-[SUControllerConfig performAutoInstall](self forKey:{"performAutoInstall"), @"performAutoInstall"}];
  [coderCopy encodeBool:-[SUControllerConfig autoAcceptTermsAndConditions](self forKey:{"autoAcceptTermsAndConditions"), @"autoAcceptTermsAndConditions"}];
  [coderCopy encodeInteger:-[SUControllerConfig autoActivityCheckPeriod](self forKey:{"autoActivityCheckPeriod"), @"autoActivityCheckPeriod"}];
  [coderCopy encodeInteger:-[SUControllerConfig autoInstallForceMaxWait](self forKey:{"autoInstallForceMaxWait"), @"autoInstallForceMaxWait"}];
  [coderCopy encodeInteger:-[SUControllerConfig autoInstallWindowBeginHour](self forKey:{"autoInstallWindowBeginHour"), @"autoInstallWindowBeginHour"}];
  [coderCopy encodeInteger:-[SUControllerConfig autoInstallWindowBeginMinute](self forKey:{"autoInstallWindowBeginMinute"), @"autoInstallWindowBeginMinute"}];
  [coderCopy encodeInteger:-[SUControllerConfig autoInstallWindowEndHour](self forKey:{"autoInstallWindowEndHour"), @"autoInstallWindowEndHour"}];
  [coderCopy encodeInteger:-[SUControllerConfig autoInstallWindowEndMinute](self forKey:{"autoInstallWindowEndMinute"), @"autoInstallWindowEndMinute"}];
  [coderCopy encodeBool:-[SUControllerConfig downloadDocAsset](self forKey:{"downloadDocAsset"), @"downloadDocAsset"}];
  [coderCopy encodeBool:-[SUControllerConfig ignoreRamping](self forKey:{"ignoreRamping"), @"ignoreRamping"}];
  [coderCopy encodeBool:-[SUControllerConfig supervisedMDM](self forKey:{"supervisedMDM"), @"supervisedMDM"}];
  requestedPMV = [(SUControllerConfig *)self requestedPMV];
  [coderCopy encodeObject:requestedPMV forKey:@"requestedPMV"];

  [coderCopy encodeInteger:-[SUControllerConfig delayPeriod](self forKey:{"delayPeriod"), @"delayPeriod"}];
  installPhaseOSBackgroundImagePath = [(SUControllerConfig *)self installPhaseOSBackgroundImagePath];
  [coderCopy encodeObject:installPhaseOSBackgroundImagePath forKey:@"installPhaseOSBackgroundImagePath"];

  [coderCopy encodeBool:-[SUControllerConfig restrictToFullReplacement](self forKey:{"restrictToFullReplacement"), @"restrictToFullReplacement"}];
  [coderCopy encodeBool:-[SUControllerConfig allowSameVersionUpdates](self forKey:{"allowSameVersionUpdates"), @"allowSameVersionUpdates"}];
  updateMetricContext = [(SUControllerConfig *)self updateMetricContext];
  [coderCopy encodeObject:updateMetricContext forKey:@"updateMetricContext"];

  prerequisiteBuildVersion = [(SUControllerConfig *)self prerequisiteBuildVersion];
  [coderCopy encodeObject:prerequisiteBuildVersion forKey:@"prerequisiteBuildVersion"];

  prerequisiteProductVersion = [(SUControllerConfig *)self prerequisiteProductVersion];
  [coderCopy encodeObject:prerequisiteProductVersion forKey:@"prerequisiteProductVersion"];

  asReleaseType = [(SUControllerConfig *)self asReleaseType];
  [coderCopy encodeObject:asReleaseType forKey:@"asReleaseType"];

  simulatorCommandsFile = [(SUControllerConfig *)self simulatorCommandsFile];
  [coderCopy encodeObject:simulatorCommandsFile forKey:@"simulatorCommandsFile"];

  [coderCopy encodeBool:-[SUControllerConfig useSpecifiedInstallWindow](self forKey:{"useSpecifiedInstallWindow"), @"useSpecifiedInstallWindow"}];
  [coderCopy encodeBool:-[SUControllerConfig expiredSpecifiedAsExpired](self forKey:{"expiredSpecifiedAsExpired"), @"expiredSpecifiedAsExpired"}];
  [coderCopy encodeBool:-[SUControllerConfig hideIndicationMayReboot](self forKey:{"hideIndicationMayReboot"), @"hideIndicationMayReboot"}];
  [coderCopy encodeBool:-[SUControllerConfig internalDefaultsAsExternal](self forKey:{"internalDefaultsAsExternal"), @"internalDefaultsAsExternal"}];
  [coderCopy encodeBool:-[SUControllerConfig requirePrepareSize](self forKey:{"requirePrepareSize"), @"requirePrepareSize"}];
  [coderCopy encodeBool:-[SUControllerConfig installWindowAsDeltas](self forKey:{"installWindowAsDeltas"), @"installWindowAsDeltas"}];
  [coderCopy encodeInteger:-[SUControllerConfig maxOptionalPSUSDownloadSize](self forKey:{"maxOptionalPSUSDownloadSize"), @"maxOptionalPSUSDownloadSize"}];
}

- (id)copy
{
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:0];
  v3 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v2 error:0];

  return v3;
}

- (void)modify:(id)modify usingMask:(int64_t)mask
{
  modifyCopy = modify;
  v7 = modifyCopy;
  v35 = modifyCopy;
  if ((mask & 0x10000) != 0)
  {
    useSUCore = [modifyCopy useSUCore];
    v7 = v35;
    if ((useSUCore & 1) == 0)
    {
      mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
      v10 = objc_alloc(MEMORY[0x277CCACA8]);
      useSUCore2 = [v35 useSUCore];
      v12 = @"NO";
      if (useSUCore2)
      {
        v12 = @"YES";
      }

      v13 = [v10 initWithFormat:@"attempt to set %@ to %@ (only supported value is %@ [as of 4.2.1])", @"useSUCore", v12, @"YES"];
      [mEMORY[0x277D64428] trackAnomaly:@"[CONFIG]" forReason:v13 withResult:8102 withError:0];

      v7 = v35;
    }
  }

  if ((mask & 0x8000000) != 0)
  {
    -[SUControllerConfig setVpnOnDemandAsInternal:](self, "setVpnOnDemandAsInternal:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUVPNOnDemandAsInternal", [v7 vpnOnDemandAsInternal], 0));
    v7 = v35;
  }

  if (mask)
  {
    _allowedToTurnOffAutoScan = [(SUControllerConfig *)self _allowedToTurnOffAutoScan];
    performAutoScan = [v35 performAutoScan];
    if (_allowedToTurnOffAutoScan)
    {
      [(SUControllerConfig *)self setPerformAutoScan:[(SUControllerConfig *)self _storeBooleanToDefaults:@"SUDisableAutoScan" toValue:performAutoScan isStoredInverted:1]];
    }

    else
    {
      v7 = v35;
      if (performAutoScan)
      {
        goto LABEL_16;
      }

      mEMORY[0x277D64428]2 = [MEMORY[0x277D64428] sharedDiag];
      v17 = objc_alloc(MEMORY[0x277CCACA8]);
      performAutoScan2 = [v35 performAutoScan];
      v19 = @"NO";
      if (performAutoScan2)
      {
        v19 = @"YES";
      }

      v20 = [v17 initWithFormat:@"attempt to set %@ to %@ (only supported value is %@ [as of 4.2.1])", @"performAutoScan", v19, @"YES"];
      [mEMORY[0x277D64428]2 trackAnomaly:@"[CONFIG]" forReason:v20 withResult:8102 withError:0];
    }

    v7 = v35;
  }

LABEL_16:
  if ((mask & 2) != 0)
  {
    -[SUControllerConfig setPerformAutoDownloadAndPrepare:](self, "setPerformAutoDownloadAndPrepare:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUDisableAutoDownloadAndPrepare", [v7 performAutoDownloadAndPrepare], 1));
    v7 = v35;
    if ((mask & 4) == 0)
    {
LABEL_18:
      if ((mask & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_51;
    }
  }

  else if ((mask & 4) == 0)
  {
    goto LABEL_18;
  }

  -[SUControllerConfig setPerformAutoInstall:](self, "setPerformAutoInstall:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUDisableAutoInstall", [v7 performAutoInstall], 1));
  v7 = v35;
  if ((mask & 8) == 0)
  {
LABEL_19:
    if ((mask & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_52;
  }

LABEL_51:
  -[SUControllerConfig setAutoAcceptTermsAndConditions:](self, "setAutoAcceptTermsAndConditions:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUAutoAcceptTermsAndConditions", [v7 autoAcceptTermsAndConditions], 0));
  v7 = v35;
  if ((mask & 0x10) == 0)
  {
LABEL_20:
    if ((mask & 0x2000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_53;
  }

LABEL_52:
  -[SUControllerConfig setAutoActivityCheckPeriod:](self, "setAutoActivityCheckPeriod:", -[SUControllerConfig _storeIntegerToDefaults:toValue:](self, "_storeIntegerToDefaults:toValue:", @"SUAutoActivityCheckPeriod", [v7 autoActivityCheckPeriod]));
  v7 = v35;
  if ((mask & 0x2000) == 0)
  {
LABEL_21:
    if ((mask & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_54;
  }

LABEL_53:
  -[SUControllerConfig setAutoInstallForceMaxWait:](self, "setAutoInstallForceMaxWait:", -[SUControllerConfig _storeIntegerToDefaults:toValue:](self, "_storeIntegerToDefaults:toValue:", @"SUAutoInstallForceMaxWait", [v7 autoInstallForceMaxWait]));
  v7 = v35;
  if ((mask & 0x80) == 0)
  {
LABEL_22:
    if ((mask & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_55;
  }

LABEL_54:
  -[SUControllerConfig setAutoInstallWindowBeginHour:](self, "setAutoInstallWindowBeginHour:", -[SUControllerConfig _storeIntegerToDefaults:toValue:](self, "_storeIntegerToDefaults:toValue:", @"SUAutoInstallWindowBeginHour", [v7 autoInstallWindowBeginHour]));
  v7 = v35;
  if ((mask & 0x100) == 0)
  {
LABEL_23:
    if ((mask & 0x200) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_56;
  }

LABEL_55:
  -[SUControllerConfig setAutoInstallWindowBeginMinute:](self, "setAutoInstallWindowBeginMinute:", -[SUControllerConfig _storeIntegerToDefaults:toValue:](self, "_storeIntegerToDefaults:toValue:", @"SUAutoInstallWindowBeginMinute", [v7 autoInstallWindowBeginMinute]));
  v7 = v35;
  if ((mask & 0x200) == 0)
  {
LABEL_24:
    if ((mask & 0x400) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_57;
  }

LABEL_56:
  -[SUControllerConfig setAutoInstallWindowEndHour:](self, "setAutoInstallWindowEndHour:", -[SUControllerConfig _storeIntegerToDefaults:toValue:](self, "_storeIntegerToDefaults:toValue:", @"SUAutoInstallWindowEndHour", [v7 autoInstallWindowEndHour]));
  v7 = v35;
  if ((mask & 0x400) == 0)
  {
LABEL_25:
    if ((mask & 0x400000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_58;
  }

LABEL_57:
  -[SUControllerConfig setAutoInstallWindowEndMinute:](self, "setAutoInstallWindowEndMinute:", -[SUControllerConfig _storeIntegerToDefaults:toValue:](self, "_storeIntegerToDefaults:toValue:", @"SUAutoInstallWindowEndMinute", [v7 autoInstallWindowEndMinute]));
  v7 = v35;
  if ((mask & 0x400000) == 0)
  {
LABEL_26:
    if ((mask & 0x800000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_59;
  }

LABEL_58:
  -[SUControllerConfig setDownloadDocAsset:](self, "setDownloadDocAsset:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUDownloadDocAsset", [v7 downloadDocAsset], 0));
  v7 = v35;
  if ((mask & 0x800000) == 0)
  {
LABEL_27:
    if ((mask & 0x10000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_60;
  }

LABEL_59:
  -[SUControllerConfig setIgnoreRamping:](self, "setIgnoreRamping:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUIgnoreRamping", [v7 ignoreRamping], 0));
  v7 = v35;
  if ((mask & 0x10000000) == 0)
  {
LABEL_28:
    if ((mask & 0x20000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_61;
  }

LABEL_60:
  -[SUControllerConfig setSupervisedMDM:](self, "setSupervisedMDM:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"supervisedMDM", [v7 supervisedMDM], 0));
  v7 = v35;
  if ((mask & 0x20000000) == 0)
  {
LABEL_29:
    if ((mask & 0x40000000) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_62;
  }

LABEL_61:
  requestedPMV = [v7 requestedPMV];
  v22 = [(SUControllerConfig *)self _storeStringToDefaults:@"requestedPMV" toValue:requestedPMV];
  [(SUControllerConfig *)self setRequestedPMV:v22];

  v7 = v35;
  if ((mask & 0x40000000) == 0)
  {
LABEL_30:
    if ((mask & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_63;
  }

LABEL_62:
  -[SUControllerConfig setDelayPeriod:](self, "setDelayPeriod:", -[SUControllerConfig _storeIntegerToDefaults:toValue:](self, "_storeIntegerToDefaults:toValue:", @"delayPeriod", [v7 delayPeriod]));
  v7 = v35;
  if ((mask & 0x80000000) == 0)
  {
LABEL_31:
    if ((mask & 0x20) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_64;
  }

LABEL_63:
  installPhaseOSBackgroundImagePath = [v7 installPhaseOSBackgroundImagePath];
  v24 = [(SUControllerConfig *)self _storeStringToDefaults:@"installPhaseOSBackgroundImagePath" toValue:installPhaseOSBackgroundImagePath];
  [(SUControllerConfig *)self setInstallPhaseOSBackgroundImagePath:v24];

  v7 = v35;
  if ((mask & 0x20) == 0)
  {
LABEL_32:
    if ((mask & 0x40) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_65;
  }

LABEL_64:
  -[SUControllerConfig setRestrictToFullReplacement:](self, "setRestrictToFullReplacement:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SURestrictToFullReplacement", [v7 restrictToFullReplacement], 0));
  v7 = v35;
  if ((mask & 0x40) == 0)
  {
LABEL_33:
    if ((mask & 0x4000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_66;
  }

LABEL_65:
  -[SUControllerConfig setAllowSameVersionUpdates:](self, "setAllowSameVersionUpdates:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUAllowSameVersionUpdates", [v7 allowSameVersionUpdates], 0));
  v7 = v35;
  if ((mask & 0x4000000) == 0)
  {
LABEL_34:
    if ((mask & 0x20000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_67;
  }

LABEL_66:
  updateMetricContext = [v7 updateMetricContext];
  v26 = [(SUControllerConfig *)self _storeStringToDefaults:@"SUUpdateMetricContext" toValue:updateMetricContext];
  [(SUControllerConfig *)self setUpdateMetricContext:v26];

  v7 = v35;
  if ((mask & 0x20000) == 0)
  {
LABEL_35:
    if ((mask & 0x40000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_68;
  }

LABEL_67:
  prerequisiteBuildVersion = [v7 prerequisiteBuildVersion];
  v28 = [(SUControllerConfig *)self _storeStringToDefaults:@"SUPrerequisiteBuildVersion" toValue:prerequisiteBuildVersion];
  [(SUControllerConfig *)self setPrerequisiteBuildVersion:v28];

  v7 = v35;
  if ((mask & 0x40000) == 0)
  {
LABEL_36:
    if ((mask & 0x80000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_69;
  }

LABEL_68:
  prerequisiteProductVersion = [v7 prerequisiteProductVersion];
  v30 = [(SUControllerConfig *)self _storeStringToDefaults:@"SUPrerequisiteProductVersion" toValue:prerequisiteProductVersion];
  [(SUControllerConfig *)self setPrerequisiteProductVersion:v30];

  v7 = v35;
  if ((mask & 0x80000) == 0)
  {
LABEL_37:
    if ((mask & 0x200000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_70;
  }

LABEL_69:
  asReleaseType = [v7 asReleaseType];
  v32 = [(SUControllerConfig *)self _storeStringToDefaults:@"SUAsReleaseType" toValue:asReleaseType];
  [(SUControllerConfig *)self setAsReleaseType:v32];

  v7 = v35;
  if ((mask & 0x200000) == 0)
  {
LABEL_38:
    if ((mask & 0x800) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_71;
  }

LABEL_70:
  simulatorCommandsFile = [v7 simulatorCommandsFile];
  v34 = [(SUControllerConfig *)self _storeStringToDefaults:@"SUSimulatorCommandsFile" toValue:simulatorCommandsFile];
  [(SUControllerConfig *)self setSimulatorCommandsFile:v34];

  v7 = v35;
  if ((mask & 0x800) == 0)
  {
LABEL_39:
    if ((mask & 0x100000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_72;
  }

LABEL_71:
  -[SUControllerConfig setUseSpecifiedInstallWindow:](self, "setUseSpecifiedInstallWindow:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUUseSpecifiedInstallWindow", [v7 useSpecifiedInstallWindow], 0));
  v7 = v35;
  if ((mask & 0x100000) == 0)
  {
LABEL_40:
    if ((mask & 0x1000) == 0)
    {
      goto LABEL_41;
    }

    goto LABEL_73;
  }

LABEL_72:
  -[SUControllerConfig setExpiredSpecifiedAsExpired:](self, "setExpiredSpecifiedAsExpired:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUExpiredSpecifiedAsExpired", [v7 expiredSpecifiedAsExpired], 0));
  v7 = v35;
  if ((mask & 0x1000) == 0)
  {
LABEL_41:
    if ((mask & 0x2000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_74;
  }

LABEL_73:
  -[SUControllerConfig setHideIndicationMayReboot:](self, "setHideIndicationMayReboot:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUHideIndicationMayReboot", [v7 hideIndicationMayReboot], 0));
  v7 = v35;
  if ((mask & 0x2000000) == 0)
  {
LABEL_42:
    if ((mask & 0x4000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_75;
  }

LABEL_74:
  -[SUControllerConfig setInternalDefaultsAsExternal:](self, "setInternalDefaultsAsExternal:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUInternalDefaultsAsExternal", [v7 internalDefaultsAsExternal], 0));
  v7 = v35;
  if ((mask & 0x4000) == 0)
  {
LABEL_43:
    if ((mask & 0x8000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_76;
  }

LABEL_75:
  -[SUControllerConfig setRequirePrepareSize:](self, "setRequirePrepareSize:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SURequirePrepareSize", [v7 requirePrepareSize], 0));
  v7 = v35;
  if ((mask & 0x8000) == 0)
  {
LABEL_44:
    if ((mask & 0x100000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

LABEL_76:
  -[SUControllerConfig setInstallWindowAsDeltas:](self, "setInstallWindowAsDeltas:", -[SUControllerConfig _storeBooleanToDefaults:toValue:isStoredInverted:](self, "_storeBooleanToDefaults:toValue:isStoredInverted:", @"SUInstallWindowAsDeltas", [v7 installWindowAsDeltas], 0));
  v7 = v35;
  if ((mask & 0x100000000) != 0)
  {
LABEL_45:
    -[SUControllerConfig setMaxOptionalPSUSDownloadSize:](self, "setMaxOptionalPSUSDownloadSize:", -[SUControllerConfig _storeIntegerToDefaults:toValue:](self, "_storeIntegerToDefaults:toValue:", @"SUMaxOptionalPSUSDownloadSize", [v7 maxOptionalPSUSDownloadSize]));
  }

LABEL_46:

  MEMORY[0x2821F96F8]();
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  useSUCore = [(SUControllerConfig *)self useSUCore];
  if (useSUCore != [equalCopy useSUCore])
  {
    goto LABEL_16;
  }

  vpnOnDemandAsInternal = [(SUControllerConfig *)self vpnOnDemandAsInternal];
  if (vpnOnDemandAsInternal != [equalCopy vpnOnDemandAsInternal])
  {
    goto LABEL_16;
  }

  performAutoScan = [(SUControllerConfig *)self performAutoScan];
  if (performAutoScan != [equalCopy performAutoScan])
  {
    goto LABEL_16;
  }

  performAutoDownloadAndPrepare = [(SUControllerConfig *)self performAutoDownloadAndPrepare];
  if (performAutoDownloadAndPrepare != [equalCopy performAutoDownloadAndPrepare])
  {
    goto LABEL_16;
  }

  performAutoInstall = [(SUControllerConfig *)self performAutoInstall];
  if (performAutoInstall != [equalCopy performAutoInstall])
  {
    goto LABEL_16;
  }

  autoAcceptTermsAndConditions = [(SUControllerConfig *)self autoAcceptTermsAndConditions];
  if (autoAcceptTermsAndConditions != [equalCopy autoAcceptTermsAndConditions])
  {
    goto LABEL_16;
  }

  autoActivityCheckPeriod = [(SUControllerConfig *)self autoActivityCheckPeriod];
  if (autoActivityCheckPeriod != [equalCopy autoActivityCheckPeriod])
  {
    goto LABEL_16;
  }

  autoInstallForceMaxWait = [(SUControllerConfig *)self autoInstallForceMaxWait];
  if (autoInstallForceMaxWait != [equalCopy autoInstallForceMaxWait])
  {
    goto LABEL_16;
  }

  autoInstallWindowBeginHour = [(SUControllerConfig *)self autoInstallWindowBeginHour];
  if (autoInstallWindowBeginHour == [equalCopy autoInstallWindowBeginHour] && (v14 = -[SUControllerConfig autoInstallWindowBeginMinute](self, "autoInstallWindowBeginMinute"), v14 == objc_msgSend(equalCopy, "autoInstallWindowBeginMinute")) && (v15 = -[SUControllerConfig autoInstallWindowEndHour](self, "autoInstallWindowEndHour"), v15 == objc_msgSend(equalCopy, "autoInstallWindowEndHour")) && (v16 = -[SUControllerConfig autoInstallWindowEndMinute](self, "autoInstallWindowEndMinute"), v16 == objc_msgSend(equalCopy, "autoInstallWindowEndMinute")) && (v17 = -[SUControllerConfig downloadDocAsset](self, "downloadDocAsset"), v17 == objc_msgSend(equalCopy, "downloadDocAsset")) && (v18 = -[SUControllerConfig ignoreRamping](self, "ignoreRamping"), v18 == objc_msgSend(equalCopy, "ignoreRamping")) && (v19 = -[SUControllerConfig supervisedMDM](self, "supervisedMDM"), v19 == objc_msgSend(equalCopy, "supervisedMDM")))
  {
    requestedPMV = [(SUControllerConfig *)self requestedPMV];
    requestedPMV2 = [equalCopy requestedPMV];
    if (doStringsMatch(requestedPMV, requestedPMV2) && (v24 = -[SUControllerConfig delayPeriod](self, "delayPeriod"), v24 == [equalCopy delayPeriod]))
    {
      installPhaseOSBackgroundImagePath = [(SUControllerConfig *)self installPhaseOSBackgroundImagePath];
      installPhaseOSBackgroundImagePath2 = [equalCopy installPhaseOSBackgroundImagePath];
      if (!doStringsMatch(installPhaseOSBackgroundImagePath, installPhaseOSBackgroundImagePath2))
      {
        goto LABEL_36;
      }

      restrictToFullReplacement = [(SUControllerConfig *)self restrictToFullReplacement];
      if (restrictToFullReplacement != [equalCopy restrictToFullReplacement])
      {
        goto LABEL_36;
      }

      allowSameVersionUpdates = [(SUControllerConfig *)self allowSameVersionUpdates];
      if (allowSameVersionUpdates != [equalCopy allowSameVersionUpdates])
      {
        goto LABEL_36;
      }

      useSpecifiedInstallWindow = [(SUControllerConfig *)self useSpecifiedInstallWindow];
      if (useSpecifiedInstallWindow == [equalCopy useSpecifiedInstallWindow] && (v30 = -[SUControllerConfig expiredSpecifiedAsExpired](self, "expiredSpecifiedAsExpired"), v30 == objc_msgSend(equalCopy, "expiredSpecifiedAsExpired")) && (v31 = -[SUControllerConfig hideIndicationMayReboot](self, "hideIndicationMayReboot"), v31 == objc_msgSend(equalCopy, "hideIndicationMayReboot")) && (v32 = -[SUControllerConfig internalDefaultsAsExternal](self, "internalDefaultsAsExternal"), v32 == objc_msgSend(equalCopy, "internalDefaultsAsExternal")) && (v33 = -[SUControllerConfig requirePrepareSize](self, "requirePrepareSize"), v33 == objc_msgSend(equalCopy, "requirePrepareSize")) && (v34 = -[SUControllerConfig installWindowAsDeltas](self, "installWindowAsDeltas"), v34 == objc_msgSend(equalCopy, "installWindowAsDeltas")) && (v35 = -[SUControllerConfig maxOptionalPSUSDownloadSize](self, "maxOptionalPSUSDownloadSize"), v35 == objc_msgSend(equalCopy, "maxOptionalPSUSDownloadSize")))
      {
        updateMetricContext = [(SUControllerConfig *)self updateMetricContext];
        updateMetricContext2 = [equalCopy updateMetricContext];
        if (doStringsMatch(updateMetricContext, updateMetricContext2))
        {
          prerequisiteBuildVersion = [(SUControllerConfig *)self prerequisiteBuildVersion];
          prerequisiteBuildVersion2 = [equalCopy prerequisiteBuildVersion];
          v48 = prerequisiteBuildVersion;
          if (doStringsMatch(prerequisiteBuildVersion, prerequisiteBuildVersion2))
          {
            prerequisiteProductVersion = [(SUControllerConfig *)self prerequisiteProductVersion];
            prerequisiteProductVersion2 = [equalCopy prerequisiteProductVersion];
            v47 = prerequisiteProductVersion;
            if (doStringsMatch(prerequisiteProductVersion, prerequisiteProductVersion2))
            {
              asReleaseType = [(SUControllerConfig *)self asReleaseType];
              asReleaseType2 = [equalCopy asReleaseType];
              v45 = asReleaseType;
              if (doStringsMatch(asReleaseType, asReleaseType2))
              {
                simulatorCommandsFile = [(SUControllerConfig *)self simulatorCommandsFile];
                simulatorCommandsFile2 = [equalCopy simulatorCommandsFile];
                v20 = doStringsMatch(simulatorCommandsFile, simulatorCommandsFile2);
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
  autoActivityCheckPeriod = [(SUControllerConfig *)self autoActivityCheckPeriod];
  autoInstallForceMaxWait = [(SUControllerConfig *)self autoInstallForceMaxWait];
  autoInstallWindowBeginHour = [(SUControllerConfig *)self autoInstallWindowBeginHour];
  autoInstallWindowBeginMinute = [(SUControllerConfig *)self autoInstallWindowBeginMinute];
  autoInstallWindowEndHour = [(SUControllerConfig *)self autoInstallWindowEndHour];
  autoInstallWindowEndMinute = [(SUControllerConfig *)self autoInstallWindowEndMinute];
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
  requestedPMV = [(SUControllerConfig *)self requestedPMV];
  if (requestedPMV)
  {
    requestedPMV2 = [(SUControllerConfig *)self requestedPMV];
  }

  else
  {
    requestedPMV2 = @"(default)";
  }

  delayPeriod = [(SUControllerConfig *)self delayPeriod];
  installPhaseOSBackgroundImagePath = [(SUControllerConfig *)self installPhaseOSBackgroundImagePath];
  if (installPhaseOSBackgroundImagePath)
  {
    installPhaseOSBackgroundImagePath2 = [(SUControllerConfig *)self installPhaseOSBackgroundImagePath];
  }

  else
  {
    installPhaseOSBackgroundImagePath2 = @"(default)";
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
  updateMetricContext = [(SUControllerConfig *)self updateMetricContext];
  if (updateMetricContext)
  {
    updateMetricContext2 = [(SUControllerConfig *)self updateMetricContext];
  }

  else
  {
    updateMetricContext2 = @"(default)";
  }

  prerequisiteBuildVersion = [(SUControllerConfig *)self prerequisiteBuildVersion];
  if (prerequisiteBuildVersion)
  {
    prerequisiteBuildVersion2 = [(SUControllerConfig *)self prerequisiteBuildVersion];
  }

  else
  {
    prerequisiteBuildVersion2 = @"(default)";
  }

  prerequisiteProductVersion = [(SUControllerConfig *)self prerequisiteProductVersion];
  v38 = prerequisiteBuildVersion;
  if (prerequisiteProductVersion)
  {
    prerequisiteProductVersion2 = [(SUControllerConfig *)self prerequisiteProductVersion];
  }

  else
  {
    prerequisiteProductVersion2 = @"(default)";
  }

  asReleaseType = [(SUControllerConfig *)self asReleaseType];
  v53 = installPhaseOSBackgroundImagePath;
  if (asReleaseType)
  {
    asReleaseType2 = [(SUControllerConfig *)self asReleaseType];
  }

  else
  {
    asReleaseType2 = @"(default)";
  }

  simulatorCommandsFile = [(SUControllerConfig *)self simulatorCommandsFile];
  v59 = requestedPMV;
  v57 = requestedPMV2;
  v41 = updateMetricContext2;
  v37 = prerequisiteBuildVersion2;
  v34 = prerequisiteProductVersion2;
  if (simulatorCommandsFile)
  {
    simulatorCommandsFile2 = [(SUControllerConfig *)self simulatorCommandsFile];
  }

  else
  {
    simulatorCommandsFile2 = @"(default)";
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

  v29 = [v60 stringWithFormat:@"\nuseSUCore: %@\nVPNOnDemandAsInternal: %@\nPerformAutoScan: %@\nPerformAutoDownloadAndPrepare: %@\nPerformAutoInstall: %@\nAutoAcceptTermsAndConditions: %@\nAutoActivityCheckPeriod: %d minutes\nAutoInstallForceMaxWait: %d minutes\nAutoInstallWindowBegin: %02d:%02d\nAutoInstallWindowEnd: %02d:%02d\nDownloadDocAsset: %@\nIgnoreRamping: %@\nSupervisedMDM: %@\nRequestedPMV: %@\nDelayPeriod: %d days\nInstallPhaseOSBackgroundImagePath: %@\nRestrictToFullReplacement: %@\nAllowSameVersionUpdates: %@\nUpdateMetricContext: %@\nPrerequisiteBuildVersion: %@\nPrerequisiteProductVersion: %@\nAsReleaseType: %@\nsimulatorCommandsFile: %@\nuseSpecifiedInstallWindow: %@\nexpiredSpecifiedAsExpired: %@\nHideIndicationMayReboot: %@\nInternalDefaultsAsExternal: %@\nRequirePrepareSize: %@\nInstallWindowAsDeltas: %@\nmaxOptionalPSUSDownloadSize: %ld", v58, v56, v55, v54, v52, v51, autoActivityCheckPeriod, autoInstallForceMaxWait, autoInstallWindowBeginHour, autoInstallWindowBeginMinute, autoInstallWindowEndHour, autoInstallWindowEndMinute, v42, v40, v39, v57, delayPeriod, installPhaseOSBackgroundImagePath2, v33, v32, v41, v37, v34, asReleaseType2, simulatorCommandsFile2, v24, v25, v26, v27, v28, v3, -[SUControllerConfig maxOptionalPSUSDownloadSize](self, "maxOptionalPSUSDownloadSize")];
  if (simulatorCommandsFile)
  {
  }

  if (asReleaseType)
  {
  }

  if (prerequisiteProductVersion)
  {
  }

  if (v38)
  {
  }

  if (updateMetricContext)
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
  autoActivityCheckPeriod = [(SUControllerConfig *)self autoActivityCheckPeriod];
  autoInstallForceMaxWait = [(SUControllerConfig *)self autoInstallForceMaxWait];
  autoInstallWindowBeginHour = [(SUControllerConfig *)self autoInstallWindowBeginHour];
  autoInstallWindowBeginMinute = [(SUControllerConfig *)self autoInstallWindowBeginMinute];
  autoInstallWindowEndHour = [(SUControllerConfig *)self autoInstallWindowEndHour];
  autoInstallWindowEndMinute = [(SUControllerConfig *)self autoInstallWindowEndMinute];
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
  requestedPMV = [(SUControllerConfig *)self requestedPMV];
  if (requestedPMV)
  {
    requestedPMV2 = [(SUControllerConfig *)self requestedPMV];
  }

  else
  {
    requestedPMV2 = @"!";
  }

  delayPeriod = [(SUControllerConfig *)self delayPeriod];
  installPhaseOSBackgroundImagePath = [(SUControllerConfig *)self installPhaseOSBackgroundImagePath];
  if (installPhaseOSBackgroundImagePath)
  {
    installPhaseOSBackgroundImagePath2 = [(SUControllerConfig *)self installPhaseOSBackgroundImagePath];
  }

  else
  {
    installPhaseOSBackgroundImagePath2 = @"!";
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
  updateMetricContext = [(SUControllerConfig *)self updateMetricContext];
  if (updateMetricContext)
  {
    updateMetricContext2 = [(SUControllerConfig *)self updateMetricContext];
  }

  else
  {
    updateMetricContext2 = @"!";
  }

  prerequisiteBuildVersion = [(SUControllerConfig *)self prerequisiteBuildVersion];
  if (prerequisiteBuildVersion)
  {
    prerequisiteBuildVersion2 = [(SUControllerConfig *)self prerequisiteBuildVersion];
  }

  else
  {
    prerequisiteBuildVersion2 = @"!";
  }

  prerequisiteProductVersion = [(SUControllerConfig *)self prerequisiteProductVersion];
  v38 = prerequisiteBuildVersion;
  if (prerequisiteProductVersion)
  {
    prerequisiteProductVersion2 = [(SUControllerConfig *)self prerequisiteProductVersion];
  }

  else
  {
    prerequisiteProductVersion2 = @"!";
  }

  asReleaseType = [(SUControllerConfig *)self asReleaseType];
  v53 = installPhaseOSBackgroundImagePath;
  if (asReleaseType)
  {
    asReleaseType2 = [(SUControllerConfig *)self asReleaseType];
  }

  else
  {
    asReleaseType2 = @"!";
  }

  simulatorCommandsFile = [(SUControllerConfig *)self simulatorCommandsFile];
  v59 = requestedPMV;
  v57 = requestedPMV2;
  v41 = updateMetricContext2;
  v37 = prerequisiteBuildVersion2;
  v34 = prerequisiteProductVersion2;
  if (simulatorCommandsFile)
  {
    simulatorCommandsFile2 = [(SUControllerConfig *)self simulatorCommandsFile];
  }

  else
  {
    simulatorCommandsFile2 = @"!";
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

  v29 = [v60 stringWithFormat:@"useSUCore:%@, vpnAsInternal:%@, autoScan:%@, autoDownload:%@, autoInstall:%@, autoAccept:%@, activityPeriod:%d, forceMaxWait:%d, windowBegin:%02d:%02d, windowEnd:%02d:%02d, downloadDoc:%@, ignoreRamp:%@, supervisedMDM:%@, requestedPMV:%@, delayPeriod:%d, installPhaseBGImgPath:%@, restrictToFull:%@, allowSame:%@, context:%@, asBuild:%@, asProduct:%@, asRelease:%@, simFile:%@, useInstallWindow:%@, expiredAsExpired:%@, hideMayReboot:%@, asExternal:%@, requirePrepSize:%@, windowDeltas:%@, maxOptionalPSUSDownloadSize:%ld", v58, v56, v55, v54, v52, v51, autoActivityCheckPeriod, autoInstallForceMaxWait, autoInstallWindowBeginHour, autoInstallWindowBeginMinute, autoInstallWindowEndHour, autoInstallWindowEndMinute, v42, v40, v39, v57, delayPeriod, installPhaseOSBackgroundImagePath2, v33, v32, v41, v37, v34, asReleaseType2, simulatorCommandsFile2, v24, v25, v26, v27, v28, v3, -[SUControllerConfig maxOptionalPSUSDownloadSize](self, "maxOptionalPSUSDownloadSize")];
  if (simulatorCommandsFile)
  {
  }

  if (asReleaseType)
  {
  }

  if (prerequisiteProductVersion)
  {
  }

  if (v38)
  {
  }

  if (updateMetricContext)
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

- (id)changeSummary:(int64_t)summary
{
  if ((summary & 0x8000000) != 0)
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

    if ((summary & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = &stru_287B3F250;
    if ((summary & 1) == 0)
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
  if ((summary & 2) != 0)
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
    if ((summary & 4) == 0)
    {
LABEL_15:
      if ((summary & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_55;
    }
  }

  else if ((summary & 4) == 0)
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
  if ((summary & 8) == 0)
  {
LABEL_16:
    if ((summary & 0x10) == 0)
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
  if ((summary & 0x10) == 0)
  {
LABEL_17:
    if ((summary & 0x2000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_59:
  v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|activityPeriod:%d", -[SUControllerConfig autoActivityCheckPeriod](self, "autoActivityCheckPeriod")];
  v37 = [(__CFString *)v5 stringByAppendingString:v36];

  v5 = v37;
  if ((summary & 0x2000) != 0)
  {
LABEL_18:
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|forceMaxWait:%d", -[SUControllerConfig autoInstallForceMaxWait](self, "autoInstallForceMaxWait")];
    v14 = [(__CFString *)v5 stringByAppendingString:v13];

    v5 = v14;
  }

LABEL_19:
  if ((summary & 0x180) != 0)
  {
    v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|windowBegin:%02d:%02d", -[SUControllerConfig autoInstallWindowBeginHour](self, "autoInstallWindowBeginHour"), -[SUControllerConfig autoInstallWindowBeginMinute](self, "autoInstallWindowBeginMinute")];
    v16 = [(__CFString *)v5 stringByAppendingString:v15];

    v5 = v16;
  }

  if ((summary & 0x600) != 0)
  {
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|windowEnd:%02d:%02d", -[SUControllerConfig autoInstallWindowEndHour](self, "autoInstallWindowEndHour"), -[SUControllerConfig autoInstallWindowEndMinute](self, "autoInstallWindowEndMinute")];
    v18 = [(__CFString *)v5 stringByAppendingString:v17];

    v5 = v18;
  }

  if ((summary & 0x400000) != 0)
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
    if ((summary & 0x800000) == 0)
    {
LABEL_25:
      if ((summary & 0x10000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_69;
    }
  }

  else if ((summary & 0x800000) == 0)
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
  if ((summary & 0x10000000) == 0)
  {
LABEL_26:
    if ((summary & 0x20000000) == 0)
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
  if ((summary & 0x20000000) == 0)
  {
LABEL_27:
    if ((summary & 0x40000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_79;
  }

LABEL_73:
  v50 = objc_alloc(MEMORY[0x277CCACA8]);
  requestedPMV = [(SUControllerConfig *)self requestedPMV];
  if (requestedPMV)
  {
    requestedPMV2 = [(SUControllerConfig *)self requestedPMV];
  }

  else
  {
    requestedPMV2 = @"!";
  }

  v53 = [v50 initWithFormat:@"|requestedPMV:%@", requestedPMV2];
  v54 = [(__CFString *)v5 stringByAppendingString:v53];

  if (requestedPMV)
  {
  }

  v5 = v54;
  if ((summary & 0x40000000) == 0)
  {
LABEL_28:
    if ((summary & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_80;
  }

LABEL_79:
  v55 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"|delayPeriod:%d", -[SUControllerConfig delayPeriod](self, "delayPeriod")];
  v56 = [(__CFString *)v5 stringByAppendingString:v55];

  v5 = v56;
  if ((summary & 0x80000000) == 0)
  {
LABEL_29:
    if ((summary & 0x20) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_86;
  }

LABEL_80:
  v57 = objc_alloc(MEMORY[0x277CCACA8]);
  installPhaseOSBackgroundImagePath = [(SUControllerConfig *)self installPhaseOSBackgroundImagePath];
  if (installPhaseOSBackgroundImagePath)
  {
    installPhaseOSBackgroundImagePath2 = [(SUControllerConfig *)self installPhaseOSBackgroundImagePath];
  }

  else
  {
    installPhaseOSBackgroundImagePath2 = @"!";
  }

  v60 = [v57 initWithFormat:@"|installPhaseOSBgImgPath:%@", installPhaseOSBackgroundImagePath2];
  v61 = [(__CFString *)v5 stringByAppendingString:v60];

  if (installPhaseOSBackgroundImagePath)
  {
  }

  v5 = v61;
  if ((summary & 0x20) == 0)
  {
LABEL_30:
    if ((summary & 0x40) == 0)
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
  if ((summary & 0x40) == 0)
  {
LABEL_31:
    if ((summary & 0x4000000) == 0)
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
  if ((summary & 0x4000000) == 0)
  {
LABEL_32:
    if ((summary & 0x20000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_100;
  }

LABEL_94:
  v70 = objc_alloc(MEMORY[0x277CCACA8]);
  updateMetricContext = [(SUControllerConfig *)self updateMetricContext];
  if (updateMetricContext)
  {
    updateMetricContext2 = [(SUControllerConfig *)self updateMetricContext];
  }

  else
  {
    updateMetricContext2 = @"!";
  }

  v73 = [v70 initWithFormat:@"|context:%@", updateMetricContext2];
  v74 = [(__CFString *)v5 stringByAppendingString:v73];

  if (updateMetricContext)
  {
  }

  v5 = v74;
  if ((summary & 0x20000) == 0)
  {
LABEL_33:
    if ((summary & 0x40000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_106;
  }

LABEL_100:
  v75 = objc_alloc(MEMORY[0x277CCACA8]);
  prerequisiteBuildVersion = [(SUControllerConfig *)self prerequisiteBuildVersion];
  if (prerequisiteBuildVersion)
  {
    prerequisiteBuildVersion2 = [(SUControllerConfig *)self prerequisiteBuildVersion];
  }

  else
  {
    prerequisiteBuildVersion2 = @"!";
  }

  v78 = [v75 initWithFormat:@"|asBuild:%@", prerequisiteBuildVersion2];
  v79 = [(__CFString *)v5 stringByAppendingString:v78];

  if (prerequisiteBuildVersion)
  {
  }

  v5 = v79;
  if ((summary & 0x40000) == 0)
  {
LABEL_34:
    if ((summary & 0x80000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_112;
  }

LABEL_106:
  v80 = objc_alloc(MEMORY[0x277CCACA8]);
  prerequisiteProductVersion = [(SUControllerConfig *)self prerequisiteProductVersion];
  if (prerequisiteProductVersion)
  {
    prerequisiteProductVersion2 = [(SUControllerConfig *)self prerequisiteProductVersion];
  }

  else
  {
    prerequisiteProductVersion2 = @"!";
  }

  v83 = [v80 initWithFormat:@"|asProduct:%@", prerequisiteProductVersion2];
  v84 = [(__CFString *)v5 stringByAppendingString:v83];

  if (prerequisiteProductVersion)
  {
  }

  v5 = v84;
  if ((summary & 0x80000) == 0)
  {
LABEL_35:
    if ((summary & 0x200000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_118;
  }

LABEL_112:
  v85 = objc_alloc(MEMORY[0x277CCACA8]);
  asReleaseType = [(SUControllerConfig *)self asReleaseType];
  if (asReleaseType)
  {
    asReleaseType2 = [(SUControllerConfig *)self asReleaseType];
  }

  else
  {
    asReleaseType2 = @"!";
  }

  v88 = [v85 initWithFormat:@"|asRelease:%@", asReleaseType2];
  v89 = [(__CFString *)v5 stringByAppendingString:v88];

  if (asReleaseType)
  {
  }

  v5 = v89;
  if ((summary & 0x200000) == 0)
  {
LABEL_36:
    if ((summary & 0x800) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_124;
  }

LABEL_118:
  v90 = objc_alloc(MEMORY[0x277CCACA8]);
  simulatorCommandsFile = [(SUControllerConfig *)self simulatorCommandsFile];
  if (simulatorCommandsFile)
  {
    simulatorCommandsFile2 = [(SUControllerConfig *)self simulatorCommandsFile];
  }

  else
  {
    simulatorCommandsFile2 = @"!";
  }

  v93 = [v90 initWithFormat:@"|simFile:%@", simulatorCommandsFile2];
  v94 = [(__CFString *)v5 stringByAppendingString:v93];

  if (simulatorCommandsFile)
  {
  }

  v5 = v94;
  if ((summary & 0x800) == 0)
  {
LABEL_37:
    if ((summary & 0x100000) == 0)
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
  if ((summary & 0x100000) == 0)
  {
LABEL_38:
    if ((summary & 0x1000) == 0)
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

  v100 = [v99 initWithFormat:@"|expiredAsExpired:%@", v100];
  v102 = [(__CFString *)v5 stringByAppendingString:v100];

  v5 = v102;
  if ((summary & 0x1000) == 0)
  {
LABEL_39:
    if ((summary & 0x2000000) == 0)
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

  v104 = [v103 initWithFormat:@"|hideMayReboot:%@", v104];
  v106 = [(__CFString *)v5 stringByAppendingString:v104];

  v5 = v106;
  if ((summary & 0x2000000) == 0)
  {
LABEL_40:
    if ((summary & 0x4000) == 0)
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

  v108 = [v107 initWithFormat:@"|asExternal:%@", v108];
  v110 = [(__CFString *)v5 stringByAppendingString:v108];

  v5 = v110;
  if ((summary & 0x4000) == 0)
  {
LABEL_41:
    if ((summary & 0x8000) == 0)
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

  v112 = [v111 initWithFormat:@"|requirePrepSize:%@", v112];
  v114 = [(__CFString *)v5 stringByAppendingString:v112];

  v5 = v114;
  if ((summary & 0x8000) == 0)
  {
LABEL_42:
    if ((summary & 0x100000000) == 0)
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

  v116 = [v115 initWithFormat:@"|windowDeltas:%@", v116];
  v118 = [(__CFString *)v5 stringByAppendingString:v116];

  v5 = v118;
  if ((summary & 0x100000000) == 0)
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

- (BOOL)_loadBooleanFromDefaults:(id)defaults usingDefault:(BOOL)default isStoredInverted:(BOOL)inverted
{
  invertedCopy = inverted;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(defaults, @"com.apple.SUController", &keyExistsAndHasValidFormat);
  v8 = AppBooleanValue != 0;
  if (invertedCopy)
  {
    v8 = AppBooleanValue == 0;
  }

  if (keyExistsAndHasValidFormat)
  {
    return v8;
  }

  else
  {
    return default;
  }
}

- (int64_t)_loadBooleanFromDefaults:(id)defaults releaseType:(int64_t)type externalDefault:(BOOL)default internalDefault:(BOOL)internalDefault isStoredInverted:(BOOL)inverted
{
  invertedCopy = inverted;
  internalDefaultCopy = internalDefault;
  defaultCopy = default;
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(defaults, @"com.apple.SUController", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v13 = AppBooleanValue != 0;
    if (invertedCopy)
    {
      return AppBooleanValue == 0;
    }
  }

  else if ((type - 3) < 0xFFFFFFFFFFFFFFFELL || self->_internalDefaultsAsExternal)
  {
    return defaultCopy;
  }

  else
  {
    return internalDefaultCopy;
  }

  return v13;
}

- (int64_t)_loadIntegerFromDefaults:(id)defaults usingDefault:(int64_t)default withLimit:(int64_t)limit
{
  defaultsCopy = defaults;
  v9 = CFPreferencesCopyAppValue(defaultsCopy, @"com.apple.SUController");
  v10 = v9;
  if (v9)
  {
    default = -[SUControllerConfig _limitedInteger:checkingValue:forKey:withLimit:](self, "_limitedInteger:checkingValue:forKey:withLimit:", @"load", [v9 intValue], defaultsCopy, limit);
  }

  return default;
}

- (int64_t)_loadIntegerFromDefaults:(id)defaults releaseType:(int64_t)type externalDefault:(int64_t)default internalDefault:(int64_t)internalDefault withLimit:(int64_t)limit
{
  defaultsCopy = defaults;
  v13 = CFPreferencesCopyAppValue(defaultsCopy, @"com.apple.SUController");
  v14 = v13;
  if (v13)
  {
    internalDefaultCopy = -[SUControllerConfig _limitedInteger:checkingValue:forKey:withLimit:](self, "_limitedInteger:checkingValue:forKey:withLimit:", @"load", [v13 intValue], defaultsCopy, limit);
  }

  else if ((type - 3) < 0xFFFFFFFFFFFFFFFELL || self->_internalDefaultsAsExternal)
  {
    internalDefaultCopy = default;
  }

  else
  {
    internalDefaultCopy = internalDefault;
  }

  return internalDefaultCopy;
}

- (id)_copyStringFromDefaults:(id)defaults usingDefault:(id)default
{
  defaultCopy = default;
  v6 = CFPreferencesCopyAppValue(defaults, @"com.apple.SUController");
  v7 = v6;
  if (defaultCopy && !v6)
  {
    v7 = [defaultCopy copy];
  }

  return v7;
}

- (BOOL)_storeBooleanToDefaults:(id)defaults toValue:(BOOL)value isStoredInverted:(BOOL)inverted
{
  if (value != inverted)
  {
    v6 = @"true";
  }

  else
  {
    v6 = @"false";
  }

  CFPreferencesSetAppValue(defaults, v6, @"com.apple.SUController");
  return value;
}

- (int64_t)_storeIntegerToDefaults:(id)defaults toValue:(int64_t)value
{
  defaultsCopy = defaults;
  value = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", value];
  if (value)
  {
    CFPreferencesSetAppValue(defaultsCopy, value, @"com.apple.SUController");
  }

  return value;
}

- (id)_storeStringToDefaults:(id)defaults toValue:(id)value
{
  valueCopy = value;
  CFPreferencesSetAppValue(defaults, valueCopy, @"com.apple.SUController");

  return valueCopy;
}

- (int64_t)_decodeInteger:(id)integer forKey:(id)key withLimit:(int64_t)limit
{
  keyCopy = key;
  v9 = -[SUControllerConfig _limitedInteger:checkingValue:forKey:withLimit:](self, "_limitedInteger:checkingValue:forKey:withLimit:", @"decode", [integer decodeIntegerForKey:keyCopy], keyCopy, limit);

  return v9;
}

- (int64_t)_limitedInteger:(id)integer checkingValue:(int64_t)value forKey:(id)key withLimit:(int64_t)limit
{
  integerCopy = integer;
  keyCopy = key;
  if (value < 0)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    value = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"attempt to %@ %@ to negative value(%ld) - using value of 0", integerCopy, keyCopy, value];
    [mEMORY[0x277D64428] trackAnomaly:@"[CONFIG]" forReason:value withResult:8102 withError:0];
    limit = 0;
    goto LABEL_6;
  }

  if (limit && value > limit)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    value = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"attempt to %@ %@ to over-limit value(%ld) - using value of %ld", integerCopy, keyCopy, value, limit];
    [mEMORY[0x277D64428] trackAnomaly:@"[CONFIG]" forReason:value withResult:8102 withError:0];
LABEL_6:

    value = limit;
  }

  return value;
}

- (BOOL)_allowedToTurnOffAutoScan
{
  mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
  deviceClass = [mEMORY[0x277D64418] deviceClass];
  v4 = [deviceClass isEqualToString:@"AppleTV"];

  return v4;
}

@end