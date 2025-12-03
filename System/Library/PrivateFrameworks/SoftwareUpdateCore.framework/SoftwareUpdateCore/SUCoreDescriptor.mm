@interface SUCoreDescriptor
+ (BOOL)isEmergencyUpdate:(id)update;
+ (id)cleanProductVersion:(id)version;
+ (id)nameForDescriptorAudienceType:(int64_t)type;
+ (id)nameForDescriptorPreferredUpdateType:(int64_t)type;
+ (id)nameForDescriptorType:(int64_t)type;
- (BOOL)fullReplacement;
- (BOOL)isEqual:(id)equal;
- (BOOL)notificationEnabled;
- (BOOL)recommendedUpdateApplicable;
- (BOOL)recommendedUpdateEnabled;
- (BOOL)requiresDocumentationReload;
- (BOOL)requiresSoftwareUpdateAssetReload;
- (NSNumber)recommendedUpdateNotificationFrequencyDays;
- (NSString)deviceCompatibilityNotificationBodyString;
- (NSString)deviceCompatibilityNotificationTitleString;
- (NSString)humanReadableMoreInfoLink;
- (NSString)humanReadableUpdateName;
- (NSString)humanReadableUpdateTitle;
- (NSString)humanReadableUpdateVersion;
- (NSString)mandatoryUpdateBodyString;
- (NSString)notificationBodyString;
- (NSString)notificationTitleString;
- (NSString)productSystemName;
- (NSString)publisher;
- (NSString)recommendedUpdateAlertBodyString;
- (NSString)recommendedUpdateMaxOSVersion;
- (NSString)recommendedUpdateMinOSVersion;
- (NSString)recommendedUpdateTitleString;
- (NSString)securityAdvisoryNotificationBodyString;
- (NSString)securityAdvisoryNotificationTitleString;
- (NSURL)safariUpdateContentBundleURL;
- (SUCoreDescriptor)initWithCoder:(id)coder;
- (SUCoreDescriptor)initWithSUAsset:(id)asset releaseDate:(id)date prepareSize:(id)size snapshotPrepareSize:(id)prepareSize applySize:(id)applySize snapshotApplySize:(id)snapshotApplySize defaultValues:(id)values;
- (SUCoreDescriptor)initWithUpdateBrainPath:(id)path updateBundlePath:(id)bundlePath bundleAttributes:(id)attributes descriptorType:(int64_t)type;
- (id)criticalOverrideCellularPolicy;
- (id)description;
- (id)initSemiSplatDescriptor;
- (id)overviewWithMaxValueLength:(unint64_t)length providingSubstitutionMap:(id)map;
- (id)summary;
- (id)updateTypeName;
- (unint64_t)downloadSize;
- (unint64_t)installationSize;
- (unint64_t)installationSnapshotSize;
- (unint64_t)refreshInstallationSize;
- (unint64_t)refreshPrepareSize;
- (unint64_t)refreshTotalRequiredFreeSpace;
- (unint64_t)totalRequiredFreeSpaceHelper:(BOOL)helper;
- (unint64_t)unarchivedSize;
- (void)assignDescriptorAudienceType:(int64_t)type descriptorPreferredUpdateType:(int64_t)updateType assetAudienceUUID:(id)d;
- (void)assignDocumentationFromAsset:(id)asset extendingBundleProperties:(BOOL)properties;
- (void)encodeWithCoder:(id)coder;
- (void)transferNonAssetPropertiesFromDescriptor:(id)descriptor;
@end

@implementation SUCoreDescriptor

- (SUCoreDescriptor)initWithSUAsset:(id)asset releaseDate:(id)date prepareSize:(id)size snapshotPrepareSize:(id)prepareSize applySize:(id)applySize snapshotApplySize:(id)snapshotApplySize defaultValues:(id)values
{
  v168 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  dateCopy = date;
  sizeCopy = size;
  prepareSizeCopy = prepareSize;
  applySizeCopy = applySize;
  snapshotApplySizeCopy = snapshotApplySize;
  valuesCopy = values;
  if (assetCopy)
  {
    sUCoreBorder_attributes = [assetCopy SUCoreBorder_attributes];
    v22 = sUCoreBorder_attributes;
    if (sUCoreBorder_attributes)
    {
      if ([sUCoreBorder_attributes count])
      {
        v162 = sizeCopy;
        v165.receiver = self;
        v165.super_class = SUCoreDescriptor;
        v23 = [(SUCoreDescriptor *)&v165 init];
        v24 = v23;
        if (!v23)
        {
LABEL_60:
          self = v24;
          selfCopy = self;
          sizeCopy = v162;
          goto LABEL_61;
        }

        v23->_descriptorType = 1;
        assetType = [assetCopy assetType];
        v26 = [assetType isEqualToString:@"com.apple.MobileAsset.SFRSoftwareUpdate"];

        if (v26)
        {
          v24->_descriptorType = 3;
        }

        v24->_descriptorAudienceType = 0;
        v24->_preferredUpdateType = 0;
        assetId = [assetCopy assetId];
        assetID = v24->_assetID;
        v24->_assetID = assetId;

        objc_storeStrong(&v24->_bundleAttributes, v22);
        assetType2 = [assetCopy assetType];
        softwareUpdateAssetType = v24->_softwareUpdateAssetType;
        v24->_softwareUpdateAssetType = assetType2;

        documentationAssetType = v24->_documentationAssetType;
        v24->_documentationAssetType = 0;

        absoluteAssetId = [assetCopy absoluteAssetId];
        softwareUpdateAssetAbsoluteID = v24->_softwareUpdateAssetAbsoluteID;
        v24->_softwareUpdateAssetAbsoluteID = absoluteAssetId;

        purpose = [assetCopy purpose];
        softwareUpdateAssetPurpose = v24->_softwareUpdateAssetPurpose;
        v24->_softwareUpdateAssetPurpose = purpose;

        documentationAssetAbsoluteID = v24->_documentationAssetAbsoluteID;
        v24->_documentationAssetAbsoluteID = 0;

        documentationAssetPurpose = v24->_documentationAssetPurpose;
        v24->_documentationAssetPurpose = 0;

        v38 = [v22 safeStringForKey:@"UniqueBuildID"];
        uniqueBuildID = v24->_uniqueBuildID;
        v24->_uniqueBuildID = v38;

        splatInstallDate = v24->_splatInstallDate;
        v24->_splatInstallDate = 0;

        v41 = [v22 safeStringForKey:@"OSVersion"];
        rawProductVersion = v24->_rawProductVersion;
        v24->_rawProductVersion = v41;

        v43 = [SUCoreDescriptor cleanProductVersion:v24->_rawProductVersion];
        productVersion = v24->_productVersion;
        v24->_productVersion = v43;

        v45 = [v22 safeStringForKey:@"Build"];
        productBuildVersion = v24->_productBuildVersion;
        v24->_productBuildVersion = v45;

        v47 = [v22 safeStringForKey:@"ProductVersionExtra"];
        productVersionExtra = v24->_productVersionExtra;
        v24->_productVersionExtra = v47;

        v49 = [v22 safeStringForKey:@"SUProductSystemName"];
        productSystemName = v24->_productSystemName;
        v24->_productSystemName = v49;

        v51 = [v22 safeStringForKey:@"ReleaseType"];
        releaseType = v24->_releaseType;
        v24->_releaseType = v51;

        v53 = [v22 safeStringForKey:@"SUPublisher"];
        publisher = v24->_publisher;
        v24->_publisher = v53;

        v55 = [v22 safeStringForKey:@"RestoreVersion"];
        restoreVersion = v24->_restoreVersion;
        v24->_restoreVersion = v55;

        v57 = [v22 safeStringForKey:@"TargetBridgeUpdateVersion"];
        targetUpdateBridgeVersion = v24->_targetUpdateBridgeVersion;
        v24->_targetUpdateBridgeVersion = v57;

        v59 = [v22 safeStringForKey:@"TargetSFRUpdateVersion"];
        targetUpdateSFRVersion = v24->_targetUpdateSFRVersion;
        v24->_targetUpdateSFRVersion = v59;

        v61 = [v22 safeStringForKey:@"TrainName"];
        trainName = v24->_trainName;
        v24->_trainName = v61;

        p_releaseDate = &v24->_releaseDate;
        releaseDate = v24->_releaseDate;
        v24->_releaseDate = 0;

        v160 = dateCopy;
        v161 = applySizeCopy;
        if (dateCopy)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v65 = dateCopy;
            v66 = *p_releaseDate;
            *p_releaseDate = v65;
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_20;
            }

            v66 = objc_alloc_init(MEMORY[0x277CCA968]);
            [v66 setDateFormat:@"yyyy-MM-dd"];
            v72 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
            [v66 setLocale:v72];
            v73 = [v66 dateFromString:dateCopy];
            if (v73)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                objc_storeStrong(&v24->_releaseDate, v73);
              }
            }
          }
        }

