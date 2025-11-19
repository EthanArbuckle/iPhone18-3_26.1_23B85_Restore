@interface SUCoreDocumentation
- (BOOL)isRecommendedUpdateApplicable;
- (SUCoreDocumentation)initWithCoder:(id)a3;
- (SUCoreDocumentation)initWithDocumentationAsset:(id)a3;
- (SUCoreDocumentation)initWithLocalBundleURL:(id)a3 attributes:(id)a4;
- (id)_extendDocumentationProperties;
- (id)_extendDocumentationPropertiesWithSimulateEvent:(id)a3;
- (id)_resourceFromBundle:(__CFBundle *)a3 forKey:(id)a4;
- (id)description;
- (id)encodedUIBundlePath;
- (id)extendDocumentationProperties;
- (id)softwareUpdateIconImage;
- (id)softwareUpdateIconImagePath;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
- (void)encodedUIBundlePath;
- (void)isRecommendedUpdateApplicable;
- (void)softwareUpdateIconImage;
@end

@implementation SUCoreDocumentation

- (SUCoreDocumentation)initWithDocumentationAsset:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v26 = [MEMORY[0x277D64428] sharedDiag];
    v27 = v26;
    v28 = @"unable to create SU documentation: nil update asset";
    goto LABEL_21;
  }

  v6 = [v4 attributes];
  if (!v6 || (v7 = v6, [v5 attributes], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7, !v9))
  {
    v26 = [MEMORY[0x277D64428] sharedDiag];
    v27 = v26;
    v28 = @"unable to create SU documentation: documentation asset without attributes";
LABEL_21:
    [v26 trackError:@"[DOCUMENTATION]" forReason:v28 withResult:8100 withError:0];

    v25 = 0;
    goto LABEL_22;
  }

  v10 = [v5 getLocalUrl];
  if (!v10)
  {
    v11 = [MEMORY[0x277D64460] sharedLogger];
    v12 = [v11 oslog];

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, v12, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Attempting to create a documentation instance with no localBundleURL (non-fatal)", buf, 2u);
    }
  }

  v13 = [v5 attributes];
  v14 = [(SUCoreDocumentation *)self initWithLocalBundleURL:v10 attributes:v13];

  v15 = [v5 assetServerUrl];
  [(SUCoreDocumentation *)v14 setServerAssetURL:v15];

  v16 = [MEMORY[0x277D64418] sharedDevice];
  v17 = [v16 isBootedOSSecureInternal];

  if (v17)
  {
    v18 = [MEMORY[0x277CCAA00] defaultManager];
    if (([v18 fileExistsAtPath:@"/AppleInternal/Assets/SUCoreDocumentation/SUCoreDocumentationOverrides.plist"] & 1) == 0)
    {
      v19 = [MEMORY[0x277D64460] sharedLogger];
      v20 = [v19 oslog];

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23193C000, v20, OS_LOG_TYPE_DEFAULT, "[SU Documentation Preview] Plist not found... creating a default plist", buf, 2u);
      }

      v31 = 0;
      v21 = [@"<?xml version=1.0 encoding=UTF-8?>     <!DOCTYPE plist PUBLIC -//Apple//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd>     <plist version=1.0>     <dict>         <key>MobileAssetNewPath</key>         <string></string>     </dict>     </plist>" writeToFile:@"/AppleInternal/Assets/SUCoreDocumentation/SUCoreDocumentationOverrides.plist" atomically:1 encoding:4 error:&v31];
      v22 = v31;
      if ((v21 & 1) == 0)
      {
        v23 = [MEMORY[0x277D64460] sharedLogger];
        v24 = [v23 oslog];

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v33 = v22;
          _os_log_impl(&dword_23193C000, v24, OS_LOG_TYPE_DEFAULT, "[SU Documentation Preview] Error creating plist: %@", buf, 0xCu);
        }
      }
    }
  }

  self = v14;

  v25 = self;
LABEL_22:

  v29 = *MEMORY[0x277D85DE8];
  return v25;
}

