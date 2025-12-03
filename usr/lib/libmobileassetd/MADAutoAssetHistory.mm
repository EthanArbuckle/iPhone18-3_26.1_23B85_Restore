@interface MADAutoAssetHistory
+ (id)autoAssetHistory;
+ (void)loadPersistedState;
+ (void)recordFailedOperation:(int64_t)operation fromLayer:(int64_t)layer forAssetID:(id)d withSelector:(id)selector failingWithError:(id)error forTargetOSVersion:(id)version forTargetBuildVersion:(id)buildVersion withOptionalCount:(unint64_t)self0 withRequiredCount:(unint64_t)self1 isRequired:(BOOL)self2;
+ (void)recordOperation:(int64_t)operation toHistoryType:(int64_t)type fromClient:(id)client fromLayer:(int64_t)layer forAssetID:(id)d withSelector:(id)selector withSelectors:(id)selectors usageCount:(int64_t)self0 configuredCount:(int64_t)self1 requestedCount:(int64_t)self2 fromPallasCount:(int64_t)self3 vendingCount:(int64_t)self4 forClientDomainName:(id)self5 forAssetSetIdentifier:(id)self6 forAtomicInstance:(id)self7 withAddendumMessage:(id)self8 forPushChannelID:(id)self9 forPopulationType:(id)populationType forTargetOSVersion:(id)version forTargetBuildVersion:(id)buildVersion withOptionalCount:(unint64_t)optionalCount withRequiredCount:(unint64_t)requiredCount required:(id)required failingWithError:(id)error;
+ (void)recordOperation:(int64_t)operation toHistoryType:(int64_t)type fromLayer:(int64_t)layer forAssetID:(id)d withSelector:(id)selector forTargetOSVersion:(id)version forTargetBuildVersion:(id)buildVersion withOptionalCount:(unint64_t)self0 withRequiredCount:(unint64_t)self1 isRequired:(BOOL)self2;
+ (void)recordOperation:(int64_t)operation toHistoryType:(int64_t)type fromLayer:(int64_t)layer fromClient:(id)client forTargetOSVersion:(id)version forTargetBuildVersion:(id)buildVersion isRequired:(BOOL)required;
+ (void)recordOperation:(int64_t)operation toHistoryType:(int64_t)type fromLayer:(int64_t)layer withSelector:(id)selector forTargetOSVersion:(id)version forTargetBuildVersion:(id)buildVersion isRequired:(BOOL)required;
- (MADAutoAssetHistory)init;
- (id)_trackerForHistoryType:(int64_t)type;
@end

@implementation MADAutoAssetHistory

