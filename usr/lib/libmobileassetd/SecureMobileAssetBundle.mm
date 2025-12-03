@interface SecureMobileAssetBundle
+ (BOOL)_requiresLiveExclaveNonce;
+ (BOOL)_shouldUseConclave:(BOOL)conclave;
+ (BOOL)assetIsSecureMobileAsset:(id)asset;
+ (BOOL)clearBootTaskPlist:(id *)plist;
+ (BOOL)commitStagedManifestsForSelectors:(id)selectors darwinOnly:(BOOL)only error:(id *)error;
+ (BOOL)commitStagedManifestsToExclavesForSelectors:(id)selectors darwinOnly:(BOOL)only error:(id *)error;
+ (BOOL)fsTag:(unsigned int *)tag forAssetType:(id)type specifier:(id)specifier;
+ (BOOL)isErrorDueToDeviceBeingLocked:(id)locked;
+ (OS_dispatch_queue)personalizationQueue;
+ (id)getBootTaskPlistLock;
+ (id)getExclaveManager:(id *)manager;
+ (id)getSigningServerURL:(id)l;
+ (id)readBootTaskPlist:(id *)plist;
- (BOOL)_activateManifestInExclaves:(unsigned int)exclaves error:(id *)error;
- (BOOL)_beginAccessWithOptions_nowait:(id)options_nowait accessMechanismPtr:(int64_t *)ptr errorPtr:(id *)errorPtr;
- (BOOL)_generateNonceProposalForHandle:(unint64_t)handle digest:(id *)digest nonce:(id *)nonce error:(id *)error;
- (BOOL)_personalize:(id)_personalize error:(id *)error;
- (BOOL)_queryNonceForHandle:(unint64_t)handle domain:(unsigned int)domain digest:(id *)digest error:(id *)error;
- (BOOL)_shouldForcePersonalizationFailure;
- (BOOL)_storeManifest:(id)manifest manifestType:(unint64_t)type stage:(BOOL)stage error:(id *)error;
- (BOOL)_storeManifestToExclaves:(id)exclaves infoPlist:(id)plist stage:(BOOL)stage error:(id *)error;
- (BOOL)beginAccessWithOptions:(id)options accessMechanismPtr:(int64_t *)ptr errorPtr:(id *)errorPtr;
- (BOOL)bundleAccessPermitted:(id *)permitted;
- (BOOL)depersonalize:(id *)depersonalize;
- (BOOL)endAccessWithOptions:(id)options accessMechanismPtr:(int64_t *)ptr errorPtr:(id *)errorPtr;
- (BOOL)endAccessWithOptions_nowait:(id)options_nowait accessMechanismPtr:(int64_t *)ptr errorPtr:(id *)errorPtr;
- (BOOL)graft:(id *)graft;
- (BOOL)graftOrMount:(int64_t *)mount graftingError:(id *)error;
- (BOOL)isAccessible;
- (BOOL)isGrafted;
- (BOOL)isGraftedPath:(id)path;
- (BOOL)isMappableToExclaves:(unsigned int *)exclaves;
- (BOOL)isMounted;
- (BOOL)isPersonalized:(int64_t *)personalized;
- (BOOL)isPersonalizedForExclaves:(unsigned int)exclaves staged:(BOOL)staged;
- (BOOL)isPersonalizedManifestStaged:(int64_t *)staged;
- (BOOL)isSecureMobileAsset;
- (BOOL)loadTrustCache:(id *)cache;
- (BOOL)mapToExclaves:(id *)exclaves;
- (BOOL)mount:(id *)mount;
- (BOOL)personalize:(id)personalize error:(id *)error;
- (BOOL)ungraft:(id *)ungraft;
- (BOOL)ungraftOrUnmount:(int64_t *)unmount ungraftingError:(id *)error;
- (BOOL)unmapFromExclaves:(id *)exclaves;
- (BOOL)unmount:(id *)unmount;
- (NSDictionary)assetAttributes;
- (NSDictionary)insecureInfoPlist;
- (NSDictionary)secureInfoPlist;
- (NSString)assetSpecifier;
- (NSString)assetType;
- (NSString)cryptexPath;
- (NSString)graftPath;
- (NSString)insecureInfoPlistPath;
- (NSString)rootHashPath;
- (NSString)secureAssetDataPath;
- (NSString)secureInfoPlistPath;
- (NSString)stagedPersonalizedManifestPath;
- (NSString)ticketPath;
- (NSString)trustCachePath;
- (SecureMobileAssetBundle)initWithPath:(id)path;
- (id)_manifestDataFromStoredTicket:(id)ticket manifestType:(unint64_t)type;
- (id)_personalizedBundleTicketData;
- (id)assetValues;
- (id)attach:(id)attach error:(id *)error;
- (id)description;
- (id)devnodesForDiskImageID:(id)d error:(id *)error;
- (id)integrityCatalogPath;
- (unint64_t)manifestType;
- (unsigned)graftdmgType;
- (unsigned)secureMountAuthType;
- (void)personalize:(id)personalize completionQueue:(id)queue completion:(id)completion;
- (void)recordAssetGraftStateForEarlyBootTask:(BOOL)task options:(id)options;
@end

@implementation SecureMobileAssetBundle

+ (BOOL)assetIsSecureMobileAsset:(id)asset
{
  v3 = [asset stringByAppendingPathComponent:@"AssetData"];
  v4 = [v3 stringByAppendingPathComponent:@"Restore"];
  v5 = [v4 stringByAppendingPathComponent:@"BuildManifest.plist"];

  v6 = +[NSFileManager defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  return v7;
}

+ (BOOL)fsTag:(unsigned int *)tag forAssetType:(id)type specifier:(id)specifier
{
  typeCopy = type;
  specifierCopy = specifier;
  if (__isPlatformVersionAtLeast(2, 18, 0, 0))
  {
    v9 = +[MASecureMobileAssetTypes sharedInstance];
    v10 = [v9 fsTag:tag forAssetType:typeCopy specifier:specifierCopy];
  }

  else
  {
    v11 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "[SMA] MASecureMobileAssetTypes is unavailable", v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

+ (OS_dispatch_queue)personalizationQueue
{
  if (personalizationQueue_once != -1)
  {
    +[SecureMobileAssetBundle personalizationQueue];
  }

  v3 = personalizationQueue_queue;

  return v3;
}

void __47__SecureMobileAssetBundle_personalizationQueue__block_invoke(id a1)
{
  personalizationQueue_queue = dispatch_queue_create("com.apple.MobileAsset.SecureMobileAsset.Personalization", 0);

  _objc_release_x1();
}

+ (BOOL)commitStagedManifestsForSelectors:(id)selectors darwinOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  selectorsCopy = selectors;
  if (__isPlatformVersionAtLeast(2, 18, 0, 0))
  {
    v8 = objc_alloc_init(MASecureManifestStorage);
    if (objc_opt_respondsToSelector())
    {
      v9 = [selectorsCopy count];
      v10 = _MADLog(@"SecureMA");
      v11 = v10;
      if (!v9)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "[SMA] No selectors specified", buf, 2u);
        }

        if (!error)
        {
          v14 = 0;
          goto LABEL_25;
        }

        v13 = [NSString stringWithFormat:@"No selectors specified"];
        v19 = +[NSMutableDictionary dictionary];
        [v19 setObject:v13 forKeyedSubscript:NSDebugDescriptionErrorKey];
        [v19 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
        v20 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:-3 userInfo:v19];

        v21 = v20;
        v14 = 0;
        *error = v20;
LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v30 = selectorsCopy;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[SMA] Committing staged manifests for selectors: %@", buf, 0xCu);
      }

      v28 = 0;
      v12 = [v8 commitStagedManifestsForSelectors:selectorsCopy error:&v28];
      v13 = v28;
      if ((v12 & 1) == 0)
      {
        v22 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v30 = v13;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "[SMA] Failed to commit staged manifests: %@", buf, 0xCu);
        }

        if (error)
        {
          v23 = [NSString stringWithFormat:@"Failed to commit staged manifests"];
          v24 = +[NSMutableDictionary dictionary];
          [v24 setObject:v23 forKeyedSubscript:NSDebugDescriptionErrorKey];
          [v24 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
          v25 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:114 userInfo:v24];

          v26 = v25;
          *error = v25;
        }

        v14 = 0;
        goto LABEL_24;
      }

      if (+[SecureMobileAssetBundle _requiresLiveExclaveNonce])
      {
        v14 = [SecureMobileAssetBundle commitStagedManifestsToExclavesForSelectors:selectorsCopy darwinOnly:onlyCopy error:error];
        goto LABEL_24;
      }
    }

    else
    {
      v13 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "[SMA] Warning: MASecureManifestStorage does not support staging, commit is a no-op", buf, 2u);
      }
    }

    v14 = 1;
    goto LABEL_24;
  }

  if (error)
  {
    v15 = [NSString stringWithFormat:@"Manifest storage service unavailable"];
    v16 = +[NSMutableDictionary dictionary];
    [v16 setObject:v15 forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v16 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
    v17 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:-5 userInfo:v16];

    v18 = v17;
    *error = v17;
  }

  v14 = 0;
LABEL_26:

  return v14;
}

+ (BOOL)commitStagedManifestsToExclavesForSelectors:(id)selectors darwinOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  selectorsCopy = selectors;
  if (__isPlatformVersionAtLeast(2, 18, 2, 0) && [SecureMobileAssetBundle _shouldUseConclave:onlyCopy])
  {
    errorCopy = error;
    v50 = +[NSMutableArray array];
    v49 = +[NSMutableArray array];
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v8 = selectorsCopy;
    v9 = [v8 countByEnumeratingWithState:&v55 objects:v63 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v56;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v56 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v55 + 1) + 8 * i);
          v54 = 0;
          assetType = [v13 assetType];
          assetSpecifier = [v13 assetSpecifier];
          v16 = [SecureMobileAssetBundle fsTag:&v54 forAssetType:assetType specifier:assetSpecifier];

          if (v16)
          {
            v17 = [NSNumber numberWithUnsignedInt:v54];
            if (!v17)
            {
              v27 = _MADLog(@"SecureMA");
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109120;
                LODWORD(v60) = v54;
                _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "[SMA] Failed to allocate NSNumber for fstag=%d", buf, 8u);
              }

              v28 = [NSString stringWithFormat:@"Failed to allocate NSNumber for fstag"];
              v29 = +[NSMutableDictionary dictionary];
              [v29 setObject:v28 forKeyedSubscript:NSDebugDescriptionErrorKey];
              [v29 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
              v30 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:100 userInfo:v29];

              v31 = v30;
              *errorCopy = v30;

              v26 = 0;
              goto LABEL_23;
            }

            v18 = v17;
            [v50 addObject:v17];
            assetSpecifier2 = [v13 assetSpecifier];
            [v49 addObject:assetSpecifier2];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v55 objects:v63 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    if (![v50 count])
    {
      v26 = 1;
      goto LABEL_24;
    }

    v53 = 0;
    v20 = [SecureMobileAssetBundle getExclaveManager:&v53];
    v8 = v53;
    if ([v20 conformsToProtocol:&OBJC_PROTOCOL___MAExclaveManifestStorageServiceProtocol2])
    {
      v21 = v20;
      v22 = _MADLog(@"SecureMA");
      v23 = errorCopy;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v60 = v50;
        v61 = 2112;
        v62 = v49;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "[SMA] Committing staged exclave manifests for fsTags and specifiers: [%@] [%@]", buf, 0x16u);
      }

      v52 = v8;
      v24 = [v21 commitStagedManifestForFSTags:v50 specifiers:v49 error:&v52];
      v25 = v52;

      if (v24)
      {
        goto LABEL_18;
      }

      v37 = _MADLog(@"SecureMA");
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_37;
      }

      *buf = 0;
    }

    else
    {
      v23 = errorCopy;
      if (![v20 conformsToProtocol:&OBJC_PROTOCOL___MAExclaveManifestStorageServiceProtocol])
      {
        if (!errorCopy)
        {
LABEL_52:

          v26 = 0;
          goto LABEL_23;
        }

        v21 = [NSString stringWithFormat:@"Failed to get shared instance of SecureMobileAssetExclave"];
        if (v8)
        {
          v25 = v8;
          v42 = +[NSMutableDictionary dictionary];
          [v42 setObject:v21 forKeyedSubscript:NSDebugDescriptionErrorKey];
          [v42 setObject:v25 forKeyedSubscript:NSUnderlyingErrorKey];
          v43 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:114 userInfo:v42];

          v44 = v43;
        }

        else
        {
          v46 = +[NSMutableDictionary dictionary];
          [v46 setObject:v21 forKeyedSubscript:NSDebugDescriptionErrorKey];
          [v46 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
          v43 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:114 userInfo:v46];

          v47 = v43;
          v25 = 0;
        }

        *errorCopy = v43;
LABEL_51:

        v8 = v25;
        goto LABEL_52;
      }

      v21 = v20;
      v33 = objc_opt_respondsToSelector();
      v34 = _MADLog(@"SecureMA");
      v35 = v34;
      if ((v33 & 1) == 0)
      {
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, "[SMA] Warning: MAExclaveManifestStorageService does not support staging, commit is a no-op", buf, 2u);
        }

        goto LABEL_46;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v60 = v50;
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "[SMA] Committing staged exclave manifests for fsTags: %@", buf, 0xCu);
      }

      v51 = v8;
      v36 = [v21 commitStagedManifestForFSTags:v50 error:&v51];
      v25 = v51;

      if (v36)
      {
LABEL_18:
        v8 = v25;
LABEL_46:

        v26 = 1;
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }

      v37 = _MADLog(@"SecureMA");
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
LABEL_37:

        if (v23)
        {
          v38 = [NSString stringWithFormat:@"Failed to commit staged manifests to Exclaves"];
          if (v25)
          {
            v39 = v25;
            v40 = +[NSMutableDictionary dictionary];
            [v40 setObject:v38 forKeyedSubscript:NSDebugDescriptionErrorKey];
            [v40 setObject:v39 forKeyedSubscript:NSUnderlyingErrorKey];
            v41 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:114 userInfo:v40];
          }

          else
          {
            v40 = +[NSMutableDictionary dictionary];
            [v40 setObject:v38 forKeyedSubscript:NSDebugDescriptionErrorKey];
            [v40 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
            v41 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:114 userInfo:v40];
          }

          v45 = v41;
          *v23 = v41;
        }

        goto LABEL_51;
      }

      *buf = 0;
    }

    _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "[SMA] Failed to commit staged manifests to Exclaves", buf, 2u);
    goto LABEL_37;
  }

  v26 = 1;
LABEL_25:

  return v26;
}

- (SecureMobileAssetBundle)initWithPath:(id)path
{
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = SecureMobileAssetBundle;
  v5 = [(SecureMobileAssetBundle *)&v17 init];
  if (v5)
  {
    v6 = pathCopy;
    v7 = realpath_DARWIN_EXTSN([pathCopy fileSystemRepresentation], 0);
    if (v7)
    {
      v8 = [NSString stringWithUTF8String:v7];
    }

    else
    {
      v8 = pathCopy;
    }

    assetBundlePath = v5->_assetBundlePath;
    v5->_assetBundlePath = v8;

    v5->_darwinOnly = 0;
    if (__isPlatformVersionAtLeast(2, 26, 0, 0) && initWithPath__secureAssetErrorInfoOnce != -1)
    {
      [SecureMobileAssetBundle initWithPath:];
    }

    assetType = [(SecureMobileAssetBundle *)v5 assetType];
    if (assetType)
    {
      v11 = [MAAssetTypeDescriptor descriptorForAssetType:assetType];
    }

    else
    {
      v12 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v19 = pathCopy;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "[SMA] Cannot create an MAAssetTypeDescriptor because assetType is nil for bundle: %{public}@", buf, 0xCu);
      }

      v11 = 0;
    }

    typeDescriptor = v5->_typeDescriptor;
    v5->_typeDescriptor = v11;

    v14 = +[SecureMobileAssetManifestVerifier sharedInstance];
    manifestVerifier = v5->_manifestVerifier;
    v5->_manifestVerifier = v14;

    free(v7);
  }

  return v5;
}

void __40__SecureMobileAssetBundle_initWithPath___block_invoke(id a1)
{
  v1 = objc_alloc_init(NSMutableDictionary);
  [v1 setObject:@"Unsupported" forKey:&off_4F78B0];
  [v1 setObject:@"UnexpectedFailure" forKey:&off_4F78C8];
  [v1 setObject:@"InvalidArgument" forKey:&off_4F78E0];
  [v1 setObject:@"InvalidCommand" forKey:&off_4F78F8];
  [v1 setObject:@"Unimplemented" forKey:&off_4F7910];
  [v1 setObject:@"None" forKey:&off_4F7928];
  [v1 setObject:@"Alloc" forKey:&off_4F7940];
  [v1 setObject:@"Personalize" forKey:&off_4F7958];
  [v1 setObject:@"Depersonalize" forKey:&off_4F7970];
  [v1 setObject:@"Graft" forKey:&off_4F7988];
  [v1 setObject:@"Ungraft" forKey:&off_4F79A0];
  [v1 setObject:@"Mount" forKey:&off_4F79B8];
  [v1 setObject:@"Unmount" forKey:&off_4F79D0];
  [v1 setObject:@"ExclavesUnsupported" forKey:&off_4F79E8];
  [v1 setObject:@"MapToExclaves" forKey:&off_4F7A00];
  [v1 setObject:@"UnmapFromExclaves" forKey:&off_4F7A18];
  [v1 setObject:@"DiskImageAttach" forKey:&off_4F7A30];
  [v1 setObject:@"DiskImageEject" forKey:&off_4F7A48];
  [v1 setObject:@"CommitManifests" forKey:&off_4F7A60];
  [v1 setObject:@"TrustCache" forKey:&off_4F7A78];
  [v1 setObject:@"AccessNotPermitted" forKey:&off_4F7A90];
  [v1 setObject:@"CompatibilityVersionMismatch" forKey:&off_4F7AA8];
  [v1 setObject:@"GraftPersonalizedBundleTicketDataNil" forKey:&off_4F7AC0];
  [v1 setObject:@"GraftCommittedTicketDataNil" forKey:&off_4F7AD8];
  [v1 setObject:@"GraftTicketMismatch" forKey:&off_4F7AF0];
  [v1 setObject:@"GraftNotPersonalizedForExclaves" forKey:&off_4F7B08];
  [v1 setObject:@"GraftPath" forKey:&off_4F7B20];
  [v1 setObject:@"GraftTicketVerificationFailed" forKey:&off_4F7B38];
  [v1 setObject:@"MountPersonalizedBundleTicketDataNil" forKey:&off_4F7B50];
  [v1 setObject:@"MountCommittedTicketDataNil" forKey:&off_4F7B68];
  [v1 setObject:@"MountTicketMismatch" forKey:&off_4F7B80];
  [v1 setObject:@"MountNotPersonalizedForExclaves" forKey:&off_4F7B98];
  [v1 setObject:@"MountPath" forKey:&off_4F7BB0];
  [v1 setObject:@"MountAttachDiskImage" forKey:&off_4F7BC8];
  [v1 setObject:@"MountFindDevNodes" forKey:&off_4F7BE0];
  [v1 setObject:@"MountFindAPFSVolume" forKey:&off_4F7BF8];
  [v1 setObject:@"MountFoundMultipleAPFSVolumes" forKey:&off_4F7C10];
  [v1 setObject:@"MountTicket" forKey:&off_4F7C28];
  [v1 setObject:@"MountRootHash" forKey:&off_4F7C40];
  [v1 setObject:@"MountTicketVerificationFailed" forKey:&off_4F7C58];
  [v1 setObject:@"MapToExclavesPersonalizedBundleTicketDataNil" forKey:&off_4F7C70];
  [v1 setObject:@"MapToExclavesCommittedTicketDataNil" forKey:&off_4F7C88];
  [v1 setObject:@"MapToExclavesTicketMismatch" forKey:&off_4F7CA0];
  [v1 setObject:@"MapToExclavesNotPersonalizedForExclaves" forKey:&off_4F7CB8];
  [v1 setObject:@"MapToExclavesDetermineState" forKey:&off_4F7CD0];
  [v1 setObject:@"MapToExclavesUnregisterExisting" forKey:&off_4F7CE8];
  [v1 setObject:@"MapToExclavesTicketPathNil" forKey:&off_4F7D00];
  [v1 setObject:@"MapToExclavesInfoPlistPathNil" forKey:&off_4F7D18];
  [v1 setObject:@"MapToExclavesIntegrityCatalogPathNil" forKey:&off_4F7D30];
  [v1 setObject:@"MapToExclavesTicketDataNil" forKey:&off_4F7D48];
  [v1 setObject:@"MapToExclavesInfoPlistDataNil" forKey:&off_4F7D60];
  [v1 setObject:@"MapToExclavesIntegrityCatalogDataNil" forKey:&off_4F7D78];
  [v1 setObject:@"MapToExclavesStoreManifestFailed" forKey:&off_4F7D90];
  [v1 setObject:@"MapToExclavesActivateManifestFailed" forKey:&off_4F7DA8];
  [v1 setObject:@"MapToExclavesTicketVerificationFailed" forKey:&off_4F7DC0];
  [v1 setObject:@"TrustCachePersonalizedBundleTicketDataNil" forKey:&off_4F7DD8];
  [v1 setObject:@"TrustCacheCommittedTicketDataNil" forKey:&off_4F7DF0];
  [v1 setObject:@"TrustCacheTicketMismatch" forKey:&off_4F7E08];
  [v1 setObject:@"TrustCacheNotPersonalizedForExclaves" forKey:&off_4F7E20];
  [v1 setObject:@"TrustCacheTicketReadError" forKey:&off_4F7E38];
  [v1 setObject:@"TrustCacheReadError" forKey:&off_4F7E50];
  [v1 setObject:@"TrustCacheDataOrTicketEmpty" forKey:&off_4F7E68];
  [v1 setObject:@"TrustCacheAMFILoadError" forKey:&off_4F7E80];
  [v1 setObject:@"TrustCacheAMFILoadDeviceLocked" forKey:&off_4F7E98];
  [v1 setObject:@"TrustCacheTicketVerificationFailed" forKey:&off_4F7EB0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [v7 integerValue];
        v9 = [v2 objectForKeyedSubscript:v7];
        [SUCoreErrorInformation attributesOfErrorForDomain:@"SecureMobileAssetErrorDomain" withCode:v8 codeName:v9];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

+ (id)getExclaveManager:(id *)manager
{
  if (!__isPlatformVersionAtLeast(2, 18, 2, 0) || !objc_opt_class())
  {
    v5 = 0;
LABEL_6:
    v6 = 0;
    if (!manager)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = +[SecureMobileAssetExclaveManager sharedInstance];
  if (v4)
  {
    v5 = v4;
    goto LABEL_6;
  }

  v9 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *v12 = 0;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "[SMA] Failed to get shared instance of SecureMobileAssetExclave", v12, 2u);
  }

  v10 = [NSString stringWithFormat:@"Failed to get shared instance of SecureMobileAssetExclave"];
  v11 = +[NSMutableDictionary dictionary];
  [v11 setObject:v10 forKeyedSubscript:NSDebugDescriptionErrorKey];
  [v11 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
  v6 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:-4 userInfo:v11];

  v5 = 0;
  if (manager)
  {
LABEL_7:
    v7 = v6;
    *manager = v6;
  }

LABEL_8:

  return v5;
}

+ (BOOL)_shouldUseConclave:(BOOL)conclave
{
  conclaveCopy = conclave;
  v4 = MABrainUtilityConclaveEnabled();
  if (v4)
  {
    has_internal_content = os_variant_has_internal_content();
    LOBYTE(v4) = 1;
    if (has_internal_content)
    {
      if (conclaveCopy)
      {
        v6 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[SMA] Operations will be restricted to darwin only", v8, 2u);
        }

        LOBYTE(v4) = 0;
      }
    }
  }

  return v4;
}