- (SUCoreDocumentation)initWithLocalBundleURL:(id)a3 attributes:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v64.receiver = self;
    v64.super_class = SUCoreDocumentation;
    v9 = [(SUCoreDocumentation *)&v64 init];
    if (v9)
    {
      v10 = [v8 safeStringForKey:@"OSVersion"];
      productVersion = v9->_productVersion;
      v9->_productVersion = v10;

      v12 = [v8 safeObjectForKey:@"SUSLAVersionRequired" ofClass:objc_opt_class()];
      slaVersion = v9->_slaVersion;
      v9->_slaVersion = v12;

      objc_storeStrong(&v9->_localBundleURL, a3);
      serverAssetURL = v9->_serverAssetURL;
      v9->_serverAssetURL = 0;

      v15 = [v8 safeDataForKey:@"_Measurement"];
      serverAssetMeasurement = v9->_serverAssetMeasurement;
      v9->_serverAssetMeasurement = v15;

      v17 = [v8 safeStringForKey:@"_MeasurementAlgorithm"];
      serverAssetAlgorithm = v9->_serverAssetAlgorithm;
      v9->_serverAssetAlgorithm = v17;

      v19 = [v8 safeObjectForKey:@"_DownloadSize" ofClass:objc_opt_class()];
      v9->_serverAssetChunkSize = [v19 longLongValue];

      v9->_notificationEnabled = [v8 safeBooleanForKey:@"NotificationEnabled"];
      v20 = [v7 URLByAppendingPathComponent:@"SafariWhatsNew"];
      safariUpdateContentBundleURL = v9->_safariUpdateContentBundleURL;
      v9->_safariUpdateContentBundleURL = v20;

      v22 = [v8 safeDictionaryForKey:@"RecommendedUpdate"];
      v23 = v22;
      if (v22)
      {
        v9->_recommendedUpdateEnabled = [v22 safeBooleanForKey:@"Enabled"];
        v24 = [v23 safeStringForKey:@"MinOSVersion"];
        recommendedUpdateMinOSVersion = v9->_recommendedUpdateMinOSVersion;
        v9->_recommendedUpdateMinOSVersion = v24;

        v26 = [v23 safeStringForKey:@"MaxOSVersion"];
        recommendedUpdateMaxOSVersion = v9->_recommendedUpdateMaxOSVersion;
        v9->_recommendedUpdateMaxOSVersion = v26;

        v9->_recommendedUpdateApplicable = [(SUCoreDocumentation *)v9 isRecommendedUpdateApplicable];
        v28 = [v23 objectForKey:@"NotificationFrequencyDays"];

        if (v28)
        {
          [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v23, "safeIntegerForKey:", @"NotificationFrequencyDays"}];
        }

        else
        {
          [MEMORY[0x277CCABB0] numberWithInt:3];
        }
        v29 = ;
      }

      else
      {
        *&v9->_recommendedUpdateEnabled = 0;
        v32 = v9->_recommendedUpdateMinOSVersion;
        v9->_recommendedUpdateMinOSVersion = 0;

        v33 = v9->_recommendedUpdateMaxOSVersion;
        v9->_recommendedUpdateMaxOSVersion = 0;

        v29 = 0;
      }

      recommendedUpdateNotificationFrequencyDays = v9->_recommendedUpdateNotificationFrequencyDays;
      v9->_recommendedUpdateNotificationFrequencyDays = v29;

      v35 = [v8 safeStringForKey:@"ReleaseNotesSummaryFileName"];
      releaseNotesSummaryFileName = v9->_releaseNotesSummaryFileName;
      v9->_releaseNotesSummaryFileName = v35;

      if (!v9->_releaseNotesSummaryFileName)
      {
        v9->_releaseNotesSummaryFileName = @"ReadMeSummary";
      }

      v37 = [v8 safeStringForKey:@"ReleaseNotesFileName"];
      releaseNotesFileName = v9->_releaseNotesFileName;
      v9->_releaseNotesFileName = v37;

      if (!v9->_releaseNotesFileName)
      {
        v9->_releaseNotesFileName = @"ReadMe";
      }

      v39 = [v8 safeStringForKey:@"EncodedUIBundleFileName"];
      encodedUIBundleFileName = v9->_encodedUIBundleFileName;
      v9->_encodedUIBundleFileName = v39;

      if (!v9->_encodedUIBundleFileName)
      {
        v9->_encodedUIBundleFileName = @"EncodedUIv2";
      }

      v41 = [v8 safeStringForKey:@"LicenseAgreementFileName"];
      licenseAgreementFileName = v9->_licenseAgreementFileName;
      v9->_licenseAgreementFileName = v41;

      if (!v9->_licenseAgreementFileName)
      {
        v9->_licenseAgreementFileName = @"License";
      }

      v43 = [v8 safeStringForKey:@"PreferencesIconFileName"];
      preferencesIconFileName = v9->_preferencesIconFileName;
      v9->_preferencesIconFileName = v43;

      if (!v9->_preferencesIconFileName)
      {
        v9->_preferencesIconFileName = @"PreferencesIcon";
      }

      language = v9->_language;
      v9->_language = @"en";

      v46 = [MEMORY[0x277CBEAF8] preferredLanguages];
      v47 = v46;
      if (v46 && [v46 count])
      {
        v48 = [v47 objectAtIndex:0];
        v49 = v9->_language;
        v9->_language = v48;
      }

      humanReadableUpdateName = v9->_humanReadableUpdateName;
      v9->_humanReadableUpdateName = 0;

      humanReadableUpdateTitle = v9->_humanReadableUpdateTitle;
      v9->_humanReadableUpdateTitle = 0;

      humanReadableUpdateVersion = v9->_humanReadableUpdateVersion;
      v9->_humanReadableUpdateVersion = 0;

      humanReadableMoreInfoLink = v9->_humanReadableMoreInfoLink;
      v9->_humanReadableMoreInfoLink = 0;

      notificationTitleString = v9->_notificationTitleString;
      v9->_notificationTitleString = 0;

      notificationBodyString = v9->_notificationBodyString;
      v9->_notificationBodyString = 0;

      recommendedUpdateTitleString = v9->_recommendedUpdateTitleString;
      v9->_recommendedUpdateTitleString = 0;

      recommendedUpdateAlertBodyString = v9->_recommendedUpdateAlertBodyString;
      v9->_recommendedUpdateAlertBodyString = 0;

      mandatoryUpdateBodyString = v9->_mandatoryUpdateBodyString;
      v9->_mandatoryUpdateBodyString = 0;

      securityAdvisoryNotificationTitleString = v9->_securityAdvisoryNotificationTitleString;
      v9->_securityAdvisoryNotificationTitleString = 0;

      securityAdvisoryNotificationBodyString = v9->_securityAdvisoryNotificationBodyString;
      v9->_securityAdvisoryNotificationBodyString = 0;

      deviceCompatibilityNotificationTitleString = v9->_deviceCompatibilityNotificationTitleString;
      v9->_deviceCompatibilityNotificationTitleString = 0;

      deviceCompatibilityNotificationBodyString = v9->_deviceCompatibilityNotificationBodyString;
      v9->_deviceCompatibilityNotificationBodyString = 0;
    }

    self = v9;
    v31 = self;
  }

  else
  {
    v30 = [MEMORY[0x277D64428] sharedDiag];
    [v30 trackError:@"[DOCUMENTATION]" forReason:@"unable to create SU documentation with no attributes dictionary" withResult:8100 withError:0];

    v31 = 0;
  }

  return v31;
}

- (id)extendDocumentationProperties
{
  v3 = [MEMORY[0x277D644A0] sharedSimulator];
  v4 = [v3 begin:@"documentation" atFunction:@"extendDocumentationProperties"];

  if (v4)
  {
    v5 = [(SUCoreDocumentation *)self _extendDocumentationPropertiesWithSimulateEvent:v4];
  }

  else
  {
    v5 = [(SUCoreDocumentation *)self _extendDocumentationProperties];
    v6 = [MEMORY[0x277D644A0] sharedSimulator];
    v7 = [v6 end:@"documentation" atFunction:@"extendDocumentationProperties"];

    if (v7)
    {
      v8 = [(SUCoreDocumentation *)self _extendDocumentationPropertiesWithSimulateEvent:v7];

      v5 = v8;
    }
  }

  return v5;
}

