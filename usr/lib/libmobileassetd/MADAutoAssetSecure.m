@interface MADAutoAssetSecure
+ (BOOL)doesDescriptorInvolveGrafting:(id)a3 forDescriptor:(id)a4;
+ (BOOL)doesDescriptorInvolvePersonalization:(id)a3 forDescriptor:(id)a4;
+ (BOOL)doesDescriptorInvolveSecureOperations:(id)a3 forDescriptor:(id)a4;
+ (BOOL)doesSetDescriptorInvolveSecureOperations:(id)a3 forSetDescriptor:(id)a4 withAutoAssetDescriptors:(id)a5;
+ (BOOL)graftOrMount:(id)a3 ofSecureAssetBundle:(id)a4 withAccessOptions:(id)a5 accessMechanismPtr:(int64_t *)a6 errorPtr:(id *)a7;
+ (BOOL)graftSecureAsset:(id)a3 secureAssetBundle:(id)a4 forSetDescriptor:(id)a5 forAssetID:(id)a6 withSelector:(id)a7 accessMechanismPtr:(int64_t *)a8 error:(id *)a9;
+ (BOOL)isCodeAsset:(id)a3 forDescriptor:(id)a4;
+ (BOOL)isErrorDueToDeviceBeingLocked:(id)a3;
+ (BOOL)isGraftedOrMounted:(id)a3 forDescriptor:(id)a4;
+ (BOOL)isPersonalizationOrGraftingRequired:(id)a3 forDescriptor:(id)a4;
+ (BOOL)isPersonalizationOrGraftingRequired:(id)a3 forSetDescriptor:(id)a4;
+ (BOOL)isPersonalizationRequired:(id)a3 forDescriptor:(id)a4;
+ (BOOL)isPersonalizationRequired:(id)a3 forSetDescriptor:(id)a4;
+ (BOOL)isPrePersonalized:(id)a3 forDescriptor:(id)a4;
+ (BOOL)isSecureAsset:(id)a3 forDescriptor:(id)a4;
+ (BOOL)readyToCommitPrePersonalized:(id)a3 forSetDescriptor:(id)a4;
+ (BOOL)ungraft:(id)a3 forDescriptor:(id)a4 ungraftingError:(id *)a5;
+ (BOOL)ungraftAll:(id)a3 forSetDescriptor:(id)a4 withAutoAssetDescriptors:(id)a5 ungraftingError:(id *)a6;
+ (BOOL)ungraftOrUnmount:(id)a3 ofSecureAssetBundle:(id)a4 withAccessOptions:(id)a5 accessMechanismPtr:(int64_t *)a6 errorPtr:(id *)a7;
+ (id)_secureAssetBundleSummary:(id)a3;
+ (id)autoAssetSecure;
+ (id)buildGraftFailureError:(id)a3 withUnderlyingError:(id)a4;
+ (id)commitPrePersonalizedSync:(id)a3 committingSelectors:(id)a4;
+ (id)getGraftPath:(id)a3 forDescriptor:(id)a4;
+ (id)latestDownloadedAtomicInstanceEntries:(id)a3 forSetDescriptor:(id)a4 withAvailableForUseError:(id *)a5;
+ (id)localContentURL:(id)a3 forAssetType:(id)a4 assetId:(id)a5;
+ (id)localContentURL:(id)a3 forDescriptor:(id)a4;
+ (id)secureAssetBundle:(id)a3 forSetAtomicEntry:(id)a4;
+ (id)secureBundleForAssetType:(id)a3 assetId:(id)a4;
+ (int64_t)secureOperationGraftOrMount:(int64_t)a3;
+ (int64_t)secureOperationUngraftOrUnmount:(int64_t)a3;
+ (void)commitPrePersonalized:(id)a3 committingSelectors:(id)a4 completion:(id)a5;
+ (void)depersonalizeIfSecure:(id)a3 forDescriptor:(id)a4;
+ (void)graftDownloaded:(id)a3 graftingDescriptor:(id)a4 setDescriptor:(id)a5 completion:(id)a6;
+ (void)mapToExclave:(id)a3 forDescriptor:(id)a4 completion:(id)a5;
+ (void)personalizeDownloaded:(id)a3 personalizingDescriptor:(id)a4 allowingNetwork:(BOOL)a5 committingPersonalization:(BOOL)a6 completion:(id)a7;
+ (void)personalizeGraftDownloaded:(id)a3 forDescriptor:(id)a4 setDescriptor:(id)a5 allowingNetwork:(BOOL)a6 completion:(id)a7;
+ (void)personalizeSetDownloaded:(id)a3 forSetDescriptor:(id)a4 shouldGraft:(BOOL)a5 allowingNetwork:(BOOL)a6 withAutoAssetDescriptors:(id)a7 completion:(id)a8;
+ (void)removeAllPersisted;
+ (void)ungraftIfNotAccessible:(id)a3;
- (MADAutoAssetSecure)init;
- (void)_personalizeGraftSetDownloaded:(id)a3 forSetDescriptor:(id)a4 allowingNetwork:(BOOL)a5 requiringPersonalization:(id)a6 requiringGrafting:(id)a7 shouldGraft:(BOOL)a8 completion:(id)a9;
@end

@implementation MADAutoAssetSecure

- (MADAutoAssetSecure)init
{
  v26.receiver = self;
  v26.super_class = MADAutoAssetSecure;
  v2 = [(MADAutoAssetSecure *)&v26 init];
  if (!v2)
  {
LABEL_13:
    v18 = v2;
    goto LABEL_17;
  }

  v3 = [@"com.apple.MobileAsset.daemon.secureProtectionQueue" UTF8String];
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create(v3, v4);
  secureProtectionQueue = v2->_secureProtectionQueue;
  v2->_secureProtectionQueue = v5;

  if (v2->_secureProtectionQueue)
  {
    if (__isPlatformVersionAtLeast(2, 26, 0, 0))
    {
      v7 = objc_alloc_init(NSMutableDictionary);
      [v7 setObject:@"Unsupported" forKey:&off_4F7178];
      [v7 setObject:@"UnexpectedFailure" forKey:&off_4F7190];
      [v7 setObject:@"InvalidArgument" forKey:&off_4F71A8];
      [v7 setObject:@"InvalidCommand" forKey:&off_4F71C0];
      [v7 setObject:@"Unimplemented" forKey:&off_4F71D8];
      [v7 setObject:@"None" forKey:&off_4F71F0];
      [v7 setObject:@"Alloc" forKey:&off_4F7208];
      [v7 setObject:@"Personalize" forKey:&off_4F7220];
      [v7 setObject:@"Depersonalize" forKey:&off_4F7238];
      [v7 setObject:@"Graft" forKey:&off_4F7250];
      [v7 setObject:@"Ungraft" forKey:&off_4F7268];
      [v7 setObject:@"Mount" forKey:&off_4F7280];
      [v7 setObject:@"Unmount" forKey:&off_4F7298];
      [v7 setObject:@"ExclavesUnsupported" forKey:&off_4F72B0];
      [v7 setObject:@"MapToExclaves" forKey:&off_4F72C8];
      [v7 setObject:@"UnmapFromExclaves" forKey:&off_4F72E0];
      [v7 setObject:@"DiskImageAttach" forKey:&off_4F72F8];
      [v7 setObject:@"DiskImageEject" forKey:&off_4F7310];
      [v7 setObject:@"CommitManifests" forKey:&off_4F7328];
      [v7 setObject:@"TrustCache" forKey:&off_4F7340];
      [v7 setObject:@"AccessNotPermitted" forKey:&off_4F7358];
      [v7 setObject:@"CompatibilityVersionMismatch" forKey:&off_4F7370];
      [v7 setObject:@"GraftPersonalizedBundleTicketDataNil" forKey:&off_4F7388];
      [v7 setObject:@"GraftCommittedTicketDataNil" forKey:&off_4F73A0];
      [v7 setObject:@"GraftTicketMismatch" forKey:&off_4F73B8];
      [v7 setObject:@"GraftNotPersonalizedForExclaves" forKey:&off_4F73D0];
      [v7 setObject:@"GraftPath" forKey:&off_4F73E8];
      [v7 setObject:@"GraftTicketVerificationFailed" forKey:&off_4F7400];
      [v7 setObject:@"MountPersonalizedBundleTicketDataNil" forKey:&off_4F7418];
      [v7 setObject:@"MountCommittedTicketDataNil" forKey:&off_4F7430];
      [v7 setObject:@"MountTicketMismatch" forKey:&off_4F7448];
      [v7 setObject:@"MountNotPersonalizedForExclaves" forKey:&off_4F7460];
      [v7 setObject:@"MountPath" forKey:&off_4F7478];
      [v7 setObject:@"MountAttachDiskImage" forKey:&off_4F7490];
      [v7 setObject:@"MountFindDevNodes" forKey:&off_4F74A8];
      [v7 setObject:@"MountFindAPFSVolume" forKey:&off_4F74C0];
      [v7 setObject:@"MountFoundMultipleAPFSVolumes" forKey:&off_4F74D8];
      [v7 setObject:@"MountTicket" forKey:&off_4F74F0];
      [v7 setObject:@"MountRootHash" forKey:&off_4F7508];
      [v7 setObject:@"MountTicketVerificationFailed" forKey:&off_4F7520];
      [v7 setObject:@"MapToExclavesPersonalizedBundleTicketDataNil" forKey:&off_4F7538];
      [v7 setObject:@"MapToExclavesCommittedTicketDataNil" forKey:&off_4F7550];
      [v7 setObject:@"MapToExclavesTicketMismatch" forKey:&off_4F7568];
      [v7 setObject:@"MapToExclavesNotPersonalizedForExclaves" forKey:&off_4F7580];
      [v7 setObject:@"MapToExclavesDetermineState" forKey:&off_4F7598];
      [v7 setObject:@"MapToExclavesUnregisterExisting" forKey:&off_4F75B0];
      [v7 setObject:@"MapToExclavesTicketPathNil" forKey:&off_4F75C8];
      [v7 setObject:@"MapToExclavesInfoPlistPathNil" forKey:&off_4F75E0];
      [v7 setObject:@"MapToExclavesIntegrityCatalogPathNil" forKey:&off_4F75F8];
      [v7 setObject:@"MapToExclavesTicketDataNil" forKey:&off_4F7610];
      [v7 setObject:@"MapToExclavesInfoPlistDataNil" forKey:&off_4F7628];
      [v7 setObject:@"MapToExclavesIntegrityCatalogDataNil" forKey:&off_4F7640];
      [v7 setObject:@"MapToExclavesStoreManifestFailed" forKey:&off_4F7658];
      [v7 setObject:@"MapToExclavesActivateManifestFailed" forKey:&off_4F7670];
      [v7 setObject:@"MapToExclavesTicketVerificationFailed" forKey:&off_4F7688];
      [v7 setObject:@"TrustCachePersonalizedBundleTicketDataNil" forKey:&off_4F76A0];
      [v7 setObject:@"TrustCacheCommittedTicketDataNil" forKey:&off_4F76B8];
      [v7 setObject:@"TrustCacheTicketMismatch" forKey:&off_4F76D0];
      [v7 setObject:@"TrustCacheNotPersonalizedForExclaves" forKey:&off_4F76E8];
      [v7 setObject:@"TrustCacheTicketReadError" forKey:&off_4F7700];
      [v7 setObject:@"TrustCacheReadError" forKey:&off_4F7718];
      [v7 setObject:@"TrustCacheDataOrTicketEmpty" forKey:&off_4F7730];
      [v7 setObject:@"TrustCacheAMFILoadError" forKey:&off_4F7748];
      [v7 setObject:@"TrustCacheAMFILoadDeviceLocked" forKey:&off_4F7760];
      [v7 setObject:@"TrustCacheTicketVerificationFailed" forKey:&off_4F7778];
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v21 + 1) + 8 * i);
            v14 = [v13 integerValue];
            v15 = [v8 objectForKeyedSubscript:v13];
            [SUCoreErrorInformation attributesOfErrorForDomain:@"SecureMobileAssetErrorDomain" withCode:v14 codeName:v15];
          }

          v10 = [v8 countByEnumeratingWithState:&v21 objects:v27 count:16];
        }

        while (v10);
      }
    }

    v16 = [[MADAutoAssetPersisted alloc] initForModule:@"AutoAssetSecure" ofModuleVersion:@"1.0" usingDispatchQueue:v2->_secureProtectionQueue loggingByName:0 withVersionMigrator:&__block_literal_global_4];
    persistedState = v2->_persistedState;
    v2->_persistedState = v16;

    goto LABEL_13;
  }

  v19 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "[AUTO-SECURE] {MADAutoAssetSecure-init} unable to create secureProtectionQueue", buf, 2u);
  }

  v18 = 0;
LABEL_17:

  return v18;
}

+ (id)autoAssetSecure
{
  if (autoAssetSecure_dispatchOnceAutoAssetSecure != -1)
  {
    +[MADAutoAssetSecure autoAssetSecure];
  }

  v3 = autoAssetSecure___autoAssetSecure;

  return v3;
}

void __37__MADAutoAssetSecure_autoAssetSecure__block_invoke(id a1)
{
  autoAssetSecure___autoAssetSecure = objc_alloc_init(MADAutoAssetSecure);

  _objc_release_x1();
}

+ (BOOL)doesDescriptorInvolvePersonalization:(id)a3 forDescriptor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:@"%@:doesDescriptorInvolvePersonalization", v6];

  v8 = [v5 metadata];
  v9 = [v8 safeBooleanForKey:@"__RequiresPersonalization"];

  if (v9)
  {
    v10 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v5 summary];
      *buf = 138543874;
      v14 = v7;
      v15 = 2114;
      v16 = @"Y";
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} determined secure attribute | involvesPersonalization:%{public}@ | autoAssetDescriptor:%{public}@", buf, 0x20u);
    }
  }

  return v9;
}

+ (BOOL)doesDescriptorInvolveGrafting:(id)a3 forDescriptor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:@"%@:doesDescriptorInvolveGrafting", v6];

  v8 = [v5 metadata];
  v9 = [v8 safeBooleanForKey:@"__ContainsCryptexContents"];

  if (v9)
  {
    v10 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = [v5 summary];
      *buf = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} determined secure attribute | involvesGrafting:Y | autoAssetDescriptor:%{public}@", buf, 0x16u);
    }
  }

  return v9;
}

+ (BOOL)doesDescriptorInvolveSecureOperations:(id)a3 forDescriptor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:@"%@:doesDescriptorInvolveSecureOperations", v6];

  LOBYTE(v6) = [MADAutoAssetSecure doesDescriptorInvolvePersonalization:v7 forDescriptor:v5];
  v8 = [MADAutoAssetSecure doesDescriptorInvolveGrafting:v7 forDescriptor:v5];

  return (v6 | v8) & 1;
}

+ (BOOL)doesSetDescriptorInvolveSecureOperations:(id)a3 forSetDescriptor:(id)a4 withAutoAssetDescriptors:(id)a5
{
  v6 = a3;
  v7 = a5;
  v8 = [[NSString alloc] initWithFormat:@"%@:doesSetDescriptorInvolveSecureOperations", v6];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([MADAutoAssetSecure doesDescriptorInvolvePersonalization:v8 forDescriptor:v14]|| [MADAutoAssetSecure doesDescriptorInvolveGrafting:v8 forDescriptor:v14])
        {
          v15 = 1;
          goto LABEL_13;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v15 = 0;
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_13:

  return v15;
}

+ (BOOL)isSecureAsset:(id)a3 forDescriptor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:@"%@:isSecureAsset", v6];

  v8 = +[MADAutoAssetSecure autoAssetSecure];
  if (!v8)
  {
    v12 = _MADLog(@"Auto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = [v5 summary];
      *buf = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v16;
      v17 = "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} no MADAutoAssetSecure instance | autoAssetDescriptor:%{public}@";
LABEL_11:
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, v17, buf, 0x16u);
    }

LABEL_12:
    v15 = 0;
    v11 = 0;
    goto LABEL_13;
  }

  v9 = [v5 assetType];
  v10 = [v5 assetId];
  v11 = [MADAutoAssetSecure secureBundleForAssetType:v9 assetId:v10];

  if (!v11)
  {
    v12 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = [v5 summary];
      *buf = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v16;
      v17 = "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} unable to initialize SecureMobileAssetBundle | autoAssetDescriptor:%{public}@";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (![v11 isSecureMobileAsset])
  {
    v15 = 0;
    goto LABEL_14;
  }

  v12 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MADAutoAssetSecure _secureAssetBundleSummary:v11];
    v14 = [v5 summary];
    *buf = 138543874;
    v20 = v7;
    v21 = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = v14;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} determined secure attribute | isSecureAsset:Y | secureAssetBundle:%{public}@ | autoAssetDescriptor:%{public}@", buf, 0x20u);
  }

  v15 = 1;
LABEL_13:

LABEL_14:
  return v15;
}

+ (id)secureAssetBundle:(id)a3 forSetAtomicEntry:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:@"%@:secureAssetBundle_forSetAtomicEntry:", v6];

  v8 = +[MADAutoAssetSecure autoAssetSecure];
  if (!v8)
  {
    v12 = _MADLog(@"Auto");
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v13 = [v5 summary];
    *buf = 138543618;
    v17 = v7;
    v18 = 2114;
    v19 = v13;
    v14 = "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} no MADAutoAssetSecure instance | setAtomicEntry:%{public}@";
LABEL_9:
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, v14, buf, 0x16u);

    goto LABEL_10;
  }

  v9 = [v5 fullAssetSelector];
  v10 = [v9 assetType];
  v11 = [v5 assetID];
  v12 = [MADAutoAssetSecure secureBundleForAssetType:v10 assetId:v11];

  if (!v12)
  {
    v12 = _MADLog(@"SecureMA");
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    v13 = [v5 summary];
    *buf = 138543618;
    v17 = v7;
    v18 = 2114;
    v19 = v13;
    v14 = "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} unable to initialize SecureMobileAssetBundle | setAtomicEntry:%{public}@";
    goto LABEL_9;
  }

  if (([v12 isSecureMobileAsset]& 1) == 0)
  {
LABEL_10:

    v12 = 0;
  }

  return v12;
}

+ (BOOL)isPersonalizationRequired:(id)a3 forDescriptor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:@"%@:isPersonalizationRequired", v6];

  v8 = +[MADAutoAssetSecure autoAssetSecure];
  if (!v8)
  {
    v13 = _MADLog(@"Auto");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v5 summary];
      *buf = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v14;
      v15 = "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} no MADAutoAssetSecure instance | autoAssetDescriptor:%{public}@";
LABEL_10:
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, v15, buf, 0x16u);
    }

