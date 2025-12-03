@interface SUCoreDocumentation
- (BOOL)isRecommendedUpdateApplicable;
- (SUCoreDocumentation)initWithCoder:(id)coder;
- (SUCoreDocumentation)initWithDocumentationAsset:(id)asset;
- (SUCoreDocumentation)initWithLocalBundleURL:(id)l attributes:(id)attributes;
- (id)_extendDocumentationProperties;
- (id)_extendDocumentationPropertiesWithSimulateEvent:(id)event;
- (id)_resourceFromBundle:(__CFBundle *)bundle forKey:(id)key;
- (id)description;
- (id)encodedUIBundlePath;
- (id)extendDocumentationProperties;
- (id)softwareUpdateIconImage;
- (id)softwareUpdateIconImagePath;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
- (void)encodedUIBundlePath;
- (void)isRecommendedUpdateApplicable;
- (void)softwareUpdateIconImage;
@end

@implementation SUCoreDocumentation

- (SUCoreDocumentation)initWithDocumentationAsset:(id)asset
{
  v34 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v5 = assetCopy;
  if (!assetCopy)
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v27 = mEMORY[0x277D64428];
    v28 = @"unable to create SU documentation: nil update asset";
    goto LABEL_21;
  }

  attributes = [assetCopy attributes];
  if (!attributes || (v7 = attributes, [v5 attributes], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v7, !v9))
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    v27 = mEMORY[0x277D64428];
    v28 = @"unable to create SU documentation: documentation asset without attributes";
LABEL_21:
    [mEMORY[0x277D64428] trackError:@"[DOCUMENTATION]" forReason:v28 withResult:8100 withError:0];

    selfCopy = 0;
    goto LABEL_22;
  }

  getLocalUrl = [v5 getLocalUrl];
  if (!getLocalUrl)
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Attempting to create a documentation instance with no localBundleURL (non-fatal)", buf, 2u);
    }
  }

  attributes2 = [v5 attributes];
  v14 = [(SUCoreDocumentation *)self initWithLocalBundleURL:getLocalUrl attributes:attributes2];

  assetServerUrl = [v5 assetServerUrl];
  [(SUCoreDocumentation *)v14 setServerAssetURL:assetServerUrl];

  mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
  isBootedOSSecureInternal = [mEMORY[0x277D64418] isBootedOSSecureInternal];

  if (isBootedOSSecureInternal)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if (([defaultManager fileExistsAtPath:@"/AppleInternal/Assets/SUCoreDocumentation/SUCoreDocumentationOverrides.plist"] & 1) == 0)
    {
      mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
      oslog2 = [mEMORY[0x277D64460]2 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[SU Documentation Preview] Plist not found... creating a default plist", buf, 2u);
      }

      v31 = 0;
      v21 = [@"<?xml version=1.0 encoding=UTF-8?>     <!DOCTYPE plist PUBLIC -//Apple//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd>     <plist version=1.0>     <dict>         <key>MobileAssetNewPath</key>         <string></string>     </dict>     </plist>" writeToFile:@"/AppleInternal/Assets/SUCoreDocumentation/SUCoreDocumentationOverrides.plist" atomically:1 encoding:4 error:&v31];
      v22 = v31;
      if ((v21 & 1) == 0)
      {
        mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
        oslog3 = [mEMORY[0x277D64460]3 oslog];

        if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v33 = v22;
          _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[SU Documentation Preview] Error creating plist: %@", buf, 0xCu);
        }
      }
    }
  }

  self = v14;

  selfCopy = self;