- (MADAutoAssetHistory)init
{
  v24.receiver = self;
  v24.super_class = MADAutoAssetHistory;
  v2 = [(MADAutoAssetHistory *)&v24 init];
  if (v2)
  {
    uTF8String = [@"com.apple.MobileAsset.daemon.autoassethistory" UTF8String];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create(uTF8String, v4);
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
  historyProtectionQueue = [v2 historyProtectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __41__MADAutoAssetHistory_loadPersistedState__block_invoke;
  block[3] = &unk_4B2AA0;
  v6 = v2;
  v4 = v2;
  dispatch_async(historyProtectionQueue, block);
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

+ (void)recordOperation:(int64_t)operation toHistoryType:(int64_t)type fromLayer:(int64_t)layer fromClient:(id)client forTargetOSVersion:(id)version forTargetBuildVersion:(id)buildVersion isRequired:(BOOL)required
{
  buildVersionCopy = buildVersion;
  versionCopy = version;
  clientCopy = client;
  v17 = [NSNumber numberWithBool:required];
  [MADAutoAssetHistory recordOperation:operation toHistoryType:type fromClient:clientCopy fromLayer:layer forAssetID:0 withSelector:0 withSelectors:0 usageCount:-1 configuredCount:-1 requestedCount:-1 fromPallasCount:-1 vendingCount:-1 forClientDomainName:0 forAssetSetIdentifier:0 forAtomicInstance:0 withAddendumMessage:0 forPushChannelID:0 forPopulationType:0 forTargetOSVersion:versionCopy forTargetBuildVersion:buildVersionCopy withOptionalCount:0 withRequiredCount:0 required:v17 failingWithError:0];
}

+ (void)recordOperation:(int64_t)operation toHistoryType:(int64_t)type fromLayer:(int64_t)layer withSelector:(id)selector forTargetOSVersion:(id)version forTargetBuildVersion:(id)buildVersion isRequired:(BOOL)required
{
  buildVersionCopy = buildVersion;
  versionCopy = version;
  selectorCopy = selector;
  v17 = [NSNumber numberWithBool:required];
  [MADAutoAssetHistory recordOperation:operation toHistoryType:type fromClient:0 fromLayer:layer forAssetID:0 withSelector:selectorCopy withSelectors:0 usageCount:-1 configuredCount:-1 requestedCount:-1 fromPallasCount:-1 vendingCount:-1 forClientDomainName:0 forAssetSetIdentifier:0 forAtomicInstance:0 withAddendumMessage:0 forPushChannelID:0 forPopulationType:0 forTargetOSVersion:versionCopy forTargetBuildVersion:buildVersionCopy withOptionalCount:0 withRequiredCount:0 required:v17 failingWithError:0];
}

+ (void)recordOperation:(int64_t)operation toHistoryType:(int64_t)type fromLayer:(int64_t)layer forAssetID:(id)d withSelector:(id)selector forTargetOSVersion:(id)version forTargetBuildVersion:(id)buildVersion withOptionalCount:(unint64_t)self0 withRequiredCount:(unint64_t)self1 isRequired:(BOOL)self2
{
  buildVersionCopy = buildVersion;
  versionCopy = version;
  selectorCopy = selector;
  dCopy = d;
  v20 = [NSNumber numberWithBool:required];
  [MADAutoAssetHistory recordOperation:operation toHistoryType:type fromClient:0 fromLayer:layer forAssetID:dCopy withSelector:selectorCopy withSelectors:0 usageCount:-1 configuredCount:-1 requestedCount:-1 fromPallasCount:-1 vendingCount:-1 forClientDomainName:0 forAssetSetIdentifier:0 forAtomicInstance:0 withAddendumMessage:0 forPushChannelID:0 forPopulationType:0 forTargetOSVersion:versionCopy forTargetBuildVersion:buildVersionCopy withOptionalCount:count withRequiredCount:requiredCount required:v20 failingWithError:0];
}

+ (void)recordFailedOperation:(int64_t)operation fromLayer:(int64_t)layer forAssetID:(id)d withSelector:(id)selector failingWithError:(id)error forTargetOSVersion:(id)version forTargetBuildVersion:(id)buildVersion withOptionalCount:(unint64_t)self0 withRequiredCount:(unint64_t)self1 isRequired:(BOOL)self2
{
  buildVersionCopy = buildVersion;
  versionCopy = version;
  errorCopy = error;
  selectorCopy = selector;
  dCopy = d;
  v21 = [NSNumber numberWithBool:required];
  [MADAutoAssetHistory recordOperation:operation toHistoryType:3 fromClient:0 fromLayer:layer forAssetID:dCopy withSelector:selectorCopy withSelectors:0 usageCount:-1 configuredCount:-1 requestedCount:-1 fromPallasCount:-1 vendingCount:-1 forClientDomainName:0 forAssetSetIdentifier:0 forAtomicInstance:0 withAddendumMessage:0 forPushChannelID:0 forPopulationType:0 forTargetOSVersion:versionCopy forTargetBuildVersion:buildVersionCopy withOptionalCount:count withRequiredCount:requiredCount required:v21 failingWithError:errorCopy];
}

+ (void)recordOperation:(int64_t)operation toHistoryType:(int64_t)type fromClient:(id)client fromLayer:(int64_t)layer forAssetID:(id)d withSelector:(id)selector withSelectors:(id)selectors usageCount:(int64_t)self0 configuredCount:(int64_t)self1 requestedCount:(int64_t)self2 fromPallasCount:(int64_t)self3 vendingCount:(int64_t)self4 forClientDomainName:(id)self5 forAssetSetIdentifier:(id)self6 forAtomicInstance:(id)self7 withAddendumMessage:(id)self8 forPushChannelID:(id)self9 forPopulationType:(id)populationType forTargetOSVersion:(id)version forTargetBuildVersion:(id)buildVersion withOptionalCount:(unint64_t)optionalCount withRequiredCount:(unint64_t)requiredCount required:(id)required failingWithError:(id)error
{
  clientCopy = client;
  dCopy = d;
  selectorCopy = selector;
  selectorsCopy = selectors;
  nameCopy = name;
  identifierCopy = identifier;
  instanceCopy = instance;
  messageCopy = message;
  iDCopy = iD;
  populationTypeCopy = populationType;
  versionCopy = version;
  buildVersionCopy = buildVersion;
  requiredCopy = required;
  errorCopy = error;
  v45 = +[MADAutoAssetHistory autoAssetHistory];
  queue = [v45 historyProtectionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __401__MADAutoAssetHistory_recordOperation_toHistoryType_fromClient_fromLayer_forAssetID_withSelector_withSelectors_usageCount_configuredCount_requestedCount_fromPallasCount_vendingCount_forClientDomainName_forAssetSetIdentifier_forAtomicInstance_withAddendumMessage_forPushChannelID_forPopulationType_forTargetOSVersion_forTargetBuildVersion_withOptionalCount_withRequiredCount_required_failingWithError___block_invoke;
  block[3] = &unk_4B3778;
  v63 = v45;
  v64 = clientCopy;
  operationCopy = operation;
  layerCopy = layer;
  v65 = dCopy;
  v66 = selectorCopy;
  v81 = *&count;
  v82 = *&requestedCount;
  v67 = selectorsCopy;
  v68 = nameCopy;
  v69 = identifierCopy;
  v70 = instanceCopy;
  v71 = messageCopy;
  v72 = iDCopy;
  v73 = populationTypeCopy;
  v74 = versionCopy;
  vendingCountCopy = vendingCount;
  optionalCountCopy = optionalCount;
  requiredCountCopy = requiredCount;
  v75 = buildVersionCopy;
  v76 = requiredCopy;
  v77 = errorCopy;
  typeCopy = type;
  v57 = errorCopy;
  v55 = requiredCopy;
  v54 = buildVersionCopy;
  v53 = versionCopy;
  v51 = populationTypeCopy;
  v50 = iDCopy;
  v48 = messageCopy;
  v47 = instanceCopy;
  v34 = identifierCopy;
  v35 = nameCopy;
  v36 = selectorsCopy;
  v37 = selectorCopy;
  v38 = dCopy;
  v39 = clientCopy;
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

- (id)_trackerForHistoryType:(int64_t)type
{
  historyProtectionQueue = [(MADAutoAssetHistory *)self historyProtectionQueue];
  dispatch_assert_queue_V2(historyProtectionQueue);

  if (type <= 3)
  {
    if (type <= 1)
    {
      if (!type)
      {
        trackerFilesystem = [(MADAutoAssetHistory *)self trackerFilesystem];
        goto LABEL_22;
      }

      if (type == 1)
      {
        trackerFilesystem = [(MADAutoAssetHistory *)self trackerLocker];
        goto LABEL_22;
      }

      goto LABEL_19;
    }

    if (type == 2)
    {
      [(MADAutoAssetHistory *)self trackerAtomic];
    }

    else
    {
      [(MADAutoAssetHistory *)self trackerError];
    }

    trackerFilesystem = LABEL_9:;
    goto LABEL_22;
  }

  if (type <= 5)
  {
    if (type == 4)
    {
      [(MADAutoAssetHistory *)self trackerStager];
    }

    else
    {
      [(MADAutoAssetHistory *)self trackerScheduler];
    }

    goto LABEL_9;
  }

  if (type == 6)
  {
    trackerFilesystem = [(MADAutoAssetHistory *)self trackerSecure];
    goto LABEL_22;
  }

  if (type == 7)
  {
    trackerFilesystem = [(MADAutoAssetHistory *)self trackerPushNotification];
    goto LABEL_22;
  }

LABEL_19:
  v7 = _MADLog(@"AutoHistory");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "{AUTO-HISTORY:_trackerForHistoryType} | invalid history-type:%ld", &v9, 0xCu);
  }

  trackerFilesystem = 0;
LABEL_22:

  return trackerFilesystem;
}

@end