- (id)_extendDocumentationPropertiesWithSimulateEvent:(id)a3
{
  v4 = a3;
  v5 = [v4 simAction];
  if (v5 == 3)
  {
    v7 = [MEMORY[0x277CBEBC0] URLWithString:@"SimulatedLocalBundelURL"];
    [(SUCoreDocumentation *)self setLocalBundleURL:v7];

    [(SUCoreDocumentation *)self setHumanReadableUpdateName:@"SimulatedHumanReadableUpdateName"];
    [(SUCoreDocumentation *)self setHumanReadableUpdateTitle:@"SimulatedHumanReadableUpdateTitle"];
    [(SUCoreDocumentation *)self setHumanReadableUpdateVersion:@"SimulatedHumanReadableUpdateVersion"];
    [(SUCoreDocumentation *)self setHumanReadableMoreInfoLink:@"SimulatedHumanReadableMoreInfoLink"];
    [(SUCoreDocumentation *)self setNotificationEnabled:1];
    [(SUCoreDocumentation *)self setNotificationTitleString:@"SimulatedNotificationTitleString"];
    [(SUCoreDocumentation *)self setNotificationBodyString:@"SimulatedNotificationBodyString"];
    [(SUCoreDocumentation *)self setRecommendedUpdateEnabled:1];
    [(SUCoreDocumentation *)self setRecommendedUpdateApplicable:1];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:1];
    [(SUCoreDocumentation *)self setRecommendedUpdateNotificationFrequencyDays:v8];

    [(SUCoreDocumentation *)self setRecommendedUpdateMinOSVersion:@"SimulatedRecommendedUpdateMinOSVersion"];
    [(SUCoreDocumentation *)self setRecommendedUpdateMaxOSVersion:@"SimulatedRecommendedUpdateMaxOSVersion"];
    [(SUCoreDocumentation *)self setRecommendedUpdateTitleString:@"SimulatedRecommendedUpdateTitleString"];
    [(SUCoreDocumentation *)self setRecommendedUpdateAlertBodyString:@"SimulatedRecommendedUpdateAlertBodyString"];
    [(SUCoreDocumentation *)self setMandatoryUpdateBodyString:@"SimulatedMandatoryUpdateBodyString"];
    [(SUCoreDocumentation *)self setSecurityAdvisoryNotificationTitleString:@"SimulatedSecurityAdvisoryNotificationTitleString"];
    [(SUCoreDocumentation *)self setSecurityAdvisoryNotificationBodyString:@"SimulatedSecurityAdvisoryNotificationBodyString"];
    [(SUCoreDocumentation *)self setDeviceCompatibilityNotificationTitleString:@"SimulatedDeviceCompatibilityNotificationTitleString"];
    [(SUCoreDocumentation *)self setDeviceCompatibilityNotificationBodyString:@"SimulatedDeviceCompatibilityNotificationBodyString"];
    v9 = [@"SimulatedReleaseNotesSummary" dataUsingEncoding:4];
    [(SUCoreDocumentation *)self setReleaseNotesSummary:v9];

    v10 = [@"SimulatedReleaseNotes" dataUsingEncoding:4];
    [(SUCoreDocumentation *)self setReleaseNotes:v10];

    v11 = [@"SimulatedLicenseAgreement" dataUsingEncoding:4];
    [(SUCoreDocumentation *)self setLicenseAgreement:v11];

    v12 = [MEMORY[0x277CBEBC0] URLWithString:@"SimulatedSafariUpdateContentBundleURL"];
    [(SUCoreDocumentation *)self setSafariUpdateContentBundleURL:v12];
  }

  else
  {
    if (v5 == 1)
    {
      v6 = [v4 buildErrorWithDescription:@"Simulated extendDocumentationProperties error"];
      goto LABEL_7;
    }

    v13 = [MEMORY[0x277D64428] sharedDiag];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", v4];
    [v13 trackAnomaly:@"_extendDocumentationPropertiesWithSimulateEvent" forReason:v14 withResult:8113 withError:0];
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)_extendDocumentationProperties
{
  v118 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277D64418] sharedDevice];
  v4 = [v3 isBootedOSSecureInternal];

  if (v4)
  {
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/AppleInternal/Assets/SUCoreDocumentation/SUCoreDocumentationOverrides.plist"];
    v6 = [v5 valueForKey:@"MobileAssetNewPath"];
    if (v6)
    {
      v7 = [MEMORY[0x277CCAA00] defaultManager];
      v8 = [v7 fileExistsAtPath:v6];

      v9 = [MEMORY[0x277D64460] sharedLogger];
      v10 = [v9 oslog];

      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v11)
        {
          *buf = 0;
          _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "[SU Documentation Preview] Overriding documentation assets with custom path", buf, 2u);
        }

        v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
        [(SUCoreDocumentation *)self setLocalBundleURL:v12];

        v13 = [MEMORY[0x277D64460] sharedLogger];
        v10 = [v13 oslog];

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [(SUCoreDocumentation *)self localBundleURL];
          *buf = 138412290;
          v117 = v14;
          _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "[SU Documentation Preview] New Local Bundle: %@", buf, 0xCu);
        }

        goto LABEL_13;
      }

      if (v11)
      {
        *buf = 138412290;
        v117 = v6;
        v16 = "[SU Documentation Preview] Invalid Update path: %@";
        v17 = v10;
        v18 = 12;
        goto LABEL_12;
      }
    }

    else
    {
      v15 = [MEMORY[0x277D64460] sharedLogger];
      v10 = [v15 oslog];

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v16 = "[SU Documentation Preview] Unable to find alternate local bundle URL";
        v17 = v10;
        v18 = 2;
LABEL_12:
        _os_log_impl(&dword_23193C000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      }
    }

