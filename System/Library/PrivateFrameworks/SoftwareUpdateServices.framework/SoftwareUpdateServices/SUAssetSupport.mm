@interface SUAssetSupport
+ (BOOL)updateIsPreCRelease:(id)release;
+ (id)OSVersionComponent:(unint64_t)component osVersion:(id)version;
+ (id)_gestaltValueForKey:(__CFString *)key;
+ (id)assetDownloadOptionsForDocumentation;
+ (id)copyInstalledAssets;
+ (id)copySUAssetForAssetID:(id)d;
+ (id)defaultAssetDownloadOptionsWithPriority:(int)priority;
+ (id)filterSuAssets:(id)assets MatchingDescriptor:(id)descriptor;
+ (id)findAssetWithMatcher:(id)matcher localSearch:(BOOL)search releaseDate:(id *)date error:(id *)error;
+ (id)findExactMatchInAssets:(id)assets forAssetId:(id)id;
+ (id)getInstalledDocumentationAssetFromSoftwareUpdateAssetIfExists:(id)exists;
+ (id)getLocalDefaultSoftwareUpdateAssetIfExistsWithReleaseDate:(id *)date;
+ (id)queryMetaDataOfType:(id)type WithFilter:(id)filter installedOnly:(BOOL)only error:(id *)error;
+ (id)tryCreateDescriptorFromSoftwareUpdateAsset:(id)asset withReleaseDate:(id)date;
+ (int64_t)requestCatalogDownload:(id)download;
+ (void)_cleanupAllAssetsOfType:(id)type;
+ (void)_queue_cleanupAllInstalledAssetsOfType:(id)type;
+ (void)cleanupAllInstalledAssets:(id)assets;
+ (void)cleanupAllSoftwareUpdateAndRelatedAssets;
+ (void)cleanupAllSoftwareUpdateAssets;
+ (void)purgeMSUUpdate:(id)update;
+ (void)setAssetQueryFilters:(id)filters;
+ (void)setSUFilters:(id)filters;
@end

@implementation SUAssetSupport

