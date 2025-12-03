@interface SUDescriptor
- (BOOL)_hasValue:(id)value;
- (BOOL)granularlyRamped;
- (BOOL)isEqual:(id)equal;
- (BOOL)isRelevantToDeclaration:(id)declaration;
- (BOOL)isValidDescriptor;
- (BOOL)matchesDescriptor:(id)descriptor comparisonFlags:(unint64_t)flags reason:(id *)reason;
- (BOOL)rampEnabled;
- (BOOL)releasedBefore:(double)before;
- (NSString)productSystemName;
- (NSString)publisher;
- (NSString)splatComboBuildVersion;
- (SUDescriptor)init;
- (SUDescriptor)initWithCoder:(id)coder;
- (id)_buildCompareKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)updateTypeName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUDescriptor

- (BOOL)isRelevantToDeclaration:(id)declaration
{
  declarationCopy = declaration;
  v5 = declarationCopy;
  if (declarationCopy)
  {
    buildVersionString = [declarationCopy buildVersionString];

    if (buildVersionString)
    {
      buildVersionString2 = [v5 buildVersionString];
      splatComboBuildVersion = [(SUDescriptor *)self splatComboBuildVersion];
      if ([buildVersionString2 isEqualToString:splatComboBuildVersion])
      {
        v9 = 1;
      }

      else
      {
        buildVersionString3 = [v5 buildVersionString];
        productBuildVersion = [(SUDescriptor *)self productBuildVersion];
        v9 = [buildVersionString3 isEqualToString:productBuildVersion];
      }

      goto LABEL_9;
    }

    versionString = [v5 versionString];

    if (versionString)
    {
      buildVersionString2 = [v5 versionString];
      splatComboBuildVersion = [(SUDescriptor *)self productVersion];
      v9 = [buildVersionString2 isEqualToString:splatComboBuildVersion];
LABEL_9:

      goto LABEL_10;
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (BOOL)releasedBefore:(double)before
{
  releaseDate = [(SUDescriptor *)self releaseDate];
  [releaseDate timeIntervalSinceNow];
  v6 = -v5;

  return v6 >= before;
}

- (SUDescriptor)init
{
  v14.receiver = self;
  v14.super_class = SUDescriptor;
  v2 = [(SUDescriptor *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_autoDownloadAllowableForCellular = 1;
    *&v2->_downloadable = 257;
    *&v2->_disableInstallTonight = 0;
    v2->_granularlyRamped = 0;
    setupCritical = v2->_setupCritical;
    v2->_setupCritical = 0;

    criticalDownloadPolicy = v3->_criticalDownloadPolicy;
    v3->_criticalDownloadPolicy = 0;

    *&v3->_criticalOutOfBoxOnly = 1;
    prerequisiteBuild = v3->_prerequisiteBuild;
    v3->_prerequisiteBuild = 0;

    prerequisiteOS = v3->_prerequisiteOS;
    v3->_prerequisiteOS = 0;

    assetID = v3->_assetID;
    v3->_assetID = 0;

    *&v3->_hideInstallAlert = 0;
    v3->_isSplatOnly = 0;
    v3->_preferenceType = 0;
    v3->_upgradeType = 0;
    v3->_audienceType = 0;
    humanReadableUpdateName = v3->_humanReadableUpdateName;
    v3->_humanReadableUpdateName = 0;

    v3->_mandatoryUpdateEligible = 0;
    mandatoryUpdateVersionMin = v3->_mandatoryUpdateVersionMin;
    v3->_mandatoryUpdateVersionMin = 0;

    mandatoryUpdateVersionMax = v3->_mandatoryUpdateVersionMax;
    v3->_mandatoryUpdateVersionMax = 0;

    *&v3->_mandatoryUpdateOptional = 0;
    *&v3->_autoDownloadOnBatteryDelay = vdup_n_s32(0x3E7u);
    v3->_isSplombo = 0;
    splatComboBuildVersion = v3->_splatComboBuildVersion;
    v3->_splatComboBuildVersion = 0;
  }

  return v3;
}

- (NSString)publisher
{
  if (self->_publisher)
  {
    return self->_publisher;
  }

  else
  {
    return @"Apple, Inc.";
  }
}

- (NSString)productSystemName
{
  if (self->_productSystemName)
  {
    return self->_productSystemName;
  }

  else
  {
    return @"iOS";
  }
}

- (id)updateTypeName
{
  updateType = self->_updateType;
  if (updateType > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_279CABD68[updateType];
  }
}

- (SUDescriptor)initWithCoder:(id)coder
{
  v54 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(SUDescriptor *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publisher"];
    [(SUDescriptor *)v5 setPublisher:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productSystemName"];
    [(SUDescriptor *)v5 setProductSystemName:v7];

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productVersion"];
    [(SUDescriptor *)v5 setProductVersion:v8];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productVersionExtra"];
    [(SUDescriptor *)v5 setProductVersionExtra:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productBuildVersion"];
    [(SUDescriptor *)v5 setProductBuildVersion:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prerequisiteBuild"];
    [(SUDescriptor *)v5 setPrerequisiteBuild:v11];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prerequisiteOS"];
    [(SUDescriptor *)v5 setPrerequisiteOS:v12];

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseType"];
    [(SUDescriptor *)v5 setReleaseType:v13];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadSize"];
    -[SUDescriptor setDownloadSize:](v5, "setDownloadSize:", [v14 unsignedLongLongValue]);

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unarchiveSize"];
    -[SUDescriptor _setUnarchiveSize:](v5, "_setUnarchiveSize:", [v15 unsignedLongLongValue]);

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"msuPrepareSize"];
    -[SUDescriptor _setMsuPrepareSize:](v5, "_setMsuPrepareSize:", [v16 unsignedLongLongValue]);

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"installationSize"];
    -[SUDescriptor setInstallationSize:](v5, "setInstallationSize:", [v17 unsignedLongLongValue]);

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minimumSystemPartitionsize"];
    -[SUDescriptor setMinimumSystemPartitionSize:](v5, "setMinimumSystemPartitionSize:", [v18 unsignedLongLongValue]);

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preparationSize"];
    -[SUDescriptor setPreparationSize:](v5, "setPreparationSize:", [v19 unsignedLongLongValue]);

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalRequiredFreeSpace"];
    -[SUDescriptor setTotalRequiredFreeSpace:](v5, "setTotalRequiredFreeSpace:", [v20 unsignedLongLongValue]);

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalSnapshotRequiredFreeSpace"];
    -[SUDescriptor setTotalSnapshotRequiredFreeSpace:](v5, "setTotalSnapshotRequiredFreeSpace:", [v21 unsignedLongLongValue]);

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preSUStagingRequiredSize"];
    -[SUDescriptor setPreSUStagingRequiredSize:](v5, "setPreSUStagingRequiredSize:", [v22 unsignedLongLongValue]);

    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preSUStagingOptionalSize"];
    -[SUDescriptor setPreSUStagingOptionalSize:](v5, "setPreSUStagingOptionalSize:", [v23 unsignedLongLongValue]);

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"minFreeSpacePostStageOptionalAssets"];
    -[SUDescriptor setMinFreeSpacePostStageOptionalAssets:](v5, "setMinFreeSpacePostStageOptionalAssets:", [v24 unsignedLongLongValue]);

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"unentitledReserveAmount"];
    -[SUDescriptor setUnentitledReserveAmount:](v5, "setUnentitledReserveAmount:", [v25 unsignedLongLongValue]);

    -[SUDescriptor setUpdateType:](v5, "setUpdateType:", [coderCopy decodeIntForKey:@"updateType"]);
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"documentation"];
    [(SUDescriptor *)v5 setDocumentation:v26];

    -[SUDescriptor setAutoDownloadAllowableForCellular:](v5, "setAutoDownloadAllowableForCellular:", [coderCopy decodeBoolForKey:@"autoDownloadAllowableForCellular"]);
    -[SUDescriptor setDownloadableOverCellular:](v5, "setDownloadableOverCellular:", [coderCopy decodeBoolForKey:@"downloadableOverCellular"]);
    -[SUDescriptor setDownloadable:](v5, "setDownloadable:", [coderCopy decodeBoolForKey:@"downloadable"]);
    -[SUDescriptor _setStreamingZipCapable:](v5, "_setStreamingZipCapable:", [coderCopy decodeBoolForKey:@"streamingZipCapable"]);
    -[SUDescriptor _setDisableSiriVoiceDeletion:](v5, "_setDisableSiriVoiceDeletion:", [coderCopy decodeBoolForKey:@"disableSiriVoiceDeletion"]);
    -[SUDescriptor _setDisableCDLevel4:](v5, "_setDisableCDLevel4:", [coderCopy decodeBoolForKey:@"disableCDLevel4"]);
    -[SUDescriptor _setDisableAppDemotion:](v5, "_setDisableAppDemotion:", [coderCopy decodeBoolForKey:@"disableAppDemotion"]);
    -[SUDescriptor _setDisableMASuspension:](v5, "_setDisableMASuspension:", [coderCopy decodeBoolForKey:@"disableMASuspension"]);
    -[SUDescriptor _setDisableInstallTonight:](v5, "_setDisableInstallTonight:", [coderCopy decodeBoolForKey:@"disableInstallTonight"]);
    -[SUDescriptor setRampEnabled:](v5, "setRampEnabled:", [coderCopy decodeBoolForKey:@"rampEnabled"]);
    -[SUDescriptor setGranularlyRamped:](v5, "setGranularlyRamped:", [coderCopy decodeBoolForKey:@"granularlyRamped"]);
    -[SUDescriptor setCriticalOutOfBoxOnly:](v5, "setCriticalOutOfBoxOnly:", [coderCopy decodeBoolForKey:@"criticalOutOfBoxOnly"]);
    -[SUDescriptor setAutoUpdateEnabled:](v5, "setAutoUpdateEnabled:", [coderCopy decodeBoolForKey:@"autoUpdateEnabled"]);
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setupCritical"];
    [(SUDescriptor *)v5 setSetupCritical:v27];

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"criticalDownloadPolicy"];
    [(SUDescriptor *)v5 setCriticalDownloadPolicy:v28];

    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SEPDigest"];
    [(SUDescriptor *)v5 setSEPDigest:v29];

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RSEPDigest"];
    [(SUDescriptor *)v5 setRSEPDigest:v30];

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SEPTBMDigest"];
    [(SUDescriptor *)v5 setSEPTBMDigest:v31];

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RSEPTBMDigest"];
    [(SUDescriptor *)v5 setRSEPTBMDigest:v32];

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"releaseDate"];
    [(SUDescriptor *)v5 setReleaseDate:v33];

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MDMDelayInterval"];
    -[SUDescriptor setMdmDelayInterval:](v5, "setMdmDelayInterval:", [v34 unsignedLongLongValue]);

    v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetID"];
    [(SUDescriptor *)v5 setAssetID:v35];

    -[SUDescriptor setHideInstallAlert:](v5, "setHideInstallAlert:", [coderCopy decodeBoolForKey:@"hideInstallAlert"]);
    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audienceType"];
    -[SUDescriptor setAudienceType:](v5, "setAudienceType:", [v36 unsignedLongLongValue]);

    v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferenceType"];
    -[SUDescriptor setPreferenceType:](v5, "setPreferenceType:", [v37 unsignedLongLongValue]);

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"upgradeType"];
    -[SUDescriptor setUpgradeType:](v5, "setUpgradeType:", [v38 unsignedLongLongValue]);

    -[SUDescriptor setPromoteAlternateUpdate:](v5, "setPromoteAlternateUpdate:", [coderCopy decodeBoolForKey:@"promoteAlternateUpdate"]);
    -[SUDescriptor setIsSplatOnly:](v5, "setIsSplatOnly:", [coderCopy decodeBoolForKey:@"isSplatOnly"]);
    v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"humanReadableUpdateName"];
    [(SUDescriptor *)v5 setHumanReadableUpdateName:v39];

    -[SUDescriptor setMandatoryUpdateEligible:](v5, "setMandatoryUpdateEligible:", [coderCopy decodeBoolForKey:@"MandatoryUpdateEligible"]);
    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MandatoryUpdateVersionMin"];
    [(SUDescriptor *)v5 setMandatoryUpdateVersionMin:v40];

    v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MandatoryUpdateVersionMax"];
    [(SUDescriptor *)v5 setMandatoryUpdateVersionMax:v41];

    -[SUDescriptor setMandatoryUpdateOptional:](v5, "setMandatoryUpdateOptional:", [coderCopy decodeBoolForKey:@"MandatoryUpdateOptional"]);
    -[SUDescriptor setMandatoryUpdateRestrictedToOutOfTheBox:](v5, "setMandatoryUpdateRestrictedToOutOfTheBox:", [coderCopy decodeBoolForKey:@"MandatoryUpdateRestrictedToOutOfTheBox"]);
    -[SUDescriptor setForcePasscodeRequired:](v5, "setForcePasscodeRequired:", [coderCopy decodeBoolForKey:@"ForcePasscodeRequired"]);
    -[SUDescriptor setAllowAutoDownloadOnBattery:](v5, "setAllowAutoDownloadOnBattery:", [coderCopy decodeBoolForKey:@"AllowAutoDownloadOnBattery"]);
    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AutoDownloadOnBatteryDelay"];
    -[SUDescriptor setAutoDownloadOnBatteryDelay:](v5, "setAutoDownloadOnBatteryDelay:", [v42 unsignedIntValue]);

    v43 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AutoDownloadOnBatteryMinBattery"];
    -[SUDescriptor setAutoDownloadOnBatteryMinBattery:](v5, "setAutoDownloadOnBatteryMinBattery:", [v43 unsignedIntValue]);

    -[SUDescriptor setIsSplombo:](v5, "setIsSplombo:", [coderCopy decodeBoolForKey:@"isSplombo"]);
    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"splatComboBuildVersion"];
    [(SUDescriptor *)v5 setSplatComboBuildVersion:v44];

    v45 = MEMORY[0x277CBEB98];
    v51 = objc_opt_class();
    v52 = objc_opt_class();
    v53 = objc_opt_class();
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:3];
    v47 = [v45 setWithArray:{v46, v51, v52}];

    v48 = [coderCopy decodeObjectOfClasses:v47 forKey:@"systemPartitionPadding"];
    [(SUDescriptor *)v5 setSystemPartitionPadding:v48];
  }

  v49 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  publisher = [(SUDescriptor *)self publisher];
  [coderCopy encodeObject:publisher forKey:@"publisher"];

  productSystemName = [(SUDescriptor *)self productSystemName];
  [coderCopy encodeObject:productSystemName forKey:@"productSystemName"];

  productVersion = [(SUDescriptor *)self productVersion];
  [coderCopy encodeObject:productVersion forKey:@"productVersion"];

  productVersionExtra = [(SUDescriptor *)self productVersionExtra];
  [coderCopy encodeObject:productVersionExtra forKey:@"productVersionExtra"];

  productBuildVersion = [(SUDescriptor *)self productBuildVersion];
  [coderCopy encodeObject:productBuildVersion forKey:@"productBuildVersion"];

  prerequisiteBuild = [(SUDescriptor *)self prerequisiteBuild];
  [coderCopy encodeObject:prerequisiteBuild forKey:@"prerequisiteBuild"];

  prerequisiteOS = [(SUDescriptor *)self prerequisiteOS];
  [coderCopy encodeObject:prerequisiteOS forKey:@"prerequisiteOS"];

  releaseType = [(SUDescriptor *)self releaseType];
  [coderCopy encodeObject:releaseType forKey:@"releaseType"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor downloadSize](self, "downloadSize")}];
  [coderCopy encodeObject:v13 forKey:@"downloadSize"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor _unarchiveSize](self, "_unarchiveSize")}];
  [coderCopy encodeObject:v14 forKey:@"unarchiveSize"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor _msuPrepareSize](self, "_msuPrepareSize")}];
  [coderCopy encodeObject:v15 forKey:@"msuPrepareSize"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor installationSize](self, "installationSize")}];
  [coderCopy encodeObject:v16 forKey:@"installationSize"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor minimumSystemPartitionSize](self, "minimumSystemPartitionSize")}];
  [coderCopy encodeObject:v17 forKey:@"minimumSystemPartitionsize"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor preparationSize](self, "preparationSize")}];
  [coderCopy encodeObject:v18 forKey:@"preparationSize"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor totalRequiredFreeSpace](self, "totalRequiredFreeSpace")}];
  [coderCopy encodeObject:v19 forKey:@"totalRequiredFreeSpace"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor totalSnapshotRequiredFreeSpace](self, "totalSnapshotRequiredFreeSpace")}];
  [coderCopy encodeObject:v20 forKey:@"totalSnapshotRequiredFreeSpace"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor preSUStagingRequiredSize](self, "preSUStagingRequiredSize")}];
  [coderCopy encodeObject:v21 forKey:@"preSUStagingRequiredSize"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor preSUStagingOptionalSize](self, "preSUStagingOptionalSize")}];
  [coderCopy encodeObject:v22 forKey:@"preSUStagingOptionalSize"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor minFreeSpacePostStageOptionalAssets](self, "minFreeSpacePostStageOptionalAssets")}];
  [coderCopy encodeObject:v23 forKey:@"minFreeSpacePostStageOptionalAssets"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor unentitledReserveAmount](self, "unentitledReserveAmount")}];
  [coderCopy encodeObject:v24 forKey:@"unentitledReserveAmount"];

  [coderCopy encodeInt:-[SUDescriptor updateType](self forKey:{"updateType"), @"updateType"}];
  documentation = [(SUDescriptor *)self documentation];
  [coderCopy encodeObject:documentation forKey:@"documentation"];

  [coderCopy encodeBool:-[SUDescriptor autoDownloadAllowableForCellular](self forKey:{"autoDownloadAllowableForCellular"), @"autoDownloadAllowableForCellular"}];
  [coderCopy encodeBool:-[SUDescriptor isDownloadableOverCellular](self forKey:{"isDownloadableOverCellular"), @"downloadableOverCellular"}];
  [coderCopy encodeBool:-[SUDescriptor isDownloadable](self forKey:{"isDownloadable"), @"downloadable"}];
  [coderCopy encodeBool:-[SUDescriptor _isStreamingZipCapable](self forKey:{"_isStreamingZipCapable"), @"streamingZipCapable"}];
  [coderCopy encodeBool:-[SUDescriptor siriVoiceDeletionDisabled](self forKey:{"siriVoiceDeletionDisabled"), @"disableSiriVoiceDeletion"}];
  [coderCopy encodeBool:-[SUDescriptor cdLevel4Disabled](self forKey:{"cdLevel4Disabled"), @"disableCDLevel4"}];
  [coderCopy encodeBool:-[SUDescriptor appDemotionDisabled](self forKey:{"appDemotionDisabled"), @"disableAppDemotion"}];
  [coderCopy encodeBool:-[SUDescriptor maSuspensionDisabled](self forKey:{"maSuspensionDisabled"), @"disableMASuspension"}];
  [coderCopy encodeBool:-[SUDescriptor installTonightDisabled](self forKey:{"installTonightDisabled"), @"disableInstallTonight"}];
  [coderCopy encodeBool:-[SUDescriptor rampEnabled](self forKey:{"rampEnabled"), @"rampEnabled"}];
  [coderCopy encodeBool:-[SUDescriptor granularlyRamped](self forKey:{"granularlyRamped"), @"granularlyRamped"}];
  [coderCopy encodeBool:-[SUDescriptor criticalOutOfBoxOnly](self forKey:{"criticalOutOfBoxOnly"), @"criticalOutOfBoxOnly"}];
  [coderCopy encodeBool:-[SUDescriptor autoUpdateEnabled](self forKey:{"autoUpdateEnabled"), @"autoUpdateEnabled"}];
  setupCritical = [(SUDescriptor *)self setupCritical];
  [coderCopy encodeObject:setupCritical forKey:@"setupCritical"];

  criticalDownloadPolicy = [(SUDescriptor *)self criticalDownloadPolicy];
  [coderCopy encodeObject:criticalDownloadPolicy forKey:@"criticalDownloadPolicy"];

  systemPartitionPadding = [(SUDescriptor *)self systemPartitionPadding];
  [coderCopy encodeObject:systemPartitionPadding forKey:@"systemPartitionPadding"];

  sepDigest = [(SUDescriptor *)self sepDigest];
  [coderCopy encodeObject:sepDigest forKey:@"SEPDigest"];

  rsepDigest = [(SUDescriptor *)self rsepDigest];
  [coderCopy encodeObject:rsepDigest forKey:@"RSEPDigest"];

  sepTBMDigest = [(SUDescriptor *)self sepTBMDigest];
  [coderCopy encodeObject:sepTBMDigest forKey:@"SEPTBMDigest"];

  rsepTBMDigest = [(SUDescriptor *)self rsepTBMDigest];
  [coderCopy encodeObject:rsepTBMDigest forKey:@"RSEPTBMDigest"];

  releaseDate = [(SUDescriptor *)self releaseDate];
  [coderCopy encodeObject:releaseDate forKey:@"releaseDate"];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor mdmDelayInterval](self, "mdmDelayInterval")}];
  [coderCopy encodeObject:v34 forKey:@"MDMDelayInterval"];

  assetID = [(SUDescriptor *)self assetID];
  [coderCopy encodeObject:assetID forKey:@"assetID"];

  [coderCopy encodeBool:-[SUDescriptor hideInstallAlert](self forKey:{"hideInstallAlert"), @"hideInstallAlert"}];
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor audienceType](self, "audienceType")}];
  [coderCopy encodeObject:v36 forKey:@"audienceType"];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor preferenceType](self, "preferenceType")}];
  [coderCopy encodeObject:v37 forKey:@"preferenceType"];

  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor upgradeType](self, "upgradeType")}];
  [coderCopy encodeObject:v38 forKey:@"upgradeType"];

  [coderCopy encodeBool:-[SUDescriptor promoteAlternateUpdate](self forKey:{"promoteAlternateUpdate"), @"promoteAlternateUpdate"}];
  [coderCopy encodeBool:-[SUDescriptor isSplatOnly](self forKey:{"isSplatOnly"), @"isSplatOnly"}];
  humanReadableUpdateName = [(SUDescriptor *)self humanReadableUpdateName];
  [coderCopy encodeObject:humanReadableUpdateName forKey:@"humanReadableUpdateName"];

  [coderCopy encodeBool:-[SUDescriptor mandatoryUpdateEligible](self forKey:{"mandatoryUpdateEligible"), @"MandatoryUpdateEligible"}];
  mandatoryUpdateVersionMin = [(SUDescriptor *)self mandatoryUpdateVersionMin];
  [coderCopy encodeObject:mandatoryUpdateVersionMin forKey:@"MandatoryUpdateVersionMin"];

  mandatoryUpdateVersionMax = [(SUDescriptor *)self mandatoryUpdateVersionMax];
  [coderCopy encodeObject:mandatoryUpdateVersionMax forKey:@"MandatoryUpdateVersionMax"];

  [coderCopy encodeBool:-[SUDescriptor mandatoryUpdateOptional](self forKey:{"mandatoryUpdateOptional"), @"MandatoryUpdateOptional"}];
  [coderCopy encodeBool:-[SUDescriptor mandatoryUpdateRestrictedToOutOfTheBox](self forKey:{"mandatoryUpdateRestrictedToOutOfTheBox"), @"MandatoryUpdateRestrictedToOutOfTheBox"}];
  [coderCopy encodeBool:-[SUDescriptor forcePasscodeRequired](self forKey:{"forcePasscodeRequired"), @"ForcePasscodeRequired"}];
  [coderCopy encodeBool:-[SUDescriptor allowAutoDownloadOnBattery](self forKey:{"allowAutoDownloadOnBattery"), @"AllowAutoDownloadOnBattery"}];
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SUDescriptor autoDownloadOnBatteryDelay](self, "autoDownloadOnBatteryDelay")}];
  [coderCopy encodeObject:v42 forKey:@"AutoDownloadOnBatteryDelay"];

  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SUDescriptor autoDownloadOnBatteryMinBattery](self, "autoDownloadOnBatteryMinBattery")}];
  [coderCopy encodeObject:v43 forKey:@"AutoDownloadOnBatteryMinBattery"];

  [coderCopy encodeBool:-[SUDescriptor isSplombo](self forKey:{"isSplombo"), @"isSplombo"}];
  splatComboBuildVersion = [(SUDescriptor *)self splatComboBuildVersion];
  [coderCopy encodeObject:splatComboBuildVersion forKey:@"splatComboBuildVersion"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setPublisher:self->_publisher];
  [v4 setProductSystemName:self->_productSystemName];
  [v4 setProductVersion:self->_productVersion];
  [v4 setProductVersionExtra:self->_productVersionExtra];
  [v4 setProductBuildVersion:self->_productBuildVersion];
  [v4 setPrerequisiteBuild:self->_prerequisiteBuild];
  [v4 setPrerequisiteOS:self->_prerequisiteOS];
  [v4 setReleaseType:self->_releaseType];
  [v4 setDownloadSize:self->_downloadSize];
  [v4 _setUnarchiveSize:self->_unarchiveSize];
  [v4 _setMsuPrepareSize:self->_msuPrepareSize];
  [v4 setInstallationSize:self->_installationSize];
  [v4 setPreparationSize:self->_preparationSize];
  [v4 setTotalRequiredFreeSpace:self->_totalRequiredFreeSpace];
  [v4 setTotalSnapshotRequiredFreeSpace:self->_totalSnapshotRequiredFreeSpace];
  [v4 setPreSUStagingRequiredSize:self->_preSUStagingRequiredSize];
  [v4 setPreSUStagingOptionalSize:self->_preSUStagingOptionalSize];
  [v4 setMinFreeSpacePostStageOptionalAssets:self->_minFreeSpacePostStageOptionalAssets];
  [v4 setUnentitledReserveAmount:self->_unentitledReserveAmount];
  [v4 setUpdateType:self->_updateType];
  v5 = [(SUDocumentation *)self->_documentation copy];
  [v4 setDocumentation:v5];

  [v4 setAutoDownloadAllowableForCellular:self->_autoDownloadAllowableForCellular];
  [v4 setDownloadableOverCellular:self->_downloadableOverCellular];
  [v4 setDownloadable:self->_downloadable];
  [v4 _setStreamingZipCapable:self->_streamingZipCapable];
  [v4 _setDisableSiriVoiceDeletion:self->_disableSiriVoiceDeletion];
  [v4 _setDisableCDLevel4:self->_disableCDLevel4];
  [v4 _setDisableAppDemotion:self->_disableAppDemotion];
  [v4 _setDisableMASuspension:self->_disableMASuspension];
  [v4 _setDisableInstallTonight:self->_disableInstallTonight];
  [v4 setRampEnabled:self->_rampEnabled];
  [v4 setGranularlyRamped:self->_granularlyRamped];
  [v4 setSetupCritical:self->_setupCritical];
  [v4 setCriticalOutOfBoxOnly:self->_criticalOutOfBoxOnly];
  [v4 setAutoUpdateEnabled:self->_autoUpdateEnabled];
  [v4 setCriticalDownloadPolicy:self->_criticalDownloadPolicy];
  [v4 setMinimumSystemPartitionSize:self->_minimumSystemPartitionSize];
  v6 = [(NSDictionary *)self->_systemPartitionPadding copy];
  [v4 setSystemPartitionPadding:v6];

  [v4 setSEPDigest:self->_sepDigest];
  [v4 setRSEPDigest:self->_rsepDigest];
  [v4 setSEPTBMDigest:self->_sepTBMDigest];
  [v4 setRSEPTBMDigest:self->_rsepTBMDigest];
  [v4 setReleaseDate:self->_releaseDate];
  [v4 setMdmDelayInterval:self->_mdmDelayInterval];
  [v4 setAssetID:self->_assetID];
  [v4 setHideInstallAlert:self->_hideInstallAlert];
  [v4 setAudienceType:self->_audienceType];
  [v4 setPreferenceType:self->_preferenceType];
  [v4 setUpgradeType:self->_upgradeType];
  [v4 setPromoteAlternateUpdate:self->_promoteAlternateUpdate];
  [v4 setIsSplatOnly:self->_isSplatOnly];
  [v4 setHumanReadableUpdateName:self->_humanReadableUpdateName];
  [v4 setMandatoryUpdateEligible:self->_mandatoryUpdateEligible];
  [v4 setMandatoryUpdateVersionMin:self->_mandatoryUpdateVersionMin];
  [v4 setMandatoryUpdateVersionMax:self->_mandatoryUpdateVersionMax];
  [v4 setMandatoryUpdateOptional:self->_mandatoryUpdateOptional];
  [v4 setMandatoryUpdateRestrictedToOutOfTheBox:self->_mandatoryUpdateRestrictedToOutOfTheBox];
  [v4 setForcePasscodeRequired:self->_forcePasscodeRequired];
  [v4 setAllowAutoDownloadOnBattery:self->_allowAutoDownloadOnBattery];
  [v4 setAutoDownloadOnBatteryDelay:self->_autoDownloadOnBatteryDelay];
  [v4 setAutoDownloadOnBatteryMinBattery:self->_autoDownloadOnBatteryMinBattery];
  [v4 setIsSplombo:self->_isSplombo];
  [v4 setSplatComboBuildVersion:self->_splatComboBuildVersion];
  return v4;
}