LABEL_13:
  }

  v19 = [(SUCoreDocumentation *)self localBundleURL];

  if (v19)
  {
    v20 = [(SUCoreDocumentation *)self localBundleURL];
    v21 = [v20 URLByAppendingPathComponent:@"SafariWhatsNew"];
    [(SUCoreDocumentation *)self setSafariUpdateContentBundleURL:v21];

    v22 = [(SUCoreDocumentation *)self safariUpdateContentBundleURL];

    if (!v22)
    {
      v23 = [MEMORY[0x277D64460] sharedLogger];
      v24 = [v23 oslog];

      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(SUCoreDocumentation *)self safariUpdateContentBundleURL];
        *buf = 138543362;
        v117 = v25;
        _os_log_impl(&dword_23193C000, v24, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load safariUpdateContentBundleURL: %{public}@", buf, 0xCu);
      }
    }

    v26 = *MEMORY[0x277CBECE8];
    v27 = [(SUCoreDocumentation *)self localBundleURL];
    v28 = CFBundleCreate(v26, v27);

    if (v28)
    {
      v29 = CFBundleCopyLocalizedString(v28, @"HumanReadableUpdateName", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v31 = [(SUCoreDocumentation *)v29 isEqualToString:@"HumanReadableUpdateName"], v30 = v29, v31))
      {
        v32 = [MEMORY[0x277D64460] sharedLogger];
        v33 = [v32 oslog];

        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v117 = v29;
          _os_log_impl(&dword_23193C000, v33, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load humanReadableUpdateName: %{public}@", buf, 0xCu);
        }

        v30 = 0;
      }

      [(SUCoreDocumentation *)self setHumanReadableUpdateName:v30];
      v34 = CFBundleCopyLocalizedString(v28, @"HumanReadableUpdateTitle", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v36 = [(__CFString *)v34 isEqualToString:@"HumanReadableUpdateTitle"], v35 = v34, v36))
      {
        v37 = [MEMORY[0x277D64460] sharedLogger];
        v38 = [v37 oslog];

        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v117 = v34;
          _os_log_impl(&dword_23193C000, v38, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load humanReadableUpdateTitle: %{public}@", buf, 0xCu);
        }

        v35 = 0;
      }

      [(SUCoreDocumentation *)self setHumanReadableUpdateTitle:v35];
      v39 = CFBundleCopyLocalizedString(v28, @"HumanReadableUpdateVersion", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v41 = [(__CFString *)v39 isEqualToString:@"HumanReadableUpdateVersion"], v40 = v39, v41))
      {
        v42 = [MEMORY[0x277D64460] sharedLogger];
        v43 = [v42 oslog];

        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v117 = v39;
          _os_log_impl(&dword_23193C000, v43, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load humanReadableUpdateVersion: %{public}@", buf, 0xCu);
        }

        v40 = 0;
      }

      [(SUCoreDocumentation *)self setHumanReadableUpdateVersion:v40];
      v44 = CFBundleCopyLocalizedString(v28, @"HumanReadableMoreInfoLink", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v46 = [(__CFString *)v44 isEqualToString:@"HumanReadableMoreInfoLink"], v45 = v44, v46))
      {
        v47 = [MEMORY[0x277D64460] sharedLogger];
        v48 = [v47 oslog];

        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v117 = v44;
          _os_log_impl(&dword_23193C000, v48, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load humanReadableMoreInfoLink: %{public}@", buf, 0xCu);
        }

        v45 = 0;
      }

      [(SUCoreDocumentation *)self setHumanReadableMoreInfoLink:v45];
      v49 = CFBundleCopyLocalizedString(v28, @"NotificationTitleString", 0, @"documentation");
      objc_opt_class();
      v115 = v49;
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v51 = [(__CFString *)v49 isEqualToString:@"NotificationTitleString"], v50 = v49, v51))
      {
        v52 = [MEMORY[0x277D64460] sharedLogger];
        v53 = [v52 oslog];

        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v117 = v115;
          _os_log_impl(&dword_23193C000, v53, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load notificationTitleString: %{public}@", buf, 0xCu);
        }

        v50 = 0;
      }

      [(SUCoreDocumentation *)self setNotificationTitleString:v50];
      v54 = CFBundleCopyLocalizedString(v28, @"NotificationBodyString", 0, @"documentation");
      objc_opt_class();
      v114 = v54;
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v56 = [(__CFString *)v54 isEqualToString:@"NotificationBodyString"], v55 = v54, v56))
      {
        v57 = [MEMORY[0x277D64460] sharedLogger];
        v58 = [v57 oslog];

        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v117 = v114;
          _os_log_impl(&dword_23193C000, v58, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load notificationBodyString: %{public}@", buf, 0xCu);
        }

        v55 = 0;
      }

      v112 = v39;
      [(SUCoreDocumentation *)self setNotificationBodyString:v55];
      v59 = CFBundleCopyLocalizedString(v28, @"RecommendedUpdateTitleString", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v61 = [(__CFString *)v59 isEqualToString:@"RecommendedUpdateTitleString"], v60 = v59, v61))
      {
        v62 = [MEMORY[0x277D64460] sharedLogger];
        v63 = [v62 oslog];

        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v117 = v59;
          _os_log_impl(&dword_23193C000, v63, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load recommendedUpdateTitleString: %{public}@", buf, 0xCu);
        }

        v60 = 0;
      }

      v111 = v44;
      [(SUCoreDocumentation *)self setRecommendedUpdateTitleString:v60];
      v64 = CFBundleCopyLocalizedString(v28, @"RecommendedUpdateAlertBodyString", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v66 = [(__CFString *)v64 isEqualToString:@"RecommendedUpdateAlertBodyString"], v65 = v64, v66))
      {
        v67 = [MEMORY[0x277D64460] sharedLogger];
        v68 = [v67 oslog];

        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v117 = v64;
          _os_log_impl(&dword_23193C000, v68, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load recommendedUpdateAlertBodyString: %{public}@", buf, 0xCu);
        }

        v65 = 0;
      }

      v113 = v34;
      [(SUCoreDocumentation *)self setRecommendedUpdateAlertBodyString:v65];
      v69 = CFBundleCopyLocalizedString(v28, @"MandatoryUpdateBodyString", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v71 = [(__CFString *)v69 isEqualToString:@"MandatoryUpdateBodyString"], v70 = v69, v71))
      {
        v72 = [MEMORY[0x277D64460] sharedLogger];
        v73 = [v72 oslog];

        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v117 = v69;
          _os_log_impl(&dword_23193C000, v73, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load mandatoryUpdateBodyString: %{public}@", buf, 0xCu);
        }

        v70 = 0;
      }

      [(SUCoreDocumentation *)self setMandatoryUpdateBodyString:v70];
      v74 = CFBundleCopyLocalizedString(v28, @"SecurityAdvisoryNotificationTitleString", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v76 = [(__CFString *)v74 isEqualToString:@"SecurityAdvisoryNotificationTitleString"], v75 = v74, v76))
      {
        v77 = [MEMORY[0x277D64460] sharedLogger];
        v78 = [v77 oslog];

        if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v117 = v74;
          _os_log_impl(&dword_23193C000, v78, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load securityAdvisoryNotificationTitleString: %{public}@", buf, 0xCu);
        }

        v75 = 0;
      }

      [(SUCoreDocumentation *)self setSecurityAdvisoryNotificationTitleString:v75];

      v79 = CFBundleCopyLocalizedString(v28, @"SecurityAdvisoryNotificationBodyString", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v81 = [(__CFString *)v79 isEqualToString:@"SecurityAdvisoryNotificationBodyString"], v80 = v79, v81))
      {
        v82 = [MEMORY[0x277D64460] sharedLogger];
        v83 = [v82 oslog];

        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v117 = v79;
          _os_log_impl(&dword_23193C000, v83, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load securityAdvisoryNotificationBodyString: %{public}@", buf, 0xCu);
        }

        v80 = 0;
      }

      [(SUCoreDocumentation *)self setSecurityAdvisoryNotificationBodyString:v80];

      v84 = CFBundleCopyLocalizedString(v28, @"DeviceCompatibilityNotificationTitleString", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v86 = [(__CFString *)v84 isEqualToString:@"DeviceCompatibilityNotificationTitleString"], v85 = v84, v86))
      {
        v87 = [MEMORY[0x277D64460] sharedLogger];
        v88 = [v87 oslog];

        if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v117 = v84;
          _os_log_impl(&dword_23193C000, v88, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load deviceCompatibilityNotificationTitleString: %{public}@", buf, 0xCu);
        }

        v85 = 0;
      }

      [(SUCoreDocumentation *)self setDeviceCompatibilityNotificationTitleString:v85];

      v89 = CFBundleCopyLocalizedString(v28, @"DeviceCompatibilityNotificationBodyString", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v91 = [(__CFString *)v89 isEqualToString:@"DeviceCompatibilityNotificationBodyString"], v90 = v89, v91))
      {
        v92 = [MEMORY[0x277D64460] sharedLogger];
        v93 = [v92 oslog];

        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v117 = v89;
          _os_log_impl(&dword_23193C000, v93, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load deviceCompatibilityNotificationBodyString: %{public}@", buf, 0xCu);
        }

        v90 = 0;
      }

      [(SUCoreDocumentation *)self setDeviceCompatibilityNotificationBodyString:v90];

      v94 = [(SUCoreDocumentation *)self releaseNotesSummaryFileName];
      v95 = [(SUCoreDocumentation *)self _resourceFromBundle:v28 forKey:v94];
      [(SUCoreDocumentation *)self setReleaseNotesSummary:v95];

      v96 = [(SUCoreDocumentation *)self releaseNotesFileName];
      v97 = [(SUCoreDocumentation *)self _resourceFromBundle:v28 forKey:v96];
      [(SUCoreDocumentation *)self setReleaseNotes:v97];

      v98 = [(SUCoreDocumentation *)self licenseAgreementFileName];
      v99 = [(SUCoreDocumentation *)self _resourceFromBundle:v28 forKey:v98];
      [(SUCoreDocumentation *)self setLicenseAgreement:v99];

      v100 = [MEMORY[0x277D64460] sharedLogger];
      v101 = [v100 oslog];

      if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v117 = self;
        _os_log_impl(&dword_23193C000, v101, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Successfully extended documentation properties: %{public}@", buf, 0xCu);
      }

      CFRelease(v28);
      v102 = 0;
    }

    else
    {
      v104 = [MEMORY[0x277D643F8] sharedCore];
      v105 = MEMORY[0x277CCACA8];
      v106 = [(SUCoreDocumentation *)self localBundleURL];
      v107 = [v105 stringWithFormat:@"unable to load asset bundle for the local bundle URL of the documentation asset: %@", v106];
      v102 = [v104 buildError:8100 underlying:0 description:v107];

      v29 = [MEMORY[0x277D64428] sharedDiag];
      v108 = [v102 localizedDescription];
      [(SUCoreDocumentation *)v29 trackError:@"[DOCUMENTATION]" forReason:v108 withResult:8100 withError:v102];
    }
  }

  else
  {
    v103 = [MEMORY[0x277D643F8] sharedCore];
    v102 = [v103 buildError:8101 underlying:0 description:@"unable to find local bundle URL for documentation asset"];

    v29 = [MEMORY[0x277D64428] sharedDiag];
    [(SUCoreDocumentation *)v29 trackError:@"[DOCUMENTATION]" forReason:@"unable to find local bundle URL for documentation asset" withResult:8101 withError:v102];
  }

  v109 = *MEMORY[0x277D85DE8];

  return v102;
}