+ (id)tryCreateDescriptorFromSoftwareUpdateAsset:(id)asset withReleaseDate:(id)date
{
  if (!asset)
  {
    v64 = @"Unable to create descriptor from nil asset.";
    goto LABEL_82;
  }

  if (![asset attributes] || !objc_msgSend(objc_msgSend(asset, "attributes"), "count"))
  {
    v64 = @"Unable to create descriptor from asset without attributes.";
LABEL_82:
    SULogDebug(v64, a2, asset, date, v4, v5, v6, v7, v104);
    return 0;
  }

  v10 = objc_alloc_init(SUDescriptor);
  attributes = [asset attributes];
  assetId = [asset assetId];
  v12 = [attributes objectForKey:@"OSVersion"];
  if (v12)
  {
    v13 = v12;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v13 length] >= 4 && objc_msgSend(v13, "rangeOfString:options:range:", @"9.9.", 0, 0, 4) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v13 = [v13 stringByReplacingCharactersInRange:0 withString:{4, &stru_287B45B60}];
        SULogInfo(@"9.9. replaced. New version string: %@", v14, v15, v16, v17, v18, v19, v20, v13);
      }

      [(SUDescriptor *)v10 setProductVersion:v13];
    }
  }

  v21 = [attributes objectForKey:@"Build"];
  if (v21)
  {
    v22 = v21;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUDescriptor *)v10 setProductBuildVersion:v22];
    }
  }

  v23 = [attributes objectForKey:@"SUProductSystemName"];
  if (v23)
  {
    v24 = v23;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUDescriptor *)v10 setProductSystemName:v24];
    }
  }

  v25 = [attributes objectForKey:@"ReleaseType"];
  if (v25)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUDescriptor *)v10 setReleaseType:v25];
    }
  }

  v26 = [attributes objectForKey:@"SUPublisher"];
  if (v26)
  {
    v27 = v26;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUDescriptor *)v10 setPublisher:v27];
    }
  }

  v28 = [attributes objectForKey:@"AllowableOTA"];
  if (v28)
  {
    v29 = v28;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUDescriptor setDownloadable:](v10, "setDownloadable:", [v29 BOOLValue]);
    }
  }

  v30 = [attributes objectForKey:@"AutomaticDownloadOver3G"];
  if (v30)
  {
    v31 = v30;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUDescriptor setAutoDownloadAllowableForCellular:](v10, "setAutoDownloadAllowableForCellular:", [v31 BOOLValue]);
    }
  }

  v32 = [attributes objectForKey:@"AllowableOverCellular"];
  if (v32)
  {
    v33 = v32;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUDescriptor setDownloadableOverCellular:](v10, "setDownloadableOverCellular:", [v33 BOOLValue]);
    }
  }

  v34 = [attributes objectForKey:*MEMORY[0x277D28908]];
  if (v34)
  {
    v35 = v34;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUDescriptor setDownloadSize:](v10, "setDownloadSize:", [v35 unsignedLongLongValue]);
    }
  }

  v36 = [attributes objectForKey:*MEMORY[0x277D28920]];
  if (v36)
  {
    v37 = v36;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUDescriptor _setUnarchiveSize:](v10, "_setUnarchiveSize:", [v37 unsignedLongLongValue]);
    }
  }

  v38 = [attributes objectForKey:@"ActualMinimumSystemPartition"];
  if (v38)
  {
    v39 = v38;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUDescriptor setMinimumSystemPartitionSize:](v10, "setMinimumSystemPartitionSize:", [v39 unsignedLongLongValue] << 20);
    }
  }

  v40 = [attributes objectForKey:*MEMORY[0x277D28910]];
  if (v40)
  {
    v41 = v40;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUDescriptor _setStreamingZipCapable:](v10, "_setStreamingZipCapable:", [v41 BOOLValue]);
    }
  }

  v42 = [attributes objectForKey:@"SUDisableSiriVoiceDeletion"];
  if (v42)
  {
    v43 = v42;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUDescriptor _setDisableSiriVoiceDeletion:](v10, "_setDisableSiriVoiceDeletion:", [v43 BOOLValue]);
    }
  }

  v44 = [attributes objectForKey:@"SUDisableCDLevel4"];
  if (v44)
  {
    v45 = v44;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUDescriptor _setDisableCDLevel4:](v10, "_setDisableCDLevel4:", [v45 BOOLValue]);
    }
  }

  v46 = [attributes objectForKey:@"SUDisableAppDemotion"];
  if (v46)
  {
    v47 = v46;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUDescriptor _setDisableAppDemotion:](v10, "_setDisableAppDemotion:", [v47 BOOLValue]);
    }
  }

  v48 = [attributes objectForKey:@"SUInstallTonightEnabled"];
  if (v48)
  {
    v49 = v48;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([v49 BOOLValue] & 1) == 0)
    {
      [(SUDescriptor *)v10 _setDisableInstallTonight:1];
    }
  }

  v50 = [attributes objectForKey:@"Ramp"];
  if (v50)
  {
    v51 = v50;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v51 BOOLValue])
      {
        [(SUDescriptor *)v10 setRampEnabled:1];
      }
    }
  }

  v52 = [attributes objectForKey:@"GranularlyRamped"];
  if (v52)
  {
    v53 = v52;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v53 BOOLValue])
      {
        [(SUDescriptor *)v10 setGranularlyRamped:1];
      }
    }
  }

  v54 = [attributes objectForKey:@"AutoUpdate"];
  if (v54)
  {
    v55 = v54;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v55 BOOLValue])
      {
        [(SUDescriptor *)v10 setAutoUpdateEnabled:1];
      }
    }
  }

  v56 = [attributes objectForKey:@"SystemPartitionPadding"];
  if (v56)
  {
    v57 = v56;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUDescriptor *)v10 setSystemPartitionPadding:v57];
    }
  }

  v58 = [attributes objectForKey:@"SEPDigest"];
  if (v58)
  {
    v59 = v58;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUDescriptor *)v10 setSEPDigest:v59];
    }
  }

  v60 = [attributes objectForKey:@"RSEPDigest"];
  if (v60)
  {
    v61 = v60;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUDescriptor *)v10 setRSEPDigest:v61];
    }
  }

  v62 = [attributes objectForKey:@"SEPTBMDigests"];
  if (v62)
  {
    v63 = v62;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUDescriptor *)v10 setSEPTBMDigest:v63];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v65 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v63 options:1];
        if (v65)
        {
          v66 = v65;
          [(SUDescriptor *)v10 setSEPTBMDigest:v65];
        }
      }
    }
  }

  v67 = [attributes objectForKey:@"RSEPTBMDigests"];
  if (v67)
  {
    v68 = v67;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUDescriptor *)v10 setRSEPTBMDigest:v68];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v69 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v68 options:1];
        if (v69)
        {
          v70 = v69;
          [(SUDescriptor *)v10 setRSEPTBMDigest:v69];
        }
      }
    }
  }

  if (date)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUDescriptor *)v10 setReleaseDate:date];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v71 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v71 setDateFormat:@"yyyy-MM-dd"];
        v72 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
        [v71 setLocale:v72];
        v73 = [v71 dateFromString:date];

        if (v73)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(SUDescriptor *)v10 setReleaseDate:v73];
          }
        }
      }
    }
  }

  v74 = [attributes objectForKey:@"MDMDelayInterval"];
  if (v74)
  {
    v75 = v74;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUDescriptor setMdmDelayInterval:](v10, "setMdmDelayInterval:", [v75 unsignedLongLongValue]);
    }
  }

  v76 = [attributes objectForKey:@"SetupCritical"];
  if (v76)
  {
    v77 = v76;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUDescriptor *)v10 setSetupCritical:v77];
    }
  }

  v78 = [attributes objectForKey:@"SetupCriticalCellularOverride"];
  if (v78)
  {
    v79 = v78;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v79 BOOLValue])
      {
        v80 = @"WifiAndCellular";
      }

      else
      {
        v80 = @"WifiOnly";
      }

      [(SUDescriptor *)v10 setCriticalDownloadPolicy:v80];
    }
  }

  v81 = [attributes objectForKey:@"SetupCriticalUpdateOutOfBoxOnly"];
  if (v81)
  {
    v82 = v81;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUDescriptor setCriticalOutOfBoxOnly:](v10, "setCriticalOutOfBoxOnly:", [v82 BOOLValue]);
    }
  }

  v83 = [attributes objectForKey:@"PrerequisiteBuild"];
  if (v83)
  {
    v84 = v83;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUDescriptor *)v10 setPrerequisiteBuild:v84];
    }
  }

  v85 = [attributes objectForKey:@"PrerequisiteOSVersion"];
  if (v85)
  {
    v86 = v85;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUDescriptor *)v10 setPrerequisiteOS:v86];
    }
  }

  v87 = [attributes objectForKey:@"__HideInstallAlert"];
  if (v87 && (v88 = v87, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    bOOLValue = [v88 BOOLValue];
  }

  else
  {
    if ([v25 isEqualToString:@"Beta"])
    {
      goto LABEL_127;
    }

    bOOLValue = [SUAssetSupport updateIsPreCRelease:[(SUDescriptor *)v10 productVersion]];
  }

  [(SUDescriptor *)v10 setHideInstallAlert:bOOLValue];
LABEL_127:
  v90 = [attributes objectForKey:@"ForcePasscodeRequired"];
  if (v90)
  {
    v91 = v90;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SUDescriptor setForcePasscodeRequired:](v10, "setForcePasscodeRequired:", [v91 BOOLValue]);
    }
  }

  if (assetId)
  {
    [(SUDescriptor *)v10 setAssetID:?];
  }

  v92 = [attributes objectForKey:@"MacBuddyEligibleUpdate"];
  if (v92)
  {
    v93 = v92;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(SUDescriptor *)v10 setMandatoryUpdateEligible:1];
      v94 = [v93 objectForKey:@"VersionMin"];
      if (v94)
      {
        v95 = v94;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SUDescriptor *)v10 setMandatoryUpdateVersionMin:v95];
        }
      }

      v96 = [v93 objectForKey:@"VersionMax"];
      if (v96)
      {
        v97 = v96;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(SUDescriptor *)v10 setMandatoryUpdateVersionMin:v97];
        }
      }

      v98 = [v93 objectForKey:@"Optional"];
      if (v98)
      {
        v99 = v98;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          -[SUDescriptor setMandatoryUpdateOptional:](v10, "setMandatoryUpdateOptional:", [v99 BOOLValue]);
        }
      }

      v100 = [v93 objectForKey:@"RestrictedToOutOfTheBox"];
      if (v100)
      {
        v101 = v100;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          -[SUDescriptor setMandatoryUpdateRestrictedToOutOfTheBox:](v10, "setMandatoryUpdateRestrictedToOutOfTheBox:", [v101 BOOLValue]);
        }
      }
    }
  }

  MSUAssetCalculateApplySize();
  MSUAssetCalculatePrepareSize();
  [(SUDescriptor *)v10 _setMsuPrepareSize:0];
  [(SUDescriptor *)v10 setInstallationSize:0];
  if ([asset isEmergencyUpdate])
  {
    v102 = 3;
  }

  else
  {
    v102 = 1;
    if (![attributes objectForKey:@"PrerequisiteBuild"])
    {
      if ([attributes objectForKey:@"PrerequisiteOSVersion"])
      {
        v102 = 1;
      }

      else
      {
        v102 = 2;
      }
    }
  }

  [(SUDescriptor *)v10 setUpdateType:v102];
  return v10;
}

