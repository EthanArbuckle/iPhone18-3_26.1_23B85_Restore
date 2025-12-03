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
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    trustedCallerBundleID = v3->_trustedCallerBundleID;
    v3->_trustedCallerBundleID = bundleIdentifier;

    trustedCallerContainingBundleRecord = v3->_trustedCallerContainingBundleRecord;
    v3->_trustedCallerContainingBundleRecord = 0;

    mainBundle2 = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier2 = [mainBundle2 bundleIdentifier];
    trustedCallerDisplayName = v3->_trustedCallerDisplayName;
    v3->_trustedCallerDisplayName = bundleIdentifier2;

    v3->_clientProcessIdentifier = getpid();
    *&v3->_directDatabaseAccessAuthorized = 257;
    v3->_limitedLibraryMode = 0;
    v3->_clientIsSandboxed = 1;
    v3->_managedSpotlightIndexReadWriteEntitled = 0;
    none = [MEMORY[0x1E69BF1C8] none];
    captureSessionState = v3->_captureSessionState;
    v3->_captureSessionState = none;

    v3->_isBackgroundResourceUploadExtensionClient = 0;
  }

  return v3;
}

@end