+ (BOOL)_requiresLiveExclaveNonce
{
  if (_requiresLiveExclaveNonce_onceToken != -1)
  {
    +[SecureMobileAssetBundle _requiresLiveExclaveNonce];
  }

  return _requiresLiveExclaveNonce_required;
}

void __52__SecureMobileAssetBundle__requiresLiveExclaveNonce__block_invoke(id a1)
{
  if (_os_feature_enabled_impl() && __isPlatformVersionAtLeast(2, 18, 2, 0))
  {
    v1 = objc_opt_class();
    if (v1)
    {
      v2 = +[SecureMobileAssetExclaveManager sharedInstance];
      if (objc_opt_respondsToSelector())
      {
        _requiresLiveExclaveNonce_required = 1;
      }

      v1 = v2;
    }
  }

  else
  {
    v1 = 0;
  }
}

- (BOOL)personalize:(id)personalize error:(id *)error
{
  personalizeCopy = personalize;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__9;
  v18 = __Block_byref_object_dispose__9;
  v19 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __45__SecureMobileAssetBundle_personalize_error___block_invoke;
  v10[3] = &unk_4B3CB0;
  v12 = &v20;
  v13 = &v14;
  v7 = dispatch_semaphore_create(0);
  v11 = v7;
  [(SecureMobileAssetBundle *)self personalize:personalizeCopy completionQueue:0 completion:v10];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    *error = v15[5];
  }

  v8 = *(v21 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v8;
}

void __45__SecureMobileAssetBundle_personalize_error___block_invoke(uint64_t a1, char a2, id obj)
{
  *(*(*(a1 + 40) + 8) + 24) = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)personalize:(id)personalize completionQueue:(id)queue completion:(id)completion
{
  personalizeCopy = personalize;
  queueCopy = queue;
  completionCopy = completion;
  v11 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[SMA] [Personalization] enqueue %@", buf, 0xCu);
  }

  personalizationQueue = [objc_opt_class() personalizationQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __66__SecureMobileAssetBundle_personalize_completionQueue_completion___block_invoke;
  v16[3] = &unk_4B30C0;
  v16[4] = self;
  v17 = personalizeCopy;
  v18 = queueCopy;
  v19 = completionCopy;
  v13 = completionCopy;
  v14 = queueCopy;
  v15 = personalizeCopy;
  dispatch_async(personalizationQueue, v16);
}

void __66__SecureMobileAssetBundle_personalize_completionQueue_completion___block_invoke(uint64_t a1)
{
  v2 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v20 = v3;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "[SMA] [Personalization] start %@", buf, 0xCu);
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v18 = 0;
  v6 = [v4 _personalize:v5 error:&v18];
  v7 = v18;
  v8 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138412802;
    v20 = v9;
    v21 = 1024;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[SMA] [Personalization] finish %@ (success = %i, error = %@)", buf, 0x1Cu);
  }

  v10 = *(a1 + 48);
  v11 = v10;
  if (!v10)
  {
    v11 = dispatch_get_global_queue(0, 0);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __66__SecureMobileAssetBundle_personalize_completionQueue_completion___block_invoke_1261;
  v14[3] = &unk_4B3CD8;
  v12 = *(a1 + 56);
  v17 = v6;
  v15 = v7;
  v16 = v12;
  v13 = v7;
  dispatch_async(v11, v14);
  if (!v10)
  {
  }
}

+ (id)getSigningServerURL:(id)l
{
  lCopy = l;
  v4 = _MAPreferencesCopyNSStringValue(@"TatsuURLOverride");
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [NSURL URLWithString:v4];
      v6 = _MADLog(@"SecureMA");
      v7 = v6;
      if (v5)
      {
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        v12 = 138412290;
        v13 = v5;
        v8 = "[SMA] Overridden signing server is '%@'";
        goto LABEL_15;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v12) = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "[SMA] signing server override was set but was invalid", &v12, 2u);
      }
    }
  }

  if (lCopy && ([lCopy isEqualToString:@"com.apple.MobileAsset.MobileAssetBrain"] & 1) != 0)
  {
    v9 = @"https://gs.apple.com";
  }

  else
  {
    v9 = @"https://gsra.apple.com:443";
  }

  v5 = [NSURL URLWithString:v9];
  v7 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v5;
    v8 = "[SMA] Signing server is '%@'";
LABEL_15:
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, v8, &v12, 0xCu);
  }

LABEL_16:

  v10 = v5;

  return v10;
}

- (BOOL)_shouldForcePersonalizationFailure
{
  if (!_MAPreferencesIsInternalAllowed())
  {
    goto LABEL_25;
  }

  v4 = _MAPreferencesCopyNSStringValue(@"FailPersonalizationConfig");
  if (!v4)
  {
    goto LABEL_25;
  }

  v5 = v4;
  v6 = [v4 componentsSeparatedByString:@":"];
  if ([v6 count])
  {
    v14 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v24 = 138412546;
      v25 = @"FailPersonalizationConfig";
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "[SMA] Default %@ invalid. Uneven number of ':' separated elements:[%@]", &v24, 0x16u);
    }

    goto LABEL_25;
  }

  objectEnumerator = [v6 objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (!nextObject)
  {
LABEL_8:
    v13 = 1;
    goto LABEL_24;
  }

  nextObject3 = nextObject;
  while (1)
  {
    v10 = nextObject3;
    nextObject2 = [objectEnumerator nextObject];
    assetType = [(SecureMobileAssetBundle *)self assetType];
    v2 = [v10 isEqualToString:assetType];

    if (v2)
    {
      break;
    }

    nextObject3 = [objectEnumerator nextObject];

    if (!nextObject3)
    {
      goto LABEL_8;
    }
  }

  if ([nextObject2 isEqualToString:@"*"])
  {
    v15 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      assetType2 = [(SecureMobileAssetBundle *)self assetType];
      v24 = 138412290;
      v25 = assetType2;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "[SMA] All specifiers of AssetType %@ are configured to fail personalization", &v24, 0xCu);
    }

    LOBYTE(v2) = 1;
    goto LABEL_23;
  }

  v15 = [nextObject2 componentsSeparatedByString:{@", "}];
  assetSpecifier = [(SecureMobileAssetBundle *)self assetSpecifier];
  v2 = [v15 containsObject:assetSpecifier];

  v18 = _MADLog(@"SecureMA");
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v19)
    {
      assetSpecifier2 = [(SecureMobileAssetBundle *)self assetSpecifier];
      assetType3 = [(SecureMobileAssetBundle *)self assetType];
      v24 = 138412546;
      v25 = assetSpecifier2;
      v26 = 2112;
      v27 = assetType3;
      v22 = "[SMA] The current specifier(%@) of AssetType %@ is configured to fail personalization";
LABEL_21:
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, v22, &v24, 0x16u);
    }
  }

  else if (v19)
  {
    assetSpecifier2 = [(SecureMobileAssetBundle *)self assetType];
    assetType3 = [(SecureMobileAssetBundle *)self assetSpecifier];
    v24 = 138412546;
    v25 = assetSpecifier2;
    v26 = 2112;
    v27 = assetType3;
    v22 = "[SMA] The current AssetType(%@) is in the list of those configured to fail personalization but the current specifier(%@) is not";
    goto LABEL_21;
  }

LABEL_23:
  v13 = 0;
LABEL_24:

  if (v13)
  {
LABEL_25:
    LOBYTE(v2) = 0;
  }

  return v2 & 1;
}

- (BOOL)_personalize:(id)_personalize error:(id *)error
{
  _personalizeCopy = _personalize;
  personalizationQueue = [objc_opt_class() personalizationQueue];
  dispatch_assert_queue_V2(personalizationQueue);

  AMAuthInstallLogSetHandler();
  cf = AMAuthInstallCreate();
  v66 = [(NSString *)self->_assetBundlePath stringByAppendingPathComponent:@"AssetData"];
  v67 = [v66 stringByAppendingPathComponent:@"Restore"];
  v7 = [NSURL fileURLWithPath:?];
  secureAssetDataPath = [(SecureMobileAssetBundle *)self secureAssetDataPath];
  v69 = [NSURL fileURLWithPath:secureAssetDataPath];
  [(SecureMobileAssetBundle *)self manifestType];
  v77 = [_personalizeCopy objectForKeyedSubscript:@"ssoToken"];
  [_personalizeCopy objectForKeyedSubscript:@"AuthInstallOptions"];

  v9 = [_personalizeCopy objectForKeyedSubscript:@"stageManifest"];
  bOOLValue = [v9 BOOLValue];

  v68 = v7;
  if ([(SecureMobileAssetBundle *)self isPersonalized])
  {
    v11 = _MADLog(@"SecureMA");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
LABEL_5:

      v14 = 0;
      v63 = 0;
      v64 = 0;
      v75 = 0;
      v76 = 0;
      v73 = 0;
      v74 = 0;
      v65 = 0;
      v61 = 0;
      v70 = 0;
      v71 = 0;
      v62 = &__NSDictionary0__struct;
      v15 = 1;
LABEL_19:
      v23 = cf;
      goto LABEL_20;
    }

    assetBundlePath = [(SecureMobileAssetBundle *)self assetBundlePath];
    *buf = 138412290;
    v80 = assetBundlePath;
    v13 = "[SMA] Bundle already personalized, skipping: %@";
LABEL_4:
    _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, v13, buf, 0xCu);

    goto LABEL_5;
  }

  if (bOOLValue && [(SecureMobileAssetBundle *)self isPersonalizedManifestStaged])
  {
    v11 = _MADLog(@"SecureMA");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    assetBundlePath = [(SecureMobileAssetBundle *)self assetBundlePath];
    *buf = 138412290;
    v80 = assetBundlePath;
    v13 = "[SMA] Bundle already personalized and personalized manifest staged, skipping: %@";
    goto LABEL_4;
  }

  if (!&_AMAuthInstallUpdaterCryptex1MobileAssetSetInfo)
  {
    v24 = "AMAuthInstallUpdaterCryptex1MobileAssetSetInfo";
LABEL_17:
    v25 = [NSString stringWithFormat:@"Symbol not found: _%s", v24];
    v26 = +[NSMutableDictionary dictionary];
    [v26 setObject:v25 forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v26 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
    v14 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:-5 userInfo:v26];

    v15 = 0;
    v63 = 0;
    v64 = 0;
    v75 = 0;
    v76 = 0;
    v73 = 0;
    v74 = 0;
    v65 = 0;
LABEL_18:
    v61 = 0;
    v70 = 0;
    v71 = 0;
    v62 = &__NSDictionary0__struct;
    goto LABEL_19;
  }

  if (!&_AMAuthInstallUpdaterCryptex1MobileAssetCopyImg4WithRestoreInfo)
  {
    v24 = "AMAuthInstallUpdaterCryptex1MobileAssetCopyImg4WithRestoreInfo";
    goto LABEL_17;
  }

  v16 = +[NSFileManager defaultManager];
  v59 = secureAssetDataPath;
  [v16 removeItemAtPath:secureAssetDataPath error:0];

  assetType = [(SecureMobileAssetBundle *)self assetType];
  v18 = [SecureMobileAssetBundle getSigningServerURL:assetType];

  v19 = cf;
  v65 = v18;
  v20 = AMAuthInstallSetSigningServerURL();
  if (v20)
  {
    v21 = [NSString stringWithFormat:@"AMAuthInstallSetSigningServerURL() failed with error %d (%@)", v20, AMAuthInstallGetLocalizedStatusString()];
    v22 = +[NSMutableDictionary dictionary];
    [v22 setObject:v21 forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v22 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
    v14 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:v22];

    v15 = 0;
    v63 = 0;
    v64 = 0;
    v75 = 0;
    v76 = 0;
    v73 = 0;
    v74 = 0;
    v61 = 0;
    v70 = 0;
    v71 = 0;
    v62 = &__NSDictionary0__struct;
LABEL_14:
    v23 = v19;
    secureAssetDataPath = v59;
    goto LABEL_20;
  }

  secureAssetDataPath = v59;
  if (v77)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = AMAuthInstallSsoSetToken();
      v31 = _MADLog(@"SecureMA");
      v32 = v31;
      if (v30)
      {
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v33 = "[SMA] Unable to set SSO token for user authlisting";
          v34 = v32;
          v35 = OS_LOG_TYPE_ERROR;
LABEL_38:
          v36 = 2;
          goto LABEL_39;
        }
      }

      else if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v33 = "[SMA] User-authlisting enabled.";
        v34 = v32;
        v35 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_38;
      }
    }

    else
    {
      v32 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v80 = v77;
        v33 = "[SMA] Invalid ssoToken=%@";
        v34 = v32;
        v35 = OS_LOG_TYPE_ERROR;
        v36 = 12;
LABEL_39:
        _os_log_impl(&dword_0, v34, v35, v33, buf, v36);
      }
    }
  }

  if ([(SecureMobileAssetBundle *)self _shouldForcePersonalizationFailure])
  {
    v37 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      assetType2 = [(SecureMobileAssetBundle *)self assetType];
      *buf = 138412290;
      v80 = assetType2;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "[SMA] Simulating personalization failure of asset(%@) due to default", buf, 0xCu);
    }

    v39 = [NSString stringWithFormat:@"Simulated personalization failure due to default"];
    v40 = +[NSMutableDictionary dictionary];
    [v40 setObject:v39 forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v40 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
    v14 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:v40];

    v15 = 0;
    v63 = 0;
    v64 = 0;
    v75 = 0;
    v76 = 0;
    v73 = 0;
    v74 = 0;
    goto LABEL_18;
  }

  v41 = MABrainUtilityCopyEcid();
  v42 = MABrainUtilityCopyChipId();
  v76 = MABrainUtilityCopyBoardId();
  v75 = MABrainUtilityCopySecurityDomain();
  v74 = MABrainUtilityCopyCertificateSecurityMode();
  v43 = MABrainUtilityCopySigningFuse();
  v44 = &__NSDictionary0__struct;
  v73 = v43;
  if (!v41)
  {
    goto LABEL_52;
  }

  v19 = cf;
  if (v42 && v76 && v75 && v74 && v43)
  {
    v83[0] = kAMAuthInstallApParameterECID;
    v83[1] = kAMAuthInstallApParameterChipID;
    v84[0] = v41;
    v84[1] = v42;
    v83[2] = kAMAuthInstallApParameterBoardID;
    v83[3] = kAMAuthInstallApParameterSecurityDomain;
    v84[2] = v76;
    v84[3] = v75;
    v83[4] = kAMAuthInstallApParameterSecurityMode;
    v83[5] = kAMAuthInstallApParameterProductionMode;
    v84[4] = v74;
    v84[5] = v43;
    v44 = [NSDictionary dictionaryWithObjects:v84 forKeys:v83 count:6];
LABEL_52:
    v19 = cf;
  }

  v64 = v41;
  v62 = v44;
  v45 = AMAuthInstallApSetParameters();
  v63 = v42;
  if (v45)
  {
    v46 = [NSString stringWithFormat:@"AMAuthInstallApSetParameters() failed with error %d (%@)", v45, AMAuthInstallGetLocalizedStatusString()];
    v47 = +[NSMutableDictionary dictionary];
    [v47 setObject:v46 forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v47 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
    v14 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:v47];

    v15 = 0;
    v61 = 0;
    v70 = 0;
    v71 = 0;
    goto LABEL_14;
  }

  if (_cryptex1_product_class_onceToken != -1)
  {
    [SecureMobileAssetBundle _personalize:error:];
  }

  secureAssetDataPath = v59;
  v48 = _cryptex1_product_class_productClass;
  v81[0] = kAMAuthInstallTagCryptex1ChipId;
  v81[1] = kAMAuthInstallTagCryptex1Type;
  v82[0] = @"0xFF10";
  v82[1] = &off_4F7850;
  v81[2] = kAMAuthInstallTagCryptex1ProductClass;
  v61 = v48;
  v82[2] = v48;
  v49 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:3];
  v50 = [_personalizeCopy objectForKeyedSubscript:@"scpParametersOverride"];
  objc_opt_class();
  v70 = v50;
  if (objc_opt_isKindOfClass())
  {
    v72 = v49;
    v51 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v80 = v50;
      _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "[SMA] WARNING: Using software coprocessor parameters override:\n%@", buf, 0xCu);
    }

    v49 = v50;
  }

  v71 = v49;
  v52 = AMAuthInstallApSoftwareCoprocessorSetParameters();
  if (v52)
  {
    [NSString stringWithFormat:@"AMAuthInstallApSoftwareCoprocessorSetParameters() failed with error %d (%@)", v52, AMAuthInstallGetLocalizedStatusString()];
  }

  else
  {
    v53 = AMAuthInstallBundleCopyBuildIdentityForVariant();
    if (!v53)
    {
      v56 = [NSString stringWithFormat:@"AMAuthInstallBundleCopyBuildIdentityForVariant() returned a NULL buildIdentity"];
      v57 = +[NSMutableDictionary dictionary];
      [v57 setObject:v56 forKeyedSubscript:NSDebugDescriptionErrorKey];
      [v57 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
      v14 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:v57];

      v15 = 0;
      goto LABEL_19;
    }

    [NSString stringWithFormat:@"AMAuthInstallBundleCopyBuildIdentityForVariant() failed with error %d (%@)", v53, AMAuthInstallGetLocalizedStatusString()];
  }
  v54 = ;
  v55 = +[NSMutableDictionary dictionary];
  [v55 setObject:v54 forKeyedSubscript:NSDebugDescriptionErrorKey];
  [v55 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
  v14 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:v55];

  v15 = 0;
  v23 = cf;
LABEL_20:
  if (v23)
  {
    CFRelease(v23);
  }

  if (!v15)
  {
    v27 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v80 = v14;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "[SMA] Failed to personalize asset bundle: %@", buf, 0xCu);
    }

    if (error)
    {
      v28 = v14;
      *error = v14;
    }

    [(SecureMobileAssetBundle *)self depersonalize:0, v58];
  }

  return v15;
}

- (BOOL)_generateNonceProposalForHandle:(unint64_t)handle digest:(id *)digest nonce:(id *)nonce error:(id *)error
{
  if (!__isPlatformVersionAtLeast(2, 18, 0, 0))
  {
    v19 = [NSString stringWithFormat:@"Nonce proposal API unavailable"];
    v20 = +[NSMutableDictionary dictionary];
    [v20 setObject:v19 forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v20 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
    v21 = -5;
LABEL_9:
    v22 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:v21 userInfo:v20];

    v23 = v22;
    *error = v22;

    return 0;
  }

  if (!image4_environment_new())
  {
    v19 = [NSString stringWithFormat:@"image4_environment_new() failed"];
    v20 = +[NSMutableDictionary dictionary];
    [v20 setObject:v19 forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v20 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
    v21 = 102;
    goto LABEL_9;
  }

  memset(v28, 0, sizeof(v28));
  v27[0] = 0;
  v27[1] = 0;
  nonce_proposal = image4_environment_generate_nonce_proposal();
  image4_environment_destroy();
  v10 = nonce_proposal == 0;
  v11 = _MADLog(@"SecureMA");
  v12 = v11;
  if (nonce_proposal)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109378;
      *v26 = nonce_proposal;
      *&v26[4] = 2080;
      *&v26[6] = strerror(nonce_proposal);
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "[SMA] Failed to generate nonce proposal: %d (%s)", buf, 0x12u);
    }

    v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:nonce_proposal userInfo:0];
    v14 = [NSString stringWithFormat:@"image4_environment_generate_nonce_proposal() failed"];
    v15 = v13;
    v16 = +[NSMutableDictionary dictionary];
    [v16 setObject:v14 forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v16 setObject:v15 forKeyedSubscript:NSUnderlyingErrorKey];

    v17 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:v16];

    v18 = v17;
    *error = v17;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *v26 = 16;
      *&v26[8] = 2048;
      *&v26[10] = 0;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[SMA] Obtained nonce (%lu bytes) and digest (%lu bytes)", buf, 0x16u);
    }

    *digest = [[NSData alloc] initWithBytes:v28 length:0];
    *nonce = [[NSData alloc] initWithBytes:v27 length:16];
  }

  return v10;
}

