@interface MABrainBundle
+ (BOOL)destageCurrent:(id *)a3;
+ (BOOL)destageProposed:(id *)a3;
+ (BOOL)stageProposed:(id)a3 error:(id *)a4;
+ (void)garbageCollect;
- (BOOL)graft:(id *)a3;
- (BOOL)hasValidCurrentBootOnlyTicket;
- (BOOL)isGrafted;
- (BOOL)isGraftedPath:(id)a3;
- (BOOL)isPersonalized;
- (BOOL)personalize:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)stageCurrent:(id *)a3;
- (BOOL)ungraft:(id *)a3;
- (MABrainBundle)initWithPath:(id)a3;
- (NSDictionary)brainInfo;
- (NSString)brainPath;
- (NSString)currentBootOnlyTicketPath;
- (NSString)ticketPath;
- (unsigned)graftdmgType;
@end

@implementation MABrainBundle

+ (BOOL)destageCurrent:(id *)a3
{
  v4 = [@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:@".current"];
  v5 = +[MABrainBundle currentTargetPath];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 removeItemAtPath:v4 error:a3];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (BOOL)destageProposed:(id *)a3
{
  v4 = [@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:@".proposed"];
  v5 = +[MABrainBundle proposedTargetPath];

  if (v5)
  {
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 removeItemAtPath:v4 error:a3];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (BOOL)stageProposed:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = [@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:@".proposed"];
  v6 = [v4 lastPathComponent];
  v7 = safeAtomicWriteToPath(v6, v5);

  if ((v7 & 1) == 0)
  {
    v8 = _MADLog(@"Brain");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 lastPathComponent];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "[MAB] Failed to write stagingName final path component(%@) to proposed path(%@)", &v11, 0x16u);
    }
  }

  return v7;
}

+ (void)garbageCollect
{
  v2 = +[NSFileManager defaultManager];
  if ([v2 fileExistsAtPath:@"/private/var/MobileAsset/MobileAssetBrain"])
  {
    v22 = 0;
    v3 = [v2 removeItemAtPath:@"/private/var/MobileAsset/MobileAssetBrain" error:&v22];
    v4 = v22;
    v5 = _MADLog(@"Brain");
    v6 = v5;
    if (v3)
    {
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v7 = "[MAB] Successfully removed old MobileAssetBrain installation directory";
        v8 = v6;
        v9 = OS_LOG_TYPE_DEFAULT;
        v10 = 2;
LABEL_7:
        _os_log_impl(&dword_0, v8, v9, v7, buf, v10);
      }
    }

    else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v4;
      v7 = "[MAB] Error removing old MobileAssetBrain installation directory: %@";
      v8 = v6;
      v9 = OS_LOG_TYPE_ERROR;
      v10 = 12;
      goto LABEL_7;
    }
  }

  v11 = [NSSet setWithArray:&off_4F6F50];
  v12 = [v11 mutableCopy];

  v13 = +[MABrainBundle currentTargetPath];
  v14 = [v13 lastPathComponent];

  if (v14)
  {
    [v12 addObject:v14];
  }

  v15 = _MADLog(@"Brain");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = @"nil";
    if (v14)
    {
      v16 = v14;
    }

    *buf = 138412290;
    v24 = v16;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "[MAB] Performing MABrain garbage collection (current=%@)...", buf, 0xCu);
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __31__MABrainBundle_garbageCollect__block_invoke;
  v19[3] = &unk_4B4AF0;
  v20 = v12;
  v21 = v2;
  v17 = v2;
  v18 = v12;
  MABrainUtilityWalkDirectory(@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain", 0, v19);
}

uint64_t __31__MABrainBundle_garbageCollect__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:v3];
  v5 = [[MABrainBundle alloc] initWithPath:v4];
  if ([*(a1 + 32) containsObject:v3])
  {
    v6 = _MADLog(@"Brain");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v18 = v3;
      v7 = "[MAB] Preserving item %@";
LABEL_7:
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 0xCu);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  if (![(MABrainBundle *)v5 isGrafted])
  {
    v8 = *(a1 + 40);
    v16 = 0;
    v9 = [v8 removeItemAtPath:v4 error:&v16];
    v6 = v16;
    v10 = _MADLog(@"Brain");
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 138412290;
        v18 = v3;
        v12 = "[MAB] Successfully removed item %@";
        v13 = v10;
        v14 = 12;
LABEL_13:
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      }
    }

    else if (v11)
    {
      *buf = 138412546;
      v18 = v3;
      v19 = 2112;
      v20 = v6;
      v12 = "[MAB] Error removing item %@: %@";
      v13 = v10;
      v14 = 22;
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v6 = _MADLog(@"Brain");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v3;
    v7 = "[MAB] Preserving item %@ (still grafted)";
    goto LABEL_7;
  }

