@interface SASExpressSettingsCreator
+ (id)createExpressSettingsUsingDictionary:(id)a3;
@end

@implementation SASExpressSettingsCreator

+ (id)createExpressSettingsUsingDictionary:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 objectForKeyedSubscript:@"watchmigrationdata"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [v3 objectForKeyedSubscript:@"watchmigrationdata"];
    [v4 setWatchMigrationData:v7];
  }

  v8 = [v3 objectForKeyedSubscript:@"walletdata"];
  objc_opt_class();
  v9 = objc_opt_isKindOfClass();

  if (v9)
  {
    v10 = [v3 objectForKeyedSubscript:@"walletdata"];
    [v4 setWalletData:v10];
  }

  v11 = [v3 objectForKeyedSubscript:@"deviceanalytics"];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  if (v12)
  {
    v13 = [v3 objectForKeyedSubscript:@"deviceanalytics"];
    [v4 setDeviceAnalyticsOptIn:{objc_msgSend(v13, "BOOLValue")}];

    v14 = objc_opt_new();
    v15 = [v3 objectForKeyedSubscript:@"deviceanalyticsbundleversion"];
    objc_opt_class();
    v16 = objc_opt_isKindOfClass();

    if (v16)
    {
      v17 = [v3 objectForKeyedSubscript:@"deviceanalyticsbundleversion"];
      [v14 setContentVersion:{objc_msgSend(v17, "integerValue")}];
    }

    [v14 setIdentifier:@"com.apple.onboarding.analyticsdevice"];
    [v4 setDeviceAnalyticsPrivacyBundle:v14];
  }

  v18 = [v3 objectForKeyedSubscript:@"appanalytics"];
  objc_opt_class();
  v19 = objc_opt_isKindOfClass();

  if (v19)
  {
    v20 = [v3 objectForKeyedSubscript:@"appanalytics"];
    [v4 setAppAnalyticsOptIn:{objc_msgSend(v20, "BOOLValue")}];

    v21 = objc_opt_new();
    v22 = [v3 objectForKeyedSubscript:@"appanalyticsbundleversion"];
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();

    if (v23)
    {
      v24 = [v3 objectForKeyedSubscript:@"appanalyticsbundleversion"];
      [v21 setContentVersion:{objc_msgSend(v24, "integerValue")}];
    }

    [v21 setIdentifier:@"com.apple.onboarding.analyticsapp"];
    [v4 setAppAnalyticsPrivacyBundle:v21];
  }

  v25 = [v3 objectForKeyedSubscript:@"locationServices"];
  objc_opt_class();
  v26 = objc_opt_isKindOfClass();

  if (v26)
  {
    v27 = [v3 objectForKeyedSubscript:@"locationServices"];
    [v4 setLocationServicesOptIn:{objc_msgSend(v27, "BOOLValue")}];

    v28 = objc_opt_new();
    v29 = [v3 objectForKeyedSubscript:@"locationServicesbundleversion"];
    objc_opt_class();
    v30 = objc_opt_isKindOfClass();

    if (v30)
    {
      v31 = [v3 objectForKeyedSubscript:@"locationServicesbundleversion"];
      [v28 setContentVersion:{objc_msgSend(v31, "integerValue")}];
    }

    [v28 setIdentifier:@"com.apple.onboarding.locationservices"];
    [v4 setLocationServicesPrivacyBundle:v28];
  }

  v32 = [v3 objectForKeyedSubscript:@"findmy"];
  objc_opt_class();
  v33 = objc_opt_isKindOfClass();

  if (v33)
  {
    v34 = [v3 objectForKeyedSubscript:@"findmy"];
    [v4 setFindMyOptIn:{objc_msgSend(v34, "BOOLValue")}];

    v35 = objc_opt_new();
    v36 = [v3 objectForKeyedSubscript:@"findmybundleversion"];
    objc_opt_class();
    v37 = objc_opt_isKindOfClass();

    if (v37)
    {
      v38 = [v3 objectForKeyedSubscript:@"findmybundleversion"];
      [v35 setContentVersion:{objc_msgSend(v38, "integerValue")}];
    }

    [v35 setIdentifier:@"com.apple.onboarding.findmy"];
    [v4 setFindMyPrivacyBundle:v35];
  }

  v39 = [v3 objectForKeyedSubscript:@"siri"];
  objc_opt_class();
  v40 = objc_opt_isKindOfClass();

  if (v40)
  {
    v41 = [v3 objectForKeyedSubscript:@"siri"];
    [v4 setSiriOptIn:{objc_msgSend(v41, "BOOLValue")}];

    v42 = objc_opt_new();
    v43 = [v3 objectForKeyedSubscript:@"siribundleversion"];
    objc_opt_class();
    v44 = objc_opt_isKindOfClass();

    if (v44)
    {
      v45 = [v3 objectForKeyedSubscript:@"siribundleversion"];
      [v42 setContentVersion:{objc_msgSend(v45, "integerValue")}];
    }

    [v42 setIdentifier:@"com.apple.onboarding.siri"];
    [v4 setSiriPrivacyBundle:v42];
  }

  v46 = [v3 objectForKeyedSubscript:@"screentime"];
  objc_opt_class();
  v47 = objc_opt_isKindOfClass();

  if (v47)
  {
    v48 = [v3 objectForKeyedSubscript:@"screentime"];
    [v4 setScreenTimeEnabled:{objc_msgSend(v48, "BOOLValue")}];
  }

  v49 = [v3 objectForKeyedSubscript:@"autoupdate"];
  objc_opt_class();
  v50 = objc_opt_isKindOfClass();

  if (v50)
  {
    v51 = [v3 objectForKeyedSubscript:@"autoupdate"];
    [v4 setSoftwareUpdateAutoUpdateEnabled:{objc_msgSend(v51, "BOOLValue")}];
  }

  v52 = [v3 objectForKeyedSubscript:@"autodownload"];
  objc_opt_class();
  v53 = objc_opt_isKindOfClass();

  if (v53)
  {
    v54 = [v3 objectForKeyedSubscript:@"autodownload"];
    [v4 setSoftwareUpdateAutoDownloadEnabled:{objc_msgSend(v54, "BOOLValue")}];
  }

  v55 = [v3 objectForKeyedSubscript:@"siridatasharing"];
  objc_opt_class();
  v56 = objc_opt_isKindOfClass();

  if (v56)
  {
    v57 = [v3 objectForKeyedSubscript:@"siridatasharing"];
    [v4 setSiriDataSharingOptIn:{objc_msgSend(v57, "BOOLValue")}];
  }

  v58 = [v3 objectForKeyedSubscript:@"appearance"];
  objc_opt_class();
  v59 = objc_opt_isKindOfClass();

  if (v59)
  {
    v60 = [v3 objectForKeyedSubscript:@"appearance"];
    [v4 setAppearanceMode:{objc_msgSend(v60, "unsignedIntValue")}];
  }

  v61 = [v3 objectForKeyedSubscript:@"producttype"];
  objc_opt_class();
  v62 = objc_opt_isKindOfClass();

  if (v62)
  {
    v63 = [v3 objectForKeyedSubscript:@"producttype"];
    [v4 setProductType:v63];
  }

  v64 = [v3 objectForKeyedSubscript:@"deviceclass"];
  objc_opt_class();
  v65 = objc_opt_isKindOfClass();

  if (v65)
  {
    v66 = [v3 objectForKeyedSubscript:@"deviceclass"];
    [v4 setDeviceClass:v66];
  }

  v67 = [v3 objectForKeyedSubscript:@"displayzoom"];
  objc_opt_class();
  v68 = objc_opt_isKindOfClass();

  if (v68)
  {
    v69 = [v3 objectForKeyedSubscript:@"displayzoom"];
    [v4 setDisplayZoomOption:{objc_msgSend(v69, "unsignedIntValue")}];
  }

  v70 = [v3 objectForKeyedSubscript:@"unlockwithwatch"];
  objc_opt_class();
  v71 = objc_opt_isKindOfClass();

  if (v71)
  {
    v72 = [v3 objectForKeyedSubscript:@"unlockwithwatch"];
    [v4 setUnlockWithWatchEnabled:{objc_msgSend(v72, "BOOLValue")}];
  }

  v73 = [v3 objectForKeyedSubscript:@"filevault"];
  objc_opt_class();
  v74 = objc_opt_isKindOfClass();

  if (v74)
  {
    v75 = [v3 objectForKeyedSubscript:@"filevault"];
    [v4 setFileVaultEnabled:{objc_msgSend(v75, "BOOLValue")}];
  }

  v76 = [v3 objectForKeyedSubscript:@"sirivoicetrigger"];
  objc_opt_class();
  v77 = objc_opt_isKindOfClass();

  if (v77)
  {
    v78 = [v3 objectForKeyedSubscript:@"sirivoicetrigger"];
    [v4 setSiriVoiceTriggerEnabled:{objc_msgSend(v78, "BOOLValue")}];
  }

  v79 = [v3 objectForKeyedSubscript:@"productversion"];
  objc_opt_class();
  v80 = objc_opt_isKindOfClass();

  if (v80)
  {
    v81 = [v3 objectForKeyedSubscript:@"productversion"];
    [v4 setProductVersion:v81];
  }

  v82 = [v3 objectForKeyedSubscript:@"stolendeviceprotection"];
  objc_opt_class();
  v83 = objc_opt_isKindOfClass();

  if (v83)
  {
    v84 = [v3 objectForKeyedSubscript:@"stolendeviceprotection"];
    [v4 setStolenDeviceProtectionEnabled:{objc_msgSend(v84, "BOOLValue")}];
  }

  v85 = [v3 objectForKeyedSubscript:@"stolendeviceprotectionstrictmode"];
  objc_opt_class();
  v86 = objc_opt_isKindOfClass();

  if (v86)
  {
    v87 = [v3 objectForKeyedSubscript:@"stolendeviceprotectionstrictmode"];
    [v4 setStolenDeviceProtectionStrictModeEnabled:{objc_msgSend(v87, "BOOLValue")}];
  }

  v88 = [v3 objectForKeyedSubscript:@"ipadmultitaskingmode"];
  objc_opt_class();
  v89 = objc_opt_isKindOfClass();

  if (v89)
  {
    v90 = [v3 objectForKeyedSubscript:@"ipadmultitaskingmode"];
    [v4 setIPadMultitaskingMode:{objc_msgSend(v90, "unsignedIntValue")}];
  }

  return v4;
}

@end