@interface PLBatteryUIResponseTypeUtilities
+ (BOOL)energyEntryHasNegligibleEnergyDrain:(id)drain filterArray:(id)array;
+ (id)getBundleIDToDisplayNameMapWithResponderService:(id)service;
+ (id)getBundleIDToReplacementBundleIDMap;
+ (id)getDeletedAppBundleIDsWithResponderService:(id)service;
+ (id)getDeletedAppClipBundleIDsWithResponderService:(id)service;
+ (id)getEnergyEntry:(id)entry forBundleID:(id)d;
+ (id)getInstalledPluginEntries;
+ (id)getNonAppBundleIDs;
+ (id)getPluginBundleIDToEntryMapWithResponderService:(id)service;
+ (id)getWebAppBundleIDsWithResponderService:(id)service;
+ (void)addEntryTypesToEnergyEntriesInBucket:(id)bucket withResponderService:(id)service;
+ (void)applyDynamicNameTransformation:(id)transformation withResponderService:(id)service;
+ (void)applyStaticNameTransformation:(id)transformation withResponderService:(id)service;
+ (void)collapseEnergyEntries:(id)entries;
+ (void)filterEnergyEntriesByAppTypeFromBucket:(id)bucket;
+ (void)filterEnergyEntriesWithRuntimes:(id)runtimes;
+ (void)reaccountBackupRestore:(id)restore;
+ (void)reaccountExchangeEntries:(id)entries withExchangeBundleIDs:(id)ds;
+ (void)replaceBundleIDsWithDisplayNamesForEnergyEntryInBucket:(id)bucket withResponderService:(id)service;
+ (void)transformDeletedApps:(id)apps withResponderService:(id)service;
+ (void)transformPlugins:(id)plugins withResponderService:(id)service;
@end

@implementation PLBatteryUIResponseTypeUtilities

+ (void)applyStaticNameTransformation:(id)transformation withResponderService:(id)service
{
  v77 = *MEMORY[0x277D85DE8];
  transformationCopy = transformation;
  serviceCopy = service;
  v7 = +[PLBatteryUIResponseTypeUtilities getBundleIDToReplacementBundleIDMap];
  v8 = [PLBatteryUIResponseTypeUtilities getBundleIDToDisplayNameMapWithResponderService:serviceCopy];
  v9 = v8;
  if (!v7)
  {
    v59 = PLLogCommon();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      +[PLBatteryUIResponseTypeUtilities applyStaticNameTransformation:withResponderService:];
    }

    goto LABEL_43;
  }

  if (!v8)
  {
    v59 = PLLogCommon();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      +[PLBatteryUIResponseTypeUtilities applyStaticNameTransformation:withResponderService:];
    }

LABEL_43:

    goto LABEL_44;
  }

  v61 = v8;
  v62 = serviceCopy;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v63 = transformationCopy;
  v10 = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v11 = [v10 countByEnumeratingWithState:&v66 objects:v76 count:16];
  if (!v11)
  {
    goto LABEL_38;
  }

  v12 = v11;
  v13 = *v67;
  v65 = *MEMORY[0x277D0AB98];
  v14 = 0x277CCA000uLL;
  v64 = v10;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v67 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v66 + 1) + 8 * i);
      v17 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      if ([v17 isEqualToString:@"com.apple.springboard.lockscreen.navigation"])
      {
        v18 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
        v19 = *(v14 + 2992);
        [v18 doubleValue];
        v21 = [v19 numberWithDouble:-v20];
        [v16 setObject:v21 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];

LABEL_10:
        goto LABEL_34;
      }

      if ([v17 isEqualToString:@"com.apple.PassbookUIService"])
      {
        [v16 setObject:&unk_28714B118 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
      }

      else if (_os_feature_enabled_impl())
      {
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v65, @"aod"];
        v23 = [v17 isEqualToString:v22];

        if (v23)
        {
          v24 = PLLogCommon();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v71 = *&v17;
            v72 = 2112;
            v73 = *&v16;
            _os_log_debug_impl(&dword_25EE51000, v24, OS_LOG_TYPE_DEBUG, "Battery UI Response Type Utilities: processing aod entry with bundleID=%@, energyEntry=%@", buf, 0x16u);
          }

          v25 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          [v16 setObject:v25 forKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];

          v26 = MEMORY[0x277CCABB0];
          v27 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
          [v27 doubleValue];
          v28 = [v26 numberWithDouble:?];
          [v16 setObject:v28 forKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeOriginalKey"];

          v29 = MEMORY[0x277CCABB0];
          v30 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
          [v30 doubleValue];
          v31 = [v29 numberWithDouble:?];
          [v16 setObject:v31 forKeyedSubscript:@"AlwaysOnEnergyBeforeClamp"];

          [v16 setObject:&unk_28714B118 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          v32 = PLLogCommon();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v55 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
            v56 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
            *buf = 138412802;
            v71 = *&v55;
            v72 = 2112;
            v73 = *&v56;
            v74 = 2112;
            v75 = v17;
            _os_log_debug_impl(&dword_25EE51000, v32, OS_LOG_TYPE_DEBUG, "Battery UI Response Type Utilities: Subtracting foregroundPluggedInTime=%@ from alwaysOnRuntime=%@ for bundleID=%@", buf, 0x20u);
          }

          v33 = MEMORY[0x277CCABB0];
          v34 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
          [v34 doubleValue];
          v36 = v35;
          v37 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
          [v37 doubleValue];
          v39 = v36 - v38;

          if (v39 >= 0.0)
          {
            v40 = v39;
          }

          else
          {
            v40 = 0.0;
          }

          v41 = [v33 numberWithDouble:v40];
          [v16 setObject:v41 forKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];

          v42 = PLLogCommon();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
          {
            v57 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
            v58 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeOriginalKey"];
            *buf = 138412546;
            v71 = *&v57;
            v72 = 2112;
            v73 = *&v58;
            _os_log_debug_impl(&dword_25EE51000, v42, OS_LOG_TYPE_DEBUG, "Battery UI Response Type Utilities: After subtracting plugged in time, alwaysOnRuntime=%@, alwaysOnRuntimeOriginal=%@", buf, 0x16u);
          }

          v43 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
          [v43 doubleValue];
          v45 = v44;

          v46 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
          [v46 doubleValue];
          v48 = v47 / 3600.0;

          v49 = PLLogCommon();
          v10 = v64;
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218496;
            v71 = v45;
            v72 = 2048;
            v73 = v48;
            v74 = 2048;
            v75 = 0x4075E00000000000;
            _os_log_debug_impl(&dword_25EE51000, v49, OS_LOG_TYPE_DEBUG, "Battery UI Response Type Utilities: AODEnergy=%f, AODUnpluggedTime=%f, kAODModeledPowerUpperBound=%f", buf, 0x20u);
          }

          if (v48 > 0.0)
          {
            v50 = v45 / v48;
            if (v45 / v48 > 350.0)
            {
              v51 = PLLogCommon();
              if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
              {
                +[PLBatteryUIResponseTypeUtilities applyStaticNameTransformation:withResponderService:];
              }

              v52 = [MEMORY[0x277CCABB0] numberWithDouble:v48 * 350.0];
              [v16 setObject:v52 forKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];

              v53 = PLLogCommon();
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
              {
                +[PLBatteryUIResponseTypeUtilities applyStaticNameTransformation:withResponderService:];
              }
            }
          }

          v18 = [v16 objectForKeyedSubscript:{@"PLBatteryUIAppEnergyValueKey", v50}];
          [v16 setObject:v18 forKeyedSubscript:@"AlwaysOnEnergy"];
          goto LABEL_10;
        }
      }

LABEL_34:
      v54 = [v7 objectForKeyedSubscript:v17];
      if (v54)
      {
        [v16 setObject:v54 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      }

      v14 = 0x277CCA000;
    }

    v12 = [v10 countByEnumeratingWithState:&v66 objects:v76 count:16];
  }

  while (v12);
LABEL_38:

  transformationCopy = v63;
  [PLBatteryUIResponseTypeUtilities collapseEnergyEntries:v63];
  v9 = v61;
  serviceCopy = v62;
LABEL_44:

  v60 = *MEMORY[0x277D85DE8];
}