LABEL_15:

  return 1;
}

- (MABrainBundle)initWithPath:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MABrainBundle;
  v6 = [(MABrainBundle *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundlePath, a3);
  }

  return v7;
}

- (BOOL)personalize:(id)a3 options:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  AMAuthInstallLogSetHandler();
  v9 = [NSURL fileURLWithPath:self->_bundlePath];
  v10 = [v7 stringByAppendingPathComponent:@"Restore"];
  v74 = [NSURL fileURLWithPath:v10];
  v11 = [v8 objectForKeyedSubscript:@"ssoToken"];
  [v8 objectForKeyedSubscript:@"AuthInstallOptions"];

  v73 = v11;
  if (!&_AMAuthInstallSetUpdaterRequestEntry)
  {
    v106 = NSDebugDescriptionErrorKey;
    v20 = [NSString stringWithFormat:@"Symbol not found: _%s", "AMAuthInstallSetUpdaterRequestEntry"];
    v107 = v20;
    v21 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
    v16 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:102 userInfo:v21];

    v69 = 0;
    v70 = 0;
    v19 = 0;
    v18 = 0;
    v76 = 0;
    v77 = 0;
    v17 = 0;
    v78 = 0;
    v71 = 0;
    v72 = 0;
    v75 = &__NSDictionary0__struct;
    v22 = a5;
    if (!a5)
    {
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  v67 = v9;
  v12 = AMAuthInstallCreate();
  v70 = [SecureMobileAssetBundle getSigningServerURL:@"com.apple.MobileAsset.MobileAssetBrain"];
  v13 = AMAuthInstallSetSigningServerURL();
  if (v13)
  {
    v14 = [NSString stringWithFormat:@"AMAuthInstallSetSigningServerURL() failed with error %d (%@)", v13, AMAuthInstallGetLocalizedStatusString()];
    v15 = +[NSMutableDictionary dictionary];
    [v15 setObject:v14 forKeyedSubscript:NSDebugDescriptionErrorKey];
    [v15 setObject:0 forKeyedSubscript:NSUnderlyingErrorKey];
    v16 = [NSError errorWithDomain:@"SecureMobileAssetErrorDomain" code:102 userInfo:v15];

    v71 = 0;
    v72 = 0;
    v77 = 0;
    v78 = 0;
    v17 = 0;
    v76 = 0;
    v69 = 0;
    v18 = 0;
    v19 = 0;
    v75 = &__NSDictionary0__struct;
LABEL_39:
    v22 = a5;
    goto LABEL_40;
  }

  if (v11)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = _MADLog(@"Brain");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v80 = v11;
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "[MAB] Invalid ssoToken=%@", buf, 0xCu);
      }

      goto LABEL_19;
    }

    v23 = [NSURL URLWithString:@"https://gsra.apple.com:443"];
    if (AMAuthInstallSetSigningServerURL())
    {
      v24 = _MADLog(@"Brain");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v25 = "[MAB] Unable to set secure TSS URL for user authlisting";
LABEL_16:
        v28 = v24;
        v29 = OS_LOG_TYPE_ERROR;
LABEL_17:
        _os_log_impl(&dword_0, v28, v29, v25, buf, 2u);
      }
    }

    else
    {
      v26 = AMAuthInstallSsoSetToken();
      v27 = _MADLog(@"Brain");
      v24 = v27;
      if (!v26)
      {
        if (!os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_18;
        }

        *buf = 0;
        v25 = "[MAB] User-authlisting enabled.";
        v28 = v24;
        v29 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_17;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v25 = "[MAB] Unable to set SSO token for user authlisting";
        goto LABEL_16;
      }
    }

LABEL_18:

