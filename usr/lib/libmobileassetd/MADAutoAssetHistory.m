@interface MADAutoAssetHistory
+ (id)autoAssetHistory;
+ (void)loadPersistedState;
+ (void)recordFailedOperation:(int64_t)a3 fromLayer:(int64_t)a4 forAssetID:(id)a5 withSelector:(id)a6 failingWithError:(id)a7 forTargetOSVersion:(id)a8 forTargetBuildVersion:(id)a9 withOptionalCount:(unint64_t)a10 withRequiredCount:(unint64_t)a11 isRequired:(BOOL)a12;
+ (void)recordOperation:(int64_t)a3 toHistoryType:(int64_t)a4 fromClient:(id)a5 fromLayer:(int64_t)a6 forAssetID:(id)a7 withSelector:(id)a8 withSelectors:(id)a9 usageCount:(int64_t)a10 configuredCount:(int64_t)a11 requestedCount:(int64_t)a12 fromPallasCount:(int64_t)a13 vendingCount:(int64_t)a14 forClientDomainName:(id)a15 forAssetSetIdentifier:(id)a16 forAtomicInstance:(id)a17 withAddendumMessage:(id)a18 forPushChannelID:(id)a19 forPopulationType:(id)a20 forTargetOSVersion:(id)a21 forTargetBuildVersion:(id)a22 withOptionalCount:(unint64_t)a23 withRequiredCount:(unint64_t)a24 required:(id)a25 failingWithError:(id)a26;
+ (void)recordOperation:(int64_t)a3 toHistoryType:(int64_t)a4 fromLayer:(int64_t)a5 forAssetID:(id)a6 withSelector:(id)a7 forTargetOSVersion:(id)a8 forTargetBuildVersion:(id)a9 withOptionalCount:(unint64_t)a10 withRequiredCount:(unint64_t)a11 isRequired:(BOOL)a12;
+ (void)recordOperation:(int64_t)a3 toHistoryType:(int64_t)a4 fromLayer:(int64_t)a5 fromClient:(id)a6 forTargetOSVersion:(id)a7 forTargetBuildVersion:(id)a8 isRequired:(BOOL)a9;
+ (void)recordOperation:(int64_t)a3 toHistoryType:(int64_t)a4 fromLayer:(int64_t)a5 withSelector:(id)a6 forTargetOSVersion:(id)a7 forTargetBuildVersion:(id)a8 isRequired:(BOOL)a9;
- (MADAutoAssetHistory)init;
- (id)_trackerForHistoryType:(int64_t)a3;
@end

@implementation MADAutoAssetHistory

- (MADAutoAssetHistory)init
{
  v24.receiver = self;
  v24.super_class = MADAutoAssetHistory;
  v2 = [(MADAutoAssetHistory *)&v24 init];
  if (v2)
  {
    v3 = [@"com.apple.MobileAsset.daemon.autoassethistory" UTF8String];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create(v3, v4);
    historyProtectionQueue = v2->_historyProtectionQueue;
    v2->_historyProtectionQueue = v5;

    v7 = [[MADAutoAssetHistoryTracker alloc] initForHistoryType:0 withMaximumFilesystemBytes:785971 usingProtectionQueue:v2->_historyProtectionQueue];
    trackerFilesystem = v2->_trackerFilesystem;
    v2->_trackerFilesystem = v7;

    v9 = [[MADAutoAssetHistoryTracker alloc] initForHistoryType:1 withMaximumFilesystemBytes:636262 usingProtectionQueue:v2->_historyProtectionQueue];
    trackerLocker = v2->_trackerLocker;
    v2->_trackerLocker = v9;

    v11 = [[MADAutoAssetHistoryTracker alloc] initForHistoryType:3 withMaximumFilesystemBytes:636262 usingProtectionQueue:v2->_historyProtectionQueue];
    trackerError = v2->_trackerError;
    v2->_trackerError = v11;

    v13 = [[MADAutoAssetHistoryTracker alloc] initForHistoryType:2 withMaximumFilesystemBytes:636262 usingProtectionQueue:v2->_historyProtectionQueue];
    trackerAtomic = v2->_trackerAtomic;
    v2->_trackerAtomic = v13;

    v15 = [[MADAutoAssetHistoryTracker alloc] initForHistoryType:4 withMaximumFilesystemBytes:636262 usingProtectionQueue:v2->_historyProtectionQueue];
    trackerStager = v2->_trackerStager;
    v2->_trackerStager = v15;

    v17 = [[MADAutoAssetHistoryTracker alloc] initForHistoryType:5 withMaximumFilesystemBytes:636262 usingProtectionQueue:v2->_historyProtectionQueue];
    trackerScheduler = v2->_trackerScheduler;
    v2->_trackerScheduler = v17;

    v19 = [[MADAutoAssetHistoryTracker alloc] initForHistoryType:6 withMaximumFilesystemBytes:636262 usingProtectionQueue:v2->_historyProtectionQueue];
    trackerSecure = v2->_trackerSecure;
    v2->_trackerSecure = v19;

    v21 = [[MADAutoAssetHistoryTracker alloc] initForHistoryType:7 withMaximumFilesystemBytes:636262 usingProtectionQueue:v2->_historyProtectionQueue];
    trackerPushNotification = v2->_trackerPushNotification;
    v2->_trackerPushNotification = v21;

    v2->_persistedStateLoaded = 0;
  }

  return v2;
}