LABEL_22:

  v29 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (SUCoreDocumentation)initWithLocalBundleURL:(id)l attributes:(id)attributes
{
  lCopy = l;
  attributesCopy = attributes;
  if (attributesCopy)
  {
    v64.receiver = self;
    v64.super_class = SUCoreDocumentation;
    v9 = [(SUCoreDocumentation *)&v64 init];
    if (v9)
    {
      v10 = [attributesCopy safeStringForKey:@"OSVersion"];
      productVersion = v9->_productVersion;
      v9->_productVersion = v10;

      v12 = [attributesCopy safeObjectForKey:@"SUSLAVersionRequired" ofClass:objc_opt_class()];
      slaVersion = v9->_slaVersion;
      v9->_slaVersion = v12;

      objc_storeStrong(&v9->_localBundleURL, l);
      serverAssetURL = v9->_serverAssetURL;
      v9->_serverAssetURL = 0;

      v15 = [attributesCopy safeDataForKey:@"_Measurement"];
      serverAssetMeasurement = v9->_serverAssetMeasurement;
      v9->_serverAssetMeasurement = v15;

      v17 = [attributesCopy safeStringForKey:@"_MeasurementAlgorithm"];
      serverAssetAlgorithm = v9->_serverAssetAlgorithm;
      v9->_serverAssetAlgorithm = v17;

      v19 = [attributesCopy safeObjectForKey:@"_DownloadSize" ofClass:objc_opt_class()];
      v9->_serverAssetChunkSize = [v19 longLongValue];

      v9->_notificationEnabled = [attributesCopy safeBooleanForKey:@"NotificationEnabled"];
      v20 = [lCopy URLByAppendingPathComponent:@"SafariWhatsNew"];
      safariUpdateContentBundleURL = v9->_safariUpdateContentBundleURL;
      v9->_safariUpdateContentBundleURL = v20;

      v22 = [attributesCopy safeDictionaryForKey:@"RecommendedUpdate"];
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

      v35 = [attributesCopy safeStringForKey:@"ReleaseNotesSummaryFileName"];
      releaseNotesSummaryFileName = v9->_releaseNotesSummaryFileName;
      v9->_releaseNotesSummaryFileName = v35;

      if (!v9->_releaseNotesSummaryFileName)
      {
        v9->_releaseNotesSummaryFileName = @"ReadMeSummary";
      }

      v37 = [attributesCopy safeStringForKey:@"ReleaseNotesFileName"];
      releaseNotesFileName = v9->_releaseNotesFileName;
      v9->_releaseNotesFileName = v37;

      if (!v9->_releaseNotesFileName)
      {
        v9->_releaseNotesFileName = @"ReadMe";
      }

      v39 = [attributesCopy safeStringForKey:@"EncodedUIBundleFileName"];
      encodedUIBundleFileName = v9->_encodedUIBundleFileName;
      v9->_encodedUIBundleFileName = v39;

      if (!v9->_encodedUIBundleFileName)
      {
        v9->_encodedUIBundleFileName = @"EncodedUIv2";
      }

      v41 = [attributesCopy safeStringForKey:@"LicenseAgreementFileName"];
      licenseAgreementFileName = v9->_licenseAgreementFileName;
      v9->_licenseAgreementFileName = v41;

      if (!v9->_licenseAgreementFileName)
      {
        v9->_licenseAgreementFileName = @"License";
      }

      v43 = [attributesCopy safeStringForKey:@"PreferencesIconFileName"];
      preferencesIconFileName = v9->_preferencesIconFileName;
      v9->_preferencesIconFileName = v43;

      if (!v9->_preferencesIconFileName)
      {
        v9->_preferencesIconFileName = @"PreferencesIcon";
      }

      language = v9->_language;
      v9->_language = @"en";

      preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
      v47 = preferredLanguages;
      if (preferredLanguages && [preferredLanguages count])
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
    selfCopy = self;
  }

  else
  {
    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [mEMORY[0x277D64428] trackError:@"[DOCUMENTATION]" forReason:@"unable to create SU documentation with no attributes dictionary" withResult:8100 withError:0];

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)extendDocumentationProperties
{
  mEMORY[0x277D644A0] = [MEMORY[0x277D644A0] sharedSimulator];
  v4 = [mEMORY[0x277D644A0] begin:@"documentation" atFunction:@"extendDocumentationProperties"];

  if (v4)
  {
    _extendDocumentationProperties = [(SUCoreDocumentation *)self _extendDocumentationPropertiesWithSimulateEvent:v4];
  }

  else
  {
    _extendDocumentationProperties = [(SUCoreDocumentation *)self _extendDocumentationProperties];
    mEMORY[0x277D644A0]2 = [MEMORY[0x277D644A0] sharedSimulator];
    v7 = [mEMORY[0x277D644A0]2 end:@"documentation" atFunction:@"extendDocumentationProperties"];

    if (v7)
    {
      v8 = [(SUCoreDocumentation *)self _extendDocumentationPropertiesWithSimulateEvent:v7];

      _extendDocumentationProperties = v8;
    }
  }

  return _extendDocumentationProperties;
}

- (id)_extendDocumentationPropertiesWithSimulateEvent:(id)event
{
  eventCopy = event;
  simAction = [eventCopy simAction];
  if (simAction == 3)
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
    if (simAction == 1)
    {
      v6 = [eventCopy buildErrorWithDescription:@"Simulated extendDocumentationProperties error"];
      goto LABEL_7;
    }

    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    eventCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unsupported simulated event action, event: %@", eventCopy];
    [mEMORY[0x277D64428] trackAnomaly:@"_extendDocumentationPropertiesWithSimulateEvent" forReason:eventCopy withResult:8113 withError:0];
  }

  v6 = 0;
LABEL_7:

  return v6;
}

- (id)_extendDocumentationProperties
{
  v118 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
  isBootedOSSecureInternal = [mEMORY[0x277D64418] isBootedOSSecureInternal];

  if (isBootedOSSecureInternal)
  {
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:@"/AppleInternal/Assets/SUCoreDocumentation/SUCoreDocumentationOverrides.plist"];
    v6 = [v5 valueForKey:@"MobileAssetNewPath"];
    if (v6)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v8 = [defaultManager fileExistsAtPath:v6];

      mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460] oslog];

      v11 = os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT);
      if (v8)
      {
        if (v11)
        {
          *buf = 0;
          _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SU Documentation Preview] Overriding documentation assets with custom path", buf, 2u);
        }

        v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
        [(SUCoreDocumentation *)self setLocalBundleURL:v12];

        mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
        oslog = [mEMORY[0x277D64460]2 oslog];

        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          localBundleURL = [(SUCoreDocumentation *)self localBundleURL];
          *buf = 138412290;
          selfCopy = localBundleURL;
          _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[SU Documentation Preview] New Local Bundle: %@", buf, 0xCu);
        }

        goto LABEL_13;
      }

      if (v11)
      {
        *buf = 138412290;
        selfCopy = v6;
        v16 = "[SU Documentation Preview] Invalid Update path: %@";
        v17 = oslog;
        v18 = 12;
        goto LABEL_12;
      }
    }

    else
    {
      mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460]3 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v16 = "[SU Documentation Preview] Unable to find alternate local bundle URL";
        v17 = oslog;
        v18 = 2;
LABEL_12:
        _os_log_impl(&dword_23193C000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
      }
    }

