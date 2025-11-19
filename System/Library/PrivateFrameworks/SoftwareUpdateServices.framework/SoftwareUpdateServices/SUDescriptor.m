@interface SUDescriptor
- (BOOL)_hasValue:(id)a3;
- (BOOL)granularlyRamped;
- (BOOL)isEqual:(id)a3;
- (BOOL)isRelevantToDeclaration:(id)a3;
- (BOOL)isValidDescriptor;
- (BOOL)matchesDescriptor:(id)a3 comparisonFlags:(unint64_t)a4 reason:(id *)a5;
- (BOOL)rampEnabled;
- (BOOL)releasedBefore:(double)a3;
- (NSString)productSystemName;
- (NSString)publisher;
- (NSString)splatComboBuildVersion;
- (SUDescriptor)init;
- (SUDescriptor)initWithCoder:(id)a3;
- (id)_buildCompareKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)updateTypeName;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUDescriptor

- (BOOL)isRelevantToDeclaration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 buildVersionString];

    if (v6)
    {
      v7 = [v5 buildVersionString];
      v8 = [(SUDescriptor *)self splatComboBuildVersion];
      if ([v7 isEqualToString:v8])
      {
        v9 = 1;
      }

      else
      {
        v11 = [v5 buildVersionString];
        v12 = [(SUDescriptor *)self productBuildVersion];
        v9 = [v11 isEqualToString:v12];
      }

      goto LABEL_9;
    }

    v10 = [v5 versionString];

    if (v10)
    {
      v7 = [v5 versionString];
      v8 = [(SUDescriptor *)self productVersion];
      v9 = [v7 isEqualToString:v8];
LABEL_9:

      goto LABEL_10;
    }
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (BOOL)releasedBefore:(double)a3
{
  v4 = [(SUDescriptor *)self releaseDate];
  [v4 timeIntervalSinceNow];
  v6 = -v5;

  return v6 >= a3;
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

- (SUDescriptor)initWithCoder:(id)a3
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SUDescriptor *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"publisher"];
    [(SUDescriptor *)v5 setPublisher:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productSystemName"];
    [(SUDescriptor *)v5 setProductSystemName:v7];

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productVersion"];
    [(SUDescriptor *)v5 setProductVersion:v8];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productVersionExtra"];
    [(SUDescriptor *)v5 setProductVersionExtra:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productBuildVersion"];
    [(SUDescriptor *)v5 setProductBuildVersion:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prerequisiteBuild"];
    [(SUDescriptor *)v5 setPrerequisiteBuild:v11];

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prerequisiteOS"];
    [(SUDescriptor *)v5 setPrerequisiteOS:v12];

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"releaseType"];
    [(SUDescriptor *)v5 setReleaseType:v13];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadSize"];
    -[SUDescriptor setDownloadSize:](v5, "setDownloadSize:", [v14 unsignedLongLongValue]);

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unarchiveSize"];
    -[SUDescriptor _setUnarchiveSize:](v5, "_setUnarchiveSize:", [v15 unsignedLongLongValue]);

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"msuPrepareSize"];
    -[SUDescriptor _setMsuPrepareSize:](v5, "_setMsuPrepareSize:", [v16 unsignedLongLongValue]);

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"installationSize"];
    -[SUDescriptor setInstallationSize:](v5, "setInstallationSize:", [v17 unsignedLongLongValue]);

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minimumSystemPartitionsize"];
    -[SUDescriptor setMinimumSystemPartitionSize:](v5, "setMinimumSystemPartitionSize:", [v18 unsignedLongLongValue]);

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preparationSize"];
    -[SUDescriptor setPreparationSize:](v5, "setPreparationSize:", [v19 unsignedLongLongValue]);

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalRequiredFreeSpace"];
    -[SUDescriptor setTotalRequiredFreeSpace:](v5, "setTotalRequiredFreeSpace:", [v20 unsignedLongLongValue]);

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalSnapshotRequiredFreeSpace"];
    -[SUDescriptor setTotalSnapshotRequiredFreeSpace:](v5, "setTotalSnapshotRequiredFreeSpace:", [v21 unsignedLongLongValue]);

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preSUStagingRequiredSize"];
    -[SUDescriptor setPreSUStagingRequiredSize:](v5, "setPreSUStagingRequiredSize:", [v22 unsignedLongLongValue]);

    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preSUStagingOptionalSize"];
    -[SUDescriptor setPreSUStagingOptionalSize:](v5, "setPreSUStagingOptionalSize:", [v23 unsignedLongLongValue]);

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"minFreeSpacePostStageOptionalAssets"];
    -[SUDescriptor setMinFreeSpacePostStageOptionalAssets:](v5, "setMinFreeSpacePostStageOptionalAssets:", [v24 unsignedLongLongValue]);

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"unentitledReserveAmount"];
    -[SUDescriptor setUnentitledReserveAmount:](v5, "setUnentitledReserveAmount:", [v25 unsignedLongLongValue]);

    -[SUDescriptor setUpdateType:](v5, "setUpdateType:", [v4 decodeIntForKey:@"updateType"]);
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"documentation"];
    [(SUDescriptor *)v5 setDocumentation:v26];

    -[SUDescriptor setAutoDownloadAllowableForCellular:](v5, "setAutoDownloadAllowableForCellular:", [v4 decodeBoolForKey:@"autoDownloadAllowableForCellular"]);
    -[SUDescriptor setDownloadableOverCellular:](v5, "setDownloadableOverCellular:", [v4 decodeBoolForKey:@"downloadableOverCellular"]);
    -[SUDescriptor setDownloadable:](v5, "setDownloadable:", [v4 decodeBoolForKey:@"downloadable"]);
    -[SUDescriptor _setStreamingZipCapable:](v5, "_setStreamingZipCapable:", [v4 decodeBoolForKey:@"streamingZipCapable"]);
    -[SUDescriptor _setDisableSiriVoiceDeletion:](v5, "_setDisableSiriVoiceDeletion:", [v4 decodeBoolForKey:@"disableSiriVoiceDeletion"]);
    -[SUDescriptor _setDisableCDLevel4:](v5, "_setDisableCDLevel4:", [v4 decodeBoolForKey:@"disableCDLevel4"]);
    -[SUDescriptor _setDisableAppDemotion:](v5, "_setDisableAppDemotion:", [v4 decodeBoolForKey:@"disableAppDemotion"]);
    -[SUDescriptor _setDisableMASuspension:](v5, "_setDisableMASuspension:", [v4 decodeBoolForKey:@"disableMASuspension"]);
    -[SUDescriptor _setDisableInstallTonight:](v5, "_setDisableInstallTonight:", [v4 decodeBoolForKey:@"disableInstallTonight"]);
    -[SUDescriptor setRampEnabled:](v5, "setRampEnabled:", [v4 decodeBoolForKey:@"rampEnabled"]);
    -[SUDescriptor setGranularlyRamped:](v5, "setGranularlyRamped:", [v4 decodeBoolForKey:@"granularlyRamped"]);
    -[SUDescriptor setCriticalOutOfBoxOnly:](v5, "setCriticalOutOfBoxOnly:", [v4 decodeBoolForKey:@"criticalOutOfBoxOnly"]);
    -[SUDescriptor setAutoUpdateEnabled:](v5, "setAutoUpdateEnabled:", [v4 decodeBoolForKey:@"autoUpdateEnabled"]);
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setupCritical"];
    [(SUDescriptor *)v5 setSetupCritical:v27];

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"criticalDownloadPolicy"];
    [(SUDescriptor *)v5 setCriticalDownloadPolicy:v28];

    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SEPDigest"];
    [(SUDescriptor *)v5 setSEPDigest:v29];

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RSEPDigest"];
    [(SUDescriptor *)v5 setRSEPDigest:v30];

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SEPTBMDigest"];
    [(SUDescriptor *)v5 setSEPTBMDigest:v31];

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RSEPTBMDigest"];
    [(SUDescriptor *)v5 setRSEPTBMDigest:v32];

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"releaseDate"];
    [(SUDescriptor *)v5 setReleaseDate:v33];

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MDMDelayInterval"];
    -[SUDescriptor setMdmDelayInterval:](v5, "setMdmDelayInterval:", [v34 unsignedLongLongValue]);

    v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetID"];
    [(SUDescriptor *)v5 setAssetID:v35];

    -[SUDescriptor setHideInstallAlert:](v5, "setHideInstallAlert:", [v4 decodeBoolForKey:@"hideInstallAlert"]);
    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"audienceType"];
    -[SUDescriptor setAudienceType:](v5, "setAudienceType:", [v36 unsignedLongLongValue]);

    v37 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferenceType"];
    -[SUDescriptor setPreferenceType:](v5, "setPreferenceType:", [v37 unsignedLongLongValue]);

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"upgradeType"];
    -[SUDescriptor setUpgradeType:](v5, "setUpgradeType:", [v38 unsignedLongLongValue]);

    -[SUDescriptor setPromoteAlternateUpdate:](v5, "setPromoteAlternateUpdate:", [v4 decodeBoolForKey:@"promoteAlternateUpdate"]);
    -[SUDescriptor setIsSplatOnly:](v5, "setIsSplatOnly:", [v4 decodeBoolForKey:@"isSplatOnly"]);
    v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"humanReadableUpdateName"];
    [(SUDescriptor *)v5 setHumanReadableUpdateName:v39];

    -[SUDescriptor setMandatoryUpdateEligible:](v5, "setMandatoryUpdateEligible:", [v4 decodeBoolForKey:@"MandatoryUpdateEligible"]);
    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MandatoryUpdateVersionMin"];
    [(SUDescriptor *)v5 setMandatoryUpdateVersionMin:v40];

    v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MandatoryUpdateVersionMax"];
    [(SUDescriptor *)v5 setMandatoryUpdateVersionMax:v41];

    -[SUDescriptor setMandatoryUpdateOptional:](v5, "setMandatoryUpdateOptional:", [v4 decodeBoolForKey:@"MandatoryUpdateOptional"]);
    -[SUDescriptor setMandatoryUpdateRestrictedToOutOfTheBox:](v5, "setMandatoryUpdateRestrictedToOutOfTheBox:", [v4 decodeBoolForKey:@"MandatoryUpdateRestrictedToOutOfTheBox"]);
    -[SUDescriptor setForcePasscodeRequired:](v5, "setForcePasscodeRequired:", [v4 decodeBoolForKey:@"ForcePasscodeRequired"]);
    -[SUDescriptor setAllowAutoDownloadOnBattery:](v5, "setAllowAutoDownloadOnBattery:", [v4 decodeBoolForKey:@"AllowAutoDownloadOnBattery"]);
    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AutoDownloadOnBatteryDelay"];
    -[SUDescriptor setAutoDownloadOnBatteryDelay:](v5, "setAutoDownloadOnBatteryDelay:", [v42 unsignedIntValue]);

    v43 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AutoDownloadOnBatteryMinBattery"];
    -[SUDescriptor setAutoDownloadOnBatteryMinBattery:](v5, "setAutoDownloadOnBatteryMinBattery:", [v43 unsignedIntValue]);

    -[SUDescriptor setIsSplombo:](v5, "setIsSplombo:", [v4 decodeBoolForKey:@"isSplombo"]);
    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"splatComboBuildVersion"];
    [(SUDescriptor *)v5 setSplatComboBuildVersion:v44];

    v45 = MEMORY[0x277CBEB98];
    v51 = objc_opt_class();
    v52 = objc_opt_class();
    v53 = objc_opt_class();
    v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:3];
    v47 = [v45 setWithArray:{v46, v51, v52}];

    v48 = [v4 decodeObjectOfClasses:v47 forKey:@"systemPartitionPadding"];
    [(SUDescriptor *)v5 setSystemPartitionPadding:v48];
  }

  v49 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUDescriptor *)self publisher];
  [v4 encodeObject:v5 forKey:@"publisher"];

  v6 = [(SUDescriptor *)self productSystemName];
  [v4 encodeObject:v6 forKey:@"productSystemName"];

  v7 = [(SUDescriptor *)self productVersion];
  [v4 encodeObject:v7 forKey:@"productVersion"];

  v8 = [(SUDescriptor *)self productVersionExtra];
  [v4 encodeObject:v8 forKey:@"productVersionExtra"];

  v9 = [(SUDescriptor *)self productBuildVersion];
  [v4 encodeObject:v9 forKey:@"productBuildVersion"];

  v10 = [(SUDescriptor *)self prerequisiteBuild];
  [v4 encodeObject:v10 forKey:@"prerequisiteBuild"];

  v11 = [(SUDescriptor *)self prerequisiteOS];
  [v4 encodeObject:v11 forKey:@"prerequisiteOS"];

  v12 = [(SUDescriptor *)self releaseType];
  [v4 encodeObject:v12 forKey:@"releaseType"];

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor downloadSize](self, "downloadSize")}];
  [v4 encodeObject:v13 forKey:@"downloadSize"];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor _unarchiveSize](self, "_unarchiveSize")}];
  [v4 encodeObject:v14 forKey:@"unarchiveSize"];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor _msuPrepareSize](self, "_msuPrepareSize")}];
  [v4 encodeObject:v15 forKey:@"msuPrepareSize"];

  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor installationSize](self, "installationSize")}];
  [v4 encodeObject:v16 forKey:@"installationSize"];

  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor minimumSystemPartitionSize](self, "minimumSystemPartitionSize")}];
  [v4 encodeObject:v17 forKey:@"minimumSystemPartitionsize"];

  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor preparationSize](self, "preparationSize")}];
  [v4 encodeObject:v18 forKey:@"preparationSize"];

  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor totalRequiredFreeSpace](self, "totalRequiredFreeSpace")}];
  [v4 encodeObject:v19 forKey:@"totalRequiredFreeSpace"];

  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor totalSnapshotRequiredFreeSpace](self, "totalSnapshotRequiredFreeSpace")}];
  [v4 encodeObject:v20 forKey:@"totalSnapshotRequiredFreeSpace"];

  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor preSUStagingRequiredSize](self, "preSUStagingRequiredSize")}];
  [v4 encodeObject:v21 forKey:@"preSUStagingRequiredSize"];

  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor preSUStagingOptionalSize](self, "preSUStagingOptionalSize")}];
  [v4 encodeObject:v22 forKey:@"preSUStagingOptionalSize"];

  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor minFreeSpacePostStageOptionalAssets](self, "minFreeSpacePostStageOptionalAssets")}];
  [v4 encodeObject:v23 forKey:@"minFreeSpacePostStageOptionalAssets"];

  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor unentitledReserveAmount](self, "unentitledReserveAmount")}];
  [v4 encodeObject:v24 forKey:@"unentitledReserveAmount"];

  [v4 encodeInt:-[SUDescriptor updateType](self forKey:{"updateType"), @"updateType"}];
  v25 = [(SUDescriptor *)self documentation];
  [v4 encodeObject:v25 forKey:@"documentation"];

  [v4 encodeBool:-[SUDescriptor autoDownloadAllowableForCellular](self forKey:{"autoDownloadAllowableForCellular"), @"autoDownloadAllowableForCellular"}];
  [v4 encodeBool:-[SUDescriptor isDownloadableOverCellular](self forKey:{"isDownloadableOverCellular"), @"downloadableOverCellular"}];
  [v4 encodeBool:-[SUDescriptor isDownloadable](self forKey:{"isDownloadable"), @"downloadable"}];
  [v4 encodeBool:-[SUDescriptor _isStreamingZipCapable](self forKey:{"_isStreamingZipCapable"), @"streamingZipCapable"}];
  [v4 encodeBool:-[SUDescriptor siriVoiceDeletionDisabled](self forKey:{"siriVoiceDeletionDisabled"), @"disableSiriVoiceDeletion"}];
  [v4 encodeBool:-[SUDescriptor cdLevel4Disabled](self forKey:{"cdLevel4Disabled"), @"disableCDLevel4"}];
  [v4 encodeBool:-[SUDescriptor appDemotionDisabled](self forKey:{"appDemotionDisabled"), @"disableAppDemotion"}];
  [v4 encodeBool:-[SUDescriptor maSuspensionDisabled](self forKey:{"maSuspensionDisabled"), @"disableMASuspension"}];
  [v4 encodeBool:-[SUDescriptor installTonightDisabled](self forKey:{"installTonightDisabled"), @"disableInstallTonight"}];
  [v4 encodeBool:-[SUDescriptor rampEnabled](self forKey:{"rampEnabled"), @"rampEnabled"}];
  [v4 encodeBool:-[SUDescriptor granularlyRamped](self forKey:{"granularlyRamped"), @"granularlyRamped"}];
  [v4 encodeBool:-[SUDescriptor criticalOutOfBoxOnly](self forKey:{"criticalOutOfBoxOnly"), @"criticalOutOfBoxOnly"}];
  [v4 encodeBool:-[SUDescriptor autoUpdateEnabled](self forKey:{"autoUpdateEnabled"), @"autoUpdateEnabled"}];
  v26 = [(SUDescriptor *)self setupCritical];
  [v4 encodeObject:v26 forKey:@"setupCritical"];

  v27 = [(SUDescriptor *)self criticalDownloadPolicy];
  [v4 encodeObject:v27 forKey:@"criticalDownloadPolicy"];

  v28 = [(SUDescriptor *)self systemPartitionPadding];
  [v4 encodeObject:v28 forKey:@"systemPartitionPadding"];

  v29 = [(SUDescriptor *)self sepDigest];
  [v4 encodeObject:v29 forKey:@"SEPDigest"];

  v30 = [(SUDescriptor *)self rsepDigest];
  [v4 encodeObject:v30 forKey:@"RSEPDigest"];

  v31 = [(SUDescriptor *)self sepTBMDigest];
  [v4 encodeObject:v31 forKey:@"SEPTBMDigest"];

  v32 = [(SUDescriptor *)self rsepTBMDigest];
  [v4 encodeObject:v32 forKey:@"RSEPTBMDigest"];

  v33 = [(SUDescriptor *)self releaseDate];
  [v4 encodeObject:v33 forKey:@"releaseDate"];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor mdmDelayInterval](self, "mdmDelayInterval")}];
  [v4 encodeObject:v34 forKey:@"MDMDelayInterval"];

  v35 = [(SUDescriptor *)self assetID];
  [v4 encodeObject:v35 forKey:@"assetID"];

  [v4 encodeBool:-[SUDescriptor hideInstallAlert](self forKey:{"hideInstallAlert"), @"hideInstallAlert"}];
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor audienceType](self, "audienceType")}];
  [v4 encodeObject:v36 forKey:@"audienceType"];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor preferenceType](self, "preferenceType")}];
  [v4 encodeObject:v37 forKey:@"preferenceType"];

  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUDescriptor upgradeType](self, "upgradeType")}];
  [v4 encodeObject:v38 forKey:@"upgradeType"];

  [v4 encodeBool:-[SUDescriptor promoteAlternateUpdate](self forKey:{"promoteAlternateUpdate"), @"promoteAlternateUpdate"}];
  [v4 encodeBool:-[SUDescriptor isSplatOnly](self forKey:{"isSplatOnly"), @"isSplatOnly"}];
  v39 = [(SUDescriptor *)self humanReadableUpdateName];
  [v4 encodeObject:v39 forKey:@"humanReadableUpdateName"];

  [v4 encodeBool:-[SUDescriptor mandatoryUpdateEligible](self forKey:{"mandatoryUpdateEligible"), @"MandatoryUpdateEligible"}];
  v40 = [(SUDescriptor *)self mandatoryUpdateVersionMin];
  [v4 encodeObject:v40 forKey:@"MandatoryUpdateVersionMin"];

  v41 = [(SUDescriptor *)self mandatoryUpdateVersionMax];
  [v4 encodeObject:v41 forKey:@"MandatoryUpdateVersionMax"];

  [v4 encodeBool:-[SUDescriptor mandatoryUpdateOptional](self forKey:{"mandatoryUpdateOptional"), @"MandatoryUpdateOptional"}];
  [v4 encodeBool:-[SUDescriptor mandatoryUpdateRestrictedToOutOfTheBox](self forKey:{"mandatoryUpdateRestrictedToOutOfTheBox"), @"MandatoryUpdateRestrictedToOutOfTheBox"}];
  [v4 encodeBool:-[SUDescriptor forcePasscodeRequired](self forKey:{"forcePasscodeRequired"), @"ForcePasscodeRequired"}];
  [v4 encodeBool:-[SUDescriptor allowAutoDownloadOnBattery](self forKey:{"allowAutoDownloadOnBattery"), @"AllowAutoDownloadOnBattery"}];
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SUDescriptor autoDownloadOnBatteryDelay](self, "autoDownloadOnBatteryDelay")}];
  [v4 encodeObject:v42 forKey:@"AutoDownloadOnBatteryDelay"];

  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[SUDescriptor autoDownloadOnBatteryMinBattery](self, "autoDownloadOnBatteryMinBattery")}];
  [v4 encodeObject:v43 forKey:@"AutoDownloadOnBatteryMinBattery"];

  [v4 encodeBool:-[SUDescriptor isSplombo](self forKey:{"isSplombo"), @"isSplombo"}];
  v44 = [(SUDescriptor *)self splatComboBuildVersion];
  [v4 encodeObject:v44 forKey:@"splatComboBuildVersion"];
}