+ (void)applyDynamicNameTransformation:(id)transformation withResponderService:(id)service
{
  serviceCopy = service;
  transformationCopy = transformation;
  v6 = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  [PLBatteryUIResponseTypeUtilities transformDeletedApps:v6 withResponderService:serviceCopy];

  v7 = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  [PLBatteryUIResponseTypeUtilities transformPlugins:v7 withResponderService:serviceCopy];

  v8 = [transformationCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  [PLBatteryUIResponseTypeUtilities reaccountBackupRestore:v8];

  [PLBatteryUIResponseTypeUtilities collapseEnergyEntries:transformationCopy];
}

+ (void)transformDeletedApps:(id)apps withResponderService:(id)service
{
  v34 = *MEMORY[0x277D85DE8];
  appsCopy = apps;
  serviceCopy = service;
  v7 = [PLBatteryUIResponseTypeUtilities getDeletedAppBundleIDsWithResponderService:serviceCopy];
  v8 = [PLBatteryUIResponseTypeUtilities getDeletedAppClipBundleIDsWithResponderService:serviceCopy];
  if ([v7 count] || objc_msgSend(v8, "count"))
  {
    v24 = serviceCopy;
    v26 = v8;
    if ([v8 count] && objc_msgSend(v7, "count"))
    {
      v9 = @"DeletedAppAndAppClip";
    }

    else if ([v7 count])
    {
      v9 = @"DeletedApp";
    }

    else
    {
      v10 = [v8 count];
      v9 = @"DeletedAppClip";
      if (!v10)
      {
        v9 = 0;
      }
    }

    v28 = v9;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v25 = appsCopy;
    obj = appsCopy;
    v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v30;
      v14 = @"Unspecified";
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v30 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v29 + 1) + 8 * i);
          v17 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          if ([v7 containsObject:v17])
          {
          }

          else
          {
            [v16 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            v19 = v18 = v14;
            v20 = [v26 containsObject:v19];

            v14 = v18;
            if (!v20)
            {
              goto LABEL_19;
            }
          }

          [v16 setObject:v28 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
LABEL_19:
          v21 = [v16 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v22 = [v21 containsString:v14];

          if (v22)
          {
            [v16 setObject:@"DeletedApp" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v12);
    }

    serviceCopy = v24;
    appsCopy = v25;
    v8 = v26;
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (void)transformPlugins:(id)plugins withResponderService:(id)service
{
  v90 = *MEMORY[0x277D85DE8];
  pluginsCopy = plugins;
  v6 = [PLBatteryUIResponseTypeUtilities getPluginBundleIDToEntryMapWithResponderService:service];
  v69 = +[PLBatteryUIResponseTypeUtilities getBundleIDToReplacementBundleIDMap];
  v72 = v6;
  if (v6)
  {
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    obj = pluginsCopy;
    v7 = [obj countByEnumeratingWithState:&v75 objects:v89 count:16];
    if (v7)
    {
      v8 = v7;
      v64 = pluginsCopy;
      v9 = *v76;
      v10 = 0x277D3F000uLL;
      v68 = *MEMORY[0x277D0AB98];
      while (1)
      {
        v11 = 0;
        do
        {
          if (*v76 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v75 + 1) + 8 * v11);
          if ([*(v10 + 384) debugEnabled])
          {
            v13 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __74__PLBatteryUIResponseTypeUtilities_transformPlugins_withResponderService___block_invoke;
            block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            block[4] = v13;
            if (transformPlugins_withResponderService__defaultOnce != -1)
            {
              dispatch_once(&transformPlugins_withResponderService__defaultOnce, block);
            }

            if (transformPlugins_withResponderService__classDebugEnabled == 1)
            {
              v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"energyEntry=%@", v12];
              v15 = MEMORY[0x277D3F178];
              v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeUtilities.m"];
              lastPathComponent = [v16 lastPathComponent];
              v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBatteryUIResponseTypeUtilities transformPlugins:withResponderService:]"];
              [v15 logMessage:v14 fromFile:lastPathComponent fromFunction:v18 fromLineNumber:184];

              v19 = PLLogCommon();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v80 = v14;
                _os_log_debug_impl(&dword_25EE51000, v19, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v10 = 0x277D3F000uLL;
            }
          }

          v20 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v21 = [v72 objectForKeyedSubscript:v20];

          if (v21)
          {
            if ([*(v10 + 384) debugEnabled])
            {
              v22 = objc_opt_class();
              v73[0] = MEMORY[0x277D85DD0];
              v73[1] = 3221225472;
              v73[2] = __74__PLBatteryUIResponseTypeUtilities_transformPlugins_withResponderService___block_invoke_74;
              v73[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v73[4] = v22;
              if (transformPlugins_withResponderService__defaultOnce_72 != -1)
              {
                dispatch_once(&transformPlugins_withResponderService__defaultOnce_72, v73);
              }

              if (transformPlugins_withResponderService__classDebugEnabled_73 == 1)
              {
                v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"this is a plugin"];
                v24 = MEMORY[0x277D3F178];
                v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeUtilities.m"];
                lastPathComponent2 = [v25 lastPathComponent];
                v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBatteryUIResponseTypeUtilities transformPlugins:withResponderService:]"];
                [v24 logMessage:v23 fromFile:lastPathComponent2 fromFunction:v27 fromLineNumber:189];

                v28 = PLLogCommon();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v80 = v23;
                  _os_log_debug_impl(&dword_25EE51000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v10 = 0x277D3F000;
              }
            }

            v29 = [v21 objectForKeyedSubscript:@"PluginId"];
            v30 = [v29 isEqualToString:@"com.apple.AppStore.ProductPageExtension"];

            if ((v30 & 1) == 0)
            {
              v31 = v8;
              v32 = v9;
              v33 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
              v34 = [v21 objectForKeyedSubscript:@"PluginParentApp"];
              if ([v33 isEqualToString:@"com.apple.sidecar.extension.capture"])
              {
                v35 = [PLBatteryUIResponseTypeUtilities getEnergyEntry:obj forBundleID:v34];
              }

              else
              {
                v35 = 0;
              }

              v71 = v34;
              [v12 setObject:v34 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
              v36 = [v21 objectForKeyedSubscript:@"PluginType"];
              v37 = [v36 isEqualToString:@"com.apple.watchkit"];

              if (v37)
              {
                v38 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                [v12 setObject:v38 forKeyedSubscript:@"WatchEnergy"];
                goto LABEL_31;
              }

              v39 = [v21 objectForKeyedSubscript:@"PluginType"];
              v40 = [v39 isEqualToString:@"com.apple.widgetkit-extension"];

              if (v40)
              {
                v41 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                [v12 setObject:v41 forKeyedSubscript:@"ChronoWidgetEnergy"];

                v38 = PLLogCommon();
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                {
                  v59 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                  v60 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                  [v60 doubleValue];
                  *buf = 138412546;
                  v80 = v59;
                  v81 = 2048;
                  v82 = v61;
                  _os_log_debug_impl(&dword_25EE51000, v38, OS_LOG_TYPE_DEBUG, "Battery UI Response Type Utilities: Widget Energy for %@ : %f", buf, 0x16u);
                }

LABEL_31:
                v9 = v32;
                v8 = v31;
                v42 = v71;
LABEL_32:
              }

              else
              {
                v48 = [v21 objectForKeyedSubscript:@"PluginType"];
                v49 = [v48 isEqualToString:@"com.apple.posterkit.provider"];

                v8 = v31;
                v42 = v71;
                if (v49)
                {
                  if (!v71)
                  {
                    v50 = [v69 objectForKeyedSubscript:v68];
                    [v12 setObject:v50 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                  }

                  v51 = [v33 isEqualToString:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];
                  v52 = PLLogCommon();
                  if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 67109120;
                    LODWORD(v80) = v51;
                    _os_log_debug_impl(&dword_25EE51000, v52, OS_LOG_TYPE_DEBUG, "Battery UI Response Type Utilities: isPhotosPoster=%d", buf, 8u);
                  }

                  if (v51)
                  {
                    [v12 setObject:@"com.apple.mobileslideshow" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                  }

                  v38 = PLLogCommon();
                  v42 = v71;
                  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
                  {
                    v65 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                    v67 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                    [v67 doubleValue];
                    v54 = v53;
                    v66 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
                    [v66 doubleValue];
                    v56 = v55;
                    v57 = [v12 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
                    [v57 doubleValue];
                    *buf = 138413314;
                    v80 = v33;
                    v81 = 2112;
                    v82 = v65;
                    v83 = 2048;
                    v84 = v54;
                    v85 = 2048;
                    v86 = v56;
                    v87 = 2048;
                    v88 = v58;
                    _os_log_debug_impl(&dword_25EE51000, v38, OS_LOG_TYPE_DEBUG, "Battery UI Response Type Utilities: Mapping Poster %@ to %@ – energy:%f, foregroundRunTime:%f, bgRunTime:%f", buf, 0x34u);

                    v42 = v71;
                  }

                  goto LABEL_32;
                }
              }

              if ([v33 isEqualToString:@"com.apple.sidecar.extension.capture"])
              {
                [v12 setObject:@"ContinuityCamera" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                v43 = PLLogCommon();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412546;
                  v80 = v35;
                  v81 = 2112;
                  v82 = v12;
                  _os_log_debug_impl(&dword_25EE51000, v43, OS_LOG_TYPE_DEBUG, "Battery UI Response Type Utilities: continuityParentAppEnergyEntry=%@, energyEntry=%@", buf, 0x16u);
                }

                if (v35)
                {
                  v44 = [v35 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
                  [v44 doubleValue];
                  v46 = v45;

                  if (v46 > 0.0)
                  {
                    [v35 setObject:@"ContinuityCamera" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
                    [v35 setObject:&unk_2871455C8 forKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
                  }
                }

                v47 = PLLogCommon();
                if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v80 = v12;
                  _os_log_debug_impl(&dword_25EE51000, v47, OS_LOG_TYPE_DEBUG, "Battery UI Response Type Utilities: After adjusting Continuity Camera extension energyEntry=%@", buf, 0xCu);
                }

                v42 = v71;
              }

              v10 = 0x277D3F000;
            }
          }

          ++v11;
        }

        while (v8 != v11);
        v62 = [obj countByEnumeratingWithState:&v75 objects:v89 count:16];
        v8 = v62;
        if (!v62)
        {
          pluginsCopy = v64;
          break;
        }
      }
    }
  }

  else
  {
    obj = PLLogCommon();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
    {
      +[PLBatteryUIResponseTypeUtilities transformPlugins:withResponderService:];
    }
  }

  v63 = *MEMORY[0x277D85DE8];
}

uint64_t __74__PLBatteryUIResponseTypeUtilities_transformPlugins_withResponderService___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  transformPlugins_withResponderService__classDebugEnabled = result;
  return result;
}

uint64_t __74__PLBatteryUIResponseTypeUtilities_transformPlugins_withResponderService___block_invoke_74(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  transformPlugins_withResponderService__classDebugEnabled_73 = result;
  return result;
}

+ (void)reaccountExchangeEntries:(id)entries withExchangeBundleIDs:(id)ds
{
  v64 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  dsCopy = ds;
  v7 = dsCopy;
  if (dsCopy)
  {
    v44 = dsCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v9 = entriesCopy;
    v10 = [v9 countByEnumeratingWithState:&v57 objects:v63 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v58;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v58 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v57 + 1) + 8 * i);
          v15 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

          if (v15)
          {
            v16 = [v14 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            [dictionary setObject:v14 forKeyedSubscript:v16];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v57 objects:v63 count:16];
      }

      while (v11);
    }

    v17 = [dictionary objectForKeyedSubscript:@"com.apple.activesync"];
    v18 = v17;
    if (v17)
    {
      v19 = [v17 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
      [v19 doubleValue];
      v21 = v20;

      if (v21 != 0.0)
      {
        v42 = v18;
        v55 = 0u;
        v56 = 0u;
        v54 = 0u;
        v53 = 0u;
        v22 = v44;
        v23 = [v22 countByEnumeratingWithState:&v53 objects:v62 count:16];
        v43 = entriesCopy;
        if (v23)
        {
          v24 = v23;
          v25 = *v54;
          v26 = 0.0;
          do
          {
            for (j = 0; j != v24; ++j)
            {
              if (*v54 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v28 = [dictionary objectForKeyedSubscript:*(*(&v53 + 1) + 8 * j), v42];
              v29 = v28;
              if (v28)
              {
                v30 = [v28 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
                [v30 doubleValue];
                v32 = v31;

                if (v32 >= 0.0)
                {
                  v33 = v32;
                }

                else
                {
                  v33 = 0.0;
                }

                v26 = v26 + v33;
              }
            }

            v24 = [v22 countByEnumeratingWithState:&v53 objects:v62 count:16];
          }

          while (v24);
        }

        else
        {
          v26 = 0.0;
        }

        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v34 = v22;
        v35 = [v34 countByEnumeratingWithState:&v49 objects:v61 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v50;
          do
          {
            for (k = 0; k != v36; ++k)
            {
              if (*v50 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = [dictionary objectForKeyedSubscript:*(*(&v49 + 1) + 8 * k), v42];
              v40 = v39;
              if (v39)
              {
                v45[0] = MEMORY[0x277D85DD0];
                v45[1] = 3221225472;
                v45[2] = __83__PLBatteryUIResponseTypeUtilities_reaccountExchangeEntries_withExchangeBundleIDs___block_invoke;
                v45[3] = &unk_279A5C0F0;
                v46 = v39;
                v47 = v21;
                v48 = v26;
                [v46 enumerateKeysAndObjectsUsingBlock:v45];
              }
            }

            v36 = [v34 countByEnumeratingWithState:&v49 objects:v61 count:16];
          }

          while (v36);
        }

        v18 = v42;
        [v9 removeObject:v42];
        entriesCopy = v43;
      }
    }

    v7 = v44;
  }

  else
  {
    dictionary = PLLogCommon();
    if (os_log_type_enabled(dictionary, OS_LOG_TYPE_DEBUG))
    {
      +[PLBatteryUIResponseTypeUtilities applyStaticNameTransformation:withResponderService:];
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

void __83__PLBatteryUIResponseTypeUtilities_reaccountExchangeEntries_withExchangeBundleIDs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v9 rangeOfString:@"AppTypeKey"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v9, "rangeOfString:", @"time") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = MEMORY[0x277CCABB0];
    [v5 doubleValue];
    v8 = [v6 numberWithDouble:v7 * (*(a1 + 40) / *(a1 + 48) + 1.0)];
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
  }
}

+ (void)reaccountBackupRestore:(id)restore
{
  v30 = *MEMORY[0x277D85DE8];
  restoreCopy = restore;
  v4 = restoreCopy;
  if (restoreCopy && [restoreCopy count])
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v26;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v26 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          v12 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];

          if (v12)
          {
            v13 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            [dictionary setObject:v11 forKeyedSubscript:v13];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v8);
    }

    v14 = [dictionary objectForKeyedSubscript:@"Backup"];
    v15 = [dictionary objectForKeyedSubscript:@"Restore"];
    v16 = v15;
    if (v14 && v15)
    {
      [v14 setObject:@"Backup & Restore" forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
      [v14 setObject:@"Backup & Restore" forKeyedSubscript:@"PLBatteryUIAppNameKey"];
      v19 = MEMORY[0x277D85DD0];
      v20 = 3221225472;
      v21 = __59__PLBatteryUIResponseTypeUtilities_reaccountBackupRestore___block_invoke;
      v22 = &unk_279A5C118;
      v23 = v14;
      v17 = v16;
      v24 = v17;
      [v23 enumerateKeysAndObjectsUsingBlock:&v19];
      [v6 removeObject:{v17, v19, v20, v21, v22}];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __59__PLBatteryUIResponseTypeUtilities_reaccountBackupRestore___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 rangeOfString:@"AppTypeKey"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v12, "rangeOfString:", @"time") == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = MEMORY[0x277CCABB0];
    [v5 doubleValue];
    v8 = v7;
    v9 = [*(a1 + 40) objectForKeyedSubscript:v12];
    [v9 doubleValue];
    v11 = [v6 numberWithDouble:v8 + v10];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v12];
  }
}

+ (void)collapseEnergyEntries:(id)entries
{
  v24 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [entriesCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if (v11)
        {
          v12 = [dictionary objectForKeyedSubscript:v11];

          if (v12)
          {
            v16[0] = MEMORY[0x277D85DD0];
            v16[1] = 3221225472;
            v16[2] = __58__PLBatteryUIResponseTypeUtilities_collapseEnergyEntries___block_invoke;
            v16[3] = &unk_279A5C140;
            v17 = dictionary;
            v18 = v11;
            [v10 enumerateKeysAndObjectsUsingBlock:v16];
          }

          else
          {
            [dictionary setObject:v10 forKeyedSubscript:v11];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  allValues = [dictionary allValues];
  v14 = [allValues mutableCopy];
  [entriesCopy setObject:v14 forKeyedSubscript:@"PLBatteryUIAppArrayKey"];

  v15 = *MEMORY[0x277D85DE8];
}

void __58__PLBatteryUIResponseTypeUtilities_collapseEnergyEntries___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  if ([v16 isEqualToString:@"NotificationInfo"])
  {
    v6 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    v7 = [v6 objectForKeyedSubscript:@"NotificationInfo"];

    v8 = v5;
    if (!v8 || v7)
    {
      [v7 combineWith:v8];
    }

    else
    {
      v9 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
      [v9 setObject:v8 forKeyedSubscript:@"NotificationInfo"];
    }

    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v16 rangeOfString:@"AppTypeKey"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = MEMORY[0x277CCABB0];
    [v5 doubleValue];
    v12 = v11;
    v7 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    v8 = [v7 objectForKeyedSubscript:v16];
    [v8 doubleValue];
    v14 = [v10 numberWithDouble:v12 + v13];
    v15 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
    [v15 setObject:v14 forKeyedSubscript:v16];

LABEL_9:
  }
}

+ (id)getEnergyEntry:(id)entry forBundleID:(id)d
{
  entryCopy = entry;
  dCopy = d;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__PLBatteryUIResponseTypeUtilities_getEnergyEntry_forBundleID___block_invoke;
  v10[3] = &unk_279A5C168;
  v7 = dCopy;
  v11 = v7;
  v12 = &v13;
  [entryCopy enumerateObjectsUsingBlock:v10];
  v8 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v8;
}

void __63__PLBatteryUIResponseTypeUtilities_getEnergyEntry_forBundleID___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  v8 = [v7 isEqualToString:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

+ (void)replaceBundleIDsWithDisplayNamesForEnergyEntryInBucket:(id)bucket withResponderService:(id)service
{
  v23 = *MEMORY[0x277D85DE8];
  bucketCopy = bucket;
  v6 = [PLBatteryUIResponseTypeUtilities getBundleIDToDisplayNameMapWithResponderService:service];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v16 = bucketCopy;
  obj = [bucketCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v13 = [v6 objectForKeyedSubscript:v12];
        if (v13)
        {
          v14 = [v6 objectForKeyedSubscript:v12];
          [v11 setObject:v14 forKeyedSubscript:@"PLBatteryUIAppNameKey"];
        }

        else
        {
          [v11 setObject:v12 forKeyedSubscript:@"PLBatteryUIAppNameKey"];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (void)addEntryTypesToEnergyEntriesInBucket:(id)bucket withResponderService:(id)service
{
  v39 = *MEMORY[0x277D85DE8];
  bucketCopy = bucket;
  serviceCopy = service;
  v33 = +[PLBatteryUIResponseTypeUtilities getRootNodeBundleIDs];
  v31 = +[PLBatteryUIResponseTypeUtilities getNonAppBundleIDs];
  v30 = [PLBatteryUIResponseTypeUtilities getWebAppBundleIDsWithResponderService:serviceCopy];
  v28 = serviceCopy;
  v29 = [PLBatteryUIResponseTypeUtilities getBundleIDToDisplayNameMapWithResponderService:serviceCopy];
  [bucketCopy setObject:&unk_2871455C8 forKeyedSubscript:@"PLBatteryUITotalAccountedEnergyKey"];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [bucketCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v7 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      v10 = 0;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * v10);
        v12 = MEMORY[0x277CCABB0];
        v13 = [bucketCopy objectForKeyedSubscript:@"PLBatteryUITotalAccountedEnergyKey"];
        [v13 doubleValue];
        v15 = v14;
        v16 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
        [v16 doubleValue];
        v18 = [v12 numberWithDouble:v15 + v17];
        [bucketCopy setObject:v18 forKeyedSubscript:@"PLBatteryUITotalAccountedEnergyKey"];

        v19 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        LOBYTE(v18) = [v33 containsObject:v19];

        v20 = &unk_2871455E0;
        if ((v18 & 1) == 0)
        {
          v21 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v22 = [v31 containsObject:v21];

          v20 = &unk_2871455F8;
          if ((v22 & 1) == 0)
          {
            v23 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
            v24 = [v30 containsObject:v23];

            v20 = &unk_287145610;
            if ((v24 & 1) == 0)
            {
              v25 = [v11 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
              v26 = [v29 objectForKeyedSubscript:v25];

              if (v26)
              {
                v20 = &unk_2871455C8;
              }

              else
              {
                v20 = &unk_287145628;
              }
            }
          }
        }

        [v11 setObject:v20 forKeyedSubscript:@"PLBatteryUIAppTypeKey"];
        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v8);
  }

  v27 = *MEMORY[0x277D85DE8];
}

+ (id)getNonAppBundleIDs
{
  if (getNonAppBundleIDs_onceToken != -1)
  {
    +[PLBatteryUIResponseTypeUtilities getNonAppBundleIDs];
  }

  v3 = getNonAppBundleIDs_nonAppBundleIDs;

  return v3;
}

uint64_t __54__PLBatteryUIResponseTypeUtilities_getNonAppBundleIDs__block_invoke()
{
  getNonAppBundleIDs_nonAppBundleIDs = [MEMORY[0x277CBEB98] setWithArray:&unk_28714BC48];

  return MEMORY[0x2821F96F8]();
}

+ (void)filterEnergyEntriesByAppTypeFromBucket:(id)bucket
{
  v20 = *MEMORY[0x277D85DE8];
  bucketCopy = bucket;
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [bucketCopy objectForKeyedSubscript:{@"PLBatteryUIAppArrayKey", 0}];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
        intValue = [v11 intValue];

        if (intValue != 2 && intValue != 5)
        {
          [array addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [bucketCopy setObject:array forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v14 = *MEMORY[0x277D85DE8];
}

+ (void)filterEnergyEntriesWithRuntimes:(id)runtimes
{
  v47 = *MEMORY[0x277D85DE8];
  runtimesCopy = runtimes;
  array = [MEMORY[0x277CBEB18] array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v40 = runtimesCopy;
  obj = [runtimesCopy objectForKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v5 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v43;
    do
    {
      v8 = 0;
      do
      {
        if (*v43 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v42 + 1) + 8 * v8);
        v10 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        v11 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppTypeKey"];
        if ([v11 intValue] == 1)
        {

LABEL_9:
          if (([v10 isEqualToString:@"HLS"] & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"Siri") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"DeletedApp") & 1) != 0 || (objc_msgSend(v10, "isEqualToString:", @"DeletedAppClip") & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"DeletedAppAndAppClip"))
          {
            v13 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
            [v13 doubleValue];
            v15 = v14;

            if (v15 < 60.0)
            {
              v16 = @"PLBatteryUIAppForegroundRuntimeKey";
              if (v15 > 0.0)
              {
                goto LABEL_16;
              }
            }
          }

          else if ([v10 isEqualToString:@"Flashlight"])
          {
            v29 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
            [v29 doubleValue];
            v31 = v30;

            if (v31 < 60.0 && v31 > 0.0)
            {
              goto LABEL_16;
            }
          }

          else if ([v10 isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp"])
          {
            v32 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
            [v32 doubleValue];
            v34 = v33;

            v35 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
            [v35 doubleValue];
            v37 = v36;

            if (v34 < 60.0 && v37 > 2.0)
            {
              goto LABEL_16;
            }
          }

          goto LABEL_17;
        }

        v12 = [v10 isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp"];

        if (v12)
        {
          goto LABEL_9;
        }

        v17 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
        [v17 doubleValue];
        v19 = v18;

        if (![PLBatteryUIResponseTypeUtilities energyEntryHasNegligibleEnergyDrain:v9 filterArray:array])
        {
          if (v19 > 0.0 && v19 < 60.0)
          {
            v21 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
            [v21 doubleValue];
            v23 = v22;

            v24 = [MEMORY[0x277CCABB0] numberWithDouble:60.0 / v19 * v23];
            [v9 setObject:v24 forKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];

            [v9 setObject:&unk_287145640 forKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          }

          v25 = [v9 objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
          [v25 doubleValue];
          v27 = v26;

          v28 = v27 > 0.0 && v27 < 60.0;
          v16 = @"PLBatteryUIAppAlwaysOnRuntimeKey";
          if (!v28)
          {
            goto LABEL_17;
          }

LABEL_16:
          [v9 setObject:&unk_287145640 forKeyedSubscript:?];
LABEL_17:
          [array addObject:{v9, v16}];
        }

        ++v8;
      }

      while (v6 != v8);
      v38 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      v6 = v38;
    }

    while (v38);
  }

  [v40 setObject:array forKeyedSubscript:@"PLBatteryUIAppArrayKey"];
  v39 = *MEMORY[0x277D85DE8];
}

+ (BOOL)energyEntryHasNegligibleEnergyDrain:(id)drain filterArray:(id)array
{
  v40 = *MEMORY[0x277D85DE8];
  drainCopy = drain;
  arrayCopy = array;
  v7 = [drainCopy objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
  v8 = [drainCopy objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [drainCopy objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [drainCopy objectForKeyedSubscript:@"PLBatteryUIAppAlwaysOnRuntimeKey"];
  [v14 doubleValue];
  v16 = v15;

  if (v16 > 0.0)
  {
    goto LABEL_2;
  }

  if (v10 == 0.0 && v13 < 60.0)
  {
    if ([v7 isEqualToString:@"com.apple.findmy"])
    {
      v18 = [&unk_28714BC60 objectAtIndexedSubscript:59];
      v19 = [drainCopy objectForKeyedSubscript:v18];
      [v19 doubleValue];
      v21 = v20;

      if (v21 > 0.0)
      {
        v22 = PLLogCommon();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [(PLBatteryUIResponseTypeUtilities *)v22 energyEntryHasNegligibleEnergyDrain:v23 filterArray:v24, v25, v26, v27, v28, v29];
        }

        [arrayCopy addObject:drainCopy];
      }
    }

LABEL_15:
    v17 = 1;
    goto LABEL_16;
  }

  if ([v7 isEqualToString:@"PowerOutAccessories"])
  {
    v30 = [drainCopy objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
    [v30 doubleValue];
    v32 = v31;

    if (v32 < 33.3)
    {
      v33 = PLLogCommon();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 138412546;
        v37 = v7;
        v38 = 2048;
        v39 = v32;
        _os_log_impl(&dword_25EE51000, v33, OS_LOG_TYPE_DEFAULT, "removing %@ due to energy: %.2f", &v36, 0x16u);
      }

      goto LABEL_15;
    }
  }

LABEL_2:
  v17 = 0;
LABEL_16:

  v34 = *MEMORY[0x277D85DE8];
  return v17;
}

+ (id)getDeletedAppBundleIDsWithResponderService:(id)service
{
  v47[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  sharedUtilityCache = [serviceCopy sharedUtilityCache];
  v5 = [sharedUtilityCache objectForKeyedSubscript:@"BatteryBreakdown"];
  v6 = [v5 objectForKey:@"DeletedAppBundleIDs"];

  v7 = PLLogCommon();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      +[PLBatteryUIResponseTypeUtilities getDeletedAppBundleIDsWithResponderService:];
    }

    sharedUtilityCache2 = [serviceCopy sharedUtilityCache];
    v10 = [sharedUtilityCache2 objectForKeyedSubscript:@"BatteryBreakdown"];
    v11 = [v10 objectForKey:@"DeletedAppBundleIDs"];
  }

  else
  {
    if (v8)
    {
      +[PLBatteryUIResponseTypeUtilities getDeletedAppBundleIDsWithResponderService:];
    }

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v12, OS_LOG_TYPE_DEFAULT, "Searching for deleted app names", buf, 2u);
    }

    v13 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
    v14 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_2871455C8 withComparisonOperation:1];
    v36 = serviceCopy;
    storage = [serviceCopy storage];
    v34 = v14;
    v47[0] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
    v35 = v13;
    v17 = [storage entriesForKey:v13 withComparisons:v16];

    v18 = PLLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v17;
      _os_log_impl(&dword_25EE51000, v18, OS_LOG_TYPE_DEFAULT, "DeletedAppEntries = %@", buf, 0xCu);
    }

    v37 = [MEMORY[0x277CBEB58] set];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v39;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v38 + 1) + 8 * i);
          v25 = [v24 objectForKeyedSubscript:@"AppBundleId"];
          v26 = [v24 objectForKeyedSubscript:@"AppIsClip"];
          v27 = PLLogCommon();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            intValue = [v26 intValue];
            *buf = 138412546;
            v43 = v25;
            v44 = 1024;
            v45 = intValue;
            _os_log_impl(&dword_25EE51000, v27, OS_LOG_TYPE_DEFAULT, "bundleID=%@, appIsClip=%d", buf, 0x12u);
          }

          if (v25 && ([v26 BOOLValue] & 1) == 0)
          {
            [v37 addObject:v25];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v21);
    }

    v29 = PLLogCommon();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v37;
      _os_log_impl(&dword_25EE51000, v29, OS_LOG_TYPE_DEFAULT, "DeletedAppNames = %@", buf, 0xCu);
    }

    serviceCopy = v36;
    sharedUtilityCache3 = [v36 sharedUtilityCache];
    v31 = [sharedUtilityCache3 objectForKeyedSubscript:@"BatteryBreakdown"];
    [v31 setObject:v37 forKeyedSubscript:@"DeletedAppBundleIDs"];

    v11 = [v37 copy];
    v10 = v34;
    sharedUtilityCache2 = v35;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)getDeletedAppClipBundleIDsWithResponderService:(id)service
{
  v47[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  sharedUtilityCache = [serviceCopy sharedUtilityCache];
  v5 = [sharedUtilityCache objectForKeyedSubscript:@"BatteryBreakdown"];
  v6 = [v5 objectForKey:@"DeletedAppClipBundleIDs"];

  v7 = PLLogCommon();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      +[PLBatteryUIResponseTypeUtilities getDeletedAppClipBundleIDsWithResponderService:];
    }

    sharedUtilityCache2 = [serviceCopy sharedUtilityCache];
    v10 = [sharedUtilityCache2 objectForKeyedSubscript:@"BatteryBreakdown"];
    v11 = [v10 objectForKey:@"DeletedAppClipBundleIDs"];
  }

  else
  {
    if (v8)
    {
      +[PLBatteryUIResponseTypeUtilities getDeletedAppClipBundleIDsWithResponderService:];
    }

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v12, OS_LOG_TYPE_DEFAULT, "Battery UI Response Type Utilities: Searching for deleted app clip names", buf, 2u);
    }

    v13 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
    v14 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_2871455C8 withComparisonOperation:1];
    v36 = serviceCopy;
    storage = [serviceCopy storage];
    v34 = v14;
    v47[0] = v14;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
    v35 = v13;
    v17 = [storage entriesForKey:v13 withComparisons:v16];

    v18 = PLLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v17;
      _os_log_impl(&dword_25EE51000, v18, OS_LOG_TYPE_DEFAULT, "Battery UI Response Type Utilities: DeletedAppEntries = %@", buf, 0xCu);
    }

    v37 = [MEMORY[0x277CBEB58] set];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v39;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v39 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v38 + 1) + 8 * i);
          v25 = [v24 objectForKeyedSubscript:@"AppBundleId"];
          v26 = [v24 objectForKeyedSubscript:@"AppIsClip"];
          v27 = PLLogCommon();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            intValue = [v26 intValue];
            *buf = 138412546;
            v43 = v25;
            v44 = 1024;
            v45 = intValue;
            _os_log_impl(&dword_25EE51000, v27, OS_LOG_TYPE_DEFAULT, "Battery UI Response Type Utilities: bundleID=%@, appIsClip=%d", buf, 0x12u);
          }

          if (v25 && [v26 BOOLValue])
          {
            [v37 addObject:v25];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v38 objects:v46 count:16];
      }

      while (v21);
    }

    v29 = PLLogCommon();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v37;
      _os_log_impl(&dword_25EE51000, v29, OS_LOG_TYPE_DEFAULT, "Battery UI Response Type Utilities: DeletedAppNames = %@", buf, 0xCu);
    }

    serviceCopy = v36;
    sharedUtilityCache3 = [v36 sharedUtilityCache];
    v31 = [sharedUtilityCache3 objectForKeyedSubscript:@"BatteryBreakdown"];
    [v31 setObject:v37 forKeyedSubscript:@"DeletedAppClipBundleIDs"];

    v11 = [v37 copy];
    v10 = v34;
    sharedUtilityCache2 = v35;
  }

  v32 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)getWebAppBundleIDsWithResponderService:(id)service
{
  v31 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  sharedUtilityCache = [serviceCopy sharedUtilityCache];
  v5 = [sharedUtilityCache objectForKeyedSubscript:@"BatteryBreakdown"];
  v6 = [v5 objectForKey:@"WebAppBundleIDs"];

  v7 = PLLogCommon();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      +[PLBatteryUIResponseTypeUtilities getWebAppBundleIDsWithResponderService:];
    }

    sharedUtilityCache2 = [serviceCopy sharedUtilityCache];
    v10 = [sharedUtilityCache2 objectForKeyedSubscript:@"BatteryBreakdown"];
    v11 = [v10 objectForKey:@"WebAppBundleIDs"];
  }

  else
  {
    if (v8)
    {
      +[PLBatteryUIResponseTypeUtilities getWebAppBundleIDsWithResponderService:];
    }

    sharedUtilityCache2 = [MEMORY[0x277D3F1A0] entryKeyForOperatorName:@"PLXPCAgent" withType:*MEMORY[0x277D3F5D0] withName:@"WebApp"];
    v10 = [MEMORY[0x277CBEB58] set];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    storage = [serviceCopy storage];
    v13 = [storage entriesForKey:sharedUtilityCache2];

    v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = [v18 objectForKeyedSubscript:@"identifier"];

          if (v19)
          {
            v20 = [v18 objectForKeyedSubscript:@"identifier"];
            [v10 addObject:v20];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    sharedUtilityCache3 = [serviceCopy sharedUtilityCache];
    v22 = [sharedUtilityCache3 objectForKeyedSubscript:@"BatteryBreakdown"];
    [v22 setObject:v10 forKeyedSubscript:@"WebAppBundleIDs"];

    v11 = [v10 copy];
  }

  v23 = v11;

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

+ (id)getPluginBundleIDToEntryMapWithResponderService:(id)service
{
  v93[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  sharedUtilityCache = [serviceCopy sharedUtilityCache];
  v5 = [sharedUtilityCache objectForKeyedSubscript:@"BatteryBreakdown"];
  v6 = [v5 objectForKey:@"PluginBundleIDs"];

  v7 = PLLogCommon();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      +[PLBatteryUIResponseTypeUtilities getPluginBundleIDToEntryMapWithResponderService:];
    }

    sharedUtilityCache2 = [serviceCopy sharedUtilityCache];
    v10 = [sharedUtilityCache2 objectForKeyedSubscript:@"BatteryBreakdown"];
    v11 = [v10 objectForKey:@"PluginBundleIDs"];
  }

  else
  {
    if (v8)
    {
      +[PLBatteryUIResponseTypeUtilities getPluginBundleIDToEntryMapWithResponderService:];
    }

    v12 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllPlugins"];
    v13 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"PluginDeletedDate" withValue:&unk_2871455C8 withComparisonOperation:0];
    storage = [serviceCopy storage];
    v69 = v13;
    v93[0] = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v93 count:1];
    v70 = v12;
    v16 = [storage entriesForKey:v12 withComparisons:v15];

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v17 = objc_opt_class();
      v88[0] = MEMORY[0x277D85DD0];
      v88[1] = 3221225472;
      v88[2] = __84__PLBatteryUIResponseTypeUtilities_getPluginBundleIDToEntryMapWithResponderService___block_invoke;
      v88[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v88[4] = v17;
      if (getPluginBundleIDToEntryMapWithResponderService__defaultOnce != -1)
      {
        dispatch_once(&getPluginBundleIDToEntryMapWithResponderService__defaultOnce, v88);
      }

      if (getPluginBundleIDToEntryMapWithResponderService__classDebugEnabled == 1)
      {
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"installedPluginEntries=%@", v16];
        v19 = MEMORY[0x277D3F178];
        v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeUtilities.m"];
        lastPathComponent = [v20 lastPathComponent];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBatteryUIResponseTypeUtilities getPluginBundleIDToEntryMapWithResponderService:]"];
        [v19 logMessage:v18 fromFile:lastPathComponent fromFunction:v22 fromLineNumber:689];

        v23 = PLLogCommon();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
        {
          [(PLBatteryUIResponseTypeUtilities *)v18 getPluginBundleIDToEntryMapWithResponderService:v23, v24, v25, v26, v27, v28, v29];
        }
      }
    }

    v71 = serviceCopy;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v30 = v16;
    v31 = [v30 countByEnumeratingWithState:&v84 objects:v92 count:16];
    v32 = 0x277D3F000uLL;
    v73 = v30;
    if (v31)
    {
      v33 = v31;
      v34 = *v85;
      v35 = v83;
      v74 = *v85;
      do
      {
        v36 = 0;
        do
        {
          if (*v85 != v34)
          {
            objc_enumerationMutation(v30);
          }

          v37 = *(*(&v84 + 1) + 8 * v36);
          v38 = [v37 objectForKeyedSubscript:@"PluginId"];
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v39 = objc_opt_class();
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            v83[0] = __84__PLBatteryUIResponseTypeUtilities_getPluginBundleIDToEntryMapWithResponderService___block_invoke_444;
            v83[1] = &__block_descriptor_40_e5_v8__0lu32l8;
            v83[2] = v39;
            if (getPluginBundleIDToEntryMapWithResponderService__defaultOnce_442 != -1)
            {
              dispatch_once(&getPluginBundleIDToEntryMapWithResponderService__defaultOnce_442, block);
            }

            if (getPluginBundleIDToEntryMapWithResponderService__classDebugEnabled_443 == 1)
            {
              v40 = v35;
              v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"pluginBundleID=%@", v38];
              v42 = MEMORY[0x277D3F178];
              v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeUtilities.m"];
              lastPathComponent2 = [v43 lastPathComponent];
              v45 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBatteryUIResponseTypeUtilities getPluginBundleIDToEntryMapWithResponderService:]"];
              [v42 logMessage:v41 fromFile:lastPathComponent2 fromFunction:v45 fromLineNumber:694];

              v46 = PLLogCommon();
              if (os_log_type_enabled(v46, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v91 = v41;
                _os_log_debug_impl(&dword_25EE51000, v46, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v30 = v73;
              v32 = 0x277D3F000uLL;
              v35 = v40;
              v34 = v74;
            }
          }

          [dictionary setObject:v37 forKeyedSubscript:v38];

          ++v36;
        }

        while (v33 != v36);
        v33 = [v30 countByEnumeratingWithState:&v84 objects:v92 count:16];
      }

      while (v33);
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v47 = +[PLBatteryUIResponseTypeUtilities getInstalledPluginEntries];
    v48 = [v47 countByEnumeratingWithState:&v78 objects:v89 count:16];
    v11 = dictionary;
    if (v48)
    {
      v49 = v48;
      v75 = *v79;
      v72 = v47;
      do
      {
        v50 = 0;
        do
        {
          if (*v79 != v75)
          {
            objc_enumerationMutation(v47);
          }

          v51 = *(*(&v78 + 1) + 8 * v50);
          v52 = [v51 objectForKeyedSubscript:@"PluginId"];
          v53 = [v51 objectForKeyedSubscript:@"PluginParentApp"];
          v54 = [v11 objectForKeyedSubscript:v52];

          if (!v54)
          {
            if ([*(v32 + 384) debugEnabled])
            {
              v55 = objc_opt_class();
              v77[0] = MEMORY[0x277D85DD0];
              v77[1] = 3221225472;
              v77[2] = __84__PLBatteryUIResponseTypeUtilities_getPluginBundleIDToEntryMapWithResponderService___block_invoke_450;
              v77[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              v77[4] = v55;
              if (getPluginBundleIDToEntryMapWithResponderService__defaultOnce_448 != -1)
              {
                dispatch_once(&getPluginBundleIDToEntryMapWithResponderService__defaultOnce_448, v77);
              }

              if (getPluginBundleIDToEntryMapWithResponderService__classDebugEnabled_449 == 1)
              {
                v56 = MEMORY[0x277CCACA8];
                v57 = [v51 objectForKeyedSubscript:@"PluginExecutableName"];
                v58 = [v51 objectForKeyedSubscript:@"PluginType"];
                v59 = [v56 stringWithFormat:@"pluginExecutableName=%@, pluginBundleID=%@, pluginParentApp=%@, pluginType=%@", v57, v52, v53, v58];

                v60 = MEMORY[0x277D3F178];
                v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeUtilities.m"];
                lastPathComponent3 = [v61 lastPathComponent];
                v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBatteryUIResponseTypeUtilities getPluginBundleIDToEntryMapWithResponderService:]"];
                [v60 logMessage:v59 fromFile:lastPathComponent3 fromFunction:v63 fromLineNumber:705];

                v64 = PLLogCommon();
                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v91 = v59;
                  _os_log_debug_impl(&dword_25EE51000, v64, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v32 = 0x277D3F000;
                v11 = dictionary;
                v47 = v72;
              }
            }

            [v11 setObject:v51 forKeyedSubscript:v52];
          }

          ++v50;
        }

        while (v49 != v50);
        v49 = [v47 countByEnumeratingWithState:&v78 objects:v89 count:16];
      }

      while (v49);
    }

    serviceCopy = v71;
    sharedUtilityCache3 = [v71 sharedUtilityCache];
    v66 = [sharedUtilityCache3 objectForKeyedSubscript:@"BatteryBreakdown"];
    [v66 setObject:v11 forKeyedSubscript:@"PluginBundleIDs"];

    v10 = v69;
    sharedUtilityCache2 = v70;
  }

  v67 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __84__PLBatteryUIResponseTypeUtilities_getPluginBundleIDToEntryMapWithResponderService___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getPluginBundleIDToEntryMapWithResponderService__classDebugEnabled = result;
  return result;
}