LABEL_13:
  }

  localBundleURL2 = [(SUCoreDocumentation *)self localBundleURL];

  if (localBundleURL2)
  {
    localBundleURL3 = [(SUCoreDocumentation *)self localBundleURL];
    v21 = [localBundleURL3 URLByAppendingPathComponent:@"SafariWhatsNew"];
    [(SUCoreDocumentation *)self setSafariUpdateContentBundleURL:v21];

    safariUpdateContentBundleURL = [(SUCoreDocumentation *)self safariUpdateContentBundleURL];

    if (!safariUpdateContentBundleURL)
    {
      mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
      oslog2 = [mEMORY[0x277D64460]4 oslog];

      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        safariUpdateContentBundleURL2 = [(SUCoreDocumentation *)self safariUpdateContentBundleURL];
        *buf = 138543362;
        selfCopy = safariUpdateContentBundleURL2;
        _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load safariUpdateContentBundleURL: %{public}@", buf, 0xCu);
      }
    }

    v26 = *MEMORY[0x277CBECE8];
    localBundleURL4 = [(SUCoreDocumentation *)self localBundleURL];
    v28 = CFBundleCreate(v26, localBundleURL4);

    if (v28)
    {
      mEMORY[0x277D64428] = CFBundleCopyLocalizedString(v28, @"HumanReadableUpdateName", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v31 = [(SUCoreDocumentation *)mEMORY[0x277D64428] isEqualToString:@"HumanReadableUpdateName"], v30 = mEMORY[0x277D64428], v31))
      {
        mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
        oslog3 = [mEMORY[0x277D64460]5 oslog];

        if (os_log_type_enabled(oslog3, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy = mEMORY[0x277D64428];
          _os_log_impl(&dword_23193C000, oslog3, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load humanReadableUpdateName: %{public}@", buf, 0xCu);
        }

        v30 = 0;
      }

      [(SUCoreDocumentation *)self setHumanReadableUpdateName:v30];
      v34 = CFBundleCopyLocalizedString(v28, @"HumanReadableUpdateTitle", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v36 = [(__CFString *)v34 isEqualToString:@"HumanReadableUpdateTitle"], v35 = v34, v36))
      {
        mEMORY[0x277D64460]6 = [MEMORY[0x277D64460] sharedLogger];
        oslog4 = [mEMORY[0x277D64460]6 oslog];

        if (os_log_type_enabled(oslog4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy = v34;
          _os_log_impl(&dword_23193C000, oslog4, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load humanReadableUpdateTitle: %{public}@", buf, 0xCu);
        }

        v35 = 0;
      }

      [(SUCoreDocumentation *)self setHumanReadableUpdateTitle:v35];
      v39 = CFBundleCopyLocalizedString(v28, @"HumanReadableUpdateVersion", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v41 = [(__CFString *)v39 isEqualToString:@"HumanReadableUpdateVersion"], v40 = v39, v41))
      {
        mEMORY[0x277D64460]7 = [MEMORY[0x277D64460] sharedLogger];
        oslog5 = [mEMORY[0x277D64460]7 oslog];

        if (os_log_type_enabled(oslog5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy = v39;
          _os_log_impl(&dword_23193C000, oslog5, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load humanReadableUpdateVersion: %{public}@", buf, 0xCu);
        }

        v40 = 0;
      }

      [(SUCoreDocumentation *)self setHumanReadableUpdateVersion:v40];
      v44 = CFBundleCopyLocalizedString(v28, @"HumanReadableMoreInfoLink", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v46 = [(__CFString *)v44 isEqualToString:@"HumanReadableMoreInfoLink"], v45 = v44, v46))
      {
        mEMORY[0x277D64460]8 = [MEMORY[0x277D64460] sharedLogger];
        oslog6 = [mEMORY[0x277D64460]8 oslog];

        if (os_log_type_enabled(oslog6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy = v44;
          _os_log_impl(&dword_23193C000, oslog6, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load humanReadableMoreInfoLink: %{public}@", buf, 0xCu);
        }

        v45 = 0;
      }

      [(SUCoreDocumentation *)self setHumanReadableMoreInfoLink:v45];
      v49 = CFBundleCopyLocalizedString(v28, @"NotificationTitleString", 0, @"documentation");
      objc_opt_class();
      v115 = v49;
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v51 = [(__CFString *)v49 isEqualToString:@"NotificationTitleString"], v50 = v49, v51))
      {
        mEMORY[0x277D64460]9 = [MEMORY[0x277D64460] sharedLogger];
        oslog7 = [mEMORY[0x277D64460]9 oslog];

        if (os_log_type_enabled(oslog7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy = v115;
          _os_log_impl(&dword_23193C000, oslog7, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load notificationTitleString: %{public}@", buf, 0xCu);
        }

        v50 = 0;
      }

      [(SUCoreDocumentation *)self setNotificationTitleString:v50];
      v54 = CFBundleCopyLocalizedString(v28, @"NotificationBodyString", 0, @"documentation");
      objc_opt_class();
      v114 = v54;
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v56 = [(__CFString *)v54 isEqualToString:@"NotificationBodyString"], v55 = v54, v56))
      {
        mEMORY[0x277D64460]10 = [MEMORY[0x277D64460] sharedLogger];
        oslog8 = [mEMORY[0x277D64460]10 oslog];

        if (os_log_type_enabled(oslog8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy = v114;
          _os_log_impl(&dword_23193C000, oslog8, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load notificationBodyString: %{public}@", buf, 0xCu);
        }

        v55 = 0;
      }

      v112 = v39;
      [(SUCoreDocumentation *)self setNotificationBodyString:v55];
      v59 = CFBundleCopyLocalizedString(v28, @"RecommendedUpdateTitleString", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v61 = [(__CFString *)v59 isEqualToString:@"RecommendedUpdateTitleString"], v60 = v59, v61))
      {
        mEMORY[0x277D64460]11 = [MEMORY[0x277D64460] sharedLogger];
        oslog9 = [mEMORY[0x277D64460]11 oslog];

        if (os_log_type_enabled(oslog9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy = v59;
          _os_log_impl(&dword_23193C000, oslog9, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load recommendedUpdateTitleString: %{public}@", buf, 0xCu);
        }

        v60 = 0;
      }

      v111 = v44;
      [(SUCoreDocumentation *)self setRecommendedUpdateTitleString:v60];
      v64 = CFBundleCopyLocalizedString(v28, @"RecommendedUpdateAlertBodyString", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v66 = [(__CFString *)v64 isEqualToString:@"RecommendedUpdateAlertBodyString"], v65 = v64, v66))
      {
        mEMORY[0x277D64460]12 = [MEMORY[0x277D64460] sharedLogger];
        oslog10 = [mEMORY[0x277D64460]12 oslog];

        if (os_log_type_enabled(oslog10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy = v64;
          _os_log_impl(&dword_23193C000, oslog10, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load recommendedUpdateAlertBodyString: %{public}@", buf, 0xCu);
        }

        v65 = 0;
      }

      v113 = v34;
      [(SUCoreDocumentation *)self setRecommendedUpdateAlertBodyString:v65];
      v69 = CFBundleCopyLocalizedString(v28, @"MandatoryUpdateBodyString", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v71 = [(__CFString *)v69 isEqualToString:@"MandatoryUpdateBodyString"], v70 = v69, v71))
      {
        mEMORY[0x277D64460]13 = [MEMORY[0x277D64460] sharedLogger];
        oslog11 = [mEMORY[0x277D64460]13 oslog];

        if (os_log_type_enabled(oslog11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy = v69;
          _os_log_impl(&dword_23193C000, oslog11, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load mandatoryUpdateBodyString: %{public}@", buf, 0xCu);
        }

        v70 = 0;
      }

      [(SUCoreDocumentation *)self setMandatoryUpdateBodyString:v70];
      v74 = CFBundleCopyLocalizedString(v28, @"SecurityAdvisoryNotificationTitleString", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v76 = [(__CFString *)v74 isEqualToString:@"SecurityAdvisoryNotificationTitleString"], v75 = v74, v76))
      {
        mEMORY[0x277D64460]14 = [MEMORY[0x277D64460] sharedLogger];
        oslog12 = [mEMORY[0x277D64460]14 oslog];

        if (os_log_type_enabled(oslog12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy = v74;
          _os_log_impl(&dword_23193C000, oslog12, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load securityAdvisoryNotificationTitleString: %{public}@", buf, 0xCu);
        }

        v75 = 0;
      }

      [(SUCoreDocumentation *)self setSecurityAdvisoryNotificationTitleString:v75];

      v79 = CFBundleCopyLocalizedString(v28, @"SecurityAdvisoryNotificationBodyString", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v81 = [(__CFString *)v79 isEqualToString:@"SecurityAdvisoryNotificationBodyString"], v80 = v79, v81))
      {
        mEMORY[0x277D64460]15 = [MEMORY[0x277D64460] sharedLogger];
        oslog13 = [mEMORY[0x277D64460]15 oslog];

        if (os_log_type_enabled(oslog13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy = v79;
          _os_log_impl(&dword_23193C000, oslog13, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load securityAdvisoryNotificationBodyString: %{public}@", buf, 0xCu);
        }

        v80 = 0;
      }

      [(SUCoreDocumentation *)self setSecurityAdvisoryNotificationBodyString:v80];

      v84 = CFBundleCopyLocalizedString(v28, @"DeviceCompatibilityNotificationTitleString", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v86 = [(__CFString *)v84 isEqualToString:@"DeviceCompatibilityNotificationTitleString"], v85 = v84, v86))
      {
        mEMORY[0x277D64460]16 = [MEMORY[0x277D64460] sharedLogger];
        oslog14 = [mEMORY[0x277D64460]16 oslog];

        if (os_log_type_enabled(oslog14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy = v84;
          _os_log_impl(&dword_23193C000, oslog14, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load deviceCompatibilityNotificationTitleString: %{public}@", buf, 0xCu);
        }

        v85 = 0;
      }

      [(SUCoreDocumentation *)self setDeviceCompatibilityNotificationTitleString:v85];

      v89 = CFBundleCopyLocalizedString(v28, @"DeviceCompatibilityNotificationBodyString", 0, @"documentation");
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v91 = [(__CFString *)v89 isEqualToString:@"DeviceCompatibilityNotificationBodyString"], v90 = v89, v91))
      {
        mEMORY[0x277D64460]17 = [MEMORY[0x277D64460] sharedLogger];
        oslog15 = [mEMORY[0x277D64460]17 oslog];

        if (os_log_type_enabled(oslog15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy = v89;
          _os_log_impl(&dword_23193C000, oslog15, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Unable to load deviceCompatibilityNotificationBodyString: %{public}@", buf, 0xCu);
        }

        v90 = 0;
      }

      [(SUCoreDocumentation *)self setDeviceCompatibilityNotificationBodyString:v90];

      releaseNotesSummaryFileName = [(SUCoreDocumentation *)self releaseNotesSummaryFileName];
      v95 = [(SUCoreDocumentation *)self _resourceFromBundle:v28 forKey:releaseNotesSummaryFileName];
      [(SUCoreDocumentation *)self setReleaseNotesSummary:v95];

      releaseNotesFileName = [(SUCoreDocumentation *)self releaseNotesFileName];
      v97 = [(SUCoreDocumentation *)self _resourceFromBundle:v28 forKey:releaseNotesFileName];
      [(SUCoreDocumentation *)self setReleaseNotes:v97];

      licenseAgreementFileName = [(SUCoreDocumentation *)self licenseAgreementFileName];
      v99 = [(SUCoreDocumentation *)self _resourceFromBundle:v28 forKey:licenseAgreementFileName];
      [(SUCoreDocumentation *)self setLicenseAgreement:v99];

      mEMORY[0x277D64460]18 = [MEMORY[0x277D64460] sharedLogger];
      oslog16 = [mEMORY[0x277D64460]18 oslog];

      if (os_log_type_enabled(oslog16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy = self;
        _os_log_impl(&dword_23193C000, oslog16, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Successfully extended documentation properties: %{public}@", buf, 0xCu);
      }

      CFRelease(v28);
      v102 = 0;
    }

    else
    {
      mEMORY[0x277D643F8] = [MEMORY[0x277D643F8] sharedCore];
      v105 = MEMORY[0x277CCACA8];
      localBundleURL5 = [(SUCoreDocumentation *)self localBundleURL];
      v106 = [v105 stringWithFormat:@"unable to load asset bundle for the local bundle URL of the documentation asset: %@", localBundleURL5];
      v102 = [mEMORY[0x277D643F8] buildError:8100 underlying:0 description:v106];

      mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
      localizedDescription = [v102 localizedDescription];
      [(SUCoreDocumentation *)mEMORY[0x277D64428] trackError:@"[DOCUMENTATION]" forReason:localizedDescription withResult:8100 withError:v102];
    }
  }

  else
  {
    mEMORY[0x277D643F8]2 = [MEMORY[0x277D643F8] sharedCore];
    v102 = [mEMORY[0x277D643F8]2 buildError:8101 underlying:0 description:@"unable to find local bundle URL for documentation asset"];

    mEMORY[0x277D64428] = [MEMORY[0x277D64428] sharedDiag];
    [(SUCoreDocumentation *)mEMORY[0x277D64428] trackError:@"[DOCUMENTATION]" forReason:@"unable to find local bundle URL for documentation asset" withResult:8101 withError:v102];
  }

  v109 = *MEMORY[0x277D85DE8];

  return v102;
}

- (id)_resourceFromBundle:(__CFBundle *)bundle forKey:(id)key
{
  v4 = CFBundleCopyResourceURL(bundle, key, @"html", 0);
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
    mEMORY[0x277D64418] = [MEMORY[0x277D64418] sharedDevice];
    productVersion = [mEMORY[0x277D64418] productVersion];

    recommendedUpdateMinOSVersion = [(SUCoreDocumentation *)self recommendedUpdateMinOSVersion];
    if (recommendedUpdateMinOSVersion && (v6 = recommendedUpdateMinOSVersion, [(SUCoreDocumentation *)self recommendedUpdateMaxOSVersion], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7) && productVersion)
    {
      recommendedUpdateMinOSVersion2 = [(SUCoreDocumentation *)self recommendedUpdateMinOSVersion];
      v9 = [recommendedUpdateMinOSVersion2 compare:productVersion options:64];

      recommendedUpdateMaxOSVersion = [(SUCoreDocumentation *)self recommendedUpdateMaxOSVersion];
      v11 = [productVersion compare:recommendedUpdateMaxOSVersion options:64];

      v13 = v9 != 1 && v11 != 1;
      mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460] oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        recommendedUpdateMinOSVersion3 = [(SUCoreDocumentation *)self recommendedUpdateMinOSVersion];
        recommendedUpdateMaxOSVersion2 = [(SUCoreDocumentation *)self recommendedUpdateMaxOSVersion];
        v18 = recommendedUpdateMaxOSVersion2;
        v19 = @"NO";
        v24 = 138544130;
        v25 = recommendedUpdateMinOSVersion3;
        if (v13)
        {
          v19 = @"YES";
        }

        v26 = 2114;
        v27 = productVersion;
        v28 = 2114;
        v29 = recommendedUpdateMaxOSVersion2;
        v30 = 2114;
        v31 = v19;
        _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] recommendedUpdateMinOSVersion=%{public}@ <= currentOSVersion=%{public}@ <= recommendedUpdateMaxOSVersion=%{public}@ | isRecommendedUpdateApplicable=%{public}@", &v24, 0x2Au);
      }
    }

    else
    {
      mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
      oslog = [mEMORY[0x277D64460]2 oslog];

      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        [(SUCoreDocumentation *)self isRecommendedUpdateApplicable];
      }

      LOBYTE(v13) = 0;
    }
  }

  else
  {
    mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
    productVersion = [mEMORY[0x277D64460]3 oslog];

    if (os_log_type_enabled(productVersion, OS_LOG_TYPE_ERROR))
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
  localBundleURL = [(SUCoreDocumentation *)self localBundleURL];

  if (!localBundleURL)
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDocumentation softwareUpdateIconImagePath];
    }

    goto LABEL_9;
  }

  preferencesIconFileName = [(SUCoreDocumentation *)self preferencesIconFileName];

  if (!preferencesIconFileName)
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDocumentation softwareUpdateIconImagePath];
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  localBundleURL2 = [(SUCoreDocumentation *)self localBundleURL];
  path = [localBundleURL2 path];
  preferencesIconFileName2 = [(SUCoreDocumentation *)self preferencesIconFileName];
  v8 = [path stringByAppendingPathComponent:preferencesIconFileName2];

  mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460]3 oslog];

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = v8;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Using icon path: %{public}@", &v15, 0xCu);
  }