LABEL_19:
  }

  v30 = MABrainUtilityCopyEcid();
  v31 = MABrainUtilityCopyChipId();
  v78 = MABrainUtilityCopyBoardId();
  v17 = MABrainUtilityCopySecurityDomain();
  v77 = MABrainUtilityCopyCertificateSecurityMode();
  v76 = MABrainUtilityCopySigningFuse();
  v75 = &__NSDictionary0__struct;
  if (v30 && v31 && v78 && v17 && v77 && v76)
  {
    v104[0] = kAMAuthInstallApParameterECID;
    v104[1] = kAMAuthInstallApParameterChipID;
    v105[0] = v30;
    v105[1] = v31;
    v104[2] = kAMAuthInstallApParameterBoardID;
    v104[3] = kAMAuthInstallApParameterSecurityDomain;
    v105[2] = v78;
    v105[3] = v17;
    v104[4] = kAMAuthInstallApParameterSecurityMode;
    v104[5] = kAMAuthInstallApParameterProductionMode;
    v105[4] = v77;
    v105[5] = v76;
    v75 = [NSDictionary dictionaryWithObjects:v105 forKeys:v104 count:6];
  }

  v71 = v31;
  v103 = 0;
  memset(&v102[2], 0, 48);
  v32 = img4_nonce_domain_preroll_nonce();
  v72 = v30;
  if (v32)
  {
    v33 = v32;
    if (v32 != 45)
    {
      v101[0] = NSDebugDescriptionErrorKey;
      v40 = [NSString stringWithFormat:@"Failed to pre-roll the Cryptex1 MobileAssetBrain nonce"];
      v102[0] = v40;
      v101[1] = NSUnderlyingErrorKey;
      v41 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v33 userInfo:0];
      v102[1] = v41;
      v42 = [NSDictionary dictionaryWithObjects:v102 forKeys:v101 count:2];
      v16 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:108 userInfo:v42];

      v69 = 0;
      v18 = 0;
      goto LABEL_38;
    }

    v34 = _MADLog(@"Brain");
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v34, OS_LOG_TYPE_DEFAULT, "[MAB] Cryptex1 nonce management is not available on this host.", buf, 2u);
    }

    v18 = 0;
  }

  else
  {
    v35 = _MADLog(@"Brain");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "[MAB] Successfully pre-rolled the Cryptex1 MobileAssetBrain nonce.", buf, 2u);
    }

    v36 = [NSData alloc];
    v18 = [v36 initWithBytes:&v102[2] + 2 length:HIDWORD(v103)];
  }

  v37 = AMAuthInstallApSetParameters();
  if (v37)
  {
    v99 = NSDebugDescriptionErrorKey;
    v38 = [NSString stringWithFormat:@"AMAuthInstallApSetParameters() failed with error %d (%@)", v37, AMAuthInstallGetLocalizedStatusString()];
    v100 = v38;
    v39 = [NSDictionary dictionaryWithObjects:&v100 forKeys:&v99 count:1];
    v16 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:102 userInfo:v39];

    v69 = 0;
LABEL_38:
    v19 = 0;
    goto LABEL_39;
  }

  if (_cryptex1_product_class_onceToken_0 != -1)
  {
    [MABrainBundle personalize:options:error:];
  }

  v45 = _cryptex1_product_class_productClass_0;
  v97[0] = kAMAuthInstallTagCryptex1ChipId;
  v97[1] = kAMAuthInstallTagCryptex1Type;
  v98[0] = @"0xFF10";
  v98[1] = &off_4F7FB8;
  v97[2] = kAMAuthInstallTagCryptex1SubType;
  v97[3] = kAMAuthInstallTagCryptex1ProductClass;
  v98[2] = &off_4F7FD0;
  v69 = v45;
  v98[3] = v45;
  v66 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:4];
  v46 = AMAuthInstallApSoftwareCoprocessorSetParameters();
  if (v46)
  {
    v95 = NSDebugDescriptionErrorKey;
    v47 = [NSString stringWithFormat:@"AMAuthInstallApSoftwareCoprocessorSetParameters() failed with error %d (%@)", v46, AMAuthInstallGetLocalizedStatusString()];
    v96 = v47;
    v48 = [NSDictionary dictionaryWithObjects:&v96 forKeys:&v95 count:1];
    v16 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:102 userInfo:v48];

    v22 = a5;