LABEL_20:
        v74 = [v22 safeStringForKey:@"PrerequisiteBuild"];
        prerequisiteBuild = v24->_prerequisiteBuild;
        v24->_prerequisiteBuild = v74;

        v76 = [v22 safeStringForKey:@"PrerequisiteOSVersion"];
        prerequisiteOSVersion = v24->_prerequisiteOSVersion;
        v24->_prerequisiteOSVersion = v76;

        v78 = [v22 safeObjectForKey:@"SupportedDevices" ofClass:objc_opt_class()];
        supportedDevices = v24->_supportedDevices;
        v24->_supportedDevices = v78;

        v24->_suDownloadSize = [v22 safeULLForKey:*MEMORY[0x277D28908] defaultValue:{objc_msgSend(valuesCopy, "safeULLForKey:", *MEMORY[0x277D28908])}];
        v24->_unarchivedSize = [v22 safeULLForKey:*MEMORY[0x277D28920] defaultValue:{objc_msgSend(valuesCopy, "safeULLForKey:", *MEMORY[0x277D28920])}];
        v24->_minimumSystemPartitionSize = [v22 safeULLForKey:@"ActualMinimumSystemPartition" defaultValue:{objc_msgSend(valuesCopy, "safeULLForKey:", @"ActualMinimumSystemPartition"}] << 20;
        v24->_streamingZipCapable = [v22 safeBooleanForKey:*MEMORY[0x277D28910] defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:", *MEMORY[0x277D28910])}];
        v80 = [v22 safeDictionaryForKey:@"SystemPartitionPadding" fromBase:@"updateAsset attributes" withKeyDescription:@"system partition padding"];
        systemPartitionPadding = v24->_systemPartitionPadding;
        v24->_systemPartitionPadding = v80;

        v24->_preSUStagingRequiredSize = 0;
        v24->_preSUStagingOptionalSize = 0;
        v24->_disableReserveSpace = [v22 safeBooleanForKey:@"SUDisableReserveSpace" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:", @"SUDisableReserveSpace"}];
        v24->_centeralizedPurgeableFactor = [v22 safeULForKey:@"SUCenteralizedPurgeableFactor" defaultValue:{objc_msgSend(valuesCopy, "safeULForKey:", @"SUCenteralizedPurgeableFactor"}];
        v24->_pluginPurgeableFactor = [v22 safeULForKey:@"SUPluginPurgeableFactor" defaultValue:{objc_msgSend(valuesCopy, "safeULForKey:", @"SUPluginPurgeableFactor"}];
        v24->_minReserveSpace = [v22 safeULLForKey:@"SUMinReserveSpace" defaultValue:{objc_msgSend(valuesCopy, "safeULLForKey:", @"SUMinReserveSpace"}];
        v24->_maxReserveSpace = [v22 safeULLForKey:@"SUMaxReserveSpace" defaultValue:{objc_msgSend(valuesCopy, "safeULLForKey:", @"SUMaxReserveSpace"}];
        v24->_unentitledReserveAmount = [v22 safeULLForKey:@"SUUnentitledReserveAmount" defaultValue:{objc_msgSend(valuesCopy, "safeULLForKey:", @"SUUnentitledReserveAmount"}];
        v24->_autoDownloadAllowableOverCellular = [v22 safeBooleanForKey:@"AutomaticDownloadOver3G" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:", @"AutomaticDownloadOver3G"}];
        v24->_downloadAllowableOverCellular = [v22 safeBooleanForKey:@"AllowableOverCellular" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:", @"AllowableOverCellular"}];
        v24->_downloadable = [v22 safeBooleanForKey:@"AllowableOTA" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:", @"AllowableOTA"}];
        v24->_disableSiriVoiceDeletion = [v22 safeBooleanForKey:@"SUDisableSiriVoiceDeletion" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:", @"SUDisableSiriVoiceDeletion"}];
        v24->_disableCDLevel4 = [v22 safeBooleanForKey:@"SUDisableCDLevel4" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:", @"SUDisableCDLevel4"}];
        v24->_disableAppDemotion = [v22 safeBooleanForKey:@"SUDisableAppDemotion" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:", @"SUDisableAppDemotion"}];
        v24->_disableMASuspension = [v22 safeBooleanForKey:@"SUDisableMASuspension" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:", @"SUDisableMASuspension"}];
        v24->_disableInstallTonight = [v22 safeBooleanForKey:@"SUInstallTonightEnabled" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:", @"SUInstallTonightEnabled"}] ^ 1;
        v24->_forcePasscodeRequired = [v22 safeBooleanForKey:@"ForcePasscodeRequired" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:", @"ForcePasscodeRequired"}];
        v24->_rampEnabled = [v22 safeBooleanForKey:@"Ramp" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:", @"Ramp"}];
        v24->_granularlyRamped = [v22 safeBooleanForKey:@"GranularlyRamped" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:", @"GranularlyRamped"}];
        v24->_mdmDelayInterval = [v22 safeULLForKey:@"MDMDelayInterval" defaultValue:{objc_msgSend(valuesCopy, "safeULLForKey:", @"MDMDelayInterval"}];
        v24->_autoUpdateEnabled = [v22 safeBooleanForKey:@"AutoUpdate" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:", @"AutoUpdate"}];
        v24->_hideInstallAlert = [v22 safeTriStateForKey:@"__HideInstallAlert" defaultValue:{objc_msgSend(valuesCopy, "safeTriStateForKey:", @"__HideInstallAlert"}];
        v24->_containsSFRContent = [v22 safeBooleanForKey:@"ContainsSFRContent" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:", @"ContainsSFRContent"}];
        v24->_installAlertInterval = [v22 safeULLForKey:@"InstallAlertInterval" defaultValue:{objc_msgSend(valuesCopy, "safeULLForKey:", @"InstallAlertInterval"}];
        v24->_allowAutoDownloadOnBattery = [v22 safeBooleanForKey:@"AllowAutoDownloadOnBattery" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:", @"AllowAutoDownloadOnBattery"}];
        v24->_autoDownloadOnBatteryDelay = [v22 safeULLForKey:@"AllowAutoDownloadOnBatteryDelay" defaultValue:{objc_msgSend(valuesCopy, "safeULLForKey:", @"AllowAutoDownloadOnBatteryDelay"}];
        v24->_autoDownloadOnBatteryMinBattery = [v22 safeULLForKey:@"AutoDownloadOnBatteryMinBattery" defaultValue:{objc_msgSend(valuesCopy, "safeULLForKey:", @"AutoDownloadOnBatteryMinBattery"}];
        v82 = [v22 safeStringForKey:@"SetupCritical"];
        setupCritical = v24->_setupCritical;
        v24->_setupCritical = v82;

        v24->_criticalCellularOverride = [v22 safeBooleanForKey:@"SetupCriticalCellularOverride" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:", @"SetupCriticalCellularOverride"}];
        v24->_criticalOutOfBoxOnly = [v22 safeBooleanForKey:@"SetupCriticalUpdateOutOfBoxOnly" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:", @"SetupCriticalUpdateOutOfBoxOnly"}];
        v84 = [v22 safeStringForKey:@"LastEmergencyBuild"];
        lastEmergencyBuild = v24->_lastEmergencyBuild;
        v24->_lastEmergencyBuild = v84;

        v86 = [v22 safeStringForKey:@"LastEmergencyOSVersion"];
        lastEmergencyOSVersion = v24->_lastEmergencyOSVersion;
        v24->_lastEmergencyOSVersion = v86;

        v88 = [v22 safeObjectForKey:@"MacBuddyEligibleUpdate" ofClass:objc_opt_class()];
        v159 = v88;
        if (v88)
        {
          v89 = v88;
          v24->_mandatoryUpdateEligible = 1;
          v90 = [v88 safeStringForKey:@"VersionMin"];
          mandatoryUpdateVersionMin = v24->_mandatoryUpdateVersionMin;
          v24->_mandatoryUpdateVersionMin = v90;

          v92 = [v89 safeStringForKey:@"VersionMax"];
          mandatoryUpdateVersionMax = v24->_mandatoryUpdateVersionMax;
          v24->_mandatoryUpdateVersionMax = v92;

          v24->_mandatoryUpdateOptional = [v89 safeBooleanForKey:@"Optional"];
          v94 = [v89 safeBooleanForKey:@"RestrictedToOutOfTheBox"];
        }

        else
        {
          v24->_mandatoryUpdateEligible = 0;
          v95 = v24->_mandatoryUpdateVersionMin;
          v24->_mandatoryUpdateVersionMin = 0;

          v96 = v24->_mandatoryUpdateVersionMax;
          v24->_mandatoryUpdateVersionMax = 0;

          v94 = 0;
          v24->_mandatoryUpdateOptional = 0;
        }

        dateCopy = v160;
        v24->_mandatoryUpdateRestrictedToOutOfTheBox = v94;
        v24->_oneShotBuddyDisabled = [v22 safeBooleanForKey:@"DisableOneShotBuddy"];
        v97 = [v22 safeObjectForKey:@"DisableOneShotBuddyBuilds" ofClass:objc_opt_class()];
        oneShotBuddyDisabledBuilds = v24->_oneShotBuddyDisabledBuilds;
        v24->_oneShotBuddyDisabledBuilds = v97;

        v24->_criticalUpdate = [v22 safeBooleanForKey:@"CriticalUpdate" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:", @"CriticalUpdate"}];
        v99 = [v22 safeStringForKey:@"ProductType"];
        productType = v24->_productType;
        v24->_productType = v99;

        v24->_autoInstallDelay = [v22 safeULLForKey:@"AutoInstallDelay" defaultValue:{objc_msgSend(valuesCopy, "safeULLForKey:", @"AutoInstallDelay"}];
        v24->_notifyAfter = [v22 safeBooleanForKey:@"NotifyAfter" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:", @"NotifyAfter"}];
        v101 = [v22 safeStringForKey:@"TargetUpdateBridgeVersion"];
        minimumBridgeVersion = v24->_minimumBridgeVersion;
        v24->_minimumBridgeVersion = v101;

        v24->_disableRosettaUpdates = [v22 safeBooleanForKey:@"DisableRosettaUpdates"];
        v24->_disableRecoveryOSUpdates = [v22 safeBooleanForKey:@"DisableRecoveryOSUpdates"];
        v24->_requireInstallAssistantUpdate = [v22 safeBooleanForKey:@"RequireInstallAssistantUpdate"];
        v103 = [v22 safeDataForKey:@"SEPDigest"];
        sepDigest = v24->_sepDigest;
        v24->_sepDigest = v103;

        v105 = [v22 safeDataForKey:@"SEPTBMDigests"];
        sepTBMDigests = v24->_sepTBMDigests;
        v24->_sepTBMDigests = v105;

        v107 = [v22 safeDataForKey:@"RSEPDigest"];
        rsepDigest = v24->_rsepDigest;
        v24->_rsepDigest = v107;

        v109 = [v22 safeDataForKey:@"RSEPTBMDigests"];
        rsepTBMDigests = v24->_rsepTBMDigests;
        v24->_rsepTBMDigests = v109;

        v111 = [v22 safeStringForKey:@"SUDocumentationID"];
        documentationID = v24->_documentationID;
        v24->_documentationID = v111;

        softwareUpdateURL = v24->_softwareUpdateURL;
        v24->_softwareUpdateURL = 0;

        v114 = [v22 safeStringForKey:@"__BaseURL"];
        if (v114)
        {
          v115 = v114;
          v116 = [v22 safeStringForKey:@"__RelativePath"];

          if (v116)
          {
            v117 = objc_alloc(MEMORY[0x277CCACA8]);
            v118 = [v22 safeStringForKey:@"__BaseURL"];
            v119 = [v22 safeStringForKey:@"__RelativePath"];
            v159 = [v117 initWithFormat:@"%@%@", v118, v119, v159];
            v121 = v24->_softwareUpdateURL;
            v24->_softwareUpdateURL = v159;
          }
        }

        v122 = [v22 safeDataForKey:@"_Measurement"];
        measurement = v24->_measurement;
        v24->_measurement = v122;

        v124 = [v22 safeStringForKey:@"_MeasurementAlgorithm"];
        measurementAlgorithm = v24->_measurementAlgorithm;
        v24->_measurementAlgorithm = v124;

        if (v162)
        {
          mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
          oslog = [mEMORY[0x277D64460] oslog];

          applySizeCopy = v161;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v167 = v162;
            _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "Override descriptor attribute msuPrepareSize with %{public}@", buf, 0xCu);
          }

          v24->_msuPrepareSize = [v162 longLongValue];
          if (prepareSizeCopy)
          {
            mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
            oslog2 = [mEMORY[0x277D64460]2 oslog];

            if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v167 = prepareSizeCopy;
              _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "Override descriptor attribute msuSnapshotPrepareSize with %{public}@", buf, 0xCu);
            }

            v130 = 0;
            v24->_msuSnapshotPrepareSize = [prepareSizeCopy longLongValue];
            if (!v161)
            {
              goto LABEL_45;
            }

LABEL_38:
            mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
            oslog3 = [mEMORY[0x277D64460]3 oslog];

            applySizeCopy = v161;
            if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v167 = v161;
              _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "Override descriptor attribute installationSize with %{public}@", buf, 0xCu);
            }

            v24->_installationSize = [v161 longLongValue];
            if (snapshotApplySizeCopy)
            {
              mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
              oslog4 = [mEMORY[0x277D64460]4 oslog];

              if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v167 = snapshotApplySizeCopy;
                _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "Override descriptor attribute installationSnapshotSize with %{public}@", buf, 0xCu);
              }

              v24->_installationSnapshotSize = [snapshotApplySizeCopy longLongValue];
              applySizeCopy = v161;
            }

            goto LABEL_48;
          }

          v130 = 0;
          if (v161)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v130 = SUCoreBorder_MSUAssetCalculatePrepareSize(v22);
          applySizeCopy = v161;
          if (v130)
          {
            v24->_msuPrepareSize = 0;
            v24->_msuSnapshotPrepareSize = 0;
            mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
            [mEMORY[0x277D64428] trackAnomaly:@"[DESCRIPTOR]" forReason:@"unable to determine prepare size for installation" withResult:8100 withError:v130];

            if (v161)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v24->_msuPrepareSize = 0;
            v24->_msuSnapshotPrepareSize = 0;
            if (v161)
            {
              goto LABEL_38;
            }
          }
        }

LABEL_45:
        v136 = SUCoreBorder_MSUAssetCalculateApplySize(v22);

        if (v136)
        {
          v24->_installationSize = 0;
          v24->_installationSnapshotSize = 0;
          mEMORY[0x277D64428]2 = [MEMORY[0x277D64428] sharedDiag];
          [mEMORY[0x277D64428]2 trackAnomaly:@"[DESCRIPTOR]" forReason:@"unable to determine apply size for installation" withResult:8100 withError:v136];

          v130 = v136;
        }

        else
        {
          v130 = 0;
          v24->_installationSize = 0;
          v24->_installationSnapshotSize = 0;
        }

LABEL_48:
        if ([SUCoreDescriptor isEmergencyUpdate:v22])
        {
          v138 = 3;
        }

        else if (v24->_prerequisiteBuild || v24->_prerequisiteOSVersion)
        {
          v138 = 1;
        }

        else
        {
          v138 = 2;
        }

        v24->_updateType = v138;
        objc_storeStrong(&v24->_softwareUpdateAsset, asset);
        documentationAsset = v24->_documentationAsset;
        v24->_documentationAsset = 0;

        documentation = v24->_documentation;
        v24->_documentation = 0;

        v141 = [objc_alloc(MEMORY[0x277D64470]) initWithProductVersion:v24->_productVersion productBuildVersion:v24->_productBuildVersion releaseType:v24->_releaseType measurement:v24->_measurement measurementAlgorithm:v24->_measurementAlgorithm];
        softwareUpdateAssetIdentifier = v24->_softwareUpdateAssetIdentifier;
        v24->_softwareUpdateAssetIdentifier = v141;

        documentationAssetIdentifier = v24->_documentationAssetIdentifier;
        v24->_documentationAssetIdentifier = 0;

        v24->_promoteAlternateUpdate = [v22 safeBooleanForKey:@"PromoteAlternateUpdate"];
        v24->_enableAlternateAssetAudience = [v22 safeBooleanForKey:@"EnableAlternateAssetAudience"];
        v144 = [v22 safeStringForKey:@"AlternateAssetAudienceUUID"];
        alternateAssetAudienceUUID = v24->_alternateAssetAudienceUUID;
        v24->_alternateAssetAudienceUUID = v144;

        assetAudienceUUID = v24->_assetAudienceUUID;
        v24->_assetAudienceUUID = 0;

        updateBrainPath = v24->_updateBrainPath;
        v24->_updateBrainPath = 0;

        updateBundlePath = v24->_updateBundlePath;
        v24->_updateBundlePath = 0;

        v24->_splatOnly = [v22 safeBooleanForKey:@"SplatOnly"];
        v24->_semiSplatEnabled = [v22 safeBooleanForKey:@"SemiSplatEnabled"];
        v149 = [v22 safeObjectForKey:@"SemiSplatMustQuitApps" ofClass:objc_opt_class()];
        semiSplatMustQuitApps = v24->_semiSplatMustQuitApps;
        v24->_semiSplatMustQuitApps = v149;

        v24->_revoked = [v22 safeBooleanForKey:@"Revoked"];
        v24->_semiSplatRestartNow = 0;
        associatedSplatDescriptor = v24->_associatedSplatDescriptor;
        v24->_associatedSplatDescriptor = 0;

        v24->_disableSplatCombo = [v22 safeBooleanForKey:@"DisableSplombo" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:defaultValue:", @"DisableSplombo", 0)}];
        v152 = [v22 safeBooleanForKey:@"DisablePreSoftwareUpdateAssetStaging" defaultValue:{objc_msgSend(valuesCopy, "safeBooleanForKey:defaultValue:", @"DisablePreSoftwareUpdateAssetStaging", 0)}];
        v24->_enablePreSUStaging = v152 ^ 1;
        if (v152)
        {
          v24->_enablePreSUStagingForOptionalAssets = 0;
        }

        else
        {
          if (valuesCopy)
          {
            v153 = [valuesCopy safeBooleanForKey:@"EnablePSUSForOptionalAssets" defaultValue:1];
            v154 = v22;
          }

          else
          {
            v154 = v22;
            v153 = 1;
          }

          v24->_enablePreSUStagingForOptionalAssets = [v154 safeBooleanForKey:@"EnablePSUSForOptionalAssets" defaultValue:v153];
        }

        v24->_preSUStagingMaxSize = [v22 safeULLForKey:@"PreSUStagingMaxSize" defaultValue:12000000000];
        v24->_minFreeSpacePostStageOptionalAssets = [v22 safeULForKey:@"MinFreeSpacePostStageOptionalAssets" defaultValue:0];
        v24->_disableSecurityAdvisoryNotification = [v22 safeBooleanForKey:@"DisableSecurityAdvisoryNotification"];
        v24->_disableDeviceCompatibilityNotification = [v22 safeBooleanForKey:@"DisableDeviceCompatibilityNotification"];
        v155 = [v22 safeObjectForKey:@"AlignediOSMajorVersion" ofClass:objc_opt_class()];
        alignediOSMajorVersion = v24->_alignediOSMajorVersion;
        v24->_alignediOSMajorVersion = v155;

        goto LABEL_60;
      }

      mEMORY[0x277D64428]3 = [MEMORY[0x277D64428] sharedDiag];
      v70 = mEMORY[0x277D64428]3;
      v71 = @"unable to create SU descriptor: update asset without attributes";
    }

    else
    {
      mEMORY[0x277D64428]3 = [MEMORY[0x277D64428] sharedDiag];
      v70 = mEMORY[0x277D64428]3;
      v71 = @"unable to create SU descriptor: unable to create attributes dictionary";
    }

    [mEMORY[0x277D64428]3 trackError:@"[DESCRIPTOR]" forReason:v71 withResult:8100 withError:0];

    selfCopy = 0;
LABEL_61:

    goto LABEL_62;
  }

  mEMORY[0x277D64428]4 = [MEMORY[0x277D64428] sharedDiag];
  [mEMORY[0x277D64428]4 trackError:@"[DESCRIPTOR]" forReason:@"unable to create SU descriptor: nil update asset" withResult:8100 withError:0];

  selfCopy = 0;
LABEL_62:

  v157 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (SUCoreDescriptor)initWithUpdateBrainPath:(id)path updateBundlePath:(id)bundlePath bundleAttributes:(id)attributes descriptorType:(int64_t)type
{
  pathCopy = path;
  bundlePathCopy = bundlePath;
  attributesCopy = attributes;
  v14 = attributesCopy;
  if (!pathCopy)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v91 = mEMORY[0x277D64428];
    v92 = @"no update brain path was provided on descriptor initialization";
LABEL_14:
    [mEMORY[0x277D64428] trackError:@"[DESCRIPTOR]" forReason:v92 withResult:8100 withError:0];

    selfCopy = 0;
    goto LABEL_15;
  }

  if (!bundlePathCopy)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v91 = mEMORY[0x277D64428];
    v92 = @"no update bundle path was provided on descriptor initialization";
    goto LABEL_14;
  }

  if (!attributesCopy)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v91 = mEMORY[0x277D64428];
    v92 = @"no update bundle attributes were provided on descriptor initialization";
    goto LABEL_14;
  }

  v94.receiver = self;
  v94.super_class = SUCoreDescriptor;
  v15 = [(SUCoreDescriptor *)&v94 init];
  v16 = v15;
  if (v15)
  {
    v15->_descriptorAudienceType = 0;
    v15->_preferredUpdateType = 0;
    v15->_descriptorType = type;
    objc_storeStrong(&v15->_updateBrainPath, path);
    objc_storeStrong(&v16->_updateBundlePath, bundlePath);
    objc_storeStrong(&v16->_bundleAttributes, attributes);
    assetID = v16->_assetID;
    v16->_assetID = 0;

    v18 = [v14 safeStringForKey:@"UniqueBuildID"];
    uniqueBuildID = v16->_uniqueBuildID;
    v16->_uniqueBuildID = v18;

    splatInstallDate = v16->_splatInstallDate;
    v16->_splatInstallDate = 0;

    releaseDate = v16->_releaseDate;
    v16->_releaseDate = 0;

    v22 = [v14 safeStringForKey:@"OSVersion"];
    rawProductVersion = v16->_rawProductVersion;
    v16->_rawProductVersion = v22;

    v24 = v16->_rawProductVersion;
    if (!v24)
    {
      v25 = [v14 safeStringForKey:@"ProductVersion"];
      v26 = v16->_rawProductVersion;
      v16->_rawProductVersion = v25;

      v24 = v16->_rawProductVersion;
    }

    v27 = [SUCoreDescriptor cleanProductVersion:v24];
    productVersion = v16->_productVersion;
    v16->_productVersion = v27;

    v29 = [v14 safeStringForKey:@"Build"];
    productBuildVersion = v16->_productBuildVersion;
    v16->_productBuildVersion = v29;

    if (!v16->_productBuildVersion)
    {
      v31 = [v14 safeStringForKey:@"TargetUpdate"];
      v32 = v16->_productBuildVersion;
      v16->_productBuildVersion = v31;
    }

    v33 = [v14 safeStringForKey:@"ProductVersionExtra"];
    productVersionExtra = v16->_productVersionExtra;
    v16->_productVersionExtra = v33;

    v35 = [v14 safeStringForKey:@"SUProductSystemName"];
    productSystemName = v16->_productSystemName;
    v16->_productSystemName = v35;

    v37 = [v14 safeStringForKey:@"ReleaseType"];
    releaseType = v16->_releaseType;
    v16->_releaseType = v37;

    v39 = [v14 safeStringForKey:@"SUPublisher"];
    publisher = v16->_publisher;
    v16->_publisher = v39;

    v41 = [v14 safeStringForKey:@"RestoreVersion"];
    restoreVersion = v16->_restoreVersion;
    v16->_restoreVersion = v41;

    v43 = [v14 safeStringForKey:@"TargetBridgeUpdateVersion"];
    targetUpdateBridgeVersion = v16->_targetUpdateBridgeVersion;
    v16->_targetUpdateBridgeVersion = v43;

    v45 = [v14 safeStringForKey:@"TargetSFRUpdateVersion"];
    targetUpdateSFRVersion = v16->_targetUpdateSFRVersion;
    v16->_targetUpdateSFRVersion = v45;

    v47 = [v14 safeStringForKey:@"TrainName"];
    trainName = v16->_trainName;
    v16->_trainName = v47;

    v49 = [v14 safeStringForKey:@"PrerequisiteBuild"];
    prerequisiteBuild = v16->_prerequisiteBuild;
    v16->_prerequisiteBuild = v49;

    v51 = [v14 safeStringForKey:@"PrerequisiteOSVersion"];
    prerequisiteOSVersion = v16->_prerequisiteOSVersion;
    v16->_prerequisiteOSVersion = v51;

    v53 = [v14 safeObjectForKey:@"SupportedDevices" ofClass:objc_opt_class()];
    supportedDevices = v16->_supportedDevices;
    v16->_supportedDevices = v53;

    v16->_suDownloadSize = 0;
    v16->_unarchivedSize = 0;
    v16->_minimumSystemPartitionSize = 0;
    v16->_streamingZipCapable = 0;
    systemPartitionPadding = v16->_systemPartitionPadding;
    v16->_systemPartitionPadding = 0;

    v16->_preSUStagingRequiredSize = 0;
    v16->_preSUStagingOptionalSize = 0;
    v16->_disableReserveSpace = 1;
    v16->_centeralizedPurgeableFactor = 0;
    v16->_pluginPurgeableFactor = 0;
    *&v16->_autoDownloadAllowableOverCellular = 0;
    *&v16->_disableSiriVoiceDeletion = 0;
    v16->_minReserveSpace = 0x140000000;
    v16->_maxReserveSpace = 0;
    v16->_unentitledReserveAmount = 0;
    v16->_mdmDelayInterval = 0;
    v16->_disableInstallTonight = 1;
    *&v16->_forcePasscodeRequired = 0;
    v16->_hideInstallAlert = 2;
    v16->_containsSFRContent = [v14 safeBooleanForKey:@"ContainsSFRContent"];
    v16->_installAlertInterval = 0;
    v16->_allowAutoDownloadOnBattery = 0;
    *&v16->_autoDownloadOnBatteryDelay = xmmword_2319EB550;
    setupCritical = v16->_setupCritical;
    v16->_setupCritical = 0;

    *&v16->_criticalCellularOverride = 0;
    lastEmergencyBuild = v16->_lastEmergencyBuild;
    v16->_lastEmergencyBuild = 0;

    lastEmergencyOSVersion = v16->_lastEmergencyOSVersion;
    v16->_lastEmergencyOSVersion = 0;

    v16->_mandatoryUpdateEligible = 0;
    mandatoryUpdateVersionMin = v16->_mandatoryUpdateVersionMin;
    v16->_mandatoryUpdateVersionMin = 0;

    mandatoryUpdateVersionMax = v16->_mandatoryUpdateVersionMax;
    v16->_mandatoryUpdateVersionMax = 0;

    *&v16->_mandatoryUpdateOptional = 0;
    v16->_oneShotBuddyDisabled = 0;
    oneShotBuddyDisabledBuilds = v16->_oneShotBuddyDisabledBuilds;
    v16->_oneShotBuddyDisabledBuilds = 0;

    v16->_criticalUpdate = 0;
    productType = v16->_productType;
    v16->_productType = 0;

    minimumBridgeVersion = v16->_minimumBridgeVersion;
    v16->_autoInstallDelay = 0;
    v16->_minimumBridgeVersion = 0;
    v16->_notifyAfter = 0;

    *&v16->_disableRosettaUpdates = 0;
    v16->_requireInstallAssistantUpdate = 0;
    sepDigest = v16->_sepDigest;
    v16->_sepDigest = 0;

    sepTBMDigests = v16->_sepTBMDigests;
    v16->_sepTBMDigests = 0;

    rsepDigest = v16->_rsepDigest;
    v16->_rsepDigest = 0;

    rsepTBMDigests = v16->_rsepTBMDigests;
    v16->_rsepTBMDigests = 0;

    documentationID = v16->_documentationID;
    v16->_documentationID = 0;

    softwareUpdateURL = v16->_softwareUpdateURL;
    v16->_softwareUpdateURL = 0;

    measurement = v16->_measurement;
    v16->_measurement = 0;

    measurementAlgorithm = v16->_measurementAlgorithm;
    v16->_measurementAlgorithm = 0;

    v16->_updateType = 0;
    *&v16->_msuPrepareSize = 0u;
    *&v16->_installationSize = 0u;
    softwareUpdateAsset = v16->_softwareUpdateAsset;
    v16->_softwareUpdateAsset = 0;

    softwareUpdateAssetType = v16->_softwareUpdateAssetType;
    v16->_softwareUpdateAssetType = 0;

    softwareUpdateAssetAbsoluteID = v16->_softwareUpdateAssetAbsoluteID;
    v16->_softwareUpdateAssetAbsoluteID = 0;

    softwareUpdateAssetPurpose = v16->_softwareUpdateAssetPurpose;
    v16->_softwareUpdateAssetPurpose = 0;

    documentationAsset = v16->_documentationAsset;
    v16->_documentationAsset = 0;

    documentationAssetType = v16->_documentationAssetType;
    v16->_documentationAssetType = 0;

    documentationAssetAbsoluteID = v16->_documentationAssetAbsoluteID;
    v16->_documentationAssetAbsoluteID = 0;

    documentationAssetPurpose = v16->_documentationAssetPurpose;
    v16->_documentationAssetPurpose = 0;

    documentation = v16->_documentation;
    v16->_documentation = 0;

    softwareUpdateAssetIdentifier = v16->_softwareUpdateAssetIdentifier;
    v16->_softwareUpdateAssetIdentifier = 0;

    documentationAssetIdentifier = v16->_documentationAssetIdentifier;
    v16->_documentationAssetIdentifier = 0;

    *&v16->_promoteAlternateUpdate = 0;
    alternateAssetAudienceUUID = v16->_alternateAssetAudienceUUID;
    v16->_alternateAssetAudienceUUID = 0;

    assetAudienceUUID = v16->_assetAudienceUUID;
    v16->_assetAudienceUUID = 0;

    v16->_splatOnly = [v14 safeBooleanForKey:@"SplatOnly"];
    v16->_semiSplatEnabled = [v14 safeBooleanForKey:@"SemiSplatEnabled"];
    v85 = [v14 safeObjectForKey:@"SemiSplatMustQuitApps" ofClass:objc_opt_class()];
    semiSplatMustQuitApps = v16->_semiSplatMustQuitApps;
    v16->_semiSplatMustQuitApps = v85;

    v16->_revoked = [v14 safeBooleanForKey:@"Revoked"];
    v16->_semiSplatRestartNow = 0;
    associatedSplatDescriptor = v16->_associatedSplatDescriptor;
    v16->_associatedSplatDescriptor = 0;

    v16->_disableDeviceCompatibilityNotification = 0;
    *&v16->_disableSplatCombo = 0;
    v16->_preSUStagingMaxSize = 0;
    v16->_minFreeSpacePostStageOptionalAssets = 0;
    alignediOSMajorVersion = v16->_alignediOSMajorVersion;
    v16->_alignediOSMajorVersion = 0;
  }

  self = v16;
  selfCopy = self;
LABEL_15:

  return selfCopy;
}

- (id)initSemiSplatDescriptor
{
  v78.receiver = self;
  v78.super_class = SUCoreDescriptor;
  v2 = [(SUCoreDescriptor *)&v78 init];
  v3 = v2;
  if (v2)
  {
    v2->_descriptorAudienceType = 0;
    v2->_preferredUpdateType = 0;
    v2->_descriptorType = 6;
    updateBrainPath = v2->_updateBrainPath;
    v2->_updateBrainPath = 0;

    updateBundlePath = v3->_updateBundlePath;
    v3->_updateBundlePath = 0;

    bundleAttributes = v3->_bundleAttributes;
    v3->_bundleAttributes = 0;

    assetID = v3->_assetID;
    v3->_assetID = 0;

    uniqueBuildID = v3->_uniqueBuildID;
    v3->_uniqueBuildID = 0;

    splatInstallDate = v3->_splatInstallDate;
    v3->_splatInstallDate = 0;

    releaseDate = v3->_releaseDate;
    v3->_releaseDate = 0;

    publisher = v3->_publisher;
    v3->_publisher = 0;

    mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
    splatCryptex1ProductVersion = [mEMORY[0x277D64418] splatCryptex1ProductVersion];
    rawProductVersion = v3->_rawProductVersion;
    v3->_rawProductVersion = splatCryptex1ProductVersion;

    mEMORY[0x277D64418]2 = [MEMORY[0x277D64418] sharedDevice];
    splatCryptex1ProductVersion2 = [mEMORY[0x277D64418]2 splatCryptex1ProductVersion];
    productVersion = v3->_productVersion;
    v3->_productVersion = splatCryptex1ProductVersion2;

    mEMORY[0x277D64418]3 = [MEMORY[0x277D64418] sharedDevice];
    splatCryptex1BuildVersionOverride = [mEMORY[0x277D64418]3 splatCryptex1BuildVersionOverride];
    v20 = splatCryptex1BuildVersionOverride;
    if (splatCryptex1BuildVersionOverride)
    {
      v21 = splatCryptex1BuildVersionOverride;
      productBuildVersion = v3->_productBuildVersion;
      v3->_productBuildVersion = v21;
    }

    else
    {
      productBuildVersion = [MEMORY[0x277D64418] sharedDevice];
      splatCryptex1BuildVersion = [productBuildVersion splatCryptex1BuildVersion];
      v24 = v3->_productBuildVersion;
      v3->_productBuildVersion = splatCryptex1BuildVersion;
    }

    mEMORY[0x277D64418]4 = [MEMORY[0x277D64418] sharedDevice];
    splatCryptex1ProductVersionExtra = [mEMORY[0x277D64418]4 splatCryptex1ProductVersionExtra];
    productVersionExtra = v3->_productVersionExtra;
    v3->_productVersionExtra = splatCryptex1ProductVersionExtra;

    productSystemName = v3->_productSystemName;
    v3->_productSystemName = @"Security Response";

    mEMORY[0x277D64418]5 = [MEMORY[0x277D64418] sharedDevice];
    splatCryptex1ReleaseType = [mEMORY[0x277D64418]5 splatCryptex1ReleaseType];
    releaseType = v3->_releaseType;
    v3->_releaseType = splatCryptex1ReleaseType;

    mEMORY[0x277D64418]6 = [MEMORY[0x277D64418] sharedDevice];
    splatCryptex1RestoreVersion = [mEMORY[0x277D64418]6 splatCryptex1RestoreVersion];
    restoreVersion = v3->_restoreVersion;
    v3->_restoreVersion = splatCryptex1RestoreVersion;

    targetUpdateBridgeVersion = v3->_targetUpdateBridgeVersion;
    v3->_targetUpdateBridgeVersion = 0;

    targetUpdateSFRVersion = v3->_targetUpdateSFRVersion;
    v3->_targetUpdateSFRVersion = 0;

    trainName = v3->_trainName;
    v3->_trainName = 0;

    prerequisiteBuild = v3->_prerequisiteBuild;
    v3->_prerequisiteBuild = 0;

    prerequisiteOSVersion = v3->_prerequisiteOSVersion;
    v3->_prerequisiteOSVersion = 0;

    supportedDevices = v3->_supportedDevices;
    v3->_supportedDevices = 0;

    v3->_suDownloadSize = 0;
    v3->_unarchivedSize = 0;
    v3->_minimumSystemPartitionSize = 0;
    v3->_streamingZipCapable = 0;
    systemPartitionPadding = v3->_systemPartitionPadding;
    v3->_systemPartitionPadding = 0;

    v3->_preSUStagingRequiredSize = 0;
    v3->_preSUStagingOptionalSize = 0;
    v3->_disableReserveSpace = 1;
    v3->_centeralizedPurgeableFactor = 0;
    v3->_pluginPurgeableFactor = 0;
    *&v3->_autoDownloadAllowableOverCellular = 0;
    *&v3->_forcePasscodeRequired = 0;
    v3->_minReserveSpace = 0x140000000;
    v3->_maxReserveSpace = 0;
    v3->_unentitledReserveAmount = 0;
    v3->_mdmDelayInterval = 0;
    *&v3->_containsSFRContent = 0;
    v3->_hideInstallAlert = 2;
    v3->_installAlertInterval = 0;
    *&v3->_autoDownloadOnBatteryDelay = xmmword_2319EB550;
    setupCritical = v3->_setupCritical;
    v3->_setupCritical = 0;

    *&v3->_criticalCellularOverride = 0;
    lastEmergencyBuild = v3->_lastEmergencyBuild;
    v3->_lastEmergencyBuild = 0;

    lastEmergencyOSVersion = v3->_lastEmergencyOSVersion;
    v3->_lastEmergencyOSVersion = 0;

    v3->_mandatoryUpdateEligible = 0;
    mandatoryUpdateVersionMin = v3->_mandatoryUpdateVersionMin;
    v3->_mandatoryUpdateVersionMin = 0;

    mandatoryUpdateVersionMax = v3->_mandatoryUpdateVersionMax;
    v3->_mandatoryUpdateVersionMax = 0;

    *&v3->_mandatoryUpdateOptional = 0;
    v3->_oneShotBuddyDisabled = 0;
    oneShotBuddyDisabledBuilds = v3->_oneShotBuddyDisabledBuilds;
    v3->_oneShotBuddyDisabledBuilds = 0;

    v3->_criticalUpdate = 0;
    productType = v3->_productType;
    v3->_productType = 0;

    minimumBridgeVersion = v3->_minimumBridgeVersion;
    v3->_autoInstallDelay = 0;
    v3->_minimumBridgeVersion = 0;
    v3->_notifyAfter = 0;

    *&v3->_disableRosettaUpdates = 0;
    v3->_requireInstallAssistantUpdate = 0;
    sepDigest = v3->_sepDigest;
    v3->_sepDigest = 0;

    sepTBMDigests = v3->_sepTBMDigests;
    v3->_sepTBMDigests = 0;

    rsepDigest = v3->_rsepDigest;
    v3->_rsepDigest = 0;

    rsepTBMDigests = v3->_rsepTBMDigests;
    v3->_rsepTBMDigests = 0;

    documentationID = v3->_documentationID;
    v3->_documentationID = 0;

    softwareUpdateURL = v3->_softwareUpdateURL;
    v3->_softwareUpdateURL = 0;

    measurement = v3->_measurement;
    v3->_measurement = 0;

    measurementAlgorithm = v3->_measurementAlgorithm;
    v3->_measurementAlgorithm = 0;

    v3->_updateType = 0;
    *&v3->_msuPrepareSize = 0u;
    *&v3->_installationSize = 0u;
    softwareUpdateAsset = v3->_softwareUpdateAsset;
    v3->_softwareUpdateAsset = 0;

    softwareUpdateAssetType = v3->_softwareUpdateAssetType;
    v3->_softwareUpdateAssetType = 0;

    softwareUpdateAssetAbsoluteID = v3->_softwareUpdateAssetAbsoluteID;
    v3->_softwareUpdateAssetAbsoluteID = 0;

    softwareUpdateAssetPurpose = v3->_softwareUpdateAssetPurpose;
    v3->_softwareUpdateAssetPurpose = 0;

    documentationAsset = v3->_documentationAsset;
    v3->_documentationAsset = 0;

    documentationAssetType = v3->_documentationAssetType;
    v3->_documentationAssetType = 0;

    documentationAssetAbsoluteID = v3->_documentationAssetAbsoluteID;
    v3->_documentationAssetAbsoluteID = 0;

    documentationAssetPurpose = v3->_documentationAssetPurpose;
    v3->_documentationAssetPurpose = 0;

    documentation = v3->_documentation;
    v3->_documentation = 0;

    softwareUpdateAssetIdentifier = v3->_softwareUpdateAssetIdentifier;
    v3->_softwareUpdateAssetIdentifier = 0;

    documentationAssetIdentifier = v3->_documentationAssetIdentifier;
    v3->_documentationAssetIdentifier = 0;

    *&v3->_promoteAlternateUpdate = 0;
    alternateAssetAudienceUUID = v3->_alternateAssetAudienceUUID;
    v3->_alternateAssetAudienceUUID = 0;

    assetAudienceUUID = v3->_assetAudienceUUID;
    v3->_assetAudienceUUID = 0;

    *&v3->_splatOnly = 257;
    semiSplatMustQuitApps = v3->_semiSplatMustQuitApps;
    v3->_semiSplatMustQuitApps = &unk_2846B9CD0;

    *&v3->_revoked = 256;
    associatedSplatDescriptor = v3->_associatedSplatDescriptor;
    v3->_associatedSplatDescriptor = 0;

    v3->_disableDeviceCompatibilityNotification = 0;
    *&v3->_disableSplatCombo = 0;
    v3->_preSUStagingMaxSize = 0;
    v3->_minFreeSpacePostStageOptionalAssets = 0;
    alignediOSMajorVersion = v3->_alignediOSMajorVersion;
    v3->_alignediOSMajorVersion = 0;

    v74 = +[SUCoreDocumentationDataManager sharedManager];
    v75 = [v74 getDocumentationForInstalledUpdateType:1 withError:0];
    v76 = v3->_documentation;
    v3->_documentation = v75;
  }

  return v3;
}

- (void)assignDocumentationFromAsset:(id)asset extendingBundleProperties:(BOOL)properties
{
  propertiesCopy = properties;
  assetCopy = asset;
  [(SUCoreDescriptor *)self setDocumentationAsset:assetCopy];
  assetType = [assetCopy assetType];
  [(SUCoreDescriptor *)self setDocumentationAssetType:assetType];

  absoluteAssetId = [assetCopy absoluteAssetId];
  [(SUCoreDescriptor *)self setDocumentationAssetAbsoluteID:absoluteAssetId];

  purpose = [assetCopy purpose];
  [(SUCoreDescriptor *)self setDocumentationAssetPurpose:purpose];

  v10 = [[SUCoreDocumentation alloc] initWithDocumentationAsset:assetCopy];
  [(SUCoreDescriptor *)self setDocumentation:v10];

  v11 = objc_alloc(MEMORY[0x277D64470]);
  documentation = [(SUCoreDescriptor *)self documentation];
  serverAssetMeasurement = [documentation serverAssetMeasurement];
  documentation2 = [(SUCoreDescriptor *)self documentation];
  serverAssetAlgorithm = [documentation2 serverAssetAlgorithm];
  v16 = [v11 initWithProductVersion:0 productBuildVersion:0 releaseType:0 measurement:serverAssetMeasurement measurementAlgorithm:serverAssetAlgorithm];
  [(SUCoreDescriptor *)self setDocumentationAssetIdentifier:v16];

  if (propertiesCopy)
  {
    documentation3 = [(SUCoreDescriptor *)self documentation];
    extendDocumentationProperties = [documentation3 extendDocumentationProperties];
  }
}

- (void)assignDescriptorAudienceType:(int64_t)type descriptorPreferredUpdateType:(int64_t)updateType assetAudienceUUID:(id)d
{
  dCopy = d;
  [(SUCoreDescriptor *)self setDescriptorAudienceType:type];
  [(SUCoreDescriptor *)self setPreferredUpdateType:updateType];
  v8 = dCopy;
  if (dCopy)
  {
    [(SUCoreDescriptor *)self setAssetAudienceUUID:dCopy];
    v8 = dCopy;
  }
}

- (NSString)humanReadableUpdateName
{
  documentation = [(SUCoreDescriptor *)self documentation];
  humanReadableUpdateName = [documentation humanReadableUpdateName];

  if (!humanReadableUpdateName)
  {
    productSystemName = [(SUCoreDescriptor *)self productSystemName];
    if (productSystemName && (v6 = productSystemName, [(SUCoreDescriptor *)self productVersion], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      v8 = objc_alloc(MEMORY[0x277CCACA8]);
      productSystemName2 = [(SUCoreDescriptor *)self productSystemName];
      productVersion = [(SUCoreDescriptor *)self productVersion];
      humanReadableUpdateName = [v8 initWithFormat:@"%@ %@", productSystemName2, productVersion];
    }

    else
    {
      humanReadableUpdateName = @"Software Update";
    }
  }

  if ([(SUCoreDescriptor *)self splatOnly])
  {
    productVersionExtra = [(SUCoreDescriptor *)self productVersionExtra];

    if (productVersionExtra)
    {
      v12 = objc_alloc(MEMORY[0x277CCACA8]);
      productVersionExtra2 = [(SUCoreDescriptor *)self productVersionExtra];
      v14 = [v12 initWithFormat:@"%@ %@", humanReadableUpdateName, productVersionExtra2];
LABEL_11:

      humanReadableUpdateName = v14;
      goto LABEL_12;
    }
  }

  associatedSplatDescriptor = [(SUCoreDescriptor *)self associatedSplatDescriptor];
  productVersionExtra3 = [associatedSplatDescriptor productVersionExtra];

  if (productVersionExtra3)
  {
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    productVersionExtra2 = [(SUCoreDescriptor *)self associatedSplatDescriptor];
    v13ProductVersionExtra = [productVersionExtra2 productVersionExtra];
    v14 = [v17 initWithFormat:@"%@ %@", humanReadableUpdateName, v13ProductVersionExtra];

    humanReadableUpdateName = v13ProductVersionExtra;
    goto LABEL_11;
  }

LABEL_12:
  mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
  if ([mEMORY[0x277D64418] isBootedOSSecureInternal])
  {
    productBuildVersion = [(SUCoreDescriptor *)self productBuildVersion];
    if (productBuildVersion)
    {
      v21 = productBuildVersion;
      v22 = objc_alloc(MEMORY[0x277D64408]);
      v23 = [v22 initWithProjectName:*MEMORY[0x277D64540]];
      v24 = [v23 getBoolConfigForKey:*MEMORY[0x277D644F0]];

      if (v24)
      {
        goto LABEL_17;
      }

      v25 = objc_alloc(MEMORY[0x277CCACA8]);
      mEMORY[0x277D64418] = [(SUCoreDescriptor *)self productBuildVersion];
      v26 = [v25 initWithFormat:@"%@ (%@)", humanReadableUpdateName, mEMORY[0x277D64418]];

      humanReadableUpdateName = v26;
    }
  }

LABEL_17:

  return humanReadableUpdateName;
}

- (NSString)humanReadableUpdateTitle
{
  documentation = [(SUCoreDescriptor *)self documentation];
  humanReadableUpdateTitle = [documentation humanReadableUpdateTitle];

  return humanReadableUpdateTitle;
}

- (NSString)humanReadableUpdateVersion
{
  documentation = [(SUCoreDescriptor *)self documentation];
  humanReadableUpdateVersion = [documentation humanReadableUpdateVersion];

  if ([(SUCoreDescriptor *)self splatOnly])
  {
    productVersion = [(SUCoreDescriptor *)self productVersion];
    if (productVersion)
    {
      v6 = productVersion;
      productVersionExtra = [(SUCoreDescriptor *)self productVersionExtra];

      if (productVersionExtra)
      {
        v8 = objc_alloc(MEMORY[0x277CCACA8]);
        productVersion2 = [(SUCoreDescriptor *)self productVersion];
        productVersionExtra2 = [(SUCoreDescriptor *)self productVersionExtra];
        v11 = [v8 initWithFormat:@"%@ %@", productVersion2, productVersionExtra2];

        humanReadableUpdateVersion = v11;
      }
    }
  }

  mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
  if ([mEMORY[0x277D64418] isBootedOSSecureInternal])
  {
    v13 = humanReadableUpdateVersion == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    productBuildVersion = [(SUCoreDescriptor *)self productBuildVersion];
    if (productBuildVersion)
    {
      v15 = productBuildVersion;
      v16 = objc_alloc(MEMORY[0x277D64408]);
      v17 = [v16 initWithProjectName:*MEMORY[0x277D64540]];
      v18 = [v17 getBoolConfigForKey:*MEMORY[0x277D644F0]];

      if (v18)
      {
        goto LABEL_13;
      }

      v19 = objc_alloc(MEMORY[0x277CCACA8]);
      mEMORY[0x277D64418] = [(SUCoreDescriptor *)self productBuildVersion];
      v20 = [v19 initWithFormat:@"%@ (%@)", humanReadableUpdateVersion, mEMORY[0x277D64418]];

      humanReadableUpdateVersion = v20;
    }
  }

LABEL_13:

  return humanReadableUpdateVersion;
}

- (NSString)humanReadableMoreInfoLink
{
  documentation = [(SUCoreDescriptor *)self documentation];
  humanReadableMoreInfoLink = [documentation humanReadableMoreInfoLink];

  return humanReadableMoreInfoLink;
}

- (BOOL)notificationEnabled
{
  documentation = [(SUCoreDescriptor *)self documentation];
  notificationEnabled = [documentation notificationEnabled];

  return notificationEnabled;
}

- (NSString)notificationTitleString
{
  documentation = [(SUCoreDescriptor *)self documentation];
  notificationTitleString = [documentation notificationTitleString];

  return notificationTitleString;
}

- (NSString)notificationBodyString
{
  documentation = [(SUCoreDescriptor *)self documentation];
  notificationBodyString = [documentation notificationBodyString];

  return notificationBodyString;
}

- (BOOL)recommendedUpdateEnabled
{
  documentation = [(SUCoreDescriptor *)self documentation];
  recommendedUpdateEnabled = [documentation recommendedUpdateEnabled];

  return recommendedUpdateEnabled;
}

- (BOOL)recommendedUpdateApplicable
{
  documentation = [(SUCoreDescriptor *)self documentation];
  recommendedUpdateApplicable = [documentation recommendedUpdateApplicable];

  return recommendedUpdateApplicable;
}

- (NSNumber)recommendedUpdateNotificationFrequencyDays
{
  documentation = [(SUCoreDescriptor *)self documentation];
  recommendedUpdateNotificationFrequencyDays = [documentation recommendedUpdateNotificationFrequencyDays];

  return recommendedUpdateNotificationFrequencyDays;
}

- (NSString)recommendedUpdateMinOSVersion
{
  documentation = [(SUCoreDescriptor *)self documentation];
  recommendedUpdateMinOSVersion = [documentation recommendedUpdateMinOSVersion];

  return recommendedUpdateMinOSVersion;
}

- (NSString)recommendedUpdateMaxOSVersion
{
  documentation = [(SUCoreDescriptor *)self documentation];
  recommendedUpdateMaxOSVersion = [documentation recommendedUpdateMaxOSVersion];

  return recommendedUpdateMaxOSVersion;
}

- (NSString)recommendedUpdateTitleString
{
  documentation = [(SUCoreDescriptor *)self documentation];
  recommendedUpdateTitleString = [documentation recommendedUpdateTitleString];

  return recommendedUpdateTitleString;
}

- (NSString)recommendedUpdateAlertBodyString
{
  documentation = [(SUCoreDescriptor *)self documentation];
  recommendedUpdateAlertBodyString = [documentation recommendedUpdateAlertBodyString];

  return recommendedUpdateAlertBodyString;
}

- (NSString)mandatoryUpdateBodyString
{
  documentation = [(SUCoreDescriptor *)self documentation];
  mandatoryUpdateBodyString = [documentation mandatoryUpdateBodyString];

  return mandatoryUpdateBodyString;
}

- (NSString)securityAdvisoryNotificationTitleString
{
  documentation = [(SUCoreDescriptor *)self documentation];
  securityAdvisoryNotificationTitleString = [documentation securityAdvisoryNotificationTitleString];

  return securityAdvisoryNotificationTitleString;
}

- (NSString)securityAdvisoryNotificationBodyString
{
  documentation = [(SUCoreDescriptor *)self documentation];
  securityAdvisoryNotificationBodyString = [documentation securityAdvisoryNotificationBodyString];

  return securityAdvisoryNotificationBodyString;
}

- (NSString)deviceCompatibilityNotificationTitleString
{
  documentation = [(SUCoreDescriptor *)self documentation];
  deviceCompatibilityNotificationTitleString = [documentation deviceCompatibilityNotificationTitleString];

  return deviceCompatibilityNotificationTitleString;
}

- (NSString)deviceCompatibilityNotificationBodyString
{
  documentation = [(SUCoreDescriptor *)self documentation];
  deviceCompatibilityNotificationBodyString = [documentation deviceCompatibilityNotificationBodyString];

  return deviceCompatibilityNotificationBodyString;
}

- (NSURL)safariUpdateContentBundleURL
{
  documentation = [(SUCoreDescriptor *)self documentation];
  safariUpdateContentBundleURL = [documentation safariUpdateContentBundleURL];

  return safariUpdateContentBundleURL;
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
  v14 = *MEMORY[0x277D85DE8];
  productSystemName = self->_productSystemName;
  if (productSystemName)
  {
    v3 = productSystemName;
  }

  else
  {
    mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
    marketingProductName = [mEMORY[0x277D64418] marketingProductName];

    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    v8 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
    if (marketingProductName)
    {
      if (v8)
      {
        v12 = 138543362;
        v13 = marketingProductName;
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "Falling back to marketingProductName:%{public}@", &v12, 0xCu);
      }

      v3 = [MEMORY[0x277CCACA8] stringWithString:marketingProductName];
    }

    else
    {
      if (v8)
      {
        v12 = 138543362;
        v13 = @"OS";
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "Falling back to kSUProductSystemNameDefault:%{public}@", &v12, 0xCu);
      }

      mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
      [mEMORY[0x277D64428] trackAnomaly:@"SUCoreDescriptor" forReason:@"Falling back to kSUProductSystemNameDefault due to no SUCoreDevice marketingProductName" withResult:8116 withError:0];

      v3 = @"OS";
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)fullReplacement
{
  prerequisiteBuild = [(SUCoreDescriptor *)self prerequisiteBuild];
  if (prerequisiteBuild)
  {
    v4 = 0;
  }

  else
  {
    prerequisiteOSVersion = [(SUCoreDescriptor *)self prerequisiteOSVersion];
    v4 = prerequisiteOSVersion == 0;
  }

  return v4;
}

- (unint64_t)unarchivedSize
{
  unarchivedSize = self->_unarchivedSize;
  associatedSplatDescriptor = [(SUCoreDescriptor *)self associatedSplatDescriptor];

  if (associatedSplatDescriptor)
  {
    associatedSplatDescriptor2 = [(SUCoreDescriptor *)self associatedSplatDescriptor];
    unarchivedSize += [associatedSplatDescriptor2 unarchivedSize];
  }

  return unarchivedSize;
}

- (unint64_t)installationSize
{
  installationSize = self->_installationSize;
  associatedSplatDescriptor = [(SUCoreDescriptor *)self associatedSplatDescriptor];

  if (associatedSplatDescriptor)
  {
    return installationSize + 32000000;
  }

  else
  {
    return installationSize;
  }
}

- (unint64_t)installationSnapshotSize
{
  installationSnapshotSize = self->_installationSnapshotSize;
  associatedSplatDescriptor = [(SUCoreDescriptor *)self associatedSplatDescriptor];

  if (associatedSplatDescriptor)
  {
    return installationSnapshotSize + 32000000;
  }

  else
  {
    return installationSnapshotSize;
  }
}

- (unint64_t)refreshPrepareSize
{
  bundleAttributes = [(SUCoreDescriptor *)self bundleAttributes];
  v4 = SUCoreBorder_MSUAssetCalculatePrepareSize(bundleAttributes);

  if (v4)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackAnomaly:@"[DESCRIPTOR]" forReason:@"unable to determine refreshed prepare size withResult:using preexisting value" withError:{8100, v4}];
  }

  else
  {
    self->_msuPrepareSize = 0;
    self->_msuSnapshotPrepareSize = 0;
  }

  msuPrepareSize = [(SUCoreDescriptor *)self msuPrepareSize];

  return msuPrepareSize;
}

- (unint64_t)refreshInstallationSize
{
  bundleAttributes = [(SUCoreDescriptor *)self bundleAttributes];
  v4 = SUCoreBorder_MSUAssetCalculateApplySize(bundleAttributes);

  if (v4)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackAnomaly:@"[DESCRIPTOR]" forReason:@"unable to determine refreshed apply size for installation withResult:using preexisting value" withError:{8100, v4}];
  }

  else
  {
    self->_installationSize = 0;
    self->_installationSnapshotSize = 0;
  }

  installationSize = [(SUCoreDescriptor *)self installationSize];

  return installationSize;
}

- (unint64_t)refreshTotalRequiredFreeSpace
{
  [(SUCoreDescriptor *)self refreshPrepareSize];
  [(SUCoreDescriptor *)self refreshInstallationSize];

  return [(SUCoreDescriptor *)self totalRequiredFreeSpace];
}

- (unint64_t)totalRequiredFreeSpaceHelper:(BOOL)helper
{
  if (helper)
  {
    snapshotPreparationSize = [(SUCoreDescriptor *)self snapshotPreparationSize];
    installationSnapshotSize = [(SUCoreDescriptor *)self installationSnapshotSize];
  }

  else
  {
    snapshotPreparationSize = [(SUCoreDescriptor *)self preparationSize];
    installationSnapshotSize = [(SUCoreDescriptor *)self installationSize];
  }

  v6 = installationSnapshotSize + snapshotPreparationSize;
  if (![(SUCoreDescriptor *)self streamingZipCapable])
  {
    v6 += [(SUCoreDescriptor *)self suDownloadSize];
  }

  associatedSplatDescriptor = [(SUCoreDescriptor *)self associatedSplatDescriptor];
  if (associatedSplatDescriptor)
  {
    v8 = associatedSplatDescriptor;
    associatedSplatDescriptor2 = [(SUCoreDescriptor *)self associatedSplatDescriptor];
    streamingZipCapable = [associatedSplatDescriptor2 streamingZipCapable];

    if ((streamingZipCapable & 1) == 0)
    {
      associatedSplatDescriptor3 = [(SUCoreDescriptor *)self associatedSplatDescriptor];
      v6 += [associatedSplatDescriptor3 suDownloadSize];
    }
  }

  if ([(SUCoreDescriptor *)self enablePreSUStaging])
  {
    v6 += [(SUCoreDescriptor *)self preSUStagingRequiredSize];
  }

  return v6;
}

- (unint64_t)downloadSize
{
  suDownloadSize = [(SUCoreDescriptor *)self suDownloadSize];
  associatedSplatDescriptor = [(SUCoreDescriptor *)self associatedSplatDescriptor];

  if (associatedSplatDescriptor)
  {
    associatedSplatDescriptor2 = [(SUCoreDescriptor *)self associatedSplatDescriptor];
    suDownloadSize += [associatedSplatDescriptor2 suDownloadSize];
  }

  if ([(SUCoreDescriptor *)self enablePreSUStaging])
  {
    suDownloadSize += [(SUCoreDescriptor *)self preSUStagingRequiredSize];
  }

  return suDownloadSize;
}

- (id)criticalOverrideCellularPolicy
{
  if ([(SUCoreDescriptor *)self criticalCellularOverride])
  {
    v2 = @"WifiAndCellular";
  }

  else
  {
    v2 = @"WifiOnly";
  }

  return v2;
}

- (id)updateTypeName
{
  updateType = [(SUCoreDescriptor *)self updateType];
  if (updateType > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_27892DCF8[updateType];
  }
}

+ (BOOL)isEmergencyUpdate:(id)update
{
  v31 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  if (updateCopy)
  {
    mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
    buildVersion = [mEMORY[0x277D64418] buildVersion];

    if (!buildVersion)
    {
      mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460] oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "isEmergencyUpdate returns NO because currentBuild is nil", &v27, 2u);
      }

      v15 = 0;
      goto LABEL_34;
    }

    mEMORY[0x277D64418]2 = [MEMORY[0x277D64418] sharedDevice];
    oslog = [mEMORY[0x277D64418]2 productVersion];

    if (!oslog)
    {
      mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
      oslog2 = [mEMORY[0x277D64460]2 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "isEmergencyUpdate returns NO because currentOSVersion is nil", &v27, 2u);
      }

      v15 = 0;
      goto LABEL_33;
    }

    oslog2 = [updateCopy safeObjectForKey:@"LastEmergencyBuild" ofClass:objc_opt_class()];
    v9 = [updateCopy safeObjectForKey:@"LastEmergencyOSVersion" ofClass:objc_opt_class()];
    v10 = v9;
    if (oslog2 && v9)
    {
      if ([v9 compare:oslog options:64] == -1)
      {
        mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
        oslog3 = [mEMORY[0x277D64460]3 oslog];

        if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138543618;
          v28 = v10;
          v29 = 2114;
          v30 = oslog;
          v21 = "isEmergencyUpdate returns NO because lastEmergencyOSVersion:%{public}@ is less than currentOSVersion:%{public}@";
LABEL_29:
          v22 = oslog3;
          v23 = 22;
LABEL_30:
          _os_log_impl(&dword_23193C000, v22, OS_LOG_TYPE_DEFAULT, v21, &v27, v23);
        }
      }

      else
      {
        v11 = [oslog2 compare:buildVersion options:64];
        mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
        oslog3 = [mEMORY[0x277D64460]4 oslog];

        v14 = os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT);
        if (v11 != -1)
        {
          if (v14)
          {
            LOWORD(v27) = 0;
            _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "isEmergencyUpdate: YES", &v27, 2u);
          }

          v15 = 1;
          goto LABEL_32;
        }

        if (v14)
        {
          v27 = 138543618;
          v28 = oslog2;
          v29 = 2114;
          v30 = buildVersion;
          v21 = "isEmergencyUpdate returns NO because lastEmergencyBuild:%{public}@ is less than currentBuild:%{public}@";
          goto LABEL_29;
        }
      }
    }

    else
    {
      mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
      oslog3 = [mEMORY[0x277D64460]5 oslog];

      if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
      {
        if (oslog2)
        {
          v20 = @"LastEmergencyOSVersion";
        }

        else
        {
          v20 = @"LastEmergencyBuild";
        }

        v27 = 138543362;
        v28 = v20;
        v21 = "isEmergencyUpdate returns NO because asset attributes does no contain %{public}@";
        v22 = oslog3;
        v23 = 12;
        goto LABEL_30;
      }
    }

    v15 = 0;
LABEL_32:

LABEL_33:
LABEL_34:

    goto LABEL_35;
  }

  mEMORY[0x277D64460]6 = [MEMORY[0x277D64460] sharedLogger];
  buildVersion = [mEMORY[0x277D64460]6 oslog];

  if (os_log_type_enabled(buildVersion, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_23193C000, buildVersion, OS_LOG_TYPE_DEFAULT, "isEmergencyUpdate returns NO because assetAttributes is nil", &v27, 2u);
  }

  v15 = 0;
LABEL_35:

  v25 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)nameForDescriptorType:(int64_t)type
{
  if (type > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_27892DD28[type];
  }
}

+ (id)nameForDescriptorAudienceType:(int64_t)type
{
  if (type > 2)
  {
    return @"AudienceTypeUnknown";
  }

  else
  {
    return off_27892DD60[type];
  }
}

+ (id)nameForDescriptorPreferredUpdateType:(int64_t)type
{
  if (type > 2)
  {
    return @"PreferredUpdateTypeUnknown";
  }

  else
  {
    return off_27892DD78[type];
  }
}

+ (id)cleanProductVersion:(id)version
{
  versionCopy = version;
  if ([versionCopy length] >= 4 && objc_msgSend(versionCopy, "rangeOfString:options:range:", @"9.9.", 0, 0, 4) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [versionCopy stringByReplacingCharactersInRange:0 withString:{4, &stru_28469CC48}];

    versionCopy = v4;
  }

  return versionCopy;
}

- (BOOL)requiresSoftwareUpdateAssetReload
{
  softwareUpdateAssetAbsoluteID = [(SUCoreDescriptor *)self softwareUpdateAssetAbsoluteID];
  if (softwareUpdateAssetAbsoluteID)
  {
    softwareUpdateAsset = [(SUCoreDescriptor *)self softwareUpdateAsset];
    v5 = softwareUpdateAsset == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)requiresDocumentationReload
{
  documentationAssetAbsoluteID = [(SUCoreDescriptor *)self documentationAssetAbsoluteID];
  if (documentationAssetAbsoluteID)
  {
    documentationAsset = [(SUCoreDescriptor *)self documentationAsset];
    v5 = documentationAsset == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)transferNonAssetPropertiesFromDescriptor:(id)descriptor
{
  v4 = MEMORY[0x277D64460];
  descriptorCopy = descriptor;
  sharedLogger = [v4 sharedLogger];
  oslog = [sharedLogger oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "Transferring non-asset attribute properties from other descriptor", v15, 2u);
  }

  -[SUCoreDescriptor setDescriptorAudienceType:](self, "setDescriptorAudienceType:", [descriptorCopy descriptorAudienceType]);
  -[SUCoreDescriptor setPreferredUpdateType:](self, "setPreferredUpdateType:", [descriptorCopy preferredUpdateType]);
  assetAudienceUUID = [descriptorCopy assetAudienceUUID];
  [(SUCoreDescriptor *)self setAssetAudienceUUID:assetAudienceUUID];

  -[SUCoreDescriptor setPreSUStagingRequiredSize:](self, "setPreSUStagingRequiredSize:", [descriptorCopy preSUStagingRequiredSize]);
  -[SUCoreDescriptor setPreSUStagingOptionalSize:](self, "setPreSUStagingOptionalSize:", [descriptorCopy preSUStagingOptionalSize]);
  documentation = [descriptorCopy documentation];
  [(SUCoreDescriptor *)self setDocumentation:documentation];

  documentationAsset = [descriptorCopy documentationAsset];
  [(SUCoreDescriptor *)self setDocumentationAsset:documentationAsset];

  documentationAssetType = [descriptorCopy documentationAssetType];
  [(SUCoreDescriptor *)self setDocumentationAssetType:documentationAssetType];

  documentationAssetIdentifier = [descriptorCopy documentationAssetIdentifier];
  [(SUCoreDescriptor *)self setDocumentationAssetIdentifier:documentationAssetIdentifier];

  documentationAssetAbsoluteID = [descriptorCopy documentationAssetAbsoluteID];
  [(SUCoreDescriptor *)self setDocumentationAssetAbsoluteID:documentationAssetAbsoluteID];

  documentationAssetPurpose = [descriptorCopy documentationAssetPurpose];

  [(SUCoreDescriptor *)self setDocumentationAssetPurpose:documentationAssetPurpose];
}

- (SUCoreDescriptor)initWithCoder:(id)coder
{
  v155[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v154.receiver = self;
  v154.super_class = SUCoreDescriptor;
  v5 = [(SUCoreDescriptor *)&v154 init];
  if (v5)
  {
    v5->_descriptorType = [coderCopy decodeIntForKey:@"DescriptorType"];
    v5->_descriptorAudienceType = [coderCopy decodeIntForKey:@"DescriptorAudienceType"];
    v5->_preferredUpdateType = [coderCopy decodeIntForKey:@"PreferredUpdateType"];
    v5->_updateType = [coderCopy decodeIntForKey:@"UpdateType"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AssetID"];
    assetID = v5->_assetID;
    v5->_assetID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SoftwareUpdateAssetType"];
    softwareUpdateAssetType = v5->_softwareUpdateAssetType;
    v5->_softwareUpdateAssetType = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DocumentationAssetType"];
    documentationAssetType = v5->_documentationAssetType;
    v5->_documentationAssetType = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SoftwareUpdateAssetAbsoluteID"];
    softwareUpdateAssetAbsoluteID = v5->_softwareUpdateAssetAbsoluteID;
    v5->_softwareUpdateAssetAbsoluteID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DocumentationAssetAbsoluteID"];
    documentationAssetAbsoluteID = v5->_documentationAssetAbsoluteID;
    v5->_documentationAssetAbsoluteID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SoftwareUpdateAssetPurpose"];
    softwareUpdateAssetPurpose = v5->_softwareUpdateAssetPurpose;
    v5->_softwareUpdateAssetPurpose = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DocumentationAssetPurpose"];
    documentationAssetPurpose = v5->_documentationAssetPurpose;
    v5->_documentationAssetPurpose = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UniqueBuildID"];
    uniqueBuildID = v5->_uniqueBuildID;
    v5->_uniqueBuildID = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SplatInstallDate"];
    splatInstallDate = v5->_splatInstallDate;
    v5->_splatInstallDate = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductVersion"];
    productVersion = v5->_productVersion;
    v5->_productVersion = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductBuildVersion"];
    productBuildVersion = v5->_productBuildVersion;
    v5->_productBuildVersion = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductVersionExtra"];
    productVersionExtra = v5->_productVersionExtra;
    v5->_productVersionExtra = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductSystemName"];
    productSystemName = v5->_productSystemName;
    v5->_productSystemName = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReleaseType"];
    releaseType = v5->_releaseType;
    v5->_releaseType = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Publisher"];
    publisher = v5->_publisher;
    v5->_publisher = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReleaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RestoreVersion"];
    restoreVersion = v5->_restoreVersion;
    v5->_restoreVersion = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TargetUpdateBridgeVersion"];
    targetUpdateBridgeVersion = v5->_targetUpdateBridgeVersion;
    v5->_targetUpdateBridgeVersion = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TargetUpdateSFRVersion"];
    targetUpdateSFRVersion = v5->_targetUpdateSFRVersion;
    v5->_targetUpdateSFRVersion = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"TrainName"];
    trainName = v5->_trainName;
    v5->_trainName = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrerequisiteBuild"];
    prerequisiteBuild = v5->_prerequisiteBuild;
    v5->_prerequisiteBuild = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PrerequisiteOSVersion"];
    prerequisiteOSVersion = v5->_prerequisiteOSVersion;
    v5->_prerequisiteOSVersion = v48;

    v50 = MEMORY[0x277CBEB98];
    v51 = objc_opt_class();
    v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
    v53 = [coderCopy decodeObjectOfClasses:v52 forKey:@"SupportedDevices"];
    supportedDevices = v5->_supportedDevices;
    v5->_supportedDevices = v53;

    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SUDownloadSize"];
    v5->_suDownloadSize = [v55 unsignedLongLongValue];

    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UnarchiveSize"];
    v5->_unarchivedSize = [v56 unsignedLongLongValue];

    v57 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSUPrepareSize"];
    v5->_msuPrepareSize = [v57 unsignedLongLongValue];

    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MSUSnapshotPrepareSize"];
    v5->_msuSnapshotPrepareSize = [v58 unsignedLongLongValue];

    v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"InstallationSize"];
    v5->_installationSize = [v59 unsignedLongLongValue];

    v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"InstallationSnapshotSize"];
    v5->_installationSnapshotSize = [v60 unsignedLongLongValue];

    v61 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MinimumSystemPartitionSize"];
    v5->_minimumSystemPartitionSize = [v61 unsignedLongLongValue];

    v5->_streamingZipCapable = [coderCopy decodeBoolForKey:@"StreamingZipCapable"];
    v62 = MEMORY[0x277CBEB98];
    v155[0] = objc_opt_class();
    v155[1] = objc_opt_class();
    v155[2] = objc_opt_class();
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v155 count:3];
    v153 = [v62 setWithArray:v63];

    v64 = [coderCopy decodeObjectOfClasses:v153 forKey:@"SystemPartitionPadding"];
    systemPartitionPadding = v5->_systemPartitionPadding;
    v5->_systemPartitionPadding = v64;

    v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PSUSRequiredSize"];
    v5->_preSUStagingRequiredSize = [v66 unsignedLongLongValue];

    v67 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PSUSOptionalSize"];
    v5->_preSUStagingOptionalSize = [v67 unsignedLongLongValue];

    v5->_disableReserveSpace = [coderCopy decodeBoolForKey:@"DisableReserveSpace"];
    v68 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CenteralizedPurgeableFactor"];
    v5->_centeralizedPurgeableFactor = [v68 unsignedLongValue];

    v69 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PluginPurgeableFactor"];
    v5->_pluginPurgeableFactor = [v69 unsignedLongValue];

    v70 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MinReserveSpace"];
    v5->_minReserveSpace = [v70 unsignedLongLongValue];

    v71 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MaxReserveSpace"];
    v5->_maxReserveSpace = [v71 unsignedLongLongValue];

    v72 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UnentitledReserveAmount"];
    v5->_unentitledReserveAmount = [v72 unsignedLongLongValue];

    v5->_autoDownloadAllowableOverCellular = [coderCopy decodeBoolForKey:@"AutoDownloadAllowableOverCellular"];
    v5->_downloadAllowableOverCellular = [coderCopy decodeBoolForKey:@"DownloadAllowableOverCellular"];
    v5->_downloadable = [coderCopy decodeBoolForKey:@"Downloadable"];
    v5->_disableSiriVoiceDeletion = [coderCopy decodeBoolForKey:@"DisableSiriVoiceDeletion"];
    v5->_disableCDLevel4 = [coderCopy decodeBoolForKey:@"DisableCDLevel4"];
    v5->_disableAppDemotion = [coderCopy decodeBoolForKey:@"DisableAppDemotion"];
    v5->_disableMASuspension = [coderCopy decodeBoolForKey:@"DisableMASuspension"];
    v5->_disableInstallTonight = [coderCopy decodeBoolForKey:@"DisableInstallTonight"];
    v5->_forcePasscodeRequired = [coderCopy decodeBoolForKey:@"ForcePasscodeRequired"];
    v5->_rampEnabled = [coderCopy decodeBoolForKey:@"RampEnabled"];
    v5->_granularlyRamped = [coderCopy decodeBoolForKey:@"GranularlyRamped"];
    v73 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MDMDelayInterval"];
    v5->_mdmDelayInterval = [v73 unsignedLongLongValue];

    v5->_autoUpdateEnabled = [coderCopy decodeBoolForKey:@"AutoUpdateEnabled"];
    v5->_hideInstallAlert = [coderCopy decodeIntegerForKey:@"HideInstallAlert"];
    v5->_containsSFRContent = [coderCopy decodeBoolForKey:@"ContainsSFRContent"];
    v74 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"InstallAlertInterval"];
    v5->_installAlertInterval = [v74 unsignedLongLongValue];

    v5->_allowAutoDownloadOnBattery = [coderCopy decodeBoolForKey:@"AllowAutoDownloadOnBattery"];
    v75 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AutoDownloadOnBatteryDelay"];
    v5->_autoDownloadOnBatteryDelay = [v75 unsignedLongLongValue];

    v76 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AutoDownloadOnBatteryMinBattery"];
    v5->_autoDownloadOnBatteryMinBattery = [v76 unsignedLongLongValue];

    v77 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SetupCritical"];
    setupCritical = v5->_setupCritical;
    v5->_setupCritical = v77;

    v5->_criticalCellularOverride = [coderCopy decodeBoolForKey:@"CriticalCellularOverride"];
    v5->_criticalOutOfBoxOnly = [coderCopy decodeBoolForKey:@"CriticalOutOfBoxOnly"];
    v79 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastEmergencyBuild"];
    lastEmergencyBuild = v5->_lastEmergencyBuild;
    v5->_lastEmergencyBuild = v79;

    v81 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LastEmergencyOSVersion"];
    lastEmergencyOSVersion = v5->_lastEmergencyOSVersion;
    v5->_lastEmergencyOSVersion = v81;

    v5->_mandatoryUpdateEligible = [coderCopy decodeBoolForKey:@"MandatoryUpdateEligible"];
    v83 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MandatoryUpdateVersionMin"];
    mandatoryUpdateVersionMin = v5->_mandatoryUpdateVersionMin;
    v5->_mandatoryUpdateVersionMin = v83;

    v85 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MandatoryUpdateVersionMax"];
    mandatoryUpdateVersionMax = v5->_mandatoryUpdateVersionMax;
    v5->_mandatoryUpdateVersionMax = v85;

    v5->_mandatoryUpdateOptional = [coderCopy decodeBoolForKey:@"MandatoryUpdateOptional"];
    v5->_mandatoryUpdateRestrictedToOutOfTheBox = [coderCopy decodeBoolForKey:@"MandatoryUpdateRestrictedToOutOfTheBox"];
    v5->_oneShotBuddyDisabled = [coderCopy decodeBoolForKey:@"OneShotBuddyDisabled"];
    v87 = MEMORY[0x277CBEB98];
    v88 = objc_opt_class();
    v89 = [v87 setWithObjects:{v88, objc_opt_class(), 0}];
    v90 = [coderCopy decodeObjectOfClasses:v89 forKey:@"OneShotBuddyDisabledBuilds"];
    oneShotBuddyDisabledBuilds = v5->_oneShotBuddyDisabledBuilds;
    v5->_oneShotBuddyDisabledBuilds = v90;

    v5->_criticalUpdate = [coderCopy decodeBoolForKey:@"CriticalUpdate"];
    v92 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductType"];
    productType = v5->_productType;
    v5->_productType = v92;

    v94 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AutoInstallDelay"];
    v5->_autoInstallDelay = [v94 unsignedLongLongValue];

    v5->_notifyAfter = [coderCopy decodeBoolForKey:@"NotifyAfter"];
    v95 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MinimumBridgeVersion"];
    minimumBridgeVersion = v5->_minimumBridgeVersion;
    v5->_minimumBridgeVersion = v95;

    v5->_disableRosettaUpdates = [coderCopy decodeBoolForKey:@"DisableRosettaUpdates"];
    v5->_disableRecoveryOSUpdates = [coderCopy decodeBoolForKey:@"DisableRecoveryOSUpdates"];
    v5->_requireInstallAssistantUpdate = [coderCopy decodeBoolForKey:@"RequireInstallAssistantUpdate"];
    v97 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SEPDigest"];
    sepDigest = v5->_sepDigest;
    v5->_sepDigest = v97;

    v99 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SEPTBMDigests"];
    sepTBMDigests = v5->_sepTBMDigests;
    v5->_sepTBMDigests = v99;

    v101 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RSEPDigest"];
    rsepDigest = v5->_rsepDigest;
    v5->_rsepDigest = v101;

    v103 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RSEPTBMDigests"];
    rsepTBMDigests = v5->_rsepTBMDigests;
    v5->_rsepTBMDigests = v103;

    v105 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DocumentationID"];
    documentationID = v5->_documentationID;
    v5->_documentationID = v105;

    v107 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Documentation"];
    documentation = v5->_documentation;
    v5->_documentation = v107;

    v109 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SoftwareUpdateURL"];
    softwareUpdateURL = v5->_softwareUpdateURL;
    v5->_softwareUpdateURL = v109;

    v111 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Measurement"];
    measurement = v5->_measurement;
    v5->_measurement = v111;

    v113 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MeasurementAlgorithm"];
    measurementAlgorithm = v5->_measurementAlgorithm;
    v5->_measurementAlgorithm = v113;

    v115 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SoftwareUpdateAssetIdentifier"];
    softwareUpdateAssetIdentifier = v5->_softwareUpdateAssetIdentifier;
    v5->_softwareUpdateAssetIdentifier = v115;

    v117 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DocumentationAssetIdentifier"];
    documentationAssetIdentifier = v5->_documentationAssetIdentifier;
    v5->_documentationAssetIdentifier = v117;

    v5->_promoteAlternateUpdate = [coderCopy decodeBoolForKey:@"PromoteAlternateUpdate"];
    v5->_enableAlternateAssetAudience = [coderCopy decodeBoolForKey:@"EnableAlternateAssetAudienceUUID"];
    v119 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AlternateAssetAudienceUUID"];
    alternateAssetAudienceUUID = v5->_alternateAssetAudienceUUID;
    v5->_alternateAssetAudienceUUID = v119;

    v121 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AssetAudienceUUID"];
    assetAudienceUUID = v5->_assetAudienceUUID;
    v5->_assetAudienceUUID = v121;

    v123 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UpdateBrainPath"];
    updateBrainPath = v5->_updateBrainPath;
    v5->_updateBrainPath = v123;

    v125 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UpdateBundlePath"];
    updateBundlePath = v5->_updateBundlePath;
    v5->_updateBundlePath = v125;

    v5->_splatOnly = [coderCopy decodeBoolForKey:@"SplatOnly"];
    v5->_semiSplatEnabled = [coderCopy decodeBoolForKey:@"SemiSplatEnabled"];
    v127 = MEMORY[0x277CBEB98];
    v128 = objc_opt_class();
    v129 = [v127 setWithObjects:{v128, objc_opt_class(), 0}];
    v130 = [coderCopy decodeObjectOfClasses:v129 forKey:@"SemiSplatMustQuitApps"];
    semiSplatMustQuitApps = v5->_semiSplatMustQuitApps;
    v5->_semiSplatMustQuitApps = v130;

    v5->_revoked = [coderCopy decodeBoolForKey:@"Revoked"];
    v5->_semiSplatRestartNow = [coderCopy decodeBoolForKey:@"SemiSplatRestartNow"];
    v5->_disableSplatCombo = [coderCopy decodeBoolForKey:@"DisableSplombo"];
    v132 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AssociatedSplatDescriptor"];
    associatedSplatDescriptor = v5->_associatedSplatDescriptor;
    v5->_associatedSplatDescriptor = v132;

    v134 = MEMORY[0x277CBEB98];
    v135 = objc_opt_class();
    v136 = objc_opt_class();
    v137 = objc_opt_class();
    v138 = objc_opt_class();
    v139 = objc_opt_class();
    v140 = objc_opt_class();
    v141 = objc_opt_class();
    v142 = [v134 setWithObjects:{v135, v136, v137, v138, v139, v140, v141, objc_opt_class(), 0}];
    v143 = [coderCopy decodeObjectOfClasses:v142 forKey:@"BundleAttributes"];
    bundleAttributes = v5->_bundleAttributes;
    v5->_bundleAttributes = v143;

    softwareUpdateAsset = v5->_softwareUpdateAsset;
    v5->_softwareUpdateAsset = 0;

    documentationAsset = v5->_documentationAsset;
    v5->_documentationAsset = 0;

    v5->_enablePreSUStaging = [coderCopy decodeBoolForKey:@"EnablePSUS"];
    v5->_enablePreSUStagingForOptionalAssets = [coderCopy decodeBoolForKey:@"EnablePSUSForOptionalAssets"];
    v147 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PSUSMaxSize"];
    v5->_preSUStagingMaxSize = [v147 unsignedLongLongValue];

    v148 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MinFreeSpacePostStageOptionalAssets"];
    v5->_minFreeSpacePostStageOptionalAssets = [v148 unsignedLongLongValue];

    v5->_disableSecurityAdvisoryNotification = [coderCopy decodeBoolForKey:@"DisableSecurityAdvisoryNotification"];
    v5->_disableDeviceCompatibilityNotification = [coderCopy decodeBoolForKey:@"DisableDeviceCompatibilityNotification"];
    v149 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AlignediOSMajorVersion"];
    alignediOSMajorVersion = v5->_alignediOSMajorVersion;
    v5->_alignediOSMajorVersion = v149;
  }

  v151 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:-[SUCoreDescriptor descriptorType](self forKey:{"descriptorType"), @"DescriptorType"}];
  [coderCopy encodeInt:-[SUCoreDescriptor descriptorAudienceType](self forKey:{"descriptorAudienceType"), @"DescriptorAudienceType"}];
  [coderCopy encodeInt:-[SUCoreDescriptor preferredUpdateType](self forKey:{"preferredUpdateType"), @"PreferredUpdateType"}];
  [coderCopy encodeInt:-[SUCoreDescriptor updateType](self forKey:{"updateType"), @"UpdateType"}];
  assetID = [(SUCoreDescriptor *)self assetID];
  [coderCopy encodeObject:assetID forKey:@"AssetID"];

  softwareUpdateAssetType = [(SUCoreDescriptor *)self softwareUpdateAssetType];
  [coderCopy encodeObject:softwareUpdateAssetType forKey:@"SoftwareUpdateAssetType"];

  documentationAssetType = [(SUCoreDescriptor *)self documentationAssetType];
  [coderCopy encodeObject:documentationAssetType forKey:@"DocumentationAssetType"];

  softwareUpdateAssetAbsoluteID = [(SUCoreDescriptor *)self softwareUpdateAssetAbsoluteID];
  [coderCopy encodeObject:softwareUpdateAssetAbsoluteID forKey:@"SoftwareUpdateAssetAbsoluteID"];

  documentationAssetAbsoluteID = [(SUCoreDescriptor *)self documentationAssetAbsoluteID];
  [coderCopy encodeObject:documentationAssetAbsoluteID forKey:@"DocumentationAssetAbsoluteID"];

  softwareUpdateAssetPurpose = [(SUCoreDescriptor *)self softwareUpdateAssetPurpose];
  [coderCopy encodeObject:softwareUpdateAssetPurpose forKey:@"SoftwareUpdateAssetPurpose"];

  documentationAssetPurpose = [(SUCoreDescriptor *)self documentationAssetPurpose];
  [coderCopy encodeObject:documentationAssetPurpose forKey:@"DocumentationAssetPurpose"];

  uniqueBuildID = [(SUCoreDescriptor *)self uniqueBuildID];
  [coderCopy encodeObject:uniqueBuildID forKey:@"UniqueBuildID"];

  splatInstallDate = [(SUCoreDescriptor *)self splatInstallDate];
  [coderCopy encodeObject:splatInstallDate forKey:@"SplatInstallDate"];

  productVersion = [(SUCoreDescriptor *)self productVersion];
  [coderCopy encodeObject:productVersion forKey:@"ProductVersion"];

  productBuildVersion = [(SUCoreDescriptor *)self productBuildVersion];
  [coderCopy encodeObject:productBuildVersion forKey:@"ProductBuildVersion"];

  productVersionExtra = [(SUCoreDescriptor *)self productVersionExtra];
  [coderCopy encodeObject:productVersionExtra forKey:@"ProductVersionExtra"];

  productSystemName = [(SUCoreDescriptor *)self productSystemName];
  [coderCopy encodeObject:productSystemName forKey:@"ProductSystemName"];

  releaseType = [(SUCoreDescriptor *)self releaseType];
  [coderCopy encodeObject:releaseType forKey:@"ReleaseType"];

  publisher = [(SUCoreDescriptor *)self publisher];
  [coderCopy encodeObject:publisher forKey:@"Publisher"];

  releaseDate = [(SUCoreDescriptor *)self releaseDate];
  [coderCopy encodeObject:releaseDate forKey:@"ReleaseDate"];

  restoreVersion = [(SUCoreDescriptor *)self restoreVersion];
  [coderCopy encodeObject:restoreVersion forKey:@"RestoreVersion"];

  targetUpdateBridgeVersion = [(SUCoreDescriptor *)self targetUpdateBridgeVersion];
  [coderCopy encodeObject:targetUpdateBridgeVersion forKey:@"TargetUpdateBridgeVersion"];

  targetUpdateSFRVersion = [(SUCoreDescriptor *)self targetUpdateSFRVersion];
  [coderCopy encodeObject:targetUpdateSFRVersion forKey:@"TargetUpdateSFRVersion"];

  trainName = [(SUCoreDescriptor *)self trainName];
  [coderCopy encodeObject:trainName forKey:@"TrainName"];

  prerequisiteBuild = [(SUCoreDescriptor *)self prerequisiteBuild];
  [coderCopy encodeObject:prerequisiteBuild forKey:@"PrerequisiteBuild"];

  prerequisiteOSVersion = [(SUCoreDescriptor *)self prerequisiteOSVersion];
  [coderCopy encodeObject:prerequisiteOSVersion forKey:@"PrerequisiteOSVersion"];

  supportedDevices = [(SUCoreDescriptor *)self supportedDevices];
  [coderCopy encodeObject:supportedDevices forKey:@"SupportedDevices"];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor suDownloadSize](self, "suDownloadSize")}];
  [coderCopy encodeObject:v28 forKey:@"SUDownloadSize"];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_unarchivedSize];
  [coderCopy encodeObject:v29 forKey:@"UnarchiveSize"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor msuPrepareSize](self, "msuPrepareSize")}];
  [coderCopy encodeObject:v30 forKey:@"MSUPrepareSize"];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor msuSnapshotPrepareSize](self, "msuSnapshotPrepareSize")}];
  [coderCopy encodeObject:v31 forKey:@"MSUSnapshotPrepareSize"];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_installationSize];
  [coderCopy encodeObject:v32 forKey:@"InstallationSize"];

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_installationSnapshotSize];
  [coderCopy encodeObject:v33 forKey:@"InstallationSnapshotSize"];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor minimumSystemPartitionSize](self, "minimumSystemPartitionSize")}];
  [coderCopy encodeObject:v34 forKey:@"MinimumSystemPartitionSize"];

  [coderCopy encodeBool:-[SUCoreDescriptor streamingZipCapable](self forKey:{"streamingZipCapable"), @"StreamingZipCapable"}];
  systemPartitionPadding = [(SUCoreDescriptor *)self systemPartitionPadding];
  [coderCopy encodeObject:systemPartitionPadding forKey:@"SystemPartitionPadding"];

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor preSUStagingRequiredSize](self, "preSUStagingRequiredSize")}];
  [coderCopy encodeObject:v36 forKey:@"PSUSRequiredSize"];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor preSUStagingOptionalSize](self, "preSUStagingOptionalSize")}];
  [coderCopy encodeObject:v37 forKey:@"PSUSOptionalSize"];

  [coderCopy encodeBool:-[SUCoreDescriptor disableReserveSpace](self forKey:{"disableReserveSpace"), @"DisableReserveSpace"}];
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[SUCoreDescriptor centeralizedPurgeableFactor](self, "centeralizedPurgeableFactor")}];
  [coderCopy encodeObject:v38 forKey:@"CenteralizedPurgeableFactor"];

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[SUCoreDescriptor pluginPurgeableFactor](self, "pluginPurgeableFactor")}];
  [coderCopy encodeObject:v39 forKey:@"PluginPurgeableFactor"];

  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor minReserveSpace](self, "minReserveSpace")}];
  [coderCopy encodeObject:v40 forKey:@"MinReserveSpace"];

  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor maxReserveSpace](self, "maxReserveSpace")}];
  [coderCopy encodeObject:v41 forKey:@"MaxReserveSpace"];

  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor unentitledReserveAmount](self, "unentitledReserveAmount")}];
  [coderCopy encodeObject:v42 forKey:@"UnentitledReserveAmount"];

  [coderCopy encodeBool:-[SUCoreDescriptor autoDownloadAllowableOverCellular](self forKey:{"autoDownloadAllowableOverCellular"), @"AutoDownloadAllowableOverCellular"}];
  [coderCopy encodeBool:-[SUCoreDescriptor downloadAllowableOverCellular](self forKey:{"downloadAllowableOverCellular"), @"DownloadAllowableOverCellular"}];
  [coderCopy encodeBool:-[SUCoreDescriptor downloadable](self forKey:{"downloadable"), @"Downloadable"}];
  [coderCopy encodeBool:-[SUCoreDescriptor disableSiriVoiceDeletion](self forKey:{"disableSiriVoiceDeletion"), @"DisableSiriVoiceDeletion"}];
  [coderCopy encodeBool:-[SUCoreDescriptor disableCDLevel4](self forKey:{"disableCDLevel4"), @"DisableCDLevel4"}];
  [coderCopy encodeBool:-[SUCoreDescriptor disableAppDemotion](self forKey:{"disableAppDemotion"), @"DisableAppDemotion"}];
  [coderCopy encodeBool:-[SUCoreDescriptor disableMASuspension](self forKey:{"disableMASuspension"), @"DisableMASuspension"}];
  [coderCopy encodeBool:-[SUCoreDescriptor disableInstallTonight](self forKey:{"disableInstallTonight"), @"DisableInstallTonight"}];
  [coderCopy encodeBool:-[SUCoreDescriptor forcePasscodeRequired](self forKey:{"forcePasscodeRequired"), @"ForcePasscodeRequired"}];
  [coderCopy encodeBool:-[SUCoreDescriptor rampEnabled](self forKey:{"rampEnabled"), @"RampEnabled"}];
  [coderCopy encodeBool:-[SUCoreDescriptor granularlyRamped](self forKey:{"granularlyRamped"), @"GranularlyRamped"}];
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor mdmDelayInterval](self, "mdmDelayInterval")}];
  [coderCopy encodeObject:v43 forKey:@"MDMDelayInterval"];

  [coderCopy encodeBool:-[SUCoreDescriptor autoUpdateEnabled](self forKey:{"autoUpdateEnabled"), @"AutoUpdateEnabled"}];
  [coderCopy encodeInteger:-[SUCoreDescriptor hideInstallAlert](self forKey:{"hideInstallAlert"), @"HideInstallAlert"}];
  [coderCopy encodeBool:-[SUCoreDescriptor containsSFRContent](self forKey:{"containsSFRContent"), @"ContainsSFRContent"}];
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor installAlertInterval](self, "installAlertInterval")}];
  [coderCopy encodeObject:v44 forKey:@"InstallAlertInterval"];

  [coderCopy encodeBool:-[SUCoreDescriptor allowAutoDownloadOnBattery](self forKey:{"allowAutoDownloadOnBattery"), @"AllowAutoDownloadOnBattery"}];
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor autoDownloadOnBatteryDelay](self, "autoDownloadOnBatteryDelay")}];
  [coderCopy encodeObject:v45 forKey:@"AutoDownloadOnBatteryDelay"];

  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor autoDownloadOnBatteryMinBattery](self, "autoDownloadOnBatteryMinBattery")}];
  [coderCopy encodeObject:v46 forKey:@"AutoDownloadOnBatteryMinBattery"];

  setupCritical = [(SUCoreDescriptor *)self setupCritical];
  [coderCopy encodeObject:setupCritical forKey:@"SetupCritical"];

  [coderCopy encodeBool:-[SUCoreDescriptor criticalCellularOverride](self forKey:{"criticalCellularOverride"), @"CriticalCellularOverride"}];
  [coderCopy encodeBool:-[SUCoreDescriptor criticalOutOfBoxOnly](self forKey:{"criticalOutOfBoxOnly"), @"CriticalOutOfBoxOnly"}];
  lastEmergencyBuild = [(SUCoreDescriptor *)self lastEmergencyBuild];
  [coderCopy encodeObject:lastEmergencyBuild forKey:@"LastEmergencyBuild"];

  lastEmergencyOSVersion = [(SUCoreDescriptor *)self lastEmergencyOSVersion];
  [coderCopy encodeObject:lastEmergencyOSVersion forKey:@"LastEmergencyOSVersion"];

  [coderCopy encodeBool:-[SUCoreDescriptor mandatoryUpdateEligible](self forKey:{"mandatoryUpdateEligible"), @"MandatoryUpdateEligible"}];
  mandatoryUpdateVersionMin = [(SUCoreDescriptor *)self mandatoryUpdateVersionMin];
  [coderCopy encodeObject:mandatoryUpdateVersionMin forKey:@"MandatoryUpdateVersionMin"];

  mandatoryUpdateVersionMax = [(SUCoreDescriptor *)self mandatoryUpdateVersionMax];
  [coderCopy encodeObject:mandatoryUpdateVersionMax forKey:@"MandatoryUpdateVersionMax"];

  [coderCopy encodeBool:-[SUCoreDescriptor mandatoryUpdateOptional](self forKey:{"mandatoryUpdateOptional"), @"MandatoryUpdateOptional"}];
  [coderCopy encodeBool:-[SUCoreDescriptor mandatoryUpdateRestrictedToOutOfTheBox](self forKey:{"mandatoryUpdateRestrictedToOutOfTheBox"), @"MandatoryUpdateRestrictedToOutOfTheBox"}];
  [coderCopy encodeBool:-[SUCoreDescriptor oneShotBuddyDisabled](self forKey:{"oneShotBuddyDisabled"), @"OneShotBuddyDisabled"}];
  oneShotBuddyDisabledBuilds = [(SUCoreDescriptor *)self oneShotBuddyDisabledBuilds];
  [coderCopy encodeObject:oneShotBuddyDisabledBuilds forKey:@"OneShotBuddyDisabledBuilds"];

  [coderCopy encodeBool:-[SUCoreDescriptor criticalUpdate](self forKey:{"criticalUpdate"), @"CriticalUpdate"}];
  productType = [(SUCoreDescriptor *)self productType];
  [coderCopy encodeObject:productType forKey:@"ProductType"];

  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor autoInstallDelay](self, "autoInstallDelay")}];
  [coderCopy encodeObject:v54 forKey:@"AutoInstallDelay"];

  [coderCopy encodeBool:-[SUCoreDescriptor notifyAfter](self forKey:{"notifyAfter"), @"NotifyAfter"}];
  minimumBridgeVersion = [(SUCoreDescriptor *)self minimumBridgeVersion];
  [coderCopy encodeObject:minimumBridgeVersion forKey:@"MinimumBridgeVersion"];

  [coderCopy encodeBool:-[SUCoreDescriptor disableRosettaUpdates](self forKey:{"disableRosettaUpdates"), @"DisableRosettaUpdates"}];
  [coderCopy encodeBool:-[SUCoreDescriptor disableRecoveryOSUpdates](self forKey:{"disableRecoveryOSUpdates"), @"DisableRecoveryOSUpdates"}];
  [coderCopy encodeBool:-[SUCoreDescriptor requireInstallAssistantUpdate](self forKey:{"requireInstallAssistantUpdate"), @"RequireInstallAssistantUpdate"}];
  sepDigest = [(SUCoreDescriptor *)self sepDigest];
  [coderCopy encodeObject:sepDigest forKey:@"SEPDigest"];

  sepTBMDigests = [(SUCoreDescriptor *)self sepTBMDigests];
  [coderCopy encodeObject:sepTBMDigests forKey:@"SEPTBMDigests"];

  rsepDigest = [(SUCoreDescriptor *)self rsepDigest];
  [coderCopy encodeObject:rsepDigest forKey:@"RSEPDigest"];

  rsepTBMDigests = [(SUCoreDescriptor *)self rsepTBMDigests];
  [coderCopy encodeObject:rsepTBMDigests forKey:@"RSEPTBMDigests"];

  documentationID = [(SUCoreDescriptor *)self documentationID];
  [coderCopy encodeObject:documentationID forKey:@"DocumentationID"];

  documentation = [(SUCoreDescriptor *)self documentation];
  [coderCopy encodeObject:documentation forKey:@"Documentation"];

  softwareUpdateURL = [(SUCoreDescriptor *)self softwareUpdateURL];
  [coderCopy encodeObject:softwareUpdateURL forKey:@"SoftwareUpdateURL"];

  measurement = [(SUCoreDescriptor *)self measurement];
  [coderCopy encodeObject:measurement forKey:@"Measurement"];

  measurementAlgorithm = [(SUCoreDescriptor *)self measurementAlgorithm];
  [coderCopy encodeObject:measurementAlgorithm forKey:@"MeasurementAlgorithm"];

  softwareUpdateAssetIdentifier = [(SUCoreDescriptor *)self softwareUpdateAssetIdentifier];
  [coderCopy encodeObject:softwareUpdateAssetIdentifier forKey:@"SoftwareUpdateAssetIdentifier"];

  documentationAssetIdentifier = [(SUCoreDescriptor *)self documentationAssetIdentifier];
  [coderCopy encodeObject:documentationAssetIdentifier forKey:@"DocumentationAssetIdentifier"];

  [coderCopy encodeBool:-[SUCoreDescriptor promoteAlternateUpdate](self forKey:{"promoteAlternateUpdate"), @"PromoteAlternateUpdate"}];
  [coderCopy encodeBool:-[SUCoreDescriptor enableAlternateAssetAudience](self forKey:{"enableAlternateAssetAudience"), @"EnableAlternateAssetAudienceUUID"}];
  alternateAssetAudienceUUID = [(SUCoreDescriptor *)self alternateAssetAudienceUUID];
  [coderCopy encodeObject:alternateAssetAudienceUUID forKey:@"AlternateAssetAudienceUUID"];

  assetAudienceUUID = [(SUCoreDescriptor *)self assetAudienceUUID];
  [coderCopy encodeObject:assetAudienceUUID forKey:@"AssetAudienceUUID"];

  updateBrainPath = [(SUCoreDescriptor *)self updateBrainPath];
  [coderCopy encodeObject:updateBrainPath forKey:@"UpdateBrainPath"];

  updateBundlePath = [(SUCoreDescriptor *)self updateBundlePath];
  [coderCopy encodeObject:updateBundlePath forKey:@"UpdateBundlePath"];

  bundleAttributes = [(SUCoreDescriptor *)self bundleAttributes];
  [coderCopy encodeObject:bundleAttributes forKey:@"BundleAttributes"];

  [coderCopy encodeBool:-[SUCoreDescriptor splatOnly](self forKey:{"splatOnly"), @"SplatOnly"}];
  [coderCopy encodeBool:-[SUCoreDescriptor semiSplatEnabled](self forKey:{"semiSplatEnabled"), @"SemiSplatEnabled"}];
  semiSplatMustQuitApps = [(SUCoreDescriptor *)self semiSplatMustQuitApps];
  [coderCopy encodeObject:semiSplatMustQuitApps forKey:@"SemiSplatMustQuitApps"];

  [coderCopy encodeBool:-[SUCoreDescriptor revoked](self forKey:{"revoked"), @"Revoked"}];
  [coderCopy encodeBool:-[SUCoreDescriptor semiSplatRestartNow](self forKey:{"semiSplatRestartNow"), @"SemiSplatRestartNow"}];
  [coderCopy encodeBool:-[SUCoreDescriptor disableSplatCombo](self forKey:{"disableSplatCombo"), @"DisableSplombo"}];
  associatedSplatDescriptor = [(SUCoreDescriptor *)self associatedSplatDescriptor];
  [coderCopy encodeObject:associatedSplatDescriptor forKey:@"AssociatedSplatDescriptor"];

  [coderCopy encodeBool:-[SUCoreDescriptor enablePreSUStaging](self forKey:{"enablePreSUStaging"), @"EnablePSUS"}];
  [coderCopy encodeBool:-[SUCoreDescriptor enablePreSUStagingForOptionalAssets](self forKey:{"enablePreSUStagingForOptionalAssets"), @"EnablePSUSForOptionalAssets"}];
  v74 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor preSUStagingMaxSize](self, "preSUStagingMaxSize")}];
  [coderCopy encodeObject:v74 forKey:@"PSUSMaxSize"];

  v75 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor minFreeSpacePostStageOptionalAssets](self, "minFreeSpacePostStageOptionalAssets")}];
  [coderCopy encodeObject:v75 forKey:@"MinFreeSpacePostStageOptionalAssets"];

  [coderCopy encodeBool:-[SUCoreDescriptor disableSecurityAdvisoryNotification](self forKey:{"disableSecurityAdvisoryNotification"), @"DisableSecurityAdvisoryNotification"}];
  [coderCopy encodeBool:-[SUCoreDescriptor disableDeviceCompatibilityNotification](self forKey:{"disableDeviceCompatibilityNotification"), @"DisableDeviceCompatibilityNotification"}];
  alignediOSMajorVersion = [(SUCoreDescriptor *)self alignediOSMajorVersion];
  [coderCopy encodeObject:alignediOSMajorVersion forKey:@"AlignediOSMajorVersion"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      descriptorType = [(SUCoreDescriptor *)self descriptorType];
      if (descriptorType == [(SUCoreDescriptor *)v5 descriptorType])
      {
        associatedSplatDescriptor = [(SUCoreDescriptor *)self associatedSplatDescriptor];

        if (associatedSplatDescriptor)
        {
          associatedSplatDescriptor2 = [(SUCoreDescriptor *)self associatedSplatDescriptor];
          associatedSplatDescriptor3 = [(SUCoreDescriptor *)v5 associatedSplatDescriptor];
          v10 = [associatedSplatDescriptor2 isEqual:associatedSplatDescriptor3];

          if (v10)
          {
LABEL_6:
            if ([(SUCoreDescriptor *)self descriptorType]== 2 || [(SUCoreDescriptor *)self descriptorType]== 4)
            {
              v11 = MEMORY[0x277D643F8];
              updateBrainPath = [(SUCoreDescriptor *)self updateBrainPath];
              updateBrainPath2 = [(SUCoreDescriptor *)v5 updateBrainPath];
              if ([v11 stringIsEqual:updateBrainPath to:updateBrainPath2])
              {
                v14 = MEMORY[0x277D643F8];
                updateBundlePath = [(SUCoreDescriptor *)self updateBundlePath];
                updateBundlePath2 = [(SUCoreDescriptor *)v5 updateBundlePath];
                v17 = [v14 stringIsEqual:updateBundlePath to:updateBundlePath2];

LABEL_25:
                goto LABEL_26;
              }
            }

            else
            {
              v19 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SUCoreDescriptor descriptorType](self, "descriptorType")}];
              v20 = [&unk_2846B9CE8 containsObject:v19];

              if (v20)
              {
                v21 = MEMORY[0x277D643F8];
                updateBrainPath = [(SUCoreDescriptor *)self productVersion];
                updateBrainPath2 = [(SUCoreDescriptor *)v5 productVersion];
                if ([v21 stringIsEqual:updateBrainPath to:updateBrainPath2])
                {
                  v22 = MEMORY[0x277D643F8];
                  productBuildVersion = [(SUCoreDescriptor *)self productBuildVersion];
                  productBuildVersion2 = [(SUCoreDescriptor *)v5 productBuildVersion];
                  if ([v22 stringIsEqual:productBuildVersion to:productBuildVersion2])
                  {
                    v25 = MEMORY[0x277D643F8];
                    productVersionExtra = [(SUCoreDescriptor *)self productVersionExtra];
                    productVersionExtra2 = [(SUCoreDescriptor *)v5 productVersionExtra];
                    v54 = productVersionExtra;
                    if ([v25 stringIsEqual:productVersionExtra to:productVersionExtra2])
                    {
                      v27 = MEMORY[0x277D643F8];
                      releaseType = [(SUCoreDescriptor *)self releaseType];
                      releaseType2 = [(SUCoreDescriptor *)v5 releaseType];
                      v52 = releaseType;
                      if ([v27 stringIsEqual:releaseType to:releaseType2])
                      {
                        v29 = MEMORY[0x277D643F8];
                        restoreVersion = [(SUCoreDescriptor *)self restoreVersion];
                        restoreVersion2 = [(SUCoreDescriptor *)v5 restoreVersion];
                        v50 = restoreVersion;
                        if ([v29 stringIsEqual:restoreVersion to:restoreVersion2])
                        {
                          v31 = MEMORY[0x277D643F8];
                          targetUpdateBridgeVersion = [(SUCoreDescriptor *)self targetUpdateBridgeVersion];
                          targetUpdateBridgeVersion2 = [(SUCoreDescriptor *)v5 targetUpdateBridgeVersion];
                          v48 = targetUpdateBridgeVersion;
                          v34 = targetUpdateBridgeVersion;
                          v35 = targetUpdateBridgeVersion2;
                          if ([v31 stringIsEqual:v34 to:targetUpdateBridgeVersion2])
                          {
                            v46 = MEMORY[0x277D643F8];
                            targetUpdateSFRVersion = [(SUCoreDescriptor *)self targetUpdateSFRVersion];
                            targetUpdateSFRVersion2 = [(SUCoreDescriptor *)v5 targetUpdateSFRVersion];
                            v38 = v46;
                            v45 = targetUpdateSFRVersion2;
                            v47 = targetUpdateSFRVersion;
                            if ([v38 stringIsEqual:targetUpdateSFRVersion to:?])
                            {
                              v44 = MEMORY[0x277D643F8];
                              trainName = [(SUCoreDescriptor *)self trainName];
                              trainName2 = [(SUCoreDescriptor *)v5 trainName];
                              v17 = [v44 stringIsEqual:trainName to:trainName2];
                            }

                            else
                            {
                              v17 = 0;
                            }
                          }

                          else
                          {
                            v17 = 0;
                          }
                        }

                        else
                        {
                          v17 = 0;
                        }
                      }

                      else
                      {
                        v17 = 0;
                      }
                    }

                    else
                    {
                      v17 = 0;
                    }
                  }

                  else
                  {
                    v17 = 0;
                  }

                  goto LABEL_25;
                }
              }

              else
              {
                v41 = objc_alloc(MEMORY[0x277CCACA8]);
                v42 = [SUCoreDescriptor nameForDescriptorType:[(SUCoreDescriptor *)self descriptorType]];
                updateBrainPath = [v41 initWithFormat:@"Unexpected descriptor type %@", v42];

                updateBrainPath2 = [MEMORY[0x277D64428] sharedDiag];
                [updateBrainPath2 trackAnomaly:@"DescriptorIsEqual" forReason:updateBrainPath withResult:8116 withError:0];
              }
            }

            v17 = 0;
            goto LABEL_25;
          }
        }

        else
        {
          associatedSplatDescriptor4 = [(SUCoreDescriptor *)v5 associatedSplatDescriptor];

          if (!associatedSplatDescriptor4)
          {
            goto LABEL_6;
          }
        }
      }

      v17 = 0;