+ (void)_queue_cleanupAllInstalledAssetsOfType:(id)type
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:type];
  [v3 returnTypes:1];
  [v3 setDoNotBlockBeforeFirstUnlock:1];
  queryMetaDataSync = [v3 queryMetaDataSync];
  if (queryMetaDataSync)
  {
    SULogInfo(@"queryMetaDataSync failed in _queue_cleanupAllInstalledAssetsOfType: %ld", v5, v6, v7, v8, v9, v10, v11, queryMetaDataSync);
  }

  else
  {
    results = [v3 results];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = [results countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(results);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          if ([v17 purgeSync])
          {
            SULogInfo(@"purgeSync for asset:%@ failed in _queue_cleanupAllInstalledAssetsOfType: %ld", v18, v19, v20, v21, v22, v23, v24, v17);
          }
        }

        v14 = [results countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v14);
    }
  }

  v25 = *MEMORY[0x277D85DE8];
}

+ (void)cleanupAllInstalledAssets:(id)assets
{
  v4 = +[SUUtility taskQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__SUAssetSupport_cleanupAllInstalledAssets___block_invoke;
  block[3] = &unk_279CAAC18;
  block[4] = assets;
  dispatch_async(v4, block);
}

uint64_t __44__SUAssetSupport_cleanupAllInstalledAssets___block_invoke(uint64_t a1)
{
  [SUAssetSupport _queue_cleanupAllInstalledAssetsOfType:@"com.apple.MobileAsset.SoftwareUpdate"];
  [SUAssetSupport _queue_cleanupAllInstalledAssetsOfType:@"com.apple.MobileAsset.SoftwareUpdateDocumentation"];
  [SUAssetSupport _queue_cleanupAllInstalledAssetsOfType:*MEMORY[0x277D64318]];
  result = *(a1 + 32);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

+ (void)_cleanupAllAssetsOfType:(id)type
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:type];
  [v5 returnTypes:1];
  if (([type isEqualToString:@"com.apple.MobileAsset.SoftwareUpdate"] & 1) != 0 || objc_msgSend(type, "isEqualToString:", *MEMORY[0x277D64318]))
  {
    [self setSUFilters:v5];
  }

  queryMetaDataSync = [v5 queryMetaDataSync];
  if (queryMetaDataSync)
  {
    SULogInfo(@"queryMetaDataSync failed in _cleanupAllAssetsOfType: %ld", v7, v8, v9, v10, v11, v12, v13, queryMetaDataSync);
  }

  else
  {
    results = [v5 results];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v15 = [results countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(results);
          }

          [*(*(&v20 + 1) + 8 * v18++) cleanupAsset];
        }

        while (v16 != v18);
        v16 = [results countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v16);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

+ (void)cleanupAllSoftwareUpdateAssets
{
  v2 = +[SUUtility taskQueue];

  dispatch_async(v2, &__block_literal_global_1);
}

uint64_t __48__SUAssetSupport_cleanupAllSoftwareUpdateAssets__block_invoke()
{
  [SUAssetSupport _cleanupAllAssetsOfType:@"com.apple.MobileAsset.SoftwareUpdate"];
  v0 = *MEMORY[0x277D64318];

  return [SUAssetSupport _cleanupAllAssetsOfType:v0];
}

+ (void)cleanupAllSoftwareUpdateAndRelatedAssets
{
  v3 = +[SUUtility taskQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__SUAssetSupport_cleanupAllSoftwareUpdateAndRelatedAssets__block_invoke;
  block[3] = &unk_279CAAC40;
  block[4] = self;
  dispatch_async(v3, block);
}

uint64_t __58__SUAssetSupport_cleanupAllSoftwareUpdateAndRelatedAssets__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) getLocalDefaultSoftwareUpdateAssetIfExists];
  if (v1)
  {
    v2 = v1;
    v11 = 0;
    if (([objc_msgSend(objc_alloc(MEMORY[0x277D292C0]) initWithUpdateAsset:{v1), "cancel:", &v11}] & 1) == 0)
    {
      SULogInfo(@"Unable to cleanup brain for default asset: %@", v3, v4, v5, v6, v7, v8, v9, v2);
    }
  }

  [SUAssetSupport _cleanupAllAssetsOfType:@"com.apple.MobileAsset.SoftwareUpdate"];
  [SUAssetSupport _cleanupAllAssetsOfType:@"com.apple.MobileAsset.SoftwareUpdateDocumentation"];
  [SUAssetSupport _cleanupAllAssetsOfType:*MEMORY[0x277D64318]];
  return +[SUUtility purgeV1SUAssets];
}