LABEL_50:
    v19 = v66;
    goto LABEL_40;
  }

  if (v17)
  {
    +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%02X", [v17 intValue]);
    v49 = AMAuthInstallSetUpdaterRequestEntry();
    if (v49)
    {
      v93 = NSDebugDescriptionErrorKey;
      v50 = [NSString stringWithFormat:@"AMAuthInstallSetUpdaterRequestEntry() failed with error %d (%@)", v49, AMAuthInstallGetLocalizedStatusString()];
      v94 = v50;
      v51 = [NSDictionary dictionaryWithObjects:&v94 forKeys:&v93 count:1];
      v16 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:102 userInfo:v51];

      v22 = a5;
      goto LABEL_50;
    }
  }

  v52 = AMAuthInstallUpdaterCryptex1SetInfo();
  v19 = v66;
  if (v52)
  {
    v91 = NSDebugDescriptionErrorKey;
    v53 = [NSString stringWithFormat:@"AMAuthInstallUpdaterCryptex1SetInfo() failed with error %d (%@)", v52, AMAuthInstallGetLocalizedStatusString()];
    v92 = v53;
    v54 = &v92;
    v55 = &v91;
LABEL_59:
    v56 = [NSDictionary dictionaryWithObjects:v54 forKeys:v55 count:1];
    v16 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:102 userInfo:v56];

    goto LABEL_39;
  }

  cf = AMAuthInstallUpdaterPersonalize();
  if (!cf)
  {
    v89 = NSDebugDescriptionErrorKey;
    v53 = [NSString stringWithFormat:@"AMAuthInstallUpdaterPersonalize() failed with error %d (%@)", 0, AMAuthInstallGetLocalizedStatusString()];
    v90 = v53;
    v54 = &v90;
    v55 = &v89;
    goto LABEL_59;
  }

  context = objc_autoreleasePoolPush();
  v87[0] = @"MobileAssetTrustCache";
  v87[1] = @"mobileassetbrain_root_hash";
  v88[0] = kAMAuthInstallBuildIdentityCryptex1SystemTrustCacheKey;
  v88[1] = kAMAuthInstallBuildIdentityCryptex1SystemVolumeKey;
  v87[2] = @"MobileAssetBrain.cryptex";
  v88[2] = kAMAuthInstallBuildIdentityCryptex1SystemOSKey;
  v63 = [NSDictionary dictionaryWithObjects:v88 forKeys:v87 count:3];
  v85[0] = @"MobileAssetTrustCache";
  v85[1] = @"mobileassetbrain_root_hash";
  v86[0] = kAMAuthInstallBuildIdentityCryptex1MobileAssetBrainTrustCacheKey;
  v86[1] = kAMAuthInstallBuildIdentityCryptex1MobileAssetBrainVolumeKey;
  v85[2] = @"MobileAssetBrain.cryptex";
  v86[2] = kAMAuthInstallBuildIdentityCryptex1MobileAssetBrainOSKey;
  log = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:3];
  v57 = AMAuthInstallBundleCopyBuildIdentityForVariant();
  if (v57)
  {
    v83 = NSDebugDescriptionErrorKey;
    v58 = [NSString stringWithFormat:@"AMAuthInstallBundleCopyBuildIdentityForVariant() failed with error %d (%@)", v57, AMAuthInstallGetLocalizedStatusString()];
    v84 = v58;
    v59 = &v84;
    v60 = &v83;
  }

  else
  {
    v81 = NSDebugDescriptionErrorKey;
    v58 = [NSString stringWithFormat:@"AMAuthInstallBundleCopyBuildIdentityForVariant() returned a NULL buildIdentity"];
    v82 = v58;
    v59 = &v82;
    v60 = &v81;
  }

  v61 = [NSDictionary dictionaryWithObjects:v59 forKeys:v60 count:1];
  v16 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:102 userInfo:v61];

  objc_autoreleasePoolPop(context);
  v22 = a5;
  CFRelease(cf);
LABEL_40:
  if (v12)
  {
    CFRelease(v12);
  }

  v9 = v67;
  if (v22)
  {
LABEL_43:
    if (v16)
    {
      v43 = v16;
      *v22 = v16;
    }
  }

LABEL_45:

  return 0;
}

- (BOOL)isGrafted
{
  v2 = self;
  v3 = [(MABrainBundle *)self graftPath];
  LOBYTE(v2) = [(MABrainBundle *)v2 isGraftedPath:v3];

  return v2;
}

- (BOOL)isGraftedPath:(id)a3
{
  v6[0] = 0;
  v6[1] = 0;
  v3 = fsctl([a3 fileSystemRepresentation], 0xC0104A66uLL, v6, 1u);
  return BYTE4(v6[0]) && v3 == 0;
}