LABEL_11:
    v12 = 0;
    v11 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v9 = [v5 assetType];
  v10 = [v5 assetId];
  v11 = [MADAutoAssetSecure secureBundleForAssetType:v9 assetId:v10];

  if (!v11)
  {
    v13 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [v5 summary];
      *buf = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v14;
      v15 = "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} unable to initialize SecureMobileAssetBundle | autoAssetDescriptor:%{public}@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if ([v11 isSecureMobileAsset] && (objc_msgSend(v11, "isPersonalized") & 1) == 0)
  {
    v13 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [MADAutoAssetSecure _secureAssetBundleSummary:v11];
      v18 = [v5 summary];
      *buf = 138543874;
      v20 = v7;
      v21 = 2114;
      v22 = v17;
      v23 = 2114;
      v24 = v18;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} determined secure attribute | personalizationRequired:Y | secureAssetBundle:%{public}@ | autoAssetDescriptor:%{public}@", buf, 0x20u);
    }

    v12 = 1;
    goto LABEL_12;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

+ (BOOL)isCodeAsset:(id)a3 forDescriptor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:@"%@:isCodeAsset", v6];

  v8 = +[MADAutoAssetSecure autoAssetSecure];
  if (!v8)
  {
    v12 = _MADLog(@"Auto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = [v5 summary];
      *buf = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v16;
      v17 = "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} no MADAutoAssetSecure instance | autoAssetDescriptor:%{public}@";
LABEL_11:
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, v17, buf, 0x16u);
    }

LABEL_12:
    v15 = 0;
    v11 = 0;
    goto LABEL_13;
  }

  v9 = [v5 assetType];
  v10 = [v5 assetId];
  v11 = [MADAutoAssetSecure secureBundleForAssetType:v9 assetId:v10];

  if (!v11)
  {
    v12 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = [v5 summary];
      *buf = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v16;
      v17 = "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} unable to initialize SecureMobileAssetBundle | autoAssetDescriptor:%{public}@";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if ([v11 manifestType] != &dword_0 + 2)
  {
    v15 = 0;
    goto LABEL_14;
  }

  v12 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MADAutoAssetSecure _secureAssetBundleSummary:v11];
    v14 = [v5 summary];
    *buf = 138543874;
    v20 = v7;
    v21 = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = v14;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} determined secure attribute | secureAssetBundle:%{public}@ | autoAssetDescriptor:%{public}@", buf, 0x20u);
  }

  v15 = 1;
LABEL_13:

LABEL_14:
  return v15;
}

+ (BOOL)isPersonalizationOrGraftingRequired:(id)a3 forDescriptor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:@"%@:isPersonalizationOrGraftingRequired", v6];

  v8 = +[MADAutoAssetSecure autoAssetSecure];
  if (!v8)
  {
    v11 = _MADLog(@"Auto");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [v5 summary];
      *buf = 138543618;
      v24 = v7;
      v25 = 2114;
      v26 = v13;
      v14 = "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} no MADAutoAssetSecure instance| autoAssetDescriptor:%{public}@";
LABEL_9:
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, v14, buf, 0x16u);
    }

LABEL_10:
    LOBYTE(v12) = 0;
    LOBYTE(v15) = 0;
    goto LABEL_23;
  }

  v9 = [v5 assetType];
  v10 = [v5 assetId];
  v11 = [MADAutoAssetSecure secureBundleForAssetType:v9 assetId:v10];

  if (!v11)
  {
    v11 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = [v5 summary];
      *buf = 138543618;
      v24 = v7;
      v25 = 2114;
      v26 = v13;
      v14 = "[AUTO-SECURE] {%{public}@} unable to initialize SecureMobileAssetBundle | autoAssetDescriptor:%{public}@";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if ([v11 isSecureMobileAsset])
  {
    v12 = [v11 isPersonalized]^ 1;
  }

  else
  {
    v12 = 0;
  }

  if ([v11 isSecureMobileAsset])
  {
    v15 = [v11 isAccessible]^ 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = @"N";
    if (v12)
    {
      v18 = @"Y";
    }

    else
    {
      v18 = @"N";
    }

    if (v15)
    {
      v17 = @"Y";
    }

    v22 = v17;
    v19 = [MADAutoAssetSecure _secureAssetBundleSummary:v11];
    v20 = [v5 summary];
    *buf = 138544386;
    v24 = v7;
    v25 = 2114;
    v26 = v18;
    v27 = 2114;
    v28 = v22;
    v29 = 2114;
    v30 = v19;
    v31 = 2114;
    v32 = v20;
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} determined secure attribute | personalizationRequired:%{public}@ | graftingRequired:%{public}@ | secureAssetBundle:%{public}@ | autoAssetDescriptor:%{public}@", buf, 0x34u);
  }

LABEL_23:
  return v12 | v15;
}

+ (BOOL)isGraftedOrMounted:(id)a3 forDescriptor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:@"%@:isGraftedOrMounted", v6];

  v8 = +[MADAutoAssetSecure autoAssetSecure];
  if (!v8)
  {
    v12 = _MADLog(@"Auto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = [v5 summary];
      *buf = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v16;
      v17 = "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} no MADAutoAssetSecure instance | autoAssetDescriptor:%{public}@";
LABEL_11:
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, v17, buf, 0x16u);
    }

LABEL_12:
    v15 = 0;
    v11 = 0;
    goto LABEL_13;
  }

  v9 = [v5 assetType];
  v10 = [v5 assetId];
  v11 = [MADAutoAssetSecure secureBundleForAssetType:v9 assetId:v10];

  if (!v11)
  {
    v12 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = [v5 summary];
      *buf = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v16;
      v17 = "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} unable to initialize SecureMobileAssetBundle | autoAssetDescriptor:%{public}@";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (![v11 isAccessible])
  {
    v15 = 0;
    goto LABEL_14;
  }

  v12 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MADAutoAssetSecure _secureAssetBundleSummary:v11];
    v14 = [v5 summary];
    *buf = 138543874;
    v20 = v7;
    v21 = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = v14;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} determined secure attribute | graftedOrMounted:Y | secureAssetBundle:%{public}@ | autoAssetDescriptor:%{public}@", buf, 0x20u);
  }

  v15 = 1;
LABEL_13:

LABEL_14:
  return v15;
}

+ (BOOL)isPrePersonalized:(id)a3 forDescriptor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:@"%@:isPrePersonalized", v6];

  v8 = +[MADAutoAssetSecure autoAssetSecure];
  if (!v8)
  {
    v12 = _MADLog(@"Auto");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = [v5 summary];
      *buf = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v16;
      v17 = "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} no MADAutoAssetSecure instance | autoAssetDescriptor:%{public}@";
LABEL_11:
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, v17, buf, 0x16u);
    }

LABEL_12:
    v15 = 0;
    v11 = 0;
    goto LABEL_13;
  }

  v9 = [v5 assetType];
  v10 = [v5 assetId];
  v11 = [MADAutoAssetSecure secureBundleForAssetType:v9 assetId:v10];

  if (!v11)
  {
    v12 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = [v5 summary];
      *buf = 138543618;
      v20 = v7;
      v21 = 2114;
      v22 = v16;
      v17 = "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} unable to initialize SecureMobileAssetBundle | autoAssetDescriptor:%{public}@";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (![v11 isPersonalizedManifestStaged])
  {
    v15 = 0;
    goto LABEL_14;
  }

  v12 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [MADAutoAssetSecure _secureAssetBundleSummary:v11];
    v14 = [v5 summary];
    *buf = 138543874;
    v20 = v7;
    v21 = 2114;
    v22 = v13;
    v23 = 2114;
    v24 = v14;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} determined secure attribute | prePersonalized:Y | secureAssetBundle:%{public}@ | autoAssetDescriptor:%{public}@", buf, 0x20u);
  }

  v15 = 1;
LABEL_13:

LABEL_14:
  return v15;
}

+ (id)getGraftPath:(id)a3 forDescriptor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[NSString alloc] initWithFormat:@"%@:getGraftPath", v6];

  if ([MADAutoAssetSecure isGraftedOrMounted:v7 forDescriptor:v5])
  {
    v8 = [v5 assetType];
    v9 = [v5 assetId];
    v10 = [MADAutoAssetSecure secureBundleForAssetType:v8 assetId:v9];

    if (v10)
    {
      v11 = [v10 accessPath];
    }

    else
    {
      v12 = _MADLog(@"Auto");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [v5 summary];
        *buf = 138543618;
        v16 = v7;
        v17 = 2114;
        v18 = v13;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} unable to initialize SecureMobileAssetBundle | autoAssetDescriptor:%{public}@", buf, 0x16u);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (void)depersonalizeIfSecure:(id)a3 forDescriptor:(id)a4
{
  v5 = a3;
  v6 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v7 = _os_activity_create(&dword_0, "MADSecure:depersonalizeIfSecure", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v7, &state);

  v8 = [[NSString alloc] initWithFormat:@"%@:depersonalizeIfSecure", v5];
  v9 = +[MADAutoAssetSecure autoAssetSecure];
  if ([MADAutoAssetSecure doesDescriptorInvolvePersonalization:v8 forDescriptor:v6])
  {
    if (v9)
    {
      v10 = [v6 assetType];
      v11 = [v6 assetId];
      v12 = [MADAutoAssetSecure secureBundleForAssetType:v10 assetId:v11];

      v13 = [MAAutoAssetSelector alloc];
      v14 = [v6 assetType];
      v15 = [v6 assetSpecifier];
      v16 = [v6 assetVersion];
      v39 = [v13 initForAssetType:v14 withAssetSpecifier:v15 matchingAssetVersion:v16];

      if (v12)
      {
        v40 = 0;
        v17 = [v12 depersonalize:&v40];
        v18 = v40;
        if (v17)
        {
          v19 = _MADLog(@"SecureMA");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v6 summary];
            *buf = 138543618;
            v44 = v8;
            v45 = 2114;
            v46 = v20;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "\n[AUTO-SECURE][AUTO-PERSONALIZATION-REMOVE] {%{public}@}  depersonalize SUCCESS| autoAssetDescriptor:%{public}@", buf, 0x16u);
          }

          v21 = [v6 assetId];
          [MADAutoAssetHistory recordOperation:1201 toHistoryType:6 fromLayer:6 forAssetID:v21 withSelector:v39];
        }

        else
        {
          v24 = _MADLog(@"SecureMA");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = [v18 checkedDescription];
            v26 = [v6 summary];
            *buf = 138543874;
            v44 = v8;
            v45 = 2114;
            v46 = v25;
            v47 = 2114;
            v48 = v26;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-PERSONALIZATION-REMOVE] {%{public}@}  depersonalize ERROR | error:%{public}@ | autoAssetDescriptor:%{public}@", buf, 0x20u);
          }

          [MADAutoAssetControlManager analyticsReportSecureOperationResults:v39 clientName:0 secureReason:0 operation:8 fromLocation:v8 mountError:0 graftError:0 personalizeError:v18 mapToExclaveError:0];
          v21 = [v6 assetId];
          [MADAutoAssetHistory recordFailedOperation:1201 fromLayer:6 forAssetID:v21 withSelector:v39 failingWithError:v18];
        }

        if (+[MAAIRBEventReporter isAvailable])
        {
          v27 = [MAAIRBMobileAssetOperationMetadata alloc];
          v28 = [MADAutoAssetHistoryTracker operationName:1201];
          v38 = [(MAAIRBMobileAssetOperationMetadata *)v27 initWithCode:1201 name:v28];

          v29 = [MAAIRBMobileAssetAssetSelector alloc];
          v30 = [v39 assetType];
          v31 = [v39 assetSpecifier];
          v32 = [v39 assetVersion];
          v33 = [(MAAIRBMobileAssetAssetSelector *)v29 initWithAssetType:v30 assetSpecifier:v31 assetVersion:v32];

          v34 = [MAAIRBAppleIntelligenceAssetDeliveryEventType typeSecure:v38 assetSelector:v33 type:0 secureOperationMetadata:0];
          v35 = [MAAIRBAppleIntelligenceAssetDeliveryEvent alloc];
          if (v18)
          {
            v42 = v18;
            v36 = [NSArray arrayWithObjects:&v42 count:1];
          }

          else
          {
            v36 = &__NSArray0__struct;
          }

          v37 = [(MAAIRBAppleIntelligenceAssetDeliveryEvent *)v35 initWithErrors:v36 type:v34];
          if (v18)
          {
          }

          [MAAIRBEventReporter emitAppleIntelligenceEndEvent:v37];
        }
      }

      else
      {
        v18 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v23 = [v6 summary];
          *buf = 138543618;
          v44 = v8;
          v45 = 2114;
          v46 = v23;
          _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-PERSONALIZATION-REMOVE] {%{public}@}  unable to initialize SecureMobileAssetBundle | autoAssetDescriptor:%{public}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v12 = _MADLog(@"Auto");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v22 = [v6 summary];
        *buf = 138543618;
        v44 = v8;
        v45 = 2114;
        v46 = v22;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-PERSONALIZATION-REMOVE] {%{public}@}  no MADAutoAssetSecure instance | autoAssetDescriptor:%{public}@", buf, 0x16u);
      }
    }
  }

  os_activity_scope_leave(&state);
}

+ (id)secureBundleForAssetType:(id)a3 assetId:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = getAutoLocalUrlFromTypeAndIdWithPurpose(v5, v6, 2, @"auto");
  if (v7)
  {
    v8 = [SecureMobileAssetBundle alloc];
    v9 = [v7 path];
    v10 = [v9 stringByDeletingLastPathComponent];
    v11 = [(SecureMobileAssetBundle *)v8 initWithPath:v10];

    if (v11)
    {
      goto LABEL_9;
    }

    v12 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543874;
      v18 = v5;
      v19 = 2114;
      v20 = v6;
      v21 = 2114;
      v22 = v7;
      v13 = "\n[AUTO-SECURE][LOCAL-CONTENT-URL] {secureBundleForAssetType} unable to initialize secureAssetBundle | assetType:%{public}@ | assetId:%{public}@ | localContentURLBasePath:%{public}@";
      v14 = v12;
      v15 = 32;
LABEL_7:
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, v13, &v17, v15);
    }
  }

  else
  {
    v12 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = 138543618;
      v18 = v5;
      v19 = 2114;
      v20 = v6;
      v13 = "\n[AUTO-SECURE][LOCAL-CONTENT-URL] {secureBundleForAssetType} unable to get localContentURLBase | assetType:%{public}@ | assetId:%{public}@";
      v14 = v12;
      v15 = 22;
      goto LABEL_7;
    }
  }

  v11 = 0;
LABEL_9:

  return v11;
}

+ (id)localContentURL:(id)a3 forDescriptor:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 assetType];
  v8 = [v5 assetId];

  v9 = [MADAutoAssetSecure localContentURL:v6 forAssetType:v7 assetId:v8];

  return v9;
}

+ (id)localContentURL:(id)a3 forAssetType:(id)a4 assetId:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [[NSString alloc] initWithFormat:@"%@:localContentURL", v9];

  v11 = getAutoLocalUrlFromTypeAndIdWithPurpose(v7, v8, 2, @"auto");
  if (v11)
  {
    v12 = v11;
    v13 = +[MADAutoAssetSecure autoAssetSecure];
    v14 = [MADAutoAssetSecure secureBundleForAssetType:v7 assetId:v8];
    if (![v14 isSecureMobileAsset])
    {
      goto LABEL_38;
    }

    if (v13)
    {
      if (v14)
      {
        if (![v14 isSecureMobileAsset] || !objc_msgSend(v14, "isAccessible"))
        {
          if (![v14 isSecureMobileAsset] || (objc_msgSend(v14, "isAccessible") & 1) != 0)
          {
            goto LABEL_38;
          }

          v21 = _MADLog(@"SecureMA");
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_36;
          }

          if ([v14 isSecureMobileAsset])
          {
            v23 = @"YES";
          }

          else
          {
            v23 = @"NO";
          }

          *buf = 138544386;
          if ([v14 isAccessible])
          {
            v24 = @"YES";
          }

          else
          {
            v24 = @"NO";
          }

          v31 = v10;
          v32 = 2114;
          v33 = v23;
          v34 = 2114;
          v35 = v24;
          v36 = 2114;
          v37 = v7;
          v38 = 2114;
          v39 = v8;
          v22 = "\n[AUTO-SECURE][LOCAL-CONTENT-URL] {%{public}@} SecureMobileAssetBundle is not available | isSecureMobileAsset:%{public}@ | isAccessible:%{public}@ | assetType:%{public}@ | assetId:%{public}@";
          goto LABEL_50;
        }

        v15 = [v14 accessPath];

        if (v15)
        {
          v16 = [NSURL alloc];
          v17 = [v14 accessPath];
          v18 = [v16 initWithString:v17];

          v12 = v18;
          if (!v18)
          {
            v12 = _MADLog(@"SecureMA");
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              if ([v14 isSecureMobileAsset])
              {
                v19 = @"YES";
              }

              else
              {
                v19 = @"NO";
              }

              *buf = 138544386;
              if ([v14 isAccessible])
              {
                v20 = @"YES";
              }

              else
              {
                v20 = @"NO";
              }

              v31 = v10;
              v32 = 2114;
              v33 = v19;
              v34 = 2114;
              v35 = v20;
              v36 = 2114;
              v37 = v7;
              v38 = 2114;
              v39 = v8;
              _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][LOCAL-CONTENT-URL] {%{public}@} SecureMobileAssetBundle accessible yet no accessPath | isSecureMobileAsset:%{public}@ | isAccessible:%{public}@ | assetType:%{public}@ | assetId:%{public}@", buf, 0x34u);
            }

            goto LABEL_37;
          }

LABEL_38:

          goto LABEL_39;
        }

        v21 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          if ([v14 isSecureMobileAsset])
          {
            v28 = @"YES";
          }

          else
          {
            v28 = @"NO";
          }

          *buf = 138544386;
          if ([v14 isAccessible])
          {
            v29 = @"YES";
          }

          else
          {
            v29 = @"NO";
          }

          v31 = v10;
          v32 = 2114;
          v33 = v28;
          v34 = 2114;
          v35 = v29;
          v36 = 2114;
          v37 = v7;
          v38 = 2114;
          v39 = v8;
          v22 = "\n[AUTO-SECURE][LOCAL-CONTENT-URL] {%{public}@} SecureMobileAssetBundle accessible yet no accessPath | isSecureMobileAsset:%{public}@ | isAccessible:%{public}@ | assetType:%{public}@ | assetId:%{public}@";
LABEL_50:
          v25 = v21;
          v26 = 52;
          goto LABEL_35;
        }

LABEL_36:

LABEL_37:
        v12 = 0;
        goto LABEL_38;
      }

      v21 = _MADLog(@"SecureMA");
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 138543874;
      v31 = v10;
      v32 = 2114;
      v33 = v7;
      v34 = 2114;
      v35 = v8;
      v22 = "\n[AUTO-SECURE][LOCAL-CONTENT-URL] {%{public}@} unable to initialize SecureMobileAssetBundle | assetType:%{public}@ | assetId:%{public}@";
    }

    else
    {
      v21 = _MADLog(@"Auto");
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 138543874;
      v31 = v10;
      v32 = 2114;
      v33 = v7;
      v34 = 2114;
      v35 = v8;
      v22 = "\n[AUTO-SECURE][LOCAL-CONTENT-URL] {%{public}@} no MADAutoAssetSecure instance | assetType:%{public}@ | assetId:%{public}@";
    }

    v25 = v21;
    v26 = 32;