uint64_t __84__PLBatteryUIResponseTypeUtilities_getPluginBundleIDToEntryMapWithResponderService___block_invoke_444(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getPluginBundleIDToEntryMapWithResponderService__classDebugEnabled_443 = result;
  return result;
}

uint64_t __84__PLBatteryUIResponseTypeUtilities_getPluginBundleIDToEntryMapWithResponderService___block_invoke_450(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getPluginBundleIDToEntryMapWithResponderService__classDebugEnabled_449 = result;
  return result;
}

+ (id)getBundleIDToDisplayNameMapWithResponderService:(id)service
{
  v87[1] = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  sharedUtilityCache = [serviceCopy sharedUtilityCache];
  v5 = [sharedUtilityCache objectForKeyedSubscript:@"BatteryBreakdown"];
  v6 = [v5 objectForKey:@"BundleIDs"];

  v7 = PLLogCommon();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (!v6)
  {
    if (v8)
    {
      +[PLBatteryUIResponseTypeUtilities getBundleIDToDisplayNameMapWithResponderService:];
    }

    v12 = [(PLOperator *)PLApplicationAgent entryKeyForType:*MEMORY[0x277D3F5E0] andName:@"AllApps"];
    v13 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppDeletedDate" withValue:&unk_2871455C8 withComparisonOperation:0];
    v69 = serviceCopy;
    storage = [serviceCopy storage];
    v67 = v13;
    v87[0] = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v87 count:1];
    v68 = v12;
    v16 = [storage entriesForKey:v12 withComparisons:v15];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v17 = PLLogCommon();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [(PLBatteryUIResponseTypeUtilities *)v16 getBundleIDToDisplayNameMapWithResponderService:v17, v18, v19, v20, v21, v22, v23];
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v24 = v16;
    v25 = [v24 countByEnumeratingWithState:&v79 objects:v86 count:16];
    v26 = 0x277D3F000uLL;
    v71 = v24;
    if (v25)
    {
      v27 = v25;
      v28 = *v80;
      do
      {
        v29 = 0;
        do
        {
          if (*v80 != v28)
          {
            objc_enumerationMutation(v24);
          }

          v30 = *(*(&v79 + 1) + 8 * v29);
          v31 = [v30 objectForKeyedSubscript:@"AppType"];
          intValue = [v31 intValue];

          if (intValue == 101 || ([v30 objectForKeyedSubscript:@"AppBundleId"], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "isEqualToString:", @"com.apple.NanoUniverse.AegirProxyApp"), v33, v34))
          {
            v35 = [v30 objectForKeyedSubscript:@"AppBundleId"];
            v36 = [v30 objectForKeyedSubscript:@"AppName"];
            if ([*(v26 + 384) debugEnabled])
            {
              v37 = objc_opt_class();
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __84__PLBatteryUIResponseTypeUtilities_getBundleIDToDisplayNameMapWithResponderService___block_invoke;
              block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
              block[4] = v37;
              if (getBundleIDToDisplayNameMapWithResponderService__defaultOnce != -1)
              {
                dispatch_once(&getBundleIDToDisplayNameMapWithResponderService__defaultOnce, block);
              }

              if (getBundleIDToDisplayNameMapWithResponderService__classDebugEnabled == 1)
              {
                v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@, displayName=%@", v35, v36];
                v39 = MEMORY[0x277D3F178];
                v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeUtilities.m"];
                lastPathComponent = [v40 lastPathComponent];
                v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBatteryUIResponseTypeUtilities getBundleIDToDisplayNameMapWithResponderService:]"];
                [v39 logMessage:v38 fromFile:lastPathComponent fromFunction:v42 fromLineNumber:739];

                v43 = PLLogCommon();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138412290;
                  v85 = v38;
                  _os_log_debug_impl(&dword_25EE51000, v43, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
                }

                v24 = v71;
                v26 = 0x277D3F000;
              }
            }

            [dictionary setObject:v36 forKeyedSubscript:v35];
          }

          else
          {
            v35 = PLLogCommon();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              +[PLBatteryUIResponseTypeUtilities getBundleIDToDisplayNameMapWithResponderService:];
            }
          }

          ++v29;
        }

        while (v27 != v29);
        v27 = [v24 countByEnumeratingWithState:&v79 objects:v86 count:16];
      }

      while (v27);
    }

    v44 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v45 = [v44 countByEnumeratingWithState:&v74 objects:v83 count:16];
    v46 = 0x279A5A000uLL;
    if (!v45)
    {
LABEL_51:
      [dictionary setObject:@"Apple Watch" forKeyedSubscript:@"com.apple.Bridge"];
      v11 = [dictionary copy];

      sharedUtilityCache2 = v68;
      serviceCopy = v69;
      v10 = v67;
      goto LABEL_52;
    }

    v47 = v45;
    v48 = *v75;
    v70 = v44;