LABEL_26:

      goto LABEL_27;
    }

    v17 = 0;
  }

LABEL_27:

  return v17;
}

- (id)description
{
  if ([(SUCoreDescriptor *)self descriptorType]== 2 || [(SUCoreDescriptor *)self descriptorType]== 4)
  {
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = [SUCoreDescriptor nameForDescriptorType:[(SUCoreDescriptor *)self descriptorType]];
    updateBrainPath = [(SUCoreDescriptor *)self updateBrainPath];
    updateBundlePath = [(SUCoreDescriptor *)self updateBundlePath];
    bundleAttributes = [(SUCoreDescriptor *)self bundleAttributes];
    v8 = [v3 initWithFormat:@"\n[>>>\n    descriptorType: %@\n   updateBrainPath: %@\n  updateBundlePath: %@\n  bundleAttributes: %@\n<<<]", v4, updateBrainPath, updateBundlePath, bundleAttributes];
  }

  else
  {
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SUCoreDescriptor descriptorType](self, "descriptorType")}];
    v11 = [&unk_2846B9D00 containsObject:v10];

    if (v11)
    {
      v183 = [MEMORY[0x277CCAB68] stringWithCapacity:0x4000];
      v179 = [SUCoreDescriptor nameForDescriptorType:[(SUCoreDescriptor *)self descriptorType]];
      v167 = [SUCoreDescriptor nameForDescriptorAudienceType:[(SUCoreDescriptor *)self descriptorAudienceType]];
      v175 = [SUCoreDescriptor nameForDescriptorPreferredUpdateType:[(SUCoreDescriptor *)self preferredUpdateType]];
      humanReadableUpdateName = [(SUCoreDescriptor *)self humanReadableUpdateName];
      humanReadableUpdateTitle = [(SUCoreDescriptor *)self humanReadableUpdateTitle];
      humanReadableUpdateVersion = [(SUCoreDescriptor *)self humanReadableUpdateVersion];
      humanReadableMoreInfoLink = [(SUCoreDescriptor *)self humanReadableMoreInfoLink];
      if ([(SUCoreDescriptor *)self notificationEnabled])
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v119 = v12;
      notificationTitleString = [(SUCoreDescriptor *)self notificationTitleString];
      notificationBodyString = [(SUCoreDescriptor *)self notificationBodyString];
      if ([(SUCoreDescriptor *)self recommendedUpdateEnabled])
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      v115 = v13;
      if ([(SUCoreDescriptor *)self recommendedUpdateApplicable])
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v103 = v14;
      recommendedUpdateNotificationFrequencyDays = [(SUCoreDescriptor *)self recommendedUpdateNotificationFrequencyDays];
      recommendedUpdateMinOSVersion = [(SUCoreDescriptor *)self recommendedUpdateMinOSVersion];
      recommendedUpdateMaxOSVersion = [(SUCoreDescriptor *)self recommendedUpdateMaxOSVersion];
      recommendedUpdateTitleString = [(SUCoreDescriptor *)self recommendedUpdateTitleString];
      recommendedUpdateAlertBodyString = [(SUCoreDescriptor *)self recommendedUpdateAlertBodyString];
      mandatoryUpdateBodyString = [(SUCoreDescriptor *)self mandatoryUpdateBodyString];
      securityAdvisoryNotificationTitleString = [(SUCoreDescriptor *)self securityAdvisoryNotificationTitleString];
      securityAdvisoryNotificationBodyString = [(SUCoreDescriptor *)self securityAdvisoryNotificationBodyString];
      deviceCompatibilityNotificationTitleString = [(SUCoreDescriptor *)self deviceCompatibilityNotificationTitleString];
      deviceCompatibilityNotificationBodyString = [(SUCoreDescriptor *)self deviceCompatibilityNotificationBodyString];
      safariUpdateContentBundleURL = [(SUCoreDescriptor *)self safariUpdateContentBundleURL];
      v16 = @"EXISTS";
      if (!safariUpdateContentBundleURL)
      {
        v16 = @"NA";
      }

      v84 = v16;
      updateTypeName = [(SUCoreDescriptor *)self updateTypeName];
      assetID = [(SUCoreDescriptor *)self assetID];
      softwareUpdateAssetType = [(SUCoreDescriptor *)self softwareUpdateAssetType];
      documentationAssetType = [(SUCoreDescriptor *)self documentationAssetType];
      softwareUpdateAssetAbsoluteID = [(SUCoreDescriptor *)self softwareUpdateAssetAbsoluteID];
      documentationAssetAbsoluteID = [(SUCoreDescriptor *)self documentationAssetAbsoluteID];
      softwareUpdateAssetPurpose = [(SUCoreDescriptor *)self softwareUpdateAssetPurpose];
      documentationAssetPurpose = [(SUCoreDescriptor *)self documentationAssetPurpose];
      [v183 appendFormat:@"\n [>>>\n                         descriptorType: %@\n                 descriptorAudienceType: %@\n                    preferredUpdateType: %@\n                humanReadableUpdateName: %@\n               humanReadableUpdateTitle: %@\n             humanReadableUpdateVersion: %@\n              humanReadableMoreInfoLink: %@\n                    notificationEnabled: %@\n                notificationTitleString: %@\n                 notificationBodyString: %@\n               recommendedUpdateEnabled: %@\n            recommendedUpdateApplicable: %@\n        updateNotificationFrequencyDays: %@\n          recommendedUpdateMinOSVersion: %@\n          recommendedUpdateMaxOSVersion: %@\n           recommendedUpdateTitleString: %@\n       recommendedUpdateAlertBodyString: %@\n              mandatoryUpdateBodyString: %@\n      securityAdvisoryNotificationTitle: %@\n       securityAdvisoryNotificationBody: %@\n   deviceCompatibilityNotificationTitle: %@\n    deviceCompatibilityNotificationBody: %@\n           safariUpdateContentBundleURL: %@\n                             updateType: %@\n                                assetID: %@\n                softwareUpdateAssetType: %@\n                 documentationAssetType: %@\n          softwareUpdateAssetAbsoluteID: %@\n           documentationAssetAbsoluteID: %@\n             softwareUpdateAssetPurpose: %@\n              documentationAssetPurpose: %@\n", v179, v167, v175, humanReadableUpdateName, humanReadableUpdateTitle, humanReadableUpdateVersion, humanReadableMoreInfoLink, v119, notificationTitleString, notificationBodyString, v115, v103, recommendedUpdateNotificationFrequencyDays, recommendedUpdateMinOSVersion, recommendedUpdateMaxOSVersion, recommendedUpdateTitleString, recommendedUpdateAlertBodyString, mandatoryUpdateBodyString, securityAdvisoryNotificationTitleString, securityAdvisoryNotificationBodyString, deviceCompatibilityNotificationTitleString, deviceCompatibilityNotificationBodyString, v84, updateTypeName, assetID, softwareUpdateAssetType, documentationAssetType, softwareUpdateAssetAbsoluteID, documentationAssetAbsoluteID, softwareUpdateAssetPurpose, documentationAssetPurpose];

      v23 = @"NO";
      if ([(SUCoreDescriptor *)self promoteAlternateUpdate])
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      v140 = v24;
      if ([(SUCoreDescriptor *)self enableAlternateAssetAudience])
      {
        v25 = @"YES";
      }

      else
      {
        v25 = @"NO";
      }

      v136 = v25;
      alternateAssetAudienceUUID = [(SUCoreDescriptor *)self alternateAssetAudienceUUID];
      assetAudienceUUID = [(SUCoreDescriptor *)self assetAudienceUUID];
      uniqueBuildID = [(SUCoreDescriptor *)self uniqueBuildID];
      splatInstallDate = [(SUCoreDescriptor *)self splatInstallDate];
      trainName = [(SUCoreDescriptor *)self trainName];
      productVersion = [(SUCoreDescriptor *)self productVersion];
      productBuildVersion = [(SUCoreDescriptor *)self productBuildVersion];
      productVersionExtra = [(SUCoreDescriptor *)self productVersionExtra];
      productSystemName = [(SUCoreDescriptor *)self productSystemName];
      releaseType = [(SUCoreDescriptor *)self releaseType];
      publisher = [(SUCoreDescriptor *)self publisher];
      restoreVersion = [(SUCoreDescriptor *)self restoreVersion];
      targetUpdateBridgeVersion = [(SUCoreDescriptor *)self targetUpdateBridgeVersion];
      targetUpdateSFRVersion = [(SUCoreDescriptor *)self targetUpdateSFRVersion];
      releaseDate = [(SUCoreDescriptor *)self releaseDate];
      prerequisiteBuild = [(SUCoreDescriptor *)self prerequisiteBuild];
      prerequisiteOSVersion = [(SUCoreDescriptor *)self prerequisiteOSVersion];
      supportedDevices = [(SUCoreDescriptor *)self supportedDevices];
      if ([(SUCoreDescriptor *)self fullReplacement])
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v104 = v26;
      downloadSize = [(SUCoreDescriptor *)self downloadSize];
      unarchivedSize = [(SUCoreDescriptor *)self unarchivedSize];
      msuPrepareSize = [(SUCoreDescriptor *)self msuPrepareSize];
      msuSnapshotPrepareSize = [(SUCoreDescriptor *)self msuSnapshotPrepareSize];
      preparationSize = [(SUCoreDescriptor *)self preparationSize];
      installationSize = [(SUCoreDescriptor *)self installationSize];
      minimumSystemPartitionSize = [(SUCoreDescriptor *)self minimumSystemPartitionSize];
      totalRequiredFreeSpace = [(SUCoreDescriptor *)self totalRequiredFreeSpace];
      if ([(SUCoreDescriptor *)self streamingZipCapable])
      {
        v30 = @"YES";
      }

      else
      {
        v30 = @"NO";
      }

      systemPartitionPadding = [(SUCoreDescriptor *)self systemPartitionPadding];
      preSUStagingRequiredSize = [(SUCoreDescriptor *)self preSUStagingRequiredSize];
      preSUStagingOptionalSize = [(SUCoreDescriptor *)self preSUStagingOptionalSize];
      if ([(SUCoreDescriptor *)self disableReserveSpace])
      {
        v23 = @"YES";
      }

      [v183 appendFormat:@"                 promoteAlternateUpdate: %@\n           enableAlternateAssetAudience: %@\n             alternateAssetAudienceUUID: %@\n                      assetAudienceUUID: %@\n                          uniqueBuildID: %@\n                       splatInstallDate:%@\n                              trainName: %@\n                         productVersion: %@\n                    productBuildVersion: %@\n                    productVersionExtra: %@\n                      productSystemName: %@\n                            releaseType: %@\n                              publisher: %@\n                         restoreVersion: %@\n              targetUpdateBridgeVersion: %@\n                 targetUpdateSFRVersion: %@\n                            releaseDate: %@\n                      prerequisiteBuild: %@\n                  prerequisiteOSVersion: %@\n                       supportedDevices: %@\n                        fullReplacement: %@\n                           downloadSize: %llu\n                         unarchivedSize: %llu\n                         msuPrepareSize: %llu\n                 msuSnapshotPrepareSize: %llu\n                        preparationSize: %llu\n                       installationSize: %llu\n             minimumSystemPartitionSize: %llu\n                 totalRequiredFreeSpace: %llu\n                    streamingZipCapable: %@\n                 systemPartitionPadding: %@\n                 psusRequiredAssetsSize: %llu\n                 psusOptionalAssetsSize: %llu\n                    disableReserveSpace: %@\n                         suDownloadSize: %llu\n", v140, v136, alternateAssetAudienceUUID, assetAudienceUUID, uniqueBuildID, splatInstallDate, trainName, productVersion, productBuildVersion, productVersionExtra, productSystemName, releaseType, publisher, restoreVersion, targetUpdateBridgeVersion, targetUpdateSFRVersion, releaseDate, prerequisiteBuild, prerequisiteOSVersion, supportedDevices, v104, downloadSize, unarchivedSize, msuPrepareSize, msuSnapshotPrepareSize, preparationSize, installationSize, minimumSystemPartitionSize, totalRequiredFreeSpace, v30, systemPartitionPadding, preSUStagingRequiredSize, preSUStagingOptionalSize, v23, -[SUCoreDescriptor suDownloadSize](self, "suDownloadSize")];

      v34 = @"YES";
      if ([(SUCoreDescriptor *)self enablePreSUStaging])
      {
        v35 = @"YES";
      }

      else
      {
        v35 = @"NO";
      }

      v181 = v35;
      if ([(SUCoreDescriptor *)self enablePreSUStagingForOptionalAssets])
      {
        v36 = @"YES";
      }

      else
      {
        v36 = @"NO";
      }

      v177 = v36;
      minFreeSpacePostStageOptionalAssets = [(SUCoreDescriptor *)self minFreeSpacePostStageOptionalAssets];
      if ([(SUCoreDescriptor *)self autoDownloadAllowableOverCellular])
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      v169 = v37;
      if ([(SUCoreDescriptor *)self downloadAllowableOverCellular])
      {
        v38 = @"YES";
      }

      else
      {
        v38 = @"NO";
      }

      v165 = v38;
      if ([(SUCoreDescriptor *)self downloadable])
      {
        v39 = @"YES";
      }

      else
      {
        v39 = @"NO";
      }

      v161 = v39;
      if ([(SUCoreDescriptor *)self disableSiriVoiceDeletion])
      {
        v40 = @"YES";
      }

      else
      {
        v40 = @"NO";
      }

      v157 = v40;
      if ([(SUCoreDescriptor *)self disableCDLevel4])
      {
        v41 = @"YES";
      }

      else
      {
        v41 = @"NO";
      }

      v153 = v41;
      if ([(SUCoreDescriptor *)self disableAppDemotion])
      {
        v42 = @"YES";
      }

      else
      {
        v42 = @"NO";
      }

      v149 = v42;
      if ([(SUCoreDescriptor *)self disableMASuspension])
      {
        v43 = @"YES";
      }

      else
      {
        v43 = @"NO";
      }

      v145 = v43;
      if ([(SUCoreDescriptor *)self disableInstallTonight])
      {
        v44 = @"YES";
      }

      else
      {
        v44 = @"NO";
      }

      v141 = v44;
      if ([(SUCoreDescriptor *)self forcePasscodeRequired])
      {
        v45 = @"YES";
      }

      else
      {
        v45 = @"NO";
      }

      v137 = v45;
      if ([(SUCoreDescriptor *)self rampEnabled])
      {
        v46 = @"YES";
      }

      else
      {
        v46 = @"NO";
      }

      v133 = v46;
      if ([(SUCoreDescriptor *)self granularlyRamped])
      {
        v47 = @"YES";
      }

      else
      {
        v47 = @"NO";
      }

      v129 = v47;
      mdmDelayInterval = [(SUCoreDescriptor *)self mdmDelayInterval];
      if ([(SUCoreDescriptor *)self autoUpdateEnabled])
      {
        v48 = @"YES";
      }

      else
      {
        v48 = @"NO";
      }

      v113 = v48;
      v125 = [MEMORY[0x277D643F8] stringFromTriState:{-[SUCoreDescriptor hideInstallAlert](self, "hideInstallAlert")}];
      if ([(SUCoreDescriptor *)self containsSFRContent])
      {
        v49 = @"YES";
      }

      else
      {
        v49 = @"NO";
      }

      v117 = v49;
      installAlertInterval = [(SUCoreDescriptor *)self installAlertInterval];
      if ([(SUCoreDescriptor *)self allowAutoDownloadOnBattery])
      {
        v50 = @"YES";
      }

      else
      {
        v50 = @"NO";
      }

      v105 = v50;
      autoDownloadOnBatteryDelay = [(SUCoreDescriptor *)self autoDownloadOnBatteryDelay];
      autoDownloadOnBatteryMinBattery = [(SUCoreDescriptor *)self autoDownloadOnBatteryMinBattery];
      if ([(SUCoreDescriptor *)self disableSplatCombo])
      {
        v51 = @"YES";
      }

      else
      {
        v51 = @"NO";
      }

      v89 = v51;
      setupCritical = [(SUCoreDescriptor *)self setupCritical];
      if ([(SUCoreDescriptor *)self criticalCellularOverride])
      {
        v52 = @"YES";
      }

      else
      {
        v52 = @"NO";
      }

      v83 = v52;
      if ([(SUCoreDescriptor *)self criticalOutOfBoxOnly])
      {
        v53 = @"YES";
      }

      else
      {
        v53 = @"NO";
      }

      v82 = v53;
      lastEmergencyBuild = [(SUCoreDescriptor *)self lastEmergencyBuild];
      lastEmergencyOSVersion = [(SUCoreDescriptor *)self lastEmergencyOSVersion];
      if ([(SUCoreDescriptor *)self mandatoryUpdateEligible])
      {
        v54 = @"YES";
      }

      else
      {
        v54 = @"NO";
      }

      mandatoryUpdateVersionMin = [(SUCoreDescriptor *)self mandatoryUpdateVersionMin];
      mandatoryUpdateVersionMax = [(SUCoreDescriptor *)self mandatoryUpdateVersionMax];
      if ([(SUCoreDescriptor *)self mandatoryUpdateOptional])
      {
        v57 = @"YES";
      }

      else
      {
        v57 = @"NO";
      }

      if ([(SUCoreDescriptor *)self mandatoryUpdateRestrictedToOutOfTheBox])
      {
        v58 = @"YES";
      }

      else
      {
        v58 = @"NO";
      }

      if ([(SUCoreDescriptor *)self oneShotBuddyDisabled])
      {
        v59 = @"YES";
      }

      else
      {
        v59 = @"NO";
      }

      oneShotBuddyDisabledBuilds = [(SUCoreDescriptor *)self oneShotBuddyDisabledBuilds];
      [v183 appendFormat:@"                             enablePSUS: %@\n            enablePSUSForOptionalAssets: %@\n    minFreeSpacePostStageOptionalAssets: %llu\n      autoDownloadAllowableOverCellular: %@\n          downloadAllowableOverCellular: %@\n                           downloadable: %@\n               disableSiriVoiceDeletion: %@\n                        disableCDLevel4: %@\n                     disableAppDemotion: %@\n                    disableMASuspension: %@\n                  disableInstallTonight: %@\n                  forcePasscodeRequired: %@\n                            rampEnabled: %@\n                       granularlyRamped: %@\n                       mdmDelayInterval: %llu\n                      autoUpdateEnabled: %@\n                       hideInstallAlert: %@\n                     containsSFRContent: %@\n                   installAlertInterval: %llu\n             allowAutoDownloadOnBattery: %@\n             autoDownloadOnBatteryDelay: %llu\n        autoDownloadOnBatteryMinBattery: %llu\n                         disableSplombo: %@\n                          setupCritical: %@\n               criticalCellularOverride: %@\n                   criticalOutOfBoxOnly: %@\n                     lastEmergencyBuild: %@\n                 lastEmergencyOSVersion: %@\n                mandatoryUpdateEligible: %@\n              mandatoryUpdateVersionMin: %@\n              mandatoryUpdateVersionMax: %@\n                mandatoryUpdateOptional: %@\n mandatoryUpdateRestrictedToOutOfTheBox: %@\n                   oneShotBuddyDisabled: %@\n             oneShotBuddyDisabledBuilds: %@\n", v181, v177, minFreeSpacePostStageOptionalAssets, v169, v165, v161, v157, v153, v149, v145, v141, v137, v133, v129, mdmDelayInterval, v113, v125, v117, installAlertInterval, v105, autoDownloadOnBatteryDelay, autoDownloadOnBatteryMinBattery, v89, setupCritical, v83, v82, lastEmergencyBuild, lastEmergencyOSVersion, v54, mandatoryUpdateVersionMin, mandatoryUpdateVersionMax, v57, v58, v59, oneShotBuddyDisabledBuilds];

      if ([(SUCoreDescriptor *)self criticalUpdate])
      {
        v61 = @"YES";
      }

      else
      {
        v61 = @"NO";
      }

      v178 = v61;
      productType = [(SUCoreDescriptor *)self productType];
      autoInstallDelay = [(SUCoreDescriptor *)self autoInstallDelay];
      if ([(SUCoreDescriptor *)self notifyAfter])
      {
        v62 = @"YES";
      }

      else
      {
        v62 = @"NO";
      }

      v158 = v62;
      minimumBridgeVersion = [(SUCoreDescriptor *)self minimumBridgeVersion];
      if ([(SUCoreDescriptor *)self disableRosettaUpdates])
      {
        v63 = @"YES";
      }

      else
      {
        v63 = @"NO";
      }

      v146 = v63;
      if ([(SUCoreDescriptor *)self disableRecoveryOSUpdates])
      {
        v64 = @"YES";
      }

      else
      {
        v64 = @"NO";
      }

      v142 = v64;
      if ([(SUCoreDescriptor *)self requireInstallAssistantUpdate])
      {
        v65 = @"YES";
      }

      else
      {
        v65 = @"NO";
      }

      v138 = v65;
      sepDigest = [(SUCoreDescriptor *)self sepDigest];
      if (sepDigest)
      {
        v66 = @"present";
      }

      else
      {
        v66 = 0;
      }

      v134 = v66;
      sepTBMDigests = [(SUCoreDescriptor *)self sepTBMDigests];
      if (sepTBMDigests)
      {
        v67 = @"present";
      }

      else
      {
        v67 = 0;
      }

      v130 = v67;
      rsepDigest = [(SUCoreDescriptor *)self rsepDigest];
      if (rsepDigest)
      {
        v68 = @"present";
      }

      else
      {
        v68 = 0;
      }

      v126 = v68;
      rsepTBMDigests = [(SUCoreDescriptor *)self rsepTBMDigests];
      if (rsepTBMDigests)
      {
        v69 = @"present";
      }

      else
      {
        v69 = 0;
      }

      v122 = v69;
      documentationID = [(SUCoreDescriptor *)self documentationID];
      documentation = [(SUCoreDescriptor *)self documentation];
      softwareUpdateURL = [(SUCoreDescriptor *)self softwareUpdateURL];
      measurement = [(SUCoreDescriptor *)self measurement];
      measurementAlgorithm = [(SUCoreDescriptor *)self measurementAlgorithm];
      bundleAttributes2 = [(SUCoreDescriptor *)self bundleAttributes];
      if ([(SUCoreDescriptor *)self splatOnly])
      {
        v71 = @"YES";
      }

      else
      {
        v71 = @"NO";
      }

      v98 = v71;
      if ([(SUCoreDescriptor *)self semiSplatEnabled])
      {
        v72 = @"YES";
      }

      else
      {
        v72 = @"NO";
      }

      semiSplatMustQuitApps = [(SUCoreDescriptor *)self semiSplatMustQuitApps];
      if ([(SUCoreDescriptor *)self revoked])
      {
        v74 = @"YES";
      }

      else
      {
        v74 = @"NO";
      }

      if ([(SUCoreDescriptor *)self semiSplatRestartNow])
      {
        v75 = @"YES";
      }

      else
      {
        v75 = @"NO";
      }

      associatedSplatDescriptor = [(SUCoreDescriptor *)self associatedSplatDescriptor];
      if ([(SUCoreDescriptor *)self disableSecurityAdvisoryNotification])
      {
        v77 = @"YES";
      }

      else
      {
        v77 = @"NO";
      }

      if (![(SUCoreDescriptor *)self disableDeviceCompatibilityNotification])
      {
        v34 = @"NO";
      }

      alignediOSMajorVersion = [(SUCoreDescriptor *)self alignediOSMajorVersion];
      [v183 appendFormat:@"                         criticalUpdate: %@\n                            productType: %@\n                       autoInstallDelay: %llu\n                            notifyAfter: %@\n                   minimumBridgeVersion: %@\n                  disableRosettaUpdates: %@\n               disableRecoveryOSUpdates: %@\n          requireInstallAssistantUpdate: %@\n                              sepDigest: %@\n                          sepTBMDigests: %@\n                             rsepDigest: %@\n                         rsepTBMDigests: %@\n                        documentationID: %@\n                          documentation: %@\n                      softwareUpdateURL: %@\n                            measurement: %@\n                   measurementAlgorithm: %@\n                       bundleAttributes: %@\n                              splatOnly: %@\n                       semiSplatEnabled: %@\n                  semiSplatMustQuitApps: %@\n                                revoked: %@\n                    semiSplatRestartNow: %@\n              associatedSplatDescriptor: %@\n    disableSecurityAdvisoryNotification: %@\n disableDeviceCompatibilityNotification: %@\n                 alignediOSMajorVersion: %@\n", v178, productType, autoInstallDelay, v158, minimumBridgeVersion, v146, v142, v138, v134, v130, v126, v122, documentationID, documentation, softwareUpdateURL, measurement, measurementAlgorithm, bundleAttributes2, v98, v72, semiSplatMustQuitApps, v74, v75, associatedSplatDescriptor, v77, v34, alignediOSMajorVersion];

      v8 = v183;
      [v183 appendFormat:@"            centeralizedPurgeableFactor: %lu\n                  pluginPurgeableFactor: %lu\n                        minReserveSpace: %llu\n                        maxReserveSpace: %llu\n                unentitledReserveAmount: %llu\n               installationSnapshotSize: %llu\n<<<]", -[SUCoreDescriptor centeralizedPurgeableFactor](self, "centeralizedPurgeableFactor"), -[SUCoreDescriptor pluginPurgeableFactor](self, "pluginPurgeableFactor"), -[SUCoreDescriptor minReserveSpace](self, "minReserveSpace"), -[SUCoreDescriptor maxReserveSpace](self, "maxReserveSpace"), -[SUCoreDescriptor unentitledReserveAmount](self, "unentitledReserveAmount"), -[SUCoreDescriptor installationSnapshotSize](self, "installationSnapshotSize")];
    }

    else
    {
      v79 = objc_alloc(MEMORY[0x277CCACA8]);
      v80 = [SUCoreDescriptor nameForDescriptorType:[(SUCoreDescriptor *)self descriptorType]];
      v8 = [v79 initWithFormat:@"Unexpected descriptor type %@", v80];

      mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
      [mEMORY[0x277D64428] trackAnomaly:@"DescriptorDescription" forReason:v8 withResult:8116 withError:0];
    }
  }

  return v8;
}