LABEL_35:
    _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, v22, buf, v26);
    goto LABEL_36;
  }

  v13 = _MADLog(@"Auto");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543874;
    v31 = v10;
    v32 = 2114;
    v33 = v7;
    v34 = 2114;
    v35 = v8;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][LOCAL-CONTENT-URL] {%{public}@} unable to form default URL [before considering whether secure-asset] | assetType:%{public}@ | assetId:%{public}@", buf, 0x20u);
  }

  v12 = 0;
LABEL_39:

  return v12;
}

+ (id)latestDownloadedAtomicInstanceEntries:(id)a3 forSetDescriptor:(id)a4 withAvailableForUseError:(id *)a5
{
  v80 = a3;
  v82 = a4;
  v76 = [v82 latestDowloadedAtomicInstanceEntries];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v6 = _os_activity_create(&dword_0, "MADSecure:latestDownloadedAtomicInstanceEntries", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v6, &state);

  v7 = [[NSString alloc] initWithFormat:@"%@:latestDownloadedAtomicInstanceEntries", v80];
  v74 = +[MADAutoAssetSecure autoAssetSecure];
  if (v74)
  {
    v8 = objc_alloc_init(NSMutableArray);
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v9 = [v82 latestDowloadedAtomicInstanceEntries];
    v10 = [v9 countByEnumeratingWithState:&v90 objects:v107 count:16];
    if (!v10)
    {
      v86 = 0;
      goto LABEL_84;
    }

    v86 = 0;
    v84 = *v91;
    v79 = v7;
    v78 = v8;
    obj = v9;
    while (1)
    {
      v85 = v10;
      for (i = 0; i != v85; i = i + 1)
      {
        if (*v91 != v84)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v90 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v13 = [v12 fullAssetSelector];
        v14 = [v13 assetType];
        v15 = [v12 assetID];
        v16 = getAutoLocalUrlFromTypeAndIdWithPurpose(v14, v15, 2, @"auto");

        if (v16)
        {
          v17 = [a1 secureAssetBundle:v7 forSetAtomicEntry:v12];
          v18 = v17;
          if (!v17)
          {
            v21 = v16;
            goto LABEL_20;
          }

          if ([v17 isAccessible])
          {
            v19 = [NSURL alloc];
            v20 = [v18 accessPath];
            v21 = [v19 initWithString:v20];

            if (!v21)
            {
              v22 = _MADLog(@"SecureMA");
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                v23 = [v82 summary];
                v24 = [v12 summary];
                *buf = 138543874;
                v96 = v7;
                v97 = 2114;
                v98 = v23;
                v99 = 2114;
                v100 = v24;
                _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE]LATEST-DOWNLOADED] {%{public}@} accessible secure-bundle with no local content URL | setDescriptor:%{public}@ | nextAtomicEntry:%{public}@", buf, 0x20u);
              }

              if (!v86)
              {
                v25 = 6101;
                v26 = @"Unable to allocate local-content-URL for accessible secure asset";
                goto LABEL_72;
              }

              goto LABEL_59;
            }

LABEL_20:
            v30 = [MANAutoAssetSetAtomicEntry alloc];
            v31 = [v12 fullAssetSelector];
            v32 = [v12 assetID];
            v33 = [v12 assetAttributes];
            v34 = -[MANAutoAssetSetAtomicEntry initWithFullAssetSelector:withAssetID:withLocalContentURL:withAssetAttributes:inhibitedFromEmergencyRemoval:](v30, "initWithFullAssetSelector:withAssetID:withLocalContentURL:withAssetAttributes:inhibitedFromEmergencyRemoval:", v31, v32, v21, v33, [v12 inhibitedFromEmergencyRemoval]);

            if (v34)
            {
              [v8 addObject:v34];
            }

            else
            {
              v54 = _MADLog(@"SecureMA");
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                if ([v18 isSecureMobileAsset])
                {
                  v55 = @"YES";
                }

                else
                {
                  v55 = @"NO";
                }

                if ([v18 isAccessible])
                {
                  v56 = @"YES";
                }

                else
                {
                  v56 = @"NO";
                }

                v57 = [v82 summary];
                v58 = [v12 summary];
                *buf = 138544386;
                v96 = v79;
                v97 = 2114;
                v98 = v55;
                v7 = v79;
                v99 = 2114;
                v100 = v56;
                v101 = 2114;
                v102 = v57;
                v103 = 2114;
                v104 = v58;
                _os_log_impl(&dword_0, v54, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE]LATEST-DOWNLOADED] {%{public}@} unable to create atomic-entry with determined local content URL | isSecureMobileAsset:%{public}@ | isAccessible:%{public}@) | setDescriptor:%{public}@ | nextAtomicEntry:%{public}@", buf, 0x34u);

                v8 = v78;
              }

              if (!v86)
              {
                v86 = [MAAutoAssetError buildError:6101 fromOperation:v80 underlyingError:0 withDescription:@"Unable to allocate atomic-entry-with-asset-path"];
              }
            }

            v42 = v21;
          }

          else
          {
            if (![v18 isPersonalized])
            {
              v59 = _MADLog(@"SecureMA");
              if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
              {
                if ([v18 isSecureMobileAsset])
                {
                  v60 = @"YES";
                }

                else
                {
                  v60 = @"NO";
                }

                if ([v18 isAccessible])
                {
                  v61 = @"YES";
                }

                else
                {
                  v61 = @"NO";
                }

                v62 = [v82 summary];
                v63 = [v12 summary];
                *buf = 138544386;
                v96 = v79;
                v97 = 2114;
                v98 = v60;
                v99 = 2114;
                v100 = v61;
                v7 = v79;
                v101 = 2114;
                v102 = v62;
                v103 = 2114;
                v104 = v63;
                _os_log_impl(&dword_0, v59, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE]LATEST-DOWNLOADED] {%{public}@} SecureMobileAssetBundle is not available and not personalized | isSecureMobileAsset:%{public}@ | isAccessible:%{public}@ | setDescriptor:%{public}@ | nextAtomicEntry:%{public}@", buf, 0x34u);
              }

              if (!v86)
              {
                v25 = 6535;
                v26 = @"At point where all secure content should be personalized yet secure-not-personalized enncountered";
LABEL_72:
                v86 = [MAAutoAssetError buildError:v25 fromOperation:v80 underlyingError:0 withDescription:v26];
              }

LABEL_59:

              goto LABEL_60;
            }

            v89 = 0;
            v35 = _MADLog(@"SecureMA");
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              if ([v18 isSecureMobileAsset])
              {
                v36 = @"YES";
              }

              else
              {
                v36 = @"NO";
              }

              if ([v18 isAccessible])
              {
                v37 = @"YES";
              }

              else
              {
                v37 = @"NO";
              }

              v38 = [v82 summary];
              v39 = [v12 summary];
              *buf = 138544386;
              v96 = v79;
              v97 = 2114;
              v98 = v36;
              v99 = 2114;
              v100 = v37;
              v7 = v79;
              v101 = 2114;
              v102 = v38;
              v103 = 2114;
              v104 = v39;
              _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE]LATEST-DOWNLOADED] {%{public}@} SecureMobileAssetBundle is personalized but not available. Attempting to graft | isSecureMobileAsset:%{public}@ | isAccessible:%{public}@ | setDescriptor:%{public}@ | nextAtomicEntry:%{public}@", buf, 0x34u);
            }

            v40 = [v12 assetID];
            v41 = [v12 fullAssetSelector];
            v88 = 0;
            [a1 graftSecureAsset:v7 secureAssetBundle:v18 forSetDescriptor:v82 forAssetID:v40 withSelector:v41 accessMechanismPtr:&v89 error:&v88];
            v42 = v88;

            if (v42)
            {
              v43 = _MADLog(@"SecureMA");
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                v44 = [v18 isSecureMobileAsset];
                v45 = @"NO";
                if (v44)
                {
                  v45 = @"YES";
                }

                v77 = v45;
                if ([v18 isAccessible])
                {
                  v46 = @"YES";
                }

                else
                {
                  v46 = @"NO";
                }

                v47 = [v82 summary];
                v48 = [v12 summary];
                *buf = 138544642;
                v96 = v79;
                v97 = 2114;
                v98 = v77;
                v99 = 2114;
                v100 = v46;
                v7 = v79;
                v101 = 2114;
                v102 = v47;
                v103 = 2114;
                v104 = v48;
                v105 = 2114;
                v106 = v42;
                _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE]LATEST-DOWNLOADED] {%{public}@} Failed to graft SecureMobileAssetBundle | isSecureMobileAsset:%{public}@ | isAccessible:%{public}@ | setDescriptor:%{public}@ | nextAtomicEntry:%{public}@ | error:%{public}@", buf, 0x3Eu);
              }

              v49 = [v12 fullAssetSelector];
              v50 = [v82 clientDomainName];
              v51 = [MADAutoAssetSecure secureOperationGraftOrMount:v89];
              if (v89 == 2)
              {
                v52 = v42;
              }

              else
              {
                v52 = 0;
              }

              if (v89 == 1)
              {
                v53 = v42;
              }

              else
              {
                v53 = 0;
              }

              [MADAutoAssetControlManager analyticsReportSecureOperationResults:v49 clientName:v50 secureReason:0 operation:v51 fromLocation:v7 mountError:v52 graftError:v53 personalizeError:0 mapToExclaveError:0, v74];

              if (!v86)
              {
                v86 = v42;
              }
            }

            else
            {
              v64 = [NSURL alloc];
              v65 = [v18 accessPath];
              v21 = [v64 initWithString:v65];

              if (v21)
              {
                goto LABEL_20;
              }

              v66 = _MADLog(@"SecureMA");
              if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
              {
                v67 = [v82 summary];
                v68 = [v12 summary];
                *buf = 138543874;
                v96 = v7;
                v97 = 2114;
                v98 = v67;
                v99 = 2114;
                v100 = v68;
                _os_log_impl(&dword_0, v66, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE]LATEST-DOWNLOADED] {%{public}@} unable to allocate local-content-URL for accessible secure asset | setDescriptor:%{public}@ | nextAtomicEntry:%{public}@", buf, 0x20u);
              }

              if (!v86)
              {
                v86 = [MAAutoAssetError buildError:6111 fromOperation:v80 underlyingError:0 withDescription:@"Unable to allocate local-content-URL for accessible secure asset"];
              }
            }
          }

          goto LABEL_59;
        }

        v27 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = [v82 summary];
          v29 = [v12 summary];
          *buf = 138543874;
          v96 = v7;
          v97 = 2114;
          v98 = v28;
          v99 = 2114;
          v100 = v29;
          _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE]LATEST-DOWNLOADED] {%{public}@} unable to form default URL [before considering whether secure-asset] | setDescriptor:%{public}@ | nextAtomicEntry:%{public}@", buf, 0x20u);
        }

        if (!v86)
        {
          v86 = [MAAutoAssetError buildError:6111 fromOperation:v80 underlyingError:0 withDescription:@"Unable to form default URL [before considering whether secure-asset]"];
        }

LABEL_60:
        objc_autoreleasePoolPop(context);
      }

      v9 = obj;
      v10 = [obj countByEnumeratingWithState:&v90 objects:v107 count:16];
      if (!v10)
      {
LABEL_84:

        v76 = v8;
        goto LABEL_85;
      }
    }
  }

  v69 = _MADLog(@"Auto");
  if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
  {
    v70 = [v82 summary];
    *buf = 138543618;
    v96 = v7;
    v97 = 2114;
    v98 = v70;
    _os_log_impl(&dword_0, v69, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE]LATEST-DOWNLOADED] {%{public}@} no MADAutoAssetSecure instance | setDescriptor:%{public}@", buf, 0x16u);
  }

  v86 = [MAAutoAssetError buildError:6101 fromOperation:v80 underlyingError:0 withDescription:@"Unable to locate auto-asset-secure interface"];
LABEL_85:
  if (a5)
  {
    v71 = v86;
    *a5 = v86;
  }

  v72 = v76;

  os_activity_scope_leave(&state);

  return v72;
}

+ (void)personalizeDownloaded:(id)a3 personalizingDescriptor:(id)a4 allowingNetwork:(BOOL)a5 committingPersonalization:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a7;
  v13 = [NSString alloc];
  v14 = @"pre-";
  if (v8)
  {
    v14 = &stru_4BD3F0;
  }

  v15 = [v13 initWithFormat:@"%@:%@personalizeDownloaded", v10, v14];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v16 = _os_activity_create(&dword_0, "MADSecure:personalizeDownloaded", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v16, &state);

  v17 = +[MADAutoAssetSecure autoAssetSecure];
  v18 = [MAAutoAssetSelector alloc];
  v19 = [v11 assetType];
  v20 = [v11 assetSpecifier];
  v21 = [v11 assetVersion];
  v42 = [v18 initForAssetType:v19 withAssetSpecifier:v20 matchingAssetVersion:v21];

  if (v17)
  {
    v22 = [@"com.apple.MobileAsset.daemon.secureWaitedOperationQueue" UTF8String];
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_create(v22, v23);

    v39 = v17;
    v40 = v10;
    if (v24)
    {
      v25 = v15;
      v26 = v12;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __121__MADAutoAssetSecure_personalizeDownloaded_personalizingDescriptor_allowingNetwork_committingPersonalization_completion___block_invoke_1237;
      block[3] = &unk_4B3070;
      v27 = &v44;
      v44 = v11;
      v28 = &v45;
      v29 = v25;
      v45 = v25;
      v30 = &v47;
      v31 = v26;
      v47 = v26;
      v48 = a5;
      v49 = v8;
      v32 = v42;
      v46 = v42;
      dispatch_async(v24, block);
      v33 = v46;
    }

    else
    {
      v33 = +[SUCore sharedCore];
      v36 = [v33 selectCompletionQueue:0];
      v37 = v15;
      v38 = v12;
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = __121__MADAutoAssetSecure_personalizeDownloaded_personalizingDescriptor_allowingNetwork_committingPersonalization_completion___block_invoke_1233;
      v50[3] = &unk_4B3020;
      v27 = &v51;
      v29 = v37;
      v51 = v37;
      v28 = &v52;
      v52 = v11;
      v30 = &v53;
      v31 = v38;
      v53 = v38;
      dispatch_async(v36, v50);

      v32 = v42;
    }

    v12 = v31;
    v15 = v29;
    v17 = v39;
    v10 = v40;
  }

  else
  {
    v34 = +[SUCore sharedCore];
    v35 = [v34 selectCompletionQueue:0];
    v54[0] = _NSConcreteStackBlock;
    v54[1] = 3221225472;
    v54[2] = __121__MADAutoAssetSecure_personalizeDownloaded_personalizingDescriptor_allowingNetwork_committingPersonalization_completion___block_invoke;
    v54[3] = &unk_4B3020;
    v55 = v15;
    v56 = v11;
    v57 = v12;
    dispatch_async(v35, v54);

    v24 = v55;
    v32 = v42;
  }

  os_activity_scope_leave(&state);
}

void __121__MADAutoAssetSecure_personalizeDownloaded_personalizingDescriptor_allowingNetwork_committingPersonalization_completion___block_invoke(uint64_t a1)
{
  v2 = [MAAutoAssetError buildError:6101 fromOperation:*(a1 + 32) underlyingError:0 withDescription:@"no MADAutoAssetSecure instance"];
  v3 = _MADLog(@"Auto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = [v2 checkedDescription];
    v6 = [*(a1 + 40) summary];
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-PERSONALIZATION] {%{public}@} no MADAutoAssetSecure instance - personalize ERROR | error:%{public}@ | autoAssetDescriptor:%{public}@", &v7, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void __121__MADAutoAssetSecure_personalizeDownloaded_personalizingDescriptor_allowingNetwork_committingPersonalization_completion___block_invoke_1233(uint64_t a1)
{
  v2 = [MAAutoAssetError buildError:6101 fromOperation:*(a1 + 32) underlyingError:0 withDescription:@"unable to allocate waitedOperationQueue"];
  v3 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = [v2 checkedDescription];
    v6 = [*(a1 + 40) summary];
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-PERSONALIZATION] {%{public}@} unable to allocate waitedOperationQueue - personalize ERROR | error:%{public}@ | autoAssetDescriptor:%{public}@", &v7, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void __121__MADAutoAssetSecure_personalizeDownloaded_personalizingDescriptor_allowingNetwork_committingPersonalization_completion___block_invoke_1237(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) assetType];
  v4 = [*v2 assetId];
  v40 = [MADAutoAssetSecure secureBundleForAssetType:v3 assetId:v4];

  if (v40)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v39 = [[NSNumber alloc] initWithInteger:*(a1 + 64)];
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__1;
    v54 = __Block_byref_object_dispose__1;
    v55 = 0;
    v38 = [[NSNumber alloc] initWithBool:(*(a1 + 65) & 1) == 0];
    [v5 setSafeObject:v39 forKey:@"AllowNetworkCommunication"];
    [v5 setSafeObject:v38 forKey:@"stageManifest"];
    v6 = (v51 + 5);
    obj = v51[5];
    v7 = [v40 personalize:v5 error:&obj];
    objc_storeStrong(v6, obj);
    v8 = v51[5];
    if (v8)
    {
      v9 = [v8 domain];
      v10 = [v9 isEqualToString:kAMAuthInstallErrorDomain];

      v11 = [v51[5] code];
      if (v7)
      {
        v36 = 0;
        v12 = 0;
        v13 = 0;
        v7 = 1;
      }

      else if (v10 && v11 == &stru_C40.reloff + 2)
      {
        v13 = objc_opt_new();
        v48 = 0;
        v36 = [v13 copyPersonalizationSSOToken:1 error:&v48];
        v16 = v48;
        if (v16 || !v36)
        {
          v23 = _MADLog(@"SecureMA");
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v24 = *(a1 + 40);
            if (v16)
            {
              v25 = [v16 checkedDescription];
            }

            else
            {
              v25 = @"NO-SSO-TOKEN";
            }

            v26 = [*(a1 + 32) summary];
            *buf = 138543874;
            v61 = v24;
            v62 = 2114;
            v63 = v25;
            v64 = 2114;
            v65 = v26;
            _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-PERSONALIZATION] {%{public}@} could not obtain SSO Token - personalize ERROR | error:%{public}@ | autoAssetDescriptor:%{public}@", buf, 0x20u);
            v12 = v16;
            if (v16)
            {
            }
          }

          else
          {
            v12 = v16;
          }

          v7 = 0;
        }

        else
        {
          [v5 setSafeObject:v36 forKey:@"ssoToken"];
          v17 = _MADLog(@"SecureMA");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = *(a1 + 40);
            v19 = [v51[5] checkedDescription];
            v20 = [*(a1 + 32) summary];
            *buf = 138543874;
            v61 = v18;
            v62 = 2114;
            v63 = v19;
            v64 = 2114;
            v65 = v20;
            _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-PERSONALIZATION] {%{public}@} received Tatsu 3194 error while attempting personalization without SSO Token - NON-FATAL ERROR - retrying with SSO token | error:%{public}@ | autoAssetDescriptor:%{public}@", buf, 0x20u);
          }

          v21 = v51;
          v47 = v51[5];
          v7 = [v40 personalize:v5 error:&v47];
          v22 = v47;
          v12 = 0;
          v23 = v21[5];
          v21[5] = v22;
        }
      }

      else
      {
        v36 = 0;
        v12 = 0;
        v13 = 0;
        v7 = 0;
      }
    }

    else
    {
      v36 = 0;
      v12 = 0;
      v13 = 0;
    }

    v27 = v13;
    v28 = +[SUCore sharedCore];
    v29 = [v28 selectCompletionQueue:0];
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = __121__MADAutoAssetSecure_personalizeDownloaded_personalizingDescriptor_allowingNetwork_committingPersonalization_completion___block_invoke_1253;
    v41[3] = &unk_4B3048;
    v45 = *(a1 + 65);
    v46 = v7;
    v44 = &v50;
    v30 = *(a1 + 40);
    v31 = *(a1 + 32);
    v32 = *(a1 + 48);
    v33 = *(a1 + 56);
    *&v34 = v32;
    *(&v34 + 1) = v33;
    *&v35 = v30;
    *(&v35 + 1) = v31;
    v42 = v35;
    v43 = v34;
    dispatch_async(v29, v41);

    _Block_object_dispose(&v50, 8);
  }

  else
  {
    v14 = +[SUCore sharedCore];
    v15 = [v14 selectCompletionQueue:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __121__MADAutoAssetSecure_personalizeDownloaded_personalizingDescriptor_allowingNetwork_committingPersonalization_completion___block_invoke_2;
    block[3] = &unk_4B3020;
    v57 = *(a1 + 40);
    v58 = *(a1 + 32);
    v59 = *(a1 + 56);
    dispatch_async(v15, block);

    v5 = v57;
  }
}