+ (int64_t)requestCatalogDownload:(id)download
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 3;
  v4 = dispatch_semaphore_create(0);
  v5 = objc_opt_new();
  [download modifyMADownloadOptions:v5];
  assetType = [download assetType];
  SULogInfo(@"requesting %@ catalog download", v7, v8, v9, v10, v11, v12, v13, assetType);
  v14 = MEMORY[0x277D289C0];
  assetType2 = [download assetType];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __41__SUAssetSupport_requestCatalogDownload___block_invoke;
  v19[3] = &unk_279CAAC68;
  v19[5] = v4;
  v19[6] = &v20;
  v19[4] = download;
  [v14 startCatalogDownload:assetType2 options:v5 then:v19];
  v16 = dispatch_time(0, 90000000000);
  dispatch_semaphore_wait(v4, v16);
  dispatch_release(v4);

  v17 = v21[3];
  _Block_object_dispose(&v20, 8);
  return v17;
}

intptr_t __41__SUAssetSupport_requestCatalogDownload___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 48) + 8) + 24) = a2;
  v3 = *(*(*(a1 + 48) + 8) + 24);
  switch(v3)
  {
    case 0:
      goto LABEL_4;
    case 18:
      v28 = [*(a1 + 32) assetType];
      SULogInfo(@"Pallas found no matching asset for %@", v11, v12, v13, v14, v15, v16, v17, v28);
      break;
    case 10:
LABEL_4:
      v27 = [*(a1 + 32) assetType];
      SULogInfo(@"Successfully downloaded %@ catalog", v4, v5, v6, v7, v8, v9, v10, v27);
      break;
    default:
      v29 = [*(a1 + 32) assetType];
      SULogInfo(@"failed to download %@ catalog: %ld", v18, v19, v20, v21, v22, v23, v24, v29);
      break;
  }

  v25 = *(a1 + 40);

  return dispatch_semaphore_signal(v25);
}