LABEL_10:

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)encodedUIBundlePath
{
  v26 = *MEMORY[0x277D85DE8];
  localBundleURL = [(SUCoreDocumentation *)self localBundleURL];

  if (!localBundleURL)
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDocumentation encodedUIBundlePath];
    }

    goto LABEL_19;
  }

  encodedUIBundleFileName = [(SUCoreDocumentation *)self encodedUIBundleFileName];

  mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460]2 oslog];

  if (!encodedUIBundleFileName)
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDocumentation encodedUIBundlePath];
    }

    goto LABEL_19;
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    localBundleURL2 = [(SUCoreDocumentation *)self localBundleURL];
    encodedUIBundleFileName2 = [(SUCoreDocumentation *)self encodedUIBundleFileName];
    v22 = 138543618;
    v23 = localBundleURL2;
    v24 = 2114;
    v25 = encodedUIBundleFileName2;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Loading bundle with localBundleURL:%{public}@ encodedUIBundleFileName:%{public}@", &v22, 0x16u);
  }

  v9 = *MEMORY[0x277CBECE8];
  localBundleURL3 = [(SUCoreDocumentation *)self localBundleURL];
  v11 = CFBundleCreate(v9, localBundleURL3);

  if (!v11)
  {
    mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460]3 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [(SUCoreDocumentation *)self encodedUIBundlePath];
    }

    goto LABEL_19;
  }

  encodedUIBundleFileName3 = [(SUCoreDocumentation *)self encodedUIBundleFileName];
  oslog = CFBundleCopyResourceURL(v11, encodedUIBundleFileName3, @"suda", 0);

  CFRelease(v11);
  mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
  oslog2 = [mEMORY[0x277D64460]4 oslog];

  v15 = os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT);
  if (!oslog)
  {
    if (v15)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] No encoded UI bundle path was found within the update bundle.", &v22, 2u);
    }