LABEL_30:
    v49 = 0;
    while (1)
    {
      if (*v75 != v48)
      {
        objc_enumerationMutation(v44);
      }

      v50 = *(*(&v74 + 1) + 8 * v49);
      if (([v50 mayBeBUIVisible] & 1) != 0 || (objc_msgSend(v50, "bundleIdentifier"), v51 = objc_claimAutoreleasedReturnValue(), v52 = objc_msgSend(v51, "isEqualToString:", @"com.apple.NanoUniverse.AegirProxyApp"), v51, v52))
      {
        if (([*(v46 + 3200) hasScreenPresence:v50] & 1) == 0)
        {
          bundleIdentifier = [v50 bundleIdentifier];
          v54 = [bundleIdentifier isEqualToString:@"com.apple.NanoUniverse.AegirProxyApp"];

          if (!v54)
          {
            goto LABEL_49;
          }
        }

        bundleIdentifier2 = [v50 bundleIdentifier];
        v56 = [dictionary objectForKeyedSubscript:bundleIdentifier2];

        if (!v56)
        {
          localizedName = [v50 localizedName];
          if ([MEMORY[0x277D3F180] debugEnabled])
          {
            v58 = objc_opt_class();
            v73[0] = MEMORY[0x277D85DD0];
            v73[1] = 3221225472;
            v73[2] = __84__PLBatteryUIResponseTypeUtilities_getBundleIDToDisplayNameMapWithResponderService___block_invoke_472;
            v73[3] = &__block_descriptor_40_e5_v8__0lu32l8;
            v73[4] = v58;
            if (getBundleIDToDisplayNameMapWithResponderService__defaultOnce_470 != -1)
            {
              dispatch_once(&getBundleIDToDisplayNameMapWithResponderService__defaultOnce_470, v73);
            }

            if (getBundleIDToDisplayNameMapWithResponderService__classDebugEnabled_471 == 1)
            {
              v59 = [MEMORY[0x277CCACA8] stringWithFormat:@"bundleID=%@, displayName=%@", bundleIdentifier2, localizedName];
              v60 = MEMORY[0x277D3F178];
              v61 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Operators/Services/BatteryUIResponseTypes/PLBatteryUIResponseTypeUtilities.m"];
              lastPathComponent2 = [v61 lastPathComponent];
              v63 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[PLBatteryUIResponseTypeUtilities getBundleIDToDisplayNameMapWithResponderService:]"];
              [v60 logMessage:v59 fromFile:lastPathComponent2 fromFunction:v63 fromLineNumber:757];

              v64 = PLLogCommon();
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v85 = v59;
                _os_log_debug_impl(&dword_25EE51000, v64, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }

              v46 = 0x279A5A000;
              v44 = v70;
            }
          }

          [dictionary setObject:localizedName forKeyedSubscript:bundleIdentifier2];
        }
      }

      else
      {
        bundleIdentifier2 = PLLogCommon();
        if (os_log_type_enabled(bundleIdentifier2, OS_LOG_TYPE_DEBUG))
        {
          +[PLBatteryUIResponseTypeUtilities getBundleIDToDisplayNameMapWithResponderService:];
        }
      }

LABEL_49:
      if (v47 == ++v49)
      {
        v47 = [v44 countByEnumeratingWithState:&v74 objects:v83 count:16];
        if (!v47)
        {
          goto LABEL_51;
        }

        goto LABEL_30;
      }
    }
  }

  if (v8)
  {
    +[PLBatteryUIResponseTypeUtilities getBundleIDToDisplayNameMapWithResponderService:];
  }

  sharedUtilityCache2 = [serviceCopy sharedUtilityCache];
  v10 = [sharedUtilityCache2 objectForKeyedSubscript:@"BatteryBreakdown"];
  v11 = [v10 objectForKey:@"BundleIDs"];