- (BOOL)_queryNonceForHandle:(unint64_t)handle domain:(unsigned int)domain digest:(id *)digest error:(id *)error
{
  if (!__isPlatformVersionAtLeast(2, 18, 0, 0))
  {
    v18 = [NSString stringWithFormat:@"Nonce query API unavailable"];
    v19 = +[NSMutableDictionary dictionary];
    [v19 setObject:v18 forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v19 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
    v20 = -5;
LABEL_9:
    v21 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:v20 userInfo:v19];

    v22 = v21;
    *error = v21;

    return 0;
  }

  if (!image4_environment_new())
  {
    v18 = [NSString stringWithFormat:@"image4_environment_new() failed"];
    v19 = +[NSMutableDictionary dictionary];
    [v19 setObject:v18 forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v19 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
    v20 = 102;
    goto LABEL_9;
  }

  image4_environment_set_nonce_domain();
  memset(v30, 0, sizeof(v30));
  v9 = image4_environment_copy_nonce_digest();
  image4_environment_destroy();
  v10 = v9 == 0;
  if (v9)
  {
    v11 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109634;
      domainCopy2 = domain;
      v28 = 1024;
      LODWORD(v29[0]) = v9;
      WORD2(v29[0]) = 2080;
      *(v29 + 6) = strerror(v9);
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, "[SMA] Failed to query nonce domain %d: %d (%s)", buf, 0x18u);
    }

    v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v9 userInfo:0];
    v13 = [NSString stringWithFormat:@"image4_environment_copy_nonce_digest() failed"];
    v14 = v12;
    v15 = +[NSMutableDictionary dictionary];
    [v15 setObject:v13 forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v15 setObject:v14 forKeyedSubscript:NSUnderlyingErrorKey];

    v16 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:v15];

    v17 = v16;
    *error = v16;
  }

  else
  {
    v14 = [[NSData alloc] initWithBytes:v30 length:0];
    v23 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      domainCopy2 = domain;
      v28 = 2112;
      v29[0] = v14;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "[SMA] Queried nonce digest for domain %d: %@", buf, 0x12u);
    }

    v24 = v14;
    *digest = v14;
  }

  return v10;
}

- (BOOL)_storeManifest:(id)manifest manifestType:(unint64_t)type stage:(BOOL)stage error:(id *)error
{
  stageCopy = stage;
  manifestCopy = manifest;
  if (__isPlatformVersionAtLeast(2, 18, 0, 0))
  {
    v11 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"Storing";
      if (stageCopy)
      {
        v12 = @"Staging";
      }

      *buf = 138412802;
      v54 = v12;
      if (type == 1)
      {
        v13 = "classic";
      }

      else
      {
        v13 = "code";
      }

      v55 = 2112;
      selfCopy = self;
      v57 = 2080;
      v58 = v13;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[SMA] %@ manifest for %@ (type = %s)", buf, 0x20u);
    }

    secureInfoPlistPath = [(SecureMobileAssetBundle *)self secureInfoPlistPath];
    if (!secureInfoPlistPath)
    {
      v16 = [NSString stringWithFormat:@"failed to get cryptex info plist path"];
      v23 = +[NSMutableDictionary dictionary];
      [v23 setObject:v16 forKeyedSubscript:NSDebugDescriptionErrorKey];
      [v23 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
      v24 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:v23];

      v25 = v24;
      v22 = 0;
      *error = v24;
LABEL_43:

      goto LABEL_44;
    }

    v52 = 0;
    v15 = [NSData dataWithContentsOfFile:secureInfoPlistPath options:0 error:&v52];
    v16 = v52;
    if (v15)
    {
      v17 = objc_alloc_init(MASecureManifestStorage);
      if (stageCopy)
      {
        if (objc_opt_respondsToSelector())
        {
          stageCopy = 1;
        }

        else
        {
          v29 = _MADLog(@"SecureMA");
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "[SMA] Warning: MASecureManifestStorage does not support staging, storing manifest instead", buf, 2u);
          }

          stageCopy = 0;
        }
      }

      if (type != 2 || (objc_opt_respondsToSelector() & 1) != 0)
      {
        v48 = v15;
        if (objc_opt_respondsToSelector())
        {
          v51 = v16;
          v30 = [v17 storeManifest:manifestCopy manifestType:type infoPlist:v15 stage:stageCopy error:&v51];
          v31 = v51;

          if (v30)
          {
            v16 = v31;
            goto LABEL_36;
          }

          v39 = "store";
          if (stageCopy)
          {
            v39 = "stage";
          }

          v40 = "code";
          if (type == 1)
          {
            v40 = "classic";
          }

          v41 = [NSString stringWithFormat:@"failed to %s %s manifest", v39, v40];
          v42 = v31;
          goto LABEL_41;
        }

        if (stageCopy)
        {
          v50 = v16;
          v32 = [v17 stageManifest:manifestCopy infoPlist:v15 error:&v50];
          v33 = v50;

          if ((v32 & 1) == 0)
          {
            v34 = @"failed to stage manifest";
LABEL_40:
            v41 = [NSString stringWithFormat:v34];
            v42 = v33;
LABEL_41:
            v16 = v42;
            v44 = +[NSMutableDictionary dictionary];
            [v44 setObject:v41 forKeyedSubscript:NSDebugDescriptionErrorKey];
            [v44 setObject:v16 forKeyedSubscript:NSUnderlyingErrorKey];
            v45 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:v44];

            v46 = v45;
            *error = v45;

            v22 = 0;
            v15 = v48;
            goto LABEL_42;
          }
        }

        else
        {
          v49 = v16;
          v43 = [v17 storeManifest:manifestCopy infoPlist:v15 error:&v49];
          v33 = v49;

          if ((v43 & 1) == 0)
          {
            v34 = @"failed to store manifest";
            goto LABEL_40;
          }
        }

        v16 = v33;
LABEL_36:
        v15 = v48;
        if (+[SecureMobileAssetBundle _requiresLiveExclaveNonce])
        {
          v22 = [(SecureMobileAssetBundle *)self _storeManifestToExclaves:manifestCopy infoPlist:v48 stage:stageCopy error:error];
        }

        else
        {
          v22 = 1;
        }

        goto LABEL_42;
      }

      v35 = [NSString stringWithFormat:@"MASecureManifestStorage does not support SMAC"];
      v36 = +[NSMutableDictionary dictionary];
      [v36 setObject:v35 forKeyedSubscript:NSDebugDescriptionErrorKey];
      [v36 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
      v37 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:v36];

      v38 = v37;
      *error = v37;

      v22 = 0;
    }

    else
    {
      v17 = [NSString stringWithFormat:@"failed to read cryptex info plist"];
      v16 = v16;
      v26 = +[NSMutableDictionary dictionary];
      [v26 setObject:v17 forKeyedSubscript:NSDebugDescriptionErrorKey];
      [v26 setObject:v16 forKeyedSubscript:NSUnderlyingErrorKey];
      v27 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:v26];

      v28 = v27;
      v22 = 0;
      *error = v27;
    }

LABEL_42:

    goto LABEL_43;
  }

  v18 = [NSString stringWithFormat:@"Manifest storage service unavailable"];
  v19 = +[NSMutableDictionary dictionary];
  [v19 setObject:v18 forKeyedSubscript:NSDebugDescriptionErrorKey];
  [v19 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
  v20 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:-5 userInfo:v19];

  v21 = v20;
  *error = v20;

  v22 = 0;
LABEL_44:

  return v22;
}

- (BOOL)_storeManifestToExclaves:(id)exclaves infoPlist:(id)plist stage:(BOOL)stage error:(id *)error
{
  stageCopy = stage;
  exclavesCopy = exclaves;
  plistCopy = plist;
  v12 = objc_opt_class();
  objc_sync_enter(v12);
  if (!__isPlatformVersionAtLeast(2, 18, 2, 0))
  {
    goto LABEL_36;
  }

  v69 = 0;
  if (![(SecureMobileAssetBundle *)self isMappableToExclaves:&v69]|| ![SecureMobileAssetBundle _shouldUseConclave:[(SecureMobileAssetBundle *)self darwinOnly]])
  {
    goto LABEL_36;
  }

  integrityCatalogPath = [(SecureMobileAssetBundle *)self integrityCatalogPath];
  if (integrityCatalogPath)
  {
    v68 = 0;
    v58 = integrityCatalogPath;
    v14 = [NSData dataWithContentsOfFile:integrityCatalogPath options:0 error:&v68];
    v15 = v68;
    v59 = v14;
    if (v14)
    {
      v67 = v15;
      v60 = [SecureMobileAssetBundle getExclaveManager:&v67];
      v16 = v67;

      if ([v60 conformsToProtocol:&OBJC_PROTOCOL___MAExclaveManifestStorageServiceProtocol2])
      {
        v57 = v60;
        v17 = v69;
        assetSpecifier = [(SecureMobileAssetBundle *)self assetSpecifier];
        v66 = v16;
        LOBYTE(v17) = [v57 stageManifestForFSTag:v17 specifier:assetSpecifier manifest:exclavesCopy infoPlist:plistCopy catalog:v59 error:&v66];
        v19 = v66;

        if (v17)
        {
          if (stageCopy)
          {
LABEL_11:

LABEL_35:
LABEL_36:
            v54 = 1;
            goto LABEL_37;
          }

          v56 = [NSNumber numberWithUnsignedInt:v69];
          v72 = v56;
          v20 = [NSArray arrayWithObjects:&v72 count:1];
          assetSpecifier2 = [(SecureMobileAssetBundle *)self assetSpecifier];
          v71 = assetSpecifier2;
          v22 = [NSArray arrayWithObjects:&v71 count:1];
          v65 = v19;
          v23 = [v57 commitStagedManifestForFSTags:v20 specifiers:v22 error:&v65];
          v24 = v65;

          if (v23)
          {
            v19 = v24;
            goto LABEL_11;
          }

          v41 = [NSString stringWithFormat:@"failed to store manifest in Exclave Secure Storage"];
          v25 = v24;
          v42 = +[NSMutableDictionary dictionary];
          [v42 setObject:v41 forKeyedSubscript:NSDebugDescriptionErrorKey];
          [v42 setObject:v25 forKeyedSubscript:NSUnderlyingErrorKey];
          v43 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:v42];
        }

        else
        {
          v41 = [NSString stringWithFormat:@"failed to stage manifest in Exclave Secure Storage"];
          v25 = v19;
          v42 = +[NSMutableDictionary dictionary];
          [v42 setObject:v41 forKeyedSubscript:NSDebugDescriptionErrorKey];
          [v42 setObject:v25 forKeyedSubscript:NSUnderlyingErrorKey];
          v43 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:v42];
        }

        v44 = v43;

        v45 = v44;
        *error = v44;

        goto LABEL_31;
      }

      if (![v60 conformsToProtocol:&OBJC_PROTOCOL___MAExclaveManifestStorageServiceProtocol])
      {
        if (!v16)
        {
          v19 = _MADLog(@"SecureMA");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[SMA] Unable to get SecureMobileAssetExclave instance in this environment", buf, 2u);
          }

          goto LABEL_35;
        }

        v57 = [NSString stringWithFormat:@"Failed to get shared instance of SecureMobileAssetExclave"];
        v25 = v16;
        v38 = +[NSMutableDictionary dictionary];
        [v38 setObject:v57 forKeyedSubscript:NSDebugDescriptionErrorKey];
        [v38 setObject:v25 forKeyedSubscript:NSUnderlyingErrorKey];
        v39 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:v38];

        v40 = v39;
        *error = v39;
        goto LABEL_31;
      }

      v57 = v60;
      v33 = objc_opt_respondsToSelector();
      if (v33 & 1 | !stageCopy)
      {
        if (stageCopy)
        {
          v63 = v16;
          v34 = [v57 stageManifest:exclavesCopy infoPlist:plistCopy catalog:v14 error:&v63];
          v19 = v63;

          if ((v34 & 1) == 0)
          {
            v35 = [NSString stringWithFormat:@"failed to stage manifest in Exclave Secure Storage"];
            v25 = v19;
            v36 = +[NSMutableDictionary dictionary];
            [v36 setObject:v35 forKeyedSubscript:NSDebugDescriptionErrorKey];
            [v36 setObject:v25 forKeyedSubscript:NSUnderlyingErrorKey];
            v37 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:v36];
LABEL_30:
            v52 = v37;

            v53 = v52;
            *error = v52;

LABEL_31:
            goto LABEL_32;
          }

          goto LABEL_28;
        }
      }

      else
      {
        v46 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, "[SMA] Warning: MAExclaveManifestStorageService does not support staging, storing manifest instead", buf, 2u);
        }
      }

      v62 = v16;
      v47 = [v57 storeManifest:exclavesCopy infoPlist:plistCopy catalog:v14 error:&v62];
      v48 = v62;

      if ((v47 & v33) != 1 || (+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v69), v49 = objc_claimAutoreleasedReturnValue(), v70 = v49, +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v70, 1), v50 = objc_claimAutoreleasedReturnValue(), v61 = v48, v51 = [v57 commitStagedManifestForFSTags:v50 error:&v61], v19 = v61, v48, v50, v49, v48 = v19, (v51 & 1) == 0))
      {
        v35 = [NSString stringWithFormat:@"failed to store manifest in Exclave Secure Storage"];
        v25 = v48;
        v36 = +[NSMutableDictionary dictionary];
        [v36 setObject:v35 forKeyedSubscript:NSDebugDescriptionErrorKey];
        [v36 setObject:v25 forKeyedSubscript:NSUnderlyingErrorKey];
        v37 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:v36];
        goto LABEL_30;
      }

LABEL_28:

      goto LABEL_35;
    }

    v29 = [NSString stringWithFormat:@"failed to read cryptex integrity catalog"];
    v25 = v15;
    v30 = +[NSMutableDictionary dictionary];
    [v30 setObject:v29 forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v30 setObject:v25 forKeyedSubscript:NSUnderlyingErrorKey];
    v31 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:v30];

    v32 = v31;
    *error = v31;
  }

  else
  {
    v25 = [NSString stringWithFormat:@"failed to get integrity catalog path"];
    v26 = +[NSMutableDictionary dictionary];
    [v26 setObject:v25 forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v26 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
    v27 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:v26];

    v28 = v27;
    *error = v27;
  }

LABEL_32:

  v54 = 0;
LABEL_37:
  objc_sync_exit(v12);

  return v54;
}

- (BOOL)_activateManifestInExclaves:(unsigned int)exclaves error:(id *)error
{
  v5 = *&exclaves;
  if (__isPlatformVersionAtLeast(2, 18, 2, 0))
  {
    v30 = 0;
    v7 = [SecureMobileAssetBundle getExclaveManager:&v30];
    v8 = v30;
    if (v7)
    {
      if ([v7 conformsToProtocol:&OBJC_PROTOCOL___MAExclaveManifestStorageServiceProtocol2])
      {
        v9 = v7;
        v10 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          assetType = [(SecureMobileAssetBundle *)self assetType];
          assetSpecifier = [(SecureMobileAssetBundle *)self assetSpecifier];
          *buf = 138412802;
          v32 = assetType;
          v33 = 2112;
          v34 = assetSpecifier;
          v35 = 1024;
          v36 = v5;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[SMA] Activating committed manifest for %@:%@ fstag=%u", buf, 0x1Cu);
        }

        assetSpecifier2 = [(SecureMobileAssetBundle *)self assetSpecifier];
        v29 = v8;
        v14 = [v9 activateCommittedManifestForFSTag:v5 specifier:assetSpecifier2 error:&v29];
        v15 = v29;

        v16 = _MADLog(@"SecureMA");
        v17 = v16;
        if (v14)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            assetType2 = [(SecureMobileAssetBundle *)self assetType];
            assetSpecifier3 = [(SecureMobileAssetBundle *)self assetSpecifier];
            *buf = 138412802;
            v32 = assetType2;
            v33 = 2112;
            v34 = assetSpecifier3;
            v35 = 1024;
            v36 = v5;
            v20 = "[SMA] Successfully activated committed manifest for %@:%@ fstag=%u";
            v21 = v17;
            v22 = OS_LOG_TYPE_DEFAULT;
            v23 = 28;
LABEL_20:
            _os_log_impl(&dword_0, v21, v22, v20, buf, v23);
          }
        }

        else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          assetType2 = [(SecureMobileAssetBundle *)self assetType];
          assetSpecifier3 = [(SecureMobileAssetBundle *)self assetSpecifier];
          *buf = 138413058;
          v32 = assetType2;
          v33 = 2112;
          v34 = assetSpecifier3;
          v35 = 1024;
          v36 = v5;
          v37 = 2112;
          v38 = v15;
          v20 = "[SMA] Failed to activate committed manifest for %@:%@ fstag=%u %@";
          v21 = v17;
          v22 = OS_LOG_TYPE_ERROR;
          v23 = 38;
          goto LABEL_20;
        }

        v7 = v9;
        goto LABEL_22;
      }

      v25 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "[SMA] Activating committed manifest is not supported on this OS", buf, 2u);
      }

      v9 = [NSString stringWithFormat:@"Activating committed manifest is not supported on this OS"];
      v26 = +[NSMutableDictionary dictionary];
      [v26 setObject:v9 forKeyedSubscript:NSDebugDescriptionErrorKey];
      [v26 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
      v15 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:-5 userInfo:v26];
    }

    else
    {
      v9 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v8;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "[SMA] Failed to activate committed manifest because conclave manager instance is nil: %@", buf, 0xCu);
      }

      v15 = v8;
    }
  }

  else
  {
    v24 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "[SMA] MobileAssetExclaveServices is not available on this version of the OS", buf, 2u);
    }

    v7 = [NSString stringWithFormat:@"MobileAssetExclaveServices is not available on this version of the OS"];
    v9 = +[NSMutableDictionary dictionary];
    [v9 setObject:v7 forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v9 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
    v15 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:-5 userInfo:v9];
  }

LABEL_22:

  if (error && v15)
  {
    v27 = v15;
    *error = v15;
  }

  return v15 == 0;
}

- (BOOL)depersonalize:(id *)depersonalize
{
  secureAssetDataPath = [(SecureMobileAssetBundle *)self secureAssetDataPath];
  v6 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "[SMA] Depersonalizing %@", buf, 0xCu);
  }

  v7 = +[NSFileManager defaultManager];
  v8 = [v7 fileExistsAtPath:secureAssetDataPath];

  if (!v8)
  {
    v11 = 0;
LABEL_14:
    v17 = 1;
    goto LABEL_15;
  }

  v9 = +[NSFileManager defaultManager];
  v19 = 0;
  v10 = [v9 removeItemAtPath:secureAssetDataPath error:&v19];
  v11 = v19;

  if (v10)
  {
    v12 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = secureAssetDataPath;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[SMA] Removed personalized bundle: %@", buf, 0xCu);
    }
  }

  else
  {
    v12 = [NSString stringWithFormat:@"Failed to remove personalized bundle for %@: %@", self, v11];
    v13 = v11;
    v14 = +[NSMutableDictionary dictionary];
    [v14 setObject:v12 forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v14 setObject:v13 forKeyedSubscript:NSUnderlyingErrorKey];
    v11 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:103 userInfo:v14];
  }

  if (!v11)
  {
    goto LABEL_14;
  }

  v15 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    selfCopy = v11;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "[SMA] Failed to depersonalize: %@", buf, 0xCu);
  }

  if (depersonalize)
  {
    v16 = v11;
    v17 = 0;
    *depersonalize = v11;
  }

  else
  {
    v17 = 0;
  }

LABEL_15:

  return v17;
}

- (BOOL)isGrafted
{
  selfCopy = self;
  graftPath = [(SecureMobileAssetBundle *)self graftPath];
  LOBYTE(selfCopy) = [(SecureMobileAssetBundle *)selfCopy isGraftedPath:graftPath];

  return selfCopy;
}

- (BOOL)isGraftedPath:(id)path
{
  v6[0] = 0;
  v6[1] = 0;
  v3 = fsctl([path fileSystemRepresentation], 0xC0104A66uLL, v6, 1u);
  return BYTE4(v6[0]) && v3 == 0;
}

- (BOOL)loadTrustCache:(id *)cache
{
  v5 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    assetBundlePath = [(SecureMobileAssetBundle *)self assetBundlePath];
    *buf = 138412290;
    v68 = assetBundlePath;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "[SMA] Loading trustcache for %@", buf, 0xCu);
  }

  cryptexPath = [(SecureMobileAssetBundle *)self cryptexPath];
  trustCachePath = [(SecureMobileAssetBundle *)self trustCachePath];
  ticketPath = [(SecureMobileAssetBundle *)self ticketPath];
  v10 = ticketPath;
  if (!cryptexPath)
  {
    if (cache)
    {
      v11 = [NSString stringWithFormat:@"cryptexPath is nil"];
      v12 = +[NSMutableDictionary dictionary];
      [v12 setObject:v11 forKeyedSubscript:NSDebugDescriptionErrorKey];
      [v12 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
      v13 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:115 userInfo:v12];

      v14 = v13;
      *cache = v13;
    }

    goto LABEL_74;
  }

  if (!trustCachePath)
  {
    if (cache)
    {
      v15 = [NSString stringWithFormat:@"trustCachePath is nil"];
      v16 = +[NSMutableDictionary dictionary];
      [v16 setObject:v15 forKeyedSubscript:NSDebugDescriptionErrorKey];
      [v16 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
      v17 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:115 userInfo:v16];

      v18 = v17;
      *cache = v17;
    }

    goto LABEL_74;
  }

  if (!ticketPath)
  {
    if (cache)
    {
      v19 = [NSString stringWithFormat:@"ticketPath is nil"];
      v20 = +[NSMutableDictionary dictionary];
      [v20 setObject:v19 forKeyedSubscript:NSDebugDescriptionErrorKey];
      [v20 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
      v21 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:115 userInfo:v20];

      v22 = v21;
      *cache = v21;
    }

    goto LABEL_74;
  }

  v62 = -1;
  if (![(SecureMobileAssetBundle *)self isPersonalized:&v62])
  {
    if (cache)
    {
      if (v62 >= 0x33)
      {
        v23 = 115;
      }

      else
      {
        v23 = v62 + 11500;
      }

      v79[0] = NSDebugDescriptionErrorKey;
      if (v62 > 0x32)
      {
        v33 = @"cannot load trustcache for an unpersonalized cryptex";
      }

      else
      {
        v24 = @"Unknown";
        if (v62 <= 1)
        {
          if (v62)
          {
            v24 = @"Committed ticket data is nil";
          }

          else
          {
            v24 = @"Personalized bundle ticket data is nil";
          }
        }

        else
        {
          switch(v62)
          {
            case 2:
              v24 = @"Personalized bundle ticket data and committed ticket data do not match";
              break;
            case 3:
              v24 = @"Bundle is not personalized and committed for Exclaves";
              break;
            case 50:
              v24 = @"Personalized manifest failed to verify (nonce rolled?)";
              break;
          }
        }

        v33 = [@"cannot load trustcache for an unpersonalized cryptex" stringByAppendingFormat:@" (%@)", v24];
      }

      v80[0] = v33;
      v80[1] = cryptexPath;
      v79[1] = @"cryptexPath";
      v79[2] = @"ticketpath";
      v80[2] = v10;
      v80[3] = trustCachePath;
      v79[3] = @"trustCachePath";
      v79[4] = @"AssetBundlePath";
      assetBundlePath2 = [(SecureMobileAssetBundle *)self assetBundlePath];
      v80[4] = assetBundlePath2;
      v49 = [NSDictionary dictionaryWithObjects:v80 forKeys:v79 count:5];
      *cache = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:v23 userInfo:v49];
    }