LABEL_19:
    path2 = 0;
    goto LABEL_20;
  }

  if (v15)
  {
    path = [oslog path];
    v22 = 138543362;
    v23 = path;
    _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Using encoded UI bundle path: %{public}@", &v22, 0xCu);
  }

  path2 = [oslog path];
LABEL_20:

  v20 = *MEMORY[0x277D85DE8];

  return path2;
}

- (id)softwareUpdateIconImage
{
  v26 = *MEMORY[0x277D85DE8];
  getUIImageClass();
  if (!objc_opt_class())
  {
    mEMORY[0x277D64460] = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460] oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDocumentation softwareUpdateIconImage];
    }

    goto LABEL_16;
  }

  localBundleURL = [(SUCoreDocumentation *)self localBundleURL];

  if (!localBundleURL)
  {
    mEMORY[0x277D64460]2 = [MEMORY[0x277D64460] sharedLogger];
    oslog = [mEMORY[0x277D64460]2 oslog];

    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDocumentation softwareUpdateIconImage];
    }

    goto LABEL_16;
  }

  preferencesIconFileName = [(SUCoreDocumentation *)self preferencesIconFileName];

  mEMORY[0x277D64460]3 = [MEMORY[0x277D64460] sharedLogger];
  oslog = [mEMORY[0x277D64460]3 oslog];

  if (!preferencesIconFileName)
  {
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      [SUCoreDocumentation softwareUpdateIconImage];
    }

LABEL_16:
    v13 = 0;
    goto LABEL_23;
  }

  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    localBundleURL2 = [(SUCoreDocumentation *)self localBundleURL];
    preferencesIconFileName2 = [(SUCoreDocumentation *)self preferencesIconFileName];
    v22 = 138543618;
    v23 = localBundleURL2;
    v24 = 2114;
    v25 = preferencesIconFileName2;
    _os_log_impl(&dword_23193C000, oslog, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Loading bundle with localBundleURL:%{public}@ preferencesIconFileName:%{public}@", &v22, 0x16u);
  }

  v9 = MEMORY[0x277CCA8D8];
  localBundleURL3 = [(SUCoreDocumentation *)self localBundleURL];
  oslog = [v9 bundleWithURL:localBundleURL3];

  if (oslog)
  {
    UIImageClass = getUIImageClass();
    preferencesIconFileName3 = [(SUCoreDocumentation *)self preferencesIconFileName];
    v13 = [UIImageClass imageNamed:preferencesIconFileName3 inBundle:oslog withConfiguration:0];

    mEMORY[0x277D64460]4 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]4 oslog];

    if (v13)
    {
      if (os_log_type_enabled(oslog2, OS_LOG_TYPE_DEFAULT))
      {
        preferencesIconFileName4 = [(SUCoreDocumentation *)self preferencesIconFileName];
        v22 = 138543362;
        v23 = preferencesIconFileName4;
        _os_log_impl(&dword_23193C000, oslog2, OS_LOG_TYPE_DEFAULT, "[DOCUMENTATION] Successfully loaded update icon bundle with name: %{public}@", &v22, 0xCu);
      }
    }

    else if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
    {
      [(SUCoreDocumentation *)self softwareUpdateIconImage];
    }
  }

  else
  {
    mEMORY[0x277D64460]5 = [MEMORY[0x277D64460] sharedLogger];
    oslog2 = [mEMORY[0x277D64460]5 oslog];

    if (os_log_type_enabled(oslog2, OS_LOG_TYPE_ERROR))
    {
      [(SUCoreDocumentation *)self softwareUpdateIconImage];
    }

    v13 = 0;
  }

LABEL_23:
  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

