@interface SASExpressSettingsCreator
+ (id)createExpressSettingsUsingDictionary:(id)dictionary;
@end

@implementation SASExpressSettingsCreator

+ (id)createExpressSettingsUsingDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_opt_new();
  v5 = [dictionaryCopy objectForKeyedSubscript:@"watchmigrationdata"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"watchmigrationdata"];
    [v4 setWatchMigrationData:v7];
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"walletdata"];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    v10 = [dictionaryCopy objectForKeyedSubscript:@"walletdata"];
    [v4 setWalletData:v10];
  }

  v11 = [dictionaryCopy objectForKeyedSubscript:@"deviceanalytics"];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    v13 = [dictionaryCopy objectForKeyedSubscript:@"deviceanalytics"];
    [v4 setDeviceAnalyticsOptIn:{objc_msgSend(v13, "BOOLValue")}];

    v14 = objc_opt_new();
    v15 = [dictionaryCopy objectForKeyedSubscript:@"deviceanalyticsbundleversion"];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if (v16)
    {
      v17 = [dictionaryCopy objectForKeyedSubscript:@"deviceanalyticsbundleversion"];
      [v14 setContentVersion:{objc_msgSend(v17, "integerValue")}];
    }

    [v14 setIdentifier:@"com.apple.onboarding.analyticsdevice"];
    [v4 setDeviceAnalyticsPrivacyBundle:v14];
  }

  v18 = [dictionaryCopy objectForKeyedSubscript:@"appanalytics"];
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if (v19)
  {
    v20 = [dictionaryCopy objectForKeyedSubscript:@"appanalytics"];
    [v4 setAppAnalyticsOptIn:{objc_msgSend(v20, "BOOLValue")}];

    v21 = objc_opt_new();
    v22 = [dictionaryCopy objectForKeyedSubscript:@"appanalyticsbundleversion"];
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();

    if (v23)
    {
      v24 = [dictionaryCopy objectForKeyedSubscript:@"appanalyticsbundleversion"];
      [v21 setContentVersion:{objc_msgSend(v24, "integerValue")}];
    }

    [v21 setIdentifier:@"com.apple.onboarding.analyticsapp"];
    [v4 setAppAnalyticsPrivacyBundle:v21];
  }

  v25 = [dictionaryCopy objectForKeyedSubscript:@"locationServices"];
  objc_opt_class();
  v26 = objc_opt_isKindOfClass();

  if (v26)
  {
    v27 = [dictionaryCopy objectForKeyedSubscript:@"locationServices"];
    [v4 setLocationServicesOptIn:{objc_msgSend(v27, "BOOLValue")}];

    v28 = objc_opt_new();
    v29 = [dictionaryCopy objectForKeyedSubscript:@"locationServicesbundleversion"];
    objc_opt_class();
    v30 = objc_opt_isKindOfClass();

    if (v30)
    {
      v31 = [dictionaryCopy objectForKeyedSubscript:@"locationServicesbundleversion"];
      [v28 setContentVersion:{objc_msgSend(v31, "integerValue")}];
    }

    [v28 setIdentifier:@"com.apple.onboarding.locationservices"];
    [v4 setLocationServicesPrivacyBundle:v28];
  }

  v32 = [dictionaryCopy objectForKeyedSubscript:@"findmy"];
  objc_opt_class();
  v33 = objc_opt_isKindOfClass();

  if (v33)
  {
    v34 = [dictionaryCopy objectForKeyedSubscript:@"findmy"];
    [v4 setFindMyOptIn:{objc_msgSend(v34, "BOOLValue")}];

    v35 = objc_opt_new();
    v36 = [dictionaryCopy objectForKeyedSubscript:@"findmybundleversion"];
    objc_opt_class();
    v37 = objc_opt_isKindOfClass();

    if (v37)
    {
      v38 = [dictionaryCopy objectForKeyedSubscript:@"findmybundleversion"];
      [v35 setContentVersion:{objc_msgSend(v38, "integerValue")}];
    }

    [v35 setIdentifier:@"com.apple.onboarding.findmy"];
    [v4 setFindMyPrivacyBundle:v35];
  }

  v39 = [dictionaryCopy objectForKeyedSubscript:@"siri"];
  objc_opt_class();
  v40 = objc_opt_isKindOfClass();

  if (v40)
  {
    v41 = [dictionaryCopy objectForKeyedSubscript:@"siri"];
    [v4 setSiriOptIn:{objc_msgSend(v41, "BOOLValue")}];

    v42 = objc_opt_new();
    v43 = [dictionaryCopy objectForKeyedSubscript:@"siribundleversion"];
    objc_opt_class();
    v44 = objc_opt_isKindOfClass();

    if (v44)
    {
      v45 = [dictionaryCopy objectForKeyedSubscript:@"siribundleversion"];
      [v42 setContentVersion:{objc_msgSend(v45, "integerValue")}];
    }

    [v42 setIdentifier:@"com.apple.onboarding.siri"];
    [v4 setSiriPrivacyBundle:v42];
  }

  v46 = [dictionaryCopy objectForKeyedSubscript:@"screentime"];
  objc_opt_class();
  v47 = objc_opt_isKindOfClass();

  if (v47)
  {
    v48 = [dictionaryCopy objectForKeyedSubscript:@"screentime"];
    [v4 setScreenTimeEnabled:{objc_msgSend(v48, "BOOLValue")}];
  }

  v49 = [dictionaryCopy objectForKeyedSubscript:@"autoupdate"];
  objc_opt_class();
  v50 = objc_opt_isKindOfClass();

  if (v50)
  {
    v51 = [dictionaryCopy objectForKeyedSubscript:@"autoupdate"];
    [v4 setSoftwareUpdateAutoUpdateEnabled:{objc_msgSend(v51, "BOOLValue")}];
  }

  v52 = [dictionaryCopy objectForKeyedSubscript:@"autodownload"];
  objc_opt_class();
  v53 = objc_opt_isKindOfClass();

  if (v53)
  {
    v54 = [dictionaryCopy objectForKeyedSubscript:@"autodownload"];
    [v4 setSoftwareUpdateAutoDownloadEnabled:{objc_msgSend(v54, "BOOLValue")}];
  }

  v55 = [dictionaryCopy objectForKeyedSubscript:@"siridatasharing"];
  objc_opt_class();
  v56 = objc_opt_isKindOfClass();

  if (v56)
  {
    v57 = [dictionaryCopy objectForKeyedSubscript:@"siridatasharing"];
    [v4 setSiriDataSharingOptIn:{objc_msgSend(v57, "BOOLValue")}];
  }

  v58 = [dictionaryCopy objectForKeyedSubscript:@"appearance"];
  objc_opt_class();
  v59 = objc_opt_isKindOfClass();

  if (v59)
  {
    v60 = [dictionaryCopy objectForKeyedSubscript:@"appearance"];
    [v4 setAppearanceMode:{objc_msgSend(v60, "unsignedIntValue")}];
  }

  v61 = [dictionaryCopy objectForKeyedSubscript:@"producttype"];
  objc_opt_class();
  v62 = objc_opt_isKindOfClass();

  if (v62)
  {
    v63 = [dictionaryCopy objectForKeyedSubscript:@"producttype"];
    [v4 setProductType:v63];
  }

  v64 = [dictionaryCopy objectForKeyedSubscript:@"deviceclass"];
  objc_opt_class();
  v65 = objc_opt_isKindOfClass();

  if (v65)
  {
    v66 = [dictionaryCopy objectForKeyedSubscript:@"deviceclass"];
    [v4 setDeviceClass:v66];
  }

  v67 = [dictionaryCopy objectForKeyedSubscript:@"displayzoom"];
  objc_opt_class();
  v68 = objc_opt_isKindOfClass();

  if (v68)
  {
    v69 = [dictionaryCopy objectForKeyedSubscript:@"displayzoom"];
    [v4 setDisplayZoomOption:{objc_msgSend(v69, "unsignedIntValue")}];
  }

  v70 = [dictionaryCopy objectForKeyedSubscript:@"unlockwithwatch"];
  objc_opt_class();
  v71 = objc_opt_isKindOfClass();

  if (v71)
  {
    v72 = [dictionaryCopy objectForKeyedSubscript:@"unlockwithwatch"];
    [v4 setUnlockWithWatchEnabled:{objc_msgSend(v72, "BOOLValue")}];
  }

  v73 = [dictionaryCopy objectForKeyedSubscript:@"filevault"];
  objc_opt_class();
  v74 = objc_opt_isKindOfClass();

  if (v74)
  {
    v75 = [dictionaryCopy objectForKeyedSubscript:@"filevault"];
    [v4 setFileVaultEnabled:{objc_msgSend(v75, "BOOLValue")}];
  }

  v76 = [dictionaryCopy objectForKeyedSubscript:@"sirivoicetrigger"];
  objc_opt_class();
  v77 = objc_opt_isKindOfClass();

  if (v77)
  {
    v78 = [dictionaryCopy objectForKeyedSubscript:@"sirivoicetrigger"];
    [v4 setSiriVoiceTriggerEnabled:{objc_msgSend(v78, "BOOLValue")}];
  }

  v79 = [dictionaryCopy objectForKeyedSubscript:@"productversion"];
  objc_opt_class();
  v80 = objc_opt_isKindOfClass();

  if (v80)
  {
    v81 = [dictionaryCopy objectForKeyedSubscript:@"productversion"];
    [v4 setProductVersion:v81];
  }

  v82 = [dictionaryCopy objectForKeyedSubscript:@"stolendeviceprotection"];
  objc_opt_class();
  v83 = objc_opt_isKindOfClass();

  if (v83)
  {
    v84 = [dictionaryCopy objectForKeyedSubscript:@"stolendeviceprotection"];
    [v4 setStolenDeviceProtectionEnabled:{objc_msgSend(v84, "BOOLValue")}];
  }

  v85 = [dictionaryCopy objectForKeyedSubscript:@"stolendeviceprotectionstrictmode"];
  objc_opt_class();
  v86 = objc_opt_isKindOfClass();

  if (v86)
  {
    v87 = [dictionaryCopy objectForKeyedSubscript:@"stolendeviceprotectionstrictmode"];
    [v4 setStolenDeviceProtectionStrictModeEnabled:{objc_msgSend(v87, "BOOLValue")}];
  }

  v88 = [dictionaryCopy objectForKeyedSubscript:@"ipadmultitaskingmode"];
  objc_opt_class();
  v89 = objc_opt_isKindOfClass();

  if (v89)
  {
    v90 = [dictionaryCopy objectForKeyedSubscript:@"ipadmultitaskingmode"];
    [v4 setIPadMultitaskingMode:{objc_msgSend(v90, "unsignedIntValue")}];
  }

  return v4;
}

@end