- (id)overviewWithMaxValueLength:(unint64_t)length providingSubstitutionMap:(id)map
{
  mapCopy = map;
  if ([(SUCoreDescriptor *)self descriptorType]== 2 || [(SUCoreDescriptor *)self descriptorType]== 4)
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    mEMORY[0x277D64428] = [SUCoreDescriptor nameForDescriptorType:[(SUCoreDescriptor *)self descriptorType]];
    v9 = MEMORY[0x277D643F8];
    updateBrainPath = [(SUCoreDescriptor *)self updateBrainPath];
    v11 = [v9 limitString:updateBrainPath toMaxLength:length providingSubstitutionMap:mapCopy];
    v12 = MEMORY[0x277D643F8];
    updateBundlePath = [(SUCoreDescriptor *)self updateBundlePath];
    v14 = [v12 limitString:updateBundlePath toMaxLength:length providingSubstitutionMap:mapCopy];
    v15 = [v7 initWithFormat:@"\n[>>>\n    descriptorType: %@\n   updateBrainPath: %@\n  updateBundlePath: %@\n<<<]", mEMORY[0x277D64428], v11, v14];
  }

  else
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SUCoreDescriptor descriptorType](self, "descriptorType")}];
    v18 = [&unk_2846B9D18 containsObject:v17];

    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v20 = [SUCoreDescriptor nameForDescriptorType:[(SUCoreDescriptor *)self descriptorType]];
    mEMORY[0x277D64428] = v20;
    if (v18)
    {
      v113 = [SUCoreDescriptor nameForDescriptorAudienceType:[(SUCoreDescriptor *)self descriptorAudienceType]];
      v112 = [SUCoreDescriptor nameForDescriptorPreferredUpdateType:[(SUCoreDescriptor *)self preferredUpdateType]];
      v21 = MEMORY[0x277D643F8];
      humanReadableUpdateName = [(SUCoreDescriptor *)self humanReadableUpdateName];
      v111 = [v21 limitString:humanReadableUpdateName toMaxLength:length providingSubstitutionMap:mapCopy];
      v22 = MEMORY[0x277D643F8];
      humanReadableUpdateTitle = [(SUCoreDescriptor *)self humanReadableUpdateTitle];
      v110 = [v22 limitString:humanReadableUpdateTitle toMaxLength:length providingSubstitutionMap:mapCopy];
      v23 = MEMORY[0x277D643F8];
      humanReadableUpdateVersion = [(SUCoreDescriptor *)self humanReadableUpdateVersion];
      v109 = [v23 limitString:humanReadableUpdateVersion toMaxLength:length providingSubstitutionMap:mapCopy];
      v24 = MEMORY[0x277D643F8];
      humanReadableMoreInfoLink = [(SUCoreDescriptor *)self humanReadableMoreInfoLink];
      v108 = [v24 limitString:humanReadableMoreInfoLink toMaxLength:length providingSubstitutionMap:mapCopy];
      v25 = MEMORY[0x277D643F8];
      updateTypeName = [(SUCoreDescriptor *)self updateTypeName];
      v107 = [v25 limitString:updateTypeName toMaxLength:length providingSubstitutionMap:mapCopy];
      v26 = MEMORY[0x277D643F8];
      productVersion = [(SUCoreDescriptor *)self productVersion];
      v106 = [v26 limitString:productVersion toMaxLength:length providingSubstitutionMap:mapCopy];
      v27 = MEMORY[0x277D643F8];
      productBuildVersion = [(SUCoreDescriptor *)self productBuildVersion];
      v105 = [v27 limitString:productBuildVersion toMaxLength:length providingSubstitutionMap:mapCopy];
      v28 = MEMORY[0x277D643F8];
      restoreVersion = [(SUCoreDescriptor *)self restoreVersion];
      v104 = [v28 limitString:restoreVersion toMaxLength:length providingSubstitutionMap:mapCopy];
      v29 = MEMORY[0x277D643F8];
      targetUpdateBridgeVersion = [(SUCoreDescriptor *)self targetUpdateBridgeVersion];
      v103 = [v29 limitString:targetUpdateBridgeVersion toMaxLength:length providingSubstitutionMap:mapCopy];
      v30 = MEMORY[0x277D643F8];
      targetUpdateSFRVersion = [(SUCoreDescriptor *)self targetUpdateSFRVersion];
      v102 = [v30 limitString:targetUpdateSFRVersion toMaxLength:length providingSubstitutionMap:mapCopy];
      v31 = MEMORY[0x277D643F8];
      releaseType = [(SUCoreDescriptor *)self releaseType];
      v101 = [v31 limitString:releaseType toMaxLength:length providingSubstitutionMap:mapCopy];
      v32 = MEMORY[0x277D643F8];
      releaseDate = [(SUCoreDescriptor *)self releaseDate];
      v84 = [releaseDate description];
      v100 = [v32 limitString:v84 toMaxLength:length providingSubstitutionMap:mapCopy];
      v33 = MEMORY[0x277D643F8];
      prerequisiteBuild = [(SUCoreDescriptor *)self prerequisiteBuild];
      v99 = [v33 limitString:prerequisiteBuild toMaxLength:length providingSubstitutionMap:mapCopy];
      v34 = MEMORY[0x277D643F8];
      prerequisiteOSVersion = [(SUCoreDescriptor *)self prerequisiteOSVersion];
      v98 = [v34 limitString:prerequisiteOSVersion toMaxLength:length providingSubstitutionMap:mapCopy];
      downloadSize = [(SUCoreDescriptor *)self downloadSize];
      preSUStagingRequiredSize = [(SUCoreDescriptor *)self preSUStagingRequiredSize];
      preSUStagingOptionalSize = [(SUCoreDescriptor *)self preSUStagingOptionalSize];
      suDownloadSize = [(SUCoreDescriptor *)self suDownloadSize];
      unarchivedSize = [(SUCoreDescriptor *)self unarchivedSize];
      preparationSize = [(SUCoreDescriptor *)self preparationSize];
      installationSize = [(SUCoreDescriptor *)self installationSize];
      totalRequiredFreeSpace = [(SUCoreDescriptor *)self totalRequiredFreeSpace];
      v79 = v19;
      v35 = @"NO";
      if ([(SUCoreDescriptor *)self rampEnabled])
      {
        v36 = @"YES";
      }

      else
      {
        v36 = @"NO";
      }

      v70 = v36;
      if ([(SUCoreDescriptor *)self granularlyRamped])
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      v69 = v37;
      mdmDelayInterval = [(SUCoreDescriptor *)self mdmDelayInterval];
      if ([(SUCoreDescriptor *)self autoUpdateEnabled])
      {
        v38 = @"YES";
      }

      else
      {
        v38 = @"NO";
      }

      v66 = v38;
      v97 = [MEMORY[0x277D643F8] stringFromTriState:{-[SUCoreDescriptor hideInstallAlert](self, "hideInstallAlert")}];
      if ([(SUCoreDescriptor *)self containsSFRContent])
      {
        v39 = @"YES";
      }

      else
      {
        v39 = @"NO";
      }

      v64 = v39;
      installAlertInterval = [(SUCoreDescriptor *)self installAlertInterval];
      if ([(SUCoreDescriptor *)self allowAutoDownloadOnBattery])
      {
        v40 = @"YES";
      }

      else
      {
        v40 = @"NO";
      }

      v60 = v40;
      if ([(SUCoreDescriptor *)self disableSplatCombo])
      {
        v41 = @"YES";
      }

      else
      {
        v41 = @"NO";
      }

      v59 = v41;
      v42 = MEMORY[0x277D643F8];
      setupCritical = [(SUCoreDescriptor *)self setupCritical];
      v61 = [v42 limitString:setupCritical toMaxLength:length providingSubstitutionMap:mapCopy];
      v43 = MEMORY[0x277D643F8];
      documentationID = [(SUCoreDescriptor *)self documentationID];
      v57 = [v43 limitString:documentationID toMaxLength:length providingSubstitutionMap:mapCopy];
      v44 = MEMORY[0x277D643F8];
      softwareUpdateURL = [(SUCoreDescriptor *)self softwareUpdateURL];
      v56 = [v44 limitString:softwareUpdateURL toMaxLength:length providingSubstitutionMap:mapCopy];
      v45 = MEMORY[0x277D643F8];
      measurement = [(SUCoreDescriptor *)self measurement];
      v63 = [measurement description];
      v55 = [v45 limitString:v63 toMaxLength:length providingSubstitutionMap:mapCopy];
      v46 = MEMORY[0x277D643F8];
      measurementAlgorithm = [(SUCoreDescriptor *)self measurementAlgorithm];
      v53 = [v46 limitString:measurementAlgorithm toMaxLength:length providingSubstitutionMap:mapCopy];
      if ([(SUCoreDescriptor *)self splatOnly])
      {
        v47 = @"YES";
      }

      else
      {
        v47 = @"NO";
      }

      v52 = v47;
      if ([(SUCoreDescriptor *)self semiSplatEnabled])
      {
        v48 = @"YES";
      }

      else
      {
        v48 = @"NO";
      }

      if ([(SUCoreDescriptor *)self revoked])
      {
        v35 = @"YES";
      }

      v49 = MEMORY[0x277D643F8];
      associatedSplatDescriptor = [(SUCoreDescriptor *)self associatedSplatDescriptor];
      humanReadableUpdateName2 = [associatedSplatDescriptor humanReadableUpdateName];
      v51 = [v49 limitString:humanReadableUpdateName2 toMaxLength:length providingSubstitutionMap:mapCopy];
      v15 = [v79 initWithFormat:@"\n[>>>\n             descriptorType: %@\n     descriptorAudienceType: %@\n        preferredUpdateType: %@\n    humanReadableUpdateName: %@\n   humanReadableUpdateTitle: %@\n humanReadableUpdateVersion: %@\n  humanReadableMoreInfoLink: %@\n                 updateType: %@\n             productVersion: %@\n        productBuildVersion: %@\n             restoreVersion: %@\n  targetUpdateBridgeVersion: %@\n     targetUpdateSFRVersion: %@\n                releaseType: %@\n                releaseDate: %@\n          prerequisiteBuild: %@\n      prerequisiteOSVersion: %@\n               downloadSize: %llu\n     psusRequiredAssetsSize: %llu\n     psusOptionalAssetsSize: %llu\n             suDownloadSize: %llu\n             unarchivedSize: %llu\n            preparationSize: %llu\n           installationSize: %llu\n     totalRequiredFreeSpace: %llu\n                rampEnabled: %@\n           granularlyRamped: %@\n           mdmDelayInterval: %llu\n          autoUpdateEnabled: %@\n           hideInstallAlert: %@\n         containsSFRContent: %@\n       installAlertInterval: %llu\n allowAutoDownloadOnBattery: %@\n             disableSplombo: %@\n              setupCritical: %@\n            documentationID: %@\n          softwareUpdateURL: %@\n                measurement: %@\n       measurementAlgorithm: %@\n                  splatOnly: %@\n           semiSplatEnabled: %@\n                    revoked: %@\n  associatedSplatDescriptor: %@\n<<<]", mEMORY[0x277D64428], v113, v112, v111, v110, v109, v108, v107, v106, v105, v104, v103, v102, v101, v100, v99, v98, downloadSize, preSUStagingRequiredSize, preSUStagingOptionalSize, suDownloadSize, unarchivedSize, preparationSize, installationSize, totalRequiredFreeSpace, v70, v69, mdmDelayInterval, v66, v97, v64, installAlertInterval, v60, v59, v61, v57, v56, v55, v53, v52, v48, v35, v51];
    }

    else
    {
      v15 = [v19 initWithFormat:@"Unexpected descriptor type %@", v20];

      mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
      [mEMORY[0x277D64428] trackAnomaly:@"DescriptorOverview" forReason:v15 withResult:8116 withError:0];
    }
  }

  return v15;
}