- (BOOL)stageCurrent:(id *)a3
{
  v4 = [@"/private/var/MobileSoftwareUpdate/MobileAsset/MobileAssetBrain" stringByAppendingPathComponent:@".current"];
  v5 = [(MABrainBundle *)self bundleId];
  v6 = safeAtomicWriteToPath(v5, v4);

  if ((v6 & 1) == 0)
  {
    v7 = _MADLog(@"Brain");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [(MABrainBundle *)self bundleId];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "[MAB] Failed to mark bundle(%@) as current brain.", &v10, 0xCu);
    }
  }

  return v6;
}

- (BOOL)graft:(id *)a3
{
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(MABrainBundle *)self graftPath];
  v7 = [(MABrainBundle *)self cryptexPath];
  v59 = 0;
  memset(&v58, 0, sizeof(v58));
  v57[0] = 0;
  v57[1] = 0;
  v104 = 0u;
  memset(v105, 0, sizeof(v105));
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v91 = 0u;
  v90 = 0u;
  v89 = 0u;
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
  v74 = xmmword_33C090;
  v75 = -1;
  v72[0] = NSFileOwnerAccountID;
  v72[1] = NSFileGroupOwnerAccountID;
  v73[0] = &off_4F7FE8;
  v73[1] = &off_4F7FE8;
  v72[2] = NSFilePosixPermissions;
  v73[2] = &off_4F8000;
  v8 = [NSDictionary dictionaryWithObjects:v73 forKeys:v72 count:3];
  v9 = v8;
  if (!v6)
  {
    v53 = v8;
    v70 = NSDebugDescriptionErrorKey;
    v12 = [NSString stringWithFormat:@"graftPath is nil"];
    v71 = v12;
    v13 = &v71;
    v14 = &v70;
LABEL_7:
    v15 = [NSDictionary dictionaryWithObjects:v13 forKeys:v14 count:1];
    v16 = 100;
    v17 = v15;
LABEL_8:
    v10 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:v16 userInfo:v17];

    v11 = 0;
    goto LABEL_9;
  }

  if (!v7)
  {
    v53 = v8;
    v68 = NSDebugDescriptionErrorKey;
    v12 = [NSString stringWithFormat:@"cryptexPath is nil"];
    v69 = v12;
    v13 = &v69;
    v14 = &v68;
    goto LABEL_7;
  }

  if ([(MABrainBundle *)self isGraftedPath:v6])
  {
    v10 = 0;
    v11 = 1;
    goto LABEL_26;
  }

  v52 = a3;
  v19 = v5;
  v20 = +[NSFileManager defaultManager];
  v21 = [v20 fileExistsAtPath:v6 isDirectory:&v59];

  v53 = v9;
  if ((v21 & 1) == 0)
  {
    v22 = +[NSFileManager defaultManager];
    v56 = 0;
    v23 = [v22 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:v9 error:&v56];
    v10 = v56;

    if (v23)
    {
      goto LABEL_16;
    }

    goto LABEL_23;
  }

  if (v59)
  {
    v10 = 0;
    goto LABEL_16;
  }

  v29 = +[NSFileManager defaultManager];
  v55 = 0;
  v30 = [v29 removeItemAtPath:v6 error:&v55];
  v10 = v55;

  if (!v30)
  {
LABEL_23:
    v11 = 0;
    goto LABEL_24;
  }

  v31 = +[NSFileManager defaultManager];
  v54 = v10;
  v32 = [v31 createDirectoryAtPath:v6 withIntermediateDirectories:1 attributes:v53 error:&v54];
  v33 = v54;

  if (v32)
  {
    v10 = v33;
LABEL_16:
    v5 = v19;
    a3 = v52;
    if (lstat([v6 fileSystemRepresentation], &v58))
    {
      v24 = _MADLog(@"Brain");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = [v6 fileSystemRepresentation];
        *buf = 136315138;
        v63 = v25;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "[MAB] Could not lstat %s", buf, 0xCu);
      }

      v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:*__error() userInfo:0];

      v66[0] = NSDebugDescriptionErrorKey;
      v66[1] = NSUnderlyingErrorKey;
      v67[0] = @"lstat failed";
      v67[1] = v15;
      v66[2] = @"graftPath";
      v67[2] = v6;
      v26 = v67;
      v27 = v66;
      v28 = 3;