LABEL_74:
    v32 = 0;
    goto LABEL_75;
  }

  v77[0] = @"MKBAssertionKey";
  v77[1] = @"MKBAssertionTimeout";
  v78[0] = @"Other";
  v78[1] = &off_4F7868;
  v58 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:2];
  v61 = 0;
  cf = MKBDeviceLockAssertion();
  if (cf)
  {
    v57 = 0;
  }

  else
  {
    v57 = v61;
    v25 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v68 = trustCachePath;
      v69 = 2112;
      v70 = v61;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "[SMA] Unable to acquiring unlock assertion %@: %@", buf, 0x16u);
    }
  }

  v60 = 0;
  v26 = [NSData dataWithContentsOfFile:trustCachePath options:1 error:&v60];
  v27 = v60;
  if (v26)
  {
    v59 = v27;
    v28 = [NSData dataWithContentsOfFile:v10 options:1 error:&v59];
    v55 = v59;

    if (v28)
    {
      if ([v26 length] >> 32)
      {
        v29 = 0;
      }

      else
      {
        v29 = [v26 length];
      }

      if (!([v28 length] >> 32) && objc_msgSend(v28, "length") && v29)
      {
        v38 = v26;
        [v26 bytes];
        v39 = v28;
        [v28 bytes];
        if (!amfi_load_trust_cache())
        {
          v51 = _MADLog(@"SecureMA");
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            assetBundlePath3 = [(SecureMobileAssetBundle *)self assetBundlePath];
            *buf = 138412290;
            v68 = assetBundlePath3;
            _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEFAULT, "[SMA] Successfully loaded trust cache for Secure Asset bundle: %@", buf, 0xCu);
          }

          if (cf)
          {
            CFRelease(cf);
          }

          cf = 0;
          v32 = 1;
          goto LABEL_62;
        }

        __errnum = *__error();
        v40 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          assetBundlePath4 = [(SecureMobileAssetBundle *)self assetBundlePath];
          v41 = strerror(__errnum);
          *buf = 138412546;
          v68 = assetBundlePath4;
          v69 = 2080;
          v70 = v41;
          _os_log_impl(&dword_0, v40, OS_LOG_TYPE_ERROR, "[SMA] Failed to load trust cache for asset bundle %@. (%s)", buf, 0x16u);
        }

        if (__errnum != 35 || cf != 0)
        {
          v43 = 11507;
        }

        else
        {
          v43 = 11508;
        }

        if (!cache)
        {
LABEL_61:
          v32 = 0;
LABEL_62:
          v27 = v55;
          goto LABEL_63;
        }

        v64[0] = @"amfi_load_trust_cache() returned an error.";
        v63[0] = NSDebugDescriptionErrorKey;
        v63[1] = NSUnderlyingErrorKey;
        v44 = [NSError errorWithDomain:"errorWithDomain:code:userInfo:" code:NSPOSIXErrorDomain userInfo:?];
        v64[1] = v44;
        v63[2] = @"AssetBundlePath";
        assetBundlePath5 = [(SecureMobileAssetBundle *)self assetBundlePath];
        v64[2] = assetBundlePath5;
        v64[3] = v10;
        v63[3] = @"ticketpath";
        v63[4] = @"trustCachePath";
        v64[4] = trustCachePath;
        v36 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:5];

        v37 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:v43 userInfo:v36];
      }

      else
      {
        v46 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v68 = trustCachePath;
          v69 = 2112;
          v70 = v26;
          v71 = 2112;
          v72 = v28;
          _os_log_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, "[SMA] Trust cache and/or ticket for %@ are invalid\ntrustCache=%@\nticket=%@", buf, 0x20u);
        }

        if (!cache)
        {
          goto LABEL_61;
        }

        v65[0] = NSDebugDescriptionErrorKey;
        v65[1] = @"AssetBundlePath";
        v66[0] = @"Trust cache and/or ticket is empty.";
        assetBundlePath6 = [(SecureMobileAssetBundle *)self assetBundlePath];
        v66[1] = assetBundlePath6;
        v36 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:2];

        v37 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:11506 userInfo:v36];
      }
    }

    else
    {
      v34 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v68 = v10;
        v69 = 2112;
        v70 = v55;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "[SMA] Error loading Cryptex1 ticket at %@: %@", buf, 0x16u);
      }

      if (!cache)
      {
        goto LABEL_61;
      }

      v73[0] = NSFilePathErrorKey;
      v73[1] = NSUnderlyingErrorKey;
      v74[0] = v10;
      v74[1] = v55;
      v73[2] = @"AssetBundlePath";
      assetBundlePath7 = [(SecureMobileAssetBundle *)self assetBundlePath];
      v74[2] = assetBundlePath7;
      v36 = [NSDictionary dictionaryWithObjects:v74 forKeys:v73 count:3];

      v37 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:11504 userInfo:v36];
    }

    *cache = v37;

    goto LABEL_61;
  }

  v30 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v68 = trustCachePath;
    v69 = 2112;
    v70 = v27;
    _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "[SMA] Error loading trust cache at %@: %@", buf, 0x16u);
  }

  if (cache)
  {
    v75[0] = NSFilePathErrorKey;
    v75[1] = NSUnderlyingErrorKey;
    v76[0] = trustCachePath;
    v76[1] = v27;
    v75[2] = @"AssetBundlePath";
    assetBundlePath8 = [(SecureMobileAssetBundle *)self assetBundlePath];
    v76[2] = assetBundlePath8;
    v28 = [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:3];

    [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:11505 userInfo:v28];
    *cache = v32 = 0;
LABEL_63:

    goto LABEL_64;
  }

  v32 = 0;
LABEL_64:

  if (cf)
  {
    CFRelease(cf);
  }

LABEL_75:

  return v32;
}

- (BOOL)bundleAccessPermitted:(id *)permitted
{
  if ([(SecureMobileAssetBundle *)self manifestType]== &dword_0 + 2)
  {
    ticketPath = [(SecureMobileAssetBundle *)self ticketPath];
    v6 = [(SecureMobileAssetBundle *)self _manifestDataFromStoredTicket:ticketPath manifestType:2];

    if (!v6)
    {
      if (permitted)
      {
        ticketPath2 = [(SecureMobileAssetBundle *)self ticketPath];
        v23 = [NSString stringWithFormat:@"Stored personalized manifest ticket (%@) could not be read", ticketPath2];
        v24 = +[NSMutableDictionary dictionary];
        [v24 setObject:v23 forKeyedSubscript:NSDebugDescriptionErrorKey];
        [v24 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
        v25 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:116 userInfo:v24];

        v26 = v25;
        *permitted = v25;
      }

      v18 = 0;
      goto LABEL_31;
    }

    secureInfoPlistPath = [(SecureMobileAssetBundle *)self secureInfoPlistPath];
    if (!secureInfoPlistPath)
    {
      if (permitted)
      {
        secureInfoPlistPath2 = [(SecureMobileAssetBundle *)self secureInfoPlistPath];
        v28 = [NSString stringWithFormat:@"Secure cryptex info plist (%@) is missing on the bundle.", secureInfoPlistPath2];
        v29 = +[NSMutableDictionary dictionary];
        [v29 setObject:v28 forKeyedSubscript:NSDebugDescriptionErrorKey];
        [v29 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
        v30 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:116 userInfo:v29];

        v31 = v30;
        *permitted = v30;
      }

      v18 = 0;
      goto LABEL_30;
    }

    v52 = 0;
    v8 = [NSData dataWithContentsOfFile:secureInfoPlistPath options:1 error:&v52];
    v9 = v52;
    if (!v8)
    {
      if (!permitted)
      {
        v18 = 0;
LABEL_29:

LABEL_30:
LABEL_31:

        return v18 & 1;
      }

      v12 = [NSString stringWithFormat:@"Unable to read cryptex info path %@", secureInfoPlistPath];
      v32 = v9;
      v33 = +[NSMutableDictionary dictionary];
      [v33 setObject:v12 forKeyedSubscript:NSDebugDescriptionErrorKey];
      [v33 setObject:v32 forKeyedSubscript:NSUnderlyingErrorKey];
      v34 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:116 userInfo:v33];

      v35 = v34;
      v18 = 0;
      *permitted = v34;
LABEL_28:

      goto LABEL_29;
    }

    manifestVerifier = [(SecureMobileAssetBundle *)self manifestVerifier];
    v51 = 0;
    v11 = [manifestVerifier verifyPlist:v8 manifest:v6 manifestType:2 result:0 error:&v51];
    v12 = v51;

    if ((v11 & 1) == 0)
    {
      if (!permitted)
      {
        v18 = 0;
        goto LABEL_28;
      }

      v15 = [NSString stringWithFormat:@"Failed to validate cryptex info plist with manifest from disk."];
      v36 = v12;
      v37 = +[NSMutableDictionary dictionary];
      [v37 setObject:v15 forKeyedSubscript:NSDebugDescriptionErrorKey];
      [v37 setObject:v36 forKeyedSubscript:NSUnderlyingErrorKey];
      v38 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:116 userInfo:v37];

      v39 = v38;
      v18 = 0;
      *permitted = v38;
      goto LABEL_27;
    }

    v50 = 0;
    v13 = [NSPropertyListSerialization propertyListWithData:v8 options:0 format:0 error:&v50];
    v14 = v50;
    v15 = v14;
    if (v13)
    {
      v47 = v14;
      v16 = [v13 objectForKey:kCFBundleIdentifierKey];
      objc_opt_class();
      v49 = v16;
      isKindOfClass = objc_opt_isKindOfClass();
      v18 = isKindOfClass;
      if (permitted && (isKindOfClass & 1) == 0)
      {
        kCFBundleIdentifierKey = [NSString stringWithFormat:@"CryptexInfo plist is missing its asset-type defined in: %@", kCFBundleIdentifierKey];
        v19 = +[NSMutableDictionary dictionary];
        [v19 setObject:kCFBundleIdentifierKey forKeyedSubscript:NSDebugDescriptionErrorKey];
        [v19 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
        v20 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:116 userInfo:v19];

        v21 = v20;
        *permitted = v20;
      }

      v15 = v47;
    }

    else
    {
      if (!permitted)
      {
        v18 = 0;
        goto LABEL_26;
      }

      v40 = [NSString stringWithFormat:@"Failed to parse CryptexInfo as a plist."];
      v48 = v9;
      v41 = v15;
      v42 = +[NSMutableDictionary dictionary];
      v49 = v40;
      [v42 setObject:v40 forKeyedSubscript:NSDebugDescriptionErrorKey];
      [v42 setObject:v41 forKeyedSubscript:NSUnderlyingErrorKey];
      v43 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:116 userInfo:v42];

      v9 = v48;
      v44 = v43;
      v18 = 0;
      *permitted = v43;
    }

LABEL_26:
LABEL_27:

    goto LABEL_28;
  }

  v18 = 1;
  return v18 & 1;
}

- (BOOL)graft:(id *)graft
{
  v5 = +[NSMutableDictionary dictionary];
  v60 = -1;
  graftPath = [(SecureMobileAssetBundle *)self graftPath];
  cryptexPath = [(SecureMobileAssetBundle *)self cryptexPath];
  ticketPath = [(SecureMobileAssetBundle *)self ticketPath];
  v59 = 0;
  memset(&v58, 0, sizeof(v58));
  v101 = 0u;
  memset(v102, 0, sizeof(v102));
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v81 = 0u;
  v80 = 0u;
  v79 = 0u;
  v78 = 0u;
  v77 = 0u;
  v76 = 0u;
  v75 = 0u;
  v74 = 0u;
  v73 = 0u;
  v71 = xmmword_33BFB0;
  v72 = -1;
  v69[0] = NSFileOwnerAccountID;
  v69[1] = NSFileGroupOwnerAccountID;
  v70[0] = &off_4F7880;
  v70[1] = &off_4F7880;
  v69[2] = NSFilePosixPermissions;
  v70[2] = &off_4F7898;
  v54 = [NSDictionary dictionaryWithObjects:v70 forKeys:v69 count:3];
  if (graftPath)
  {
    if (cryptexPath)
    {
      if ([(SecureMobileAssetBundle *)self isGraftedPath:graftPath])
      {
        v9 = 0;
        v10 = 1;
        goto LABEL_16;
      }

      v52 = cryptexPath;
      v53 = v5;
      v19 = ticketPath;
      v20 = +[NSFileManager defaultManager];
      v21 = [v20 fileExistsAtPath:graftPath isDirectory:&v59];

      if (v21)
      {
        if (v59)
        {
          v9 = 0;
          goto LABEL_22;
        }

        graftCopy = graft;
        v27 = +[NSFileManager defaultManager];
        v56 = 0;
        v28 = [v27 removeItemAtPath:graftPath error:&v56];
        v9 = v56;

        if (v28)
        {
          v29 = +[NSFileManager defaultManager];
          v55 = v9;
          v30 = [v29 createDirectoryAtPath:graftPath withIntermediateDirectories:1 attributes:v54 error:&v55];
          v31 = v55;

          if (v30)
          {
            v9 = v31;
            ticketPath = v19;
            graft = graftCopy;
            goto LABEL_22;
          }

          v10 = 0;
          v9 = v31;
        }

        else
        {
          v10 = 0;
        }

        ticketPath = v19;
        graft = graftCopy;
        cryptexPath = v52;
        goto LABEL_10;
      }

      graftCopy2 = graft;
      v23 = +[NSFileManager defaultManager];
      v57 = 0;
      v24 = [v23 createDirectoryAtPath:graftPath withIntermediateDirectories:1 attributes:v54 error:&v57];
      v9 = v57;

      if ((v24 & 1) == 0)
      {
        v10 = 0;
        cryptexPath = v52;
        graft = graftCopy2;
        goto LABEL_10;
      }

      graft = graftCopy2;
LABEL_22:
      cryptexPath = v52;
      if (lstat([graftPath fileSystemRepresentation], &v58))
      {
        v25 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          fileSystemRepresentation = [graftPath fileSystemRepresentation];
          *buf = 136315138;
          v62 = fileSystemRepresentation;
          _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "[SMA] Could not lstat %s", buf, 0xCu);
        }

        v13 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];

        v67[0] = NSDebugDescriptionErrorKey;
        v67[1] = NSUnderlyingErrorKey;
        v68[0] = @"lstat failed";
        v68[1] = v13;
        v67[2] = @"graftPath";
        v68[2] = graftPath;
        v12 = [NSDictionary dictionaryWithObjects:v68 forKeys:v67 count:3];
        v14 = 10504;
        v15 = v12;
        goto LABEL_8;
      }

      graftCopy3 = graft;
      if (![(SecureMobileAssetBundle *)self isPersonalized:&v60])
      {
        if (v60 >= 0x33)
        {
          v38 = 105;
        }

        else
        {
          v38 = v60 + 10500;
        }

        v65[0] = NSDebugDescriptionErrorKey;
        if (v60 > 0x32)
        {
          v12 = @"cannot graft an unpersonalized cryptex";
        }

        else
        {
          v39 = @"Unknown";
          if (v60 <= 1)
          {
            if (v60)
            {
              v39 = @"Committed ticket data is nil";
            }

            else
            {
              v39 = @"Personalized bundle ticket data is nil";
            }
          }

          else
          {
            switch(v60)
            {
              case 2:
                v39 = @"Personalized bundle ticket data and committed ticket data do not match";
                break;
              case 3:
                v39 = @"Bundle is not personalized and committed for Exclaves";
                break;
              case 50:
                v39 = @"Personalized manifest failed to verify (nonce rolled?)";
                break;
            }
          }

          v12 = [@"cannot graft an unpersonalized cryptex" stringByAppendingFormat:@" (%@)", v39];
        }

        v66[0] = v12;
        v66[1] = v52;
        v65[1] = @"cryptexPath";
        v65[2] = @"graftPath";
        v66[2] = graftPath;
        v47 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:3];
        v48 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:v38 userInfo:v47];

        v10 = 0;
        v9 = v48;
        goto LABEL_69;
      }

      cryptexPath2 = [(SecureMobileAssetBundle *)self cryptexPath];
      v33 = open([cryptexPath2 fileSystemRepresentation], 0);

      if (v33 < 0)
      {
        v37 = v53;
        [v53 setObject:@"open()" forKeyedSubscript:@"syscall"];
        cryptexPath3 = [(SecureMobileAssetBundle *)self cryptexPath];
        [v53 setObject:cryptexPath3 forKeyedSubscript:@"path"];
      }

      else
      {
        v34 = open([ticketPath fileSystemRepresentation], 0);
        if (v34 < 0)
        {
          v37 = v53;
          [v53 setObject:@"open()" forKeyedSubscript:@"syscall"];
          [v53 setObject:ticketPath forKeyedSubscript:@"path"];
        }

        else
        {
          v49 = v34;
          rootHashPath = [(SecureMobileAssetBundle *)self rootHashPath];
          v36 = open([rootHashPath fileSystemRepresentation], 0);

          if ((v36 & 0x80000000) == 0)
          {
            DWORD2(v71) = v49;
            v72 = v36;
            *&v73 = 16;
            [graftPath fileSystemRepresentation];
            [(SecureMobileAssetBundle *)self graftdmgType];
            if (!graftdmg())
            {
              close(v36);
              close(v49);
              close(v33);
              v12 = _MADLog(@"SecureMA");
              graft = graftCopy3;
              if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v62 = v52;
                v63 = 2112;
                v64 = graftPath;
                _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[SMA] Successfully grafted %@ onto %@", buf, 0x16u);
              }

              v10 = 1;
              goto LABEL_9;
            }

            [v53 setObject:@"graftdmg()" forKeyedSubscript:@"syscall"];
            if ((v73 & 0x10) != 0)
            {
              [v53 setObject:@"SBC_STRICT_AUTH" forKeyedSubscript:@"sbc_flags"];
            }

            close(v36);
            close(v49);
            close(v33);
            v37 = v53;
            goto LABEL_57;
          }

          v37 = v53;
          [v53 setObject:@"open()" forKeyedSubscript:@"syscall"];
          rootHashPath2 = [(SecureMobileAssetBundle *)self rootHashPath];
          [v53 setObject:rootHashPath2 forKeyedSubscript:@"path"];

          close(v49);
        }

        close(v33);
      }

LABEL_57:
      v42 = *__error();
      if ([v37 count])
      {
        v43 = v37;
      }

      else
      {
        v43 = 0;
      }

      v12 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v42 userInfo:v43];

      v44 = +[NSMutableDictionary dictionary];

      [v44 setObject:@"graft failed" forKeyedSubscript:NSDebugDescriptionErrorKey];
      [v44 setObject:v12 forKeyedSubscript:NSUnderlyingErrorKey];
      [v44 setObject:ticketPath forKeyedSubscript:@"ticketPath"];
      cryptexPath4 = [(SecureMobileAssetBundle *)self cryptexPath];
      [v44 setObject:cryptexPath4 forKeyedSubscript:@"cryptexPath"];

      rootHashPath3 = [(SecureMobileAssetBundle *)self rootHashPath];
      [v44 setObject:rootHashPath3 forKeyedSubscript:@"rootHashPath"];

      [v44 setObject:graftPath forKeyedSubscript:@"graftPath"];
      v9 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:105 userInfo:v44];
      v10 = 0;
      v53 = v44;
LABEL_69:
      graft = graftCopy3;
      goto LABEL_9;
    }

    v53 = v5;
    v11 = @"cryptexPath is nil";
  }

  else
  {
    v53 = v5;
    v11 = @"graftPath is nil";
  }

  v12 = [NSString stringWithFormat:v11];
  v13 = +[NSMutableDictionary dictionary];
  [v13 setObject:v12 forKeyedSubscript:NSDebugDescriptionErrorKey];
  [v13 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
  v14 = 100;
  v15 = v13;
LABEL_8:
  v9 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:v14 userInfo:v15];

  v10 = 0;
LABEL_9:

LABEL_10:
  if (v9)
  {
    v16 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v62 = v9;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "[SMA] Failed to graft: %@", buf, 0xCu);
    }

    if (graft)
    {
      v17 = v9;
      *graft = v9;
    }
  }

  v5 = v53;
LABEL_16:

  return v10;
}

- (BOOL)ungraft:(id *)ungraft
{
  v5 = +[NSMutableDictionary dictionary];
  graftPath = [(SecureMobileAssetBundle *)self graftPath];
  if (graftPath)
  {
    if ([(SecureMobileAssetBundle *)self isGraftedPath:graftPath])
    {
      if (MABrainUtilitySupportsGracefulUngraft())
      {
        [v5 setObject:@"UNGRAFTDMG_NOFORCE" forKeyedSubscript:@"ungraft_param"];
      }

      [graftPath fileSystemRepresentation];
      v10 = ungraftdmg();
      v11 = _MADLog(@"SecureMA");
      v12 = v11;
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          v21 = 136315138;
          fileSystemRepresentation = [graftPath fileSystemRepresentation];
          _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "[SMA] Could not ungraft %s", &v21, 0xCu);
        }

        [v5 setObject:@"ungraftdmg()" forKeyedSubscript:@"syscall"];
        v13 = *__error();
        if ([v5 count])
        {
          v14 = v5;
        }

        else
        {
          v14 = 0;
        }

        v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v13 userInfo:v14];
        v25[0] = NSDebugDescriptionErrorKey;
        v25[1] = NSUnderlyingErrorKey;
        v26[0] = @"ungraft failed";
        v26[1] = v15;
        v25[2] = @"graftPath";
        v26[2] = graftPath;
        v16 = [NSDictionary dictionaryWithObjects:v26 forKeys:v25 count:3];
        v9 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:106 userInfo:v16];

        if (!v9)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412546;
        fileSystemRepresentation = graftPath;
        v23 = 2112;
        v24 = @"ungraftdmg()";
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[SMA] Successfully ungrafted %@ from the file system using %@", &v21, 0x16u);
      }
    }

    v9 = 0;
    v19 = 1;
    goto LABEL_23;
  }

  v7 = [NSString stringWithFormat:@"graftPath is nil"];
  v8 = +[NSMutableDictionary dictionary];
  [v8 setObject:v7 forKeyedSubscript:NSDebugDescriptionErrorKey];
  [v8 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
  v9 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:100 userInfo:v8];

  if (!v9)
  {
LABEL_18:
    v19 = 0;
    goto LABEL_23;
  }