void __121__MADAutoAssetSecure_personalizeDownloaded_personalizingDescriptor_allowingNetwork_committingPersonalization_completion___block_invoke_2(uint64_t a1)
{
  v2 = [MAAutoAssetError buildError:6101 fromOperation:*(a1 + 32) underlyingError:0 withDescription:@"unable to initialize SecureMobileAssetBundle"];
  v3 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = [v2 checkedDescription];
    v6 = [*(a1 + 40) summary];
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-PERSONALIZATION] {%{public}@} unable to initialize SecureMobileAssetBundle - personalize ERROR | error:%{public}@ | autoAssetDescriptor:%{public}@", &v7, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void __121__MADAutoAssetSecure_personalizeDownloaded_personalizingDescriptor_allowingNetwork_committingPersonalization_completion___block_invoke_1253(uint64_t a1)
{
  if (*(a1 + 72))
  {
    v2 = 1200;
  }

  else
  {
    v2 = 1206;
  }

  v3 = *(*(*(a1 + 64) + 8) + 40);
  if (*(a1 + 73) == 1 && v3 == 0)
  {
    v16 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v18 = [*(a1 + 40) summary];
      *buf = 138543618;
      v37 = v17;
      v38 = 2114;
      v39 = v18;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "\n[AUTO-SECURE][AUTO-PERSONALIZATION] {%{public}@} personalize SUCCESS | autoAssetDescriptor:%{public}@", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
    v19 = [*(a1 + 40) assetId];
    [MADAutoAssetHistory recordOperation:v2 toHistoryType:6 fromLayer:6 forAssetID:v19 withSelector:*(a1 + 48)];

    v9 = 0;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [NSString alloc];
    v7 = [*(a1 + 40) summary];
    v8 = [v6 initWithFormat:@"unable to personalize secure-asset | autoAssetDescriptor:%@", v7];
    v9 = [MAAutoAssetError buildError:6535 fromOperation:v5 underlyingError:v3 withDescription:v8];

    v10 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = [v9 checkedDescription];
      v13 = *(*(a1 + 64) + 8);
      v14 = *(v13 + 40);
      if (v14)
      {
        v15 = [*(v13 + 40) checkedDescription];
      }

      else
      {
        v15 = @"N";
      }

      v20 = [*(a1 + 40) summary];
      *buf = 138544130;
      v37 = v11;
      v38 = 2114;
      v39 = v12;
      v40 = 2114;
      v41 = v15;
      v42 = 2114;
      v43 = v20;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-PERSONALIZATION] {%{public}@} unable to personalize - personalize ERROR | error:%{public}@ | underlyingError:%{public}@ | autoAssetDescriptor:%{public}@", buf, 0x2Au);
      if (v14)
      {
      }
    }

    [MADAutoAssetControlManager analyticsReportSecureOperationResults:*(a1 + 48) clientName:0 secureReason:0 operation:7 fromLocation:*(a1 + 32) mountError:0 graftError:0 personalizeError:v9 mapToExclaveError:0];
    v21 = [*(a1 + 40) assetId];
    [MADAutoAssetHistory recordFailedOperation:v2 fromLayer:6 forAssetID:v21 withSelector:*(a1 + 48) failingWithError:v9];

    (*(*(a1 + 56) + 16))();
  }

  if (+[MAAIRBEventReporter isAvailable])
  {
    v22 = [MAAIRBMobileAssetOperationMetadata alloc];
    v23 = [MADAutoAssetHistoryTracker operationName:v2];
    v24 = [(MAAIRBMobileAssetOperationMetadata *)v22 initWithCode:v2 name:v23];

    v25 = [MAAIRBMobileAssetAssetSelector alloc];
    v26 = [*(a1 + 48) assetType];
    v27 = [*(a1 + 48) assetSpecifier];
    v28 = [*(a1 + 48) assetVersion];
    v29 = [(MAAIRBMobileAssetAssetSelector *)v25 initWithAssetType:v26 assetSpecifier:v27 assetVersion:v28];

    v30 = [MAAIRBAppleIntelligenceAssetDeliveryEventType typeSecure:v24 assetSelector:v29 type:0 secureOperationMetadata:0];
    v31 = [MAAIRBAppleIntelligenceAssetDeliveryEvent alloc];
    v32 = v31;
    if (v9)
    {
      v35 = v9;
      v33 = [NSArray arrayWithObjects:&v35 count:1];
      v34 = [(MAAIRBAppleIntelligenceAssetDeliveryEvent *)v32 initWithErrors:v33 type:v30];
    }

    else
    {
      v34 = [(MAAIRBAppleIntelligenceAssetDeliveryEvent *)v31 initWithErrors:&__NSArray0__struct type:v30];
    }

    [MAAIRBEventReporter emitAppleIntelligenceStartEvent:v34];
  }
}

+ (id)commitPrePersonalizedSync:(id)a3 committingSelectors:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[NSString alloc] initWithFormat:@"%@:commitPrePersonalizedSync", v5];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v8 = _os_activity_create(&dword_0, "MADSecure:commitPrePersonalizedSync", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v8, &state);

  v9 = +[MADAutoAssetSecure autoAssetSecure];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  if (v9)
  {
    if ([v6 count])
    {
      v10 = [v9 secureProtectionQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __68__MADAutoAssetSecure_commitPrePersonalizedSync_committingSelectors___block_invoke;
      block[3] = &unk_4B2BD0;
      v24 = v6;
      v26 = &v27;
      v25 = v7;
      dispatch_sync(v10, block);

      v11 = v24;
    }

    else
    {
      v16 = [MAAutoAssetError buildError:6110 fromOperation:v7 underlyingError:0 withDescription:@"no assetSelectors to be committed"];
      v17 = v28[5];
      v28[5] = v16;

      v11 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v18 = [v28[5] checkedDescription];
        v19 = [v6 count];
        *buf = 138543874;
        v35 = v7;
        v36 = 2114;
        v37 = v18;
        v38 = 2048;
        v39 = v19;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-COMMIT] {%{public}@} empty asset-selectors ERROR | error:%{public}@ | assetSelectors:%ld", buf, 0x20u);
      }
    }
  }

  else
  {
    v12 = [MAAutoAssetError buildError:6101 fromOperation:v7 underlyingError:0 withDescription:@"no MADAutoAssetSecure instance"];
    v13 = v28[5];
    v28[5] = v12;

    v11 = _MADLog(@"Auto");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = [v28[5] checkedDescription];
      v15 = [v6 count];
      *buf = 138543874;
      v35 = v7;
      v36 = 2114;
      v37 = v14;
      v38 = 2048;
      v39 = v15;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-COMMIT] {%{public}@} no MADAutoAssetSecure instance - commit ERROR | error:%{public}@ | assetSelectors:%ld", buf, 0x20u);
    }
  }

  if (v28[5])
  {
    [MADAutoAssetHistory recordFailedOperation:1207 fromLayer:6 withSelectors:v6 failingWithError:?];
    v20 = v28[5];
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;
  _Block_object_dispose(&v27, 8);

  os_activity_scope_leave(&state);

  return v21;
}

void __68__MADAutoAssetSecure_commitPrePersonalizedSync_committingSelectors___block_invoke(uint64_t *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  [SecureMobileAssetBundle commitStagedManifestsForSelectors:v2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (*(*(a1[6] + 8) + 40))
  {
    v4 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = a1[5];
      v6 = [*(*(a1[6] + 8) + 40) checkedDescription];
      v7 = [a1[4] count];
      *buf = 138543874;
      v12 = v5;
      v13 = 2114;
      v14 = v6;
      v15 = 2048;
      v16 = v7;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-COMMIT] {%{public}@} commit ERROR | error:%{public}@ | assetSelectors:%ld", buf, 0x20u);
    }
  }

  else
  {
    [MADAutoAssetHistory recordOperation:1207 toHistoryType:6 fromLayer:6 forSelectors:a1[4]];
    v4 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      v9 = [a1[4] count];
      *buf = 138543618;
      v12 = v8;
      v13 = 2048;
      v14 = v9;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "\n[AUTO-SECURE][AUTO-COMMIT] {%{public}@} commit SUCCESS | assetSelectors:%ld", buf, 0x16u);
    }
  }
}

+ (void)commitPrePersonalized:(id)a3 committingSelectors:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[NSString alloc] initWithFormat:@"%@:commitPrePersonalized", v7];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v11 = _os_activity_create(&dword_0, "MADSecure:commitPrePersonalized", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v11, &state);

  v12 = +[MADAutoAssetSecure autoAssetSecure];
  if (!v12)
  {
    v13 = +[SUCore sharedCore];
    v17 = [v13 selectCompletionQueue:0];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = __75__MADAutoAssetSecure_commitPrePersonalized_committingSelectors_completion___block_invoke;
    v27[3] = &unk_4B3020;
    v14 = &v28;
    v28 = v10;
    v15 = &v29;
    v29 = v8;
    v16 = &v30;
    v30 = v9;
    v18 = v27;
LABEL_6:
    dispatch_async(v17, v18);

    goto LABEL_7;
  }

  if (![v8 count])
  {
    v13 = +[SUCore sharedCore];
    v17 = [v13 selectCompletionQueue:0];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __75__MADAutoAssetSecure_commitPrePersonalized_committingSelectors_completion___block_invoke_1266;
    v23[3] = &unk_4B3020;
    v14 = &v24;
    v24 = v10;
    v15 = &v25;
    v25 = v8;
    v16 = &v26;
    v26 = v9;
    v18 = v23;
    goto LABEL_6;
  }

  v13 = [v12 secureProtectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __75__MADAutoAssetSecure_commitPrePersonalized_committingSelectors_completion___block_invoke_1267;
  block[3] = &unk_4B3020;
  v14 = &v20;
  v20 = v8;
  v15 = &v21;
  v21 = v10;
  v16 = &v22;
  v22 = v9;
  dispatch_async(v13, block);
LABEL_7:

  os_activity_scope_leave(&state);
}

void __75__MADAutoAssetSecure_commitPrePersonalized_committingSelectors_completion___block_invoke(uint64_t a1)
{
  v2 = [MAAutoAssetError buildError:6101 fromOperation:*(a1 + 32) underlyingError:0 withDescription:@"no MADAutoAssetSecure instance"];
  v3 = _MADLog(@"Auto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = [v2 checkedDescription];
    v6 = [*(a1 + 40) count];
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-COMMIT] {%{public}@} commit ERROR | error:%{public}@ | assetSelectors:%ld", &v7, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void __75__MADAutoAssetSecure_commitPrePersonalized_committingSelectors_completion___block_invoke_1266(uint64_t a1)
{
  v2 = [MAAutoAssetError buildError:6110 fromOperation:*(a1 + 32) underlyingError:0 withDescription:@"no assetSelectors to be committed"];
  v3 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = [v2 checkedDescription];
    v6 = [*(a1 + 40) count];
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-COMMIT] {%{public}@} commit ERROR | error:%{public}@ | assetSelectors:%ld", &v7, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void __75__MADAutoAssetSecure_commitPrePersonalized_committingSelectors_completion___block_invoke_1267(uint64_t a1)
{
  v2 = *(a1 + 32);
  v18 = 0;
  [SecureMobileAssetBundle commitStagedManifestsForSelectors:v2 error:&v18];
  v3 = v18;
  if (v3)
  {
    v4 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 40);
      v6 = [v3 checkedDescription];
      v7 = [*(a1 + 32) count];
      *buf = 138543874;
      v20 = v5;
      v21 = 2114;
      v22 = v6;
      v23 = 2048;
      v24 = v7;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-COMMIT] {%{public}@} commit ERROR | error:%{public}@ | assetSelectors:%ld", buf, 0x20u);
    }

    [MADAutoAssetHistory recordFailedOperation:1207 fromLayer:6 failingWithError:v3];
  }

  else
  {
    +[MADAutoAssetHistory recordOperation:toHistoryType:fromLayer:usageCount:](MADAutoAssetHistory, "recordOperation:toHistoryType:fromLayer:usageCount:", 1207, 6, 6, [*(a1 + 32) count]);
    v8 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = [*(a1 + 32) count];
      *buf = 138543618;
      v20 = v9;
      v21 = 2048;
      v22 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "\n[AUTO-SECURE][AUTO-COMMIT] {%{public}@} commit SUCCESS | assetSelectors:%ld", buf, 0x16u);
    }
  }

  v11 = +[SUCore sharedCore];
  v12 = [v11 selectCompletionQueue:0];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __75__MADAutoAssetSecure_commitPrePersonalized_committingSelectors_completion___block_invoke_1268;
  v14[3] = &unk_4B3098;
  v17 = *(a1 + 48);
  v15 = *(a1 + 32);
  v16 = v3;
  v13 = v3;
  dispatch_async(v12, v14);
}

+ (BOOL)graftSecureAsset:(id)a3 secureAssetBundle:(id)a4 forSetDescriptor:(id)a5 forAssetID:(id)a6 withSelector:(id)a7 accessMechanismPtr:(int64_t *)a8 error:(id *)a9
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [[NSString alloc] initWithFormat:@"%@:graftSecureAsset", v13];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v19 = _os_activity_create(&dword_0, "MADSecure:graftSecureAsset", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v19, &state);

  if ([v14 isAccessible])
  {
    v20 = _MADLog(@"Auto");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [v14 assetBundlePath];
      *buf = 138543618;
      v39 = v18;
      v40 = 2114;
      v41 = v21;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-GRAFT] {%{public}@} already grafted | SecureMobileAssetBundle:%{public}@", buf, 0x16u);
    }

    v22 = 0;
    goto LABEL_5;
  }

  if (+[MADAutoAssetControlManager preferenceSecureSimulateGraftFailure])
  {
    v22 = [MAAutoAssetError buildError:6538 fromOperation:v18 underlyingError:0 withDescription:@"simulated failure to graft due to device being locked"];
  }

  else
  {
    v33 = objc_opt_new();
    if (v15)
    {
      v37[0] = @"/private/var/MobileAsset/AssetsV2/locks";
      v24 = [v15 clientDomainName];
      v37[1] = v24;
      v25 = [v15 assetSetIdentifier];
      v37[2] = v25;
      v37[3] = @"shared_locks";
      v26 = [NSArray arrayWithObjects:v37 count:4];
      v27 = [NSString pathWithComponents:v26];

      v28 = [NSSet setWithObject:v27];
      [v33 setPathsToPurgeOnGraftFailureInEarlyBootTask:v28];
    }

    else
    {
      v27 = _MADLog(@"Auto");
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v14 assetBundlePath];
        *buf = 138543362;
        v39 = v29;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "\n[AUTO-SECURE][AUTO-GRAFT] SecureMobileAssetBundle at %{public}@ is being grafted but lacks a set-descriptor.", buf, 0xCu);
      }
    }

    v35 = 0;
    v30 = [MADAutoAssetSecure graftOrMount:v18 ofSecureAssetBundle:v14 withAccessOptions:v33 accessMechanismPtr:a8 errorPtr:&v35];
    v22 = v35;

    if (v30)
    {
      [MADAutoAssetHistory recordOperation:1202 toHistoryType:6 fromLayer:6 forAssetID:v16 withSelector:v17];
LABEL_5:
      v23 = 1;
      goto LABEL_15;
    }
  }

  [MADAutoAssetHistory recordFailedOperation:1202 fromLayer:6 forAssetID:v16 withSelector:v17 failingWithError:v22];
  v23 = 0;
LABEL_15:
  if (a9)
  {
    v31 = v22;
    *a9 = v22;
  }

  os_activity_scope_leave(&state);
  return v23;
}

+ (void)graftDownloaded:(id)a3 graftingDescriptor:(id)a4 setDescriptor:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v36 = a5;
  v12 = a6;
  v13 = [[NSString alloc] initWithFormat:@"%@:graftDownloaded", v10];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v14 = _os_activity_create(&dword_0, "MADSecure:graftDownloaded", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v14, &state);

  v15 = +[MADAutoAssetSecure autoAssetSecure];
  v16 = [MAAutoAssetSelector alloc];
  v17 = [v11 assetType];
  v18 = [v11 assetSpecifier];
  v19 = [v11 assetVersion];
  v20 = [v16 initForAssetType:v17 withAssetSpecifier:v18 matchingAssetVersion:v19];

  v34 = v15;
  v35 = v10;
  if (v15)
  {
    v21 = [v15 secureProtectionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __82__MADAutoAssetSecure_graftDownloaded_graftingDescriptor_setDescriptor_completion___block_invoke_1283;
    block[3] = &unk_4B3138;
    v22 = &v38;
    v23 = &v39;
    v38 = v11;
    v39 = v13;
    v24 = v42;
    v42[0] = v12;
    v42[1] = a1;
    v25 = v36;
    v40 = v36;
    v41 = v20;
    v26 = v12;
    v27 = v13;
    v28 = v11;
    dispatch_async(v21, block);

    v29 = v40;
  }

  else
  {
    v29 = +[SUCore sharedCore];
    v30 = [v29 selectCompletionQueue:0];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = __82__MADAutoAssetSecure_graftDownloaded_graftingDescriptor_setDescriptor_completion___block_invoke;
    v43[3] = &unk_4B3020;
    v22 = &v44;
    v23 = &v45;
    v44 = v13;
    v45 = v11;
    v24 = &v46;
    v46 = v12;
    v31 = v12;
    v32 = v13;
    v33 = v11;
    dispatch_async(v30, v43);

    v25 = v36;
  }

  os_activity_scope_leave(&state);
}