+ (id)_gestaltValueForKey:(__CFString *)key
{
  v3 = MGCopyAnswer();

  return v3;
}

+ (void)setAssetQueryFilters:(id)filters
{
  v37[5] = *MEMORY[0x277D85DE8];
  if ([filters assetType] == @"com.apple.MobileAsset.SoftwareUpdate")
  {
    v5 = [self _gestaltValueForKey:@"ProductType"];
    v6 = [self _gestaltValueForKey:@"ReleaseType"];
    v7 = [self _gestaltValueForKey:@"BuildVersion"];
    v8 = [self _gestaltValueForKey:@"ProductVersion"];
    v9 = [self _gestaltValueForKey:@"HWModelStr"];
    null = [MEMORY[0x277CBEB68] null];
    v11 = null;
    if (!v6)
    {
      v6 = null;
    }

    if ([+[SUPreferences forceFullReplacement] sharedInstance]
    {
      v12 = [MEMORY[0x277CBEB18] arrayWithObjects:{v11, 0}];
      v13 = [MEMORY[0x277CBEB18] arrayWithObjects:{v11, 0, v30}];
    }

    else
    {
      v12 = [MEMORY[0x277CBEB18] arrayWithObjects:{v7, v11, 0}];
      v13 = [MEMORY[0x277CBEB18] arrayWithObjects:{v8, v11, 0}];
    }

    v14 = v13;
    v36[0] = @"SupportedDevices";
    v37[0] = [MEMORY[0x277CBEB18] arrayWithObject:v5];
    v36[1] = @"SupportedDeviceModels";
    v37[1] = [MEMORY[0x277CBEB18] arrayWithObjects:{v11, v9, 0}];
    v36[2] = @"ReleaseType";
    v37[2] = [MEMORY[0x277CBEB18] arrayWithObject:v6];
    v37[3] = v12;
    v36[3] = @"PrerequisiteBuild";
    v36[4] = @"PrerequisiteOSVersion";
    v37[4] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:5];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    allKeys = [v15 allKeys];
    v17 = [allKeys countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v32;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v32 != v19)
          {
            objc_enumerationMutation(allKeys);
          }

          v21 = *(*(&v31 + 1) + 8 * i);
          if ([filters addKeyValueArray:v21 with:{objc_msgSend(v15, "objectForKey:", v21)}])
          {
            SULogInfo(@"error setting filter for: %@", v22, v23, v24, v25, v26, v27, v28, v21);
          }
        }

        v18 = [allKeys countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v18);
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

+ (void)setSUFilters:(id)filters
{
  v29[2] = *MEMORY[0x277D85DE8];
  if ([filters assetType] == @"com.apple.MobileAsset.SoftwareUpdate")
  {
    v5 = [self _gestaltValueForKey:@"ProductType"];
    v6 = [self _gestaltValueForKey:@"HWModelStr"];
    null = [MEMORY[0x277CBEB68] null];
    v28[0] = @"SupportedDevices";
    v28[1] = @"SupportedDeviceModels";
    v29[0] = [MEMORY[0x277CBEB18] arrayWithObject:v5];
    v29[1] = [MEMORY[0x277CBEB18] arrayWithObjects:{null, v6, 0}];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    allKeys = [v8 allKeys];
    v10 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v12)
          {
            objc_enumerationMutation(allKeys);
          }

          v14 = *(*(&v23 + 1) + 8 * i);
          if ([filters addKeyValueArray:v14 with:{objc_msgSend(v8, "objectForKey:", v14)}])
          {
            SULogInfo(@"error setting filter for: %@", v15, v16, v17, v18, v19, v20, v21, v14);
          }
        }

        v11 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
}