LABEL_14:
  v17 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v21 = 138412290;
    fileSystemRepresentation = v9;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "[SMA] Failed to ungraft: %@", &v21, 0xCu);
  }

  if (!ungraft)
  {
    goto LABEL_18;
  }

  v18 = v9;
  v19 = 0;
  *ungraft = v9;
LABEL_23:

  return v19;
}

- (BOOL)isMounted
{
  graftPath = [(SecureMobileAssetBundle *)self graftPath];
  v3 = realpath_DARWIN_EXTSN([graftPath fileSystemRepresentation], 0);
  if (v3)
  {
    v4 = v3;
    v5 = [NSString stringWithUTF8String:v3];
    stringByDeletingLastPathComponent = [v5 stringByDeletingLastPathComponent];
    memset(&v10, 0, sizeof(v10));
    memset(&v9, 0, sizeof(v9));
    v7 = !stat([v5 fileSystemRepresentation], &v10) && !stat(objc_msgSend(stringByDeletingLastPathComponent, "fileSystemRepresentation"), &v9) && v10.st_dev != v9.st_dev;
    free(v4);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)attach:(id)attach error:(id *)error
{
  attachCopy = attach;
  outputStructCnt = 0;
  *connect = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v44 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  inputStruct = 0u;
  LODWORD(v6) = -1;
  p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
  outputStruct = 0;
  if (attachCopy)
  {
    v8 = +[NSMutableDictionary dictionary];
    if (v8)
    {
      v9 = +[NSUUID UUID];
      uUIDString = [v9 UUIDString];

      if (uUIDString)
      {
        [v8 setObject:uUIDString forKeyedSubscript:@"hdik-unique-identifier"];
        [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"OSInternal"];
        [v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"write-protected"];
        [v8 setObject:&__kCFBooleanFalse forKeyedSubscript:@"autodiskmount"];
        v32 = +[NSData dataWithBytes:length:](NSData, "dataWithBytes:length:", [attachCopy UTF8String], objc_msgSend(attachCopy, "length"));
        if (v32)
        {
          [v8 setObject:v32 forKeyedSubscript:@"image-path"];
          v6 = open([attachCopy fileSystemRepresentation], 0);
          if ((v6 & 0x80000000) != 0)
          {
            Data = 0;
            0x3FFF = [NSString stringWithFormat:@"Failed to open %@: %{errno}d", attachCopy, *__error()];
            v14 = 0;
          }

          else
          {
            v10 = [NSNumber numberWithInt:v6];
            [v8 setObject:v10 forKeyedSubscript:@"image-fd"];

            Data = CFPropertyListCreateData(kCFAllocatorDefault, v8, kCFPropertyListXMLFormat_v1_0, 0, 0);
            if (Data)
            {
              v12 = IOServiceMatching("IOHDIXController");
              MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v12);
              v14 = MatchingService;
              connect[1] = MatchingService;
              if (MatchingService)
              {
                v15 = IOServiceOpen(MatchingService, mach_task_self_, 0, connect);
                if (v15)
                {
                  v16 = @"Failed to open disk image kernel extension: 0x%04x";
                }

                else
                {
                  *&inputStruct = 0x1BEEFFEEDLL;
                  *(&inputStruct + 1) = CFDataGetBytePtr(Data);
                  *&v38 = CFDataGetLength(Data);
                  outputStructCnt = 4;
                  v15 = IOConnectCallStructMethod(connect[0], 0, &inputStruct, 0x100uLL, &outputStruct, &outputStructCnt);
                  if (!v15)
                  {
                    v27 = _MADLog(@"SecureMA");
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      *&buf[4] = attachCopy;
                      *&buf[12] = 2112;
                      *&buf[14] = uUIDString;
                      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "[SMA] Successfully attached %@ with ID: %@", buf, 0x16u);
                    }

                    v23 = uUIDString;
                    0x3FFF = 0;
                    uUIDString = v23;
                    goto LABEL_26;
                  }

                  v16 = @"Failed to attach disk image: 0x%04x";
                }

                0x3FFF = [NSString stringWithFormat:v16, v15 & 0x3FFF];
              }

              else
              {
                0x3FFF = @"Failed to connect to disk image kernel extension.";
              }
            }

            else
            {
              v14 = 0;
              0x3FFF = @"Failed to create dictionary with data.";
            }
          }
        }

        else
        {
          v14 = 0;
          Data = 0;
          v32 = 0;
          0x3FFF = @"Failed to create data.";
        }
      }

      else
      {
        v14 = 0;
        Data = 0;
        v32 = 0;
        uUIDString = 0;
        0x3FFF = @"Failed to create UUID string.";
      }
    }

    else
    {
      v14 = 0;
      Data = 0;
      v32 = 0;
      uUIDString = 0;
      0x3FFF = @"Failed to create dictionary.";
    }

    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
  }

  else
  {
    v14 = 0;
    Data = 0;
    v32 = 0;
    uUIDString = 0;
    v8 = 0;
    0x3FFF = @"Invalid input.";
  }

  v18 = [p_weak_ivar_lyt[226] stringWithFormat:@"%@", 0x3FFF];
  v19 = +[NSMutableDictionary dictionary];
  [v19 setObject:v18 forKeyedSubscript:NSDebugDescriptionErrorKey];
  [v19 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
  v20 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:112 userInfo:v19];

  v21 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    *&buf[4] = v20;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "[SMA] Failed to attach cryptex disk image: %@", buf, 0xCu);
  }

  if (error)
  {
    v22 = v20;
    *error = v20;
  }

  v23 = 0;
  if (v6 != -1)
  {
LABEL_26:
    if (close(v6) == -1)
    {
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      v56 = 0u;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      v28 = *__error();
      v53 = 67109120;
      v54 = v28;
      _os_log_send_and_compose_impl();
      v29 = _os_crash_msg();
      [SecureMobileAssetBundle attach:v29 error:?];
    }
  }

  if (connect[0])
  {
    v24 = IOServiceClose(connect[0]);
    if (v24)
    {
      *buf = 0;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      inputStruct = 0u;
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      LODWORD(v59) = 67109120;
      HIDWORD(v59) = v24;
      _os_log_send_and_compose_impl();
      v30 = _os_crash_msg();
      [SecureMobileAssetBundle attach:v30 error:?];
    }
  }

  if (v14)
  {
    v25 = IOObjectRelease(v14);
    if (v25)
    {
      *buf = 0;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      inputStruct = 0u;
      os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
      LODWORD(v59) = 67109120;
      HIDWORD(v59) = v25;
      _os_log_send_and_compose_impl();
      v31 = _os_crash_msg();
      [SecureMobileAssetBundle attach:v31 error:?];
    }
  }

  if (Data)
  {
    CFRelease(Data);
  }

  return v23;
}

- (id)devnodesForDiskImageID:(id)d error:(id *)error
{
  dCopy = d;
  v51 = +[NSMutableDictionary dictionary];
  v50 = +[NSMutableArray array];
  v48 = +[NSMutableArray array];
  v47 = +[NSMutableArray array];
  v45 = +[NSMutableArray array];
  notification = 0;
  v4 = IONotificationPortCreate(0);
  if (!v4)
  {
    v11 = [NSString stringWithFormat:@"failed to get notification port"];
    v12 = +[NSMutableDictionary dictionary];
    [v12 setObject:v11 forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v12 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
    v46 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:-4 userInfo:v12];

    v10 = 0;
    goto LABEL_45;
  }

  v5 = v4;
  v6 = IOServiceMatching("IOMedia");
  notify = v5;
  v7 = IOServiceAddMatchingNotification(v5, "IOServiceMatched", v6, 0, 0, &notification);
  if (v7)
  {
    v56 = NSDebugDescriptionErrorKey;
    0x3FFF = [NSString stringWithFormat:@"IOServiceAddMatchingNotification() failed: 0x%04x", v7 & 0x3FFF];
    v57 = 0x3FFF;
    v9 = [NSDictionary dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v46 = [NSError errorWithDomain:@"IOKitErrorDomain" code:v7 userInfo:v9];

    goto LABEL_4;
  }

  v13 = IOIteratorNext(notification);
  if (v13)
  {
    v46 = 0;
    v10 = 0;
    while (1)
    {
      v52 = v13;
      v14 = IORegistryEntrySearchCFProperty(v13, "IOService", @"hdik-unique-identifier", 0, 3u);
      if (v14)
      {
        if ([dCopy isEqual:v14])
        {
          break;
        }
      }

      v23 = 0;
LABEL_40:

      if (v14)
      {
        CFRelease(v14);
      }

      if (IOObjectRelease(v52))
      {
        [SecureMobileAssetBundle devnodesForDiskImageID:parent error:?];
      }

      v13 = IOIteratorNext(notification);
      if (!v13)
      {
        goto LABEL_44;
      }
    }

    CFProperty = IORegistryEntryCreateCFProperty(v13, @"BSD Name", kCFAllocatorDefault, 0);
    v16 = NSStringFromCFType(CFProperty);
    v17 = IOObjectConformsTo(v13, "AppleAPFSVolume");
    v18 = v50;
    if ((v17 || (v19 = IOObjectConformsTo(v13, "AppleAPFSMedia"), v18 = v48, v19) || (v20 = IOObjectConformsTo(v13, "AppleAPFSContainer"), v18 = v47, v20) || (v21 = IOObjectConformsTo(v13, "AppleAPFSContainerScheme"), v18 = v45, v21)) && (v22 = v18) != 0)
    {
      v23 = v22;
      if (!v16)
      {
        goto LABEL_38;
      }

      v24 = [@"/dev/" stringByAppendingPathComponent:v16];
      [v23 addObject:v24];
    }

    else
    {
      if (v10)
      {
        v23 = 0;
        goto LABEL_38;
      }

      object = 0;
      IOObjectRetain(v13);
      v25 = 0;
      object = v13;
      while (1)
      {
        v26 = IORegistryEntryCreateCFProperty(v13, @"Whole", kCFAllocatorDefault, 0);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v26 BOOLValue])
          {
            break;
          }
        }

        parent[0] = 0;
        ParentEntry = IORegistryEntryGetParentEntry(v13, "IOService", parent);
        IOObjectRelease(v13);
        v13 = parent[0];
        object = parent[0];
        if (ParentEntry)
        {
          v58 = NSDebugDescriptionErrorKey;
          0x3FFF2 = [NSString stringWithFormat:@"IORegistryEntryGetParentEntry() failed: 0x%04x", ParentEntry & 0x3FFF];
          v59 = 0x3FFF2;
          v29 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          v30 = [NSError errorWithDomain:@"IOKitErrorDomain" code:ParentEntry userInfo:v29];

          v13 = object;
          v25 = v30;
        }

        if (!v13)
        {
          v31 = 0;
LABEL_27:
          v32 = v25;
          v33 = v25;
          goto LABEL_34;
        }
      }

      v34 = IORegistryEntryCreateCFProperty(v13, @"BSD Name", kCFAllocatorDefault, 0);
      v35 = NSStringFromCFType(v34);
      if (v35)
      {
        v31 = [@"/dev/" stringByAppendingPathComponent:v35];
      }

      else
      {
        v31 = 0;
      }

      if (v34)
      {
        CFRelease(v34);
      }

      v33 = v46;
      if (!v35)
      {
        goto LABEL_27;
      }

LABEL_34:
      v10 = v31;
      if (object)
      {
        v36 = IOObjectRelease(object);
        if (v36)
        {
          v55 = 0;
          v66 = 0u;
          v64 = 0u;
          v65 = 0u;
          *parent = 0u;
          v63 = 0u;
          os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          v60 = 67109120;
          v61 = v36;
          _os_log_send_and_compose_impl();
          v42 = _os_crash_msg();
          [SecureMobileAssetBundle attach:v42 error:?];
        }
      }

      v23 = 0;
      v24 = v46;
      v46 = v33;
    }

LABEL_38:
    if (CFProperty)
    {
      CFRelease(CFProperty);
    }

    goto LABEL_40;
  }

  v46 = 0;
LABEL_4:
  v10 = 0;
LABEL_44:
  IONotificationPortDestroy(notify);
LABEL_45:
  if ([v50 count])
  {
    [v51 setObject:v50 forKeyedSubscript:@"volumes"];
  }

  if ([v48 count])
  {
    [v51 setObject:v48 forKeyedSubscript:@"media"];
  }

  if ([v47 count])
  {
    [v51 setObject:v47 forKeyedSubscript:@"containers"];
  }

  if ([v45 count])
  {
    [v51 setObject:v45 forKeyedSubscript:@"schemes"];
  }

  [v51 setObject:v10 forKeyedSubscript:@"wholeDisk"];
  if (error)
  {
    v37 = v46;
    *error = v46;
  }

  v38 = [v51 count];
  v39 = v51;
  if (!v38)
  {
    v39 = 0;
  }

  v40 = v39;

  return v40;
}

- (BOOL)mount:(id *)mount
{
  v4 = +[NSMutableDictionary dictionary];
  v73 = -1;
  graftPath = [(SecureMobileAssetBundle *)self graftPath];
  cryptexPath = [(SecureMobileAssetBundle *)self cryptexPath];
  ticketPath = [(SecureMobileAssetBundle *)self ticketPath];
  rootHashPath = [(SecureMobileAssetBundle *)self rootHashPath];
  v72 = 0;
  memset(&v71, 0, sizeof(v71));
  v98 = 0u;
  memset(v99, 0, 60);
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80[0] = NSFileOwnerAccountID;
  v80[1] = NSFileGroupOwnerAccountID;
  v81[0] = &off_4F7880;
  v81[1] = &off_4F7880;
  v80[2] = NSFilePosixPermissions;
  v81[2] = &off_4F7898;
  v8 = [NSDictionary dictionaryWithObjects:v81 forKeys:v80 count:3];
  v61 = v8;
  if (!graftPath)
  {
    v57 = ticketPath;
    v58 = v4;
    v59 = cryptexPath;
    v11 = [NSString stringWithFormat:@"mountPath is nil"];
    v14 = +[NSMutableDictionary dictionary];
    [v14 setObject:v11 forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v14 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
    v15 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:100 userInfo:v14];

    v16 = 0;
    v17 = 0;
    v55 = 0;
    v56 = 0;
    v18 = 0;
    v19 = 0;
    v10 = 0;
    cryptexPath = 0;
    goto LABEL_38;
  }

  if (!cryptexPath)
  {
    v57 = ticketPath;
    v58 = v4;
    v59 = 0;
    v11 = [NSString stringWithFormat:@"cryptexPath is nil"];
    v20 = +[NSMutableDictionary dictionary];
    [v20 setObject:v11 forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v20 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
    v15 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:100 userInfo:v20];

LABEL_36:
    v16 = 0;
    v17 = 0;
    v55 = 0;
    v56 = 0;
    v18 = 0;
    v19 = 0;
LABEL_37:
    v10 = 0;
    goto LABEL_38;
  }

  v9 = v8;
  if (![(SecureMobileAssetBundle *)self isMounted])
  {
    v57 = ticketPath;
    if ([(SecureMobileAssetBundle *)self isPersonalized:&v73])
    {
      v21 = 0;
    }

    else
    {
      if (v73 >= 0x33)
      {
        v22 = 107;
      }

      else
      {
        v22 = v73 + 10700;
      }

      v78[0] = NSDebugDescriptionErrorKey;
      if (v73 > 0x32)
      {
        v24 = @"cannot mount an unpersonalized cryptex";
      }

      else
      {
        v23 = @"Unknown";
        if (v73 <= 1)
        {
          if (v73)
          {
            v23 = @"Committed ticket data is nil";
          }

          else
          {
            v23 = @"Personalized bundle ticket data is nil";
          }
        }

        else
        {
          switch(v73)
          {
            case 2:
              v23 = @"Personalized bundle ticket data and committed ticket data do not match";
              break;
            case 3:
              v23 = @"Bundle is not personalized and committed for Exclaves";
              break;
            case 50:
              v23 = @"Personalized manifest failed to verify (nonce rolled?)";
              break;
          }
        }

        v24 = [@"cannot mount an unpersonalized cryptex" stringByAppendingFormat:@" (%@)", v23];
      }

      v79[0] = v24;
      v79[1] = cryptexPath;
      v78[1] = @"cryptexPath";
      v78[2] = @"mountPath";
      v79[2] = graftPath;
      v25 = [NSDictionary dictionaryWithObjects:v79 forKeys:v78 count:3];
      v21 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:v22 userInfo:v25];
    }

    v26 = +[NSFileManager defaultManager];
    v27 = [v26 fileExistsAtPath:graftPath isDirectory:&v72];

    v58 = v4;
    v59 = cryptexPath;
    if (v27)
    {
      if (v72)
      {
        v11 = v21;
LABEL_32:
        if (lstat([graftPath fileSystemRepresentation], &v71))
        {
          v30 = _MADLog(@"SecureMA");
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            fileSystemRepresentation = [graftPath fileSystemRepresentation];
            *buf = 136315138;
            v75 = fileSystemRepresentation;
            _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "[SMA] Could not lstat %s", buf, 0xCu);
          }

          cryptexPath = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
          [v4 setObject:@"lstat() failed" forKeyedSubscript:NSDebugDescriptionErrorKey];
          [v4 setObject:cryptexPath forKeyedSubscript:NSUnderlyingErrorKey];
          [v4 setObject:graftPath forKeyedSubscript:@"mountPath"];
          v15 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:10704 userInfo:v4];
          goto LABEL_36;
        }

        v67 = 0;
        v19 = [(SecureMobileAssetBundle *)self attach:cryptexPath error:&v67];
        v47 = v67;
        v48 = cryptexPath;
        cryptexPath = v47;
        if (!v19)
        {
          [v4 setObject:@"Failed to attach disk image" forKeyedSubscript:NSDebugDescriptionErrorKey];
          [v4 setObject:cryptexPath forKeyedSubscript:NSUnderlyingErrorKey];
          [v4 setObject:v48 forKeyedSubscript:@"cryptexPath"];
          v15 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:10705 userInfo:v4];
          v16 = 0;
          v17 = 0;
          v55 = 0;
          v56 = 0;
          v18 = 0;
          goto LABEL_37;
        }

        v66 = v47;
        v56 = v19;
        v17 = [(SecureMobileAssetBundle *)self devnodesForDiskImageID:v19 error:&v66];
        v49 = v66;

        v18 = [v17 objectForKeyedSubscript:@"wholeDisk"];
        v50 = [v17 objectForKeyedSubscript:@"volumes"];
        v51 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v75 = v17;
          _os_log_impl(&dword_0, v51, OS_LOG_TYPE_DEBUG, "[SMA] \ndevnodes=%@", buf, 0xCu);
        }

        v55 = v50;
        if (v17)
        {
          if ([v50 count])
          {
            if ([v50 count] < 2)
            {
              v16 = [v50 objectAtIndexedSubscript:0];
              *&v82 = [v16 fileSystemRepresentation];
              DWORD1(v99[3]) = getuid();
              DWORD2(v99[3]) = getgid();
              LOWORD(v83) = 8;
              DWORD2(v82) = 1048577;
              v65 = v49;
              v10 = [NSData dataWithContentsOfFile:v57 options:0 error:&v65];
              cryptexPath = v65;

              if (v10)
              {
                v64 = cryptexPath;
                v19 = [NSData dataWithContentsOfFile:rootHashPath options:0 error:&v64];
                v12 = v64;

                LOWORD(v83) = 8;
                HIDWORD(v99[2]) = 1735681910;
                LODWORD(v99[3]) = [(SecureMobileAssetBundle *)self secureMountAuthType];
                *(&v99[1] + 12) = [v10 bytes];
                *(&v99[2] + 4) = [v10 length];
                *(v99 + 12) = [v19 bytes];
                *(&v99[1] + 4) = [v19 length];
                if (!mount("apfs", [graftPath fileSystemRepresentation], 1048577, &v82))
                {
                  v54 = _MADLog(@"SecureMA");
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    v75 = v16;
                    v76 = 2112;
                    v77 = graftPath;
                    _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, "[SMA] Successfully mounted cryptex volume %@ at %@", buf, 0x16u);
                  }

                  v13 = 1;
                  goto LABEL_52;
                }

                cryptexPath = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];

                [v58 setObject:@"mount() failed" forKeyedSubscript:NSDebugDescriptionErrorKey];
                [v58 setObject:cryptexPath forKeyedSubscript:NSUnderlyingErrorKey];
                [v58 setObject:v59 forKeyedSubscript:@"cryptexPath"];
                [v58 setObject:graftPath forKeyedSubscript:@"mountPath"];
                [v58 setObject:v16 forKeyedSubscript:@"volumeDevNode"];
                v15 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:107 userInfo:v58];
              }

              else
              {
                [v58 setObject:@"Failed to load im4m for cryptex" forKeyedSubscript:NSDebugDescriptionErrorKey];
                [v58 setObject:cryptexPath forKeyedSubscript:NSUnderlyingErrorKey];
                [v58 setObject:v59 forKeyedSubscript:@"cryptexPath"];
                [v58 setObject:v57 forKeyedSubscript:@"ticketPath"];
                v15 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:10709 userInfo:v58];
                v19 = 0;
              }

              goto LABEL_38;
            }

            v52 = v58;
            [v58 setObject:@"Found more than one APFS volume in attached disk image" forKeyedSubscript:NSDebugDescriptionErrorKey];
            [v58 setObject:v49 forKeyedSubscript:NSUnderlyingErrorKey];
            [v58 setObject:v59 forKeyedSubscript:@"cryptexPath"];
            v53 = 10708;
          }

          else
          {
            v52 = v58;
            [v58 setObject:@"Failed to find APFS volume for attached disk image" forKeyedSubscript:NSDebugDescriptionErrorKey];
            [v58 setObject:v49 forKeyedSubscript:NSUnderlyingErrorKey];
            [v58 setObject:v59 forKeyedSubscript:@"cryptexPath"];
            v53 = 10707;
          }
        }

        else
        {
          v52 = v58;
          [v58 setObject:@"Failed to find devnodes for attached disk image" forKeyedSubscript:NSDebugDescriptionErrorKey];
          [v58 setObject:v49 forKeyedSubscript:NSUnderlyingErrorKey];
          [v58 setObject:v59 forKeyedSubscript:@"cryptexPath"];
          v53 = 10706;
        }

        v15 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:v53 userInfo:v52];
        v16 = 0;
        v19 = 0;
        v10 = 0;
        cryptexPath = v49;