void __82__MADAutoAssetSecure_graftDownloaded_graftingDescriptor_setDescriptor_completion___block_invoke(uint64_t a1)
{
  v2 = [MAAutoAssetError buildError:6101 fromOperation:*(a1 + 32) underlyingError:0 withDescription:@"unable to initialize MADAutoAssetSecure instance"];
  v3 = _MADLog(@"Auto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = [v2 checkedDescription];
    v6 = [*(a1 + 40) summary];
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-GRAFT] {%{public}@} graft ERROR | error:%{public}@ | autoAssetDescriptor:%{public}@", &v7, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void __82__MADAutoAssetSecure_graftDownloaded_graftingDescriptor_setDescriptor_completion___block_invoke_1283(uint64_t a1)
{
  v2 = [*(a1 + 32) assetType];
  v3 = [*(a1 + 32) assetId];
  v4 = [MADAutoAssetSecure secureBundleForAssetType:v2 assetId:v3];

  if (*(a1 + 32) && v4)
  {
    v5 = objc_alloc_init(NSMutableArray);
    [v5 addObject:*(a1 + 32)];
    v6 = [@"com.apple.MobileAsset.daemon.secureWaitedOperationQueue" UTF8String];
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create(v6, v7);

    if (v8)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __82__MADAutoAssetSecure_graftDownloaded_graftingDescriptor_setDescriptor_completion___block_invoke_1290;
      block[3] = &unk_4B3110;
      v28 = *(a1 + 72);
      v22 = *(a1 + 40);
      v23 = v4;
      v24 = *(a1 + 48);
      v25 = *(a1 + 32);
      v26 = *(a1 + 56);
      v27 = *(a1 + 64);
      dispatch_async(v8, block);

      v9 = 0;
      v10 = v22;
    }

    else
    {
      v9 = [MAAutoAssetError buildError:6101 fromOperation:*(a1 + 40) underlyingError:0 withDescription:@"unable to create waitedOperationQueue"];
      v10 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 40);
        v20 = [v9 checkedDescription];
        *buf = 138543618;
        v35 = v19;
        v36 = 2114;
        v37 = v20;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-GRAFT] {%{public}@} graft|mount ERROR | error:%{public}@ | unable to create waitedOperationQueue", buf, 0x16u);
      }
    }
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = [NSString alloc];
    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = [*(a1 + 32) summary];
    }

    else
    {
      v14 = @"N";
    }

    v15 = [v12 initWithFormat:@"unable to initialize SecureMobileAssetBundle | autoAssetDescriptor:%@", v14];
    v16 = [MAAutoAssetError buildError:6101 fromOperation:v11 underlyingError:0 withDescription:v15];

    if (v13)
    {
    }

    v17 = +[SUCore sharedCore];
    v18 = [v17 selectCompletionQueue:0];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = __82__MADAutoAssetSecure_graftDownloaded_graftingDescriptor_setDescriptor_completion___block_invoke_2;
    v29[3] = &unk_4B30C0;
    v30 = *(a1 + 40);
    v9 = v16;
    v31 = v9;
    v32 = *(a1 + 32);
    v33 = *(a1 + 64);
    dispatch_async(v18, v29);

    v5 = v30;
  }
}

uint64_t __82__MADAutoAssetSecure_graftDownloaded_graftingDescriptor_setDescriptor_completion___block_invoke_2(uint64_t a1)
{
  v2 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) checkedDescription];
    v5 = [*(a1 + 48) summary];
    v7 = 138543874;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-GRAFT] {%{public}@} graft|mount ERROR | error:%{public}@ | autoAssetDescriptor:%{public}@", &v7, 0x20u);
  }

  return (*(*(a1 + 56) + 16))();
}

void __82__MADAutoAssetSecure_graftDownloaded_graftingDescriptor_setDescriptor_completion___block_invoke_1290(uint64_t a1)
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v19 = 0;
  v2 = *(a1 + 80);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [*(a1 + 56) assetId];
  v7 = *(a1 + 64);
  v8 = (v21 + 5);
  obj = v21[5];
  [v2 graftSecureAsset:v3 secureAssetBundle:v4 forSetDescriptor:v5 forAssetID:v6 withSelector:v7 accessMechanismPtr:&v19 error:&obj];
  objc_storeStrong(v8, obj);

  v9 = +[SUCore sharedCore];
  v10 = [v9 selectCompletionQueue:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __82__MADAutoAssetSecure_graftDownloaded_graftingDescriptor_setDescriptor_completion___block_invoke_2_1291;
  block[3] = &unk_4B30E8;
  v16 = &v20;
  v12 = *(a1 + 32);
  v13 = *(a1 + 56);
  v15 = *(a1 + 72);
  v14 = *(a1 + 64);
  v17 = v19;
  dispatch_async(v10, block);

  _Block_object_dispose(&v20, 8);
}

id __82__MADAutoAssetSecure_graftDownloaded_graftingDescriptor_setDescriptor_completion___block_invoke_2_1291(uint64_t a1)
{
  v2 = *(*(*(a1 + 64) + 8) + 40);
  v3 = _MADLog(@"SecureMA");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = [*(*(*(a1 + 64) + 8) + 40) checkedDescription];
      v7 = *(*(a1 + 64) + 8);
      v8 = *(v7 + 40);
      if (v8)
      {
        v9 = [*(v7 + 40) checkedDescription];
      }

      else
      {
        v9 = @"N";
      }

      v12 = [*(a1 + 40) summary];
      *buf = 138544130;
      v20 = v5;
      v21 = 2114;
      v22 = v6;
      v23 = 2114;
      v24 = v9;
      v25 = 2114;
      v26 = v12;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-GRAFT] {%{public}@} graft|mount ERROR | secureOperationError:%{public}@ | waitedGraftError:%{public}@ | autoAssetDescriptor:%{public}@", buf, 0x2Au);
      if (v8)
      {
      }
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = [*(a1 + 40) summary];
    *buf = 138543618;
    v20 = v10;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "\n[AUTO-SECURE][AUTO-GRAFT] {%{public}@} graft|mount SUCCESS | autoAssetDescriptor:%{public}@", buf, 0x16u);
  }

  (*(*(a1 + 56) + 16))();
  v13 = *(a1 + 48);
  v14 = [MADAutoAssetSecure secureOperationGraftOrMount:*(a1 + 72)];
  v15 = *(a1 + 72);
  if (v15 == 1)
  {
    v17 = 0;
    v16 = *(*(*(a1 + 64) + 8) + 40);
  }

  else if (v15 == 2)
  {
    v16 = 0;
    v17 = *(*(*(a1 + 64) + 8) + 40);
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  return [MADAutoAssetControlManager analyticsReportSecureOperationResults:v13 clientName:0 secureReason:0 operation:v14 fromLocation:*(a1 + 32) mountError:v17 graftError:v16 personalizeError:0 mapToExclaveError:0];
}

+ (void)personalizeGraftDownloaded:(id)a3 forDescriptor:(id)a4 setDescriptor:(id)a5 allowingNetwork:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v11 = a3;
  v12 = a4;
  v22 = a5;
  v13 = a7;
  v14 = [[NSString alloc] initWithFormat:@"%@:personalizeGraftDownloaded", v11];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v15 = _os_activity_create(&dword_0, "MADSecure:personalizeGraftDownloaded", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v15, &state);

  v16 = +[MADAutoAssetSecure autoAssetSecure];
  if (v16)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __104__MADAutoAssetSecure_personalizeGraftDownloaded_forDescriptor_setDescriptor_allowingNetwork_completion___block_invoke_1295;
    v23[3] = &unk_4B31B0;
    v24 = v11;
    v25 = v12;
    v26 = v22;
    v27 = v14;
    v28 = v13;
    [MADAutoAssetSecure personalizeDownloaded:v24 personalizingDescriptor:v25 allowingNetwork:v8 committingPersonalization:1 completion:v23];
    v17 = &v24;
    v18 = &v25;
    v19 = &v26;

    v20 = v27;
  }

  else
  {
    v20 = +[SUCore sharedCore];
    v21 = [v20 selectCompletionQueue:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __104__MADAutoAssetSecure_personalizeGraftDownloaded_forDescriptor_setDescriptor_allowingNetwork_completion___block_invoke;
    block[3] = &unk_4B3020;
    v17 = &v30;
    v30 = v14;
    v18 = &v31;
    v31 = v12;
    v19 = &v32;
    v32 = v13;
    dispatch_async(v21, block);
  }

  os_activity_scope_leave(&state);
}

void __104__MADAutoAssetSecure_personalizeGraftDownloaded_forDescriptor_setDescriptor_allowingNetwork_completion___block_invoke(uint64_t a1)
{
  v2 = [MAAutoAssetError buildError:6101 fromOperation:*(a1 + 32) underlyingError:0 withDescription:@"no MADAutoAssetSecure instance"];
  v3 = _MADLog(@"Auto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = [v2 checkedDescription];
    v6 = [*(a1 + 40) summary];
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-GRAFT] {%{public}@} personalize+graft|mount ERROR | error:%{public}@ | autoAssetDescriptor:%{public}@", &v7, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void __104__MADAutoAssetSecure_personalizeGraftDownloaded_forDescriptor_setDescriptor_allowingNetwork_completion___block_invoke_1295(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = +[SUCore sharedCore];
    v6 = [v5 selectCompletionQueue:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __104__MADAutoAssetSecure_personalizeGraftDownloaded_forDescriptor_setDescriptor_allowingNetwork_completion___block_invoke_1298;
    block[3] = &unk_4B30C0;
    v7 = &v14;
    v14 = *(a1 + 56);
    v8 = &v15;
    v15 = v4;
    v9 = &v16;
    v16 = *(a1 + 40);
    v17 = *(a1 + 64);
    dispatch_async(v6, block);
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __104__MADAutoAssetSecure_personalizeGraftDownloaded_forDescriptor_setDescriptor_allowingNetwork_completion___block_invoke_2;
    v18[3] = &unk_4B3188;
    v7 = &v19;
    v12 = *(a1 + 48);
    v19 = *(a1 + 56);
    v8 = &v20;
    v20 = *(a1 + 40);
    v9 = &v21;
    v21 = *(a1 + 64);
    [MADAutoAssetSecure graftDownloaded:v10 graftingDescriptor:v11 setDescriptor:v12 completion:v18];
  }
}

void __104__MADAutoAssetSecure_personalizeGraftDownloaded_forDescriptor_setDescriptor_allowingNetwork_completion___block_invoke_2(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = +[SUCore sharedCore];
  v6 = [v5 selectCompletionQueue:0];
  if (v4)
  {
    v7 = v11;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __104__MADAutoAssetSecure_personalizeGraftDownloaded_forDescriptor_setDescriptor_allowingNetwork_completion___block_invoke_1296;
    v11[3] = &unk_4B30C0;
    v11[4] = a1[4];
    v11[5] = v4;
    v8 = &v12;
    v12 = a1[5];
    v9 = &v13;
    v13 = a1[6];
  }

  else
  {
    v7 = v14;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __104__MADAutoAssetSecure_personalizeGraftDownloaded_forDescriptor_setDescriptor_allowingNetwork_completion___block_invoke_3;
    v14[3] = &unk_4B3160;
    v14[4] = a1[4];
    v14[5] = a1[5];
    v8 = &v16;
    v10 = a1[6];
    v9 = &v15;
    v15 = 0;
    v16 = v10;
  }

  dispatch_async(v6, v7);
}

uint64_t __104__MADAutoAssetSecure_personalizeGraftDownloaded_forDescriptor_setDescriptor_allowingNetwork_completion___block_invoke_3(uint64_t a1)
{
  v2 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) summary];
    v6 = 138543618;
    v7 = v3;
    v8 = 2114;
    v9 = v4;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "\n[AUTO-SECURE][AUTO-GRAFT] {%{public}@} personalize+graft|mount SUCCESS | autoAssetDescriptor:%{public}@", &v6, 0x16u);
  }

  return (*(*(a1 + 56) + 16))();
}

uint64_t __104__MADAutoAssetSecure_personalizeGraftDownloaded_forDescriptor_setDescriptor_allowingNetwork_completion___block_invoke_1296(uint64_t a1)
{
  v2 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) checkedDescription];
    v5 = [*(a1 + 48) summary];
    v7 = 138543874;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-GRAFT] {%{public}@} personalize+graft|mount ERROR | error:%{public}@ | autoAssetDescriptor:%{public}@", &v7, 0x20u);
  }

  return (*(*(a1 + 56) + 16))();
}

uint64_t __104__MADAutoAssetSecure_personalizeGraftDownloaded_forDescriptor_setDescriptor_allowingNetwork_completion___block_invoke_1298(uint64_t a1)
{
  v2 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) checkedDescription];
    v5 = [*(a1 + 48) summary];
    v7 = 138543874;
    v8 = v3;
    v9 = 2114;
    v10 = v4;
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-GRAFT] {%{public}@} personalize+graft|mount ERROR | error:%{public}@ | autoAssetDescriptor:%{public}@", &v7, 0x20u);
  }

  return (*(*(a1 + 56) + 16))();
}

+ (BOOL)ungraft:(id)a3 forDescriptor:(id)a4 ungraftingError:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = [[NSString alloc] initWithFormat:@"%@:ungraft", v6];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v9 = _os_activity_create(&dword_0, "MADSecure:ungraft", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v9, &state);

  v10 = [MAAutoAssetSelector alloc];
  v11 = [v7 assetType];
  v12 = [v7 assetSpecifier];
  v13 = [v7 assetVersion];
  v14 = [v10 initForAssetType:v11 withAssetSpecifier:v12 matchingAssetVersion:v13];

  v15 = [v7 assetType];
  v16 = [v7 assetId];
  v17 = [MADAutoAssetSecure secureBundleForAssetType:v15 assetId:v16];

  if (v7 && v17)
  {
    v18 = objc_alloc_init(NSMutableArray);
    *buf = 0;
    [v18 addObject:v7];
    v19 = objc_opt_new();
    v30 = 0;
    v20 = [MADAutoAssetSecure ungraftOrUnmount:v8 ofSecureAssetBundle:v17 withAccessOptions:v19 accessMechanismPtr:buf errorPtr:&v30];
    v21 = v30;

    v22 = [v7 assetId];
    if (v20)
    {
      [MADAutoAssetHistory recordOperation:1203 toHistoryType:6 fromLayer:6 forAssetID:v22 withSelector:v14];
    }

    else
    {
      [MADAutoAssetHistory recordFailedOperation:1203 fromLayer:6 forAssetID:v22 withSelector:v14 failingWithError:v21];
    }

    v24 = [MADAutoAssetSecure secureOperationUngraftOrUnmount:*buf];
    if (*buf == 2)
    {
      v25 = v21;
    }

    else
    {
      v25 = 0;
    }

    if (*buf == 1)
    {
      v26 = v21;
    }

    else
    {
      v26 = 0;
    }

    [MADAutoAssetControlManager analyticsReportSecureOperationResults:v14 clientName:0 secureReason:0 operation:v24 fromLocation:v8 mountError:v25 graftError:v26 personalizeError:0 mapToExclaveError:0];
  }

  else
  {
    v18 = _MADLog(@"Auto");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      if (v7)
      {
        v23 = [v7 summary];
      }

      else
      {
        v23 = @"N";
      }

      *buf = 138543618;
      *&buf[4] = v8;
      v33 = 2114;
      v34 = v23;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-GRAFT-REMOVE] {%{public}@} ungraft|unmount unable to initialize SecureMobileAssetBundle | autoAssetDescriptor:%{public}@", buf, 0x16u);
      if (v7)
      {
      }
    }

    v21 = 0;
    v20 = 0;
  }

  if (a5)
  {
    v27 = v21;
    *a5 = v21;
  }

  os_activity_scope_leave(&state);
  return v20;
}

+ (void)personalizeSetDownloaded:(id)a3 forSetDescriptor:(id)a4 shouldGraft:(BOOL)a5 allowingNetwork:(BOOL)a6 withAutoAssetDescriptors:(id)a7 completion:(id)a8
{
  v12 = a3;
  v13 = a4;
  v31 = a7;
  v33 = a8;
  v32 = [[NSString alloc] initWithFormat:@"%@:personalizeGraftSetDownloaded", v12];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v14 = _os_activity_create(&dword_0, "MADSecure:personalizeSetDownloaded", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v14, &state);

  v34 = +[MADAutoAssetSecure autoAssetSecure];
  if (v34)
  {
    v29 = v13;
    v15 = objc_alloc_init(NSMutableArray);
    v16 = objc_alloc_init(NSMutableArray);
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v17 = v31;
    v18 = [v17 countByEnumeratingWithState:&v47 objects:v56 count:16];
    if (v18)
    {
      v19 = *v48;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v48 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v47 + 1) + 8 * i);
          if (v21 && [MADAutoAssetSecure doesDescriptorInvolvePersonalization:v12 forDescriptor:*(*(&v47 + 1) + 8 * i)])
          {
            [v15 addObject:v21];
          }

          if ([MADAutoAssetSecure doesDescriptorInvolveGrafting:v12 forDescriptor:v21])
          {
            [v16 addObject:v21];
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v47 objects:v56 count:16];
      }

      while (v18);
    }

    if ([v15 count] || objc_msgSend(v16, "count"))
    {
      v22 = [v34 secureProtectionQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __128__MADAutoAssetSecure_personalizeSetDownloaded_forSetDescriptor_shouldGraft_allowingNetwork_withAutoAssetDescriptors_completion___block_invoke_1305;
      block[3] = &unk_4B3200;
      v39 = v15;
      v40 = v32;
      v41 = v16;
      v45 = a6;
      v13 = v29;
      v42 = v29;
      v44 = v33;
      v43 = v34;
      v46 = a5;
      dispatch_async(v22, block);

      v23 = &v39;
      v24 = &v40;
      v25 = v41;
    }

    else
    {
      v25 = +[SUCore sharedCore];
      v28 = [v25 selectCompletionQueue:0];
      v35[0] = _NSConcreteStackBlock;
      v35[1] = 3221225472;
      v35[2] = __128__MADAutoAssetSecure_personalizeSetDownloaded_forSetDescriptor_shouldGraft_allowingNetwork_withAutoAssetDescriptors_completion___block_invoke_2;
      v35[3] = &unk_4B31D8;
      v37 = v33;
      v36 = v29;
      dispatch_async(v28, v35);

      v13 = v29;
      v23 = &v37;
      v24 = &v36;
    }
  }

  else
  {
    v26 = +[SUCore sharedCore];
    v27 = [v26 selectCompletionQueue:0];
    v51[0] = _NSConcreteStackBlock;
    v51[1] = 3221225472;
    v51[2] = __128__MADAutoAssetSecure_personalizeSetDownloaded_forSetDescriptor_shouldGraft_allowingNetwork_withAutoAssetDescriptors_completion___block_invoke;
    v51[3] = &unk_4B3020;
    v52 = v32;
    v53 = v13;
    v54 = v33;
    dispatch_async(v27, v51);

    v15 = v52;
  }

  os_activity_scope_leave(&state);
}

