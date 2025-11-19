@interface SUCoreDescriptor
+ (BOOL)isEmergencyUpdate:(id)a3;
+ (id)cleanProductVersion:(id)a3;
+ (id)nameForDescriptorAudienceType:(int64_t)a3;
+ (id)nameForDescriptorPreferredUpdateType:(int64_t)a3;
+ (id)nameForDescriptorType:(int64_t)a3;
- (BOOL)fullReplacement;
- (BOOL)isEqual:(id)a3;
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
- (SUCoreDescriptor)initWithCoder:(id)a3;
- (SUCoreDescriptor)initWithSUAsset:(id)a3 releaseDate:(id)a4 prepareSize:(id)a5 snapshotPrepareSize:(id)a6 applySize:(id)a7 snapshotApplySize:(id)a8 defaultValues:(id)a9;
- (SUCoreDescriptor)initWithUpdateBrainPath:(id)a3 updateBundlePath:(id)a4 bundleAttributes:(id)a5 descriptorType:(int64_t)a6;
- (id)criticalOverrideCellularPolicy;
- (id)description;
- (id)initSemiSplatDescriptor;
- (id)overviewWithMaxValueLength:(unint64_t)a3 providingSubstitutionMap:(id)a4;
- (id)summary;
- (id)updateTypeName;
- (unint64_t)downloadSize;
- (unint64_t)installationSize;
- (unint64_t)installationSnapshotSize;
- (unint64_t)refreshInstallationSize;
- (unint64_t)refreshPrepareSize;
- (unint64_t)refreshTotalRequiredFreeSpace;
- (unint64_t)totalRequiredFreeSpaceHelper:(BOOL)a3;
- (unint64_t)unarchivedSize;
- (void)assignDescriptorAudienceType:(int64_t)a3 descriptorPreferredUpdateType:(int64_t)a4 assetAudienceUUID:(id)a5;
- (void)assignDocumentationFromAsset:(id)a3 extendingBundleProperties:(BOOL)a4;
- (void)encodeWithCoder:(id)a3;
- (void)transferNonAssetPropertiesFromDescriptor:(id)a3;
@end

@implementation SUCoreDescriptor

