@interface PLCloudSharingResetJob
+ (void)resetAllLocalState;
- (void)runDaemonSide;
@end

@implementation PLCloudSharingResetJob

- (void)runDaemonSide
{
  v3 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudSharingResetJob runDaemonSide]"];
  lowPriorityOperationQueue = [objc_opt_class() lowPriorityOperationQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__PLCloudSharingResetJob_runDaemonSide__block_invoke;
  v6[3] = &unk_1E7578848;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [lowPriorityOperationQueue addOperationWithBlock:v6];
}

void __39__PLCloudSharingResetJob_runDaemonSide__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) transientPhotoLibrary];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__PLCloudSharingResetJob_runDaemonSide__block_invoke_2;
  v7[3] = &unk_1E75781E8;
  v8 = v3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__PLCloudSharingResetJob_runDaemonSide__block_invoke_3;
  v6[3] = &unk_1E75781E8;
  v6[4] = *(a1 + 32);
  v4 = v3;
  [v4 performTransactionAndWait:v7 completionHandler:v6];
  v5.receiver = *(a1 + 32);
  v5.super_class = PLCloudSharingResetJob;
  objc_msgSendSuper2(&v5, sel_runDaemonSide);
  [*(a1 + 40) stillAlive];

  objc_autoreleasePoolPop(v2);
}

void __39__PLCloudSharingResetJob_runDaemonSide__block_invoke_2(uint64_t a1)
{
  v2 = [PLAssetTransactionReason transactionReason:@"[PLCloudSharingResetJob]Resetting Shared Streams."];
  [PLCloudSharingEnablingJob deleteAllLocalSharedAlbumsInLibrary:*(a1 + 32) keepPendingAlbums:0 withReason:v2];
}

void __39__PLCloudSharingResetJob_runDaemonSide__block_invoke_3(uint64_t a1)
{
  v2 = +[PLNotificationManager sharedManager];
  [v2 discardAllNotifications];

  v3 = [PLCloudFeedEntriesManager alloc];
  v4 = [*(a1 + 32) transientPhotoLibrary];
  v5 = [(PLCloudFeedEntriesManager *)v3 initWithPhotoLibrary:v4];

  [(PLCloudFeedEntriesManager *)v5 rebuildAllEntries:0];
}

+ (void)resetAllLocalState
{
  v2 = objc_opt_new();
  [v2 runAndWaitForMessageToBeSent];
}

@end