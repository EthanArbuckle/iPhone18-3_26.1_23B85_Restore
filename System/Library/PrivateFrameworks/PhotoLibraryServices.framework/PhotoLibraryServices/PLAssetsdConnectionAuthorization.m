@interface PLAssetsdConnectionAuthorization
- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken;
- (BOOL)_isPhotosPickerClient;
- (BOOL)isBackgroundResourceUploadExtensionClient;
- (BOOL)isClientAuthorizedForSandboxExtensions;
- (BOOL)isClientAuthorizedForTCCServicePhotos;
- (BOOL)isClientAuthorizedForTCCServicePhotosAdd;
- (BOOL)isClientInFullLibraryMode;
- (BOOL)isClientInLimitedLibraryMode;
- (BOOL)isClientInRestrictedMode;
- (BOOL)isClientLimitedLibraryCapable;
- (BOOL)isQuickCheckReadyForAnalysisClient;
- (PLAssetsdConnectionAuthorization)initWithConnection:(id)a3 daemonServices:(id)a4;
- (id)_captureSessionState;
- (id)_captureSessionStateFromAuditToken:(id *)a3;
- (id)_isPhotosAccessAllowed;
- (id)_isPhotosAddAccessAllowed;
- (id)_resourceUploadExtensionType;
- (id)_trustedCallerContainingBundleRecord;
- (id)_trustedCallerDisplayName;
- (id)_trustedCallerPhotoLibraryUsageDescription;
- (void)_setupAnalyticsCacheWithConnection:(id)a3;
- (void)_setupSmartSharingCacheWithConnection:(id)a3;
- (void)_trackCAConnectionEvent;
- (void)invalidateClientAuthorizationCache;
@end

@implementation PLAssetsdConnectionAuthorization

- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken
{
  v3 = *self[1].var0;
  *retstr->var0 = *&self->var0[4];
  *&retstr->var0[4] = v3;
  return self;
}

- (id)_resourceUploadExtensionType
{
  v2 = *&self->_auditToken.val[4];
  v6[0] = *self->_auditToken.val;
  v6[1] = v2;
  v3 = [PLBackgroundUploadExtensionSupport isValidExtensionFromValidationType:[PLBackgroundUploadExtensionSupport containsValidExtensionFromAuditToken:v6 extensionPointLabel:@"com.apple.photos.background-upload"]];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:v3];

  return v4;
}

- (BOOL)isBackgroundResourceUploadExtensionClient
{
  v2 = [(PLLazyObject *)self->_lazyIsBackgroundResourceUploadExtensionClient objectValue];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)_captureSessionStateFromAuditToken:(id *)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (PLIsCaptureSessionEnabled())
  {
    daemonServices = self->_daemonServices;
    v6 = *&a3->var0[4];
    *v11 = *a3->var0;
    *&v11[16] = v6;
    v7 = [(PLDaemonServices *)daemonServices captureSessionStateFromAuditToken:v11];
    v8 = PLGatekeeperXPCGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(PLAssetsdConnectionAuthorization *)self description];
      *v11 = 138543618;
      *&v11[4] = v9;
      *&v11[12] = 2114;
      *&v11[14] = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Capture Session: [client %{public}@] Session state from audit token: %{public}@", v11, 0x16u);
    }
  }

  else
  {
    v7 = [MEMORY[0x1E69BF1C8] none];
  }

  return v7;
}

- (id)_captureSessionState
{
  v2 = *&self->_auditToken.val[4];
  v5[0] = *self->_auditToken.val;
  v5[1] = v2;
  v3 = [(PLAssetsdConnectionAuthorization *)self _captureSessionStateFromAuditToken:v5];

  return v3;
}

- (id)_trustedCallerPhotoLibraryUsageDescription
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v3 = *&self->_auditToken.val[4];
  *buf = *self->_auditToken.val;
  *&buf[16] = v3;
  v4 = [MEMORY[0x1E6963620] bundleRecordForAuditToken:buf error:&v10];
  v5 = v10;
  if (v4)
  {
    v6 = [v4 infoDictionary];
    v7 = [v6 objectForKey:*MEMORY[0x1E69BFF30] ofClass:objc_opt_class()];

    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_INFO, "%@ failed to get bundle proxy with error %@", buf, 0x16u);
    }
  }

  v7 = &stru_1F0F06D80;