+ (id)autoAssetHistory
{
  if (autoAssetHistory_dispatchOnceAutoAssetHistory != -1)
  {
    +[MADAutoAssetHistory autoAssetHistory];
  }

  v3 = autoAssetHistory___autoAssetHistory;

  return v3;
}

void __39__MADAutoAssetHistory_autoAssetHistory__block_invoke(id a1)
{
  autoAssetHistory___autoAssetHistory = objc_alloc_init(MADAutoAssetHistory);

  _objc_release_x1();
}

+ (void)loadPersistedState
{
  v2 = +[MADAutoAssetHistory autoAssetHistory];
  v3 = [v2 historyProtectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __41__MADAutoAssetHistory_loadPersistedState__block_invoke;
  block[3] = &unk_4B2AA0;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

id __41__MADAutoAssetHistory_loadPersistedState__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) persistedStateLoaded];
  if ((result & 1) == 0)
  {
    v3 = [*(a1 + 32) trackerFilesystem];
    [v3 loadPersistedState];

    v4 = [*(a1 + 32) trackerLocker];
    [v4 loadPersistedState];

    v5 = [*(a1 + 32) trackerAtomic];
    [v5 loadPersistedState];

    v6 = [*(a1 + 32) trackerError];
    [v6 loadPersistedState];

    v7 = [*(a1 + 32) trackerStager];
    [v7 loadPersistedState];

    v8 = [*(a1 + 32) trackerScheduler];
    [v8 loadPersistedState];

    v9 = [*(a1 + 32) trackerSecure];
    [v9 loadPersistedState];

    v10 = [*(a1 + 32) trackerPushNotification];
    [v10 loadPersistedState];

    v11 = *(a1 + 32);

    return [v11 setPersistedStateLoaded:1];
  }

  return result;
}

+ (void)recordOperation:(int64_t)a3 toHistoryType:(int64_t)a4 fromLayer:(int64_t)a5 fromClient:(id)a6 forTargetOSVersion:(id)a7 forTargetBuildVersion:(id)a8 isRequired:(BOOL)a9
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = [NSNumber numberWithBool:a9];
  [MADAutoAssetHistory recordOperation:a3 toHistoryType:a4 fromClient:v16 fromLayer:a5 forAssetID:0 withSelector:0 withSelectors:0 usageCount:-1 configuredCount:-1 requestedCount:-1 fromPallasCount:-1 vendingCount:-1 forClientDomainName:0 forAssetSetIdentifier:0 forAtomicInstance:0 withAddendumMessage:0 forPushChannelID:0 forPopulationType:0 forTargetOSVersion:v15 forTargetBuildVersion:v14 withOptionalCount:0 withRequiredCount:0 required:v17 failingWithError:0];
}

+ (void)recordOperation:(int64_t)a3 toHistoryType:(int64_t)a4 fromLayer:(int64_t)a5 withSelector:(id)a6 forTargetOSVersion:(id)a7 forTargetBuildVersion:(id)a8 isRequired:(BOOL)a9
{
  v14 = a8;
  v15 = a7;
  v16 = a6;
  v17 = [NSNumber numberWithBool:a9];
  [MADAutoAssetHistory recordOperation:a3 toHistoryType:a4 fromClient:0 fromLayer:a5 forAssetID:0 withSelector:v16 withSelectors:0 usageCount:-1 configuredCount:-1 requestedCount:-1 fromPallasCount:-1 vendingCount:-1 forClientDomainName:0 forAssetSetIdentifier:0 forAtomicInstance:0 withAddendumMessage:0 forPushChannelID:0 forPopulationType:0 forTargetOSVersion:v15 forTargetBuildVersion:v14 withOptionalCount:0 withRequiredCount:0 required:v17 failingWithError:0];
}