- (SUCoreDescriptor)initWithSUAsset:(id)a3 releaseDate:(id)a4 prepareSize:(id)a5 snapshotPrepareSize:(id)a6 applySize:(id)a7 snapshotApplySize:(id)a8 defaultValues:(id)a9
{
  v168 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v164 = a6;
  v19 = a7;
  v163 = a8;
  v20 = a9;
  if (v16)
  {
    v21 = [v16 SUCoreBorder_attributes];
    v22 = v21;
    if (v21)
    {
      if ([v21 count])
      {
        v162 = v18;
        v165.receiver = self;
        v165.super_class = SUCoreDescriptor;
        v23 = [(SUCoreDescriptor *)&v165 init];
        v24 = v23;
        if (!v23)
        {
LABEL_60:
          self = v24;
          v68 = self;
          v18 = v162;
          goto LABEL_61;
        }

        v23->_descriptorType = 1;
        v25 = [v16 assetType];
        v26 = [v25 isEqualToString:@"com.apple.MobileAsset.SFRSoftwareUpdate"];

        if (v26)
        {
          v24->_descriptorType = 3;
        }

        v24->_descriptorAudienceType = 0;
        v24->_preferredUpdateType = 0;
        v27 = [v16 assetId];
        assetID = v24->_assetID;
        v24->_assetID = v27;

        objc_storeStrong(&v24->_bundleAttributes, v22);
        v29 = [v16 assetType];
        softwareUpdateAssetType = v24->_softwareUpdateAssetType;
        v24->_softwareUpdateAssetType = v29;

        documentationAssetType = v24->_documentationAssetType;
        v24->_documentationAssetType = 0;

        v32 = [v16 absoluteAssetId];
        softwareUpdateAssetAbsoluteID = v24->_softwareUpdateAssetAbsoluteID;
        v24->_softwareUpdateAssetAbsoluteID = v32;

        v34 = [v16 purpose];
        softwareUpdateAssetPurpose = v24->_softwareUpdateAssetPurpose;
        v24->_softwareUpdateAssetPurpose = v34;

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

        v160 = v17;
        v161 = v19;
        if (v17)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v65 = v17;
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
            v73 = [v66 dateFromString:v17];
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

        v24->_suDownloadSize = [v22 safeULLForKey:*MEMORY[0x277D28908] defaultValue:{objc_msgSend(v20, "safeULLForKey:", *MEMORY[0x277D28908])}];
        v24->_unarchivedSize = [v22 safeULLForKey:*MEMORY[0x277D28920] defaultValue:{objc_msgSend(v20, "safeULLForKey:", *MEMORY[0x277D28920])}];
        v24->_minimumSystemPartitionSize = [v22 safeULLForKey:@"ActualMinimumSystemPartition" defaultValue:{objc_msgSend(v20, "safeULLForKey:", @"ActualMinimumSystemPartition"}] << 20;
        v24->_streamingZipCapable = [v22 safeBooleanForKey:*MEMORY[0x277D28910] defaultValue:{objc_msgSend(v20, "safeBooleanForKey:", *MEMORY[0x277D28910])}];
        v80 = [v22 safeDictionaryForKey:@"SystemPartitionPadding" fromBase:@"updateAsset attributes" withKeyDescription:@"system partition padding"];
        systemPartitionPadding = v24->_systemPartitionPadding;
        v24->_systemPartitionPadding = v80;

        v24->_preSUStagingRequiredSize = 0;
        v24->_preSUStagingOptionalSize = 0;
        v24->_disableReserveSpace = [v22 safeBooleanForKey:@"SUDisableReserveSpace" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:", @"SUDisableReserveSpace"}];
        v24->_centeralizedPurgeableFactor = [v22 safeULForKey:@"SUCenteralizedPurgeableFactor" defaultValue:{objc_msgSend(v20, "safeULForKey:", @"SUCenteralizedPurgeableFactor"}];
        v24->_pluginPurgeableFactor = [v22 safeULForKey:@"SUPluginPurgeableFactor" defaultValue:{objc_msgSend(v20, "safeULForKey:", @"SUPluginPurgeableFactor"}];
        v24->_minReserveSpace = [v22 safeULLForKey:@"SUMinReserveSpace" defaultValue:{objc_msgSend(v20, "safeULLForKey:", @"SUMinReserveSpace"}];
        v24->_maxReserveSpace = [v22 safeULLForKey:@"SUMaxReserveSpace" defaultValue:{objc_msgSend(v20, "safeULLForKey:", @"SUMaxReserveSpace"}];
        v24->_unentitledReserveAmount = [v22 safeULLForKey:@"SUUnentitledReserveAmount" defaultValue:{objc_msgSend(v20, "safeULLForKey:", @"SUUnentitledReserveAmount"}];
        v24->_autoDownloadAllowableOverCellular = [v22 safeBooleanForKey:@"AutomaticDownloadOver3G" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:", @"AutomaticDownloadOver3G"}];
        v24->_downloadAllowableOverCellular = [v22 safeBooleanForKey:@"AllowableOverCellular" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:", @"AllowableOverCellular"}];
        v24->_downloadable = [v22 safeBooleanForKey:@"AllowableOTA" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:", @"AllowableOTA"}];
        v24->_disableSiriVoiceDeletion = [v22 safeBooleanForKey:@"SUDisableSiriVoiceDeletion" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:", @"SUDisableSiriVoiceDeletion"}];
        v24->_disableCDLevel4 = [v22 safeBooleanForKey:@"SUDisableCDLevel4" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:", @"SUDisableCDLevel4"}];
        v24->_disableAppDemotion = [v22 safeBooleanForKey:@"SUDisableAppDemotion" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:", @"SUDisableAppDemotion"}];
        v24->_disableMASuspension = [v22 safeBooleanForKey:@"SUDisableMASuspension" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:", @"SUDisableMASuspension"}];
        v24->_disableInstallTonight = [v22 safeBooleanForKey:@"SUInstallTonightEnabled" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:", @"SUInstallTonightEnabled"}] ^ 1;
        v24->_forcePasscodeRequired = [v22 safeBooleanForKey:@"ForcePasscodeRequired" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:", @"ForcePasscodeRequired"}];
        v24->_rampEnabled = [v22 safeBooleanForKey:@"Ramp" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:", @"Ramp"}];
        v24->_granularlyRamped = [v22 safeBooleanForKey:@"GranularlyRamped" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:", @"GranularlyRamped"}];
        v24->_mdmDelayInterval = [v22 safeULLForKey:@"MDMDelayInterval" defaultValue:{objc_msgSend(v20, "safeULLForKey:", @"MDMDelayInterval"}];
        v24->_autoUpdateEnabled = [v22 safeBooleanForKey:@"AutoUpdate" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:", @"AutoUpdate"}];
        v24->_hideInstallAlert = [v22 safeTriStateForKey:@"__HideInstallAlert" defaultValue:{objc_msgSend(v20, "safeTriStateForKey:", @"__HideInstallAlert"}];
        v24->_containsSFRContent = [v22 safeBooleanForKey:@"ContainsSFRContent" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:", @"ContainsSFRContent"}];
        v24->_installAlertInterval = [v22 safeULLForKey:@"InstallAlertInterval" defaultValue:{objc_msgSend(v20, "safeULLForKey:", @"InstallAlertInterval"}];
        v24->_allowAutoDownloadOnBattery = [v22 safeBooleanForKey:@"AllowAutoDownloadOnBattery" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:", @"AllowAutoDownloadOnBattery"}];
        v24->_autoDownloadOnBatteryDelay = [v22 safeULLForKey:@"AllowAutoDownloadOnBatteryDelay" defaultValue:{objc_msgSend(v20, "safeULLForKey:", @"AllowAutoDownloadOnBatteryDelay"}];
        v24->_autoDownloadOnBatteryMinBattery = [v22 safeULLForKey:@"AutoDownloadOnBatteryMinBattery" defaultValue:{objc_msgSend(v20, "safeULLForKey:", @"AutoDownloadOnBatteryMinBattery"}];
        v82 = [v22 safeStringForKey:@"SetupCritical"];
        setupCritical = v24->_setupCritical;
        v24->_setupCritical = v82;

        v24->_criticalCellularOverride = [v22 safeBooleanForKey:@"SetupCriticalCellularOverride" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:", @"SetupCriticalCellularOverride"}];
        v24->_criticalOutOfBoxOnly = [v22 safeBooleanForKey:@"SetupCriticalUpdateOutOfBoxOnly" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:", @"SetupCriticalUpdateOutOfBoxOnly"}];
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

        v17 = v160;
        v24->_mandatoryUpdateRestrictedToOutOfTheBox = v94;
        v24->_oneShotBuddyDisabled = [v22 safeBooleanForKey:@"DisableOneShotBuddy"];
        v97 = [v22 safeObjectForKey:@"DisableOneShotBuddyBuilds" ofClass:objc_opt_class()];
        oneShotBuddyDisabledBuilds = v24->_oneShotBuddyDisabledBuilds;
        v24->_oneShotBuddyDisabledBuilds = v97;

        v24->_criticalUpdate = [v22 safeBooleanForKey:@"CriticalUpdate" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:", @"CriticalUpdate"}];
        v99 = [v22 safeStringForKey:@"ProductType"];
        productType = v24->_productType;
        v24->_productType = v99;

        v24->_autoInstallDelay = [v22 safeULLForKey:@"AutoInstallDelay" defaultValue:{objc_msgSend(v20, "safeULLForKey:", @"AutoInstallDelay"}];
        v24->_notifyAfter = [v22 safeBooleanForKey:@"NotifyAfter" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:", @"NotifyAfter"}];
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
            v120 = [v117 initWithFormat:@"%@%@", v118, v119, v159];
            v121 = v24->_softwareUpdateURL;
            v24->_softwareUpdateURL = v120;
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
          v126 = [MEMORY[0x277D64460] sharedLogger];
          v127 = [v126 oslog];

          v19 = v161;
          if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v167 = v162;
            _os_log_impl(&dword_23193C000, v127, OS_LOG_TYPE_DEFAULT, "Override descriptor attribute msuPrepareSize with %{public}@", buf, 0xCu);
          }

          v24->_msuPrepareSize = [v162 longLongValue];
          if (v164)
          {
            v128 = [MEMORY[0x277D64460] sharedLogger];
            v129 = [v128 oslog];

            if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v167 = v164;
              _os_log_impl(&dword_23193C000, v129, OS_LOG_TYPE_DEFAULT, "Override descriptor attribute msuSnapshotPrepareSize with %{public}@", buf, 0xCu);
            }

            v130 = 0;
            v24->_msuSnapshotPrepareSize = [v164 longLongValue];
            if (!v161)
            {
              goto LABEL_45;
            }

LABEL_38:
            v132 = [MEMORY[0x277D64460] sharedLogger];
            v133 = [v132 oslog];

            v19 = v161;
            if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v167 = v161;
              _os_log_impl(&dword_23193C000, v133, OS_LOG_TYPE_DEFAULT, "Override descriptor attribute installationSize with %{public}@", buf, 0xCu);
            }

            v24->_installationSize = [v161 longLongValue];
            if (v163)
            {
              v134 = [MEMORY[0x277D64460] sharedLogger];
              v135 = [v134 oslog];

              if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v167 = v163;
                _os_log_impl(&dword_23193C000, v135, OS_LOG_TYPE_DEFAULT, "Override descriptor attribute installationSnapshotSize with %{public}@", buf, 0xCu);
              }

              v24->_installationSnapshotSize = [v163 longLongValue];
              v19 = v161;
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
          v19 = v161;
          if (v130)
          {
            v24->_msuPrepareSize = 0;
            v24->_msuSnapshotPrepareSize = 0;
            v131 = [MEMORY[0x277D64428] sharedDiag];
            [v131 trackAnomaly:@"[DESCRIPTOR]" forReason:@"unable to determine prepare size for installation" withResult:8100 withError:v130];

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
          v137 = [MEMORY[0x277D64428] sharedDiag];
          [v137 trackAnomaly:@"[DESCRIPTOR]" forReason:@"unable to determine apply size for installation" withResult:8100 withError:v136];

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
        objc_storeStrong(&v24->_softwareUpdateAsset, a3);
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

        v24->_disableSplatCombo = [v22 safeBooleanForKey:@"DisableSplombo" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:defaultValue:", @"DisableSplombo", 0)}];
        v152 = [v22 safeBooleanForKey:@"DisablePreSoftwareUpdateAssetStaging" defaultValue:{objc_msgSend(v20, "safeBooleanForKey:defaultValue:", @"DisablePreSoftwareUpdateAssetStaging", 0)}];
        v24->_enablePreSUStaging = v152 ^ 1;
        if (v152)
        {
          v24->_enablePreSUStagingForOptionalAssets = 0;
        }

        else
        {
          if (v20)
          {
            v153 = [v20 safeBooleanForKey:@"EnablePSUSForOptionalAssets" defaultValue:1];
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

      v69 = [MEMORY[0x277D64428] sharedDiag];
      v70 = v69;
      v71 = @"unable to create SU descriptor: update asset without attributes";
    }

    else
    {
      v69 = [MEMORY[0x277D64428] sharedDiag];
      v70 = v69;
      v71 = @"unable to create SU descriptor: unable to create attributes dictionary";
    }

    [v69 trackError:@"[DESCRIPTOR]" forReason:v71 withResult:8100 withError:0];

    v68 = 0;
LABEL_61:

    goto LABEL_62;
  }

  v67 = [MEMORY[0x277D64428] sharedDiag];
  [v67 trackError:@"[DESCRIPTOR]" forReason:@"unable to create SU descriptor: nil update asset" withResult:8100 withError:0];

  v68 = 0;
LABEL_62:

  v157 = *MEMORY[0x277D85DE8];
  return v68;
}

- (SUCoreDescriptor)initWithUpdateBrainPath:(id)a3 updateBundlePath:(id)a4 bundleAttributes:(id)a5 descriptorType:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = v13;
  if (!v11)
  {
    v90 = [MEMORY[0x277D64428] sharedDiag];
    v91 = v90;
    v92 = @"no update brain path was provided on descriptor initialization";
LABEL_14:
    [v90 trackError:@"[DESCRIPTOR]" forReason:v92 withResult:8100 withError:0];

    v89 = 0;
    goto LABEL_15;
  }

  if (!v12)
  {
    v90 = [MEMORY[0x277D64428] sharedDiag];
    v91 = v90;
    v92 = @"no update bundle path was provided on descriptor initialization";
    goto LABEL_14;
  }

  if (!v13)
  {
    v90 = [MEMORY[0x277D64428] sharedDiag];
    v91 = v90;
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
    v15->_descriptorType = a6;
    objc_storeStrong(&v15->_updateBrainPath, a3);
    objc_storeStrong(&v16->_updateBundlePath, a4);
    objc_storeStrong(&v16->_bundleAttributes, a5);
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
  v89 = self;
LABEL_15:

  return v89;
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

    v12 = [MEMORY[0x277D64418] sharedDevice];
    v13 = [v12 splatCryptex1ProductVersion];
    rawProductVersion = v3->_rawProductVersion;
    v3->_rawProductVersion = v13;

    v15 = [MEMORY[0x277D64418] sharedDevice];
    v16 = [v15 splatCryptex1ProductVersion];
    productVersion = v3->_productVersion;
    v3->_productVersion = v16;

    v18 = [MEMORY[0x277D64418] sharedDevice];
    v19 = [v18 splatCryptex1BuildVersionOverride];
    v20 = v19;
    if (v19)
    {
      v21 = v19;
      productBuildVersion = v3->_productBuildVersion;
      v3->_productBuildVersion = v21;
    }

    else
    {
      productBuildVersion = [MEMORY[0x277D64418] sharedDevice];
      v23 = [productBuildVersion splatCryptex1BuildVersion];
      v24 = v3->_productBuildVersion;
      v3->_productBuildVersion = v23;
    }

    v25 = [MEMORY[0x277D64418] sharedDevice];
    v26 = [v25 splatCryptex1ProductVersionExtra];
    productVersionExtra = v3->_productVersionExtra;
    v3->_productVersionExtra = v26;

    productSystemName = v3->_productSystemName;
    v3->_productSystemName = @"Security Response";

    v29 = [MEMORY[0x277D64418] sharedDevice];
    v30 = [v29 splatCryptex1ReleaseType];
    releaseType = v3->_releaseType;
    v3->_releaseType = v30;

    v32 = [MEMORY[0x277D64418] sharedDevice];
    v33 = [v32 splatCryptex1RestoreVersion];
    restoreVersion = v3->_restoreVersion;
    v3->_restoreVersion = v33;

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

- (void)assignDocumentationFromAsset:(id)a3 extendingBundleProperties:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  [(SUCoreDescriptor *)self setDocumentationAsset:v6];
  v7 = [v6 assetType];
  [(SUCoreDescriptor *)self setDocumentationAssetType:v7];

  v8 = [v6 absoluteAssetId];
  [(SUCoreDescriptor *)self setDocumentationAssetAbsoluteID:v8];

  v9 = [v6 purpose];
  [(SUCoreDescriptor *)self setDocumentationAssetPurpose:v9];

  v10 = [[SUCoreDocumentation alloc] initWithDocumentationAsset:v6];
  [(SUCoreDescriptor *)self setDocumentation:v10];

  v11 = objc_alloc(MEMORY[0x277D64470]);
  v12 = [(SUCoreDescriptor *)self documentation];
  v13 = [v12 serverAssetMeasurement];
  v14 = [(SUCoreDescriptor *)self documentation];
  v15 = [v14 serverAssetAlgorithm];
  v16 = [v11 initWithProductVersion:0 productBuildVersion:0 releaseType:0 measurement:v13 measurementAlgorithm:v15];
  [(SUCoreDescriptor *)self setDocumentationAssetIdentifier:v16];

  if (v4)
  {
    v18 = [(SUCoreDescriptor *)self documentation];
    v17 = [v18 extendDocumentationProperties];
  }
}

- (void)assignDescriptorAudienceType:(int64_t)a3 descriptorPreferredUpdateType:(int64_t)a4 assetAudienceUUID:(id)a5
{
  v9 = a5;
  [(SUCoreDescriptor *)self setDescriptorAudienceType:a3];
  [(SUCoreDescriptor *)self setPreferredUpdateType:a4];
  v8 = v9;
  if (v9)
  {
    [(SUCoreDescriptor *)self setAssetAudienceUUID:v9];
    v8 = v9;
  }
}

- (NSString)humanReadableUpdateName
{
  v3 = [(SUCoreDescriptor *)self documentation];
  v4 = [v3 humanReadableUpdateName];

  if (!v4)
  {
    v5 = [(SUCoreDescriptor *)self productSystemName];
    if (v5 && (v6 = v5, [(SUCoreDescriptor *)self productVersion], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
    {
      v8 = objc_alloc(MEMORY[0x277CCACA8]);
      v9 = [(SUCoreDescriptor *)self productSystemName];
      v10 = [(SUCoreDescriptor *)self productVersion];
      v4 = [v8 initWithFormat:@"%@ %@", v9, v10];
    }

    else
    {
      v4 = @"Software Update";
    }
  }

  if ([(SUCoreDescriptor *)self splatOnly])
  {
    v11 = [(SUCoreDescriptor *)self productVersionExtra];

    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x277CCACA8]);
      v13 = [(SUCoreDescriptor *)self productVersionExtra];
      v14 = [v12 initWithFormat:@"%@ %@", v4, v13];
LABEL_11:

      v4 = v14;
      goto LABEL_12;
    }
  }

  v15 = [(SUCoreDescriptor *)self associatedSplatDescriptor];
  v16 = [v15 productVersionExtra];

  if (v16)
  {
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    v13 = [(SUCoreDescriptor *)self associatedSplatDescriptor];
    v18 = [v13 productVersionExtra];
    v14 = [v17 initWithFormat:@"%@ %@", v4, v18];

    v4 = v18;
    goto LABEL_11;
  }

LABEL_12:
  v19 = [MEMORY[0x277D64418] sharedDevice];
  if ([v19 isBootedOSSecureInternal])
  {
    v20 = [(SUCoreDescriptor *)self productBuildVersion];
    if (v20)
    {
      v21 = v20;
      v22 = objc_alloc(MEMORY[0x277D64408]);
      v23 = [v22 initWithProjectName:*MEMORY[0x277D64540]];
      v24 = [v23 getBoolConfigForKey:*MEMORY[0x277D644F0]];

      if (v24)
      {
        goto LABEL_17;
      }

      v25 = objc_alloc(MEMORY[0x277CCACA8]);
      v19 = [(SUCoreDescriptor *)self productBuildVersion];
      v26 = [v25 initWithFormat:@"%@ (%@)", v4, v19];

      v4 = v26;
    }
  }

LABEL_17:

  return v4;
}

- (NSString)humanReadableUpdateTitle
{
  v2 = [(SUCoreDescriptor *)self documentation];
  v3 = [v2 humanReadableUpdateTitle];

  return v3;
}

- (NSString)humanReadableUpdateVersion
{
  v3 = [(SUCoreDescriptor *)self documentation];
  v4 = [v3 humanReadableUpdateVersion];

  if ([(SUCoreDescriptor *)self splatOnly])
  {
    v5 = [(SUCoreDescriptor *)self productVersion];
    if (v5)
    {
      v6 = v5;
      v7 = [(SUCoreDescriptor *)self productVersionExtra];

      if (v7)
      {
        v8 = objc_alloc(MEMORY[0x277CCACA8]);
        v9 = [(SUCoreDescriptor *)self productVersion];
        v10 = [(SUCoreDescriptor *)self productVersionExtra];
        v11 = [v8 initWithFormat:@"%@ %@", v9, v10];

        v4 = v11;
      }
    }
  }

  v12 = [MEMORY[0x277D64418] sharedDevice];
  if ([v12 isBootedOSSecureInternal])
  {
    v13 = v4 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = [(SUCoreDescriptor *)self productBuildVersion];
    if (v14)
    {
      v15 = v14;
      v16 = objc_alloc(MEMORY[0x277D64408]);
      v17 = [v16 initWithProjectName:*MEMORY[0x277D64540]];
      v18 = [v17 getBoolConfigForKey:*MEMORY[0x277D644F0]];

      if (v18)
      {
        goto LABEL_13;
      }

      v19 = objc_alloc(MEMORY[0x277CCACA8]);
      v12 = [(SUCoreDescriptor *)self productBuildVersion];
      v20 = [v19 initWithFormat:@"%@ (%@)", v4, v12];

      v4 = v20;
    }
  }

LABEL_13:

  return v4;
}

- (NSString)humanReadableMoreInfoLink
{
  v2 = [(SUCoreDescriptor *)self documentation];
  v3 = [v2 humanReadableMoreInfoLink];

  return v3;
}

- (BOOL)notificationEnabled
{
  v2 = [(SUCoreDescriptor *)self documentation];
  v3 = [v2 notificationEnabled];

  return v3;
}

- (NSString)notificationTitleString
{
  v2 = [(SUCoreDescriptor *)self documentation];
  v3 = [v2 notificationTitleString];

  return v3;
}

- (NSString)notificationBodyString
{
  v2 = [(SUCoreDescriptor *)self documentation];
  v3 = [v2 notificationBodyString];

  return v3;
}

- (BOOL)recommendedUpdateEnabled
{
  v2 = [(SUCoreDescriptor *)self documentation];
  v3 = [v2 recommendedUpdateEnabled];

  return v3;
}

- (BOOL)recommendedUpdateApplicable
{
  v2 = [(SUCoreDescriptor *)self documentation];
  v3 = [v2 recommendedUpdateApplicable];

  return v3;
}

- (NSNumber)recommendedUpdateNotificationFrequencyDays
{
  v2 = [(SUCoreDescriptor *)self documentation];
  v3 = [v2 recommendedUpdateNotificationFrequencyDays];

  return v3;
}

- (NSString)recommendedUpdateMinOSVersion
{
  v2 = [(SUCoreDescriptor *)self documentation];
  v3 = [v2 recommendedUpdateMinOSVersion];

  return v3;
}

- (NSString)recommendedUpdateMaxOSVersion
{
  v2 = [(SUCoreDescriptor *)self documentation];
  v3 = [v2 recommendedUpdateMaxOSVersion];

  return v3;
}

- (NSString)recommendedUpdateTitleString
{
  v2 = [(SUCoreDescriptor *)self documentation];
  v3 = [v2 recommendedUpdateTitleString];

  return v3;
}

- (NSString)recommendedUpdateAlertBodyString
{
  v2 = [(SUCoreDescriptor *)self documentation];
  v3 = [v2 recommendedUpdateAlertBodyString];

  return v3;
}

- (NSString)mandatoryUpdateBodyString
{
  v2 = [(SUCoreDescriptor *)self documentation];
  v3 = [v2 mandatoryUpdateBodyString];

  return v3;
}

- (NSString)securityAdvisoryNotificationTitleString
{
  v2 = [(SUCoreDescriptor *)self documentation];
  v3 = [v2 securityAdvisoryNotificationTitleString];

  return v3;
}

- (NSString)securityAdvisoryNotificationBodyString
{
  v2 = [(SUCoreDescriptor *)self documentation];
  v3 = [v2 securityAdvisoryNotificationBodyString];

  return v3;
}

- (NSString)deviceCompatibilityNotificationTitleString
{
  v2 = [(SUCoreDescriptor *)self documentation];
  v3 = [v2 deviceCompatibilityNotificationTitleString];

  return v3;
}

- (NSString)deviceCompatibilityNotificationBodyString
{
  v2 = [(SUCoreDescriptor *)self documentation];
  v3 = [v2 deviceCompatibilityNotificationBodyString];

  return v3;
}

- (NSURL)safariUpdateContentBundleURL
{
  v2 = [(SUCoreDescriptor *)self documentation];
  v3 = [v2 safariUpdateContentBundleURL];

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
  v14 = *MEMORY[0x277D85DE8];
  productSystemName = self->_productSystemName;
  if (productSystemName)
  {
    v3 = productSystemName;
  }

  else
  {
    v4 = [MEMORY[0x277D64418] sharedDevice];
    v5 = [v4 marketingProductName];

    v6 = [MEMORY[0x277D64460] sharedLogger];
    v7 = [v6 oslog];

    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v8)
      {
        v12 = 138543362;
        v13 = v5;
        _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "Falling back to marketingProductName:%{public}@", &v12, 0xCu);
      }

      v3 = [MEMORY[0x277CCACA8] stringWithString:v5];
    }

    else
    {
      if (v8)
      {
        v12 = 138543362;
        v13 = @"OS";
        _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "Falling back to kSUProductSystemNameDefault:%{public}@", &v12, 0xCu);
      }

      v9 = [MEMORY[0x277D64428] sharedDiag];
      [v9 trackAnomaly:@"SUCoreDescriptor" forReason:@"Falling back to kSUProductSystemNameDefault due to no SUCoreDevice marketingProductName" withResult:8116 withError:0];

      v3 = @"OS";
    }
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)fullReplacement
{
  v3 = [(SUCoreDescriptor *)self prerequisiteBuild];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(SUCoreDescriptor *)self prerequisiteOSVersion];
    v4 = v5 == 0;
  }

  return v4;
}

- (unint64_t)unarchivedSize
{
  unarchivedSize = self->_unarchivedSize;
  v4 = [(SUCoreDescriptor *)self associatedSplatDescriptor];

  if (v4)
  {
    v5 = [(SUCoreDescriptor *)self associatedSplatDescriptor];
    unarchivedSize += [v5 unarchivedSize];
  }

  return unarchivedSize;
}

- (unint64_t)installationSize
{
  installationSize = self->_installationSize;
  v3 = [(SUCoreDescriptor *)self associatedSplatDescriptor];

  if (v3)
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
  v3 = [(SUCoreDescriptor *)self associatedSplatDescriptor];

  if (v3)
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
  v3 = [(SUCoreDescriptor *)self bundleAttributes];
  v4 = SUCoreBorder_MSUAssetCalculatePrepareSize(v3);

  if (v4)
  {
    v5 = [MEMORY[0x277D64428] sharedDiag];
    [v5 trackAnomaly:@"[DESCRIPTOR]" forReason:@"unable to determine refreshed prepare size withResult:using preexisting value" withError:{8100, v4}];
  }

  else
  {
    self->_msuPrepareSize = 0;
    self->_msuSnapshotPrepareSize = 0;
  }

  v6 = [(SUCoreDescriptor *)self msuPrepareSize];

  return v6;
}

- (unint64_t)refreshInstallationSize
{
  v3 = [(SUCoreDescriptor *)self bundleAttributes];
  v4 = SUCoreBorder_MSUAssetCalculateApplySize(v3);

  if (v4)
  {
    v5 = [MEMORY[0x277D64428] sharedDiag];
    [v5 trackAnomaly:@"[DESCRIPTOR]" forReason:@"unable to determine refreshed apply size for installation withResult:using preexisting value" withError:{8100, v4}];
  }

  else
  {
    self->_installationSize = 0;
    self->_installationSnapshotSize = 0;
  }

  v6 = [(SUCoreDescriptor *)self installationSize];

  return v6;
}

- (unint64_t)refreshTotalRequiredFreeSpace
{
  [(SUCoreDescriptor *)self refreshPrepareSize];
  [(SUCoreDescriptor *)self refreshInstallationSize];

  return [(SUCoreDescriptor *)self totalRequiredFreeSpace];
}

- (unint64_t)totalRequiredFreeSpaceHelper:(BOOL)a3
{
  if (a3)
  {
    v4 = [(SUCoreDescriptor *)self snapshotPreparationSize];
    v5 = [(SUCoreDescriptor *)self installationSnapshotSize];
  }

  else
  {
    v4 = [(SUCoreDescriptor *)self preparationSize];
    v5 = [(SUCoreDescriptor *)self installationSize];
  }

  v6 = v5 + v4;
  if (![(SUCoreDescriptor *)self streamingZipCapable])
  {
    v6 += [(SUCoreDescriptor *)self suDownloadSize];
  }

  v7 = [(SUCoreDescriptor *)self associatedSplatDescriptor];
  if (v7)
  {
    v8 = v7;
    v9 = [(SUCoreDescriptor *)self associatedSplatDescriptor];
    v10 = [v9 streamingZipCapable];

    if ((v10 & 1) == 0)
    {
      v11 = [(SUCoreDescriptor *)self associatedSplatDescriptor];
      v6 += [v11 suDownloadSize];
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
  v3 = [(SUCoreDescriptor *)self suDownloadSize];
  v4 = [(SUCoreDescriptor *)self associatedSplatDescriptor];

  if (v4)
  {
    v5 = [(SUCoreDescriptor *)self associatedSplatDescriptor];
    v3 += [v5 suDownloadSize];
  }

  if ([(SUCoreDescriptor *)self enablePreSUStaging])
  {
    v3 += [(SUCoreDescriptor *)self preSUStagingRequiredSize];
  }

  return v3;
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
  v2 = [(SUCoreDescriptor *)self updateType];
  if (v2 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_27892DCF8[v2];
  }
}

+ (BOOL)isEmergencyUpdate:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x277D64418] sharedDevice];
    v5 = [v4 buildVersion];

    if (!v5)
    {
      v17 = [MEMORY[0x277D64460] sharedLogger];
      v7 = [v17 oslog];

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "isEmergencyUpdate returns NO because currentBuild is nil", &v27, 2u);
      }

      v15 = 0;
      goto LABEL_34;
    }

    v6 = [MEMORY[0x277D64418] sharedDevice];
    v7 = [v6 productVersion];

    if (!v7)
    {
      v18 = [MEMORY[0x277D64460] sharedLogger];
      v8 = [v18 oslog];

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_23193C000, v8, OS_LOG_TYPE_DEFAULT, "isEmergencyUpdate returns NO because currentOSVersion is nil", &v27, 2u);
      }

      v15 = 0;
      goto LABEL_33;
    }

    v8 = [v3 safeObjectForKey:@"LastEmergencyBuild" ofClass:objc_opt_class()];
    v9 = [v3 safeObjectForKey:@"LastEmergencyOSVersion" ofClass:objc_opt_class()];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v9 compare:v7 options:64] == -1)
      {
        v24 = [MEMORY[0x277D64460] sharedLogger];
        v13 = [v24 oslog];

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v27 = 138543618;
          v28 = v10;
          v29 = 2114;
          v30 = v7;
          v21 = "isEmergencyUpdate returns NO because lastEmergencyOSVersion:%{public}@ is less than currentOSVersion:%{public}@";
LABEL_29:
          v22 = v13;
          v23 = 22;
LABEL_30:
          _os_log_impl(&dword_23193C000, v22, OS_LOG_TYPE_DEFAULT, v21, &v27, v23);
        }
      }

      else
      {
        v11 = [v8 compare:v5 options:64];
        v12 = [MEMORY[0x277D64460] sharedLogger];
        v13 = [v12 oslog];

        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (v11 != -1)
        {
          if (v14)
          {
            LOWORD(v27) = 0;
            _os_log_impl(&dword_23193C000, v13, OS_LOG_TYPE_DEFAULT, "isEmergencyUpdate: YES", &v27, 2u);
          }

          v15 = 1;
          goto LABEL_32;
        }

        if (v14)
        {
          v27 = 138543618;
          v28 = v8;
          v29 = 2114;
          v30 = v5;
          v21 = "isEmergencyUpdate returns NO because lastEmergencyBuild:%{public}@ is less than currentBuild:%{public}@";
          goto LABEL_29;
        }
      }
    }

    else
    {
      v19 = [MEMORY[0x277D64460] sharedLogger];
      v13 = [v19 oslog];

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        if (v8)
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
        v22 = v13;
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

  v16 = [MEMORY[0x277D64460] sharedLogger];
  v5 = [v16 oslog];

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_23193C000, v5, OS_LOG_TYPE_DEFAULT, "isEmergencyUpdate returns NO because assetAttributes is nil", &v27, 2u);
  }

  v15 = 0;
LABEL_35:

  v25 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)nameForDescriptorType:(int64_t)a3
{
  if (a3 > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_27892DD28[a3];
  }
}

+ (id)nameForDescriptorAudienceType:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"AudienceTypeUnknown";
  }

  else
  {
    return off_27892DD60[a3];
  }
}

+ (id)nameForDescriptorPreferredUpdateType:(int64_t)a3
{
  if (a3 > 2)
  {
    return @"PreferredUpdateTypeUnknown";
  }

  else
  {
    return off_27892DD78[a3];
  }
}

+ (id)cleanProductVersion:(id)a3
{
  v3 = a3;
  if ([v3 length] >= 4 && objc_msgSend(v3, "rangeOfString:options:range:", @"9.9.", 0, 0, 4) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v3 stringByReplacingCharactersInRange:0 withString:{4, &stru_28469CC48}];

    v3 = v4;
  }

  return v3;
}

- (BOOL)requiresSoftwareUpdateAssetReload
{
  v3 = [(SUCoreDescriptor *)self softwareUpdateAssetAbsoluteID];
  if (v3)
  {
    v4 = [(SUCoreDescriptor *)self softwareUpdateAsset];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)requiresDocumentationReload
{
  v3 = [(SUCoreDescriptor *)self documentationAssetAbsoluteID];
  if (v3)
  {
    v4 = [(SUCoreDescriptor *)self documentationAsset];
    v5 = v4 == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)transferNonAssetPropertiesFromDescriptor:(id)a3
{
  v4 = MEMORY[0x277D64460];
  v5 = a3;
  v6 = [v4 sharedLogger];
  v7 = [v6 oslog];

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_23193C000, v7, OS_LOG_TYPE_DEFAULT, "Transferring non-asset attribute properties from other descriptor", v15, 2u);
  }

  -[SUCoreDescriptor setDescriptorAudienceType:](self, "setDescriptorAudienceType:", [v5 descriptorAudienceType]);
  -[SUCoreDescriptor setPreferredUpdateType:](self, "setPreferredUpdateType:", [v5 preferredUpdateType]);
  v8 = [v5 assetAudienceUUID];
  [(SUCoreDescriptor *)self setAssetAudienceUUID:v8];

  -[SUCoreDescriptor setPreSUStagingRequiredSize:](self, "setPreSUStagingRequiredSize:", [v5 preSUStagingRequiredSize]);
  -[SUCoreDescriptor setPreSUStagingOptionalSize:](self, "setPreSUStagingOptionalSize:", [v5 preSUStagingOptionalSize]);
  v9 = [v5 documentation];
  [(SUCoreDescriptor *)self setDocumentation:v9];

  v10 = [v5 documentationAsset];
  [(SUCoreDescriptor *)self setDocumentationAsset:v10];

  v11 = [v5 documentationAssetType];
  [(SUCoreDescriptor *)self setDocumentationAssetType:v11];

  v12 = [v5 documentationAssetIdentifier];
  [(SUCoreDescriptor *)self setDocumentationAssetIdentifier:v12];

  v13 = [v5 documentationAssetAbsoluteID];
  [(SUCoreDescriptor *)self setDocumentationAssetAbsoluteID:v13];

  v14 = [v5 documentationAssetPurpose];

  [(SUCoreDescriptor *)self setDocumentationAssetPurpose:v14];
}

- (SUCoreDescriptor)initWithCoder:(id)a3
{
  v155[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v154.receiver = self;
  v154.super_class = SUCoreDescriptor;
  v5 = [(SUCoreDescriptor *)&v154 init];
  if (v5)
  {
    v5->_descriptorType = [v4 decodeIntForKey:@"DescriptorType"];
    v5->_descriptorAudienceType = [v4 decodeIntForKey:@"DescriptorAudienceType"];
    v5->_preferredUpdateType = [v4 decodeIntForKey:@"PreferredUpdateType"];
    v5->_updateType = [v4 decodeIntForKey:@"UpdateType"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AssetID"];
    assetID = v5->_assetID;
    v5->_assetID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SoftwareUpdateAssetType"];
    softwareUpdateAssetType = v5->_softwareUpdateAssetType;
    v5->_softwareUpdateAssetType = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DocumentationAssetType"];
    documentationAssetType = v5->_documentationAssetType;
    v5->_documentationAssetType = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SoftwareUpdateAssetAbsoluteID"];
    softwareUpdateAssetAbsoluteID = v5->_softwareUpdateAssetAbsoluteID;
    v5->_softwareUpdateAssetAbsoluteID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DocumentationAssetAbsoluteID"];
    documentationAssetAbsoluteID = v5->_documentationAssetAbsoluteID;
    v5->_documentationAssetAbsoluteID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SoftwareUpdateAssetPurpose"];
    softwareUpdateAssetPurpose = v5->_softwareUpdateAssetPurpose;
    v5->_softwareUpdateAssetPurpose = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DocumentationAssetPurpose"];
    documentationAssetPurpose = v5->_documentationAssetPurpose;
    v5->_documentationAssetPurpose = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UniqueBuildID"];
    uniqueBuildID = v5->_uniqueBuildID;
    v5->_uniqueBuildID = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SplatInstallDate"];
    splatInstallDate = v5->_splatInstallDate;
    v5->_splatInstallDate = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProductVersion"];
    productVersion = v5->_productVersion;
    v5->_productVersion = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProductBuildVersion"];
    productBuildVersion = v5->_productBuildVersion;
    v5->_productBuildVersion = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProductVersionExtra"];
    productVersionExtra = v5->_productVersionExtra;
    v5->_productVersionExtra = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProductSystemName"];
    productSystemName = v5->_productSystemName;
    v5->_productSystemName = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReleaseType"];
    releaseType = v5->_releaseType;
    v5->_releaseType = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Publisher"];
    publisher = v5->_publisher;
    v5->_publisher = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReleaseDate"];
    releaseDate = v5->_releaseDate;
    v5->_releaseDate = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RestoreVersion"];
    restoreVersion = v5->_restoreVersion;
    v5->_restoreVersion = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TargetUpdateBridgeVersion"];
    targetUpdateBridgeVersion = v5->_targetUpdateBridgeVersion;
    v5->_targetUpdateBridgeVersion = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TargetUpdateSFRVersion"];
    targetUpdateSFRVersion = v5->_targetUpdateSFRVersion;
    v5->_targetUpdateSFRVersion = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"TrainName"];
    trainName = v5->_trainName;
    v5->_trainName = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrerequisiteBuild"];
    prerequisiteBuild = v5->_prerequisiteBuild;
    v5->_prerequisiteBuild = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PrerequisiteOSVersion"];
    prerequisiteOSVersion = v5->_prerequisiteOSVersion;
    v5->_prerequisiteOSVersion = v48;

    v50 = MEMORY[0x277CBEB98];
    v51 = objc_opt_class();
    v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
    v53 = [v4 decodeObjectOfClasses:v52 forKey:@"SupportedDevices"];
    supportedDevices = v5->_supportedDevices;
    v5->_supportedDevices = v53;

    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SUDownloadSize"];
    v5->_suDownloadSize = [v55 unsignedLongLongValue];

    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UnarchiveSize"];
    v5->_unarchivedSize = [v56 unsignedLongLongValue];

    v57 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSUPrepareSize"];
    v5->_msuPrepareSize = [v57 unsignedLongLongValue];

    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MSUSnapshotPrepareSize"];
    v5->_msuSnapshotPrepareSize = [v58 unsignedLongLongValue];

    v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InstallationSize"];
    v5->_installationSize = [v59 unsignedLongLongValue];

    v60 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InstallationSnapshotSize"];
    v5->_installationSnapshotSize = [v60 unsignedLongLongValue];

    v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MinimumSystemPartitionSize"];
    v5->_minimumSystemPartitionSize = [v61 unsignedLongLongValue];

    v5->_streamingZipCapable = [v4 decodeBoolForKey:@"StreamingZipCapable"];
    v62 = MEMORY[0x277CBEB98];
    v155[0] = objc_opt_class();
    v155[1] = objc_opt_class();
    v155[2] = objc_opt_class();
    v63 = [MEMORY[0x277CBEA60] arrayWithObjects:v155 count:3];
    v153 = [v62 setWithArray:v63];

    v64 = [v4 decodeObjectOfClasses:v153 forKey:@"SystemPartitionPadding"];
    systemPartitionPadding = v5->_systemPartitionPadding;
    v5->_systemPartitionPadding = v64;

    v66 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PSUSRequiredSize"];
    v5->_preSUStagingRequiredSize = [v66 unsignedLongLongValue];

    v67 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PSUSOptionalSize"];
    v5->_preSUStagingOptionalSize = [v67 unsignedLongLongValue];

    v5->_disableReserveSpace = [v4 decodeBoolForKey:@"DisableReserveSpace"];
    v68 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CenteralizedPurgeableFactor"];
    v5->_centeralizedPurgeableFactor = [v68 unsignedLongValue];

    v69 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PluginPurgeableFactor"];
    v5->_pluginPurgeableFactor = [v69 unsignedLongValue];

    v70 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MinReserveSpace"];
    v5->_minReserveSpace = [v70 unsignedLongLongValue];

    v71 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MaxReserveSpace"];
    v5->_maxReserveSpace = [v71 unsignedLongLongValue];

    v72 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UnentitledReserveAmount"];
    v5->_unentitledReserveAmount = [v72 unsignedLongLongValue];

    v5->_autoDownloadAllowableOverCellular = [v4 decodeBoolForKey:@"AutoDownloadAllowableOverCellular"];
    v5->_downloadAllowableOverCellular = [v4 decodeBoolForKey:@"DownloadAllowableOverCellular"];
    v5->_downloadable = [v4 decodeBoolForKey:@"Downloadable"];
    v5->_disableSiriVoiceDeletion = [v4 decodeBoolForKey:@"DisableSiriVoiceDeletion"];
    v5->_disableCDLevel4 = [v4 decodeBoolForKey:@"DisableCDLevel4"];
    v5->_disableAppDemotion = [v4 decodeBoolForKey:@"DisableAppDemotion"];
    v5->_disableMASuspension = [v4 decodeBoolForKey:@"DisableMASuspension"];
    v5->_disableInstallTonight = [v4 decodeBoolForKey:@"DisableInstallTonight"];
    v5->_forcePasscodeRequired = [v4 decodeBoolForKey:@"ForcePasscodeRequired"];
    v5->_rampEnabled = [v4 decodeBoolForKey:@"RampEnabled"];
    v5->_granularlyRamped = [v4 decodeBoolForKey:@"GranularlyRamped"];
    v73 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MDMDelayInterval"];
    v5->_mdmDelayInterval = [v73 unsignedLongLongValue];

    v5->_autoUpdateEnabled = [v4 decodeBoolForKey:@"AutoUpdateEnabled"];
    v5->_hideInstallAlert = [v4 decodeIntegerForKey:@"HideInstallAlert"];
    v5->_containsSFRContent = [v4 decodeBoolForKey:@"ContainsSFRContent"];
    v74 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"InstallAlertInterval"];
    v5->_installAlertInterval = [v74 unsignedLongLongValue];

    v5->_allowAutoDownloadOnBattery = [v4 decodeBoolForKey:@"AllowAutoDownloadOnBattery"];
    v75 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AutoDownloadOnBatteryDelay"];
    v5->_autoDownloadOnBatteryDelay = [v75 unsignedLongLongValue];

    v76 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AutoDownloadOnBatteryMinBattery"];
    v5->_autoDownloadOnBatteryMinBattery = [v76 unsignedLongLongValue];

    v77 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SetupCritical"];
    setupCritical = v5->_setupCritical;
    v5->_setupCritical = v77;

    v5->_criticalCellularOverride = [v4 decodeBoolForKey:@"CriticalCellularOverride"];
    v5->_criticalOutOfBoxOnly = [v4 decodeBoolForKey:@"CriticalOutOfBoxOnly"];
    v79 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastEmergencyBuild"];
    lastEmergencyBuild = v5->_lastEmergencyBuild;
    v5->_lastEmergencyBuild = v79;

    v81 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LastEmergencyOSVersion"];
    lastEmergencyOSVersion = v5->_lastEmergencyOSVersion;
    v5->_lastEmergencyOSVersion = v81;

    v5->_mandatoryUpdateEligible = [v4 decodeBoolForKey:@"MandatoryUpdateEligible"];
    v83 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MandatoryUpdateVersionMin"];
    mandatoryUpdateVersionMin = v5->_mandatoryUpdateVersionMin;
    v5->_mandatoryUpdateVersionMin = v83;

    v85 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MandatoryUpdateVersionMax"];
    mandatoryUpdateVersionMax = v5->_mandatoryUpdateVersionMax;
    v5->_mandatoryUpdateVersionMax = v85;

    v5->_mandatoryUpdateOptional = [v4 decodeBoolForKey:@"MandatoryUpdateOptional"];
    v5->_mandatoryUpdateRestrictedToOutOfTheBox = [v4 decodeBoolForKey:@"MandatoryUpdateRestrictedToOutOfTheBox"];
    v5->_oneShotBuddyDisabled = [v4 decodeBoolForKey:@"OneShotBuddyDisabled"];
    v87 = MEMORY[0x277CBEB98];
    v88 = objc_opt_class();
    v89 = [v87 setWithObjects:{v88, objc_opt_class(), 0}];
    v90 = [v4 decodeObjectOfClasses:v89 forKey:@"OneShotBuddyDisabledBuilds"];
    oneShotBuddyDisabledBuilds = v5->_oneShotBuddyDisabledBuilds;
    v5->_oneShotBuddyDisabledBuilds = v90;

    v5->_criticalUpdate = [v4 decodeBoolForKey:@"CriticalUpdate"];
    v92 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProductType"];
    productType = v5->_productType;
    v5->_productType = v92;

    v94 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AutoInstallDelay"];
    v5->_autoInstallDelay = [v94 unsignedLongLongValue];

    v5->_notifyAfter = [v4 decodeBoolForKey:@"NotifyAfter"];
    v95 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MinimumBridgeVersion"];
    minimumBridgeVersion = v5->_minimumBridgeVersion;
    v5->_minimumBridgeVersion = v95;

    v5->_disableRosettaUpdates = [v4 decodeBoolForKey:@"DisableRosettaUpdates"];
    v5->_disableRecoveryOSUpdates = [v4 decodeBoolForKey:@"DisableRecoveryOSUpdates"];
    v5->_requireInstallAssistantUpdate = [v4 decodeBoolForKey:@"RequireInstallAssistantUpdate"];
    v97 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SEPDigest"];
    sepDigest = v5->_sepDigest;
    v5->_sepDigest = v97;

    v99 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SEPTBMDigests"];
    sepTBMDigests = v5->_sepTBMDigests;
    v5->_sepTBMDigests = v99;

    v101 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RSEPDigest"];
    rsepDigest = v5->_rsepDigest;
    v5->_rsepDigest = v101;

    v103 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RSEPTBMDigests"];
    rsepTBMDigests = v5->_rsepTBMDigests;
    v5->_rsepTBMDigests = v103;

    v105 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DocumentationID"];
    documentationID = v5->_documentationID;
    v5->_documentationID = v105;

    v107 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Documentation"];
    documentation = v5->_documentation;
    v5->_documentation = v107;

    v109 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SoftwareUpdateURL"];
    softwareUpdateURL = v5->_softwareUpdateURL;
    v5->_softwareUpdateURL = v109;

    v111 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Measurement"];
    measurement = v5->_measurement;
    v5->_measurement = v111;

    v113 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MeasurementAlgorithm"];
    measurementAlgorithm = v5->_measurementAlgorithm;
    v5->_measurementAlgorithm = v113;

    v115 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SoftwareUpdateAssetIdentifier"];
    softwareUpdateAssetIdentifier = v5->_softwareUpdateAssetIdentifier;
    v5->_softwareUpdateAssetIdentifier = v115;

    v117 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DocumentationAssetIdentifier"];
    documentationAssetIdentifier = v5->_documentationAssetIdentifier;
    v5->_documentationAssetIdentifier = v117;

    v5->_promoteAlternateUpdate = [v4 decodeBoolForKey:@"PromoteAlternateUpdate"];
    v5->_enableAlternateAssetAudience = [v4 decodeBoolForKey:@"EnableAlternateAssetAudienceUUID"];
    v119 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AlternateAssetAudienceUUID"];
    alternateAssetAudienceUUID = v5->_alternateAssetAudienceUUID;
    v5->_alternateAssetAudienceUUID = v119;

    v121 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AssetAudienceUUID"];
    assetAudienceUUID = v5->_assetAudienceUUID;
    v5->_assetAudienceUUID = v121;

    v123 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UpdateBrainPath"];
    updateBrainPath = v5->_updateBrainPath;
    v5->_updateBrainPath = v123;

    v125 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UpdateBundlePath"];
    updateBundlePath = v5->_updateBundlePath;
    v5->_updateBundlePath = v125;

    v5->_splatOnly = [v4 decodeBoolForKey:@"SplatOnly"];
    v5->_semiSplatEnabled = [v4 decodeBoolForKey:@"SemiSplatEnabled"];
    v127 = MEMORY[0x277CBEB98];
    v128 = objc_opt_class();
    v129 = [v127 setWithObjects:{v128, objc_opt_class(), 0}];
    v130 = [v4 decodeObjectOfClasses:v129 forKey:@"SemiSplatMustQuitApps"];
    semiSplatMustQuitApps = v5->_semiSplatMustQuitApps;
    v5->_semiSplatMustQuitApps = v130;

    v5->_revoked = [v4 decodeBoolForKey:@"Revoked"];
    v5->_semiSplatRestartNow = [v4 decodeBoolForKey:@"SemiSplatRestartNow"];
    v5->_disableSplatCombo = [v4 decodeBoolForKey:@"DisableSplombo"];
    v132 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AssociatedSplatDescriptor"];
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
    v143 = [v4 decodeObjectOfClasses:v142 forKey:@"BundleAttributes"];
    bundleAttributes = v5->_bundleAttributes;
    v5->_bundleAttributes = v143;

    softwareUpdateAsset = v5->_softwareUpdateAsset;
    v5->_softwareUpdateAsset = 0;

    documentationAsset = v5->_documentationAsset;
    v5->_documentationAsset = 0;

    v5->_enablePreSUStaging = [v4 decodeBoolForKey:@"EnablePSUS"];
    v5->_enablePreSUStagingForOptionalAssets = [v4 decodeBoolForKey:@"EnablePSUSForOptionalAssets"];
    v147 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PSUSMaxSize"];
    v5->_preSUStagingMaxSize = [v147 unsignedLongLongValue];

    v148 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MinFreeSpacePostStageOptionalAssets"];
    v5->_minFreeSpacePostStageOptionalAssets = [v148 unsignedLongLongValue];

    v5->_disableSecurityAdvisoryNotification = [v4 decodeBoolForKey:@"DisableSecurityAdvisoryNotification"];
    v5->_disableDeviceCompatibilityNotification = [v4 decodeBoolForKey:@"DisableDeviceCompatibilityNotification"];
    v149 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AlignediOSMajorVersion"];
    alignediOSMajorVersion = v5->_alignediOSMajorVersion;
    v5->_alignediOSMajorVersion = v149;
  }

  v151 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:-[SUCoreDescriptor descriptorType](self forKey:{"descriptorType"), @"DescriptorType"}];
  [v4 encodeInt:-[SUCoreDescriptor descriptorAudienceType](self forKey:{"descriptorAudienceType"), @"DescriptorAudienceType"}];
  [v4 encodeInt:-[SUCoreDescriptor preferredUpdateType](self forKey:{"preferredUpdateType"), @"PreferredUpdateType"}];
  [v4 encodeInt:-[SUCoreDescriptor updateType](self forKey:{"updateType"), @"UpdateType"}];
  v5 = [(SUCoreDescriptor *)self assetID];
  [v4 encodeObject:v5 forKey:@"AssetID"];

  v6 = [(SUCoreDescriptor *)self softwareUpdateAssetType];
  [v4 encodeObject:v6 forKey:@"SoftwareUpdateAssetType"];

  v7 = [(SUCoreDescriptor *)self documentationAssetType];
  [v4 encodeObject:v7 forKey:@"DocumentationAssetType"];

  v8 = [(SUCoreDescriptor *)self softwareUpdateAssetAbsoluteID];
  [v4 encodeObject:v8 forKey:@"SoftwareUpdateAssetAbsoluteID"];

  v9 = [(SUCoreDescriptor *)self documentationAssetAbsoluteID];
  [v4 encodeObject:v9 forKey:@"DocumentationAssetAbsoluteID"];

  v10 = [(SUCoreDescriptor *)self softwareUpdateAssetPurpose];
  [v4 encodeObject:v10 forKey:@"SoftwareUpdateAssetPurpose"];

  v11 = [(SUCoreDescriptor *)self documentationAssetPurpose];
  [v4 encodeObject:v11 forKey:@"DocumentationAssetPurpose"];

  v12 = [(SUCoreDescriptor *)self uniqueBuildID];
  [v4 encodeObject:v12 forKey:@"UniqueBuildID"];

  v13 = [(SUCoreDescriptor *)self splatInstallDate];
  [v4 encodeObject:v13 forKey:@"SplatInstallDate"];

  v14 = [(SUCoreDescriptor *)self productVersion];
  [v4 encodeObject:v14 forKey:@"ProductVersion"];

  v15 = [(SUCoreDescriptor *)self productBuildVersion];
  [v4 encodeObject:v15 forKey:@"ProductBuildVersion"];

  v16 = [(SUCoreDescriptor *)self productVersionExtra];
  [v4 encodeObject:v16 forKey:@"ProductVersionExtra"];

  v17 = [(SUCoreDescriptor *)self productSystemName];
  [v4 encodeObject:v17 forKey:@"ProductSystemName"];

  v18 = [(SUCoreDescriptor *)self releaseType];
  [v4 encodeObject:v18 forKey:@"ReleaseType"];

  v19 = [(SUCoreDescriptor *)self publisher];
  [v4 encodeObject:v19 forKey:@"Publisher"];

  v20 = [(SUCoreDescriptor *)self releaseDate];
  [v4 encodeObject:v20 forKey:@"ReleaseDate"];

  v21 = [(SUCoreDescriptor *)self restoreVersion];
  [v4 encodeObject:v21 forKey:@"RestoreVersion"];

  v22 = [(SUCoreDescriptor *)self targetUpdateBridgeVersion];
  [v4 encodeObject:v22 forKey:@"TargetUpdateBridgeVersion"];

  v23 = [(SUCoreDescriptor *)self targetUpdateSFRVersion];
  [v4 encodeObject:v23 forKey:@"TargetUpdateSFRVersion"];

  v24 = [(SUCoreDescriptor *)self trainName];
  [v4 encodeObject:v24 forKey:@"TrainName"];

  v25 = [(SUCoreDescriptor *)self prerequisiteBuild];
  [v4 encodeObject:v25 forKey:@"PrerequisiteBuild"];

  v26 = [(SUCoreDescriptor *)self prerequisiteOSVersion];
  [v4 encodeObject:v26 forKey:@"PrerequisiteOSVersion"];

  v27 = [(SUCoreDescriptor *)self supportedDevices];
  [v4 encodeObject:v27 forKey:@"SupportedDevices"];

  v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor suDownloadSize](self, "suDownloadSize")}];
  [v4 encodeObject:v28 forKey:@"SUDownloadSize"];

  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_unarchivedSize];
  [v4 encodeObject:v29 forKey:@"UnarchiveSize"];

  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor msuPrepareSize](self, "msuPrepareSize")}];
  [v4 encodeObject:v30 forKey:@"MSUPrepareSize"];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor msuSnapshotPrepareSize](self, "msuSnapshotPrepareSize")}];
  [v4 encodeObject:v31 forKey:@"MSUSnapshotPrepareSize"];

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_installationSize];
  [v4 encodeObject:v32 forKey:@"InstallationSize"];

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_installationSnapshotSize];
  [v4 encodeObject:v33 forKey:@"InstallationSnapshotSize"];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor minimumSystemPartitionSize](self, "minimumSystemPartitionSize")}];
  [v4 encodeObject:v34 forKey:@"MinimumSystemPartitionSize"];

  [v4 encodeBool:-[SUCoreDescriptor streamingZipCapable](self forKey:{"streamingZipCapable"), @"StreamingZipCapable"}];
  v35 = [(SUCoreDescriptor *)self systemPartitionPadding];
  [v4 encodeObject:v35 forKey:@"SystemPartitionPadding"];

  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor preSUStagingRequiredSize](self, "preSUStagingRequiredSize")}];
  [v4 encodeObject:v36 forKey:@"PSUSRequiredSize"];

  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor preSUStagingOptionalSize](self, "preSUStagingOptionalSize")}];
  [v4 encodeObject:v37 forKey:@"PSUSOptionalSize"];

  [v4 encodeBool:-[SUCoreDescriptor disableReserveSpace](self forKey:{"disableReserveSpace"), @"DisableReserveSpace"}];
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[SUCoreDescriptor centeralizedPurgeableFactor](self, "centeralizedPurgeableFactor")}];
  [v4 encodeObject:v38 forKey:@"CenteralizedPurgeableFactor"];

  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{-[SUCoreDescriptor pluginPurgeableFactor](self, "pluginPurgeableFactor")}];
  [v4 encodeObject:v39 forKey:@"PluginPurgeableFactor"];

  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor minReserveSpace](self, "minReserveSpace")}];
  [v4 encodeObject:v40 forKey:@"MinReserveSpace"];

  v41 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor maxReserveSpace](self, "maxReserveSpace")}];
  [v4 encodeObject:v41 forKey:@"MaxReserveSpace"];

  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor unentitledReserveAmount](self, "unentitledReserveAmount")}];
  [v4 encodeObject:v42 forKey:@"UnentitledReserveAmount"];

  [v4 encodeBool:-[SUCoreDescriptor autoDownloadAllowableOverCellular](self forKey:{"autoDownloadAllowableOverCellular"), @"AutoDownloadAllowableOverCellular"}];
  [v4 encodeBool:-[SUCoreDescriptor downloadAllowableOverCellular](self forKey:{"downloadAllowableOverCellular"), @"DownloadAllowableOverCellular"}];
  [v4 encodeBool:-[SUCoreDescriptor downloadable](self forKey:{"downloadable"), @"Downloadable"}];
  [v4 encodeBool:-[SUCoreDescriptor disableSiriVoiceDeletion](self forKey:{"disableSiriVoiceDeletion"), @"DisableSiriVoiceDeletion"}];
  [v4 encodeBool:-[SUCoreDescriptor disableCDLevel4](self forKey:{"disableCDLevel4"), @"DisableCDLevel4"}];
  [v4 encodeBool:-[SUCoreDescriptor disableAppDemotion](self forKey:{"disableAppDemotion"), @"DisableAppDemotion"}];
  [v4 encodeBool:-[SUCoreDescriptor disableMASuspension](self forKey:{"disableMASuspension"), @"DisableMASuspension"}];
  [v4 encodeBool:-[SUCoreDescriptor disableInstallTonight](self forKey:{"disableInstallTonight"), @"DisableInstallTonight"}];
  [v4 encodeBool:-[SUCoreDescriptor forcePasscodeRequired](self forKey:{"forcePasscodeRequired"), @"ForcePasscodeRequired"}];
  [v4 encodeBool:-[SUCoreDescriptor rampEnabled](self forKey:{"rampEnabled"), @"RampEnabled"}];
  [v4 encodeBool:-[SUCoreDescriptor granularlyRamped](self forKey:{"granularlyRamped"), @"GranularlyRamped"}];
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor mdmDelayInterval](self, "mdmDelayInterval")}];
  [v4 encodeObject:v43 forKey:@"MDMDelayInterval"];

  [v4 encodeBool:-[SUCoreDescriptor autoUpdateEnabled](self forKey:{"autoUpdateEnabled"), @"AutoUpdateEnabled"}];
  [v4 encodeInteger:-[SUCoreDescriptor hideInstallAlert](self forKey:{"hideInstallAlert"), @"HideInstallAlert"}];
  [v4 encodeBool:-[SUCoreDescriptor containsSFRContent](self forKey:{"containsSFRContent"), @"ContainsSFRContent"}];
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor installAlertInterval](self, "installAlertInterval")}];
  [v4 encodeObject:v44 forKey:@"InstallAlertInterval"];

  [v4 encodeBool:-[SUCoreDescriptor allowAutoDownloadOnBattery](self forKey:{"allowAutoDownloadOnBattery"), @"AllowAutoDownloadOnBattery"}];
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor autoDownloadOnBatteryDelay](self, "autoDownloadOnBatteryDelay")}];
  [v4 encodeObject:v45 forKey:@"AutoDownloadOnBatteryDelay"];

  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor autoDownloadOnBatteryMinBattery](self, "autoDownloadOnBatteryMinBattery")}];
  [v4 encodeObject:v46 forKey:@"AutoDownloadOnBatteryMinBattery"];

  v47 = [(SUCoreDescriptor *)self setupCritical];
  [v4 encodeObject:v47 forKey:@"SetupCritical"];

  [v4 encodeBool:-[SUCoreDescriptor criticalCellularOverride](self forKey:{"criticalCellularOverride"), @"CriticalCellularOverride"}];
  [v4 encodeBool:-[SUCoreDescriptor criticalOutOfBoxOnly](self forKey:{"criticalOutOfBoxOnly"), @"CriticalOutOfBoxOnly"}];
  v48 = [(SUCoreDescriptor *)self lastEmergencyBuild];
  [v4 encodeObject:v48 forKey:@"LastEmergencyBuild"];

  v49 = [(SUCoreDescriptor *)self lastEmergencyOSVersion];
  [v4 encodeObject:v49 forKey:@"LastEmergencyOSVersion"];

  [v4 encodeBool:-[SUCoreDescriptor mandatoryUpdateEligible](self forKey:{"mandatoryUpdateEligible"), @"MandatoryUpdateEligible"}];
  v50 = [(SUCoreDescriptor *)self mandatoryUpdateVersionMin];
  [v4 encodeObject:v50 forKey:@"MandatoryUpdateVersionMin"];

  v51 = [(SUCoreDescriptor *)self mandatoryUpdateVersionMax];
  [v4 encodeObject:v51 forKey:@"MandatoryUpdateVersionMax"];

  [v4 encodeBool:-[SUCoreDescriptor mandatoryUpdateOptional](self forKey:{"mandatoryUpdateOptional"), @"MandatoryUpdateOptional"}];
  [v4 encodeBool:-[SUCoreDescriptor mandatoryUpdateRestrictedToOutOfTheBox](self forKey:{"mandatoryUpdateRestrictedToOutOfTheBox"), @"MandatoryUpdateRestrictedToOutOfTheBox"}];
  [v4 encodeBool:-[SUCoreDescriptor oneShotBuddyDisabled](self forKey:{"oneShotBuddyDisabled"), @"OneShotBuddyDisabled"}];
  v52 = [(SUCoreDescriptor *)self oneShotBuddyDisabledBuilds];
  [v4 encodeObject:v52 forKey:@"OneShotBuddyDisabledBuilds"];

  [v4 encodeBool:-[SUCoreDescriptor criticalUpdate](self forKey:{"criticalUpdate"), @"CriticalUpdate"}];
  v53 = [(SUCoreDescriptor *)self productType];
  [v4 encodeObject:v53 forKey:@"ProductType"];

  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor autoInstallDelay](self, "autoInstallDelay")}];
  [v4 encodeObject:v54 forKey:@"AutoInstallDelay"];

  [v4 encodeBool:-[SUCoreDescriptor notifyAfter](self forKey:{"notifyAfter"), @"NotifyAfter"}];
  v55 = [(SUCoreDescriptor *)self minimumBridgeVersion];
  [v4 encodeObject:v55 forKey:@"MinimumBridgeVersion"];

  [v4 encodeBool:-[SUCoreDescriptor disableRosettaUpdates](self forKey:{"disableRosettaUpdates"), @"DisableRosettaUpdates"}];
  [v4 encodeBool:-[SUCoreDescriptor disableRecoveryOSUpdates](self forKey:{"disableRecoveryOSUpdates"), @"DisableRecoveryOSUpdates"}];
  [v4 encodeBool:-[SUCoreDescriptor requireInstallAssistantUpdate](self forKey:{"requireInstallAssistantUpdate"), @"RequireInstallAssistantUpdate"}];
  v56 = [(SUCoreDescriptor *)self sepDigest];
  [v4 encodeObject:v56 forKey:@"SEPDigest"];

  v57 = [(SUCoreDescriptor *)self sepTBMDigests];
  [v4 encodeObject:v57 forKey:@"SEPTBMDigests"];

  v58 = [(SUCoreDescriptor *)self rsepDigest];
  [v4 encodeObject:v58 forKey:@"RSEPDigest"];

  v59 = [(SUCoreDescriptor *)self rsepTBMDigests];
  [v4 encodeObject:v59 forKey:@"RSEPTBMDigests"];

  v60 = [(SUCoreDescriptor *)self documentationID];
  [v4 encodeObject:v60 forKey:@"DocumentationID"];

  v61 = [(SUCoreDescriptor *)self documentation];
  [v4 encodeObject:v61 forKey:@"Documentation"];

  v62 = [(SUCoreDescriptor *)self softwareUpdateURL];
  [v4 encodeObject:v62 forKey:@"SoftwareUpdateURL"];

  v63 = [(SUCoreDescriptor *)self measurement];
  [v4 encodeObject:v63 forKey:@"Measurement"];

  v64 = [(SUCoreDescriptor *)self measurementAlgorithm];
  [v4 encodeObject:v64 forKey:@"MeasurementAlgorithm"];

  v65 = [(SUCoreDescriptor *)self softwareUpdateAssetIdentifier];
  [v4 encodeObject:v65 forKey:@"SoftwareUpdateAssetIdentifier"];

  v66 = [(SUCoreDescriptor *)self documentationAssetIdentifier];
  [v4 encodeObject:v66 forKey:@"DocumentationAssetIdentifier"];

  [v4 encodeBool:-[SUCoreDescriptor promoteAlternateUpdate](self forKey:{"promoteAlternateUpdate"), @"PromoteAlternateUpdate"}];
  [v4 encodeBool:-[SUCoreDescriptor enableAlternateAssetAudience](self forKey:{"enableAlternateAssetAudience"), @"EnableAlternateAssetAudienceUUID"}];
  v67 = [(SUCoreDescriptor *)self alternateAssetAudienceUUID];
  [v4 encodeObject:v67 forKey:@"AlternateAssetAudienceUUID"];

  v68 = [(SUCoreDescriptor *)self assetAudienceUUID];
  [v4 encodeObject:v68 forKey:@"AssetAudienceUUID"];

  v69 = [(SUCoreDescriptor *)self updateBrainPath];
  [v4 encodeObject:v69 forKey:@"UpdateBrainPath"];

  v70 = [(SUCoreDescriptor *)self updateBundlePath];
  [v4 encodeObject:v70 forKey:@"UpdateBundlePath"];

  v71 = [(SUCoreDescriptor *)self bundleAttributes];
  [v4 encodeObject:v71 forKey:@"BundleAttributes"];

  [v4 encodeBool:-[SUCoreDescriptor splatOnly](self forKey:{"splatOnly"), @"SplatOnly"}];
  [v4 encodeBool:-[SUCoreDescriptor semiSplatEnabled](self forKey:{"semiSplatEnabled"), @"SemiSplatEnabled"}];
  v72 = [(SUCoreDescriptor *)self semiSplatMustQuitApps];
  [v4 encodeObject:v72 forKey:@"SemiSplatMustQuitApps"];

  [v4 encodeBool:-[SUCoreDescriptor revoked](self forKey:{"revoked"), @"Revoked"}];
  [v4 encodeBool:-[SUCoreDescriptor semiSplatRestartNow](self forKey:{"semiSplatRestartNow"), @"SemiSplatRestartNow"}];
  [v4 encodeBool:-[SUCoreDescriptor disableSplatCombo](self forKey:{"disableSplatCombo"), @"DisableSplombo"}];
  v73 = [(SUCoreDescriptor *)self associatedSplatDescriptor];
  [v4 encodeObject:v73 forKey:@"AssociatedSplatDescriptor"];

  [v4 encodeBool:-[SUCoreDescriptor enablePreSUStaging](self forKey:{"enablePreSUStaging"), @"EnablePSUS"}];
  [v4 encodeBool:-[SUCoreDescriptor enablePreSUStagingForOptionalAssets](self forKey:{"enablePreSUStagingForOptionalAssets"), @"EnablePSUSForOptionalAssets"}];
  v74 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor preSUStagingMaxSize](self, "preSUStagingMaxSize")}];
  [v4 encodeObject:v74 forKey:@"PSUSMaxSize"];

  v75 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[SUCoreDescriptor minFreeSpacePostStageOptionalAssets](self, "minFreeSpacePostStageOptionalAssets")}];
  [v4 encodeObject:v75 forKey:@"MinFreeSpacePostStageOptionalAssets"];

  [v4 encodeBool:-[SUCoreDescriptor disableSecurityAdvisoryNotification](self forKey:{"disableSecurityAdvisoryNotification"), @"DisableSecurityAdvisoryNotification"}];
  [v4 encodeBool:-[SUCoreDescriptor disableDeviceCompatibilityNotification](self forKey:{"disableDeviceCompatibilityNotification"), @"DisableDeviceCompatibilityNotification"}];
  v76 = [(SUCoreDescriptor *)self alignediOSMajorVersion];
  [v4 encodeObject:v76 forKey:@"AlignediOSMajorVersion"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v17 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(SUCoreDescriptor *)self descriptorType];
      if (v6 == [(SUCoreDescriptor *)v5 descriptorType])
      {
        v7 = [(SUCoreDescriptor *)self associatedSplatDescriptor];

        if (v7)
        {
          v8 = [(SUCoreDescriptor *)self associatedSplatDescriptor];
          v9 = [(SUCoreDescriptor *)v5 associatedSplatDescriptor];
          v10 = [v8 isEqual:v9];

          if (v10)
          {
LABEL_6:
            if ([(SUCoreDescriptor *)self descriptorType]== 2 || [(SUCoreDescriptor *)self descriptorType]== 4)
            {
              v11 = MEMORY[0x277D643F8];
              v12 = [(SUCoreDescriptor *)self updateBrainPath];
              v13 = [(SUCoreDescriptor *)v5 updateBrainPath];
              if ([v11 stringIsEqual:v12 to:v13])
              {
                v14 = MEMORY[0x277D643F8];
                v15 = [(SUCoreDescriptor *)self updateBundlePath];
                v16 = [(SUCoreDescriptor *)v5 updateBundlePath];
                v17 = [v14 stringIsEqual:v15 to:v16];

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
                v12 = [(SUCoreDescriptor *)self productVersion];
                v13 = [(SUCoreDescriptor *)v5 productVersion];
                if ([v21 stringIsEqual:v12 to:v13])
                {
                  v22 = MEMORY[0x277D643F8];
                  v23 = [(SUCoreDescriptor *)self productBuildVersion];
                  v24 = [(SUCoreDescriptor *)v5 productBuildVersion];
                  if ([v22 stringIsEqual:v23 to:v24])
                  {
                    v25 = MEMORY[0x277D643F8];
                    v26 = [(SUCoreDescriptor *)self productVersionExtra];
                    v53 = [(SUCoreDescriptor *)v5 productVersionExtra];
                    v54 = v26;
                    if ([v25 stringIsEqual:v26 to:v53])
                    {
                      v27 = MEMORY[0x277D643F8];
                      v28 = [(SUCoreDescriptor *)self releaseType];
                      v51 = [(SUCoreDescriptor *)v5 releaseType];
                      v52 = v28;
                      if ([v27 stringIsEqual:v28 to:v51])
                      {
                        v29 = MEMORY[0x277D643F8];
                        v30 = [(SUCoreDescriptor *)self restoreVersion];
                        v49 = [(SUCoreDescriptor *)v5 restoreVersion];
                        v50 = v30;
                        if ([v29 stringIsEqual:v30 to:v49])
                        {
                          v31 = MEMORY[0x277D643F8];
                          v32 = [(SUCoreDescriptor *)self targetUpdateBridgeVersion];
                          v33 = [(SUCoreDescriptor *)v5 targetUpdateBridgeVersion];
                          v48 = v32;
                          v34 = v32;
                          v35 = v33;
                          if ([v31 stringIsEqual:v34 to:v33])
                          {
                            v46 = MEMORY[0x277D643F8];
                            v36 = [(SUCoreDescriptor *)self targetUpdateSFRVersion];
                            v37 = [(SUCoreDescriptor *)v5 targetUpdateSFRVersion];
                            v38 = v46;
                            v45 = v37;
                            v47 = v36;
                            if ([v38 stringIsEqual:v36 to:?])
                            {
                              v44 = MEMORY[0x277D643F8];
                              v39 = [(SUCoreDescriptor *)self trainName];
                              v40 = [(SUCoreDescriptor *)v5 trainName];
                              v17 = [v44 stringIsEqual:v39 to:v40];
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
                v12 = [v41 initWithFormat:@"Unexpected descriptor type %@", v42];

                v13 = [MEMORY[0x277D64428] sharedDiag];
                [v13 trackAnomaly:@"DescriptorIsEqual" forReason:v12 withResult:8116 withError:0];
              }
            }

            v17 = 0;
            goto LABEL_25;
          }
        }

        else
        {
          v18 = [(SUCoreDescriptor *)v5 associatedSplatDescriptor];

          if (!v18)
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
    v5 = [(SUCoreDescriptor *)self updateBrainPath];
    v6 = [(SUCoreDescriptor *)self updateBundlePath];
    v7 = [(SUCoreDescriptor *)self bundleAttributes];
    v8 = [v3 initWithFormat:@"\n[>>>\n    descriptorType: %@\n   updateBrainPath: %@\n  updateBundlePath: %@\n  bundleAttributes: %@\n<<<]", v4, v5, v6, v7];
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
      v159 = [(SUCoreDescriptor *)self humanReadableUpdateName];
      v151 = [(SUCoreDescriptor *)self humanReadableUpdateTitle];
      v171 = [(SUCoreDescriptor *)self humanReadableUpdateVersion];
      v163 = [(SUCoreDescriptor *)self humanReadableMoreInfoLink];
      if ([(SUCoreDescriptor *)self notificationEnabled])
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      v119 = v12;
      v139 = [(SUCoreDescriptor *)self notificationTitleString];
      v155 = [(SUCoreDescriptor *)self notificationBodyString];
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
      v147 = [(SUCoreDescriptor *)self recommendedUpdateNotificationFrequencyDays];
      v131 = [(SUCoreDescriptor *)self recommendedUpdateMinOSVersion];
      v107 = [(SUCoreDescriptor *)self recommendedUpdateMaxOSVersion];
      v143 = [(SUCoreDescriptor *)self recommendedUpdateTitleString];
      v99 = [(SUCoreDescriptor *)self recommendedUpdateAlertBodyString];
      v135 = [(SUCoreDescriptor *)self mandatoryUpdateBodyString];
      v127 = [(SUCoreDescriptor *)self securityAdvisoryNotificationTitleString];
      v95 = [(SUCoreDescriptor *)self securityAdvisoryNotificationBodyString];
      v123 = [(SUCoreDescriptor *)self deviceCompatibilityNotificationTitleString];
      v15 = [(SUCoreDescriptor *)self deviceCompatibilityNotificationBodyString];
      v111 = [(SUCoreDescriptor *)self safariUpdateContentBundleURL];
      v16 = @"EXISTS";
      if (!v111)
      {
        v16 = @"NA";
      }

      v84 = v16;
      v90 = [(SUCoreDescriptor *)self updateTypeName];
      v87 = [(SUCoreDescriptor *)self assetID];
      v17 = [(SUCoreDescriptor *)self softwareUpdateAssetType];
      v18 = [(SUCoreDescriptor *)self documentationAssetType];
      v19 = [(SUCoreDescriptor *)self softwareUpdateAssetAbsoluteID];
      v20 = [(SUCoreDescriptor *)self documentationAssetAbsoluteID];
      v21 = [(SUCoreDescriptor *)self softwareUpdateAssetPurpose];
      v22 = [(SUCoreDescriptor *)self documentationAssetPurpose];
      [v183 appendFormat:@"\n [>>>\n                         descriptorType: %@\n                 descriptorAudienceType: %@\n                    preferredUpdateType: %@\n                humanReadableUpdateName: %@\n               humanReadableUpdateTitle: %@\n             humanReadableUpdateVersion: %@\n              humanReadableMoreInfoLink: %@\n                    notificationEnabled: %@\n                notificationTitleString: %@\n                 notificationBodyString: %@\n               recommendedUpdateEnabled: %@\n            recommendedUpdateApplicable: %@\n        updateNotificationFrequencyDays: %@\n          recommendedUpdateMinOSVersion: %@\n          recommendedUpdateMaxOSVersion: %@\n           recommendedUpdateTitleString: %@\n       recommendedUpdateAlertBodyString: %@\n              mandatoryUpdateBodyString: %@\n      securityAdvisoryNotificationTitle: %@\n       securityAdvisoryNotificationBody: %@\n   deviceCompatibilityNotificationTitle: %@\n    deviceCompatibilityNotificationBody: %@\n           safariUpdateContentBundleURL: %@\n                             updateType: %@\n                                assetID: %@\n                softwareUpdateAssetType: %@\n                 documentationAssetType: %@\n          softwareUpdateAssetAbsoluteID: %@\n           documentationAssetAbsoluteID: %@\n             softwareUpdateAssetPurpose: %@\n              documentationAssetPurpose: %@\n", v179, v167, v175, v159, v151, v171, v163, v119, v139, v155, v115, v103, v147, v131, v107, v143, v99, v135, v127, v95, v123, v15, v84, v90, v87, v17, v18, v19, v20, v21, v22];

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
      v180 = [(SUCoreDescriptor *)self alternateAssetAudienceUUID];
      v176 = [(SUCoreDescriptor *)self assetAudienceUUID];
      v168 = [(SUCoreDescriptor *)self uniqueBuildID];
      v164 = [(SUCoreDescriptor *)self splatInstallDate];
      v172 = [(SUCoreDescriptor *)self trainName];
      v160 = [(SUCoreDescriptor *)self productVersion];
      v156 = [(SUCoreDescriptor *)self productBuildVersion];
      v152 = [(SUCoreDescriptor *)self productVersionExtra];
      v144 = [(SUCoreDescriptor *)self productSystemName];
      v132 = [(SUCoreDescriptor *)self releaseType];
      v128 = [(SUCoreDescriptor *)self publisher];
      v124 = [(SUCoreDescriptor *)self restoreVersion];
      v120 = [(SUCoreDescriptor *)self targetUpdateBridgeVersion];
      v148 = [(SUCoreDescriptor *)self targetUpdateSFRVersion];
      v116 = [(SUCoreDescriptor *)self releaseDate];
      v112 = [(SUCoreDescriptor *)self prerequisiteBuild];
      v93 = [(SUCoreDescriptor *)self prerequisiteOSVersion];
      v108 = [(SUCoreDescriptor *)self supportedDevices];
      if ([(SUCoreDescriptor *)self fullReplacement])
      {
        v26 = @"YES";
      }

      else
      {
        v26 = @"NO";
      }

      v104 = v26;
      v100 = [(SUCoreDescriptor *)self downloadSize];
      v96 = [(SUCoreDescriptor *)self unarchivedSize];
      v91 = [(SUCoreDescriptor *)self msuPrepareSize];
      v88 = [(SUCoreDescriptor *)self msuSnapshotPrepareSize];
      v85 = [(SUCoreDescriptor *)self preparationSize];
      v27 = [(SUCoreDescriptor *)self installationSize];
      v28 = [(SUCoreDescriptor *)self minimumSystemPartitionSize];
      v29 = [(SUCoreDescriptor *)self totalRequiredFreeSpace];
      if ([(SUCoreDescriptor *)self streamingZipCapable])
      {
        v30 = @"YES";
      }

      else
      {
        v30 = @"NO";
      }

      v31 = [(SUCoreDescriptor *)self systemPartitionPadding];
      v32 = [(SUCoreDescriptor *)self preSUStagingRequiredSize];
      v33 = [(SUCoreDescriptor *)self preSUStagingOptionalSize];
      if ([(SUCoreDescriptor *)self disableReserveSpace])
      {
        v23 = @"YES";
      }

      [v183 appendFormat:@"                 promoteAlternateUpdate: %@\n           enableAlternateAssetAudience: %@\n             alternateAssetAudienceUUID: %@\n                      assetAudienceUUID: %@\n                          uniqueBuildID: %@\n                       splatInstallDate:%@\n                              trainName: %@\n                         productVersion: %@\n                    productBuildVersion: %@\n                    productVersionExtra: %@\n                      productSystemName: %@\n                            releaseType: %@\n                              publisher: %@\n                         restoreVersion: %@\n              targetUpdateBridgeVersion: %@\n                 targetUpdateSFRVersion: %@\n                            releaseDate: %@\n                      prerequisiteBuild: %@\n                  prerequisiteOSVersion: %@\n                       supportedDevices: %@\n                        fullReplacement: %@\n                           downloadSize: %llu\n                         unarchivedSize: %llu\n                         msuPrepareSize: %llu\n                 msuSnapshotPrepareSize: %llu\n                        preparationSize: %llu\n                       installationSize: %llu\n             minimumSystemPartitionSize: %llu\n                 totalRequiredFreeSpace: %llu\n                    streamingZipCapable: %@\n                 systemPartitionPadding: %@\n                 psusRequiredAssetsSize: %llu\n                 psusOptionalAssetsSize: %llu\n                    disableReserveSpace: %@\n                         suDownloadSize: %llu\n", v140, v136, v180, v176, v168, v164, v172, v160, v156, v152, v144, v132, v128, v124, v120, v148, v116, v112, v93, v108, v104, v100, v96, v91, v88, v85, v27, v28, v29, v30, v31, v32, v33, v23, -[SUCoreDescriptor suDownloadSize](self, "suDownloadSize")];

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
      v173 = [(SUCoreDescriptor *)self minFreeSpacePostStageOptionalAssets];
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
      v121 = [(SUCoreDescriptor *)self mdmDelayInterval];
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
      v109 = [(SUCoreDescriptor *)self installAlertInterval];
      if ([(SUCoreDescriptor *)self allowAutoDownloadOnBattery])
      {
        v50 = @"YES";
      }

      else
      {
        v50 = @"NO";
      }

      v105 = v50;
      v97 = [(SUCoreDescriptor *)self autoDownloadOnBatteryDelay];
      v94 = [(SUCoreDescriptor *)self autoDownloadOnBatteryMinBattery];
      if ([(SUCoreDescriptor *)self disableSplatCombo])
      {
        v51 = @"YES";
      }

      else
      {
        v51 = @"NO";
      }

      v89 = v51;
      v101 = [(SUCoreDescriptor *)self setupCritical];
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
      v92 = [(SUCoreDescriptor *)self lastEmergencyBuild];
      v86 = [(SUCoreDescriptor *)self lastEmergencyOSVersion];
      if ([(SUCoreDescriptor *)self mandatoryUpdateEligible])
      {
        v54 = @"YES";
      }

      else
      {
        v54 = @"NO";
      }

      v55 = [(SUCoreDescriptor *)self mandatoryUpdateVersionMin];
      v56 = [(SUCoreDescriptor *)self mandatoryUpdateVersionMax];
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

      v60 = [(SUCoreDescriptor *)self oneShotBuddyDisabledBuilds];
      [v183 appendFormat:@"                             enablePSUS: %@\n            enablePSUSForOptionalAssets: %@\n    minFreeSpacePostStageOptionalAssets: %llu\n      autoDownloadAllowableOverCellular: %@\n          downloadAllowableOverCellular: %@\n                           downloadable: %@\n               disableSiriVoiceDeletion: %@\n                        disableCDLevel4: %@\n                     disableAppDemotion: %@\n                    disableMASuspension: %@\n                  disableInstallTonight: %@\n                  forcePasscodeRequired: %@\n                            rampEnabled: %@\n                       granularlyRamped: %@\n                       mdmDelayInterval: %llu\n                      autoUpdateEnabled: %@\n                       hideInstallAlert: %@\n                     containsSFRContent: %@\n                   installAlertInterval: %llu\n             allowAutoDownloadOnBattery: %@\n             autoDownloadOnBatteryDelay: %llu\n        autoDownloadOnBatteryMinBattery: %llu\n                         disableSplombo: %@\n                          setupCritical: %@\n               criticalCellularOverride: %@\n                   criticalOutOfBoxOnly: %@\n                     lastEmergencyBuild: %@\n                 lastEmergencyOSVersion: %@\n                mandatoryUpdateEligible: %@\n              mandatoryUpdateVersionMin: %@\n              mandatoryUpdateVersionMax: %@\n                mandatoryUpdateOptional: %@\n mandatoryUpdateRestrictedToOutOfTheBox: %@\n                   oneShotBuddyDisabled: %@\n             oneShotBuddyDisabledBuilds: %@\n", v181, v177, v173, v169, v165, v161, v157, v153, v149, v145, v141, v137, v133, v129, v121, v113, v125, v117, v109, v105, v97, v94, v89, v101, v83, v82, v92, v86, v54, v55, v56, v57, v58, v59, v60];

      if ([(SUCoreDescriptor *)self criticalUpdate])
      {
        v61 = @"YES";
      }

      else
      {
        v61 = @"NO";
      }

      v178 = v61;
      v174 = [(SUCoreDescriptor *)self productType];
      v166 = [(SUCoreDescriptor *)self autoInstallDelay];
      if ([(SUCoreDescriptor *)self notifyAfter])
      {
        v62 = @"YES";
      }

      else
      {
        v62 = @"NO";
      }

      v158 = v62;
      v154 = [(SUCoreDescriptor *)self minimumBridgeVersion];
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
      v182 = [(SUCoreDescriptor *)self sepDigest];
      if (v182)
      {
        v66 = @"present";
      }

      else
      {
        v66 = 0;
      }

      v134 = v66;
      v170 = [(SUCoreDescriptor *)self sepTBMDigests];
      if (v170)
      {
        v67 = @"present";
      }

      else
      {
        v67 = 0;
      }

      v130 = v67;
      v162 = [(SUCoreDescriptor *)self rsepDigest];
      if (v162)
      {
        v68 = @"present";
      }

      else
      {
        v68 = 0;
      }

      v126 = v68;
      v150 = [(SUCoreDescriptor *)self rsepTBMDigests];
      if (v150)
      {
        v69 = @"present";
      }

      else
      {
        v69 = 0;
      }

      v122 = v69;
      v118 = [(SUCoreDescriptor *)self documentationID];
      v114 = [(SUCoreDescriptor *)self documentation];
      v110 = [(SUCoreDescriptor *)self softwareUpdateURL];
      v106 = [(SUCoreDescriptor *)self measurement];
      v102 = [(SUCoreDescriptor *)self measurementAlgorithm];
      v70 = [(SUCoreDescriptor *)self bundleAttributes];
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

      v73 = [(SUCoreDescriptor *)self semiSplatMustQuitApps];
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

      v76 = [(SUCoreDescriptor *)self associatedSplatDescriptor];
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

      v78 = [(SUCoreDescriptor *)self alignediOSMajorVersion];
      [v183 appendFormat:@"                         criticalUpdate: %@\n                            productType: %@\n                       autoInstallDelay: %llu\n                            notifyAfter: %@\n                   minimumBridgeVersion: %@\n                  disableRosettaUpdates: %@\n               disableRecoveryOSUpdates: %@\n          requireInstallAssistantUpdate: %@\n                              sepDigest: %@\n                          sepTBMDigests: %@\n                             rsepDigest: %@\n                         rsepTBMDigests: %@\n                        documentationID: %@\n                          documentation: %@\n                      softwareUpdateURL: %@\n                            measurement: %@\n                   measurementAlgorithm: %@\n                       bundleAttributes: %@\n                              splatOnly: %@\n                       semiSplatEnabled: %@\n                  semiSplatMustQuitApps: %@\n                                revoked: %@\n                    semiSplatRestartNow: %@\n              associatedSplatDescriptor: %@\n    disableSecurityAdvisoryNotification: %@\n disableDeviceCompatibilityNotification: %@\n                 alignediOSMajorVersion: %@\n", v178, v174, v166, v158, v154, v146, v142, v138, v134, v130, v126, v122, v118, v114, v110, v106, v102, v70, v98, v72, v73, v74, v75, v76, v77, v34, v78];

      v8 = v183;
      [v183 appendFormat:@"            centeralizedPurgeableFactor: %lu\n                  pluginPurgeableFactor: %lu\n                        minReserveSpace: %llu\n                        maxReserveSpace: %llu\n                unentitledReserveAmount: %llu\n               installationSnapshotSize: %llu\n<<<]", -[SUCoreDescriptor centeralizedPurgeableFactor](self, "centeralizedPurgeableFactor"), -[SUCoreDescriptor pluginPurgeableFactor](self, "pluginPurgeableFactor"), -[SUCoreDescriptor minReserveSpace](self, "minReserveSpace"), -[SUCoreDescriptor maxReserveSpace](self, "maxReserveSpace"), -[SUCoreDescriptor unentitledReserveAmount](self, "unentitledReserveAmount"), -[SUCoreDescriptor installationSnapshotSize](self, "installationSnapshotSize")];
    }

    else
    {
      v79 = objc_alloc(MEMORY[0x277CCACA8]);
      v80 = [SUCoreDescriptor nameForDescriptorType:[(SUCoreDescriptor *)self descriptorType]];
      v8 = [v79 initWithFormat:@"Unexpected descriptor type %@", v80];

      v81 = [MEMORY[0x277D64428] sharedDiag];
      [v81 trackAnomaly:@"DescriptorDescription" forReason:v8 withResult:8116 withError:0];
    }
  }

  return v8;
}

- (id)overviewWithMaxValueLength:(unint64_t)a3 providingSubstitutionMap:(id)a4
{
  v6 = a4;
  if ([(SUCoreDescriptor *)self descriptorType]== 2 || [(SUCoreDescriptor *)self descriptorType]== 4)
  {
    v7 = objc_alloc(MEMORY[0x277CCACA8]);
    v8 = [SUCoreDescriptor nameForDescriptorType:[(SUCoreDescriptor *)self descriptorType]];
    v9 = MEMORY[0x277D643F8];
    v10 = [(SUCoreDescriptor *)self updateBrainPath];
    v11 = [v9 limitString:v10 toMaxLength:a3 providingSubstitutionMap:v6];
    v12 = MEMORY[0x277D643F8];
    v13 = [(SUCoreDescriptor *)self updateBundlePath];
    v14 = [v12 limitString:v13 toMaxLength:a3 providingSubstitutionMap:v6];
    v15 = [v7 initWithFormat:@"\n[>>>\n    descriptorType: %@\n   updateBrainPath: %@\n  updateBundlePath: %@\n<<<]", v8, v11, v14];
  }

  else
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:{-[SUCoreDescriptor descriptorType](self, "descriptorType")}];
    v18 = [&unk_2846B9D18 containsObject:v17];

    v19 = objc_alloc(MEMORY[0x277CCACA8]);
    v20 = [SUCoreDescriptor nameForDescriptorType:[(SUCoreDescriptor *)self descriptorType]];
    v8 = v20;
    if (v18)
    {
      v113 = [SUCoreDescriptor nameForDescriptorAudienceType:[(SUCoreDescriptor *)self descriptorAudienceType]];
      v112 = [SUCoreDescriptor nameForDescriptorPreferredUpdateType:[(SUCoreDescriptor *)self preferredUpdateType]];
      v21 = MEMORY[0x277D643F8];
      v96 = [(SUCoreDescriptor *)self humanReadableUpdateName];
      v111 = [v21 limitString:v96 toMaxLength:a3 providingSubstitutionMap:v6];
      v22 = MEMORY[0x277D643F8];
      v95 = [(SUCoreDescriptor *)self humanReadableUpdateTitle];
      v110 = [v22 limitString:v95 toMaxLength:a3 providingSubstitutionMap:v6];
      v23 = MEMORY[0x277D643F8];
      v94 = [(SUCoreDescriptor *)self humanReadableUpdateVersion];
      v109 = [v23 limitString:v94 toMaxLength:a3 providingSubstitutionMap:v6];
      v24 = MEMORY[0x277D643F8];
      v93 = [(SUCoreDescriptor *)self humanReadableMoreInfoLink];
      v108 = [v24 limitString:v93 toMaxLength:a3 providingSubstitutionMap:v6];
      v25 = MEMORY[0x277D643F8];
      v92 = [(SUCoreDescriptor *)self updateTypeName];
      v107 = [v25 limitString:v92 toMaxLength:a3 providingSubstitutionMap:v6];
      v26 = MEMORY[0x277D643F8];
      v91 = [(SUCoreDescriptor *)self productVersion];
      v106 = [v26 limitString:v91 toMaxLength:a3 providingSubstitutionMap:v6];
      v27 = MEMORY[0x277D643F8];
      v90 = [(SUCoreDescriptor *)self productBuildVersion];
      v105 = [v27 limitString:v90 toMaxLength:a3 providingSubstitutionMap:v6];
      v28 = MEMORY[0x277D643F8];
      v89 = [(SUCoreDescriptor *)self restoreVersion];
      v104 = [v28 limitString:v89 toMaxLength:a3 providingSubstitutionMap:v6];
      v29 = MEMORY[0x277D643F8];
      v88 = [(SUCoreDescriptor *)self targetUpdateBridgeVersion];
      v103 = [v29 limitString:v88 toMaxLength:a3 providingSubstitutionMap:v6];
      v30 = MEMORY[0x277D643F8];
      v87 = [(SUCoreDescriptor *)self targetUpdateSFRVersion];
      v102 = [v30 limitString:v87 toMaxLength:a3 providingSubstitutionMap:v6];
      v31 = MEMORY[0x277D643F8];
      v86 = [(SUCoreDescriptor *)self releaseType];
      v101 = [v31 limitString:v86 toMaxLength:a3 providingSubstitutionMap:v6];
      v32 = MEMORY[0x277D643F8];
      v85 = [(SUCoreDescriptor *)self releaseDate];
      v84 = [v85 description];
      v100 = [v32 limitString:v84 toMaxLength:a3 providingSubstitutionMap:v6];
      v33 = MEMORY[0x277D643F8];
      v83 = [(SUCoreDescriptor *)self prerequisiteBuild];
      v99 = [v33 limitString:v83 toMaxLength:a3 providingSubstitutionMap:v6];
      v34 = MEMORY[0x277D643F8];
      v82 = [(SUCoreDescriptor *)self prerequisiteOSVersion];
      v98 = [v34 limitString:v82 toMaxLength:a3 providingSubstitutionMap:v6];
      v81 = [(SUCoreDescriptor *)self downloadSize];
      v80 = [(SUCoreDescriptor *)self preSUStagingRequiredSize];
      v78 = [(SUCoreDescriptor *)self preSUStagingOptionalSize];
      v77 = [(SUCoreDescriptor *)self suDownloadSize];
      v75 = [(SUCoreDescriptor *)self unarchivedSize];
      v74 = [(SUCoreDescriptor *)self preparationSize];
      v73 = [(SUCoreDescriptor *)self installationSize];
      v72 = [(SUCoreDescriptor *)self totalRequiredFreeSpace];
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
      v67 = [(SUCoreDescriptor *)self mdmDelayInterval];
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
      v62 = [(SUCoreDescriptor *)self installAlertInterval];
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
      v76 = [(SUCoreDescriptor *)self setupCritical];
      v61 = [v42 limitString:v76 toMaxLength:a3 providingSubstitutionMap:v6];
      v43 = MEMORY[0x277D643F8];
      v71 = [(SUCoreDescriptor *)self documentationID];
      v57 = [v43 limitString:v71 toMaxLength:a3 providingSubstitutionMap:v6];
      v44 = MEMORY[0x277D643F8];
      v68 = [(SUCoreDescriptor *)self softwareUpdateURL];
      v56 = [v44 limitString:v68 toMaxLength:a3 providingSubstitutionMap:v6];
      v45 = MEMORY[0x277D643F8];
      v65 = [(SUCoreDescriptor *)self measurement];
      v63 = [v65 description];
      v55 = [v45 limitString:v63 toMaxLength:a3 providingSubstitutionMap:v6];
      v46 = MEMORY[0x277D643F8];
      v58 = [(SUCoreDescriptor *)self measurementAlgorithm];
      v53 = [v46 limitString:v58 toMaxLength:a3 providingSubstitutionMap:v6];
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
      v54 = [(SUCoreDescriptor *)self associatedSplatDescriptor];
      v50 = [v54 humanReadableUpdateName];
      v51 = [v49 limitString:v50 toMaxLength:a3 providingSubstitutionMap:v6];
      v15 = [v79 initWithFormat:@"\n[>>>\n             descriptorType: %@\n     descriptorAudienceType: %@\n        preferredUpdateType: %@\n    humanReadableUpdateName: %@\n   humanReadableUpdateTitle: %@\n humanReadableUpdateVersion: %@\n  humanReadableMoreInfoLink: %@\n                 updateType: %@\n             productVersion: %@\n        productBuildVersion: %@\n             restoreVersion: %@\n  targetUpdateBridgeVersion: %@\n     targetUpdateSFRVersion: %@\n                releaseType: %@\n                releaseDate: %@\n          prerequisiteBuild: %@\n      prerequisiteOSVersion: %@\n               downloadSize: %llu\n     psusRequiredAssetsSize: %llu\n     psusOptionalAssetsSize: %llu\n             suDownloadSize: %llu\n             unarchivedSize: %llu\n            preparationSize: %llu\n           installationSize: %llu\n     totalRequiredFreeSpace: %llu\n                rampEnabled: %@\n           granularlyRamped: %@\n           mdmDelayInterval: %llu\n          autoUpdateEnabled: %@\n           hideInstallAlert: %@\n         containsSFRContent: %@\n       installAlertInterval: %llu\n allowAutoDownloadOnBattery: %@\n             disableSplombo: %@\n              setupCritical: %@\n            documentationID: %@\n          softwareUpdateURL: %@\n                measurement: %@\n       measurementAlgorithm: %@\n                  splatOnly: %@\n           semiSplatEnabled: %@\n                    revoked: %@\n  associatedSplatDescriptor: %@\n<<<]", v8, v113, v112, v111, v110, v109, v108, v107, v106, v105, v104, v103, v102, v101, v100, v99, v98, v81, v80, v78, v77, v75, v74, v73, v72, v70, v69, v67, v66, v97, v64, v62, v60, v59, v61, v57, v56, v55, v53, v52, v48, v35, v51];
    }

    else
    {
      v15 = [v19 initWithFormat:@"Unexpected descriptor type %@", v20];

      v8 = [MEMORY[0x277D64428] sharedDiag];
      [v8 trackAnomaly:@"DescriptorOverview" forReason:v15 withResult:8116 withError:0];
    }
  }

  return v15;
}

- (id)summary
{
  v3 = [(SUCoreDescriptor *)self softwareUpdateAssetType];
  if ([v3 isEqualToString:@"com.apple.MobileAsset.MobileSoftwareUpdate.UpdateBrain"])
  {

LABEL_4:
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    v7 = [(SUCoreDescriptor *)self productBuildVersion];
    v8 = [v6 initWithFormat:@"%@", v7];
    goto LABEL_11;
  }

  v4 = [(SUCoreDescriptor *)self softwareUpdateAssetType];
  v5 = [v4 isEqualToString:@"com.apple.MobileAsset.MobileSoftwareUpdate.MacUpdateBrain"];

  if (v5)
  {
    goto LABEL_4;
  }

  v9 = [(SUCoreDescriptor *)self associatedSplatDescriptor];

  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = [(SUCoreDescriptor *)self humanReadableUpdateName];
  v11 = [(SUCoreDescriptor *)self productBuildVersion];
  v12 = [(SUCoreDescriptor *)self releaseType];
  v13 = v12;
  v14 = @"Customer";
  if (v12)
  {
    v14 = v12;
  }

  if (v9)
  {
    v15 = [v10 initWithFormat:@"%@ %@ (SplatCombo) (%@)", v7, v11, v14];
  }

  else
  {
    v15 = [v10 initWithFormat:@"%@ %@ (%@)", v7, v11, v14];
  }

  v8 = v15;

LABEL_11:

  return v8;
}

@end