LABEL_8:

  return v7;
}

- (id)_trustedCallerDisplayName
{
  v19 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x19EAEE230](self, a2))
  {
    v3 = [(PLAssetsdConnectionAuthorization *)self trustedCallerBundleID];
    if ([v3 containsString:@"photosctl"])
    {

LABEL_5:
      v6 = [(PLAssetsdConnectionAuthorization *)self trustedCallerBundleID];
      v7 = [v6 copy];

      goto LABEL_18;
    }

    v4 = [(PLAssetsdConnectionAuthorization *)self trustedCallerBundleID];
    v5 = [v4 containsString:@"jujubectl"];

    if (v5)
    {
      goto LABEL_5;
    }
  }

  v17 = 0;
  v8 = *&self->_auditToken.val[4];
  *buf = *self->_auditToken.val;
  *&buf[16] = v8;
  v9 = [MEMORY[0x1E6963620] bundleRecordForAuditToken:buf error:&v17];
  v10 = v17;
  v11 = [(PLAssetsdConnectionAuthorization *)self trustedCallerContainingBundleRecord];

  if (v11)
  {
    v12 = [(PLAssetsdConnectionAuthorization *)self trustedCallerContainingBundleRecord];

    v9 = v12;
  }

  if (!v9)
  {
    v13 = PLBackendGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v10;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "%@ failed to get bundle proxy with error %@", buf, 0x16u);
    }

    v7 = 0;
    goto LABEL_14;
  }

  v7 = 0;
  if (![0 length])
  {
    v13 = [v9 localizedName];
    v7 = [v13 copy];
LABEL_14:
  }

  if (![v7 length])
  {
    v14 = [(PLAssetsdConnectionAuthorization *)self trustedCallerBundleID];
    v15 = [v14 copy];

    v7 = v15;
  }

LABEL_18:

  return v7;
}

- (id)_trustedCallerContainingBundleRecord
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69635D0]);
  v4 = [(PLAssetsdConnectionAuthorization *)self trustedCallerBundleID];
  v13 = 0;
  v5 = [v3 initWithBundleIdentifier:v4 error:&v13];
  v6 = v13;

  if (v5)
  {
    v7 = [v5 containingBundleRecord];
    v8 = [v7 bundleIdentifier];

    if (v8)
    {
      v9 = [v5 containingBundleRecord];
      goto LABEL_8;
    }
  }

  else
  {
    v10 = PLBackendGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(PLAssetsdConnectionAuthorization *)self trustedCallerBundleID];
      *buf = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v6;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "Unable to get application record for bundleID: %@ with error: %@", buf, 0x16u);
    }
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (void)_trackCAConnectionEvent
{
  v29[1] = *MEMORY[0x1E69E9840];
  if ([(NSString *)self->_trustedCallerBundleID length])
  {
    v3 = [(NSString *)self->_trustedCallerBundleID lowercaseString];
    v4 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v5 = [v3 stringByTrimmingCharactersInSet:v4];
    v6 = [v5 isEqualToString:@"null"];

    if (v6)
    {
      v28 = *MEMORY[0x1E69BF4F8];
      v29[0] = *MEMORY[0x1E69BF500];
      v7 = MEMORY[0x1E695DF20];
      p_trustedCallerBundleID = v29;
      v9 = &v28;
    }

    else
    {
      v26 = *MEMORY[0x1E69BF4F8];
      trustedCallerBundleID = self->_trustedCallerBundleID;
      v7 = MEMORY[0x1E695DF20];
      p_trustedCallerBundleID = &trustedCallerBundleID;
      v9 = &v26;
    }

    v10 = [v7 dictionaryWithObjects:p_trustedCallerBundleID forKeys:v9 count:1];
    PLSendCoreAnalyticEvent();

    v11 = [(PLAssetsdConnectionAuthorization *)self isClientInFullLibraryMode];
    v12 = [(PLAssetsdConnectionAuthorization *)self isClientInLimitedLibraryMode];
    v13 = [(PLAssetsdConnectionAuthorization *)self isClientAuthorizedForTCCServicePhotosAdd];
    v14 = [(PLAssetsdConnectionAuthorization *)self isClientInRestrictedMode];
    v15 = v11 || v12;
    v16 = *MEMORY[0x1E69BFB78];
    v25[0] = self->_trustedCallerBundleID;
    v17 = *MEMORY[0x1E69BFB50];
    v24[0] = v16;
    v24[1] = v17;
    v18 = [MEMORY[0x1E696AD98] numberWithBool:v11];
    v25[1] = v18;
    v24[2] = *MEMORY[0x1E69BFB60];
    v19 = [MEMORY[0x1E696AD98] numberWithBool:v12];
    v25[2] = v19;
    v24[3] = *MEMORY[0x1E69BFB68];
    v20 = [MEMORY[0x1E696AD98] numberWithBool:v13];
    v25[3] = v20;
    v24[4] = *MEMORY[0x1E69BFB70];
    v21 = [MEMORY[0x1E696AD98] numberWithBool:v14];
    v25[4] = v21;
    v24[5] = *MEMORY[0x1E69BFB58];
    v22 = [MEMORY[0x1E696AD98] numberWithBool:!v15];
    v25[5] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:6];
    PLSendCoreAnalyticEvent();
  }
}