- (SUCoreDocumentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v72.receiver = self;
  v72.super_class = SUCoreDocumentation;
  v5 = [(SUCoreDocumentation *)&v72 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReleaseNotesSummary"];
    releaseNotesSummary = v5->_releaseNotesSummary;
    v5->_releaseNotesSummary = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReleaseNotes"];
    releaseNotes = v5->_releaseNotes;
    v5->_releaseNotes = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LicenseAgreement"];
    licenseAgreement = v5->_licenseAgreement;
    v5->_licenseAgreement = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HumanReadableUpdateName"];
    humanReadableUpdateName = v5->_humanReadableUpdateName;
    v5->_humanReadableUpdateName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HumanReadableUpdateTitle"];
    humanReadableUpdateTitle = v5->_humanReadableUpdateTitle;
    v5->_humanReadableUpdateTitle = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HumanReadableUpdateVersion"];
    humanReadableUpdateVersion = v5->_humanReadableUpdateVersion;
    v5->_humanReadableUpdateVersion = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HumanReadableMoreInfoLink"];
    humanReadableMoreInfoLink = v5->_humanReadableMoreInfoLink;
    v5->_humanReadableMoreInfoLink = v18;

    v5->_notificationEnabled = [coderCopy decodeBoolForKey:@"NotificationEnabled"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NotificationTitleString"];
    notificationTitleString = v5->_notificationTitleString;
    v5->_notificationTitleString = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"NotificationBodyString"];
    notificationBodyString = v5->_notificationBodyString;
    v5->_notificationBodyString = v22;

    v5->_recommendedUpdateEnabled = [coderCopy decodeBoolForKey:@"RecommendedUpdateEnabled"];
    v5->_recommendedUpdateApplicable = [coderCopy decodeBoolForKey:@"RecommendedUpdateApplicable"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RecommendedUpdateNotificationFrequencyDays"];
    recommendedUpdateNotificationFrequencyDays = v5->_recommendedUpdateNotificationFrequencyDays;
    v5->_recommendedUpdateNotificationFrequencyDays = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RecommendedUpdateMinOSVersion"];
    recommendedUpdateMinOSVersion = v5->_recommendedUpdateMinOSVersion;
    v5->_recommendedUpdateMinOSVersion = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RecommendedUpdateMaxOSVersion"];
    recommendedUpdateMaxOSVersion = v5->_recommendedUpdateMaxOSVersion;
    v5->_recommendedUpdateMaxOSVersion = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RecommendedUpdateTitleString"];
    recommendedUpdateTitleString = v5->_recommendedUpdateTitleString;
    v5->_recommendedUpdateTitleString = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"RecommendedUpdateAlertBodyString"];
    recommendedUpdateAlertBodyString = v5->_recommendedUpdateAlertBodyString;
    v5->_recommendedUpdateAlertBodyString = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MandatoryUpdateBodyString"];
    mandatoryUpdateBodyString = v5->_mandatoryUpdateBodyString;
    v5->_mandatoryUpdateBodyString = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SecurityAdvisoryNotificationTitleString"];
    securityAdvisoryNotificationTitleString = v5->_securityAdvisoryNotificationTitleString;
    v5->_securityAdvisoryNotificationTitleString = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SecurityAdvisoryNotificationBodyString"];
    securityAdvisoryNotificationBodyString = v5->_securityAdvisoryNotificationBodyString;
    v5->_securityAdvisoryNotificationBodyString = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceCompatibilityNotificationTitleString"];
    deviceCompatibilityNotificationTitleString = v5->_deviceCompatibilityNotificationTitleString;
    v5->_deviceCompatibilityNotificationTitleString = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DeviceCompatibilityNotificationBodyString"];
    deviceCompatibilityNotificationBodyString = v5->_deviceCompatibilityNotificationBodyString;
    v5->_deviceCompatibilityNotificationBodyString = v42;

    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ProductVersion"];
    productVersion = v5->_productVersion;
    v5->_productVersion = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SLAVersion"];
    slaVersion = v5->_slaVersion;
    v5->_slaVersion = v46;

    v48 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LocalBundleURL"];
    localBundleURL = v5->_localBundleURL;
    v5->_localBundleURL = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SafariUpdateContentBundleURL"];
    safariUpdateContentBundleURL = v5->_safariUpdateContentBundleURL;
    v5->_safariUpdateContentBundleURL = v50;

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ServerAssetURL"];
    serverAssetURL = v5->_serverAssetURL;
    v5->_serverAssetURL = v52;

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ServerAssetMeasurement"];
    serverAssetMeasurement = v5->_serverAssetMeasurement;
    v5->_serverAssetMeasurement = v54;

    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ServerAssetAlgorithm"];
    serverAssetAlgorithm = v5->_serverAssetAlgorithm;
    v5->_serverAssetAlgorithm = v56;

    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ServerAssetChuckSize"];
    v5->_serverAssetChunkSize = [v58 longLongValue];

    v59 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReleaseNotesSummaryFileName"];
    releaseNotesSummaryFileName = v5->_releaseNotesSummaryFileName;
    v5->_releaseNotesSummaryFileName = v59;

    v61 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ReleaseNotesFileName"];
    releaseNotesFileName = v5->_releaseNotesFileName;
    v5->_releaseNotesFileName = v61;

    v63 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"LicenseAgreementFileName"];
    licenseAgreementFileName = v5->_licenseAgreementFileName;
    v5->_licenseAgreementFileName = v63;

    v65 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PreferencesIconFileName"];
    preferencesIconFileName = v5->_preferencesIconFileName;
    v5->_preferencesIconFileName = v65;

    v67 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EncodedUIBundleFileName"];
    encodedUIBundleFileName = v5->_encodedUIBundleFileName;
    v5->_encodedUIBundleFileName = v67;

    v69 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Language"];
    language = v5->_language;
    v5->_language = v69;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  releaseNotesSummary = [(SUCoreDocumentation *)self releaseNotesSummary];
  [coderCopy encodeObject:releaseNotesSummary forKey:@"ReleaseNotesSummary"];

  releaseNotes = [(SUCoreDocumentation *)self releaseNotes];
  [coderCopy encodeObject:releaseNotes forKey:@"ReleaseNotes"];

  licenseAgreement = [(SUCoreDocumentation *)self licenseAgreement];
  [coderCopy encodeObject:licenseAgreement forKey:@"LicenseAgreement"];

  humanReadableUpdateName = [(SUCoreDocumentation *)self humanReadableUpdateName];
  [coderCopy encodeObject:humanReadableUpdateName forKey:@"HumanReadableUpdateName"];

  humanReadableUpdateTitle = [(SUCoreDocumentation *)self humanReadableUpdateTitle];
  [coderCopy encodeObject:humanReadableUpdateTitle forKey:@"HumanReadableUpdateTitle"];

  humanReadableUpdateVersion = [(SUCoreDocumentation *)self humanReadableUpdateVersion];
  [coderCopy encodeObject:humanReadableUpdateVersion forKey:@"HumanReadableUpdateVersion"];

  humanReadableMoreInfoLink = [(SUCoreDocumentation *)self humanReadableMoreInfoLink];
  [coderCopy encodeObject:humanReadableMoreInfoLink forKey:@"HumanReadableMoreInfoLink"];

  [coderCopy encodeBool:-[SUCoreDocumentation notificationEnabled](self forKey:{"notificationEnabled"), @"NotificationEnabled"}];
  notificationTitleString = [(SUCoreDocumentation *)self notificationTitleString];
  [coderCopy encodeObject:notificationTitleString forKey:@"NotificationTitleString"];

  notificationBodyString = [(SUCoreDocumentation *)self notificationBodyString];
  [coderCopy encodeObject:notificationBodyString forKey:@"NotificationBodyString"];

  [coderCopy encodeBool:-[SUCoreDocumentation recommendedUpdateEnabled](self forKey:{"recommendedUpdateEnabled"), @"RecommendedUpdateEnabled"}];
  [coderCopy encodeBool:-[SUCoreDocumentation recommendedUpdateApplicable](self forKey:{"recommendedUpdateApplicable"), @"RecommendedUpdateApplicable"}];
  recommendedUpdateNotificationFrequencyDays = [(SUCoreDocumentation *)self recommendedUpdateNotificationFrequencyDays];
  [coderCopy encodeObject:recommendedUpdateNotificationFrequencyDays forKey:@"RecommendedUpdateNotificationFrequencyDays"];

  recommendedUpdateMinOSVersion = [(SUCoreDocumentation *)self recommendedUpdateMinOSVersion];
  [coderCopy encodeObject:recommendedUpdateMinOSVersion forKey:@"RecommendedUpdateMinOSVersion"];

  recommendedUpdateMaxOSVersion = [(SUCoreDocumentation *)self recommendedUpdateMaxOSVersion];
  [coderCopy encodeObject:recommendedUpdateMaxOSVersion forKey:@"RecommendedUpdateMaxOSVersion"];

  recommendedUpdateTitleString = [(SUCoreDocumentation *)self recommendedUpdateTitleString];
  [coderCopy encodeObject:recommendedUpdateTitleString forKey:@"RecommendedUpdateTitleString"];

  recommendedUpdateAlertBodyString = [(SUCoreDocumentation *)self recommendedUpdateAlertBodyString];
  [coderCopy encodeObject:recommendedUpdateAlertBodyString forKey:@"RecommendedUpdateAlertBodyString"];

  mandatoryUpdateBodyString = [(SUCoreDocumentation *)self mandatoryUpdateBodyString];
  [coderCopy encodeObject:mandatoryUpdateBodyString forKey:@"MandatoryUpdateBodyString"];

  securityAdvisoryNotificationTitleString = [(SUCoreDocumentation *)self securityAdvisoryNotificationTitleString];
  [coderCopy encodeObject:securityAdvisoryNotificationTitleString forKey:@"SecurityAdvisoryNotificationTitleString"];

  securityAdvisoryNotificationBodyString = [(SUCoreDocumentation *)self securityAdvisoryNotificationBodyString];
  [coderCopy encodeObject:securityAdvisoryNotificationBodyString forKey:@"SecurityAdvisoryNotificationBodyString"];

  deviceCompatibilityNotificationTitleString = [(SUCoreDocumentation *)self deviceCompatibilityNotificationTitleString];
  [coderCopy encodeObject:deviceCompatibilityNotificationTitleString forKey:@"DeviceCompatibilityNotificationTitleString"];

  deviceCompatibilityNotificationBodyString = [(SUCoreDocumentation *)self deviceCompatibilityNotificationBodyString];
  [coderCopy encodeObject:deviceCompatibilityNotificationBodyString forKey:@"DeviceCompatibilityNotificationBodyString"];

  productVersion = [(SUCoreDocumentation *)self productVersion];
  [coderCopy encodeObject:productVersion forKey:@"ProductVersion"];

  slaVersion = [(SUCoreDocumentation *)self slaVersion];
  [coderCopy encodeObject:slaVersion forKey:@"SLAVersion"];

  localBundleURL = [(SUCoreDocumentation *)self localBundleURL];
  [coderCopy encodeObject:localBundleURL forKey:@"LocalBundleURL"];

  safariUpdateContentBundleURL = [(SUCoreDocumentation *)self safariUpdateContentBundleURL];
  [coderCopy encodeObject:safariUpdateContentBundleURL forKey:@"SafariUpdateContentBundleURL"];

  serverAssetURL = [(SUCoreDocumentation *)self serverAssetURL];
  [coderCopy encodeObject:serverAssetURL forKey:@"ServerAssetURL"];

  serverAssetMeasurement = [(SUCoreDocumentation *)self serverAssetMeasurement];
  [coderCopy encodeObject:serverAssetMeasurement forKey:@"ServerAssetMeasurement"];

  serverAssetAlgorithm = [(SUCoreDocumentation *)self serverAssetAlgorithm];
  [coderCopy encodeObject:serverAssetAlgorithm forKey:@"ServerAssetAlgorithm"];

  v31 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[SUCoreDocumentation serverAssetChunkSize](self, "serverAssetChunkSize")}];
  [coderCopy encodeObject:v31 forKey:@"ServerAssetChuckSize"];

  releaseNotesSummaryFileName = [(SUCoreDocumentation *)self releaseNotesSummaryFileName];
  [coderCopy encodeObject:releaseNotesSummaryFileName forKey:@"ReleaseNotesSummaryFileName"];

  releaseNotesFileName = [(SUCoreDocumentation *)self releaseNotesFileName];
  [coderCopy encodeObject:releaseNotesFileName forKey:@"ReleaseNotesFileName"];

  licenseAgreementFileName = [(SUCoreDocumentation *)self licenseAgreementFileName];
  [coderCopy encodeObject:licenseAgreementFileName forKey:@"LicenseAgreementFileName"];

  preferencesIconFileName = [(SUCoreDocumentation *)self preferencesIconFileName];
  [coderCopy encodeObject:preferencesIconFileName forKey:@"PreferencesIconFileName"];

  encodedUIBundleFileName = [(SUCoreDocumentation *)self encodedUIBundleFileName];
  [coderCopy encodeObject:encodedUIBundleFileName forKey:@"EncodedUIBundleFileName"];

  language = [(SUCoreDocumentation *)self language];
  [coderCopy encodeObject:language forKey:@"Language"];
}