- (id)summary
{
  softwareUpdateAssetType = [(SUCoreDescriptor *)self softwareUpdateAssetType];
  if ([softwareUpdateAssetType isEqualToString:@"com.apple.MobileAsset.MobileSoftwareUpdate.UpdateBrain"])
  {

LABEL_4:
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    productBuildVersion = [(SUCoreDescriptor *)self productBuildVersion];
    v8 = [v6 initWithFormat:@"%@", productBuildVersion];
    goto LABEL_11;
  }

  softwareUpdateAssetType2 = [(SUCoreDescriptor *)self softwareUpdateAssetType];
  v5 = [softwareUpdateAssetType2 isEqualToString:@"com.apple.MobileAsset.MobileSoftwareUpdate.MacUpdateBrain"];

  if (v5)
  {
    goto LABEL_4;
  }

  associatedSplatDescriptor = [(SUCoreDescriptor *)self associatedSplatDescriptor];

  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  productBuildVersion = [(SUCoreDescriptor *)self humanReadableUpdateName];
  productBuildVersion2 = [(SUCoreDescriptor *)self productBuildVersion];
  releaseType = [(SUCoreDescriptor *)self releaseType];
  v13 = releaseType;
  v14 = @"Customer";
  if (releaseType)
  {
    v14 = releaseType;
  }

  if (associatedSplatDescriptor)
  {
    v15 = [v10 initWithFormat:@"%@ %@ (SplatCombo) (%@)", productBuildVersion, productBuildVersion2, v14];
  }

  else
  {
    v15 = [v10 initWithFormat:@"%@ %@ (%@)", productBuildVersion, productBuildVersion2, v14];
  }

  v8 = v15;

LABEL_11:

  return v8;
}

@end