- (BOOL)rampEnabled
{
  if (+[SUUtility currentReleaseTypeIsInternal](SUUtility, "currentReleaseTypeIsInternal") && (+[SUPreferences sharedInstance](SUPreferences, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 overrideRamping], v3, v4))
  {
    SULogDebug(@"[PREFERENCES] Default set to override ramping to YES", v5, v6, v7, v8, v9, v10, v11, v14);
    return 1;
  }

  else
  {
    return self->_rampEnabled;
  }
}

- (BOOL)granularlyRamped
{
  if (+[SUUtility currentReleaseTypeIsInternal](SUUtility, "currentReleaseTypeIsInternal") && (+[SUPreferences sharedInstance](SUPreferences, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 overrideGranularRamping], v3, v4))
  {
    SULogDebug(@"[PREFERENCES] Default set to override granular ramping to YES", v5, v6, v7, v8, v9, v10, v11, v14);
    return 1;
  }

  else
  {
    return self->_granularlyRamped;
  }
}

- (NSString)splatComboBuildVersion
{
  if (+[SUUtility currentReleaseTypeIsInternal](SUUtility, "currentReleaseTypeIsInternal") && -[SUDescriptor isSplombo](self, "isSplombo") && (+[SUPreferences sharedInstance](SUPreferences, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), [v3 overrideSplatComboBuildVersion], v4 = objc_claimAutoreleasedReturnValue(), v4, v3, v4))
  {
    SULogDebug(@"[PREFERENCES] Default set to override splatComboBuildVersion", v5, v6, v7, v8, v9, v10, v11, v15);
    v12 = +[SUPreferences sharedInstance];
    overrideSplatComboBuildVersion = [v12 overrideSplatComboBuildVersion];
  }

  else
  {
    overrideSplatComboBuildVersion = self->_splatComboBuildVersion;
  }

  return overrideSplatComboBuildVersion;
}