LABEL_51:
      v12 = [NSDictionary dictionaryWithObjects:v26 forKeys:v27 count:v28];
      v16 = 104;
      v17 = v12;
      goto LABEL_8;
    }

    if ([(MABrainBundle *)self isPersonalized]|| [(MABrainBundle *)self isGloballySigned])
    {
      v35 = [(MABrainBundle *)self cryptexPath];
      v36 = open([v35 fileSystemRepresentation], 0);

      if (v36 < 0)
      {
        [v5 setObject:@"open()" forKeyedSubscript:@"syscall"];
        v42 = [(MABrainBundle *)self cryptexPath];
        [v5 setObject:v42 forKeyedSubscript:@"path"];

LABEL_45:
        v44 = _MADLog(@"Brain");
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v45 = [v7 fileSystemRepresentation];
          v46 = [v6 fileSystemRepresentation];
          *buf = 136315394;
          v63 = v45;
          v64 = 2080;
          v65 = v46;
          _os_log_impl(&dword_0, v44, OS_LOG_TYPE_ERROR, "[MAB] Could not graft %s to %s", buf, 0x16u);
        }

        v47 = *__error();
        if ([v5 count])
        {
          v48 = v5;
        }

        else
        {
          v48 = 0;
        }

        v15 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v47 userInfo:v48];

        v60[0] = NSDebugDescriptionErrorKey;
        v60[1] = NSUnderlyingErrorKey;
        v61[0] = @"graft failed";
        v61[1] = v15;
        v60[2] = @"cryptexPath";
        v60[3] = @"graftPath";
        v61[2] = v7;
        v61[3] = v6;
        v26 = v61;
        v27 = v60;
        v28 = 4;
        goto LABEL_51;
      }

      v37 = [(MABrainBundle *)self ticketPath];
      v51 = open([v37 fileSystemRepresentation], 0);
      if (v51 < 0)
      {
        [v5 setObject:@"open()" forKeyedSubscript:@"syscall"];
        [v5 setObject:v37 forKeyedSubscript:@"path"];
        v41 = -1;
      }

      else
      {
        v50 = v36;
        v38 = _MADLog(@"Brain");
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v63 = v37;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "[MAB] Found MA brain ticket: %@", buf, 0xCu);
        }

        v49 = v37;

        v39 = [(MABrainBundle *)self rootHashPath];
        v40 = open([v39 fileSystemRepresentation], 0);

        if (v40 < 0)
        {
          [v5 setObject:@"open()" forKeyedSubscript:@"syscall"];
          v43 = [(MABrainBundle *)self rootHashPath];
          [v5 setObject:v43 forKeyedSubscript:@"path"];

          v41 = -1;
        }

        else
        {
          DWORD2(v74) = v51;
          v75 = v40;
          *&v76 = 16;
          [v6 fileSystemRepresentation];
          [(MABrainBundle *)self graftdmgType];
          v41 = graftdmg();
          if (v41)
          {
            [v5 setObject:@"graftdmg()" forKeyedSubscript:@"syscall"];
            [v5 setObject:v49 forKeyedSubscript:@"path"];
          }

          close(v40);
        }

        close(v51);
        v36 = v50;
        v37 = v49;
      }

      close(v36);
    }

    else
    {
      v57[0] = v58.st_ino;
      v41 = fsctl([v7 fileSystemRepresentation], 0x80104A63uLL, v57, 0);
    }

    if (!v41)
    {
      v12 = _MADLog(@"Brain");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v63 = v7;
        v64 = 2112;
        v65 = v6;
        _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "[MAB] Successfully grafted %@ onto %@", buf, 0x16u);
      }

      v11 = 1;
LABEL_9:

      if (a3)
      {
        goto LABEL_10;
      }

LABEL_25:
      v9 = v53;
      goto LABEL_26;
    }

    goto LABEL_45;
  }

  v11 = 0;
  v10 = v33;
LABEL_24:
  v5 = v19;
  a3 = v52;
  if (!v52)
  {
    goto LABEL_25;
  }

LABEL_10:
  v9 = v53;
  if (v10)
  {
    v18 = v10;
    *a3 = v10;
  }

LABEL_26:

  return v11;
}