LABEL_52:

  v65 = *MEMORY[0x277D85DE8];

  return v11;
}

uint64_t __84__PLBatteryUIResponseTypeUtilities_getBundleIDToDisplayNameMapWithResponderService___block_invoke(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getBundleIDToDisplayNameMapWithResponderService__classDebugEnabled = result;
  return result;
}

uint64_t __84__PLBatteryUIResponseTypeUtilities_getBundleIDToDisplayNameMapWithResponderService___block_invoke_472(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  getBundleIDToDisplayNameMapWithResponderService__classDebugEnabled_471 = result;
  return result;
}

+ (id)getInstalledPluginEntries
{
  v40 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v2 = [MEMORY[0x277CC1E50] enumeratorWithOptions:0];
  v3 = [v2 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v36;
    v31 = *MEMORY[0x277D3F5E0];
    do
    {
      v6 = 0;
      v32 = v4;
      do
      {
        if (*v36 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v35 + 1) + 8 * v6);
        bundleIdentifier = [v7 bundleIdentifier];
        if (!bundleIdentifier)
        {
          goto LABEL_20;
        }

        v9 = bundleIdentifier;
        executableURL = [v7 executableURL];
        if (!executableURL)
        {
          goto LABEL_19;
        }

        v11 = executableURL;
        containingBundleRecord = [v7 containingBundleRecord];
        if (!containingBundleRecord)
        {
          goto LABEL_12;
        }

        containingBundleRecord2 = [v7 containingBundleRecord];
        bundleIdentifier2 = [containingBundleRecord2 bundleIdentifier];
        if (!bundleIdentifier2)
        {
          v33 = 0;
LABEL_12:
          v15 = v5;
          v16 = v2;
          extensionPointRecord = [v7 extensionPointRecord];
          identifier = [extensionPointRecord identifier];
          v14 = [identifier isEqualToString:@"com.apple.posterkit.provider"];

          if (!containingBundleRecord)
          {

            v2 = v16;
            v5 = v15;
            v4 = v32;
            if (!v14)
            {
              goto LABEL_20;
            }

LABEL_17:
            v19 = objc_alloc(MEMORY[0x277D3F190]);
            v20 = [(PLOperator *)PLApplicationAgent entryKeyForType:v31 andName:@"AllPlugins"];
            v9 = [v19 initWithEntryKey:v20];

            bundleIdentifier3 = [v7 bundleIdentifier];
            [v9 setObject:bundleIdentifier3 forKeyedSubscript:@"PluginId"];

            containingBundleRecord3 = [v7 containingBundleRecord];
            bundleIdentifier4 = [containingBundleRecord3 bundleIdentifier];
            [v9 setObject:bundleIdentifier4 forKeyedSubscript:@"PluginParentApp"];

            extensionPointRecord2 = [v7 extensionPointRecord];
            identifier2 = [extensionPointRecord2 identifier];
            [v9 setObject:identifier2 forKeyedSubscript:@"PluginType"];

            executableURL2 = [v7 executableURL];
            path = [executableURL2 path];
            [v9 setObject:path forKeyedSubscript:@"PluginExecutableName"];

            [v9 setObject:&unk_2871455C8 forKeyedSubscript:@"PluginDeletedDate"];
            if (!v9)
            {
              goto LABEL_20;
            }

            [array addObject:v9];
LABEL_19:

            goto LABEL_20;
          }

          v2 = v16;
          v5 = v15;
          v4 = v32;
          bundleIdentifier2 = v33;
          goto LABEL_14;
        }

        LOBYTE(v14) = 1;
LABEL_14:
        v33 = bundleIdentifier2;

        if (v14)
        {
          goto LABEL_17;
        }

LABEL_20:
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v4);
  }

  v28 = *MEMORY[0x277D85DE8];

  return array;
}

