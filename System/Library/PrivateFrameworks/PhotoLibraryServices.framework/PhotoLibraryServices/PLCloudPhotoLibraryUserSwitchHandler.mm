@interface PLCloudPhotoLibraryUserSwitchHandler
- (PLCloudPhotoLibraryUserSwitchHandler)init;
- (void)dealloc;
- (void)willSwitchUser;
@end

@implementation PLCloudPhotoLibraryUserSwitchHandler

- (void)willSwitchUser
{
  sessionHandler = [(PLCloudPhotoLibraryUserSwitchHandler *)self sessionHandler];
  if (sessionHandler)
  {
    v3 = [MEMORY[0x1E69DF090] taskWithName:@"CPLEnqueuePendingUploads" reason:@"Enqueing pending derivative generation and CPL uploads" forBundleID:@"com.apple.cloudphotod"];
    [v3 begin];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__PLCloudPhotoLibraryUserSwitchHandler_willSwitchUser__block_invoke;
    v5[3] = &unk_1E75781E8;
    v6 = v3;
    v4 = v3;
    [sessionHandler endUserSessionWithCompletionHandler:v5];
  }
}

- (void)dealloc
{
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  [mEMORY[0x1E69DF068] unregisterStakeHolder:self status:0 reason:@"dealloc"];

  v4.receiver = self;
  v4.super_class = PLCloudPhotoLibraryUserSwitchHandler;
  [(PLCloudPhotoLibraryUserSwitchHandler *)&v4 dealloc];
}

- (PLCloudPhotoLibraryUserSwitchHandler)init
{
  if ((PLIsEDUMode() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCloudPhotoLibraryUserSwitchHandler.m" lineNumber:23 description:@"Should only be created in EDU mode"];
  }

  v8.receiver = self;
  v8.super_class = PLCloudPhotoLibraryUserSwitchHandler;
  v4 = [(PLCloudPhotoLibraryUserSwitchHandler *)&v8 init];
  if (v4)
  {
    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    [mEMORY[0x1E69DF068] registerUserSwitchStakeHolder:v4];
  }

  return v4;
}

@end