void __128__MADAutoAssetSecure_personalizeSetDownloaded_forSetDescriptor_shouldGraft_allowingNetwork_withAutoAssetDescriptors_completion___block_invoke(uint64_t a1)
{
  v2 = [MAAutoAssetError buildError:6101 fromOperation:*(a1 + 32) underlyingError:0 withDescription:@"no MADAutoAssetSecure instance"];
  v3 = _MADLog(@"Auto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = [v2 checkedDescription];
    v6 = [*(a1 + 40) summary];
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-PERSONALIZATION-GRAFT-SET] {%{public}@} personalize+graft set ERROR | error:%{public}@ | setDescriptor:%{public}@", &v7, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void __128__MADAutoAssetSecure_personalizeSetDownloaded_forSetDescriptor_shouldGraft_allowingNetwork_withAutoAssetDescriptors_completion___block_invoke_1305(uint64_t a1)
{
  v33 = objc_alloc_init(NSMutableArray);
  v34 = objc_alloc_init(NSMutableArray);
  v35 = a1;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v47 objects:v56 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v48;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v48 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v47 + 1) + 8 * i);
        v8 = [v7 assetType];
        v9 = [v7 assetId];
        v10 = [MADAutoAssetSecure secureBundleForAssetType:v8 assetId:v9];

        if (v10)
        {
          if (v7 && ([v10 isPersonalized] & 1) == 0)
          {
            [v33 addObject:v7];
          }
        }

        else
        {
          v11 = _MADLog(@"SecureMA");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            v12 = *(v35 + 40);
            v13 = [v7 summary];
            *buf = 138543618;
            v53 = v12;
            v54 = 2114;
            v55 = v13;
            _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-PERSONALIZATION-GRAFT-SET] {%{public}@} personalize+graft set unable to initialize SecureMobileAssetBundle | potentialPersonalizationDescriptor:%{public}@", buf, 0x16u);
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v47 objects:v56 count:16];
    }

    while (v4);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v14 = *(v35 + 48);
  v15 = [v14 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v44;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v44 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v43 + 1) + 8 * j);
        v20 = [v19 assetType];
        v21 = [v19 assetId];
        v22 = [MADAutoAssetSecure secureBundleForAssetType:v20 assetId:v21];

        if (v22)
        {
          v23 = [v22 isAccessible];
          if (v19 && (v23 & 1) == 0)
          {
            [v34 addObject:v19];
          }
        }

        else
        {
          v24 = _MADLog(@"SecureMA");
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v25 = *(v35 + 40);
            v26 = [v19 summary];
            *buf = 138543618;
            v53 = v25;
            v54 = 2114;
            v55 = v26;
            _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-PERSONALIZATION-GRAFT-SET] {%{public}@} personalize+graft set unable to initialize SecureMobileAssetBundle | potentialGraftDescriptor:%{public}@", buf, 0x16u);
          }
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v16);
  }

  if (![v33 count] && !objc_msgSend(v34, "count"))
  {
    v31 = +[SUCore sharedCore];
    v32 = [v31 selectCompletionQueue:0];
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = __128__MADAutoAssetSecure_personalizeSetDownloaded_forSetDescriptor_shouldGraft_allowingNetwork_withAutoAssetDescriptors_completion___block_invoke_1310;
    v36[3] = &unk_4B31D8;
    v38 = *(v35 + 72);
    v37 = *(v35 + 56);
    dispatch_async(v32, v36);

    v30 = v38;
    goto LABEL_36;
  }

  v27 = [v33 count];
  if (v27 && (*(v35 + 80) & 1) == 0)
  {
    v28 = +[SUCore sharedCore];
    v29 = [v28 selectCompletionQueue:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __128__MADAutoAssetSecure_personalizeSetDownloaded_forSetDescriptor_shouldGraft_allowingNetwork_withAutoAssetDescriptors_completion___block_invoke_1306;
    block[3] = &unk_4B3020;
    v40 = *(v35 + 40);
    v41 = *(v35 + 56);
    v42 = *(v35 + 72);
    dispatch_async(v29, block);

    v30 = v40;
LABEL_36:

    goto LABEL_37;
  }

  [*(v35 + 64) _personalizeGraftSetDownloaded:*(v35 + 40) forSetDescriptor:*(v35 + 56) allowingNetwork:(v27 != 0) | (*(v35 + 80) & 1) requiringPersonalization:v33 requiringGrafting:v34 shouldGraft:*(v35 + 81) completion:*(v35 + 72)];
LABEL_37:
}

void __128__MADAutoAssetSecure_personalizeSetDownloaded_forSetDescriptor_shouldGraft_allowingNetwork_withAutoAssetDescriptors_completion___block_invoke_1306(uint64_t a1)
{
  v2 = [MAAutoAssetError buildError:6533 fromOperation:*(a1 + 32) underlyingError:0 withDescription:@"personalization required when network communication not allowed"];
  v3 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = [v2 checkedDescription];
    v6 = [*(a1 + 40) summary];
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-PERSONALIZATION-GRAFT-SET] {%{public}@} personalize+graft set ERROR | error:%{public}@ | setDescriptor:%{public}@", &v7, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

+ (BOOL)isPersonalizationRequired:(id)a3 forSetDescriptor:(id)a4
{
  v20 = a3;
  v22 = a4;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v5 = _os_activity_create(&dword_0, "MADSecure:isPersonalizationRequired", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v5, &state);

  v21 = [[NSString alloc] initWithFormat:@"%@:isPersonalizationRequired", v20];
  v19 = +[MADAutoAssetSecure autoAssetSecure];
  if (v19)
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = [v22 latestDowloadedAtomicInstanceEntries];
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v7)
    {
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v23 + 1) + 8 * i);
          if (v10)
          {
            v11 = [*(*(&v23 + 1) + 8 * i) fullAssetSelector];
            v12 = [v11 assetType];
            v13 = [v10 assetID];
            v14 = [MADAutoAssetSecure secureBundleForAssetType:v12 assetId:v13];

            if (v14)
            {
              if ([v14 isSecureMobileAsset] && !objc_msgSend(v14, "isPersonalized"))
              {

                LOBYTE(v7) = 1;
                goto LABEL_22;
              }
            }

            else
            {
              v15 = _MADLog(@"SecureMA");
              if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
              {
                v16 = [v22 summary];
                *buf = 138543618;
                v30 = v21;
                v31 = 2114;
                v32 = v16;
                _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} unable to initialize SecureMobileAssetBundle | setDescriptor:%{public}@", buf, 0x16u);
              }
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v6 = _MADLog(@"Auto");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v17 = [v22 summary];
      *buf = 138543618;
      v30 = v21;
      v31 = 2114;
      v32 = v17;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} unable to locate shared auto-asset-secure instance | setDescriptor:%{public}@", buf, 0x16u);
    }

    LOBYTE(v7) = 0;
  }

LABEL_22:

  os_activity_scope_leave(&state);
  return v7;
}

+ (BOOL)readyToCommitPrePersonalized:(id)a3 forSetDescriptor:(id)a4
{
  v5 = a3;
  v6 = a4;
  v26 = [[NSString alloc] initWithFormat:@"%@:isPersonalizationRequired", v5];
  v7 = +[MADAutoAssetSecure autoAssetSecure];
  if (!v7)
  {
    v8 = _MADLog(@"Auto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v20 = [v6 summary];
      *buf = 138543618;
      v33 = v26;
      v34 = 2114;
      v35 = v20;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} unable to locate shared auto-asset-secure instance | setDescriptor:%{public}@", buf, 0x16u);
    }

    goto LABEL_22;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [v6 latestDowloadedAtomicInstanceEntries];
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v9)
  {
LABEL_22:
    v21 = 1;
    goto LABEL_24;
  }

  v10 = v9;
  v23 = v7;
  v24 = v5;
  v25 = v6;
  v11 = *v28;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v27 + 1) + 8 * i);
      if (v13)
      {
        v14 = [*(*(&v27 + 1) + 8 * i) fullAssetSelector];
        v15 = [v14 assetType];
        v16 = [v13 assetID];
        v17 = [MADAutoAssetSecure secureBundleForAssetType:v15 assetId:v16];

        if (v17)
        {
          if ([v17 isSecureMobileAsset] && (objc_msgSend(v17, "isPersonalized") & 1) == 0 && !objc_msgSend(v17, "isPersonalizedManifestStaged"))
          {

            v21 = 0;
            goto LABEL_23;
          }
        }

        else
        {
          v18 = _MADLog(@"SecureMA");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = [v25 summary];
            *buf = 138543618;
            v33 = v26;
            v34 = 2114;
            v35 = v19;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} unable to initialize SecureMobileAssetBundle | setDescriptor:%{public}@", buf, 0x16u);
          }
        }
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v10);
  v21 = 1;
LABEL_23:
  v7 = v23;
  v5 = v24;
  v6 = v25;
LABEL_24:

  return v21;
}

+ (BOOL)isPersonalizationOrGraftingRequired:(id)a3 forSetDescriptor:(id)a4
{
  v5 = a3;
  v6 = a4;
  v26 = [[NSString alloc] initWithFormat:@"%@:isPersonalizationOrGraftingRequired", v5];
  v7 = +[MADAutoAssetSecure autoAssetSecure];
  if (!v7)
  {
    v8 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v20 = [v6 summary];
      *buf = 138543618;
      v33 = v26;
      v34 = 2114;
      v35 = v20;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} unable to locate shared auto-asset-secure instance | setDescriptor:%{public}@", buf, 0x16u);
    }

    goto LABEL_22;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v8 = [v6 latestDowloadedAtomicInstanceEntries];
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (!v9)
  {
LABEL_22:
    v21 = 0;
    goto LABEL_24;
  }

  v10 = v9;
  v23 = v7;
  v24 = v5;
  v25 = v6;
  v11 = *v28;
  do
  {
    for (i = 0; i != v10; i = i + 1)
    {
      if (*v28 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v27 + 1) + 8 * i);
      if (v13)
      {
        v14 = [*(*(&v27 + 1) + 8 * i) fullAssetSelector];
        v15 = [v14 assetType];
        v16 = [v13 assetID];
        v17 = [MADAutoAssetSecure secureBundleForAssetType:v15 assetId:v16];

        if (v17)
        {
          if ([v17 isSecureMobileAsset] && (objc_msgSend(v17, "isPersonalized") & 1) == 0 && !objc_msgSend(v17, "isAccessible"))
          {

            v21 = 1;
            goto LABEL_23;
          }
        }

        else
        {
          v18 = _MADLog(@"SecureMA");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v19 = [v25 summary];
            *buf = 138543618;
            v33 = v26;
            v34 = 2114;
            v35 = v19;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-DETERMINE] {%{public}@} unable to initialize SecureMobileAssetBundle | setDescriptor:%{public}@", buf, 0x16u);
          }
        }
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  }

  while (v10);
  v21 = 0;
LABEL_23:
  v7 = v23;
  v5 = v24;
  v6 = v25;
LABEL_24:

  return v21;
}

+ (BOOL)ungraftAll:(id)a3 forSetDescriptor:(id)a4 withAutoAssetDescriptors:(id)a5 ungraftingError:(id *)a6
{
  v8 = a3;
  v35 = a4;
  v37 = a5;
  v41 = [[NSString alloc] initWithFormat:@"%@:ungraftAll", v8];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v9 = _os_activity_create(&dword_0, "MADSecure:ungraftAll", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v9, &state);

  v39 = +[MADAutoAssetSecure autoAssetSecure];
  v40 = objc_alloc_init(NSMutableArray);
  v38 = v39 != 0;
  if (!v39)
  {
    v17 = [MAAutoAssetError buildError:6101 fromOperation:v41 underlyingError:0 withDescription:@"no MADAutoAssetSecure instance"];
    if (v17)
    {
      goto LABEL_28;
    }

LABEL_32:
    v27 = _MADLog(@"Auto");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v35 summary];
      v31 = v30;
      v32 = @"N";
      *buf = 138543874;
      v53 = v41;
      v54 = 2114;
      if (v38)
      {
        v32 = @"Y";
      }

      v55 = v30;
      v56 = 2114;
      v57 = v32;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "\n[AUTO-SECURE][AUTO-GRAFT-REMOVE-ALL] {%{public}@} ungraft|unmount SUCCESS | setDescriptor:%{public}@ | ungraftingRequired:%{public}@", buf, 0x20u);
    }

    v17 = 0;
    goto LABEL_37;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v10 = v37;
  v11 = [v10 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (!v11)
  {

LABEL_31:
    v38 = 0;
    goto LABEL_32;
  }

  v12 = 0;
  v13 = *v48;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v48 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v47 + 1) + 8 * i);
      if (v15 && [MADAutoAssetSecure isSecureAsset:v8 forDescriptor:*(*(&v47 + 1) + 8 * i)])
      {
        [v40 addObject:v15];
        v12 = 1;
      }
    }

    v11 = [v10 countByEnumeratingWithState:&v47 objects:v59 count:16];
  }

  while (v11);

  if ((v12 & 1) == 0)
  {
    goto LABEL_31;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v16 = v40;
  v17 = 0;
  v18 = [v16 countByEnumeratingWithState:&v43 objects:v58 count:16];
  if (v18)
  {
    v19 = *v44;
    do
    {
      for (j = 0; j != v18; j = j + 1)
      {
        if (*v44 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v43 + 1) + 8 * j);
        v22 = objc_autoreleasePoolPush();
        v42 = 0;
        v23 = [MADAutoAssetSecure ungraft:v41 forDescriptor:v21 ungraftingError:&v42];
        v24 = v42;
        v25 = v24;
        if (v17)
        {
          v26 = 1;
        }

        else
        {
          v26 = v23;
        }

        if ((v26 & 1) == 0)
        {
          v17 = v24;
        }

        objc_autoreleasePoolPop(v22);
      }

      v18 = [v16 countByEnumeratingWithState:&v43 objects:v58 count:16];
    }

    while (v18);
  }

  if (!v17)
  {
    goto LABEL_32;
  }

LABEL_28:
  v27 = _MADLog(@"Auto");
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v28 = [v17 checkedDescription];
    v29 = [v35 summary];
    *buf = 138543874;
    v53 = v41;
    v54 = 2114;
    v55 = v28;
    v56 = 2114;
    v57 = v29;
    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-GRAFT-REMOVE-ALL] {%{public}@} ungraft|unmount ERROR | error:%{public}@ | setDescriptor:%{public}@", buf, 0x20u);
  }

LABEL_37:

  if (a6)
  {
    v33 = v17;
    *a6 = v17;
  }

  os_activity_scope_leave(&state);
  return v38;
}

+ (void)mapToExclave:(id)a3 forDescriptor:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [[NSString alloc] initWithFormat:@"%@:mapToExclave", v7];
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v11 = _os_activity_create(&dword_0, "MADSecure:mapToExclave", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v11, &state);

  v12 = +[MADAutoAssetSecure autoAssetSecure];
  v13 = [MAAutoAssetSelector alloc];
  v14 = [v8 assetType];
  v15 = [v8 assetSpecifier];
  v16 = [v8 assetVersion];
  v33 = [v13 initForAssetType:v14 withAssetSpecifier:v15 matchingAssetVersion:v16];

  if (v12)
  {
    v17 = [@"com.apple.MobileAsset.daemon.secureWaitedOperationQueue" UTF8String];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(v17, v18);

    v31 = v12;
    v32 = v7;
    if (v19)
    {
      v20 = v9;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __60__MADAutoAssetSecure_mapToExclave_forDescriptor_completion___block_invoke_1318;
      block[3] = &unk_4B30C0;
      v21 = &v35;
      v35 = v8;
      v22 = &v36;
      v36 = v10;
      v23 = &v37;
      v24 = v33;
      v37 = v33;
      v25 = v20;
      v38 = v20;
      dispatch_async(v19, block);
      v26 = v38;
    }

    else
    {
      v26 = +[SUCore sharedCore];
      v29 = [v26 selectCompletionQueue:0];
      v30 = v9;
      v39[0] = _NSConcreteStackBlock;
      v39[1] = 3221225472;
      v39[2] = __60__MADAutoAssetSecure_mapToExclave_forDescriptor_completion___block_invoke_1317;
      v39[3] = &unk_4B3020;
      v21 = &v40;
      v40 = v10;
      v22 = &v41;
      v41 = v8;
      v23 = &v42;
      v25 = v30;
      v42 = v30;
      dispatch_async(v29, v39);

      v24 = v33;
    }

    v12 = v31;
    v7 = v32;
    v9 = v25;
  }

  else
  {
    v27 = +[SUCore sharedCore];
    v28 = [v27 selectCompletionQueue:0];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = __60__MADAutoAssetSecure_mapToExclave_forDescriptor_completion___block_invoke;
    v43[3] = &unk_4B3020;
    v44 = v10;
    v45 = v8;
    v46 = v9;
    dispatch_async(v28, v43);

    v19 = v44;
    v24 = v33;
  }

  os_activity_scope_leave(&state);
}