- (id)copyWithZone:(_NSZone *)a3
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
    v13 = [v12 overrideSplatComboBuildVersion];
  }

  else
  {
    v13 = self->_splatComboBuildVersion;
  }

  return v13;
}

- (BOOL)isValidDescriptor
{
  v3 = [(SUDescriptor *)self productVersion];
  if ([(SUDescriptor *)self _hasValue:v3])
  {
    v4 = [(SUDescriptor *)self productBuildVersion];
    if ([(SUDescriptor *)self _hasValue:v4])
    {
      v5 = [(SUDescriptor *)self productSystemName];
      if ([(SUDescriptor *)self _hasValue:v5])
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

- (BOOL)_hasValue:(id)a3
{
  if (a3)
  {
    return [a3 isEqual:&stru_287B45B60] ^ 1;
  }

  else
  {
    return 0;
  }
}

- (id)_buildCompareKey
{
  v3 = [(SUDescriptor *)self productVersion];
  v4 = [(SUDescriptor *)self productVersionExtra];

  if (v4)
  {
    v5 = [(SUDescriptor *)self productVersionExtra];
    v6 = [v3 stringByAppendingString:v5];

    v3 = v6;
  }

  v7 = MEMORY[0x277CCACA8];
  v8 = [(SUDescriptor *)self productBuildVersion];
  v9 = [(SUDescriptor *)self updateType];
  v10 = [(SUDescriptor *)self isDownloadable];
  v11 = [(SUDescriptor *)self isSplombo];
  v12 = [(SUDescriptor *)self splatComboBuildVersion];
  v13 = [v7 stringWithFormat:@"%@/%@/%u/%u/%u/%@", v3, v8, v9, v10, v11, v12];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
  {
    v9 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(SUDescriptor *)self _buildCompareKey];
    v8 = [(SUDescriptor *)v6 _buildCompareKey];

    v9 = [v7 isEqualToString:v8];
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

LABEL_7:

  return v9;
}

- (BOOL)matchesDescriptor:(id)a3 comparisonFlags:(unint64_t)a4 reason:(id *)a5
{
  v6 = a4;
  v8 = a3;
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v10 = MEMORY[0x277CCACA8];
      v11 = [(SUDescriptor *)self humanReadableUpdateName];
      v12 = [v9 humanReadableUpdateName];
      v13 = [v10 stringWithFormat:@"%@(SU) and %@(SU) differ in", v11, v12];

      v14 = MEMORY[0x277D64400];
      v15 = [(SUDescriptor *)self prerequisiteBuild];
      v16 = [v9 prerequisiteBuild];
      LOBYTE(v14) = [v14 stringIsEqual:v15 to:v16];

      if (v14)
      {
        v17 = MEMORY[0x277D64400];
        v18 = [(SUDescriptor *)self prerequisiteOS];
        v19 = [v9 prerequisiteOS];
        LOBYTE(v17) = [v17 stringIsEqual:v18 to:v19];

        if (v17)
        {
          v20 = MEMORY[0x277D64400];
          v21 = [(SUDescriptor *)self releaseType];
          v22 = [v9 releaseType];
          LOBYTE(v20) = [v20 stringIsEqual:v21 to:v22];

          if (v20)
          {
            v23 = MEMORY[0x277D64400];
            v24 = [(SUDescriptor *)self productSystemName];
            v25 = [v9 productSystemName];
            LOBYTE(v23) = [v23 stringIsEqual:v24 to:v25];

            if (v23)
            {
              v26 = MEMORY[0x277D64400];
              v27 = [(SUDescriptor *)self productVersion];
              v28 = [v9 productVersion];
              LOBYTE(v26) = [v26 stringIsEqual:v27 to:v28];

              if (v26)
              {
                v29 = MEMORY[0x277D64400];
                v30 = [(SUDescriptor *)self productBuildVersion];
                v31 = [v9 productBuildVersion];
                LOBYTE(v29) = [v29 stringIsEqual:v30 to:v31];

                if (v29)
                {
                  if (v6)
                  {
                    v85 = [(SUDescriptor *)self preSUStagingOptionalSize];
                    if (v85 != [v9 preSUStagingOptionalSize] || (v86 = -[SUDescriptor preSUStagingRequiredSize](self, "preSUStagingRequiredSize"), v86 != objc_msgSend(v9, "preSUStagingRequiredSize")))
                    {
LABEL_48:
                      v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ 'PSUS' ([%llu, %llu] != [%llu, %llu])", v13, -[SUDescriptor preSUStagingOptionalSize](self, "preSUStagingOptionalSize"), objc_msgSend(v9, "preSUStagingOptionalSize"), -[SUDescriptor preSUStagingRequiredSize](self, "preSUStagingRequiredSize"), objc_msgSend(v9, "preSUStagingRequiredSize")];
                      goto LABEL_36;
                    }
                  }

                  if ((v6 & 2) != 0)
                  {
                    v32 = [(SUDescriptor *)self isSplombo];
                    if (v32 != [v9 isSplombo])
                    {
                      goto LABEL_13;
                    }

                    v33 = MEMORY[0x277D64400];
                    v34 = [(SUDescriptor *)self splatComboBuildVersion];
                    v35 = [v9 splatComboBuildVersion];
                    LOBYTE(v33) = [v33 stringIsEqual:v34 to:v35];

                    if ((v33 & 1) == 0)
                    {
LABEL_13:
                      v36 = MEMORY[0x277CCACA8];
                      v37 = [(SUDescriptor *)self isSplombo];
                      v38 = [(SUDescriptor *)self splatComboBuildVersion];
                      v39 = [v9 isSplombo];
                      v40 = [v9 splatComboBuildVersion];
                      v41 = [v36 stringWithFormat:@"%@ 'Splombo' ([%d, %@] != [%d, %@])", v13, v37, v38, v39, v40];

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
                v74 = [(SUDescriptor *)self productBuildVersion];
                v75 = [v9 productBuildVersion];
                [v82 stringWithFormat:@"%@ 'product build version' (%@ != %@)", v13, v74, v75];
                goto LABEL_35;
              }

LABEL_33:
              v81 = MEMORY[0x277CCACA8];
              v74 = [(SUDescriptor *)self productVersion];
              v75 = [v9 productVersion];
              [v81 stringWithFormat:@"%@ 'product version' (%@ != %@)", v13, v74, v75];
              goto LABEL_35;
            }

LABEL_32:
            v80 = MEMORY[0x277CCACA8];
            v74 = [(SUDescriptor *)self productSystemName];
            v75 = [v9 productSystemName];
            [v80 stringWithFormat:@"%@ 'product system name' (%@ != %@)", v13, v74, v75];
            goto LABEL_35;
          }

LABEL_30:
          v78 = MEMORY[0x277CCACA8];
          v74 = [(SUDescriptor *)self releaseType];
          v75 = [v9 releaseType];
          [v78 stringWithFormat:@"%@ 'release type' (%@ != %@)", v13, v74, v75];
          goto LABEL_35;
        }

        v77 = MEMORY[0x277CCACA8];
        v74 = [(SUDescriptor *)self prerequisiteOS];
        v75 = [v9 prerequisiteOS];
        [v77 stringWithFormat:@"%@ 'prerequisite OS version' (%@ != %@)", v13, v74, v75];
        v41 = LABEL_35:;

        goto LABEL_36;
      }

LABEL_25:
      v73 = MEMORY[0x277CCACA8];
      v74 = [(SUDescriptor *)self prerequisiteBuild];
      v75 = [v9 prerequisiteBuild];
      [v73 stringWithFormat:@"%@ 'prerequisite build' (%@ != %@)", v13, v74, v75];
      goto LABEL_35;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
      v44 = MEMORY[0x277CCACA8];
      v45 = [(SUDescriptor *)self humanReadableUpdateName];
      v46 = [v9 humanReadableUpdateName];
      v13 = [v44 stringWithFormat:@"%@(SU) and %@(SUCore) differ in", v45, v46];

      v47 = MEMORY[0x277D64400];
      v48 = [(SUDescriptor *)self prerequisiteBuild];
      v49 = [v9 prerequisiteBuild];
      LOBYTE(v47) = [v47 stringIsEqual:v48 to:v49];

      if (v47)
      {
        v50 = MEMORY[0x277D64400];
        v51 = [(SUDescriptor *)self prerequisiteOS];
        v52 = [v9 prerequisiteOSVersion];
        LOBYTE(v50) = [v50 stringIsEqual:v51 to:v52];

        if ((v50 & 1) == 0)
        {
          v79 = MEMORY[0x277CCACA8];
          v74 = [(SUDescriptor *)self prerequisiteOS];
          v75 = [v9 prerequisiteOSVersion];
          [v79 stringWithFormat:@"%@ 'prerequisite OS version' (%@ != %@)", v13, v74, v75];
          goto LABEL_35;
        }

        v53 = MEMORY[0x277D64400];
        v54 = [(SUDescriptor *)self releaseType];
        v55 = [v9 releaseType];
        LOBYTE(v53) = [v53 stringIsEqual:v54 to:v55];

        if (v53)
        {
          v56 = MEMORY[0x277D64400];
          v57 = [(SUDescriptor *)self productSystemName];
          v58 = [v9 productSystemName];
          LOBYTE(v56) = [v56 stringIsEqual:v57 to:v58];

          if (v56)
          {
            v59 = MEMORY[0x277D64400];
            v60 = [(SUDescriptor *)self productVersion];
            v61 = [v9 productVersion];
            LOBYTE(v59) = [v59 stringIsEqual:v60 to:v61];

            if (v59)
            {
              v62 = MEMORY[0x277D64400];
              v63 = [(SUDescriptor *)self productBuildVersion];
              v64 = [v9 productBuildVersion];
              LOBYTE(v62) = [v62 stringIsEqual:v63 to:v64];

              if (v62)
              {
                if (v6)
                {
                  v87 = [(SUDescriptor *)self preSUStagingOptionalSize];
                  if (v87 != [v9 preSUStagingOptionalSize])
                  {
                    goto LABEL_48;
                  }

                  v88 = [(SUDescriptor *)self preSUStagingRequiredSize];
                  if (v88 != [v9 preSUStagingRequiredSize])
                  {
                    goto LABEL_48;
                  }
                }

                if ((v6 & 2) != 0)
                {
                  v89 = [v9 associatedSplatDescriptor];
                  v90 = v89 != 0;

                  v91 = [v9 associatedSplatDescriptor];
                  v92 = [v91 productBuildVersion];

                  v99 = v90;
                  if (v90 != -[SUDescriptor isSplombo](self, "isSplombo") || (v93 = MEMORY[0x277D64400], -[SUDescriptor splatComboBuildVersion](self, "splatComboBuildVersion"), v94 = objc_claimAutoreleasedReturnValue(), LOBYTE(v93) = [v93 stringIsEqual:v94 to:v92], v94, (v93 & 1) == 0))
                  {
                    v95 = MEMORY[0x277CCACA8];
                    v96 = [(SUDescriptor *)self isSplombo];
                    v97 = [(SUDescriptor *)self splatComboBuildVersion];
                    v41 = [v95 stringWithFormat:@"%@ 'Splombo' ([%d, %@] != [%d, %@])", v13, v96, v97, v99, v92];

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
  if (a5)
  {
    v83 = v41;
    *a5 = v41;
  }

  else if (v41)
  {
    SULogDebug(@"%@", v65, v66, v67, v68, v69, v70, v71, v41);
  }

  return v72;
}

- (unint64_t)hash
{
  v2 = [(SUDescriptor *)self _buildCompareKey];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v67 = MEMORY[0x277CCACA8];
  v76 = [(SUDescriptor *)self publisher];
  v75 = [(SUDescriptor *)self humanReadableUpdateName];
  v74 = [(SUDescriptor *)self productSystemName];
  v73 = [(SUDescriptor *)self productVersion];
  v72 = [(SUDescriptor *)self productVersionExtra];
  v66 = [(SUDescriptor *)self productBuildVersion];
  v65 = [(SUDescriptor *)self prerequisiteBuild];
  v64 = [(SUDescriptor *)self prerequisiteOS];
  v63 = [(SUDescriptor *)self releaseType];
  v62 = [(SUDescriptor *)self downloadSize];
  v61 = [(SUDescriptor *)self _unarchiveSize];
  v60 = [(SUDescriptor *)self _msuPrepareSize];
  v59 = [(SUDescriptor *)self preparationSize];
  v58 = [(SUDescriptor *)self installationSize];
  v57 = [(SUDescriptor *)self preSUStagingRequiredSize];
  v56 = [(SUDescriptor *)self preSUStagingOptionalSize];
  v55 = [(SUDescriptor *)self minFreeSpacePostStageOptionalAssets];
  v54 = [(SUDescriptor *)self unentitledReserveAmount];
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
  v46 = [(SUDescriptor *)self totalRequiredFreeSpace];
  v45 = [(SUDescriptor *)self documentation];
  v44 = [(SUDescriptor *)self siriVoiceDeletionDisabled];
  v43 = [(SUDescriptor *)self cdLevel4Disabled];
  v42 = [(SUDescriptor *)self appDemotionDisabled];
  v41 = [(SUDescriptor *)self maSuspensionDisabled];
  v40 = [(SUDescriptor *)self installTonightDisabled];
  v39 = [(SUDescriptor *)self rampEnabled];
  v38 = [(SUDescriptor *)self granularlyRamped];
  v71 = [(SUDescriptor *)self setupCritical];
  v37 = [(SUDescriptor *)self criticalOutOfBoxOnly];
  v70 = [(SUDescriptor *)self criticalDownloadPolicy];
  v47 = [(SUDescriptor *)self releaseDate];
  v69 = [SUUtility prettyPrintDate:v47];
  v36 = [(SUDescriptor *)self mdmDelayInterval];
  v35 = [(SUDescriptor *)self assetID];
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
  v13 = [(SUDescriptor *)self mandatoryUpdateVersionMin];
  v34 = v13;
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"N/A";
  }

  v24 = v14;
  v15 = [(SUDescriptor *)self mandatoryUpdateVersionMax];
  v32 = v15;
  if (v15)
  {
    v16 = v15;
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

  v21 = [(SUDescriptor *)self autoDownloadOnBatteryDelay];
  v22 = [(SUDescriptor *)self autoDownloadOnBatteryMinBattery];
  if (![(SUDescriptor *)self isSplombo])
  {
    v8 = @"NO";
  }

  v25 = [(SUDescriptor *)self splatComboBuildVersion];
  v68 = [v67 stringWithFormat:@"\n            Publisher: %@\n            HumanReadableUpdateName: %@\n            ProductSystemName: %@\n            ProductVersion: %@\n            ProductVersionExtra: %@\n            ProductBuildVersion: %@\n            PrerequisiteBuild: %@\n            PrerequisiteOS: %@\n            ReleaseType: %@\n            DownloadSize: %llu\n            UnarchiveSize: %llu\n            MSUPrepareSize: %llu\n            PreparationSize: %llu\n            InstallationSize: %llu\n            PreSUStagingRequiredSize: %llu\n            PreSUStagingOptionalSize: %llu\n            MinFreeSpacePostStageOptionalAssets: %llu\n            UnentitledReserveAmount: %llu\n            UpdateType: %@\n            Downloadable: %@\n            DownloadableOverCellular: %@\n            AutoDownloadableOverCellular: %@\n            AutoUpdateEnabled: %@\n            StreamingZipCapable: %@\n            TotalRequiredFreeSpace: %llu\n            Documentation: %@\n            SiriVoiceDeletion: %d\n            CDLevel4DeletionDisabled: %d\n            appDemotionDisabled: %d\n            maSuspensionDisabled: %d\n            installTonightDisabled: %d\n            rampEnabled: %d\n            granularlyRamped: %d\n            setupCritical: %@\n            criticalOutOfBoxOnly: %d\n            criticalDownloadPolicy: %@\n            releaseDate: %@\n            mdmDelayInterval: %llu\n            assetID: %@\n            hideInstallAlert: %@\n            audienceType: %@\n            preferenceType: %@\n            upgradeType: %@\n            promoteAlternateUpdate: %@\n            isSplatOnly: %@\n            mandatoryUpdateEligible: %@\n            mandatoryUpdateVersionMin: %@\n            mandatoryUpdateVersionMax: %@\n            mandatoryUpdateOptional: %@\n            mandatoryUpdateRestrictedToOutOfTheBox: %@\n            forcePasscodeRequired: %@\n            allowAutoDownloadOnBattery: %@\n            autoDownloadOnBatteryDelay: %u\n            autoDownloadOnBatteryMinbattery: %u%%\n            isSplombo: %@\n            splatComboBuildVersion: %@", v76, v75, v74, v73, v72, v66, v65, v64, v63, v62, v61, v60, v59, v58, v57, v56, v55, v54, v53, v52, v51, v50, v49, v48, v46, v45, v44, v43, v42, v41, v40, v39, v38, v71, v37, v70, v69, v36, v35, v33, v31, v30, v29, v28, v27, v26, v24, v16, v17, v18, v19, v20, v21, v22, v8, v25];

  return v68;
}

@end