+ (void)recordOperation:(int64_t)a3 toHistoryType:(int64_t)a4 fromLayer:(int64_t)a5 forAssetID:(id)a6 withSelector:(id)a7 forTargetOSVersion:(id)a8 forTargetBuildVersion:(id)a9 withOptionalCount:(unint64_t)a10 withRequiredCount:(unint64_t)a11 isRequired:(BOOL)a12
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = [NSNumber numberWithBool:a12];
  [MADAutoAssetHistory recordOperation:a3 toHistoryType:a4 fromClient:0 fromLayer:a5 forAssetID:v19 withSelector:v18 withSelectors:0 usageCount:-1 configuredCount:-1 requestedCount:-1 fromPallasCount:-1 vendingCount:-1 forClientDomainName:0 forAssetSetIdentifier:0 forAtomicInstance:0 withAddendumMessage:0 forPushChannelID:0 forPopulationType:0 forTargetOSVersion:v17 forTargetBuildVersion:v16 withOptionalCount:a10 withRequiredCount:a11 required:v20 failingWithError:0];
}

+ (void)recordFailedOperation:(int64_t)a3 fromLayer:(int64_t)a4 forAssetID:(id)a5 withSelector:(id)a6 failingWithError:(id)a7 forTargetOSVersion:(id)a8 forTargetBuildVersion:(id)a9 withOptionalCount:(unint64_t)a10 withRequiredCount:(unint64_t)a11 isRequired:(BOOL)a12
{
  v16 = a9;
  v17 = a8;
  v18 = a7;
  v19 = a6;
  v20 = a5;
  v21 = [NSNumber numberWithBool:a12];
  [MADAutoAssetHistory recordOperation:a3 toHistoryType:3 fromClient:0 fromLayer:a4 forAssetID:v20 withSelector:v19 withSelectors:0 usageCount:-1 configuredCount:-1 requestedCount:-1 fromPallasCount:-1 vendingCount:-1 forClientDomainName:0 forAssetSetIdentifier:0 forAtomicInstance:0 withAddendumMessage:0 forPushChannelID:0 forPopulationType:0 forTargetOSVersion:v17 forTargetBuildVersion:v16 withOptionalCount:a10 withRequiredCount:a11 required:v21 failingWithError:v18];
}