- (id)_resourceFromBundle:(__CFBundle *)a3 forKey:(id)a4
{
  v4 = CFBundleCopyResourceURL(a3, a4, @"html", 0);
  if (v4)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isRecommendedUpdateApplicable
{
  v32 = *MEMORY[0x277D85DE8];
  if ([(SUCoreDocumentation *)self recommendedUpdateEnabled])
  {
    v3 = [MEMORY[0x277D64418] sharedDevice];
    v4 = [v3 productVersion];

    v5 = [(SUCoreDocumentation *)self recommendedUpdateMinOSVersion];
    if (v5 && (v6 = v5, [(SUCoreDocumentation *)self recommendedUpdateMaxOSVersion], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7) && v4)
    {
      v8 = [(SUCoreDocumentation *)self recommendedUpdateMinOSVersion];
      v9 = [v8 compare:v4 options:64];

      v10 = [(SUCoreDocumentation *)self recommendedUpdateMaxOSVersion];
      v11 = [v4 compare:v10 options:64];

      v13 = v9 != 1 && v11 != 1;
      v14 = [MEMORY[0x277D64460] sharedLogger];
      v15 = [v14 oslog];

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(SUCoreDocumentation *)self recommendedUpdateMinOSVersion];
        v17 = [(SUCoreDocumentation *)self recommendedUpdateMaxOSVersion];
        v18 = v17;
        v19 = @"NO";
        v24 = 138544130;
        v25 = v16;
        if (v13)
        {
          v19 = @"YES";
        }

        v26 = 2114;
        v27 = v4;
        v28 = 2114;
        v29 = v17;
        v30 = 2114;
        v31 = v19;
        _os_log_impl(&dword_23193C000, v15, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] recommendedUpdateMinOSVersion=%{public}@ <= currentOSVersion=%{public}@ <= recommendedUpdateMaxOSVersion=%{public}@ | isRecommendedUpdateApplicable=%{public}@", &v24, 0x2Au);
      }
    }

    else
    {
      v21 = [MEMORY[0x277D64460] sharedLogger];
      v15 = [v21 oslog];

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [(SUCoreDocumentation *)self isRecommendedUpdateApplicable];
      }

      LOBYTE(v13) = 0;
    }
  }

  else
  {
    v20 = [MEMORY[0x277D64460] sharedLogger];
    v4 = [v20 oslog];

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDocumentation isRecommendedUpdateApplicable];
    }

    LOBYTE(v13) = 0;
  }

  v22 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)softwareUpdateIconImagePath
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(SUCoreDocumentation *)self localBundleURL];

  if (!v3)
  {
    v11 = [MEMORY[0x277D64460] sharedLogger];
    v10 = [v11 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDocumentation softwareUpdateIconImagePath];
    }

    goto LABEL_9;
  }

  v4 = [(SUCoreDocumentation *)self preferencesIconFileName];

  if (!v4)
  {
    v12 = [MEMORY[0x277D64460] sharedLogger];
    v10 = [v12 oslog];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDocumentation softwareUpdateIconImagePath];
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v5 = [(SUCoreDocumentation *)self localBundleURL];
  v6 = [v5 path];
  v7 = [(SUCoreDocumentation *)self preferencesIconFileName];
  v8 = [v6 stringByAppendingPathComponent:v7];

  v9 = [MEMORY[0x277D64460] sharedLogger];
  v10 = [v9 oslog];

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = v8;
    _os_log_impl(&dword_23193C000, v10, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Using icon path: %{public}@", &v15, 0xCu);
  }

LABEL_10:

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)encodedUIBundlePath
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = [(SUCoreDocumentation *)self localBundleURL];

  if (!v3)
  {
    v18 = [MEMORY[0x277D64460] sharedLogger];
    v6 = [v18 oslog];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDocumentation encodedUIBundlePath];
    }

    goto LABEL_19;
  }

  v4 = [(SUCoreDocumentation *)self encodedUIBundleFileName];

  v5 = [MEMORY[0x277D64460] sharedLogger];
  v6 = [v5 oslog];

  if (!v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDocumentation encodedUIBundlePath];
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(SUCoreDocumentation *)self localBundleURL];
    v8 = [(SUCoreDocumentation *)self encodedUIBundleFileName];
    v22 = 138543618;
    v23 = v7;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&dword_23193C000, v6, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Loading bundle with localBundleURL:%{public}@ encodedUIBundleFileName:%{public}@", &v22, 0x16u);
  }

  v9 = *MEMORY[0x277CBECE8];
  v10 = [(SUCoreDocumentation *)self localBundleURL];
  v11 = CFBundleCreate(v9, v10);

  if (!v11)
  {
    v19 = [MEMORY[0x277D64460] sharedLogger];
    v6 = [v19 oslog];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(SUCoreDocumentation *)self encodedUIBundlePath];
    }

    goto LABEL_19;
  }

  v12 = [(SUCoreDocumentation *)self encodedUIBundleFileName];
  v6 = CFBundleCopyResourceURL(v11, v12, @"suda", 0);

  CFRelease(v11);
  v13 = [MEMORY[0x277D64460] sharedLogger];
  v14 = [v13 oslog];

  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    if (v15)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_23193C000, v14, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] No encoded UI bundle path was found within the update bundle.", &v22, 2u);
    }