- (BOOL)ungraft:(id *)a3
{
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(MABrainBundle *)self graftPath];
  v22 = 0;
  if (v6)
  {
    if ([(MABrainBundle *)self isGraftedPath:v6])
    {
      if (&_ungraftdmg)
      {
        if (MABrainUtilitySupportsGracefulUngraft())
        {
          v22 = 2;
          [v5 setObject:@"UNGRAFTDMG_NOFORCE" forKeyedSubscript:@"ungraft_param"];
        }

        [v6 fileSystemRepresentation];
        v11 = ungraftdmg();
        v12 = @"ungraftdmg()";
      }

      else
      {
        v11 = fsctl([v6 fileSystemRepresentation], 0x80084A64uLL, &v22, 0);
        v12 = @"fsctl()";
      }

      v13 = _MADLog(@"Brain");
      v14 = v13;
      if (v11)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v15 = [v6 fileSystemRepresentation];
          *buf = 136315138;
          v24 = v15;
          _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "[MAB] Could not ungraft %s", buf, 0xCu);
        }

        [v5 setObject:v12 forKeyedSubscript:@"syscall"];
        v16 = *__error();
        if ([v5 count])
        {
          v17 = v5;
        }

        else
        {
          v17 = 0;
        }

        v8 = [NSError errorWithDomain:NSPOSIXErrorDomain code:v16 userInfo:v17];
        v27[0] = NSDebugDescriptionErrorKey;
        v27[1] = NSUnderlyingErrorKey;
        v28[0] = @"ungraft failed";
        v28[1] = v8;
        v27[2] = @"graftPath";
        v28[2] = v6;
        v7 = [NSDictionary dictionaryWithObjects:v28 forKeys:v27 count:3];
        v9 = 105;
        v10 = v7;
        goto LABEL_16;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v24 = v6;
        v25 = 2112;
        v26 = v12;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "[MAB] Successfully ungrafted %@ from the file system using %@", buf, 0x16u);
      }
    }

    v18 = 0;
    v19 = 1;
    goto LABEL_23;
  }

  v29 = NSDebugDescriptionErrorKey;
  v7 = [NSString stringWithFormat:@"graftPath is nil"];
  v30 = v7;
  v8 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v9 = 100;
  v10 = v8;
LABEL_16:
  v18 = [NSError errorWithDomain:@"MobileAssetBrainErrorDomain" code:v9 userInfo:v10];

  v19 = 0;
  if (a3 && v18)
  {
    v20 = v18;
    v19 = 0;
    *a3 = v18;
  }

LABEL_23:

  return v19;
}

- (BOOL)isPersonalized
{
  v3 = +[NSFileManager defaultManager];
  v4 = [(MABrainBundle *)self ticketPath];
  v5 = [v3 fileExistsAtPath:v4];

  return v5;
}

- (BOOL)hasValidCurrentBootOnlyTicket
{
  v2 = [(MABrainBundle *)self currentBootOnlyTicketPath];
  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    v4 = [v3 fileExistsAtPath:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)ticketPath
{
  if ([(MABrainBundle *)self hasValidCurrentBootOnlyTicket])
  {
    [(MABrainBundle *)self currentBootOnlyTicketPath];
  }

  else
  {
    [(MABrainBundle *)self primaryTicketPath];
  }
  v3 = ;

  return v3;
}

- (NSString)currentBootOnlyTicketPath
{
  bundlePath = self->_bundlePath;
  v3 = BootSessionUUID();
  v4 = [NSString stringWithFormat:@"cryptex1ticket.%@.der", v3];
  v5 = [(NSString *)bundlePath stringByAppendingPathComponent:v4];

  return v5;
}

- (unsigned)graftdmgType
{
  v2 = [(MABrainBundle *)self hasValidCurrentBootOnlyTicket];
  v3 = _MADLog(@"Brain");
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[MAB] Using GRAFTDMG_CRYPTEX_PDI_NONCE", buf, 2u);
    }

    v5 = 6;
  }

  else
  {
    if (v4)
    {
      *v7 = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "[MAB] Using GRAFTDMG_CRYPTEX_BOOT", v7, 2u);
    }

    v5 = 1;
  }

  return v5;
}

- (NSString)brainPath
{
  v2 = [(MABrainBundle *)self graftPath];
  v3 = [v2 stringByAppendingPathComponent:@"/usr/lib/libmobileassetd.dylib"];

  return v3;
}

- (NSDictionary)brainInfo
{
  v2 = [(NSString *)self->_bundlePath stringByAppendingPathComponent:@"MobileAssetBrain.plist"];
  v3 = [NSDictionary dictionaryWithContentsOfFile:v2];

  return v3;
}

@end