+ (id)copySUAssetForAssetID:(id)d
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.SoftwareUpdate"];
  [v4 returnTypes:2];
  [SUAssetSupport setSUFilters:v4];
  if ([v4 queryMetaDataSync])
  {
    SULogInfo(@"Failed to query matching assetID: %@ QueryResult: %ld", v5, v6, v7, v8, v9, v10, v11, d);
LABEL_3:
    v19 = 0;
    v20 = @"Failed to find asset matching assetID: %@";
    goto LABEL_4;
  }

  results = [v4 results];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = [results countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (!v24)
  {
    goto LABEL_3;
  }

  v25 = v24;
  v26 = *v31;
LABEL_7:
  v27 = 0;
  while (1)
  {
    if (*v31 != v26)
    {
      objc_enumerationMutation(results);
    }

    v28 = *(*(&v30 + 1) + 8 * v27);
    if ([objc_msgSend(v28 "assetId")])
    {
      break;
    }

    if (v25 == ++v27)
    {
      v25 = [results countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v25)
      {
        goto LABEL_7;
      }

      goto LABEL_3;
    }
  }

  v29 = v28;
  if (!v29)
  {
    goto LABEL_3;
  }

  v19 = v29;
  v20 = @"Found SU asset matching assetID: %@";
LABEL_4:
  SULogInfo(v20, v12, v13, v14, v15, v16, v17, v18, d);

  v21 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (id)copyInstalledAssets
{
  v2 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.SoftwareUpdate"];
  [v2 returnTypes:1];
  [v2 setDoNotBlockBeforeFirstUnlock:1];
  queryInstalledAssetIds = [v2 queryInstalledAssetIds];
  if (queryInstalledAssetIds)
  {
    SULogInfo(@"Failed to query for installed builds: %ld", v4, v5, v6, v7, v8, v9, v10, queryInstalledAssetIds);
    assetIds = 0;
  }

  else
  {
    assetIds = [v2 assetIds];
    v12 = [assetIds count];
    [assetIds count];
    SULogInfo(@"MobileAsset found %lu installed build%s: assetIDs: %@", v13, v14, v15, v16, v17, v18, v19, v12);
  }

  return assetIds;
}

+ (id)findAssetWithMatcher:(id)matcher localSearch:(BOOL)search releaseDate:(id *)date error:(id *)error
{
  v70 = *MEMORY[0x277D85DE8];
  if (!matcher)
  {
    [SUAssetSupport findAssetWithMatcher:a2 localSearch:self releaseDate:? error:?];
  }

  v68 = 0;
  if (search || ((v11 = [SUAssetSupport requestCatalogDownload:matcher]) != 0 ? (v12 = v11 == 10) : (v12 = 1), v12))
  {
    v13 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:{objc_msgSend(matcher, "assetType")}];
    [v13 augmentResultsWithState:1];
    [self setAssetQueryFilters:v13];
    queryMetaDataSync = [v13 queryMetaDataSync];
    if (queryMetaDataSync)
    {
      SULogInfo(@"asset query failed: %ld", v15, v16, v17, v18, v19, v20, v21, queryMetaDataSync);
      v68 = [SUUtility errorWithCode:58];
      if (v68)
      {
        v22 = 0;
        goto LABEL_12;
      }
    }

    else
    {
      results = [v13 results];
      v25 = [results count];
      SULogInfo(@"MobileAsset returned %lu matching assets", v26, v27, v28, v29, v30, v31, v32, v25);
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v33 = [results countByEnumeratingWithState:&v64 objects:v69 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v65;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v65 != v35)
            {
              objc_enumerationMutation(results);
            }

            attributes = [*(*(&v64 + 1) + 8 * i) attributes];
            SULogInfo(@"Asset info: %@", v38, v39, v40, v41, v42, v43, v44, attributes);
          }

          v34 = [results countByEnumeratingWithState:&v64 objects:v69 count:16];
        }

        while (v34);
      }

      if (results)
      {
        v22 = [matcher findMatchFromCandidates:results error:&v68];
        if (v22)
        {
          if ([v13 postedDate])
          {
            postedDate = [v13 postedDate];
          }

          else
          {
            SULogInfo(@"Asset query did not return posting date. Setting posting date to now", v45, v46, v47, v48, v49, v50, v51, v63);
            postedDate = [MEMORY[0x277CBEAA8] date];
          }

          v62 = postedDate;
          if (date)
          {
            SULogInfo(@"release date of update is %@", v53, v54, v55, v56, v57, v58, v59, postedDate);
            *date = v62;
          }
        }

LABEL_12:
        v23 = v68;
        if (!v68)
        {
LABEL_14:

          goto LABEL_31;
        }

LABEL_13:
        [SUUtility assignError:error withError:v23 translate:0];
        goto LABEL_14;
      }
    }

    v23 = [SUUtility errorWithCode:-1];
    v22 = 0;
    v68 = v23;
    if (!v23)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (v11 != 18)
  {
    [SUUtility assignError:error withError:[SUUtility errorWithCode:57] translate:0];
  }

  v22 = 0;
LABEL_31:
  v60 = *MEMORY[0x277D85DE8];
  return v22;
}

+ (id)findExactMatchInAssets:(id)assets forAssetId:(id)id
{
  v4 = 0;
  v27 = *MEMORY[0x277D85DE8];
  if (assets && id)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v7 = [assets countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(assets);
          }

          v11 = *(*(&v22 + 1) + 8 * i);
          if ([id isEqualToString:{objc_msgSend(v11, "assetId")}])
          {
            v4 = v11;
            assetId = [v11 assetId];
            SULogInfo(@"Found asset matching assetId:%@", v13, v14, v15, v16, v17, v18, v19, assetId);
            goto LABEL_14;
          }
        }

        v8 = [assets countByEnumeratingWithState:&v22 objects:v26 count:16];
        v4 = 0;
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v4 = 0;
    }
  }