LABEL_19:
    v17 = 0;
    goto LABEL_20;
  }

  if (v15)
  {
    v16 = [v6 path];
    v22 = 138543362;
    v23 = v16;
    _os_log_impl(&dword_23193C000, v14, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Using encoded UI bundle path: %{public}@", &v22, 0xCu);
  }

  v17 = [v6 path];
LABEL_20:

  v20 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)softwareUpdateIconImage
{
  v26 = *MEMORY[0x277D85DE8];
  getUIImageClass();
  if (!objc_opt_class())
  {
    v17 = [MEMORY[0x277D64460] sharedLogger];
    v6 = [v17 oslog];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDocumentation softwareUpdateIconImage];
    }

    goto LABEL_16;
  }

  v3 = [(SUCoreDocumentation *)self localBundleURL];

  if (!v3)
  {
    v18 = [MEMORY[0x277D64460] sharedLogger];
    v6 = [v18 oslog];

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDocumentation softwareUpdateIconImage];
    }

    goto LABEL_16;
  }

  v4 = [(SUCoreDocumentation *)self preferencesIconFileName];

  v5 = [MEMORY[0x277D64460] sharedLogger];
  v6 = [v5 oslog];

  if (!v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDocumentation softwareUpdateIconImage];
    }

LABEL_16:
    v13 = 0;
    goto LABEL_23;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(SUCoreDocumentation *)self localBundleURL];
    v8 = [(SUCoreDocumentation *)self preferencesIconFileName];
    v22 = 138543618;
    v23 = v7;
    v24 = 2114;
    v25 = v8;
    _os_log_impl(&dword_23193C000, v6, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Loading bundle with localBundleURL:%{public}@ preferencesIconFileName:%{public}@", &v22, 0x16u);
  }

  v9 = MEMORY[0x277CCA8D8];
  v10 = [(SUCoreDocumentation *)self localBundleURL];
  v6 = [v9 bundleWithURL:v10];

  if (v6)
  {
    UIImageClass = getUIImageClass();
    v12 = [(SUCoreDocumentation *)self preferencesIconFileName];
    v13 = [UIImageClass imageNamed:v12 inBundle:v6 withConfiguration:0];

    v14 = [MEMORY[0x277D64460] sharedLogger];
    v15 = [v14 oslog];

    if (v13)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(SUCoreDocumentation *)self preferencesIconFileName];
        v22 = 138543362;
        v23 = v16;
        _os_log_impl(&dword_23193C000, v15, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Successfully loaded update icon bundle with name: %{public}@", &v22, 0xCu);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(SUCoreDocumentation *)self softwareUpdateIconImage];
    }
  }

  else
  {
    v19 = [MEMORY[0x277D64460] sharedLogger];
    v15 = [v19 oslog];

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(SUCoreDocumentation *)self softwareUpdateIconImage];
    }

    v13 = 0;
  }

LABEL_23:
  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