- (BOOL)isClientAuthorizedForSandboxExtensions
{
  v2 = *MEMORY[0x1E69BF3F8];
  v3 = *&self->_auditToken.val[4];
  v5[0] = *self->_auditToken.val;
  v5[1] = v3;
  return [MEMORY[0x1E69BF2F0] auditToken:v5 hasEntitlement:v2];
}

- (BOOL)_isPhotosPickerClient
{
  if (self->_trustedCallerBundleID)
  {
    return [&unk_1F0FBFFE8 containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isQuickCheckReadyForAnalysisClient
{
  if ([(PLAssetsdConnectionAuthorization *)self isCameraClient]|| [(PLAssetsdConnectionAuthorization *)self isPhotosClient]|| [(PLAssetsdConnectionAuthorization *)self _isPhotosPickerClient]|| [(PLAssetsdConnectionAuthorization *)self _isPreferencesClient])
  {
    return 1;
  }

  trustedCallerBundleID = self->_trustedCallerBundleID;

  return [(NSString *)trustedCallerBundleID containsString:@"photosctl"];
}

- (BOOL)isClientLimitedLibraryCapable
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  PLRunWithUnfairLock();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (BOOL)isClientInRestrictedMode
{
  v3 = [MEMORY[0x1E69BF2B0] sharedInstance];
  v4 = *&self->_auditToken.val[4];
  v7[0] = *self->_auditToken.val;
  v7[1] = v4;
  v5 = [v3 photosAccessAllowedWithScope:7 auditToken:v7 clientAuthorization:self];

  return v5 == 3;
}

- (BOOL)isClientInFullLibraryMode
{
  v3 = [MEMORY[0x1E69BF2B0] sharedInstance];
  v4 = *&self->_auditToken.val[4];
  v7[0] = *self->_auditToken.val;
  v7[1] = v4;
  v5 = [v3 photosAccessAllowedWithScope:7 auditToken:v7 clientAuthorization:self];

  return v5 == 0;
}

- (BOOL)isClientInLimitedLibraryMode
{
  v3 = [MEMORY[0x1E69BF2B0] sharedInstance];
  v4 = *&self->_auditToken.val[4];
  v7[0] = *self->_auditToken.val;
  v7[1] = v4;
  v5 = [v3 photosAccessAllowedWithScope:7 auditToken:v7 clientAuthorization:self];

  return v5 == 4;
}

- (void)invalidateClientAuthorizationCache
{
  [(PLLazyObject *)self->_lazyPhotosAccessAllowed resetObject];
  lazyPhotosAddAccessAllowed = self->_lazyPhotosAddAccessAllowed;

  [(PLLazyObject *)lazyPhotosAddAccessAllowed resetObject];
}

- (id)_isPhotosAddAccessAllowed
{
  v3 = [MEMORY[0x1E69BF2B0] sharedInstance];
  v4 = *&self->_auditToken.val[4];
  v7[0] = *self->_auditToken.val;
  v7[1] = v4;
  [v3 photosAccessAllowedWithScope:1 auditToken:v7 clientAuthorization:self];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:PLPhotosAccessAllowed()];

  return v5;
}

- (BOOL)isClientAuthorizedForTCCServicePhotosAdd
{
  v2 = [(PLLazyObject *)self->_lazyPhotosAddAccessAllowed objectValue];
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)_isPhotosAccessAllowed
{
  v3 = [MEMORY[0x1E69BF2B0] sharedInstance];
  v4 = *&self->_auditToken.val[4];
  v7[0] = *self->_auditToken.val;
  v7[1] = v4;
  [v3 photosAccessAllowedWithScope:7 auditToken:v7 clientAuthorization:self];

  v5 = [MEMORY[0x1E696AD98] numberWithBool:PLPhotosAccessAllowed()];

  return v5;
}

- (BOOL)isClientAuthorizedForTCCServicePhotos
{
  v2 = [(PLLazyObject *)self->_lazyPhotosAccessAllowed objectValue];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)_setupSmartSharingCacheWithConnection:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69BF2F0];
  v5 = a3;
  v6 = [v5 _xpcConnection];
  self->_smartSharingCacheReadEntitled = [v4 connection:v6 hasEntitlement:*MEMORY[0x1E69C0088]];

  v7 = MEMORY[0x1E69BF2F0];
  v8 = [v5 _xpcConnection];

  v9 = *MEMORY[0x1E69C0090];
  LODWORD(v5) = [v7 connection:v8 hasEntitlement:*MEMORY[0x1E69C0090]];

  if (v5)
  {
    if ([(NSString *)self->_trustedCallerBundleID isEqualToString:@"com.apple.photoanalysisd"]|| [(NSString *)self->_trustedCallerBundleID isEqualToString:@"com.apple.PhotoKitEntitledTests.xctrunner"])
    {
      self->_smartSharingCacheWriteEntitled = 1;
    }

    else
    {
      self->_smartSharingCacheWriteEntitled = 0;
      v10 = PLBackendGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        trustedCallerBundleID = self->_trustedCallerBundleID;
        v12 = 138412546;
        v13 = trustedCallerBundleID;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_FAULT, "BundleID: %@ not permitted for %@", &v12, 0x16u);
      }
    }
  }
}

