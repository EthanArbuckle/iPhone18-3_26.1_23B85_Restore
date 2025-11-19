@interface PLAssetsdCrashRecoveryClientAuthorization
- (PLAssetsdCrashRecoveryClientAuthorization)init;
@end

@implementation PLAssetsdCrashRecoveryClientAuthorization

- (PLAssetsdCrashRecoveryClientAuthorization)init
{
  v14.receiver = self;
  v14.super_class = PLAssetsdCrashRecoveryClientAuthorization;
  v2 = [(PLAssetsdCrashRecoveryClientAuthorization *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_clientIsSandboxed = 1;
    v4 = [MEMORY[0x1E696AAE8] mainBundle];
    v5 = [v4 bundleIdentifier];
    trustedCallerBundleID = v3->_trustedCallerBundleID;
    v3->_trustedCallerBundleID = v5;

    trustedCallerContainingBundleRecord = v3->_trustedCallerContainingBundleRecord;
    v3->_trustedCallerContainingBundleRecord = 0;

    v8 = [MEMORY[0x1E696AAE8] mainBundle];
    v9 = [v8 bundleIdentifier];
    trustedCallerDisplayName = v3->_trustedCallerDisplayName;
    v3->_trustedCallerDisplayName = v9;

    v3->_clientProcessIdentifier = getpid();
    *&v3->_directDatabaseAccessAuthorized = 257;
    v3->_limitedLibraryMode = 0;
    v3->_clientIsSandboxed = 1;
    v3->_managedSpotlightIndexReadWriteEntitled = 0;
    v11 = [MEMORY[0x1E69BF1C8] none];
    captureSessionState = v3->_captureSessionState;
    v3->_captureSessionState = v11;

    v3->_isBackgroundResourceUploadExtensionClient = 0;
  }

  return v3;
}

@end