LABEL_38:

        v12 = cryptexPath;
        v11 = v15;
        goto LABEL_39;
      }

      v42 = +[NSFileManager defaultManager];
      v69 = v21;
      v43 = [v42 removeItemAtPath:graftPath error:&v69];
      v11 = v69;

      if (v43)
      {
        v44 = +[NSFileManager defaultManager];
        v68 = v11;
        v45 = [v44 createDirectoryAtPath:graftPath withIntermediateDirectories:1 attributes:v9 error:&v68];
        v46 = v68;

        if (v45)
        {
          v11 = v46;
          cryptexPath = v59;
          goto LABEL_32;
        }

        v16 = 0;
        v17 = 0;
        v55 = 0;
        v56 = 0;
        v18 = 0;
        v19 = 0;
        v10 = 0;
        v12 = 0;
        v11 = v46;
LABEL_39:
        v32 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v75 = v11;
          _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "[SMA] Failed to attach and mount cryptex disk image: %@", buf, 0xCu);
        }

        v63 = 0;
        v33 = eject(v16, &v63);
        v34 = v63;
        if (v33)
        {
          if (!v18)
          {
LABEL_49:
            if (mount)
            {
              v40 = v11;
              *mount = v11;
            }

            v13 = 0;
LABEL_52:
            v4 = v58;
            cryptexPath = v59;
            ticketPath = v57;
            goto LABEL_53;
          }

          v35 = _MADLog(@"SecureMA");
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v75 = v18;
            v36 = "[SMA] Ejected %@ after mount failure";
            v37 = v35;
            v38 = OS_LOG_TYPE_DEFAULT;
            v39 = 12;
LABEL_47:
            _os_log_impl(&dword_0, v37, v38, v36, buf, v39);
          }
        }

        else
        {
          v35 = _MADLog(@"SecureMA");
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v75 = v18;
            v76 = 2112;
            v77 = v34;
            v36 = "[SMA] WARNING: Failed to eject %@ after mount failure: %@";
            v37 = v35;
            v38 = OS_LOG_TYPE_ERROR;
            v39 = 22;
            goto LABEL_47;
          }
        }

        goto LABEL_49;
      }
    }

    else
    {
      v28 = +[NSFileManager defaultManager];
      v70 = v21;
      v29 = [v28 createDirectoryAtPath:graftPath withIntermediateDirectories:1 attributes:v9 error:&v70];
      v11 = v70;

      if (v29)
      {
        goto LABEL_32;
      }
    }

    v16 = 0;
    v17 = 0;
    v55 = 0;
    v56 = 0;
    v18 = 0;
    v19 = 0;
    v10 = 0;
    v12 = 0;
    goto LABEL_39;
  }

  v10 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[SMA] Crytex is already dmg mounted", buf, 2u);
  }

  v11 = 0;
  v12 = 0;
  v13 = 1;
LABEL_53:

  return v13;
}

- (BOOL)unmount:(id *)unmount
{
  graftPath = [(SecureMobileAssetBundle *)self graftPath];
  bzero(&v31, 0x878uLL);
  if (statfs([graftPath fileSystemRepresentation], &v31))
  {
    v5 = *__error();
    v6 = v5;
    v29[0] = NSDebugDescriptionErrorKey;
    v7 = [NSString stringWithUTF8String:strerror(v5)];
    v30[0] = v7;
    v30[1] = @"statfs";
    v29[1] = @"syscall";
    v29[2] = @"mountPath";
    v30[2] = graftPath;
    v8 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:3];
    v9 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v6 userInfo:v8];

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  if (unmount([graftPath fileSystemRepresentation], 0))
  {
    v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
    v27[0] = NSDebugDescriptionErrorKey;
    v27[1] = NSUnderlyingErrorKey;
    v28[0] = @"unmount failed";
    v28[1] = v7;
    v27[2] = @"mountPath";
    v28[2] = graftPath;
    v10 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];
    v9 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:108 userInfo:v10];

    goto LABEL_5;
  }

  v11 = [NSString stringWithUTF8String:v31.f_mntfromname];
  v15 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v11;
    v25 = 2112;
    v26 = graftPath;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "[SMA] Successfully unmounted cryptex volume %@ from %@", buf, 0x16u);
  }

  v22 = 0;
  v16 = eject(v11, &v22);
  v9 = v22;
  v17 = _MADLog(@"SecureMA");
  v7 = v17;
  if (v16)
  {
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    *buf = 138412290;
    v24 = graftPath;
    v18 = "[SMA] Successfully ejected cryptex disk image previously mounted at %@";
    v19 = v7;
    v20 = OS_LOG_TYPE_DEFAULT;
    v21 = 12;
  }

  else
  {
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_6;
    }

    *buf = 138412546;
    v24 = graftPath;
    v25 = 2112;
    v26 = v9;
    v18 = "[SMA] Failed to eject cryptex disk image previously mounted at %@: %@";
    v19 = v7;
    v20 = OS_LOG_TYPE_ERROR;
    v21 = 22;
  }

  _os_log_impl(&dword_0, v19, v20, v18, buf, v21);
LABEL_6:

  if (v9)
  {
    v12 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v9;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, "[SMA] Failed to unmount and eject cryptex disk image: %@", buf, 0xCu);
    }

    if (unmount)
    {
      v13 = v9;
      *unmount = v9;
    }
  }

  return v9 == 0;
}

- (BOOL)graftOrMount:(int64_t *)mount graftingError:(id *)error
{
  v7 = +[NSMutableDictionary dictionary];
  cryptexPath = [(SecureMobileAssetBundle *)self cryptexPath];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (MABrainUtilityForceSecureAssetMount())
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_21;
  }

  v12 = open([cryptexPath fileSystemRepresentation], 0);
  v13 = v12;
  v32 = v12;
  if ((v12 & 0x80000000) == 0)
  {
    v14 = ffsctl(v12, 0x20004A85uLL, 0, 0);
    v15 = v14 == 0;
    if (v14)
    {
      if (*__error() == 45)
      {
        v16 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf[0]) = 138412290;
          *(buf + 4) = cryptexPath;
          v17 = "[SMA] Cryptex at %@ is not graftable";
LABEL_12:
          v18 = v16;
          v19 = OS_LOG_TYPE_DEFAULT;
          v20 = 12;
LABEL_15:
          _os_log_impl(&dword_0, v18, v19, v17, buf, v20);
        }
      }

      else
      {
        v16 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v21 = __error();
          v22 = strerror(*v21);
          LODWORD(buf[0]) = 138412546;
          *(buf + 4) = cryptexPath;
          WORD6(buf[0]) = 2080;
          *(buf + 14) = v22;
          v17 = "[SMA] Could not determine whether cryptex at %@ is graftable: %s";
          v18 = v16;
          v19 = OS_LOG_TYPE_ERROR;
          v20 = 22;
          goto LABEL_15;
        }
      }
    }

    else
    {
      v16 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf[0]) = 138412290;
        *(buf + 4) = cryptexPath;
        v17 = "[SMA] Cryptex at %@ is graftable";
        goto LABEL_12;
      }
    }

    v10 = 0;
    v11 = 0;
    goto LABEL_17;
  }

  v11 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
  [v7 setObject:@"Failed to open cryptex file" forKeyedSubscript:NSDebugDescriptionErrorKey];
  [v7 setObject:v11 forKeyedSubscript:NSUnderlyingErrorKey];
  [v7 setObject:cryptexPath forKeyedSubscript:@"cryptexPath"];
  v10 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:-4 userInfo:v7];
  if (v13 == -1)
  {
    goto LABEL_23;
  }

  v15 = 0;
LABEL_17:
  if (close(v13) == -1)
  {
    v33 = 0;
    memset(buf, 0, sizeof(buf));
    os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
    v28 = *__error();
    v34 = 67109120;
    v35 = v28;
    _os_log_send_and_compose_impl();
    v29 = _os_crash_msg();
    [SecureMobileAssetBundle attach:v29 error:?];
  }

  if ((v13 & 0x80000000) == 0)
  {
    if (v15)
    {
      v31 = v10;
      v23 = [(SecureMobileAssetBundle *)selfCopy graft:&v31];
      v24 = v31;

      v25 = 1;
LABEL_22:
      v10 = v24;
      goto LABEL_24;
    }

LABEL_21:
    v30 = v10;
    v23 = [(SecureMobileAssetBundle *)selfCopy mount:&v30];
    v24 = v30;

    v25 = 2;
    goto LABEL_22;
  }

LABEL_23:
  v23 = 0;
  v25 = 0;
LABEL_24:
  objc_sync_exit(selfCopy);

  if (mount)
  {
    *mount = v25;
  }

  if (error && v10)
  {
    v26 = v10;
    *error = v10;
  }

  return v23;
}

- (BOOL)ungraftOrUnmount:(int64_t *)unmount ungraftingError:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(SecureMobileAssetBundle *)selfCopy isGrafted])
  {
    v14 = 0;
    v7 = &v14;
    v8 = [(SecureMobileAssetBundle *)selfCopy ungraft:&v14];
    v9 = 1;
LABEL_5:
    v10 = *v7;
    goto LABEL_7;
  }

  if ([(SecureMobileAssetBundle *)selfCopy isMounted])
  {
    v13 = 0;
    v7 = &v13;
    v8 = [(SecureMobileAssetBundle *)selfCopy unmount:&v13];
    v9 = 2;
    goto LABEL_5;
  }

  v10 = 0;
  v9 = 0;
  v8 = 1;
LABEL_7:
  objc_sync_exit(selfCopy);

  if (unmount)
  {
    *unmount = v9;
  }

  if (error && v10)
  {
    v11 = v10;
    *error = v10;
  }

  return v8;
}

- (BOOL)beginAccessWithOptions:(id)options accessMechanismPtr:(int64_t *)ptr errorPtr:(id *)errorPtr
{
  optionsCopy = options;
  v9 = objc_opt_class();
  objc_sync_enter(v9);
  LOBYTE(errorPtr) = [(SecureMobileAssetBundle *)self _beginAccessWithOptions_nowait:optionsCopy accessMechanismPtr:ptr errorPtr:errorPtr];
  objc_sync_exit(v9);

  return errorPtr;
}

+ (id)getBootTaskPlistLock
{
  if (getBootTaskPlistLock_onceToken != -1)
  {
    +[SecureMobileAssetBundle getBootTaskPlistLock];
  }

  v3 = getBootTaskPlistLock_lock;

  return v3;
}

void __47__SecureMobileAssetBundle_getBootTaskPlistLock__block_invoke(id a1)
{
  getBootTaskPlistLock_lock = objc_alloc_init(NSNumber);

  _objc_release_x1();
}

- (void)recordAssetGraftStateForEarlyBootTask:(BOOL)task options:(id)options
{
  taskCopy = task;
  optionsCopy = options;
  v5 = +[SecureMobileAssetBundle getBootTaskPlistLock];
  objc_sync_enter(v5);
  v6 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
  if (v6)
  {
    v7 = +[NSMutableDictionary dictionary];
    v69[0] = 0;
    v8 = [SecureMobileAssetBundle readBootTaskPlist:v69];
    v66 = v69[0];
    if (v8)
    {
      v9 = [v8 objectForKeyedSubscript:@"GraftOperations"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v9;
      }

      else
      {
        v7 = +[NSMutableDictionary dictionary];

        [v8 setObject:v7 forKeyedSubscript:@"GraftOperations"];
      }
    }

    else
    {
      v11 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "[SMA] [SecureMAHelper]: Creating new boot task plist for tracking assets", buf, 2u);
      }

      v8 = objc_alloc_init(NSMutableDictionary);
      [v8 setObject:v7 forKeyedSubscript:@"GraftOperations"];
    }

    if (taskCopy)
    {
      v72[0] = @"PerformGraft";
      v12 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", ([optionsCopy flags] & 2) == 0);
      v72[1] = @"PathsToDeleteOnGraftFailure";
      v73[0] = v12;
      pathsToPurgeOnGraftFailureInEarlyBootTask = [optionsCopy pathsToPurgeOnGraftFailureInEarlyBootTask];
      allObjects = [pathsToPurgeOnGraftFailureInEarlyBootTask allObjects];
      v73[1] = allObjects;
      assetBundlePath2 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:2];

      assetBundlePath = [(SecureMobileAssetBundle *)self assetBundlePath];
      [v7 setObject:assetBundlePath2 forKeyedSubscript:assetBundlePath];
    }

    else
    {
      assetBundlePath2 = [(SecureMobileAssetBundle *)self assetBundlePath];
      [v7 removeObjectForKey:assetBundlePath2];
    }

    v68 = 0;
    v17 = [NSPropertyListSerialization dataWithPropertyList:v8 format:200 options:0 error:&v68];
    v63 = v68;
    if (v17)
    {
      v71[0] = v6;
      v71[1] = @"EarlyBootTaskInfo.plist";
      v18 = [NSArray arrayWithObjects:v71 count:2];
      v62 = [NSString pathWithComponents:v18];

      v70[0] = v6;
      v70[1] = @"EarlyBootTaskInfo-Temp.plist";
      v19 = [NSArray arrayWithObjects:v70 count:2];
      v20 = [NSString pathWithComponents:v19];

      v21 = v20;
      v22 = open([v20 fileSystemRepresentation], 1538, 420);
      if (v22 == -1)
      {
        v47 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          if (taskCopy)
          {
            v48 = @"graft";
          }

          else
          {
            v48 = @"ungraft";
          }

          assetType = [(SecureMobileAssetBundle *)self assetType];
          v50 = __error();
          v51 = strerror(*v50);
          *buf = 138413058;
          *&buf[4] = v48;
          *&buf[12] = 2112;
          *&buf[14] = assetType;
          *&buf[22] = 2112;
          *&buf[24] = v20;
          *&buf[32] = 2080;
          *&buf[34] = v51;
          _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "[SMA] [SecureMAHelper]: Failed to record %@ entry for asset of type %@. Opening %@ for writing failed. %s", buf, 0x2Au);
        }
      }

      else
      {
        *__error() = 3;
        v23 = v17;
        v24 = write(v22, [v17 bytes], objc_msgSend(v17, "length"));
        if (v24 == -1 || v24 != [v17 length])
        {
          v31 = _MADLog(@"SecureMA");
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            loga = v31;
            v40 = @"ungraft";
            if (taskCopy)
            {
              v40 = @"graft";
            }

            v65 = v40;
            assetType2 = [(SecureMobileAssetBundle *)self assetType];
            v42 = [v17 length];
            v43 = __error();
            v44 = strerror(*v43);
            *buf = 138413314;
            *&buf[4] = v65;
            *&buf[12] = 2112;
            *&buf[14] = assetType2;
            *&buf[22] = 2048;
            *&buf[24] = v42;
            *&buf[32] = 2048;
            *&buf[34] = v24;
            *&buf[42] = 2080;
            *&buf[44] = v44;
            v31 = loga;
            _os_log_impl(&dword_0, loga, OS_LOG_TYPE_ERROR, "[SMA] [SecureMAHelper]: Failed to record %@ entry for asset of type %@. Writing (expected:%zd, actual:%zd) failed. %s", buf, 0x34u);
          }
        }

        else
        {
          fsync(v22);
          if (fcntl(v22, 85) == -1)
          {
            v31 = _MADLog(@"SecureMA");
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              logb = v31;
              if (taskCopy)
              {
                v52 = @"graft";
              }

              else
              {
                v52 = @"ungraft";
              }

              assetType3 = [(SecureMobileAssetBundle *)self assetType];
              v54 = __error();
              v55 = strerror(*v54);
              *buf = 138412802;
              *&buf[4] = v52;
              *&buf[12] = 2112;
              *&buf[14] = assetType3;
              *&buf[22] = 2080;
              *&buf[24] = v55;
              v31 = logb;
              _os_log_impl(&dword_0, logb, OS_LOG_TYPE_ERROR, "[SMA] [SecureMAHelper]: Failed to record %@ entry for asset of type %@. Taking a write barrier failed. %s", buf, 0x20u);
            }
          }

          else
          {
            v25 = v20;
            fileSystemRepresentation = [v20 fileSystemRepresentation];
            v27 = v62;
            fileSystemRepresentation2 = [v62 fileSystemRepresentation];
            rename(fileSystemRepresentation, fileSystemRepresentation2, v29);
            if (v30)
            {
              v31 = _MADLog(@"SecureMA");
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                log = v31;
                if (taskCopy)
                {
                  v32 = @"graft";
                }

                else
                {
                  v32 = @"ungraft";
                }

                assetType4 = [(SecureMobileAssetBundle *)self assetType];
                v34 = __error();
                v35 = strerror(*v34);
                *buf = 138413314;
                *&buf[4] = v32;
                *&buf[12] = 2112;
                *&buf[14] = assetType4;
                *&buf[22] = 2112;
                *&buf[24] = v20;
                *&buf[32] = 2112;
                v31 = log;
                *&buf[34] = v62;
                *&buf[42] = 2080;
                *&buf[44] = v35;
                _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "[SMA] [SecureMAHelper]: Failed to record %@ entry for asset of type %@. Renaming file from (%@) -> (%@) failed. %s", buf, 0x34u);
              }
            }

            else
            {
              v31 = _MADLog(@"SecureMA");
              if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
              {
                assetType5 = [(SecureMobileAssetBundle *)self assetType];
                v57 = assetType5;
                v58 = @"N";
                if (taskCopy)
                {
                  v58 = @"Y";
                }

                *buf = 138412546;
                *&buf[4] = assetType5;
                *&buf[12] = 2112;
                *&buf[14] = v58;
                _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "[SMA] [SecureMAHelper]: Successfully recorded graft entry | assetType:%@ | grafted:%@", buf, 0x16u);
              }
            }
          }
        }

        if (close(v22) == -1)
        {
          v69[1] = 0;
          v77 = 0u;
          memset(buf, 0, sizeof(buf));
          os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
          v45 = *__error();
          v74 = 67109120;
          v75 = v45;
          _os_log_send_and_compose_impl();
          v46 = _os_crash_msg();
          [SecureMobileAssetBundle attach:v46 error:?];
        }
      }

      v36 = v62;
    }

    else
    {
      v36 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        assetType6 = [(SecureMobileAssetBundle *)self assetType];
        v38 = assetType6;
        v39 = @"ungraft";
        *buf = 138412802;
        if (taskCopy)
        {
          v39 = @"graft";
        }

        *&buf[4] = v39;
        *&buf[12] = 2112;
        *&buf[14] = assetType6;
        *&buf[22] = 2112;
        *&buf[24] = v63;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "[SMA] [SecureMAHelper]: Failed to record %@ entry for asset of type %@ into a property list. %@", buf, 0x20u);
      }
    }
  }

  else
  {
    v10 = _MADLog(@"SecureMA");
    v66 = v10;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "[SMA] [SecureMAHelper]: Unable to get MA repository path.", buf, 2u);
    }
  }

  objc_sync_exit(v5);
}

+ (BOOL)clearBootTaskPlist:(id *)plist
{
  v4 = +[SecureMobileAssetBundle getBootTaskPlistLock];
  objc_sync_enter(v4);
  v5 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
  v6 = v5;
  if (v5)
  {
    v26[0] = v5;
    v26[1] = @"EarlyBootTaskInfo.plist";
    v7 = [NSArray arrayWithObjects:v26 count:2];
    v8 = [NSString pathWithComponents:v7];

    v9 = [NSURL fileURLWithPath:v8];
    v10 = +[NSFileManager defaultManager];
    v21 = 0;
    [v10 removeItemAtURL:v9 error:&v21];
    v11 = v21;

    v12 = v11 == 0;
    if (v11)
    {
      if (plist)
      {
        v13 = v11;
        *plist = v11;
      }

      v14 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        checkedDescription = [v11 checkedDescription];
        *buf = 138412546;
        v23 = v9;
        v24 = 2112;
        v25 = checkedDescription;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "[SMA] [SecureMAHelper]: Failed to delete graft list file at %@ : %@", buf, 0x16u);
      }
    }
  }

  else
  {
    if (plist)
    {
      v16 = [NSString stringWithFormat:@"Unable to get MA repo path"];
      v17 = +[NSMutableDictionary dictionary];
      [v17 setObject:v16 forKeyedSubscript:NSDebugDescriptionErrorKey];
      [v17 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
      v18 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:-4 userInfo:v17];

      v19 = v18;
      *plist = v18;
    }

    v12 = 0;
  }

  objc_sync_exit(v4);
  return v12;
}