- (void)_setupAnalyticsCacheWithConnection:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69BF2F0];
  v5 = a3;
  v6 = [v5 _xpcConnection];
  self->_analyticsCacheReadEntitled = [v4 connection:v6 hasEntitlement:*MEMORY[0x1E69C0060]];

  v7 = MEMORY[0x1E69BF2F0];
  v8 = [v5 _xpcConnection];

  v9 = *MEMORY[0x1E69C0068];
  LODWORD(v5) = [v7 connection:v8 hasEntitlement:*MEMORY[0x1E69C0068]];

  if (v5)
  {
    if ([(NSString *)self->_trustedCallerBundleID isEqualToString:@"com.apple.photoanalysisd"])
    {
      self->_analyticsCacheWriteEntitled = 1;
    }

    else
    {
      self->_analyticsCacheWriteEntitled = 0;
      v10 = PLBackendGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        trustedCallerBundleID = self->_trustedCallerBundleID;
        v12 = 138412546;
        v13 = trustedCallerBundleID;
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_FAULT, "BundleID: %@ not permitted for %@", &v12, 0x16u);
      }
    }
  }
}

- (PLAssetsdConnectionAuthorization)initWithConnection:(id)a3 daemonServices:(id)a4
{
  v104 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v101.receiver = self;
  v101.super_class = PLAssetsdConnectionAuthorization;
  v8 = [(PLAssetsdConnectionAuthorization *)&v101 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_daemonServices, a4);
    v9->_lock._os_unfair_lock_opaque = 0;
    if (v6)
    {
      [v6 auditToken];
    }

    else
    {
      memset(&token, 0, sizeof(token));
    }

    v10 = *&token.val[4];
    *v9->_auditToken.val = *token.val;
    *&v9->_auditToken.val[4] = v10;
    v11 = [v6 processIdentifier];
    v12 = MEMORY[0x1E695E480];
    v9->_clientProcessIdentifier = v11;
    v13 = *v12;
    v14 = *&v9->_auditToken.val[4];
    *token.val = *v9->_auditToken.val;
    *&token.val[4] = v14;
    v15 = SecTaskCreateWithAuditToken(v13, &token);
    v16 = v15;
    if (v15)
    {
      v17 = SecTaskCopySigningIdentifier(v15, 0);
      trustedCallerBundleID = v9->_trustedCallerBundleID;
      v9->_trustedCallerBundleID = &v17->isa;

      CFRelease(v16);
    }

    v19 = MEMORY[0x1E69BF2F0];
    v20 = [v6 _xpcConnection];
    v21 = *MEMORY[0x1E69C0058];
    v102[0] = *MEMORY[0x1E69C0050];
    v102[1] = v21;
    v102[2] = *MEMORY[0x1E69C0040];
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v102 count:3];
    v23 = [v19 connection:v20 grantedEntitlements:v22];
    photoKitEntitlements = v9->_photoKitEntitlements;
    v9->_photoKitEntitlements = v23;

    v9->_photoKitEntitled = [MEMORY[0x1E69BF2F0] containsPhotoKitEntitlement:v9->_photoKitEntitlements];
    v25 = MEMORY[0x1E69BF2F0];
    v26 = [v6 _xpcConnection];
    v9->_clientAuthorizedForLibraryUpgrade = [v25 connection:v26 hasEntitlement:*MEMORY[0x1E69C0048]];

    v27 = MEMORY[0x1E69BF2F0];
    v28 = [v6 _xpcConnection];
    v9->_cloudInternalEntitled = [v27 connection:v28 hasEntitlement:*MEMORY[0x1E69BF3B0]];

    v29 = MEMORY[0x1E69BF2F0];
    v30 = [v6 _xpcConnection];
    v9->_managedSpotlightIndexReadWriteEntitled = [v29 connection:v30 hasEntitlement:*MEMORY[0x1E69C0098]];

    v31 = MEMORY[0x1E69BF2F0];
    v32 = [v6 _xpcConnection];
    v9->_photosMessagesEntitled = [v31 connection:v32 hasEntitlement:*MEMORY[0x1E69C0080]];

    [(PLAssetsdConnectionAuthorization *)v9 _setupAnalyticsCacheWithConnection:v6];
    [(PLAssetsdConnectionAuthorization *)v9 _setupSmartSharingCacheWithConnection:v6];
    v33 = *&v9->_auditToken.val[4];
    *token.val = *v9->_auditToken.val;
    *&token.val[4] = v33;
    v34 = [MEMORY[0x1E69BF2F0] isEntitledForPhotoKitOrPrivatePhotosTCCForToken:&token];
    v9->_clientEntitledForPhotoKitOrPrivatePhotosTCC = v34;
    v9->_directDatabaseAccessAuthorized = v34;
    v35 = MEMORY[0x1E69BF2F0];
    v36 = [v6 _xpcConnection];
    v9->_directDatabaseWriteAuthorized = [v35 connection:v36 hasEntitlement:*MEMORY[0x1E69C0070]];

    v37 = *&v9->_auditToken.val[4];
    *token.val = *v9->_auditToken.val;
    *&token.val[4] = v37;
    v38 = sandbox_check_by_audit_token();
    if (v38 == -1)
    {
      v39 = PLBackendGetLog();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = *__error();
        v41 = __error();
        v42 = strerror(*v41);
        token.val[0] = 67109378;
        token.val[1] = v40;
        LOWORD(token.val[2]) = 2080;
        *(&token.val[2] + 2) = v42;
        _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_ERROR, "Error checking client sandbox: errno %d %s", &token, 0x12u);
      }
    }

    v9->_clientIsSandboxed = v38 == 1;
    v43 = MEMORY[0x1E69BF2F0];
    v44 = [v6 _xpcConnection];
    v9->_photosDataVaultEntitled = [v43 connection:v44 hasEntitlement:@"com.apple.private.security.storage.PhotosLibraries"];

    v45 = MEMORY[0x1E69BF2F0];
    v46 = [v6 _xpcConnection];
    v9->_internalDataReadWriteAuthorized = [v45 connection:v46 hasEntitlement:*MEMORY[0x1E69C0078]];

    v47 = MEMORY[0x1E69BF2F0];
    v48 = [v6 _xpcConnection];
    v9->_coreSceneUnderstandingTaxonomyReadAuthorized = [v47 connection:v48 hasEntitlement:@"com.apple.private.photos.coresceneunderstanding.taxonomy.read-only"];

    v49 = MEMORY[0x1E69BF2F0];
    v50 = [v6 _xpcConnection];
    v9->_coreSceneUnderstandingTaxonomyWriteAuthorized = [v49 connection:v50 hasEntitlement:@"com.apple.private.photos.coresceneunderstanding.taxonomy.read-write"];

    v51 = objc_initWeak(&token, v9);
    v52 = objc_alloc(MEMORY[0x1E69BF270]);
    v99[0] = MEMORY[0x1E69E9820];
    v99[1] = 3221225472;
    v99[2] = __70__PLAssetsdConnectionAuthorization_initWithConnection_daemonServices___block_invoke;
    v99[3] = &unk_1E7576828;
    objc_copyWeak(&v100, &token);
    v53 = [v52 initWithRetriableBlock:v99];
    objc_destroyWeak(&v100);
    objc_destroyWeak(&token);
    lazyPhotosAccessAllowed = v9->_lazyPhotosAccessAllowed;
    v9->_lazyPhotosAccessAllowed = v53;

    v55 = objc_initWeak(&token, v9);
    v56 = objc_alloc(MEMORY[0x1E69BF270]);
    v97[0] = MEMORY[0x1E69E9820];
    v97[1] = 3221225472;
    v97[2] = __70__PLAssetsdConnectionAuthorization_initWithConnection_daemonServices___block_invoke_2;
    v97[3] = &unk_1E7576828;
    objc_copyWeak(&v98, &token);
    v57 = [v56 initWithRetriableBlock:v97];
    objc_destroyWeak(&v98);
    objc_destroyWeak(&token);
    lazyPhotosAddAccessAllowed = v9->_lazyPhotosAddAccessAllowed;
    v9->_lazyPhotosAddAccessAllowed = v57;

    v59 = objc_initWeak(&token, v9);
    v60 = objc_alloc(MEMORY[0x1E69BF270]);
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = __70__PLAssetsdConnectionAuthorization_initWithConnection_daemonServices___block_invoke_3;
    v95[3] = &unk_1E7576828;
    objc_copyWeak(&v96, &token);
    v61 = [v60 initWithRetriableBlock:v95];
    objc_destroyWeak(&v96);
    objc_destroyWeak(&token);
    lazyTrustedCallerContainingBundleRecord = v9->_lazyTrustedCallerContainingBundleRecord;
    v9->_lazyTrustedCallerContainingBundleRecord = v61;

    v63 = objc_initWeak(&token, v9);
    v64 = objc_alloc(MEMORY[0x1E69BF270]);
    v93[0] = MEMORY[0x1E69E9820];
    v93[1] = 3221225472;
    v93[2] = __70__PLAssetsdConnectionAuthorization_initWithConnection_daemonServices___block_invoke_4;
    v93[3] = &unk_1E7576828;
    objc_copyWeak(&v94, &token);
    v65 = [v64 initWithRetriableBlock:v93];
    objc_destroyWeak(&v94);
    objc_destroyWeak(&token);
    lazyTrustedCallerDisplayName = v9->_lazyTrustedCallerDisplayName;
    v9->_lazyTrustedCallerDisplayName = v65;

    v67 = objc_initWeak(&token, v9);
    v68 = objc_alloc(MEMORY[0x1E69BF270]);
    v91[0] = MEMORY[0x1E69E9820];
    v91[1] = 3221225472;
    v91[2] = __70__PLAssetsdConnectionAuthorization_initWithConnection_daemonServices___block_invoke_5;
    v91[3] = &unk_1E7576828;
    objc_copyWeak(&v92, &token);
    v69 = [v68 initWithRetriableBlock:v91];
    objc_destroyWeak(&v92);
    objc_destroyWeak(&token);
    lazyTrustedCallerPhotoLibraryUsageDescription = v9->_lazyTrustedCallerPhotoLibraryUsageDescription;
    v9->_lazyTrustedCallerPhotoLibraryUsageDescription = v69;

    v71 = objc_initWeak(&token, v9);
    v72 = objc_alloc(MEMORY[0x1E69BF270]);
    v89[0] = MEMORY[0x1E69E9820];
    v89[1] = 3221225472;
    v89[2] = __70__PLAssetsdConnectionAuthorization_initWithConnection_daemonServices___block_invoke_6;
    v89[3] = &unk_1E7576828;
    objc_copyWeak(&v90, &token);
    v73 = [v72 initWithRetriableBlock:v89];
    objc_destroyWeak(&v90);
    objc_destroyWeak(&token);
    lazyFetchFilterIdentifier = v9->_lazyFetchFilterIdentifier;
    v9->_lazyFetchFilterIdentifier = v73;

    v75 = objc_initWeak(&token, v9);
    v76 = objc_alloc(MEMORY[0x1E69BF270]);
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 3221225472;
    v87[2] = __70__PLAssetsdConnectionAuthorization_initWithConnection_daemonServices___block_invoke_7;
    v87[3] = &unk_1E7576828;
    objc_copyWeak(&v88, &token);
    v77 = [v76 initWithBlock:v87];
    objc_destroyWeak(&v88);
    objc_destroyWeak(&token);
    lazyCaptureSessionState = v9->_lazyCaptureSessionState;
    v9->_lazyCaptureSessionState = v77;

    v79 = objc_initWeak(&token, v9);
    v80 = objc_alloc(MEMORY[0x1E69BF270]);
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __70__PLAssetsdConnectionAuthorization_initWithConnection_daemonServices___block_invoke_8;
    v85[3] = &unk_1E7576828;
    objc_copyWeak(&v86, &token);
    v81 = [v80 initWithBlock:v85];
    objc_destroyWeak(&v86);
    objc_destroyWeak(&token);
    lazyIsBackgroundResourceUploadExtensionClient = v9->_lazyIsBackgroundResourceUploadExtensionClient;
    v9->_lazyIsBackgroundResourceUploadExtensionClient = v81;

    if (v16)
    {
      [(PLAssetsdConnectionAuthorization *)v9 _trackCAConnectionEvent];
    }

    v83 = v9;
  }

  return v9;
}

id __70__PLAssetsdConnectionAuthorization_initWithConnection_daemonServices___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _isPhotosAccessAllowed];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __70__PLAssetsdConnectionAuthorization_initWithConnection_daemonServices___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _isPhotosAddAccessAllowed];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __70__PLAssetsdConnectionAuthorization_initWithConnection_daemonServices___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _trustedCallerContainingBundleRecord];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __70__PLAssetsdConnectionAuthorization_initWithConnection_daemonServices___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _trustedCallerDisplayName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __70__PLAssetsdConnectionAuthorization_initWithConnection_daemonServices___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _trustedCallerPhotoLibraryUsageDescription];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __70__PLAssetsdConnectionAuthorization_initWithConnection_daemonServices___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _fetchFilterIdentifier];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __70__PLAssetsdConnectionAuthorization_initWithConnection_daemonServices___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _captureSessionState];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __70__PLAssetsdConnectionAuthorization_initWithConnection_daemonServices___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _resourceUploadExtensionType];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end