+ (id)getBundleIDToReplacementBundleIDMap
{
  v152[170] = *MEMORY[0x277D85DE8];
  v10[0] = @"IMRemoteURLConn";
  v10[1] = @"IMRemoteURLConne";
  v152[0] = @"com.apple.MobileSMS";
  v152[1] = @"com.apple.MobileSMS";
  v10[2] = @"com.apple.mobilesms.notification";
  v10[3] = @"GenerativePlaygroundApp.MessagesExtension";
  v152[2] = @"com.apple.MobileSMS";
  v152[3] = @"com.apple.MobileSMS";
  v10[4] = @"com.apple.GenerativePlaygroundApp.MessagesExtension";
  v10[5] = @"mstreamd";
  v152[4] = @"com.apple.MobileSMS";
  v152[5] = @"com.apple.mobileslideshow";
  v10[6] = @"mediastream.mstreamd";
  v10[7] = @"assetsd";
  v152[6] = @"com.apple.mobileslideshow";
  v152[7] = @"com.apple.mobileslideshow";
  v10[8] = @"cloudphotod";
  v10[9] = @"com.apple.mobileslideshow.Discretionary";
  v152[8] = @"com.apple.mobileslideshow";
  v152[9] = @"com.apple.mobileslideshow";
  v10[10] = @"com.apple.icloud-container.com.apple.photos.cloud";
  v10[11] = @"com.apple.photoanalysisd";
  v152[10] = @"com.apple.mobileslideshow";
  v152[11] = @"com.apple.mobileslideshow";
  v10[12] = @"com.apple.photoanalysisd.backgroundanalysis";
  v10[13] = @"com.apple.photos.cloud";
  v152[12] = @"com.apple.mobileslideshow";
  v152[13] = @"com.apple.mobileslideshow";
  v10[14] = @"WirelessRadioManager";
  v10[15] = @"WirelessRadioManagerd";
  v152[14] = @"com.apple.mobilephone";
  v152[15] = @"com.apple.mobilephone";
  v10[16] = @"WirelessRadioMa";
  v10[17] = @"vmd";
  v152[16] = @"com.apple.mobilephone";
  v152[17] = @"com.apple.mobilephone";
  v10[18] = @"ipTelephony";
  v10[19] = @"ContactsUI.MonogramPosterExtension";
  v152[18] = @"com.apple.mobilephone";
  v152[19] = @"com.apple.mobilephone";
  v10[20] = @"com.apple.ContactsUI.MonogramPosterExtension";
  v10[21] = @"com.apple.MailCompositionService";
  v152[20] = @"com.apple.mobilephone";
  v152[21] = @"com.apple.mobilemail";
  v10[22] = @"MailCompositionService";
  v10[23] = @"suggestd";
  v152[22] = @"com.apple.mobilemail";
  v152[23] = @"com.apple.mobilemail";
  v10[24] = @"email.maild";
  v10[25] = @"com.apple.email.maild";
  v152[24] = @"com.apple.mobilemail";
  v152[25] = @"com.apple.mobilemail";
  v10[26] = @"maild";
  v10[27] = @"com.apple.springboard.lockscreen.navigation";
  v152[26] = @"com.apple.mobilemail";
  v152[27] = @"com.apple.Maps";
  v2 = *MEMORY[0x277D0ABB8];
  v10[28] = @"com.apple.Siri";
  v11 = v2;
  v152[28] = @"Siri";
  v152[29] = @"Siri";
  v12 = @"assistantd";
  v13 = @"omniSearch.SearchToolExtension";
  v152[30] = @"Siri";
  v152[31] = @"Siri";
  v14 = @"com.apple.WebKit.Networking";
  v15 = @"com.apple.WebKit.WebContent";
  v152[32] = @"com.apple.mobilesafari";
  v152[33] = @"com.apple.mobilesafari";
  v16 = @"com.apple.WebKit";
  v17 = @"com.apple.WebKi";
  v152[34] = @"com.apple.mobilesafari";
  v152[35] = @"com.apple.mobilesafari";
  v18 = @"com.apple.SafariViewService";
  v19 = @"safarifetcherd";
  v152[36] = @"com.apple.mobilesafari";
  v152[37] = @"com.apple.mobilesafari";
  v20 = @"com.apple.WebKit.WebContent.CaptivePortal";
  v21 = @"com.apple.WebKit.WebContent.Development";
  v152[38] = @"com.apple.mobilesafari";
  v152[39] = @"com.apple.mobilesafari";
  v22 = @"com.apple.WebKit.GPU";
  v23 = @"com.apple.WebKit.GPU.Development";
  v152[40] = @"com.apple.mobilesafari";
  v152[41] = @"com.apple.mobilesafari";
  v24 = @"com.apple.PassKitCore";
  v25 = @"passd";
  v152[42] = @"com.apple.Passbook";
  v152[43] = @"com.apple.Passbook";
  v26 = @"PassbookUIService";
  v27 = @"com.apple.PassbookUIService";
  v152[44] = @"com.apple.Passbook";
  v152[45] = @"com.apple.Passbook";
  v28 = @"com.apple.calendar";
  v29 = @"calaccessd";
  v152[46] = @"com.apple.mobilecal";
  v152[47] = @"com.apple.mobilecal";
  v3 = *MEMORY[0x277D66F48];
  v30 = *MEMORY[0x277D66F20];
  v31 = v3;
  v152[48] = @"HLS";
  v152[49] = @"HLS";
  v4 = *MEMORY[0x277D66F58];
  v32 = *MEMORY[0x277D66F10];
  v33 = v4;
  v152[50] = @"HLS";
  v152[51] = @"HLS";
  v34 = *MEMORY[0x277D0AB98];
  v152[52] = @"HLS";
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", v34, @"aod", @"IMRemoteURLConn", @"IMRemoteURLConne", @"com.apple.mobilesms.notification", @"GenerativePlaygroundApp.MessagesExtension", @"com.apple.GenerativePlaygroundApp.MessagesExtension", @"mstreamd", @"mediastream.mstreamd", @"assetsd", @"cloudphotod", @"com.apple.mobileslideshow.Discretionary", @"com.apple.icloud-container.com.apple.photos.cloud", @"com.apple.photoanalysisd", @"com.apple.photoanalysisd.backgroundanalysis", @"com.apple.photos.cloud", @"WirelessRadioManager", @"WirelessRadioManagerd", @"WirelessRadioMa", @"vmd", @"ipTelephony", @"ContactsUI.MonogramPosterExtension", @"com.apple.ContactsUI.MonogramPosterExtension", @"com.apple.MailCompositionService", @"MailCompositionService", @"suggestd", @"email.maild", @"com.apple.email.maild", @"maild", @"com.apple.springboard.lockscreen.navigation", @"com.apple.Siri", v11, @"assistantd", @"omniSearch.SearchToolExtension", @"com.apple.WebKit.Networking", @"com.apple.WebKit.WebContent", @"com.apple.WebKit", @"com.apple.WebKi", @"com.apple.SafariViewService", @"safarifetcherd", @"com.apple.WebKit.WebContent.CaptivePortal", @"com.apple.WebKit.WebContent.Development", @"com.apple.WebKit.GPU", @"com.apple.WebKit.GPU.Development", @"com.apple.PassKitCore", @"passd", @"PassbookUIService", @"com.apple.PassbookUIService", @"com.apple.calendar", @"calaccessd", v30, v31, v32, v4, v34];
  v6 = *MEMORY[0x277D0AB90];
  v35 = v5;
  v36 = v6;
  v152[53] = @"AlwaysOnDisplay";
  v152[54] = @"HLS";
  v37 = *MEMORY[0x277D0ABB0];
  v38 = @"LockScreen";
  v152[55] = @"HLS";
  v152[56] = @"HLS";
  v39 = @"com.apple.PosterBoard";
  v40 = @"PosterBoard";
  v152[57] = @"HLS";
  v152[58] = @"HLS";
  v41 = @"com.apple.MobileBackup.framework";
  v42 = @"backupd";
  v152[59] = @"Backup";
  v152[60] = @"Backup";
  v43 = @"com.apple.backupd";
  v44 = @"softwareupdateservicesd";
  v152[61] = @"Backup";
  v152[62] = @"Backup";
  v45 = @"mobile.softwareupdated";
  v46 = @"com.apple.Restore";
  v152[63] = @"Backup";
  v152[64] = @"com.apple.AppStore";
  v47 = @"com.apple.atc";
  v152[65] = @"com.apple.AppStore";
  v48 = @"installd";
  v152[66] = @"com.apple.AppStore";
  v49 = @"com.apple.StreamingUnzipService";
  v152[67] = @"com.apple.AppStore";
  v50 = @"containermanagerd";
  v152[68] = @"com.apple.AppStore";
  v51 = @"appstored";
  v152[69] = @"com.apple.AppStore";
  v52 = @"OOS";
  v152[70] = @"PoorCellCondition";
  v53 = @"healthd";
  v152[71] = @"com.apple.Health";
  v54 = @"com.apple.healthappd";
  v152[72] = @"com.apple.Health";
  v55 = @"misd";
  v152[73] = @"Hotspot";
  v56 = @"RadarComposeUIService";
  v152[74] = @"com.apple.ist.radar";
  v57 = @"remindd";
  v152[75] = @"com.apple.reminders";
  v58 = @"homed";
  v152[76] = @"HomeKit";
  v59 = @"com.apple.private.alloy.willow";
  v152[77] = @"HomeKit";
  v60 = @"atc";
  v152[78] = @"com.apple.Music";
  v61 = @"siriactionsd";
  v152[79] = @"com.apple.shortcuts";
  v62 = @"com.apple.WorkflowKit.BackgroundShortcutRunner";
  v152[80] = @"com.apple.shortcuts";
  v63 = @"weatherd";
  v152[81] = @"com.apple.weather";
  v64 = @"synapse.contentlinkingd";
  v152[82] = @"com.apple.mobilenotes";
  v65 = @"com.apple.sportsd";
  v152[83] = @"com.apple.tv";
  v66 = @"sportsd";
  v152[84] = @"com.apple.tv";
  v67 = @"com.apple.continuitycaptured";
  v152[85] = @"com.apple.sidecar.extension.capture";
  v68 = @"com.apple.ContinuityCaptureShieldUI";
  v152[86] = @"com.apple.sidecar.extension.capture";
  v69 = @"GenerativePlaygroundApp";
  v152[87] = @"com.apple.GenerativePlaygroundApp";
  v70 = @"eventkitsyncd";
  v152[88] = @"com.apple.mobilecal";
  v71 = @"companioncamerad";
  v152[89] = @"com.apple.camera";
  v72 = @"nanomailbootstrapd";
  v152[90] = @"com.apple.mobilemail";
  v73 = @"nanomapscd";
  v152[91] = @"com.apple.Maps";
  v74 = @"companionmessagesd";
  v152[92] = @"com.apple.MobileSMS";
  v75 = @"NPKCompanionAgent";
  v152[93] = @"com.apple.Passbook";
  v76 = @"tursd";
  v152[94] = @"com.apple.mobilephone";
  v77 = @"nptocompaniond";
  v152[95] = @"com.apple.mobileslideshow";
  v78 = @"remotemediaservicesd";
  v152[96] = @"com.apple.RemoteMediaServices";
  v79 = @"companionfindlocallyd";
  v152[97] = @"com.apple.companionfindlocallyd";
  v80 = @"pairedunlockd";
  v152[98] = @"com.apple.pairedunlockd";
  v81 = @"nanoweatherprefsd";
  v152[99] = @"com.apple.weather";
  v82 = @"com.apple.ess";
  v152[100] = @"com.apple.mobilephone";
  v83 = @"com.apple.madrid";
  v152[101] = @"com.apple.MobileSMS";
  v84 = @"com.apple.private.alloy.accountssync";
  v152[102] = @"accountsd";
  v85 = @"com.apple.private.alloy.addressbooksync";
  v152[103] = @"addressbooksyncd";
  v86 = @"com.apple.private.alloy.appregistrysync";
  v152[104] = @"nanoappregistryd";
  v87 = @"com.apple.private.alloy.audiocontrol.bridge";
  v152[105] = @"com.apple.Bridge";
  v88 = @"com.apple.private.alloy.audiocontrol.music";
  v152[106] = @"com.apple.Music";
  v89 = @"com.apple.private.alloy.bluetoothregistry";
  v152[107] = @"nanoregistryd";
  v90 = @"com.apple.private.alloy.bulletindistributor.settings";
  v152[108] = @"bulletindistributord";
  v91 = @"com.apple.private.alloy.bulletindistributor";
  v152[109] = @"bulletindistributord";
  v92 = @"com.apple.private.alloy.callhistorysync";
  v152[110] = @"CallHistorySyncHelper";
  v93 = @"com.apple.private.alloy.camera.proxy";
  v152[111] = @"com.apple.camera";
  v94 = @"com.apple.private.alloy.continuity.activity";
  v152[112] = @"sharingd";
  v95 = @"com.apple.private.alloy.continuity.auth";
  v152[113] = @"sharingd";
  v96 = @"com.apple.private.alloy.continuity.encryption";
  v152[114] = @"sharingd";
  v97 = @"com.apple.private.alloy.continuity.tethering";
  v152[115] = @"sharingd";
  v98 = @"com.apple.private.alloy.coreduet";
  v152[116] = @"coreduetd";
  v99 = @"com.apple.private.alloy.eventkitsync";
  v152[117] = @"com.apple.mobilecal";
  v100 = @"com.apple.private.alloy.fignero";
  v152[118] = @"mediaserverd";
  v101 = @"com.apple.private.alloy.findmylocaldevice";
  v152[119] = @"com.apple.companionfindlocallyd";
  v102 = @"com.apple.private.alloy.fmf";
  v152[120] = @"fmfd";
  v103 = @"com.apple.private.alloy.health.general";
  v152[121] = @"com.apple.Health";
  v104 = @"com.apple.private.alloy.health.sync";
  v152[122] = @"com.apple.Health";
  v105 = @"com.apple.private.alloy.icloudpairing";
  v152[123] = @"bluetoothd";
  v106 = @"com.apple.private.alloy.idscredentials";
  v152[124] = @"IDSCredentialsAgent";
  v107 = @"com.apple.private.alloy.idsremoteurlconnection";
  v152[125] = @"IDSRemoteURLConnectionAgent";
  v108 = @"com.apple.private.alloy.idstransfers";
  v152[126] = @"IMTransferAgent";
  v109 = @"com.apple.private.alloy.iosdiagnostics";
  v152[127] = @"Diagnostics";
  v110 = @"com.apple.private.alloy.location.auth";
  v152[128] = @"locationd";
  v111 = @"com.apple.private.alloy.location.motion";
  v152[129] = @"locationd";
  v112 = @"com.apple.private.alloy.location.usage";
  v152[130] = @"locationd";
  v113 = @"com.apple.private.alloy.location.wifitilesync";
  v152[131] = @"locationd";
  v114 = @"com.apple.private.alloy.mail.fetches";
  v152[132] = @"com.apple.mobilemail";
  v115 = @"com.apple.private.alloy.mail.sync.accounts";
  v152[133] = @"com.apple.mobilemail";
  v116 = @"com.apple.private.alloy.mail.sync.content";
  v152[134] = @"com.apple.mobilemail";
  v117 = @"com.apple.private.alloy.mail.sync.messages";
  v152[135] = @"com.apple.mobilemail";
  v118 = @"com.apple.private.alloy.maps.proxy";
  v152[136] = @"com.apple.Maps";
  v119 = @"com.apple.private.alloy.maps.sync";
  v152[137] = @"com.apple.Maps";
  v120 = @"com.apple.private.alloy.maps";
  v152[138] = @"com.apple.Maps";
  v121 = @"com.apple.private.alloy.messages";
  v152[139] = @"com.apple.MobileSMS";
  v122 = @"com.apple.private.alloy.nsurlsessionproxy";
  v152[140] = @"sharingd";
  v123 = @"com.apple.private.alloy.otaupdate";
  v152[141] = @"Restore";
  v124 = @"com.apple.private.alloy.pairedunlock";
  v152[142] = @"com.apple.pairedunlockd";
  v125 = @"com.apple.private.alloy.passbook.general";
  v152[143] = @"com.apple.Passbook";
  v126 = @"com.apple.private.alloy.passbook.maintenance";
  v152[144] = @"com.apple.Passbook";
  v127 = @"com.apple.private.alloy.passbook.provisioning";
  v152[145] = @"com.apple.Passbook";
  v128 = @"com.apple.private.alloy.passbook.relevancy";
  v152[146] = @"com.apple.Passbook";
  v129 = @"com.apple.private.alloy.passbook.remoteadmin";
  v152[147] = @"com.apple.Passbook";
  v130 = @"com.apple.private.alloy.pbbridge";
  v152[148] = @"com.apple.Bridge";
  v131 = @"com.apple.private.alloy.phonecontinuity";
  v152[149] = @"com.apple.mobilephone";
  v132 = @"com.apple.private.alloy.photos.proxy";
  v152[150] = @"com.apple.mobileslideshow";
  v133 = @"com.apple.private.alloy.photostream";
  v152[151] = @"com.apple.mobileslideshow";
  v134 = @"com.apple.private.alloy.preferencessync";
  v152[152] = @"nanoprefsyncd";
  v135 = @"com.apple.private.alloy.proxiedcrashcopier";
  v152[153] = @"ProxiedCrashCopier";
  v136 = @"com.apple.private.alloy.pushproxy";
  v152[154] = @"apsd";
  v137 = @"com.apple.private.alloy.remotemediaservices";
  v152[155] = @"com.apple.RemoteMediaServices";
  v138 = @"com.apple.private.alloy.resourcegrabber";
  v152[156] = @"resourcegrabberd";
  v139 = @"com.apple.private.alloy.screenshotter";
  v152[157] = @"screenshotsyncd";
  v140 = @"com.apple.private.alloy.siri.device";
  v152[158] = @"Siri";
  v141 = @"com.apple.private.alloy.siri.location";
  v152[159] = @"Siri";
  v142 = @"com.apple.private.alloy.siri.proxy";
  v152[160] = @"Siri";
  v143 = @"com.apple.private.alloy.sms";
  v152[161] = @"com.apple.MobileSMS";
  v144 = @"com.apple.private.alloy.sockpuppet";
  v152[162] = @"companionappd";
  v145 = @"com.apple.private.alloy.systemsettings";
  v152[163] = @"nanosystemsettingsd";
  v146 = @"com.apple.private.alloy.telephonyutilitiestemporary";
  v152[164] = @"com.apple.mobilephone";
  v147 = @"com.apple.private.alloy.timesync";
  v152[165] = @"timed";
  v148 = @"com.apple.private.alloy.timezonesync";
  v152[166] = @"tzd";
  v149 = @"com.apple.private.alloy.utilitybelt";
  v152[167] = @"com.apple.Bridge";
  v150 = @"com.apple.private.alloy.voicemailsync";
  v152[168] = @"com.apple.mobilephone";
  v151 = @"com.apple.private.alloy.wifi.networksync";
  v152[169] = @"wifid";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v152 forKeys:v10 count:170];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)applyStaticNameTransformation:withResponderService:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  v3 = [v2 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
  [v3 doubleValue];
  *v1 = 134217984;
  *v0 = v4;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v5, v6, "Battery UI Response Type Utilities: Before clamping: energyEntry[PLBatteryUIAppEnergyValueKey]=%f");
}