- (BOOL)isValidDescriptor
{
  productVersion = [(SUDescriptor *)self productVersion];
  if ([(SUDescriptor *)self _hasValue:productVersion])
  {
    productBuildVersion = [(SUDescriptor *)self productBuildVersion];
    if ([(SUDescriptor *)self _hasValue:productBuildVersion])
    {
      productSystemName = [(SUDescriptor *)self productSystemName];
      if ([(SUDescriptor *)self _hasValue:productSystemName])
      {
        v6 = [(SUDescriptor *)self updateType]!= 0;
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
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_hasValue:(id)value
{
  if (value)
  {
    return [value isEqual:&stru_287B45B60] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (id)_buildCompareKey
{
  productVersion = [(SUDescriptor *)self productVersion];
  productVersionExtra = [(SUDescriptor *)self productVersionExtra];

  if (productVersionExtra)
  {
    productVersionExtra2 = [(SUDescriptor *)self productVersionExtra];
    v6 = [productVersion stringByAppendingString:productVersionExtra2];

    productVersion = v6;
  }

  v7 = MEMORY[0x277CCACA8];
  productBuildVersion = [(SUDescriptor *)self productBuildVersion];
  updateType = [(SUDescriptor *)self updateType];
  isDownloadable = [(SUDescriptor *)self isDownloadable];
  isSplombo = [(SUDescriptor *)self isSplombo];
  splatComboBuildVersion = [(SUDescriptor *)self splatComboBuildVersion];
  v13 = [v7 stringWithFormat:@"%@/%@/%u/%u/%u/%@", productVersion, productBuildVersion, updateType, isDownloadable, isSplombo, splatComboBuildVersion];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v9 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    _buildCompareKey = [(SUDescriptor *)self _buildCompareKey];
    _buildCompareKey2 = [(SUDescriptor *)v6 _buildCompareKey];

    v9 = [_buildCompareKey isEqualToString:_buildCompareKey2];
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

LABEL_7:

  return v9;
}

- (BOOL)matchesDescriptor:(id)descriptor comparisonFlags:(unint64_t)flags reason:(id *)reason
{
  flagsCopy = flags;
  descriptorCopy = descriptor;
  if (descriptorCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = descriptorCopy;
      v10 = MEMORY[0x277CCACA8];
      humanReadableUpdateName = [(SUDescriptor *)self humanReadableUpdateName];
      humanReadableUpdateName2 = [v9 humanReadableUpdateName];
      v13 = [v10 stringWithFormat:@"%@(SU) and %@(SU) differ in", humanReadableUpdateName, humanReadableUpdateName2];

      v14 = MEMORY[0x277D64400];
      prerequisiteBuild = [(SUDescriptor *)self prerequisiteBuild];
      prerequisiteBuild2 = [v9 prerequisiteBuild];
      LOBYTE(v14) = [v14 stringIsEqual:prerequisiteBuild to:prerequisiteBuild2];

      if (v14)
      {
        v17 = MEMORY[0x277D64400];
        prerequisiteOS = [(SUDescriptor *)self prerequisiteOS];
        prerequisiteOS2 = [v9 prerequisiteOS];
        LOBYTE(v17) = [v17 stringIsEqual:prerequisiteOS to:prerequisiteOS2];

        if (v17)
        {
          v20 = MEMORY[0x277D64400];
          releaseType = [(SUDescriptor *)self releaseType];
          releaseType2 = [v9 releaseType];
          LOBYTE(v20) = [v20 stringIsEqual:releaseType to:releaseType2];

          if (v20)
          {
            v23 = MEMORY[0x277D64400];
            productSystemName = [(SUDescriptor *)self productSystemName];
            productSystemName2 = [v9 productSystemName];
            LOBYTE(v23) = [v23 stringIsEqual:productSystemName to:productSystemName2];

            if (v23)
            {
              v26 = MEMORY[0x277D64400];
              productVersion = [(SUDescriptor *)self productVersion];
              productVersion2 = [v9 productVersion];
              LOBYTE(v26) = [v26 stringIsEqual:productVersion to:productVersion2];

              if (v26)
              {
                v29 = MEMORY[0x277D64400];
                productBuildVersion = [(SUDescriptor *)self productBuildVersion];
                productBuildVersion2 = [v9 productBuildVersion];
                LOBYTE(v29) = [v29 stringIsEqual:productBuildVersion to:productBuildVersion2];

                if (v29)
                {
                  if (flagsCopy)
                  {
                    preSUStagingOptionalSize = [(SUDescriptor *)self preSUStagingOptionalSize];
                    if (preSUStagingOptionalSize != [v9 preSUStagingOptionalSize] || (v86 = -[SUDescriptor preSUStagingRequiredSize](self, "preSUStagingRequiredSize"), v86 != objc_msgSend(v9, "preSUStagingRequiredSize")))
                    {
LABEL_48:
                      v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ 'PSUS' ([%llu, %llu] != [%llu, %llu])", v13, -[SUDescriptor preSUStagingOptionalSize](self, "preSUStagingOptionalSize"), objc_msgSend(v9, "preSUStagingOptionalSize"), -[SUDescriptor preSUStagingRequiredSize](self, "preSUStagingRequiredSize"), objc_msgSend(v9, "preSUStagingRequiredSize")];
                      goto LABEL_36;
                    }
                  }

                  if ((flagsCopy & 2) != 0)
                  {
                    isSplombo = [(SUDescriptor *)self isSplombo];
                    if (isSplombo != [v9 isSplombo])
                    {
                      goto LABEL_13;
                    }

                    v33 = MEMORY[0x277D64400];
                    splatComboBuildVersion = [(SUDescriptor *)self splatComboBuildVersion];
                    splatComboBuildVersion2 = [v9 splatComboBuildVersion];
                    LOBYTE(v33) = [v33 stringIsEqual:splatComboBuildVersion to:splatComboBuildVersion2];

                    if ((v33 & 1) == 0)
                    {
LABEL_13:
                      v36 = MEMORY[0x277CCACA8];
                      isSplombo2 = [(SUDescriptor *)self isSplombo];
                      splatComboBuildVersion3 = [(SUDescriptor *)self splatComboBuildVersion];
                      isSplombo3 = [v9 isSplombo];
                      splatComboBuildVersion4 = [v9 splatComboBuildVersion];
                      v41 = [v36 stringWithFormat:@"%@ 'Splombo' ([%d, %@] != [%d, %@])", v13, isSplombo2, splatComboBuildVersion3, isSplombo3, splatComboBuildVersion4];

LABEL_36:
                      goto LABEL_37;
                    }
                  }

LABEL_24:

                  v41 = 0;
                  v72 = 1;
                  goto LABEL_38;
                }

LABEL_34:
                v82 = MEMORY[0x277CCACA8];
                productBuildVersion3 = [(SUDescriptor *)self productBuildVersion];
                productBuildVersion4 = [v9 productBuildVersion];
                [v82 stringWithFormat:@"%@ 'product build version' (%@ != %@)", v13, productBuildVersion3, productBuildVersion4];
                goto LABEL_35;
              }

LABEL_33:
              v81 = MEMORY[0x277CCACA8];
              productBuildVersion3 = [(SUDescriptor *)self productVersion];
              productBuildVersion4 = [v9 productVersion];
              [v81 stringWithFormat:@"%@ 'product version' (%@ != %@)", v13, productBuildVersion3, productBuildVersion4];
              goto LABEL_35;
            }

LABEL_32:
            v80 = MEMORY[0x277CCACA8];
            productBuildVersion3 = [(SUDescriptor *)self productSystemName];
            productBuildVersion4 = [v9 productSystemName];
            [v80 stringWithFormat:@"%@ 'product system name' (%@ != %@)", v13, productBuildVersion3, productBuildVersion4];
            goto LABEL_35;
          }

LABEL_30:
          v78 = MEMORY[0x277CCACA8];
          productBuildVersion3 = [(SUDescriptor *)self releaseType];
          productBuildVersion4 = [v9 releaseType];
          [v78 stringWithFormat:@"%@ 'release type' (%@ != %@)", v13, productBuildVersion3, productBuildVersion4];
          goto LABEL_35;
        }

        v77 = MEMORY[0x277CCACA8];
        productBuildVersion3 = [(SUDescriptor *)self prerequisiteOS];
        productBuildVersion4 = [v9 prerequisiteOS];
        [v77 stringWithFormat:@"%@ 'prerequisite OS version' (%@ != %@)", v13, productBuildVersion3, productBuildVersion4];
        v41 = LABEL_35:;

        goto LABEL_36;
      }

LABEL_25:
      v73 = MEMORY[0x277CCACA8];
      productBuildVersion3 = [(SUDescriptor *)self prerequisiteBuild];
      productBuildVersion4 = [v9 prerequisiteBuild];
      [v73 stringWithFormat:@"%@ 'prerequisite build' (%@ != %@)", v13, productBuildVersion3, productBuildVersion4];
      goto LABEL_35;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = descriptorCopy;
      v44 = MEMORY[0x277CCACA8];
      humanReadableUpdateName3 = [(SUDescriptor *)self humanReadableUpdateName];
      humanReadableUpdateName4 = [v9 humanReadableUpdateName];
      v13 = [v44 stringWithFormat:@"%@(SU) and %@(SUCore) differ in", humanReadableUpdateName3, humanReadableUpdateName4];

      v47 = MEMORY[0x277D64400];
      prerequisiteBuild3 = [(SUDescriptor *)self prerequisiteBuild];
      prerequisiteBuild4 = [v9 prerequisiteBuild];
      LOBYTE(v47) = [v47 stringIsEqual:prerequisiteBuild3 to:prerequisiteBuild4];

      if (v47)
      {
        v50 = MEMORY[0x277D64400];
        prerequisiteOS3 = [(SUDescriptor *)self prerequisiteOS];
        prerequisiteOSVersion = [v9 prerequisiteOSVersion];
        LOBYTE(v50) = [v50 stringIsEqual:prerequisiteOS3 to:prerequisiteOSVersion];

        if ((v50 & 1) == 0)
        {
          v79 = MEMORY[0x277CCACA8];
          productBuildVersion3 = [(SUDescriptor *)self prerequisiteOS];
          productBuildVersion4 = [v9 prerequisiteOSVersion];
          [v79 stringWithFormat:@"%@ 'prerequisite OS version' (%@ != %@)", v13, productBuildVersion3, productBuildVersion4];
          goto LABEL_35;
        }

        v53 = MEMORY[0x277D64400];
        releaseType3 = [(SUDescriptor *)self releaseType];
        releaseType4 = [v9 releaseType];
        LOBYTE(v53) = [v53 stringIsEqual:releaseType3 to:releaseType4];

        if (v53)
        {
          v56 = MEMORY[0x277D64400];
          productSystemName3 = [(SUDescriptor *)self productSystemName];
          productSystemName4 = [v9 productSystemName];
          LOBYTE(v56) = [v56 stringIsEqual:productSystemName3 to:productSystemName4];

          if (v56)
          {
            v59 = MEMORY[0x277D64400];
            productVersion3 = [(SUDescriptor *)self productVersion];
            productVersion4 = [v9 productVersion];
            LOBYTE(v59) = [v59 stringIsEqual:productVersion3 to:productVersion4];

            if (v59)
            {
              v62 = MEMORY[0x277D64400];
              productBuildVersion5 = [(SUDescriptor *)self productBuildVersion];
              productBuildVersion6 = [v9 productBuildVersion];
              LOBYTE(v62) = [v62 stringIsEqual:productBuildVersion5 to:productBuildVersion6];

              if (v62)
              {
                if (flagsCopy)
                {
                  preSUStagingOptionalSize2 = [(SUDescriptor *)self preSUStagingOptionalSize];
                  if (preSUStagingOptionalSize2 != [v9 preSUStagingOptionalSize])
                  {
                    goto LABEL_48;
                  }

                  preSUStagingRequiredSize = [(SUDescriptor *)self preSUStagingRequiredSize];
                  if (preSUStagingRequiredSize != [v9 preSUStagingRequiredSize])
                  {
                    goto LABEL_48;
                  }
                }

                if ((flagsCopy & 2) != 0)
                {
                  associatedSplatDescriptor = [v9 associatedSplatDescriptor];
                  v90 = associatedSplatDescriptor != 0;

                  associatedSplatDescriptor2 = [v9 associatedSplatDescriptor];
                  productBuildVersion7 = [associatedSplatDescriptor2 productBuildVersion];

                  v99 = v90;
                  if (v90 != -[SUDescriptor isSplombo](self, "isSplombo") || (v93 = MEMORY[0x277D64400], -[SUDescriptor splatComboBuildVersion](self, "splatComboBuildVersion"), v94 = objc_claimAutoreleasedReturnValue(), LOBYTE(v93) = [v93 stringIsEqual:v94 to:productBuildVersion7], v94, (v93 & 1) == 0))
                  {
                    v95 = MEMORY[0x277CCACA8];
                    isSplombo4 = [(SUDescriptor *)self isSplombo];
                    splatComboBuildVersion5 = [(SUDescriptor *)self splatComboBuildVersion];
                    v41 = [v95 stringWithFormat:@"%@ 'Splombo' ([%d, %@] != [%d, %@])", v13, isSplombo4, splatComboBuildVersion5, v99, productBuildVersion7];

                    goto LABEL_36;
                  }
                }

                goto LABEL_24;
              }

              goto LABEL_34;
            }

            goto LABEL_33;
          }

          goto LABEL_32;
        }

        goto LABEL_30;
      }

      goto LABEL_25;
    }

    v76 = MEMORY[0x277CCACA8];
    v98 = objc_opt_class();
    v43 = @"other is '%@'";
    v42 = v76;
  }

  else
  {
    v42 = MEMORY[0x277CCACA8];
    v43 = @"no other descriptor";
  }

  v41 = [v42 stringWithFormat:v43, v98];
LABEL_37:
  v72 = 0;
LABEL_38:
  if (reason)
  {
    v83 = v41;
    *reason = v41;
  }

  else if (v41)
  {
    SULogDebug(@"%@", v65, v66, v67, v68, v69, v70, v71, v41);
  }

  return v72;
}

- (unint64_t)hash
{
  _buildCompareKey = [(SUDescriptor *)self _buildCompareKey];
  v3 = [_buildCompareKey hash];

  return v3;
}

- (id)description
{
  v67 = MEMORY[0x277CCACA8];
  publisher = [(SUDescriptor *)self publisher];
  humanReadableUpdateName = [(SUDescriptor *)self humanReadableUpdateName];
  productSystemName = [(SUDescriptor *)self productSystemName];
  productVersion = [(SUDescriptor *)self productVersion];
  productVersionExtra = [(SUDescriptor *)self productVersionExtra];
  productBuildVersion = [(SUDescriptor *)self productBuildVersion];
  prerequisiteBuild = [(SUDescriptor *)self prerequisiteBuild];
  prerequisiteOS = [(SUDescriptor *)self prerequisiteOS];
  releaseType = [(SUDescriptor *)self releaseType];
  downloadSize = [(SUDescriptor *)self downloadSize];
  _unarchiveSize = [(SUDescriptor *)self _unarchiveSize];
  _msuPrepareSize = [(SUDescriptor *)self _msuPrepareSize];
  preparationSize = [(SUDescriptor *)self preparationSize];
  installationSize = [(SUDescriptor *)self installationSize];
  preSUStagingRequiredSize = [(SUDescriptor *)self preSUStagingRequiredSize];
  preSUStagingOptionalSize = [(SUDescriptor *)self preSUStagingOptionalSize];
  minFreeSpacePostStageOptionalAssets = [(SUDescriptor *)self minFreeSpacePostStageOptionalAssets];
  unentitledReserveAmount = [(SUDescriptor *)self unentitledReserveAmount];
  v53 = SUStringFromUpdateType([(SUDescriptor *)self updateType]);
  if ([(SUDescriptor *)self isDownloadable])
  {
    v3 = @"Yes";
  }

  else
  {
    v3 = @"No";
  }

  v52 = v3;
  if ([(SUDescriptor *)self isDownloadableOverCellular])
  {
    v4 = @"Yes";
  }

  else
  {
    v4 = @"No";
  }

  v51 = v4;
  if ([(SUDescriptor *)self autoDownloadAllowableForCellular])
  {
    v5 = @"Yes";
  }

  else
  {
    v5 = @"No";
  }

  v50 = v5;
  if ([(SUDescriptor *)self autoUpdateEnabled])
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  v49 = v6;
  if ([(SUDescriptor *)self _isStreamingZipCapable])
  {
    v7 = @"Yes";
  }

  else
  {
    v7 = @"No";
  }

  v48 = v7;
  totalRequiredFreeSpace = [(SUDescriptor *)self totalRequiredFreeSpace];
  documentation = [(SUDescriptor *)self documentation];
  siriVoiceDeletionDisabled = [(SUDescriptor *)self siriVoiceDeletionDisabled];
  cdLevel4Disabled = [(SUDescriptor *)self cdLevel4Disabled];
  appDemotionDisabled = [(SUDescriptor *)self appDemotionDisabled];
  maSuspensionDisabled = [(SUDescriptor *)self maSuspensionDisabled];
  installTonightDisabled = [(SUDescriptor *)self installTonightDisabled];
  rampEnabled = [(SUDescriptor *)self rampEnabled];
  granularlyRamped = [(SUDescriptor *)self granularlyRamped];
  setupCritical = [(SUDescriptor *)self setupCritical];
  criticalOutOfBoxOnly = [(SUDescriptor *)self criticalOutOfBoxOnly];
  criticalDownloadPolicy = [(SUDescriptor *)self criticalDownloadPolicy];
  releaseDate = [(SUDescriptor *)self releaseDate];
  v69 = [SUUtility prettyPrintDate:releaseDate];
  mdmDelayInterval = [(SUDescriptor *)self mdmDelayInterval];
  assetID = [(SUDescriptor *)self assetID];
  v8 = @"YES";
  if ([(SUDescriptor *)self hideInstallAlert])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v33 = v9;
  v31 = SUStringFromAudienceType([(SUDescriptor *)self audienceType]);
  v30 = SUStringFromPreferredUpdateType([(SUDescriptor *)self preferenceType]);
  v29 = SUStringFromVersionUpgradeType([(SUDescriptor *)self upgradeType]);
  if ([(SUDescriptor *)self promoteAlternateUpdate])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v28 = v10;
  if ([(SUDescriptor *)self isSplatOnly])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v27 = v11;
  if ([(SUDescriptor *)self mandatoryUpdateEligible])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v26 = v12;
  mandatoryUpdateVersionMin = [(SUDescriptor *)self mandatoryUpdateVersionMin];
  v34 = mandatoryUpdateVersionMin;
  if (mandatoryUpdateVersionMin)
  {
    v14 = mandatoryUpdateVersionMin;
  }

  else
  {
    v14 = @"N/A";
  }

  v24 = v14;
  mandatoryUpdateVersionMax = [(SUDescriptor *)self mandatoryUpdateVersionMax];
  v32 = mandatoryUpdateVersionMax;
  if (mandatoryUpdateVersionMax)
  {
    v16 = mandatoryUpdateVersionMax;
  }

  else
  {
    v16 = @"N/A";
  }

  if ([(SUDescriptor *)self mandatoryUpdateOptional])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  if ([(SUDescriptor *)self mandatoryUpdateRestrictedToOutOfTheBox])
  {
    v18 = @"YES";
  }

  else
  {
    v18 = @"NO";
  }

  if ([(SUDescriptor *)self forcePasscodeRequired])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  if ([(SUDescriptor *)self allowAutoDownloadOnBattery])
  {
    v20 = @"YES";
  }

  else
  {
    v20 = @"NO";
  }

  autoDownloadOnBatteryDelay = [(SUDescriptor *)self autoDownloadOnBatteryDelay];
  autoDownloadOnBatteryMinBattery = [(SUDescriptor *)self autoDownloadOnBatteryMinBattery];
  if (![(SUDescriptor *)self isSplombo])
  {
    v8 = @"NO";
  }

  splatComboBuildVersion = [(SUDescriptor *)self splatComboBuildVersion];
  v68 = [v67 stringWithFormat:@"\n            Publisher: %@\n            HumanReadableUpdateName: %@\n            ProductSystemName: %@\n            ProductVersion: %@\n            ProductVersionExtra: %@\n            ProductBuildVersion: %@\n            PrerequisiteBuild: %@\n            PrerequisiteOS: %@\n            ReleaseType: %@\n            DownloadSize: %llu\n            UnarchiveSize: %llu\n            MSUPrepareSize: %llu\n            PreparationSize: %llu\n            InstallationSize: %llu\n            PreSUStagingRequiredSize: %llu\n            PreSUStagingOptionalSize: %llu\n            MinFreeSpacePostStageOptionalAssets: %llu\n            UnentitledReserveAmount: %llu\n            UpdateType: %@\n            Downloadable: %@\n            DownloadableOverCellular: %@\n            AutoDownloadableOverCellular: %@\n            AutoUpdateEnabled: %@\n            StreamingZipCapable: %@\n            TotalRequiredFreeSpace: %llu\n            Documentation: %@\n            SiriVoiceDeletion: %d\n            CDLevel4DeletionDisabled: %d\n            appDemotionDisabled: %d\n            maSuspensionDisabled: %d\n            installTonightDisabled: %d\n            rampEnabled: %d\n            granularlyRamped: %d\n            setupCritical: %@\n            criticalOutOfBoxOnly: %d\n            criticalDownloadPolicy: %@\n            releaseDate: %@\n            mdmDelayInterval: %llu\n            assetID: %@\n            hideInstallAlert: %@\n            audienceType: %@\n            preferenceType: %@\n            upgradeType: %@\n            promoteAlternateUpdate: %@\n            isSplatOnly: %@\n            mandatoryUpdateEligible: %@\n            mandatoryUpdateVersionMin: %@\n            mandatoryUpdateVersionMax: %@\n            mandatoryUpdateOptional: %@\n            mandatoryUpdateRestrictedToOutOfTheBox: %@\n            forcePasscodeRequired: %@\n            allowAutoDownloadOnBattery: %@\n            autoDownloadOnBatteryDelay: %u\n            autoDownloadOnBatteryMinbattery: %u%%\n            isSplombo: %@\n            splatComboBuildVersion: %@", publisher, humanReadableUpdateName, productSystemName, productVersion, productVersionExtra, productBuildVersion, prerequisiteBuild, prerequisiteOS, releaseType, downloadSize, _unarchiveSize, _msuPrepareSize, preparationSize, installationSize, preSUStagingRequiredSize, preSUStagingOptionalSize, minFreeSpacePostStageOptionalAssets, unentitledReserveAmount, v53, v52, v51, v50, v49, v48, totalRequiredFreeSpace, documentation, siriVoiceDeletionDisabled, cdLevel4Disabled, appDemotionDisabled, maSuspensionDisabled, installTonightDisabled, rampEnabled, granularlyRamped, setupCritical, criticalOutOfBoxOnly, criticalDownloadPolicy, v69, mdmDelayInterval, assetID, v33, v31, v30, v29, v28, v27, v26, v24, v16, v17, v18, v19, v20, autoDownloadOnBatteryDelay, autoDownloadOnBatteryMinBattery, v8, splatComboBuildVersion];

  return v68;
}

@end