void __60__MADAutoAssetSecure_mapToExclave_forDescriptor_completion___block_invoke(uint64_t a1)
{
  v2 = [MAAutoAssetError buildError:6101 fromOperation:*(a1 + 32) underlyingError:0 withDescription:@"no MADAutoAssetSecure instance"];
  v3 = _MADLog(@"Auto");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = [v2 checkedDescription];
    v6 = [*(a1 + 40) summary];
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][MAP-TO-EXCLAVE] {%{public}@} map-to-exclave ERROR | error:%{public}@ | autoAssetDescriptor:%{public}@", &v7, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void __60__MADAutoAssetSecure_mapToExclave_forDescriptor_completion___block_invoke_1317(uint64_t a1)
{
  v2 = [MAAutoAssetError buildError:6101 fromOperation:*(a1 + 32) underlyingError:0 withDescription:@"unable to allocate waitedOperationQueue"];
  v3 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = [v2 checkedDescription];
    v6 = [*(a1 + 40) summary];
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][MAP-TO-EXCLAVE] {%{public}@} map-to-exclave ERROR | mapToExclaveError:%{public}@ | autoAssetDescriptor:%{public}@", &v7, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void __60__MADAutoAssetSecure_mapToExclave_forDescriptor_completion___block_invoke_1318(id *a1)
{
  v2 = [a1[4] assetType];
  v3 = [a1[4] assetId];
  v4 = [MADAutoAssetSecure secureBundleForAssetType:v2 assetId:v3];

  if (v4)
  {
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x3032000000;
    v29[3] = __Block_byref_object_copy__1;
    v29[4] = __Block_byref_object_dispose__1;
    v30 = 0;
    obj = 0;
    v5 = [v4 mapToExclaves:&obj];
    objc_storeStrong(&v30, obj);
    v6 = +[SUCore sharedCore];
    v7 = [v6 selectCompletionQueue:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __60__MADAutoAssetSecure_mapToExclave_forDescriptor_completion___block_invoke_1319;
    block[3] = &unk_4B3228;
    v27 = v5;
    v26 = v29;
    v8 = a1[5];
    v9 = a1[4];
    v10 = a1[6];
    v11 = a1[7];
    *&v12 = v10;
    *(&v12 + 1) = v11;
    *&v13 = v8;
    *(&v13 + 1) = v9;
    v24 = v13;
    v25 = v12;
    dispatch_async(v7, block);

    _Block_object_dispose(v29, 8);
    v14 = v30;
  }

  else
  {
    v15 = +[SUCore sharedCore];
    v16 = [v15 selectCompletionQueue:0];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = __60__MADAutoAssetSecure_mapToExclave_forDescriptor_completion___block_invoke_2;
    v31[3] = &unk_4B30C0;
    v17 = a1[5];
    v18 = a1[4];
    v19 = a1[6];
    v20 = a1[7];
    *&v21 = v19;
    *(&v21 + 1) = v20;
    *&v22 = v17;
    *(&v22 + 1) = v18;
    v32 = v22;
    v33 = v21;
    dispatch_async(v16, v31);

    v14 = v32;
  }
}

void __60__MADAutoAssetSecure_mapToExclave_forDescriptor_completion___block_invoke_2(uint64_t a1)
{
  v2 = [MAAutoAssetError buildError:6101 fromOperation:*(a1 + 32) underlyingError:0 withDescription:@"unable to initialize SecureMobileAssetBundle"];
  v3 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = [v2 checkedDescription];
    v6 = [*(a1 + 40) summary];
    *buf = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][MAP-TO-EXCLAVE] {%{public}@} map-to-exclave ERROR | error:%{public}@ | autoAssetDescriptor:%{public}@", buf, 0x20u);
  }

  [MADAutoAssetControlManager analyticsReportSecureOperationResults:*(a1 + 48) clientName:0 secureReason:0 operation:1 fromLocation:*(a1 + 32) mountError:0 graftError:0 personalizeError:0 mapToExclaveError:v2];
  (*(*(a1 + 56) + 16))();
}

void __60__MADAutoAssetSecure_mapToExclave_forDescriptor_completion___block_invoke_1319(uint64_t a1)
{
  v2 = *(*(*(a1 + 64) + 8) + 40);
  if (*(a1 + 72) == 1 && v2 == 0)
  {
    v15 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = [*(a1 + 40) summary];
      *buf = 138543618;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "\n[AUTO-SECURE][MAP-TO-EXCLAVE] {%{public}@} map-to-exclave SUCCESS | autoAssetDescriptor:%{public}@", buf, 0x16u);
    }

    v18 = [*(a1 + 40) assetId];
    [MADAutoAssetHistory recordOperation:1204 toHistoryType:6 fromLayer:6 forAssetID:v18 withSelector:*(a1 + 48)];

    [MADAutoAssetControlManager analyticsReportSecureOperationResults:*(a1 + 48) clientName:0 secureReason:0 operation:1 fromLocation:*(a1 + 32) mountError:0 graftError:0 personalizeError:0 mapToExclaveError:0];
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [NSString alloc];
    v6 = [*(a1 + 40) summary];
    v7 = [v5 initWithFormat:@"unable to map secure-asset to exclave environment | autoAssetDescriptor:%@", v6];
    v8 = [MAAutoAssetError buildError:6537 fromOperation:v4 underlyingError:v2 withDescription:v7];

    v9 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = [v8 checkedDescription];
      v12 = *(*(a1 + 64) + 8);
      v13 = *(v12 + 40);
      if (v13)
      {
        v14 = [*(v12 + 40) checkedDescription];
      }

      else
      {
        v14 = @"N";
      }

      v19 = [*(a1 + 40) summary];
      *buf = 138544130;
      v22 = v10;
      v23 = 2114;
      v24 = v11;
      v25 = 2114;
      v26 = v14;
      v27 = 2114;
      v28 = v19;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][MAP-TO-EXCLAVE] {%{public}@} map-to-exclave ERROR| secureOperationError:%{public}@ | mapToExclaveError:%{public}@ | autoAssetDescriptor:%{public}@ ", buf, 0x2Au);
      if (v13)
      {
      }
    }

    v20 = [*(a1 + 40) assetId];
    [MADAutoAssetHistory recordFailedOperation:1204 fromLayer:6 forAssetID:v20 withSelector:*(a1 + 48) failingWithError:*(*(*(a1 + 64) + 8) + 40)];

    [MADAutoAssetControlManager analyticsReportSecureOperationResults:*(a1 + 48) clientName:0 secureReason:0 operation:1 fromLocation:*(a1 + 32) mountError:0 graftError:0 personalizeError:0 mapToExclaveError:v8];
    (*(*(a1 + 56) + 16))();
  }
}

+ (void)ungraftIfNotAccessible:(id)a3
{
  v3 = a3;
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v4 = _os_activity_create(&dword_0, "MADSecure:ungraftIfNotAccessible", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v4, &state);

  v5 = [[SecureMobileAssetBundle alloc] initWithPath:v3];
  v6 = v5;
  if (!v5)
  {
    v7 = _MADLog(@"Auto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = v3;
      v8 = "\n[AUTO-SECURE][AUTO-GRAFT-REMOVE] {ungraftIfNotAccessible} unable to create secure asset bundle | assetPath:%{public}@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }

LABEL_24:

    goto LABEL_25;
  }

  if ([(SecureMobileAssetBundle *)v5 isSecureMobileAsset])
  {
    if (![(SecureMobileAssetBundle *)v6 isAccessible])
    {
      v7 = [(SecureMobileAssetBundle *)v6 assetValues];
      v11 = [v7 safeObjectForKey:@"AssetType" ofClass:objc_opt_class()];
      if (!v11 || ([v7 safeObjectForKey:@"AssetSpecifier" ofClass:objc_opt_class()], v12 = objc_claimAutoreleasedReturnValue(), v13 = v12 == 0, v12, v11, v13))
      {
        v17 = _MADLog(@"Auto");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-GRAFT-REMOVE] {ungraftIfNotAccessible} failed to retrieve asset attributes", buf, 2u);
        }
      }

      else
      {
        v14 = [MAAutoAssetSelector alloc];
        v15 = [v7 objectForKeyedSubscript:@"AssetType"];
        v16 = [v7 objectForKeyedSubscript:@"AssetSpecifier"];
        v17 = [v14 initForAssetType:v15 withAssetSpecifier:v16];

        *buf = 0;
        v18 = objc_opt_new();
        v24 = 0;
        v19 = [MADAutoAssetSecure ungraftOrUnmount:@"ungraftIfNotAccessible" ofSecureAssetBundle:v6 withAccessOptions:v18 accessMechanismPtr:buf errorPtr:&v24];
        v20 = v24;

        if (v19)
        {
          [MADAutoAssetHistory recordOperation:1203 toHistoryType:6 fromLayer:6 forAssetID:@"N/A" withSelector:v17];
        }

        else
        {
          [MADAutoAssetHistory recordFailedOperation:1203 fromLayer:6 forAssetID:@"N/A" withSelector:v17 failingWithError:v20];
        }

        v21 = [MADAutoAssetSecure secureOperationUngraftOrUnmount:*buf];
        if (*buf == 2)
        {
          v22 = v20;
        }

        else
        {
          v22 = 0;
        }

        if (*buf == 1)
        {
          v23 = v20;
        }

        else
        {
          v23 = 0;
        }

        [MADAutoAssetControlManager analyticsReportSecureOperationResults:v17 clientName:0 secureReason:0 operation:v21 fromLocation:@"N/A" mountError:v22 graftError:v23 personalizeError:0 mapToExclaveError:0];
      }

      goto LABEL_24;
    }

    v7 = _MADLog(@"Auto");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v3;
      v8 = "\n[AUTO-SECURE][AUTO-GRAFT-REMOVE] {ungraftIfNotAccessible} remains accessible | assetPath:%{public}@";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEFAULT;
LABEL_8:
      _os_log_impl(&dword_0, v9, v10, v8, buf, 0xCu);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

LABEL_25:

  os_activity_scope_leave(&state);
}

+ (BOOL)isErrorDueToDeviceBeingLocked:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v5 = [v3 domain];
  if (![SUCore stringIsEqual:v5 to:@"com.apple.MobileAssetError.AutoAsset"])
  {

    goto LABEL_7;
  }

  v6 = [v4 code];

  if (v6 != ".framework/PowerLog")
  {
LABEL_7:
    v7 = [SecureMobileAssetBundle isErrorDueToDeviceBeingLocked:v4];
    goto LABEL_8;
  }

  v7 = 1;
LABEL_8:

  return v7;
}

+ (id)buildGraftFailureError:(id)a3 withUnderlyingError:(id)a4
{
  v5 = a4;
  v6 = a3;
  if ([SecureMobileAssetBundle isErrorDueToDeviceBeingLocked:v5])
  {
    v7 = @"Graft of secure mobile asset failed due to device being locked";
    v8 = 6538;
  }

  else
  {
    v7 = @"Graft of secure mobile asset failed";
    v8 = 6107;
  }

  v9 = [MAAutoAssetError buildError:v8 fromOperation:v6 underlyingError:v5 withDescription:v7];

  return v9;
}

- (void)_personalizeGraftSetDownloaded:(id)a3 forSetDescriptor:(id)a4 allowingNetwork:(BOOL)a5 requiringPersonalization:(id)a6 requiringGrafting:(id)a7 shouldGraft:(BOOL)a8 completion:(id)a9
{
  v14 = a4;
  v15 = a6;
  v36 = a7;
  v16 = a9;
  v17 = a3;
  v18 = [[NSString alloc] initWithFormat:@"%@:_personalizeGraftSetDownloaded", v17];

  v19 = [@"com.apple.MobileAsset.daemon.secureWaitedOperationQueue" UTF8String];
  v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v21 = dispatch_queue_create(v19, v20);

  if (v21)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __152__MADAutoAssetSecure__personalizeGraftSetDownloaded_forSetDescriptor_allowingNetwork_requiringPersonalization_requiringGrafting_shouldGraft_completion___block_invoke_1341;
    block[3] = &unk_4B3250;
    v22 = &v38;
    v23 = v15;
    v24 = v15;
    v25 = &v39;
    v38 = v23;
    v39 = v18;
    v43 = a5;
    v26 = &v40;
    v40 = v14;
    v44 = a8;
    v27 = v36;
    v41 = v36;
    v42 = v16;
    v28 = v16;
    v29 = v14;
    v30 = v18;
    dispatch_async(v21, block);

    v31 = v41;
  }

  else
  {
    v31 = +[SUCore sharedCore];
    v32 = [v31 selectCompletionQueue:0];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = __152__MADAutoAssetSecure__personalizeGraftSetDownloaded_forSetDescriptor_allowingNetwork_requiringPersonalization_requiringGrafting_shouldGraft_completion___block_invoke;
    v45[3] = &unk_4B3020;
    v22 = &v46;
    v24 = v15;
    v25 = &v47;
    v46 = v18;
    v47 = v14;
    v26 = &v48;
    v48 = v16;
    v33 = v16;
    v34 = v14;
    v35 = v18;
    dispatch_async(v32, v45);

    v27 = v36;
  }
}

void __152__MADAutoAssetSecure__personalizeGraftSetDownloaded_forSetDescriptor_allowingNetwork_requiringPersonalization_requiringGrafting_shouldGraft_completion___block_invoke(uint64_t a1)
{
  v2 = [MAAutoAssetError buildError:6101 fromOperation:*(a1 + 32) underlyingError:0 withDescription:@"unable to allocate waitedOperationQueue"];
  v3 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 32);
    v5 = [v2 checkedDescription];
    v6 = [*(a1 + 40) summary];
    v7 = 138543874;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-PERSONALIZATION-GRAFT-SET] {%{public}@} personalize+graft|mount set ERROR | error:%{public}@ | setDescriptor:%{public}@", &v7, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void __152__MADAutoAssetSecure__personalizeGraftSetDownloaded_forSetDescriptor_allowingNetwork_requiringPersonalization_requiringGrafting_shouldGraft_completion___block_invoke_1341(uint64_t a1)
{
  v2 = objc_alloc_init(NSMutableArray);
  v186 = 0u;
  v187 = 0u;
  v188 = 0u;
  v189 = 0u;
  v3 = *(a1 + 32);
  v154 = v2;
  v157 = a1;
  v155 = [v3 countByEnumeratingWithState:&v186 objects:v199 count:16];
  if (!v155)
  {

    v170 = 0;
    goto LABEL_53;
  }

  v170 = 0;
  v4 = 0;
  v156 = *v187;
  v152 = kAMAuthInstallErrorDomain;
  obj = v3;
  do
  {
    v5 = 0;
    do
    {
      if (*v187 != v156)
      {
        objc_enumerationMutation(obj);
      }

      v6 = *(*(&v186 + 1) + 8 * v5);
      v7 = [MAAutoAssetSelector alloc];
      v8 = [v6 assetType];
      v9 = [v6 assetSpecifier];
      v10 = [v6 assetVersion];
      v11 = [v7 initForAssetType:v8 withAssetSpecifier:v9 matchingAssetVersion:v10];

      if (!v11)
      {
        v69 = *(a1 + 40);
        v70 = [NSString alloc];
        v71 = [v6 summary];
        v72 = [v70 initWithFormat:@"unable to initialize autoAssetSelector (for personalization) | nextAutoAssetDescriptor:%@", v71];
        v73 = [MAAutoAssetError buildError:6101 fromOperation:v69 underlyingError:0 withDescription:v72];

        a1 = v157;
        v74 = v6;
        v4 = v73;
        v11 = v170;
LABEL_50:

        v170 = v74;
LABEL_51:
        v67 = obj;
        v2 = v154;
        goto LABEL_52;
      }

      v12 = [v6 assetType];
      v13 = [v6 assetId];
      v14 = [MADAutoAssetSecure secureBundleForAssetType:v12 assetId:v13];

      if (!v14)
      {
        v75 = *(a1 + 40);
        v76 = [NSString alloc];
        v77 = [v6 summary];
        v78 = [v76 initWithFormat:@"unable to initialize SecureMobileAssetBundle (for personalization) | nextAutoAssetDescriptor:%@", v77];
        v79 = [MAAutoAssetError buildError:6101 fromOperation:v75 underlyingError:0 withDescription:v78];

        v74 = v6;
        v4 = v79;
        goto LABEL_50;
      }

      v15 = objc_alloc_init(NSMutableDictionary);
      v16 = [[NSNumber alloc] initWithInteger:*(a1 + 72)];
      v17 = [[NSNumber alloc] initWithBool:1];
      v164 = v16;
      [v15 setSafeObject:v16 forKey:@"AllowNetworkCommunication"];
      v163 = v17;
      [v15 setSafeObject:v17 forKey:@"stageManifest"];
      v185 = 0;
      v166 = v15;
      v18 = [v14 personalize:v15 error:&v185];
      v19 = v185;
      v168 = v14;
      if (v19)
      {
        v20 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 40);
          v22 = [v19 checkedDescription];
          *buf = 138543618;
          *&buf[4] = v21;
          v193 = 2114;
          v194 = v22;
          _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "\n[AUTO-SECURE][AUTO-PERSONALIZATION-GRAFT-SET] {%{public}@} received error while attempting personalization without SSO Token - NON-FATAL ERROR | error:%{public}@", buf, 0x16u);
        }

        v158 = v11;

        v23 = [v19 domain];
        v24 = [v23 isEqualToString:v152];

        v25 = [v19 code];
        v171 = v4;
        if ((v18 & 1) != 0 || !v24 || v25 != &stru_C40.reloff + 2)
        {
          v30 = 0;
          v161 = 0;
          v162 = 0;
          v160 = 0;
          goto LABEL_26;
        }

        v26 = objc_opt_new();
        v184 = 0;
        v162 = v26;
        v27 = [v26 copyPersonalizationSSOToken:1 error:&v184];
        v28 = v184;
        v161 = v27;
        if (v28 || !v27)
        {
          v64 = _MADLog(@"SecureMA");
          v160 = v28;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            v65 = *(a1 + 40);
            if (v28)
            {
              v150 = [v28 checkedDescription];
              v66 = v150;
            }

            else
            {
              v66 = @"NO-SSO-TOKEN";
            }

            *buf = 138543618;
            *&buf[4] = v65;
            v193 = 2114;
            v194 = v66;
            _os_log_impl(&dword_0, v64, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-PERSONALIZATION-GRAFT-SET] {%{public}@} personalize+graft|mount set could not obtain SSO Token ERROR | error:%{public}@", buf, 0x16u);
            if (v28)
            {
            }
          }

          v30 = 0;
LABEL_26:
          v51 = *(a1 + 40);
          v52 = [NSString alloc];
          v53 = [v6 summary];
          v54 = [v52 initWithFormat:@"unable to personalize secure-asset | autoAssetDescriptor:%@", v53];
          v55 = [MAAutoAssetError buildError:6535 fromOperation:v51 underlyingError:v19 withDescription:v54];

          v56 = _MADLog(@"SecureMA");
          v159 = v5;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            v57 = *(a1 + 40);
            v58 = [v55 checkedDescription];
            v59 = @"N";
            if (!v30)
            {
              v59 = [v19 checkedDescription];
              v151 = v59;
            }

            v60 = [v6 summary];
            *buf = 138544130;
            *&buf[4] = v57;
            v193 = 2114;
            v194 = v58;
            v195 = 2114;
            v196 = v59;
            v197 = 2114;
            v198 = v60;
            _os_log_impl(&dword_0, v56, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-PERSONALIZATION-GRAFT-SET] {%{public}@} personalize+graft|mount set ERROR | secureOperationError:%{public}@ | waitedPersonalizeError:%{public}@ | autoAssetDescriptor:%{public}@", buf, 0x2Au);
            if (!v30)
            {
            }

            a1 = v157;
          }

          v40 = v55;
          v61 = v6;

          v62 = [*(a1 + 48) clientDomainName];
          [MADAutoAssetControlManager analyticsReportSecureOperationResults:v158 clientName:v62 secureReason:0 operation:7 fromLocation:*(a1 + 40) mountError:0 graftError:0 personalizeError:v40 mapToExclaveError:0];

          v37 = a1;
          v47 = [*(a1 + 48) clientDomainName];
          v48 = [v61 assetId];
          v44 = v158;
          [MADAutoAssetHistory recordFailedOperation:1206 fromClient:v47 forAssetID:v48 withSelector:v158 failingWithError:v40];
          v50 = 0;
          v170 = v61;
          v4 = v40;