+ (id)readBootTaskPlist:(id *)plist
{
  v4 = +[SecureMobileAssetBundle getBootTaskPlistLock];
  objc_sync_enter(v4);
  v5 = getRepositoryPath(@"/private/var/MobileAsset/AssetsV2");
  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v37 = 0;
    if (![v6 fileExistsAtPath:v5 isDirectory:&v37] || (v37 & 1) == 0)
    {
      if (!plist)
      {
        v16 = 0;
LABEL_32:

        goto LABEL_33;
      }

      v11 = [NSString stringWithFormat:@"MA repo path does not exist."];
      v13 = +[NSMutableDictionary dictionary];
      [v13 setObject:v11 forKeyedSubscript:NSDebugDescriptionErrorKey];
      [v13 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
      v14 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:-4 userInfo:v13];

      v15 = v14;
      v16 = 0;
      *plist = v14;
LABEL_31:

      goto LABEL_32;
    }

    v42[0] = v5;
    v42[1] = @"EarlyBootTaskInfo.plist";
    v7 = [NSArray arrayWithObjects:v42 count:2];
    v8 = [NSString pathWithComponents:v7];

    v9 = [NSURL fileURLWithPath:v8];
    if (![v6 fileExistsAtPath:v8])
    {
      v12 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v9;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[SMA] [SecureMAHelper]: Boot task plist does not exist at %@", buf, 0xCu);
      }

      v11 = 0;
      goto LABEL_17;
    }

    v36 = 0;
    v33 = [NSData dataWithContentsOfURL:v9 options:1 error:&v36];
    v10 = v36;
    if (v33)
    {
      v35 = 0;
      v11 = [NSPropertyListSerialization propertyListWithData:v33 options:2 format:0 error:&v35];
      v12 = v35;

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {

LABEL_17:
        v11 = v11;
        v16 = v11;
LABEL_30:

        goto LABEL_31;
      }

      v25 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v39 = v8;
        v40 = 2112;
        v41 = v12;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "[SMA] [SecureMAHelper]: Failed to load existing boot plist at path %@. Error: %@", buf, 0x16u);
      }

      if (plist)
      {
        v32 = [NSString stringWithFormat:@"Unable to parse boot task plist data into dictionary."];
        v31 = v12;
        v26 = +[NSMutableDictionary dictionary];
        [v26 setObject:v32 forKeyedSubscript:NSDebugDescriptionErrorKey];
        [v26 setObject:v31 forKeyedSubscript:NSUnderlyingErrorKey];
        v27 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:10504 userInfo:v26];

        v28 = v27;
        *plist = v27;
      }

      v34 = v12;
      v29 = [v6 removeItemAtURL:v9 error:&v34];
      v10 = v34;

      if (v29)
      {
LABEL_29:

        v16 = 0;
        goto LABEL_30;
      }

      v21 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v39 = v9;
        v40 = 2112;
        v41 = v10;
        _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "[SMA] [SecureMAHelper]: Failed to delete boot plist file at path %@. Error: %@", buf, 0x16u);
      }
    }

    else
    {
      if (!plist)
      {
        v11 = 0;
        goto LABEL_29;
      }

      v21 = [NSString stringWithFormat:@"Unable to load grafted asset list"];
      v10 = v10;
      v22 = +[NSMutableDictionary dictionary];
      [v22 setObject:v21 forKeyedSubscript:NSDebugDescriptionErrorKey];
      [v22 setObject:v10 forKeyedSubscript:NSUnderlyingErrorKey];
      v23 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:10504 userInfo:v22];

      v24 = v23;
      v11 = 0;
      *plist = v23;
    }

    goto LABEL_29;
  }

  if (plist)
  {
    v17 = [NSString stringWithFormat:@"Unable to get MA repo path"];
    v18 = +[NSMutableDictionary dictionary];
    [v18 setObject:v17 forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v18 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
    v19 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:-4 userInfo:v18];

    v20 = v19;
    *plist = v19;
  }

  v16 = 0;
LABEL_33:

  objc_sync_exit(v4);

  return v16;
}

+ (BOOL)isErrorDueToDeviceBeingLocked:(id)locked
{
  lockedCopy = locked;
  domain = [lockedCopy domain];
  v5 = [domain isEqualToString:@"SecureMobileAssetErrorDomain"];

  if (v5)
  {
    v6 = [lockedCopy code] == &loc_2CF4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_beginAccessWithOptions_nowait:(id)options_nowait accessMechanismPtr:(int64_t *)ptr errorPtr:(id *)errorPtr
{
  options_nowaitCopy = options_nowait;
  if ([(SecureMobileAssetBundle *)self manifestType]!= &dword_0 + 2)
  {
    v13 = 0;
    goto LABEL_6;
  }

  [options_nowaitCopy setFlags:{objc_msgSend(options_nowaitCopy, "flags") | 2}];
  v98 = 0;
  v9 = [(SecureMobileAssetBundle *)self bundleAccessPermitted:&v98];
  v10 = v98;
  v11 = v10;
  if (v9)
  {
    v97 = v10;
    v12 = [(SecureMobileAssetBundle *)self loadTrustCache:&v97];
    v13 = v97;

    v11 = v13;
    if (v12)
    {
LABEL_6:
      v95 = v13;
      v96 = 0;
      v14 = [(SecureMobileAssetBundle *)self graftOrMount:&v96 graftingError:&v95];
      v11 = v95;

      if (!v14)
      {
        goto LABEL_78;
      }

      if (ptr)
      {
        *ptr = v96;
      }

      [(SecureMobileAssetBundle *)self recordAssetGraftStateForEarlyBootTask:1 options:options_nowaitCopy];
      if (([options_nowaitCopy flags] & 1) == 0)
      {
LABEL_22:
        if (([options_nowaitCopy flags] & 2) == 0 || v96 != 1 || !__isPlatformVersionAtLeast(2, 26, 1, 0) || (objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_78;
        }

        graftPath = [(SecureMobileAssetBundle *)self graftPath];
        assetType = [NSURL fileURLWithPath:graftPath isDirectory:1];

        v86 = 0;
        v26 = [IXAppInstallCoordinator registerContentsForOSModuleAtURL:assetType options:0 error:&v86];
        assetSpecifier = v86;
        v27 = _MADLog(@"SecureMA");
        v28 = v27;
        if (v26)
        {
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v106 = assetType;
            v29 = "[SMA] Successfully registered %@ with InstallCoordination.";
            v30 = v28;
            v31 = OS_LOG_TYPE_DEFAULT;
            v32 = 12;
LABEL_44:
            _os_log_impl(&dword_0, v30, v31, v29, buf, v32);
          }
        }

        else if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          *v106 = assetType;
          *&v106[8] = 2112;
          *&v106[10] = assetSpecifier;
          v29 = "[SMA] Failed to register %@ with InstallCoordination. %@";
          v30 = v28;
          v31 = OS_LOG_TYPE_ERROR;
          v32 = 22;
          goto LABEL_44;
        }

LABEL_77:
        goto LABEL_78;
      }

      assetType = [(SecureMobileAssetBundle *)self assetType];
      assetSpecifier = [(SecureMobileAssetBundle *)self assetSpecifier];
      v94 = 0;
      if (![(SecureMobileAssetBundle *)self isMappableToExclaves:&v94])
      {
        v99[0] = NSDebugDescriptionErrorKey;
        v99[1] = @"assetType";
        v21 = @"nil";
        if (assetType)
        {
          v22 = assetType;
        }

        else
        {
          v22 = @"nil";
        }

        v100[0] = @"Asset type+specifier is unsupported in Exclaves";
        v100[1] = v22;
        v99[2] = @"specifier";
        if (assetSpecifier)
        {
          v21 = assetSpecifier;
        }

        v100[2] = v21;
        ticketPath = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:3];
        v24 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:109 userInfo:ticketPath];
LABEL_21:

        v11 = v24;
        goto LABEL_22;
      }

      v93 = -1;
      if (![(SecureMobileAssetBundle *)self isPersonalized:&v93])
      {
        ticketPath = +[NSMutableDictionary dictionary];
        if (v93 > 0x32)
        {
          v40 = @"Cannot map an unpersonalized asset to Exclaves";
        }

        else
        {
          v33 = @"Unknown";
          if (v93 <= 1)
          {
            if (v93)
            {
              v33 = @"Committed ticket data is nil";
            }

            else
            {
              v33 = @"Personalized bundle ticket data is nil";
            }
          }

          else
          {
            switch(v93)
            {
              case 2:
                v33 = @"Personalized bundle ticket data and committed ticket data do not match";
                break;
              case 3:
                v33 = @"Bundle is not personalized and committed for Exclaves";
                break;
              case 50:
                v33 = @"Personalized manifest failed to verify (nonce rolled?)";
                break;
            }
          }

          v40 = [@"Cannot map an unpersonalized asset to Exclaves" stringByAppendingFormat:@" (%@)", v33];
        }

        [ticketPath setObject:v40 forKeyedSubscript:NSDebugDescriptionErrorKey];

        v48 = [NSNumber numberWithUnsignedInt:v94];
        [ticketPath setObject:v48 forKeyedSubscript:@"fstag"];

        if (v93 >= 0x33)
        {
          v49 = 110;
        }

        else
        {
          v49 = v93 + 11000;
        }

        v24 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:v49 userInfo:ticketPath];
        goto LABEL_76;
      }

      if (+[SecureMobileAssetBundle _requiresLiveExclaveNonce])
      {
        v92 = 0;
        v17 = [(SecureMobileAssetBundle *)self _activateManifestInExclaves:v94 error:&v92];
        v18 = v92;
        v19 = v18;
        if (!v17)
        {
          v41 = _MADLog(@"SecureMA");
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "[SMA] Cannot map to Exclaves: activate manifest failed", buf, 2u);
          }

          v42 = [NSString stringWithFormat:@"Failed to activate committed manifest in Exclaves"];
          ticketPath = v19;
          v43 = +[NSMutableDictionary dictionary];
          [v43 setObject:v42 forKeyedSubscript:NSDebugDescriptionErrorKey];
          [v43 setObject:ticketPath forKeyedSubscript:NSUnderlyingErrorKey];
          v24 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:11013 userInfo:v43];

          v11 = v42;
          goto LABEL_76;
        }

        v20 = 0;
        goto LABEL_68;
      }

      ticketPath = [(SecureMobileAssetBundle *)self ticketPath];
      secureInfoPlistPath = [(SecureMobileAssetBundle *)self secureInfoPlistPath];
      v83 = secureInfoPlistPath;
      if (ticketPath)
      {
        v35 = secureInfoPlistPath;
        if (secureInfoPlistPath)
        {
          v36 = [NSData dataWithContentsOfFile:ticketPath];
          v37 = [NSData dataWithContentsOfFile:v35];
          v79 = v37;
          v81 = v36;
          if (v36)
          {
            if (v37)
            {
              v91 = 0;
              v38 = [(SecureMobileAssetBundle *)self _storeManifestToExclaves:v36 infoPlist:v37 stage:0 error:&v91];
              v20 = v91;
              if (v38)
              {
                v78 = 0;
                v39 = 1;
                goto LABEL_67;
              }

              v50 = +[NSMutableDictionary dictionary];
              [v50 setObject:v20 forKeyedSubscript:NSUnderlyingErrorKey];
              [v50 setObject:@"Cannot map to Exclaves: _storeManifestToExclaves failed" forKeyedSubscript:NSDebugDescriptionErrorKey];
              v55 = [NSNumber numberWithUnsignedInt:v94];
              [v50 setObject:v55 forKeyedSubscript:@"fstag"];

              v54 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:11012 userInfo:v50];
LABEL_66:

              v39 = 0;
              v78 = 1;
              v11 = v54;
LABEL_67:

              if (!v39)
              {

                if ((v78 & 1) == 0)
                {
                  goto LABEL_87;
                }

                goto LABEL_78;
              }

LABEL_68:
              v24 = v11;
              v89 = v20;
              v90 = 0;
              MappedExclavePath = getMappedExclavePath(v94, &v90, &v89);
              ticketPath = v90;
              v11 = v89;

              if (!MappedExclavePath)
              {
                v61 = +[NSMutableDictionary dictionary];
                [v61 setObject:v11 forKeyedSubscript:NSUnderlyingErrorKey];
                [v61 setObject:@"Could not determine Exclave mapped path registration state" forKeyedSubscript:NSDebugDescriptionErrorKey];
                v62 = [NSNumber numberWithUnsignedInt:v94];
                [v61 setObject:v62 forKeyedSubscript:@"fstag"];

                v63 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:11004 userInfo:v61];

LABEL_75:
                v24 = v63;
                goto LABEL_76;
              }

              if (ticketPath)
              {
                accessPath = [(SecureMobileAssetBundle *)self accessPath];
                v58 = [accessPath isEqualToString:ticketPath];

                v59 = _MADLog(@"SecureMA");
                v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
                if (v58)
                {
                  if (v60)
                  {
                    *buf = 67109890;
                    *v106 = v94;
                    *&v106[4] = 2112;
                    *&v106[6] = assetType;
                    *&v106[14] = 2112;
                    *&v106[16] = assetSpecifier;
                    v107 = 2112;
                    v108 = ticketPath;
                    _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "[SMA] Matching registration found for Exclave mapped path [fstag=%d] %@:%@: %@", buf, 0x26u);
                  }

                  goto LABEL_76;
                }

                if (v60)
                {
                  *buf = 67109890;
                  *v106 = v94;
                  *&v106[4] = 2112;
                  *&v106[6] = assetType;
                  *&v106[14] = 2112;
                  *&v106[16] = assetSpecifier;
                  v107 = 2112;
                  v108 = ticketPath;
                  _os_log_impl(&dword_0, v59, OS_LOG_TYPE_DEFAULT, "[SMA] Conflicting registration found for Exclave mapped path [fstag=%d] %@:%@: %@", buf, 0x26u);
                }

                v88 = v11;
                v67 = unregisterMappedExclavePath([ticketPath fileSystemRepresentation], &v88);
                v68 = v88;

                if (v67)
                {
                  v103[0] = NSUnderlyingErrorKey;
                  v103[1] = NSDebugDescriptionErrorKey;
                  v104[0] = v68;
                  v104[1] = @"Unable to unregister existing asset path for fstag";
                  v103[2] = @"path";
                  v103[3] = @"assetType";
                  v69 = @"nil";
                  if (assetType)
                  {
                    v69 = assetType;
                  }

                  v104[2] = ticketPath;
                  v104[3] = v69;
                  v103[4] = @"fstag";
                  v84 = [NSNumber numberWithUnsignedInt:v94];
                  v104[4] = v84;
                  v70 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:5];
                  v63 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:11005 userInfo:v70];

                  v11 = v68;
                  goto LABEL_75;
                }

                v11 = v68;
              }

              accessPath2 = [(SecureMobileAssetBundle *)self accessPath];
              fileSystemRepresentation = [accessPath2 fileSystemRepresentation];

              v87 = v94;
              if (fsctl(fileSystemRepresentation, 0x80044119uLL, &v87, 0))
              {
                v85 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];
                v101[0] = NSUnderlyingErrorKey;
                v101[1] = NSDebugDescriptionErrorKey;
                v102[0] = v85;
                v102[1] = @"Unable to register asset path with fstag";
                v101[2] = @"path";
                assetBundlePath = [(SecureMobileAssetBundle *)self assetBundlePath];
                v80 = assetBundlePath;
                v74 = @"nil";
                if (assetType)
                {
                  v74 = assetType;
                }

                v102[2] = assetBundlePath;
                v102[3] = v74;
                v101[3] = @"assetType";
                v101[4] = @"fstag";
                v75 = [NSNumber numberWithUnsignedInt:v94];
                v102[4] = v75;
                v76 = [NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:5];
                v82 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:110 userInfo:v76];

                v77 = v85;
                v24 = v82;
              }

              else
              {
                v77 = _MADLog(@"SecureMA");
                if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 67109890;
                  *v106 = v94;
                  *&v106[4] = 2112;
                  *&v106[6] = assetType;
                  *&v106[14] = 2112;
                  *&v106[16] = assetSpecifier;
                  v107 = 2080;
                  v108 = fileSystemRepresentation;
                  _os_log_impl(&dword_0, v77, OS_LOG_TYPE_DEFAULT, "[SMA] Successfully registered Exclave mapped path [fstag=%d] %@:%@: %s", buf, 0x26u);
                }
              }

              goto LABEL_21;
            }

            v50 = +[NSMutableDictionary dictionary];
            [v50 setObject:@"Cannot map to Exclaves: info plist data is nil" forKeyedSubscript:NSDebugDescriptionErrorKey];
            v53 = [NSNumber numberWithUnsignedInt:v94];
            [v50 setObject:v53 forKeyedSubscript:@"fstag"];

            v52 = 11010;
          }

          else
          {
            v50 = +[NSMutableDictionary dictionary];
            [v50 setObject:@"Cannot map to Exclaves: ticket data is nil" forKeyedSubscript:NSDebugDescriptionErrorKey];
            v51 = [NSNumber numberWithUnsignedInt:v94];
            [v50 setObject:v51 forKeyedSubscript:@"fstag"];

            v52 = 11009;
          }

          v54 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:v52 userInfo:v50];
          v20 = 0;
          goto LABEL_66;
        }

        v44 = +[NSMutableDictionary dictionary];
        [v44 setObject:@"Cannot map to Exclaves: info plist path is nil" forKeyedSubscript:NSDebugDescriptionErrorKey];
        v47 = [NSNumber numberWithUnsignedInt:v94];
        [v44 setObject:v47 forKeyedSubscript:@"fstag"];

        v46 = 11007;
      }

      else
      {
        v44 = +[NSMutableDictionary dictionary];
        [v44 setObject:@"Cannot map to Exclaves: ticket path is nil" forKeyedSubscript:NSDebugDescriptionErrorKey];
        v45 = [NSNumber numberWithUnsignedInt:v94];
        [v44 setObject:v45 forKeyedSubscript:@"fstag"];

        v46 = 11006;
      }

      v24 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:v46 userInfo:v44];

      v11 = v83;
LABEL_76:

      v11 = v24;
      goto LABEL_77;
    }
  }

LABEL_78:
  v64 = _MADLog(@"SecureMA");
  assetType = v64;
  if (v11)
  {
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *v106 = self;
      *&v106[8] = 2112;
      *&v106[10] = v11;
      _os_log_impl(&dword_0, assetType, OS_LOG_TYPE_ERROR, "[SMA] Begin access failed for secure asset (%@): %@", buf, 0x16u);
    }

    if (errorPtr)
    {
      v65 = v11;
      LOBYTE(assetType) = 0;
      *errorPtr = v11;
    }

    else
    {
      LOBYTE(assetType) = 0;
    }
  }

  else
  {
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v106 = self;
      _os_log_impl(&dword_0, assetType, OS_LOG_TYPE_DEFAULT, "[SMA] Begin access successful for secure asset: %@", buf, 0xCu);
    }

    v11 = 0;
    LOBYTE(assetType) = 1;
  }

LABEL_87:

  return assetType & 1;
}

- (BOOL)endAccessWithOptions:(id)options accessMechanismPtr:(int64_t *)ptr errorPtr:(id *)errorPtr
{
  optionsCopy = options;
  v9 = objc_opt_class();
  objc_sync_enter(v9);
  LOBYTE(errorPtr) = [(SecureMobileAssetBundle *)self endAccessWithOptions_nowait:optionsCopy accessMechanismPtr:ptr errorPtr:errorPtr];
  objc_sync_exit(v9);

  return errorPtr;
}

- (BOOL)endAccessWithOptions_nowait:(id)options_nowait accessMechanismPtr:(int64_t *)ptr errorPtr:(id *)errorPtr
{
  options_nowaitCopy = options_nowait;
  assetType = [(SecureMobileAssetBundle *)self assetType];
  v51 = 0;
  if ([(SecureMobileAssetBundle *)self isMappableToExclaves:&v51])
  {
    v49 = 0;
    v50 = 0;
    MappedExclavePath = getMappedExclavePath(v51, &v50, &v49);
    v11 = v50;
    v12 = v49;
    if (!MappedExclavePath)
    {
      v13 = +[NSMutableDictionary dictionary];
      [v13 setObject:v12 forKeyedSubscript:NSUnderlyingErrorKey];
      [v13 setObject:@"Could not determine Exclave mapped path registration state" forKeyedSubscript:NSDebugDescriptionErrorKey];
      v14 = [NSNumber numberWithUnsignedInt:v51];
      [v13 setObject:v14 forKeyedSubscript:@"fstag"];

      v15 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:111 userInfo:v13];
      v16 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v15;
        _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "[SMA] WARNING: %@", buf, 0xCu);
      }
    }

    accessPath = [(SecureMobileAssetBundle *)self accessPath];
    v18 = [v11 isEqualToString:accessPath];

    if (v18)
    {
      v19 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        *&buf[4] = self;
        *&buf[12] = 1024;
        *&buf[14] = v51;
        *&buf[18] = 2112;
        *&buf[20] = v11;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_DEFAULT, "[SMA] <%@> has a registered Exclave mapped path [fstag=%d]: %@", buf, 0x1Cu);
      }

      v48 = v12;
      v20 = unregisterMappedExclavePath([v11 fileSystemRepresentation], &v48);
      v21 = v48;

      if (v20)
      {
        v22 = +[NSMutableDictionary dictionary];
        [v22 setObject:v21 forKeyedSubscript:NSUnderlyingErrorKey];
        [v22 setObject:@"Unable to unregister fstag mapping" forKeyedSubscript:NSDebugDescriptionErrorKey];
        [v22 setObject:v11 forKeyedSubscript:@"mappedPath"];
        if (assetType)
        {
          v23 = assetType;
        }

        else
        {
          v23 = @"nil";
        }

        [v22 setObject:v23 forKeyedSubscript:@"assetType"];
        v24 = [NSNumber numberWithUnsignedInt:v51];
        [v22 setObject:v24 forKeyedSubscript:@"fstag"];

        v25 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:111 userInfo:v22];
      }

      else
      {
        v22 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109378;
          *&buf[4] = v51;
          *&buf[8] = 2112;
          *&buf[10] = v11;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "[SMA] Successfully unregistered Exclave mapped path [fstag=%d]: %@", buf, 0x12u);
        }

        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
      v21 = v12;
    }
  }

  else
  {
    v25 = 0;
  }

  if (([options_nowaitCopy flags] & 1) == 0)
  {
    if (!__isPlatformVersionAtLeast(2, 26, 1, 0))
    {
      v44 = v25;
      [(SecureMobileAssetBundle *)self ungraftOrUnmount:ptr ungraftingError:&v44];
      v36 = v44;
      v28 = v25;
LABEL_43:

      v25 = v36;
      goto LABEL_44;
    }

    if (![(SecureMobileAssetBundle *)self isGrafted]|| (objc_opt_respondsToSelector() & 1) == 0)
    {
      v28 = 0;
LABEL_34:
      *buf = 0;
      v46 = v25;
      v37 = [(SecureMobileAssetBundle *)self ungraftOrUnmount:buf ungraftingError:&v46];
      v36 = v46;

      if (ptr)
      {
        *ptr = *buf;
      }

      if (v28)
      {
        v38 = v37;
      }

      else
      {
        v38 = 0;
      }

      if (v38 == 1)
      {
        v39 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *v45 = 0;
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "[SMA] Invalidating OSModule with InstallCoordination.", v45, 2u);
        }

        [v28 invalidate];
      }

      goto LABEL_43;
    }

    graftPath = [(SecureMobileAssetBundle *)self graftPath];
    v27 = [NSURL fileURLWithPath:graftPath isDirectory:1];

    v47 = 0;
    v28 = [IXAppInstallCoordinator unregisterContentsForOSModuleAtURL:v27 options:0 error:&v47];
    v29 = v47;
    v30 = _MADLog(@"SecureMA");
    v31 = v30;
    if (v28)
    {
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v27;
        v32 = "[SMA] Successfully unregistered %@ with InstallCoordination.";
        v33 = v31;
        v34 = OS_LOG_TYPE_DEFAULT;
        v35 = 12;
LABEL_32:
        _os_log_impl(&dword_0, v33, v34, v32, buf, v35);
      }
    }

    else if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = v29;
      v32 = "[SMA] Failed to unregister %@ with InstallCoordination. %@";
      v33 = v31;
      v34 = OS_LOG_TYPE_ERROR;
      v35 = 22;
      goto LABEL_32;
    }

    goto LABEL_34;
  }