- (SUCoreDocumentation)initWithCoder:(id)a3
{
  v4 = a3;
  v72.receiver = self;
  v72.super_class = SUCoreDocumentation;
  v5 = [(SUCoreDocumentation *)&v72 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReleaseNotesSummary"];
    releaseNotesSummary = v5->_releaseNotesSummary;
    v5->_releaseNotesSummary = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReleaseNotes"];
    releaseNotes = v5->_releaseNotes;
    v5->_releaseNotes = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LicenseAgreement"];
    licenseAgreement = v5->_licenseAgreement;
    v5->_licenseAgreement = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HumanReadableUpdateName"];
    humanReadableUpdateName = v5->_humanReadableUpdateName;
    v5->_humanReadableUpdateName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HumanReadableUpdateTitle"];
    humanReadableUpdateTitle = v5->_humanReadableUpdateTitle;
    v5->_humanReadableUpdateTitle = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HumanReadableUpdateVersion"];
    humanReadableUpdateVersion = v5->_humanReadableUpdateVersion;
    v5->_humanReadableUpdateVersion = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HumanReadableMoreInfoLink"];
    humanReadableMoreInfoLink = v5->_humanReadableMoreInfoLink;
    v5->_humanReadableMoreInfoLink = v18;

    v5->_notificationEnabled = [v4 decodeBoolForKey:@"NotificationEnabled"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NotificationTitleString"];
    notificationTitleString = v5->_notificationTitleString;
    v5->_notificationTitleString = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"NotificationBodyString"];
    notificationBodyString = v5->_notificationBodyString;
    v5->_notificationBodyString = v22;

    v5->_recommendedUpdateEnabled = [v4 decodeBoolForKey:@"RecommendedUpdateEnabled"];
    v5->_recommendedUpdateApplicable = [v4 decodeBoolForKey:@"RecommendedUpdateApplicable"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RecommendedUpdateNotificationFrequencyDays"];
    recommendedUpdateNotificationFrequencyDays = v5->_recommendedUpdateNotificationFrequencyDays;
    v5->_recommendedUpdateNotificationFrequencyDays = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RecommendedUpdateMinOSVersion"];
    recommendedUpdateMinOSVersion = v5->_recommendedUpdateMinOSVersion;
    v5->_recommendedUpdateMinOSVersion = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RecommendedUpdateMaxOSVersion"];
    recommendedUpdateMaxOSVersion = v5->_recommendedUpdateMaxOSVersion;
    v5->_recommendedUpdateMaxOSVersion = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RecommendedUpdateTitleString"];
    recommendedUpdateTitleString = v5->_recommendedUpdateTitleString;
    v5->_recommendedUpdateTitleString = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"RecommendedUpdateAlertBodyString"];
    recommendedUpdateAlertBodyString = v5->_recommendedUpdateAlertBodyString;
    v5->_recommendedUpdateAlertBodyString = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MandatoryUpdateBodyString"];
    mandatoryUpdateBodyString = v5->_mandatoryUpdateBodyString;
    v5->_mandatoryUpdateBodyString = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SecurityAdvisoryNotificationTitleString"];
    securityAdvisoryNotificationTitleString = v5->_securityAdvisoryNotificationTitleString;
    v5->_securityAdvisoryNotificationTitleString = v36;

    v38 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SecurityAdvisoryNotificationBodyString"];
    securityAdvisoryNotificationBodyString = v5->_securityAdvisoryNotificationBodyString;
    v5->_securityAdvisoryNotificationBodyString = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceCompatibilityNotificationTitleString"];
    deviceCompatibilityNotificationTitleString = v5->_deviceCompatibilityNotificationTitleString;
    v5->_deviceCompatibilityNotificationTitleString = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DeviceCompatibilityNotificationBodyString"];
    deviceCompatibilityNotificationBodyString = v5->_deviceCompatibilityNotificationBodyString;
    v5->_deviceCompatibilityNotificationBodyString = v42;

    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ProductVersion"];
    productVersion = v5->_productVersion;
    v5->_productVersion = v44;

    v46 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SLAVersion"];
    slaVersion = v5->_slaVersion;
    v5->_slaVersion = v46;

    v48 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LocalBundleURL"];
    localBundleURL = v5->_localBundleURL;
    v5->_localBundleURL = v48;

    v50 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SafariUpdateContentBundleURL"];
    safariUpdateContentBundleURL = v5->_safariUpdateContentBundleURL;
    v5->_safariUpdateContentBundleURL = v50;

    v52 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ServerAssetURL"];
    serverAssetURL = v5->_serverAssetURL;
    v5->_serverAssetURL = v52;

    v54 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ServerAssetMeasurement"];
    serverAssetMeasurement = v5->_serverAssetMeasurement;
    v5->_serverAssetMeasurement = v54;

    v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ServerAssetAlgorithm"];
    serverAssetAlgorithm = v5->_serverAssetAlgorithm;
    v5->_serverAssetAlgorithm = v56;

    v58 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ServerAssetChuckSize"];
    v5->_serverAssetChunkSize = [v58 longLongValue];

    v59 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReleaseNotesSummaryFileName"];
    releaseNotesSummaryFileName = v5->_releaseNotesSummaryFileName;
    v5->_releaseNotesSummaryFileName = v59;

    v61 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ReleaseNotesFileName"];
    releaseNotesFileName = v5->_releaseNotesFileName;
    v5->_releaseNotesFileName = v61;

    v63 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"LicenseAgreementFileName"];
    licenseAgreementFileName = v5->_licenseAgreementFileName;
    v5->_licenseAgreementFileName = v63;

    v65 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PreferencesIconFileName"];
    preferencesIconFileName = v5->_preferencesIconFileName;
    v5->_preferencesIconFileName = v65;

    v67 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EncodedUIBundleFileName"];
    encodedUIBundleFileName = v5->_encodedUIBundleFileName;
    v5->_encodedUIBundleFileName = v67;

    v69 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Language"];
    language = v5->_language;
    v5->_language = v69;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUCoreDocumentation *)self releaseNotesSummary];
  [v4 encodeObject:v5 forKey:@"ReleaseNotesSummary"];

  v6 = [(SUCoreDocumentation *)self releaseNotes];
  [v4 encodeObject:v6 forKey:@"ReleaseNotes"];

  v7 = [(SUCoreDocumentation *)self licenseAgreement];
  [v4 encodeObject:v7 forKey:@"LicenseAgreement"];

  v8 = [(SUCoreDocumentation *)self humanReadableUpdateName];
  [v4 encodeObject:v8 forKey:@"HumanReadableUpdateName"];

  v9 = [(SUCoreDocumentation *)self humanReadableUpdateTitle];
  [v4 encodeObject:v9 forKey:@"HumanReadableUpdateTitle"];

  v10 = [(SUCoreDocumentation *)self humanReadableUpdateVersion];
  [v4 encodeObject:v10 forKey:@"HumanReadableUpdateVersion"];

  v11 = [(SUCoreDocumentation *)self humanReadableMoreInfoLink];
  [v4 encodeObject:v11 forKey:@"HumanReadableMoreInfoLink"];

  [v4 encodeBool:-[SUCoreDocumentation notificationEnabled](self forKey:{"notificationEnabled"), @"NotificationEnabled"}];
  v12 = [(SUCoreDocumentation *)self notificationTitleString];
  [v4 encodeObject:v12 forKey:@"NotificationTitleString"];

  v13 = [(SUCoreDocumentation *)self notificationBodyString];
  [v4 encodeObject:v13 forKey:@"NotificationBodyString"];

  [v4 encodeBool:-[SUCoreDocumentation recommendedUpdateEnabled](self forKey:{"recommendedUpdateEnabled"), @"RecommendedUpdateEnabled"}];
  [v4 encodeBool:-[SUCoreDocumentation recommendedUpdateApplicable](self forKey:{"recommendedUpdateApplicable"), @"RecommendedUpdateApplicable"}];
  v14 = [(SUCoreDocumentation *)self recommendedUpdateNotificationFrequencyDays];
  [v4 encodeObject:v14 forKey:@"RecommendedUpdateNotificationFrequencyDays"];

  v15 = [(SUCoreDocumentation *)self recommendedUpdateMinOSVersion];
  [v4 encodeObject:v15 forKey:@"RecommendedUpdateMinOSVersion"];

  v16 = [(SUCoreDocumentation *)self recommendedUpdateMaxOSVersion];
  [v4 encodeObject:v16 forKey:@"RecommendedUpdateMaxOSVersion"];

  v17 = [(SUCoreDocumentation *)self recommendedUpdateTitleString];
  [v4 encodeObject:v17 forKey:@"RecommendedUpdateTitleString"];

  v18 = [(SUCoreDocumentation *)self recommendedUpdateAlertBodyString];
  [v4 encodeObject:v18 forKey:@"RecommendedUpdateAlertBodyString"];

  v19 = [(SUCoreDocumentation *)self mandatoryUpdateBodyString];
  [v4 encodeObject:v19 forKey:@"MandatoryUpdateBodyString"];

  v20 = [(SUCoreDocumentation *)self securityAdvisoryNotificationTitleString];
  [v4 encodeObject:v20 forKey:@"SecurityAdvisoryNotificationTitleString"];

  v21 = [(SUCoreDocumentation *)self securityAdvisoryNotificationBodyString];
  [v4 encodeObject:v21 forKey:@"SecurityAdvisoryNotificationBodyString"];

  v22 = [(SUCoreDocumentation *)self deviceCompatibilityNotificationTitleString];
  [v4 encodeObject:v22 forKey:@"DeviceCompatibilityNotificationTitleString"];

  v23 = [(SUCoreDocumentation *)self deviceCompatibilityNotificationBodyString];
  [v4 encodeObject:v23 forKey:@"DeviceCompatibilityNotificationBodyString"];

  v24 = [(SUCoreDocumentation *)self productVersion];
  [v4 encodeObject:v24 forKey:@"ProductVersion"];

  v25 = [(SUCoreDocumentation *)self slaVersion];
  [v4 encodeObject:v25 forKey:@"SLAVersion"];

  v26 = [(SUCoreDocumentation *)self localBundleURL];
  [v4 encodeObject:v26 forKey:@"LocalBundleURL"];

  v27 = [(SUCoreDocumentation *)self safariUpdateContentBundleURL];
  [v4 encodeObject:v27 forKey:@"SafariUpdateContentBundleURL"];

  v28 = [(SUCoreDocumentation *)self serverAssetURL];
  [v4 encodeObject:v28 forKey:@"ServerAssetURL"];

  v29 = [(SUCoreDocumentation *)self serverAssetMeasurement];
  [v4 encodeObject:v29 forKey:@"ServerAssetMeasurement"];

  v30 = [(SUCoreDocumentation *)self serverAssetAlgorithm];
  [v4 encodeObject:v30 forKey:@"ServerAssetAlgorithm"];

  v31 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[SUCoreDocumentation serverAssetChunkSize](self, "serverAssetChunkSize")}];
  [v4 encodeObject:v31 forKey:@"ServerAssetChuckSize"];

  v32 = [(SUCoreDocumentation *)self releaseNotesSummaryFileName];
  [v4 encodeObject:v32 forKey:@"ReleaseNotesSummaryFileName"];

  v33 = [(SUCoreDocumentation *)self releaseNotesFileName];
  [v4 encodeObject:v33 forKey:@"ReleaseNotesFileName"];

  v34 = [(SUCoreDocumentation *)self licenseAgreementFileName];
  [v4 encodeObject:v34 forKey:@"LicenseAgreementFileName"];

  v35 = [(SUCoreDocumentation *)self preferencesIconFileName];
  [v4 encodeObject:v35 forKey:@"PreferencesIconFileName"];

  v36 = [(SUCoreDocumentation *)self encodedUIBundleFileName];
  [v4 encodeObject:v36 forKey:@"EncodedUIBundleFileName"];

  v37 = [(SUCoreDocumentation *)self language];
  [v4 encodeObject:v37 forKey:@"Language"];
}

