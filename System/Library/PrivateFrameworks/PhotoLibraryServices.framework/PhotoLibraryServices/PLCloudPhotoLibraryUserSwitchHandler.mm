@interface PLCloudPhotoLibraryUserSwitchHandler
- (PLCloudPhotoLibraryUserSwitchHandler)init;
- (void)dealloc;
- (void)willSwitchUser;
@end

@implementation PLCloudPhotoLibraryUserSwitchHandler

- (void)willSwitchUser
{
  v2 = [(PLCloudPhotoLibraryUserSwitchHandler *)self sessionHandler];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DF090] taskWithName:@"CPLEnqueuePendingUploads" reason:@"Enqueing pending derivative generation and CPL uploads" forBundleID:@"com.apple.cloudphotod"];
    [v3 begin];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __54__PLCloudPhotoLibraryUserSwitchHandler_willSwitchUser__block_invoke;
    v5[3] = &unk_1E75781E8;
    v6 = v3;
    v4 = v3;
    [v2 endUserSessionWithCompletionHandler:v5];
  }
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E69DF068] sharedManager];
  [v3 unregisterStakeHolder:self status:0 reason:@"dealloc"];

  v4.receiver = self;
  v4.super_class = PLCloudPhotoLibraryUserSwitchHandler;
  [(PLCloudPhotoLibraryUserSwitchHandler *)&v4 dealloc];
}

- (PLCloudPhotoLibraryUserSwitchHandler)init
{
  if ((PLIsEDUMode() & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PLCloudPhotoLibraryUserSwitchHandler.m" lineNumber:23 description:@"Should only be created in EDU mode"];
  }

  v8.receiver = self;
  v8.super_class = PLCloudPhotoLibraryUserSwitchHandler;
  v4 = [(PLCloudPhotoLibraryUserSwitchHandler *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DF068] sharedManager];
    [v5 registerUserSwitchStakeHolder:v4];
  }

  return v4;
}

@end