LABEL_14:
  v20 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (id)filterSuAssets:(id)assets MatchingDescriptor:(id)descriptor
{
  assetsCopy = assets;
  v89 = *MEMORY[0x277D85DE8];
  v6 = [assets count];
  [assetsCopy count];
  SULogInfo(@"Found %lu asset%s matching descriptor", v7, v8, v9, v10, v11, v12, v13, v6);
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v15 = [assetsCopy countByEnumeratingWithState:&v83 objects:v88 count:16];
  if (v15)
  {
    v16 = v15;
    v78 = *v84;
    v75 = assetsCopy;
    v76 = v14;
    do
    {
      v17 = 0;
      v77 = v16;
      do
      {
        if (*v84 != v78)
        {
          objc_enumerationMutation(assetsCopy);
        }

        v18 = *(*(&v83 + 1) + 8 * v17);
        v19 = [v18 assetProperty:@"PrerequisiteBuild"];
        v20 = [v18 assetProperty:@"PrerequisiteOSVersion"];
        if (![descriptor prerequisiteBuild] || !objc_msgSend(descriptor, "prerequisiteOS"))
        {
          if (v19 | v20)
          {
            goto LABEL_27;
          }

LABEL_26:
          [v14 addObject:v18];
          goto LABEL_27;
        }

        if ([v19 isEqual:{objc_msgSend(descriptor, "prerequisiteBuild")}] && objc_msgSend(v20, "isEqual:", objc_msgSend(descriptor, "prerequisiteOS")))
        {
          goto LABEL_26;
        }

        v21 = [v18 assetProperty:@"ComboAsset"];
        if (v21)
        {
          v22 = v21;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v81 = 0u;
            v82 = 0u;
            v79 = 0u;
            v80 = 0u;
            v30 = [v22 countByEnumeratingWithState:&v79 objects:v87 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v80;
              do
              {
                for (i = 0; i != v31; ++i)
                {
                  if (*v80 != v32)
                  {
                    objc_enumerationMutation(v22);
                  }

                  v34 = *(*(&v79 + 1) + 8 * i);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v42 = [v34 valueForKey:@"PrerequisiteBuild"];
                    v43 = [v34 valueForKey:@"PrerequisiteOSVersion"];
                    if ([v42 isEqual:{objc_msgSend(descriptor, "prerequisiteBuild")}] && objc_msgSend(v43, "isEqual:", objc_msgSend(descriptor, "prerequisiteOS")))
                    {
                      v14 = v76;
                      [v76 addObject:v18];
                      assetsCopy = v75;
                      v16 = v77;
                      goto LABEL_27;
                    }
                  }

                  else
                  {
                    SULogInfo(@"ComboAsset array item is not a dictionary, skipping", v35, v36, v37, v38, v39, v40, v41, v71);
                  }
                }

                v31 = [v22 countByEnumeratingWithState:&v79 objects:v87 count:16];
                assetsCopy = v75;
                v14 = v76;
                v16 = v77;
              }

              while (v31);
            }
          }

          else
          {
            SULogInfo(@"ComboAsset value is not an array, skipping", v23, v24, v25, v26, v27, v28, v29, v71);
          }
        }

LABEL_27:
        ++v17;
      }

      while (v17 != v16);
      v44 = [assetsCopy countByEnumeratingWithState:&v83 objects:v88 count:16];
      v16 = v44;
    }

    while (v44);
  }

  v45 = [v14 count];
  [v14 count];
  SULogInfo(@"Found %lu asset%s matching descriptor prerequisite build & version", v46, v47, v48, v49, v50, v51, v52, v45);
  v53 = [self findExactMatchInAssets:v14 forAssetId:{objc_msgSend(descriptor, "assetID")}];
  if (!v53)
  {
    firstObject = [v14 firstObject];
    v53 = firstObject;
    if (firstObject)
    {
      assetId = [firstObject assetId];
      SULogInfo(@"Taking the first asset, assetId:%@", v62, v63, v64, v65, v66, v67, v68, assetId);
    }

    else
    {
      SULogInfo(@"Could not find matching asset", v55, v56, v57, v58, v59, v60, v61, v72);
    }
  }

  v69 = *MEMORY[0x277D85DE8];
  return v53;
}

+ (id)queryMetaDataOfType:(id)type WithFilter:(id)filter installedOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v50 = *MEMORY[0x277D85DE8];
  v8 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:type];
  [v8 setDoNotBlockBeforeFirstUnlock:1];
  if (onlyCopy)
  {
    [v8 returnTypes:1];
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  allKeys = [filter allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v46;
    do
    {
      v13 = 0;
      do
      {
        if (*v46 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v45 + 1) + 8 * v13);
        v15 = [filter objectForKey:v14];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          if (![v8 addKeyValueArray:v14 with:v15])
          {
            goto LABEL_12;
          }

LABEL_11:
          SULogInfo(@"error setting filter for: %@", v16, v17, v18, v19, v20, v21, v22, v14);
          goto LABEL_12;
        }

        if ([v8 addKeyValuePair:v14 with:v15])
        {
          goto LABEL_11;
        }

LABEL_12:
        ++v13;
      }

      while (v11 != v13);
      v23 = [allKeys countByEnumeratingWithState:&v45 objects:v49 count:16];
      v11 = v23;
    }

    while (v23);
  }

  queryMetaDataSync = [v8 queryMetaDataSync];
  if (queryMetaDataSync && (queryMetaDataSync == 9 ? (v32 = !onlyCopy) : (v32 = 1), v32))
  {
    if (error)
    {
      SULogInfo(@"asset query failed: %ld", v25, v26, v27, v28, v29, v30, v31, queryMetaDataSync);
      results = 0;
      *error = [SUUtility errorWithCode:58];
    }

    else
    {
      results = 0;
    }
  }

  else
  {
    results = [v8 results];
    v34 = [results count];
    SULogInfo(@"MobileAsset returned %lu matching assets", v35, v36, v37, v38, v39, v40, v41, v34);
  }

  v42 = *MEMORY[0x277D85DE8];
  return results;
}