+ (void)recordOperation:(int64_t)a3 toHistoryType:(int64_t)a4 fromClient:(id)a5 fromLayer:(int64_t)a6 forAssetID:(id)a7 withSelector:(id)a8 withSelectors:(id)a9 usageCount:(int64_t)a10 configuredCount:(int64_t)a11 requestedCount:(int64_t)a12 fromPallasCount:(int64_t)a13 vendingCount:(int64_t)a14 forClientDomainName:(id)a15 forAssetSetIdentifier:(id)a16 forAtomicInstance:(id)a17 withAddendumMessage:(id)a18 forPushChannelID:(id)a19 forPopulationType:(id)a20 forTargetOSVersion:(id)a21 forTargetBuildVersion:(id)a22 withOptionalCount:(unint64_t)a23 withRequiredCount:(unint64_t)a24 required:(id)a25 failingWithError:(id)a26
{
  v61 = a5;
  v60 = a7;
  v59 = a8;
  v58 = a9;
  v28 = a15;
  v44 = a16;
  v29 = a17;
  v30 = a18;
  v31 = a19;
  v32 = a20;
  v42 = a21;
  v43 = a22;
  v41 = a25;
  v33 = a26;
  v45 = +[MADAutoAssetHistory autoAssetHistory];
  queue = [v45 historyProtectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __401__MADAutoAssetHistory_recordOperation_toHistoryType_fromClient_fromLayer_forAssetID_withSelector_withSelectors_usageCount_configuredCount_requestedCount_fromPallasCount_vendingCount_forClientDomainName_forAssetSetIdentifier_forAtomicInstance_withAddendumMessage_forPushChannelID_forPopulationType_forTargetOSVersion_forTargetBuildVersion_withOptionalCount_withRequiredCount_required_failingWithError___block_invoke;
  block[3] = &unk_4B3778;
  v63 = v45;
  v64 = v61;
  v79 = a3;
  v80 = a6;
  v65 = v60;
  v66 = v59;
  v81 = *&a10;
  v82 = *&a12;
  v67 = v58;
  v68 = v28;
  v69 = v44;
  v70 = v29;
  v71 = v30;
  v72 = v31;
  v73 = v32;
  v74 = v42;
  v83 = a14;
  v84 = a23;
  v85 = a24;
  v75 = v43;
  v76 = v41;
  v77 = v33;
  v78 = a4;
  v57 = v33;
  v55 = v41;
  v54 = v43;
  v53 = v42;
  v51 = v32;
  v50 = v31;
  v48 = v30;
  v47 = v29;
  v34 = v44;
  v35 = v28;
  v36 = v58;
  v37 = v59;
  v38 = v60;
  v39 = v61;
  v40 = v45;
  dispatch_async(queue, block);
}

void __401__MADAutoAssetHistory_recordOperation_toHistoryType_fromClient_fromLayer_forAssetID_withSelector_withSelectors_usageCount_configuredCount_requestedCount_fromPallasCount_vendingCount_forClientDomainName_forAssetSetIdentifier_forAtomicInstance_withAddendumMessage_forPushChannelID_forPopulationType_forTargetOSVersion_forTargetBuildVersion_withOptionalCount_withRequiredCount_required_failingWithError___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) persistedStateLoaded])
  {
    v2 = [*(a1 + 32) _trackerForHistoryType:*(a1 + 152)];
    if (v2)
    {
      v3 = v2;
      [v2 recordHistoryEntry:*(a1 + 160) toHistoryType:*(a1 + 152) fromClient:*(a1 + 40) fromLayer:*(a1 + 168) forAssetID:*(a1 + 48) withSelector:*(a1 + 56) withSelectors:*(a1 + 64) usageCount:*(a1 + 176) configuredCount:*(a1 + 184) requestedCount:*(a1 + 192) fromPallasCount:*(a1 + 200) vendingCount:*(a1 + 208) forClientDomainName:*(a1 + 72) forAssetSetIdentifier:*(a1 + 80) forAtomicInstance:*(a1 + 88) withAddendumMessage:*(a1 + 96) forPushChannelID:*(a1 + 104) forPopulationType:*(a1 + 112) forTargetOSVersion:*(a1 + 120) forTargetBuildVersion:*(a1 + 128) withOptionalCount:*(a1 + 216) withRequiredCount:*(a1 + 224) isRequired:*(a1 + 136) failingWithError:*(a1 + 144)];
      v2 = v3;
    }
  }
}

- (id)_trackerForHistoryType:(int64_t)a3
{
  v5 = [(MADAutoAssetHistory *)self historyProtectionQueue];
  dispatch_assert_queue_V2(v5);

  if (a3 <= 3)
  {
    if (a3 <= 1)
    {
      if (!a3)
      {
        v6 = [(MADAutoAssetHistory *)self trackerFilesystem];
        goto LABEL_22;
      }

      if (a3 == 1)
      {
        v6 = [(MADAutoAssetHistory *)self trackerLocker];
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    if (a3 == 2)
    {
      [(MADAutoAssetHistory *)self trackerAtomic];
    }

    else
    {
      [(MADAutoAssetHistory *)self trackerError];
    }

    v6 = LABEL_9:;
    goto LABEL_22;
  }

  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      [(MADAutoAssetHistory *)self trackerStager];
    }

    else
    {
      [(MADAutoAssetHistory *)self trackerScheduler];
    }

    goto LABEL_9;
  }

  if (a3 == 6)
  {
    v6 = [(MADAutoAssetHistory *)self trackerSecure];
    goto LABEL_22;
  }

  if (a3 == 7)
  {
    v6 = [(MADAutoAssetHistory *)self trackerPushNotification];
    goto LABEL_22;
  }

LABEL_19:
  v7 = _MADLog(@"AutoHistory");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY:_trackerForHistoryType} | invalid history-type:%ld", &v9, 0xCu);
  }

  v6 = 0;
LABEL_22:

  return v6;
}

@end