LABEL_44:
  v40 = _MADLog(@"SecureMA");
  v41 = v40;
  if (v25)
  {
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v25;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "[SMA] End access failed for secure asset (%@): %@", buf, 0x16u);
    }

    if (errorPtr)
    {
      v42 = v25;
      *errorPtr = v25;
    }
  }

  else
  {
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = self;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "[SMA] End access successful for secure asset: %@", buf, 0xCu);
    }
  }

  [(SecureMobileAssetBundle *)self recordAssetGraftStateForEarlyBootTask:0 options:options_nowaitCopy];

  return v25 == 0;
}

- (BOOL)mapToExclaves:(id *)exclaves
{
  v5 = objc_opt_new();
  [v5 setFlags:1];
  LOBYTE(exclaves) = [(SecureMobileAssetBundle *)self beginAccessWithOptions:v5 accessMechanismPtr:0 errorPtr:exclaves];

  return exclaves;
}

- (BOOL)unmapFromExclaves:(id *)exclaves
{
  v5 = objc_opt_new();
  LOBYTE(exclaves) = [(SecureMobileAssetBundle *)self endAccessWithOptions:v5 accessMechanismPtr:0 errorPtr:exclaves];

  return exclaves;
}

- (BOOL)isSecureMobileAsset
{
  assetBundlePath = [(SecureMobileAssetBundle *)self assetBundlePath];
  v3 = [SecureMobileAssetBundle assetIsSecureMobileAsset:assetBundlePath];

  return v3;
}

- (BOOL)isMappableToExclaves:(unsigned int *)exclaves
{
  if (MABrainUtilityDeviceSupportsExclaves())
  {
    v15 = 0;
    assetType = [(SecureMobileAssetBundle *)self assetType];
    assetSpecifier = [(SecureMobileAssetBundle *)self assetSpecifier];
    v7 = [SecureMobileAssetBundle fsTag:&v15 forAssetType:assetType specifier:assetSpecifier];

    v8 = _MADLog(@"SecureMA");
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        assetType2 = [(SecureMobileAssetBundle *)self assetType];
        assetSpecifier2 = [(SecureMobileAssetBundle *)self assetSpecifier];
        *buf = 138412802;
        v17 = assetType2;
        v18 = 2112;
        v19 = assetSpecifier2;
        v20 = 1024;
        v21 = v15;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[SMA] Allow listed for Exclaves: %@:%@ fstag=%u", buf, 0x1Cu);
      }

      if (exclaves)
      {
        *exclaves = v15;
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        assetType3 = [(SecureMobileAssetBundle *)self assetType];
        assetSpecifier3 = [(SecureMobileAssetBundle *)self assetSpecifier];
        *buf = 138412546;
        v17 = assetType3;
        v18 = 2112;
        v19 = assetSpecifier3;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEBUG, "[SMA] Not allow listed for Exclaves: %@:%@", buf, 0x16u);
      }
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (id)_personalizedBundleTicketData
{
  secureAssetDataPath = [(SecureMobileAssetBundle *)self secureAssetDataPath];
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:secureAssetDataPath];

  if (!v4)
  {
    v8 = 0;
    goto LABEL_16;
  }

  v5 = [NSURL fileURLWithPath:secureAssetDataPath isDirectory:1];
  v6 = AMAuthInstallCreate();
  if (v6)
  {
    if (&_AMAuthInstallUpdaterCryptex1CopyTicket)
    {
      v7 = v6;
      v8 = AMAuthInstallUpdaterCryptex1CopyTicket();
      CFRelease(v7);
      if (!v8)
      {
        v9 = _MADLog(@"SecureMA");
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v14 = 0;
          _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "[SMA] AMAuthInstallUpdaterCryptex1CopyTicket() failed: %@", buf, 0xCu);
        }
      }

      goto LABEL_15;
    }

    v10 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "[SMA] AMAuthInstallUpdaterCryptex1CopyTicket() is unavailable";
      goto LABEL_13;
    }
  }

  else
  {
    v10 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v11 = "[SMA] AMAuthInstallCreate() failed";
LABEL_13:
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, v11, buf, 2u);
    }
  }

  v8 = 0;
LABEL_15:

LABEL_16:

  return v8;
}

- (id)_manifestDataFromStoredTicket:(id)ticket manifestType:(unint64_t)type
{
  ticketCopy = ticket;
  v6 = [NSData dataWithContentsOfFile:ticketCopy];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_13;
  }

  if (type == 2)
  {
    v8 = v6;
LABEL_4:
    v9 = v8;
    goto LABEL_14;
  }

  v24 = 0;
  memset(v23, 0, sizeof(v23));
  Img4DecodeInit([v6 bytes], objc_msgSend(v6, "length"), v23);
  if (!v10)
  {
    v18 = 0;
    v17 = 0;
    Manifest = Img4DecodeGetManifest(v23, &v18, &v17);
    if (!Manifest)
    {
      v8 = [NSData dataWithBytes:v18 length:v17];
      goto LABEL_4;
    }

    v15 = Manifest;
    v12 = _MADLog(@"SecureMA");
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 138412546;
    v20 = ticketCopy;
    v21 = 1024;
    v22 = v15;
    v13 = "[SMA] Img4DecodeGetManifest() failed for %@: %d";
    goto LABEL_11;
  }

  v11 = v10;
  v12 = _MADLog(@"SecureMA");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v20 = ticketCopy;
    v21 = 1024;
    v22 = v11;
    v13 = "[SMA] Img4DecodeInit() failed for %@: %d";
LABEL_11:
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
  }

LABEL_12:

LABEL_13:
  v9 = 0;
LABEL_14:

  return v9;
}

- (BOOL)isPersonalized:(int64_t *)personalized
{
  _personalizedBundleTicketData = [(SecureMobileAssetBundle *)self _personalizedBundleTicketData];
  if (_personalizedBundleTicketData)
  {
    manifestType = [(SecureMobileAssetBundle *)self manifestType];
    ticketPath = [(SecureMobileAssetBundle *)self ticketPath];
    v8 = [(SecureMobileAssetBundle *)self _manifestDataFromStoredTicket:ticketPath manifestType:manifestType];

    if (v8)
    {
      if ([_personalizedBundleTicketData isEqualToData:v8])
      {
        if (manifestType != 2 || (-[SecureMobileAssetBundle manifestVerifier](self, "manifestVerifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 verifyManifest:v8 manifestType:2], v9, (v10 & 1) != 0))
        {
          v14 = 0;
          if (![(SecureMobileAssetBundle *)self isMappableToExclaves:&v14]|| ![SecureMobileAssetBundle _shouldUseConclave:[(SecureMobileAssetBundle *)self darwinOnly]]|| [(SecureMobileAssetBundle *)self isPersonalizedForExclaves:v14 staged:0])
          {
            v11 = 1;
LABEL_20:

            goto LABEL_21;
          }

          v11 = 0;
          if (!personalized)
          {
            goto LABEL_20;
          }

          v12 = 3;
LABEL_16:
          *personalized = v12;
          goto LABEL_20;
        }

        if (personalized)
        {
          v11 = 0;
          v12 = 50;
          goto LABEL_16;
        }
      }

      else if (personalized)
      {
        v11 = 0;
        v12 = 2;
        goto LABEL_16;
      }
    }

    else if (personalized)
    {
      v11 = 0;
      v12 = 1;
      goto LABEL_16;
    }

    v11 = 0;
    goto LABEL_20;
  }

  v11 = 0;
  if (personalized)
  {
    *personalized = 0;
  }

LABEL_21:

  return v11;
}

- (BOOL)isPersonalizedManifestStaged:(int64_t *)staged
{
  _personalizedBundleTicketData = [(SecureMobileAssetBundle *)self _personalizedBundleTicketData];
  if (_personalizedBundleTicketData)
  {
    manifestType = [(SecureMobileAssetBundle *)self manifestType];
    stagedPersonalizedManifestPath = [(SecureMobileAssetBundle *)self stagedPersonalizedManifestPath];
    v8 = [(SecureMobileAssetBundle *)self _manifestDataFromStoredTicket:stagedPersonalizedManifestPath manifestType:manifestType];

    if (v8)
    {
      if ([_personalizedBundleTicketData isEqualToData:v8])
      {
        if (manifestType != 2 || (-[SecureMobileAssetBundle manifestVerifier](self, "manifestVerifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 verifyManifest:v8 manifestType:2], v9, (v10 & 1) != 0))
        {
          v14 = 0;
          if (![(SecureMobileAssetBundle *)self isMappableToExclaves:&v14]|| ![SecureMobileAssetBundle _shouldUseConclave:[(SecureMobileAssetBundle *)self darwinOnly]])
          {
            v11 = 1;
            goto LABEL_22;
          }

          v11 = 1;
          if ([(SecureMobileAssetBundle *)self isPersonalizedForExclaves:v14 staged:1])
          {
            goto LABEL_22;
          }

          v11 = 0;
          if (!staged)
          {
            goto LABEL_22;
          }

          v12 = 3;
LABEL_17:
          *staged = v12;
LABEL_22:

          goto LABEL_23;
        }

        if (staged)
        {
          v11 = 0;
          v12 = 50;
          goto LABEL_17;
        }
      }

      else if (staged)
      {
        v11 = 0;
        v12 = 2;
        goto LABEL_17;
      }
    }

    else if (staged)
    {
      v11 = 0;
      v12 = 1;
      goto LABEL_17;
    }

    v11 = 0;
    goto LABEL_22;
  }

  v11 = 0;
  if (staged)
  {
    *staged = 0;
  }

LABEL_23:

  return v11;
}

- (BOOL)isPersonalizedForExclaves:(unsigned int)exclaves staged:(BOOL)staged
{
  stagedCopy = staged;
  v5 = *&exclaves;
  if (__isPlatformVersionAtLeast(2, 18, 2, 0))
  {
    v35 = 0;
    v7 = [SecureMobileAssetBundle getExclaveManager:&v35];
    v8 = v35;
    if (!v7)
    {
      v10 = _MADLog(@"SecureMA");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        checkedDescription = [v8 checkedDescription];
        *buf = 138412290;
        v37 = checkedDescription;
        _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "[SMA] Failed to get shared instance of SecureMobileAssetExclave: %@", buf, 0xCu);
      }

      v9 = 0;
      goto LABEL_35;
    }

    if (stagedCopy)
    {
      [(SecureMobileAssetBundle *)self stagedPersonalizedManifestPath];
    }

    else
    {
      [(SecureMobileAssetBundle *)self ticketPath];
    }
    v10 = ;
    secureInfoPlistPath = [(SecureMobileAssetBundle *)self secureInfoPlistPath];
    integrityCatalogPath = [(SecureMobileAssetBundle *)self integrityCatalogPath];
    v14 = integrityCatalogPath;
    v9 = 0;
    if (!v10 || !secureInfoPlistPath || !integrityCatalogPath)
    {
LABEL_34:

LABEL_35:
      return v9;
    }

    v30 = [NSData dataWithContentsOfFile:v10];
    v29 = [NSData dataWithContentsOfFile:secureInfoPlistPath];
    v28 = [NSData dataWithContentsOfFile:v14];
    v9 = 0;
    if (!v30 || !v29 || !v28)
    {
LABEL_33:

      goto LABEL_34;
    }

    buf[0] = 0;
    if (+[SecureMobileAssetBundle _requiresLiveExclaveNonce])
    {
      if ([v7 conformsToProtocol:&OBJC_PROTOCOL___MAExclaveManifestStorageServiceProtocol2])
      {
        v15 = v7;
        assetSpecifier = [(SecureMobileAssetBundle *)self assetSpecifier];
        if (stagedCopy)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        v34 = v8;
        v18 = [v15 checkManifestForFSTag:v5 specifier:assetSpecifier state:v17 manifest:v30 infoPlist:v29 catalog:v28 isValid:buf error:&v34];
        v19 = v34;
      }

      else
      {
        v33 = v8;
        v26 = v7;
        v18 = [v26 checkManifestForFSTag:v5 staged:stagedCopy manifest:v30 infoPlist:v29 catalog:v28 isValid:buf error:&v33];
        v19 = v33;
      }

      if ((v18 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v20 = objc_opt_class();
      objc_sync_enter(v20);
      v21 = [v7 conformsToProtocol:&OBJC_PROTOCOL___MAExclaveManifestStorageServiceProtocol2];
      v22 = v7;
      v23 = v22;
      if (v21)
      {
        assetSpecifier2 = [(SecureMobileAssetBundle *)self assetSpecifier];
        v32 = v8;
        v25 = [v23 stageManifestForFSTag:v5 specifier:assetSpecifier2 manifest:v30 infoPlist:v29 catalog:v28 error:&v32];
        v19 = v32;
      }

      else
      {
        v31 = v8;
        v25 = [v22 storeManifest:v30 infoPlist:v29 catalog:v28 error:&v31];
        v19 = v31;
        assetSpecifier2 = v8;
      }

      buf[0] = v25;
      objc_sync_exit(v20);

      if (!v25)
      {
        goto LABEL_31;
      }
    }

    if (buf[0])
    {
      v9 = 1;
LABEL_32:
      v8 = v19;
      goto LABEL_33;
    }

LABEL_31:
    v9 = 0;
    goto LABEL_32;
  }

  return 1;
}

- (NSString)secureAssetDataPath
{
  assetBundlePath = [(SecureMobileAssetBundle *)self assetBundlePath];
  v3 = [assetBundlePath stringByAppendingPathComponent:@"SecureAssetData"];

  return v3;
}

- (NSString)graftPath
{
  assetBundlePath = [(SecureMobileAssetBundle *)self assetBundlePath];
  v3 = [assetBundlePath stringByAppendingPathComponent:@".AssetData"];

  return v3;
}

- (NSString)cryptexPath
{
  secureAssetDataPath = [(SecureMobileAssetBundle *)self secureAssetDataPath];
  v3 = [secureAssetDataPath stringByAppendingPathComponent:@"SecureMobileAsset.dmg"];

  v4 = realpath_DARWIN_EXTSN([v3 UTF8String], 0);
  if (v4)
  {
    v5 = [NSString stringWithUTF8String:v4];

    v3 = v5;
  }

  free(v4);

  return v3;
}

- (NSString)secureInfoPlistPath
{
  secureAssetDataPath = [(SecureMobileAssetBundle *)self secureAssetDataPath];
  v3 = [secureAssetDataPath stringByAppendingPathComponent:@"SecureMobileAsset-Info.plist"];

  return v3;
}

- (NSString)insecureInfoPlistPath
{
  assetBundlePath = [(SecureMobileAssetBundle *)self assetBundlePath];
  v3 = [assetBundlePath stringByAppendingPathComponent:@"Info.plist"];

  return v3;
}

- (NSString)ticketPath
{
  if (__isPlatformVersionAtLeast(2, 18, 0, 0))
  {
    v3 = objc_alloc_init(MASecureManifestStorage);
    assetType = [(SecureMobileAssetBundle *)self assetType];
    assetSpecifier = [(SecureMobileAssetBundle *)self assetSpecifier];
    v6 = [v3 manifestPathForAssetType:assetType specifier:assetSpecifier];
  }

  else
  {
    v7 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "[SMA] MASecureManifestStorage isn't available", v9, 2u);
    }

    v6 = 0;
  }

  return v6;
}

- (NSString)stagedPersonalizedManifestPath
{
  if (__isPlatformVersionAtLeast(2, 18, 0, 0))
  {
    v3 = objc_alloc_init(MASecureManifestStorage);
    if (objc_opt_respondsToSelector())
    {
      assetType = [(SecureMobileAssetBundle *)self assetType];
      assetSpecifier = [(SecureMobileAssetBundle *)self assetSpecifier];
      v6 = [v3 stagedManifestPathForAssetType:assetType specifier:assetSpecifier];

      goto LABEL_10;
    }

    v7 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEBUG, "[SMA] Warning: MASecureManifestStorage does not support staging, returning nil", buf, 2u);
    }
  }

  else
  {
    v3 = _MADLog(@"SecureMA");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "[SMA] MASecureManifestStorage isn't available", v9, 2u);
    }
  }

  v6 = 0;
LABEL_10:

  return v6;
}

- (unint64_t)manifestType
{
  if (!__isPlatformVersionAtLeast(2, 18, 0, 0))
  {
    return 1;
  }

  v3 = +[MASecureMobileAssetTypes sharedInstance];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    return 1;
  }

  v4 = +[MASecureMobileAssetTypes sharedInstance];
  assetType = [(SecureMobileAssetBundle *)self assetType];
  v6 = [v4 supportsLoadableTrustCache:assetType];

  if (v6)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

- (unsigned)graftdmgType
{
  if ([(SecureMobileAssetBundle *)self manifestType]== &dword_0 + 1)
  {
    return 8;
  }

  else
  {
    return 9;
  }
}

- (unsigned)secureMountAuthType
{
  if ([(SecureMobileAssetBundle *)self manifestType]== &dword_0 + 1)
  {
    return 8;
  }

  else
  {
    return 9;
  }
}

- (NSString)rootHashPath
{
  secureAssetDataPath = [(SecureMobileAssetBundle *)self secureAssetDataPath];
  v3 = [secureAssetDataPath stringByAppendingPathComponent:@"SecureMobileAsset.root_hash"];

  return v3;
}

- (NSString)trustCachePath
{
  secureAssetDataPath = [(SecureMobileAssetBundle *)self secureAssetDataPath];
  v3 = [secureAssetDataPath stringByAppendingPathComponent:@"SecureMobileAsset.trustcache"];

  return v3;
}

- (id)integrityCatalogPath
{
  secureAssetDataPath = [(SecureMobileAssetBundle *)self secureAssetDataPath];
  v3 = [secureAssetDataPath stringByAppendingPathComponent:@"SecureMobileAsset.integritycatalog"];

  return v3;
}

- (BOOL)isAccessible
{
  if ([(SecureMobileAssetBundle *)self isGrafted])
  {
    return 1;
  }

  return [(SecureMobileAssetBundle *)self isMounted];
}

- (NSDictionary)secureInfoPlist
{
  secureInfoPlistPath = [(SecureMobileAssetBundle *)self secureInfoPlistPath];
  v3 = [NSDictionary dictionaryWithContentsOfFile:secureInfoPlistPath];

  return v3;
}

- (NSDictionary)insecureInfoPlist
{
  insecureInfoPlistPath = [(SecureMobileAssetBundle *)self insecureInfoPlistPath];
  v3 = [NSDictionary dictionaryWithContentsOfFile:insecureInfoPlistPath];

  return v3;
}

- (NSDictionary)assetAttributes
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_assetAttributes)
  {
    insecureInfoPlist = [(SecureMobileAssetBundle *)selfCopy insecureInfoPlist];
    v4 = [insecureInfoPlist objectForKeyedSubscript:@"MobileAssetProperties"];
    assetAttributes = selfCopy->_assetAttributes;
    selfCopy->_assetAttributes = v4;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_assetAttributes;

  return v6;
}

- (NSString)assetType
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_assetType)
  {
    insecureInfoPlist = [(SecureMobileAssetBundle *)selfCopy insecureInfoPlist];
    v4 = [insecureInfoPlist objectForKeyedSubscript:kCFBundleIdentifierKey];
    assetType = selfCopy->_assetType;
    selfCopy->_assetType = v4;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_assetType;

  return v6;
}

- (NSString)assetSpecifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_assetSpecifier)
  {
    assetAttributes = [(SecureMobileAssetBundle *)selfCopy assetAttributes];
    v4 = [assetAttributes objectForKeyedSubscript:@"AssetSpecifier"];
    assetSpecifier = selfCopy->_assetSpecifier;
    selfCopy->_assetSpecifier = v4;
  }

  objc_sync_exit(selfCopy);

  v6 = selfCopy->_assetSpecifier;

  return v6;
}

- (id)description
{
  assetType = [(SecureMobileAssetBundle *)self assetType];
  assetSpecifier = [(SecureMobileAssetBundle *)self assetSpecifier];
  assetBundlePath = [(SecureMobileAssetBundle *)self assetBundlePath];
  lastPathComponent = [assetBundlePath lastPathComponent];

  v7 = [NSString stringWithFormat:@"%@:%@ (%@)", assetType, assetSpecifier, lastPathComponent];

  return v7;
}

- (id)assetValues
{
  v3 = objc_opt_new();
  assetType = [(SecureMobileAssetBundle *)self assetType];
  [v3 setSafeObject:assetType forKey:@"AssetType"];

  assetSpecifier = [(SecureMobileAssetBundle *)self assetSpecifier];
  [v3 setSafeObject:assetSpecifier forKey:@"AssetSpecifier"];

  return v3;
}

- (void)devnodesForDiskImageID:(void *)a1 error:(_OWORD *)a2 .cold.2(void *a1, _OWORD *a2)
{
  OUTLINED_FUNCTION_2(a1, a2);
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_crash_msg();
  __break(1u);
}

@end