+ (void)applyStaticNameTransformation:withResponderService:.cold.2()
{
  OUTLINED_FUNCTION_3_0();
  v3 = [v2 objectForKeyedSubscript:@"PLBatteryUIAppEnergyValueKey"];
  [v3 doubleValue];
  *v1 = 134217984;
  *v0 = v4;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v5, v6, "Battery UI Response Type Utilities: After clamping: energyEntry[PLBatteryUIAppEnergyValueKey]=%f");
}

+ (void)energyEntryHasNegligibleEnergyDrain:(uint64_t)a3 filterArray:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_25EE51000, a1, a3, "skipping runtime filter for %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)getPluginBundleIDToEntryMapWithResponderService:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_25EE51000, a2, a3, "%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)getBundleIDToDisplayNameMapWithResponderService:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0(&dword_25EE51000, a2, a3, "installedAppEntries=%@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

+ (void)getBundleIDToDisplayNameMapWithResponderService:.cold.4()
{
  OUTLINED_FUNCTION_3_0();
  v3 = [v2 objectForKeyedSubscript:@"AppBundleId"];
  *v1 = 138412290;
  *v0 = v3;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v4, v5, "Battery UI Response Type Utilities: Skipping non system / non user bundleID=%@");
}

+ (void)getBundleIDToDisplayNameMapWithResponderService:.cold.5()
{
  OUTLINED_FUNCTION_3_0();
  v3 = [v2 bundleIdentifier];
  *v1 = 138412290;
  *v0 = v3;
  OUTLINED_FUNCTION_9(&dword_25EE51000, v4, v5, "Battery UI Response Type Utilities: LSApplicationRecord Skipping non system / non user bundleID=%@");
}

@end