- (id)description
{
  v23 = objc_alloc(MEMORY[0x277CCACA8]);
  releaseNotesSummary = [(SUCoreDocumentation *)self releaseNotesSummary];
  releaseNotes = [(SUCoreDocumentation *)self releaseNotes];
  licenseAgreement = [(SUCoreDocumentation *)self licenseAgreement];
  humanReadableUpdateName = [(SUCoreDocumentation *)self humanReadableUpdateName];
  humanReadableUpdateTitle = [(SUCoreDocumentation *)self humanReadableUpdateTitle];
  humanReadableUpdateVersion = [(SUCoreDocumentation *)self humanReadableUpdateVersion];
  humanReadableMoreInfoLink = [(SUCoreDocumentation *)self humanReadableMoreInfoLink];
  if ([(SUCoreDocumentation *)self notificationEnabled])
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  v22 = v3;
  notificationTitleString = [(SUCoreDocumentation *)self notificationTitleString];
  notificationBodyString = [(SUCoreDocumentation *)self notificationBodyString];
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
  recommendedUpdateNotificationFrequencyDays = [(SUCoreDocumentation *)self recommendedUpdateNotificationFrequencyDays];
  recommendedUpdateMinOSVersion = [(SUCoreDocumentation *)self recommendedUpdateMinOSVersion];
  recommendedUpdateMaxOSVersion = [(SUCoreDocumentation *)self recommendedUpdateMaxOSVersion];
  recommendedUpdateTitleString = [(SUCoreDocumentation *)self recommendedUpdateTitleString];
  recommendedUpdateAlertBodyString = [(SUCoreDocumentation *)self recommendedUpdateAlertBodyString];
  mandatoryUpdateBodyString = [(SUCoreDocumentation *)self mandatoryUpdateBodyString];
  securityAdvisoryNotificationTitleString = [(SUCoreDocumentation *)self securityAdvisoryNotificationTitleString];
  securityAdvisoryNotificationBodyString = [(SUCoreDocumentation *)self securityAdvisoryNotificationBodyString];
  deviceCompatibilityNotificationTitleString = [(SUCoreDocumentation *)self deviceCompatibilityNotificationTitleString];
  deviceCompatibilityNotificationBodyString = [(SUCoreDocumentation *)self deviceCompatibilityNotificationBodyString];
  productVersion = [(SUCoreDocumentation *)self productVersion];
  slaVersion = [(SUCoreDocumentation *)self slaVersion];
  localBundleURL = [(SUCoreDocumentation *)self localBundleURL];
  safariUpdateContentBundleURL = [(SUCoreDocumentation *)self safariUpdateContentBundleURL];
  serverAssetURL = [(SUCoreDocumentation *)self serverAssetURL];
  serverAssetMeasurement = [(SUCoreDocumentation *)self serverAssetMeasurement];
  serverAssetAlgorithm = [(SUCoreDocumentation *)self serverAssetAlgorithm];
  language = [(SUCoreDocumentation *)self language];
  releaseNotesSummaryFileName = [(SUCoreDocumentation *)self releaseNotesSummaryFileName];
  releaseNotesFileName = [(SUCoreDocumentation *)self releaseNotesFileName];
  licenseAgreementFileName = [(SUCoreDocumentation *)self licenseAgreementFileName];
  preferencesIconFileName = [(SUCoreDocumentation *)self preferencesIconFileName];
  encodedUIBundleFileName = [(SUCoreDocumentation *)self encodedUIBundleFileName];
  v24 = [v23 initWithFormat:@"\n[>>>\n                        releaseNotesSummary: %@\n                               releaseNotes: %@\n                           licenseAgreement: %@\n                    humanReadableUpdateName: %@\n                   humanReadableUpdateTitle: %@\n                 humanReadableUpdateVersion: %@\n                  humanReadableMoreInfoLink: %@\n                        notificationEnabled: %@\n                    notificationTitleString: %@\n                     notificationBodyString: %@\n                   recommendedUpdateEnabled: %@\n                recommendedUpdateApplicable: %@\n recommendedUpdateNotificationFrequencyDays: %@\n              recommendedUpdateMinOSVersion: %@\n              recommendedUpdateMaxOSVersion: %@\n               recommendedUpdateTitleString: %@\n           recommendedUpdateAlertBodyString: %@\n                  mandatoryUpdateBodyString: %@\n    securityAdvisoryNotificationTitleString: %@\n     securityAdvisoryNotificationBodyString: %@\n deviceCompatibilityNotificationTitleString: %@\n  deviceCompatibilityNotificationBodyString: %@\n                             productVersion: %@\n                                 slaVersion: %@\n                             localBundleURL: %@\n               safariUpdateContentBundleURL: %@\n                             serverAssetURL: %@\n                     serverAssetMeasurement: %@\n                       serverAssetAlgorithm: %@\n                                   language: %@\n                releaseNotesSummaryFileName: %@\n                       releaseNotesFileName: %@\n                   licenseAgreementFileName: %@\n                    preferencesIconFileName: %@\n                    encodedUIBundleFileName: %@\n<<<]", releaseNotesSummary, releaseNotes, licenseAgreement, humanReadableUpdateName, humanReadableUpdateTitle, humanReadableUpdateVersion, humanReadableMoreInfoLink, v22, notificationTitleString, notificationBodyString, v21, v20, recommendedUpdateNotificationFrequencyDays, recommendedUpdateMinOSVersion, recommendedUpdateMaxOSVersion, recommendedUpdateTitleString, recommendedUpdateAlertBodyString, mandatoryUpdateBodyString, securityAdvisoryNotificationTitleString, securityAdvisoryNotificationBodyString, deviceCompatibilityNotificationTitleString, deviceCompatibilityNotificationBodyString, productVersion, slaVersion, localBundleURL, safariUpdateContentBundleURL, serverAssetURL, serverAssetMeasurement, serverAssetAlgorithm, language, releaseNotesSummaryFileName, releaseNotesFileName, licenseAgreementFileName, preferencesIconFileName, encodedUIBundleFileName];

  return v24;
}

- (id)summary
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  localBundleURL = [(SUCoreDocumentation *)self localBundleURL];
  serverAssetURL = [(SUCoreDocumentation *)self serverAssetURL];
  v6 = [v3 initWithFormat:@"localBundleURL:%@, serverAssetURL:%@", localBundleURL, serverAssetURL];

  return v6;
}

- (void)isRecommendedUpdateApplicable
{
  v10 = *MEMORY[0x277D85DE8];
  recommendedUpdateMaxOSVersion = [self recommendedUpdateMaxOSVersion];
  recommendedUpdateMinOSVersion = [self recommendedUpdateMinOSVersion];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)encodedUIBundlePath
{
  v8 = *MEMORY[0x277D85DE8];
  localBundleURL = [self localBundleURL];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)softwareUpdateIconImage
{
  v8 = *MEMORY[0x277D85DE8];
  localBundleURL = [self localBundleURL];
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);

  v6 = *MEMORY[0x277D85DE8];
}

@end