LABEL_33:

          v11 = v44;
          a1 = v37;
          v5 = v159;
          v63 = v160;
          goto LABEL_34;
        }

        [v166 setSafeObject:v27 forKey:@"ssoToken"];
        v183 = v19;
        v18 = [v168 personalize:v166 error:&v183];
        v29 = v183;

        v19 = v29;
      }

      else
      {
        v161 = 0;
        v162 = 0;
      }

      v160 = 0;
      v30 = v19 == 0;
      if (!v18 || v19)
      {
        v158 = v11;
        v171 = v4;
        goto LABEL_26;
      }

      v31 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = *(a1 + 40);
        v33 = [v6 summary];
        *buf = 138543618;
        *&buf[4] = v32;
        v193 = 2114;
        v194 = v33;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "\n[AUTO-SECURE][AUTO-PERSONALIZATION-GRAFT-SET] {%{public}@} personalize+graft|mount set SUCCESS | autoAssetDescriptor:%{public}@", buf, 0x16u);
      }

      [v154 addObject:v11];
      v34 = [*(a1 + 48) clientDomainName];
      [MADAutoAssetControlManager analyticsReportSecureOperationResults:v11 clientName:v34 secureReason:0 operation:7 fromLocation:*(a1 + 40) mountError:0 graftError:0 personalizeError:0 mapToExclaveError:0];

      v35 = [*(a1 + 48) clientDomainName];
      v36 = [v6 assetId];
      [MADAutoAssetHistory recordOperation:1206 toHistoryType:6 fromClient:v35 forAssetID:v36 withSelector:v11];

      if (+[MAAIRBEventReporter isAvailable])
      {
        v159 = v5;
        v37 = a1;
        v38 = [MAAIRBMobileAssetOperationMetadata alloc];
        v39 = [MADAutoAssetHistoryTracker operationName:1206];
        v40 = [(MAAIRBMobileAssetOperationMetadata *)v38 initWithCode:1206 name:v39];

        v41 = [MAAIRBMobileAssetAssetSelector alloc];
        v42 = [v11 assetType];
        v43 = [v11 assetSpecifier];
        v44 = v11;
        [v11 assetVersion];
        v46 = v45 = v4;
        v47 = [(MAAIRBMobileAssetAssetSelector *)v41 initWithAssetType:v42 assetSpecifier:v43 assetVersion:v46];

        v4 = v45;
        v48 = [MAAIRBAppleIntelligenceAssetDeliveryEventType typeSecure:v40 assetSelector:v47 type:0 secureOperationMetadata:0];
        v49 = [[MAAIRBAppleIntelligenceAssetDeliveryEvent alloc] initWithErrors:&__NSArray0__struct type:v48];
        [MAAIRBEventReporter emitAppleIntelligenceStartEvent:v49];

        v19 = 0;
        v160 = 0;
        v50 = 1;
        goto LABEL_33;
      }

      v19 = 0;
      v63 = 0;
      v50 = 1;
LABEL_34:

      if (!v50)
      {
        goto LABEL_51;
      }

      v5 = v5 + 1;
    }

    while (v155 != v5);
    v67 = obj;
    v68 = [obj countByEnumeratingWithState:&v186 objects:v199 count:16];
    v2 = v154;
    v155 = v68;
  }

  while (v68);
LABEL_52:

  if (v4)
  {
    goto LABEL_87;
  }

LABEL_53:
  if ([v2 count])
  {
    v182 = 0;
    [SecureMobileAssetBundle commitStagedManifestsForSelectors:v2 error:&v182];
    v80 = v182;
    if (v80)
    {
      v4 = v80;
      v81 = [*(a1 + 48) clientDomainName];
      v82 = [*(a1 + 48) assetSetIdentifier];
      v83 = a1;
      v84 = v82;
      v85 = [*(v83 + 48) latestDownloadedAtomicInstance];
      [MADAutoAssetHistory recordFailedOperation:1207 fromLayer:6 forClientDomainName:v81 forAssetSetIdentifier:v84 forAtomicInstance:v85 failingWithError:v4];

      v86 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
      {
        v87 = *(v157 + 40);
        v88 = [v4 checkedDescription];
        v89 = [*(v157 + 48) summary];
        *buf = 138543874;
        *&buf[4] = v87;
        v193 = 2114;
        v194 = v88;
        v195 = 2114;
        v196 = v89;
        _os_log_impl(&dword_0, v86, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-PERSONALIZATION-GRAFT-SET] {%{public}@} personalize+graft|mount set commit ERROR | personalizeError:%{public}@ | setDescriptor:%{public}@", buf, 0x20u);
      }

      a1 = v157;
      goto LABEL_87;
    }

    v90 = [v2 count];
    [*(a1 + 48) clientDomainName];
    v92 = v91 = a1;
    v93 = [*(v91 + 48) assetSetIdentifier];
    v94 = [*(v91 + 48) latestDownloadedAtomicInstance];
    [MADAutoAssetHistory recordOperation:1207 toHistoryType:6 fromLayer:6 usageCount:v90 forClientDomainName:v92 forAssetSetIdentifier:v93 forAtomicInstance:v94];

    v95 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      v96 = *(v157 + 40);
      v97 = [*(v157 + 48) summary];
      *buf = 138543618;
      *&buf[4] = v96;
      v193 = 2114;
      v194 = v97;
      _os_log_impl(&dword_0, v95, OS_LOG_TYPE_DEFAULT, "\n[AUTO-SECURE][AUTO-PERSONALIZATION-GRAFT-SET] {%{public}@} personalize+graft|mount set commit SUCCESS | setDescriptor:%{public}@", buf, 0x16u);
    }

    a1 = v157;
  }

  if (*(a1 + 73) != 1)
  {
LABEL_90:
    v135 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
    {
      v142 = *(v157 + 40);
      v143 = [*(v157 + 48) summary];
      *buf = 138543618;
      *&buf[4] = v142;
      a1 = v157;
      v193 = 2114;
      v194 = v143;
      _os_log_impl(&dword_0, v135, OS_LOG_TYPE_DEFAULT, "[\n[AUTO-SECURE][AUTO-PERSONALIZATION-GRAFT-SET] {%{public}@} personalize+graft|mount set SUCCESS | setDescriptor:%{public}@", buf, 0x16u);
    }

    v4 = 0;
    goto LABEL_93;
  }

  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  v98 = *(a1 + 56);
  v169 = [v98 countByEnumeratingWithState:&v178 objects:v191 count:16];
  if (!v169)
  {

    goto LABEL_90;
  }

  v165 = v98;
  v4 = 0;
  p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
  v167 = *v179;
  while (2)
  {
    v100 = 0;
    do
    {
      v172 = v4;
      if (*v179 != v167)
      {
        objc_enumerationMutation(v165);
      }

      v101 = *(*(&v178 + 1) + 8 * v100);
      v102 = [MAAutoAssetSelector alloc];
      v103 = [v101 assetType];
      v104 = [v101 assetSpecifier];
      v105 = [v101 assetVersion];
      v106 = [v102 initForAssetType:v103 withAssetSpecifier:v104 matchingAssetVersion:v105];

      v107 = p_weak_ivar_lyt[287];
      v108 = [v101 assetType];
      v109 = [v101 assetId];
      v110 = [v107 secureBundleForAssetType:v108 assetId:v109];

      if (!v110)
      {
        v131 = *(v157 + 40);
        v132 = [NSString alloc];
        v133 = [v101 summary];
        v134 = [v132 initWithFormat:@"unable to initialize SecureMobileAssetBundle (for grafting [or mounting]) | nextAutoAssetDescriptor:%@", v133];
        v4 = [MAAutoAssetError buildError:6101 fromOperation:v131 underlyingError:0 withDescription:v134];

        goto LABEL_86;
      }

      v190[0] = @"/private/var/MobileAsset/AssetsV2/locks";
      v111 = [*(v157 + 48) clientDomainName];
      v190[1] = v111;
      v112 = [*(v157 + 48) assetSetIdentifier];
      v190[2] = v112;
      v190[3] = @"shared_locks";
      v113 = [NSArray arrayWithObjects:v190 count:4];
      v114 = [NSString pathWithComponents:v113];

      v115 = objc_opt_new();
      v116 = [NSSet setWithObject:v114];
      [v115 setPathsToPurgeOnGraftFailureInEarlyBootTask:v116];

      *buf = 0;
      v117 = +[MADAutoAssetControlManager preferenceSecureSimulateGraftFailure];
      v118 = *(v157 + 40);
      if (v117)
      {
        v119 = [MAAutoAssetError buildError:6538 fromOperation:v118 underlyingError:0 withDescription:@"simulated failure to graft due to device being locked"];
      }

      else
      {
        v177 = 0;
        v120 = [MADAutoAssetSecure graftOrMount:v118 ofSecureAssetBundle:v110 withAccessOptions:v115 accessMechanismPtr:buf errorPtr:&v177];
        v119 = v177;
        if (v120)
        {
          v121 = [*(v157 + 48) clientDomainName];
          [MADAutoAssetControlManager analyticsReportSecureOperationResults:v106 clientName:v121 secureReason:0 operation:[MADAutoAssetSecure secureOperationGraftOrMount:*buf] fromLocation:*(v157 + 40) mountError:0 graftError:0 personalizeError:0 mapToExclaveError:0];

          v122 = [*(v157 + 48) clientDomainName];
          v123 = [v101 assetId];
          [MADAutoAssetHistory recordOperation:1202 toHistoryType:6 fromClient:v122 forAssetID:v123 withSelector:v106];

          v124 = 1;
          goto LABEL_79;
        }
      }

      v125 = [*(v157 + 48) clientDomainName];
      v126 = [MADAutoAssetSecure secureOperationGraftOrMount:*buf];
      if (*buf == 2)
      {
        v127 = v119;
      }

      else
      {
        v127 = 0;
      }

      if (*buf == 1)
      {
        v128 = v119;
      }

      else
      {
        v128 = 0;
      }

      [MADAutoAssetControlManager analyticsReportSecureOperationResults:v106 clientName:v125 secureReason:0 operation:v126 fromLocation:*(v157 + 40) mountError:v127 graftError:v128 personalizeError:0 mapToExclaveError:0];

      v129 = [*(v157 + 48) clientDomainName];
      v130 = [v101 assetId];
      [MADAutoAssetHistory recordFailedOperation:1202 fromClient:v129 forAssetID:v130 withSelector:v106 failingWithError:v119];

      v119 = v119;
      v124 = 0;
      v122 = v170;
      v170 = v101;
      v172 = v119;
LABEL_79:

      if (!v124)
      {
        v2 = v154;
        v4 = v172;
        goto LABEL_86;
      }

      v100 = v100 + 1;
      v2 = v154;
      v4 = v172;
      p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
    }

    while (v169 != v100);
    v169 = [v165 countByEnumeratingWithState:&v178 objects:v191 count:16];
    if (v169)
    {
      continue;
    }

    break;
  }

LABEL_86:

  a1 = v157;
  if (!v4)
  {
    goto LABEL_90;
  }

LABEL_87:
  v135 = _MADLog(@"SecureMA");
  v136 = os_log_type_enabled(v135, OS_LOG_TYPE_ERROR);
  if (v170)
  {
    if (v136)
    {
      v137 = *(a1 + 40);
      v138 = [v4 checkedDescription];
      v139 = [*(a1 + 48) summary];
      v140 = v170;
      v141 = [v170 summary];
      *buf = 138544130;
      *&buf[4] = v137;
      v193 = 2114;
      v194 = v138;
      v195 = 2114;
      v196 = v139;
      v197 = 2114;
      v198 = v141;
      _os_log_impl(&dword_0, v135, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-PERSONALIZATION-GRAFT-SET] {%{public}@} personalize+graft|mount set ERROR | error:%{public}@ | setDescriptor:%{public}@ | associatedDescriptor:%{public}@", buf, 0x2Au);

      a1 = v157;
      goto LABEL_97;
    }

LABEL_93:
    v140 = v170;
    goto LABEL_97;
  }

  if (v136)
  {
    v144 = *(a1 + 40);
    v145 = [v4 checkedDescription];
    v146 = [*(a1 + 48) summary];
    *buf = 138543874;
    *&buf[4] = v144;
    v193 = 2114;
    v194 = v145;
    v195 = 2114;
    v196 = v146;
    _os_log_impl(&dword_0, v135, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-PERSONALIZATION-GRAFT-SET] {%{public}@} personalize+graft|mount set ERROR | error:%{public}@ | setDescriptor:%{public}@", buf, 0x20u);

    a1 = v157;
  }

  v140 = 0;
LABEL_97:

  v147 = +[SUCore sharedCore];
  v148 = [v147 selectCompletionQueue:0];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __152__MADAutoAssetSecure__personalizeGraftSetDownloaded_forSetDescriptor_allowingNetwork_requiringPersonalization_requiringGrafting_shouldGraft_completion___block_invoke_1351;
  block[3] = &unk_4B3098;
  v176 = *(a1 + 64);
  v174 = *(a1 + 48);
  v175 = v4;
  v149 = v4;
  dispatch_async(v148, block);
}

+ (BOOL)graftOrMount:(id)a3 ofSecureAssetBundle:(id)a4 withAccessOptions:(id)a5 accessMechanismPtr:(int64_t *)a6 errorPtr:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  v14 = [[NSString alloc] initWithFormat:@"%@:graftOrMount", v13];

  v27 = 0;
  v15 = [v11 beginAccessWithOptions:v12 accessMechanismPtr:a6 errorPtr:&v27];

  v16 = v27;
  v17 = v16;
  if (v15)
  {
    v18 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [v11 assetBundlePath];
      *buf = 138543618;
      v29 = v14;
      v30 = 2114;
      v31 = v19;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "\n[AUTO-SECURE][AUTO-GRAFT] {%{public}@:} graft|mount SUCCESS | secureMobileAssetBundle:%{public}@", buf, 0x16u);
    }
  }

  else
  {
    if (v16)
    {
      v20 = [MADAutoAssetSecure buildGraftFailureError:v14 withUnderlyingError:v16];
    }

    else
    {
      v21 = [NSString alloc];
      v17 = [v11 assetBundlePath];
      v22 = [v21 initWithFormat:@"unable to beginAccessWithOptions for secure asset (no underlying error provided) | secureAssetBundle:%@", v17];
      v20 = [MAAutoAssetError buildError:6534 fromOperation:v14 underlyingError:0 withDescription:v22];
    }

    v18 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = [v11 assetBundlePath];
      v24 = [v20 checkedDescription];
      *buf = 138543874;
      v29 = v14;
      v30 = 2114;
      v31 = v23;
      v32 = 2114;
      v33 = v24;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-GRAFT] {%{public}@:} graft|mount ERROR | secureMobileAssetBundle:%{public}@ | secureOperationError:%{public}@", buf, 0x20u);
    }

    v17 = v20;
  }

  if (a7)
  {
    v25 = v17;
    *a7 = v17;
  }

  return v15;
}

+ (BOOL)ungraftOrUnmount:(id)a3 ofSecureAssetBundle:(id)a4 withAccessOptions:(id)a5 accessMechanismPtr:(int64_t *)a6 errorPtr:(id *)a7
{
  v11 = a4;
  v12 = a5;
  v13 = a3;
  v14 = [[NSString alloc] initWithFormat:@"%@:ungraftOrUnmount", v13];

  v28 = 0;
  v15 = [v11 endAccessWithOptions:v12 accessMechanismPtr:a6 errorPtr:&v28];

  v16 = v28;
  v17 = v16;
  if ((v15 & 1) == 0 && !v16)
  {
    v18 = [NSString alloc];
    v19 = [v11 assetBundlePath];
    v20 = [v18 initWithFormat:@"unable to endAccessWithOptions for secure asset (no underlying error provided) | secureAssetBundle:%@", v19];
    v17 = [MAAutoAssetError buildError:6534 fromOperation:v14 underlyingError:0 withDescription:v20];
  }

  v21 = _MADLog(@"SecureMA");
  v22 = v21;
  if (v15)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [v11 assetBundlePath];
      *buf = 138543618;
      v30 = v14;
      v31 = 2114;
      v32 = v23;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "\n[AUTO-SECURE][AUTO-GRAFT] {%{public}@:} ungraft|unmount SUCCESS | secureMobileAssetBundle:%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v24 = [v11 assetBundlePath];
    v25 = [v17 checkedDescription];
    *buf = 138543874;
    v30 = v14;
    v31 = 2114;
    v32 = v24;
    v33 = 2114;
    v34 = v25;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][AUTO-GRAFT] {%{public}@:} ungraft|unmount ERROR | secureMobileAssetBundle:%{public}@ | secureOperationError:%{public}@", buf, 0x20u);
  }

  if (a7)
  {
    v26 = v17;
    *a7 = v17;
  }

  return v15;
}

+ (id)_secureAssetBundleSummary:(id)a3
{
  v3 = a3;
  if ([v3 manifestType] == &dword_0 + 1)
  {
    v4 = @"Classic";
  }

  else
  {
    v5 = [v3 manifestType];
    v4 = @"UNKNOWN_MANIFEST_TYPE";
    if (v5 == &dword_0 + 2)
    {
      v4 = @"Code";
    }
  }

  v21 = v4;
  v20 = [NSString alloc];
  v6 = @"N";
  if ([v3 isSecureMobileAsset])
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v19 = v7;
  if ([v3 isPersonalized])
  {
    v8 = @"Y";
  }

  else
  {
    v8 = @"N";
  }

  v18 = v8;
  if ([v3 isPersonalizedManifestStaged])
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  if ([v3 isAccessible])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  v11 = [v3 assetBundlePath];
  if (v11)
  {
    v6 = [v3 assetBundlePath];
  }

  v12 = [v3 accessPath];
  if (v12)
  {
    v13 = [v3 accessPath];
  }

  else
  {
    v13 = @"N";
  }

  v14 = [v3 secureInfoPlist];
  if (v14)
  {
    v15 = @"Y";
  }

  else
  {
    v15 = @"N";
  }

  v16 = [v20 initWithFormat:@"(isSecureMobileAsset:%@ | isPersonalized:%@ | isPersonalizedManifestStaged:%@ | manifest:%@ | isAccessible:%@ | assetBundlePath:%@ | accessPath:%@ | secureInfoPlist:%@)", v19, v18, v9, v21, v10, v6, v13, v15];

  if (v12)
  {
  }

  if (v11)
  {
  }

  return v16;
}

+ (int64_t)secureOperationGraftOrMount:(int64_t)a3
{
  if (a3 == 1)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

+ (int64_t)secureOperationUngraftOrUnmount:(int64_t)a3
{
  if (a3 == 1)
  {
    return 5;
  }

  else
  {
    return 0;
  }
}

+ (void)removeAllPersisted
{
  v2 = +[MADAutoAssetSecure autoAssetSecure];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 secureProtectionQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __40__MADAutoAssetSecure_removeAllPersisted__block_invoke;
    block[3] = &unk_4B2AA0;
    v7 = v3;
    dispatch_sync(v4, block);

    v5 = v7;
  }

  else
  {
    v5 = _MADLog(@"Auto");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "\n[AUTO-SECURE][SECURE-PERSISTED] {MADAutoAssetSecure-removeAllPersisted} ERROR | no autoAssetSecure instance", buf, 2u);
    }
  }
}

void __40__MADAutoAssetSecure_removeAllPersisted__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) persistedState];
  [v1 removeAllPersistedEntries:@"MADAutoAssetSecure-removeAllPersisted"];
}

@end