- (id)description
{
  v23 = objc_alloc(MEMORY[0x277CCACA8]);
  v40 = [(SUCoreDocumentation *)self releaseNotesSummary];
  v43 = [(SUCoreDocumentation *)self releaseNotes];
  v37 = [(SUCoreDocumentation *)self licenseAgreement];
  v42 = [(SUCoreDocumentation *)self humanReadableUpdateName];
  v35 = [(SUCoreDocumentation *)self humanReadableUpdateTitle];
  v41 = [(SUCoreDocumentation *)self humanReadableUpdateVersion];
  v39 = [(SUCoreDocumentation *)self humanReadableMoreInfoLink];
  if ([(SUCoreDocumentation *)self notificationEnabled])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v22 = v3;
  v38 = [(SUCoreDocumentation *)self notificationTitleString];
  v34 = [(SUCoreDocumentation *)self notificationBodyString];
  if ([(SUCoreDocumentation *)self recommendedUpdateEnabled])
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  v21 = v4;
  if ([(SUCoreDocumentation *)self recommendedUpdateApplicable])
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v20 = v5;
  v36 = [(SUCoreDocumentation *)self recommendedUpdateNotificationFrequencyDays];
  v33 = [(SUCoreDocumentation *)self recommendedUpdateMinOSVersion];
  v29 = [(SUCoreDocumentation *)self recommendedUpdateMaxOSVersion];
  v32 = [(SUCoreDocumentation *)self recommendedUpdateTitleString];
  v19 = [(SUCoreDocumentation *)self recommendedUpdateAlertBodyString];
  v31 = [(SUCoreDocumentation *)self mandatoryUpdateBodyString];
  v18 = [(SUCoreDocumentation *)self securityAdvisoryNotificationTitleString];
  v30 = [(SUCoreDocumentation *)self securityAdvisoryNotificationBodyString];
  v17 = [(SUCoreDocumentation *)self deviceCompatibilityNotificationTitleString];
  v28 = [(SUCoreDocumentation *)self deviceCompatibilityNotificationBodyString];
  v27 = [(SUCoreDocumentation *)self productVersion];
  v26 = [(SUCoreDocumentation *)self slaVersion];
  v25 = [(SUCoreDocumentation *)self localBundleURL];
  v16 = [(SUCoreDocumentation *)self safariUpdateContentBundleURL];
  v15 = [(SUCoreDocumentation *)self serverAssetURL];
  v14 = [(SUCoreDocumentation *)self serverAssetMeasurement];
  v6 = [(SUCoreDocumentation *)self serverAssetAlgorithm];
  v7 = [(SUCoreDocumentation *)self language];
  v8 = [(SUCoreDocumentation *)self releaseNotesSummaryFileName];
  v9 = [(SUCoreDocumentation *)self releaseNotesFileName];
  v10 = [(SUCoreDocumentation *)self licenseAgreementFileName];
  v11 = [(SUCoreDocumentation *)self preferencesIconFileName];
  v12 = [(SUCoreDocumentation *)self encodedUIBundleFileName];
  v24 = [v23 initWithFormat:@"\n[>>>\n                        releaseNotesSummary: %@\n                               releaseNotes: %@\n                           licenseAgreement: %@\n                    humanReadableUpdateName: %@\n                   humanReadableUpdateTitle: %@\n                 humanReadableUpdateVersion: %@\n                  humanReadableMoreInfoLink: %@\n                        notificationEnabled: %@\n                    notificationTitleString: %@\n                     notificationBodyString: %@\n                   recommendedUpdateEnabled: %@\n                recommendedUpdateApplicable: %@\n recommendedUpdateNotificationFrequencyDays: %@\n              recommendedUpdateMinOSVersion: %@\n              recommendedUpdateMaxOSVersion: %@\n               recommendedUpdateTitleString: %@\n           recommendedUpdateAlertBodyString: %@\n                  mandatoryUpdateBodyString: %@\n    securityAdvisoryNotificationTitleString: %@\n     securityAdvisoryNotificationBodyString: %@\n deviceCompatibilityNotificationTitleString: %@\n  deviceCompatibilityNotificationBodyString: %@\n                             productVersion: %@\n                                 slaVersion: %@\n                             localBundleURL: %@\n               safariUpdateContentBundleURL: %@\n                             serverAssetURL: %@\n                     serverAssetMeasurement: %@\n                       serverAssetAlgorithm: %@\n                                   language: %@\n                releaseNotesSummaryFileName: %@\n                       releaseNotesFileName: %@\n                   licenseAgreementFileName: %@\n                    preferencesIconFileName: %@\n                    encodedUIBundleFileName: %@\n<<<]", v40, v43, v37, v42, v35, v41, v39, v22, v38, v34, v21, v20, v36, v33, v29, v32, v19, v31, v18, v30, v17, v28, v27, v26, v25, v16, v15, v14, v6, v7, v8, v9, v10, v11, v12];

  return v24;
}

- (id)summary
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(SUCoreDocumentation *)self localBundleURL];
  v5 = [(SUCoreDocumentation *)self serverAssetURL];
  v6 = [v3 initWithFormat:@"localBundleURL:%@, serverAssetURL:%@", v4, v5];

  return v6;
}

- (void)isRecommendedUpdateApplicable
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [a1 recommendedUpdateMaxOSVersion];
  v9 = [a1 recommendedUpdateMinOSVersion];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)encodedUIBundlePath
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 localBundleURL];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)softwareUpdateIconImage
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 localBundleURL];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end