+ (void)purgeMSUUpdate:(id)update
{
  v4 = +[SUUtility taskQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SUAssetSupport_purgeMSUUpdate___block_invoke;
  block[3] = &unk_279CAAC18;
  block[4] = update;
  dispatch_async(v4, block);
}

void __33__SUAssetSupport_purgeMSUUpdate___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  SULogInfo(@"Attempting to purge prepared and suspended update from disk.", v3, v4, v5, v6, v7, v8, v9, v11);
  MSUPurgeSuspendedUpdate();
  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, 0);
  }

  objc_autoreleasePoolPop(v2);
}

+ (id)getLocalDefaultSoftwareUpdateAssetIfExistsWithReleaseDate:(id *)date
{
  v4 = [SUSoftwareUpdateAssetMatcher matcherForCurrentDeviceWithInterestedStates:0];
  [v4 setCompareWithTatsuForEligibility:0];

  return [SUAssetSupport findAssetWithMatcher:v4 localSearch:1 releaseDate:date error:0];
}

+ (id)getInstalledDocumentationAssetFromSoftwareUpdateAssetIfExists:(id)exists
{
  if (!exists)
  {
    [(SUAssetSupport *)a2 getInstalledDocumentationAssetFromSoftwareUpdateAssetIfExists:self];
  }

  if (([objc_msgSend(exists "assetType")] & 1) == 0)
  {
    [(SUAssetSupport *)a2 getInstalledDocumentationAssetFromSoftwareUpdateAssetIfExists:self];
  }

  v6 = [SUDocumentationAssetMatcher matcherForInstalledDocumentationFromAsset:exists];

  return [SUAssetSupport findAssetWithMatcher:v6 localSearch:1 error:0];
}

+ (id)defaultAssetDownloadOptionsWithPriority:(int)priority
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v5 = dictionary;
  if (priority == 1)
  {
    v6 = MEMORY[0x277D28978];
    goto LABEL_5;
  }

  if (priority == 2)
  {
    v6 = MEMORY[0x277D28970];
LABEL_5:
    [dictionary setSafeObject:*v6 forKey:*MEMORY[0x277D28960]];
  }

  return v5;
}

+ (id)assetDownloadOptionsForDocumentation
{
  v2 = [self defaultAssetDownloadOptionsWithPriority:2];
  v3 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v2 setSafeObject:v3 forKey:*MEMORY[0x277D28950]];
  v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v2 setSafeObject:v4 forKey:*MEMORY[0x277D28928]];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v2 setSafeObject:v5 forKey:*MEMORY[0x277D28930]];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v2 setSafeObject:v6 forKey:*MEMORY[0x277D28938]];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v2 setSafeObject:v7 forKey:*MEMORY[0x277D28940]];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[SUNetworkMonitor isCellularDataRoamingEnabled](+[SUNetworkMonitor sharedInstance](SUNetworkMonitor, "sharedInstance"), "isCellularDataRoamingEnabled")}];
  [v2 setSafeObject:v8 forKey:*MEMORY[0x277D28948]];
  return v2;
}

+ (BOOL)updateIsPreCRelease:(id)release
{
  v3 = [SUAssetSupport minorOSVersion:release];
  if (v3)
  {
    LOBYTE(v3) = [v3 compare:&unk_287B6F340] == -1;
  }

  return v3;
}

+ (id)OSVersionComponent:(unint64_t)component osVersion:(id)version
{
  v5 = [version componentsSeparatedByString:@"."];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if ([v5 count] <= component)
  {
    return 0;
  }

  v7 = [v6 objectAtIndexedSubscript:component];
  v8 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v8 setNumberStyle:1];
  v9 = [v8 numberFromString:v7];

  return v9;
}

+ (uint64_t)findAssetWithMatcher:(uint64_t)a1 localSearch:(uint64_t)a2 releaseDate:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SUAssetSupport.m" lineNumber:681 description:@"Matcher must be non-nil for a query."];
}

+ (uint64_t)getInstalledDocumentationAssetFromSoftwareUpdateAssetIfExists:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SUAssetSupport.m" lineNumber:944 description:@"SoftwareUpdateAsset must be non-nil to fetch documentation from."];
}

+ (uint64_t)getInstalledDocumentationAssetFromSoftwareUpdateAssetIfExists:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SUAssetSupport.m" lineNumber:945 description:@"Asset passed in must be a software update asset"];
}

@end