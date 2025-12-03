@interface MADAutoAssetLocker
+ (BOOL)continuedLockByClient:(id)client forAssetSelector:(id)selector forLockReason:(id)reason withUsagePolicy:(id)policy continueError:(id *)error;
+ (BOOL)continuedSetLockByClient:(id)client forSetDescriptor:(id)descriptor forLockReason:(id)reason withSetUsagePolicy:(id)policy continueError:(id *)error;
+ (BOOL)endedAllPreviousLocksByClient:(id)client forAssetSelector:(id)selector forLockReason:(id)reason endError:(id *)error;
+ (BOOL)endedLockByClient:(id)client forAssetSelector:(id)selector forLockReason:(id)reason endError:(id *)error;
+ (BOOL)endedPreviousLocksByClient:(id)client forAssetSelector:(id)selector forLockReason:(id)reason removingLockCount:(int64_t)count endError:(id *)error;
+ (BOOL)endedPreviousSetLocksByClient:(id)client forSetDescriptor:(id)descriptor forLockReason:(id)reason removingLockCount:(int64_t)count endError:(id *)error;
+ (BOOL)lockedByClient:(id)client forClientProcessName:(id)name withClientProcessID:(int64_t)d forAssetSelector:(id)selector forLockReason:(id)reason withUsagePolicy:(id)policy withLocalContentURL:(id)l withAssetAttributes:(id)self0 lockError:(id *)self1;
+ (BOOL)lockedSetByClient:(id)client forClientProcessName:(id)name withClientProcessID:(int64_t)d lockingSetDescriptor:(id)descriptor forLockReason:(id)reason withSetUsagePolicy:(id)policy lockError:(id *)error;
+ (id)autoAssetLocker;
+ (id)copyOfLockCountsBySelector;
+ (id)copyOfLocksBySelector;
+ (id)currentSetLockUsageEliminatingOtherThanSetAtomicInstances:(id)instances;
+ (id)eliminateAllPreviousSetLocksNoLongerTracked:(id)tracked;
+ (id)lockedSelectorsForEliminate:(id)eliminate;
+ (id)newCurrentLockUsageForSelector:(id)selector;
+ (id)newCurrentSetLockUsageForDescriptor:(id)descriptor;
+ (id)newSetClientNameForDomain:(id)domain withAutoAssetClientName:(id)name forSetAtomicInstance:(id)instance;
+ (int64_t)persistedLocksCount;
+ (void)addClientLockReasons:(id)reasons basedOnControl:(id)control;
+ (void)eliminateAllPreviousSetLocksByClient:(id)client forSetDescriptor:(id)descriptor;
+ (void)forceGlobalUnlock:(id)unlock atomicInstancesHandle:(id *)handle;
+ (void)resumeFromPersistedWithDownloadedSelectors:(id)selectors;
+ (void)setPersistedStateCaching:(BOOL)caching;
- (BOOL)_anyCurrentLocksForEliminate:(id)eliminate;
- (BOOL)_endLockDecideUnlocked:(id)unlocked;
- (BOOL)_endLocksByClient:(id)client forAssetClientName:(id)name forAllClientNames:(BOOL)names forClientProcessName:(id)processName withClientProcessID:(int64_t)d forClientDomainName:(id)domainName forAssetSelector:(id)selector forSetAtomicInstance:(id)self0 forLockReason:(id)self1 removingLockCount:(int64_t)self2 endError:(id *)self3;
- (BOOL)_isSetAssetLock:(id)lock forClientDomainName:(id)name forAssetSetIdentifier:(id)identifier;
- (BOOL)_isUntrackedSetAssetLock:(id)lock forTrackedSetDescriptors:(id)descriptors;
- (BOOL)_persistAssetLock:(id)lock operation:(id)operation forAssetLock:(id)assetLock withDeltaLockCount:(int64_t)count message:(id)message;
- (BOOL)isAssetLockSetAtomicInstanceLock:(id)lock;
- (MADAutoAssetLocker)init;
- (id)_assetIDOfLock:(id)lock;
- (id)_autoAssetLockPolicyFromSetPolicy:(id)policy;
- (id)_continuedLockByClient:(id)client forClientDomainName:(id)name forAssetSetIdentifier:(id)identifier forAssetSelector:(id)selector forSetAtomicInstance:(id)instance forLockReason:(id)reason withUsagePolicy:(id)policy;
- (id)_endAllSetLocks:(id)locks forClientDomainName:(id)name forAssetSetIdentifier:(id)identifier;
- (id)_endAllSetLocksNoLongerTracked:(id)tracked;
- (id)_endedLockByClient:(id)client forClientDomainName:(id)name forAssetSetIdentifier:(id)identifier forAssetSelector:(id)selector forSetAtomicInstance:(id)instance forLockReason:(id)reason;
- (id)_locateLockByPersistentEntryID:(id)d;
- (id)_lockAutoAssetByClient:(id)client forClientProcessName:(id)name withClientProcessID:(int64_t)d forClientDomainName:(id)domainName forAssetSelector:(id)selector forSetAtomicInstance:(id)instance forLockReason:(id)reason withDeltaLockCount:(int64_t)self0 withUsagePolicy:(id)self1 withLocalContentURL:(id)self2 withAssetAttributes:(id)self3;
- (id)_newAssetLockSummaryWithoutSelectorOrAttributes:(id)attributes;
- (id)_refreshFilesystemMetadataLastInterest:(id)interest;
- (id)_setClientDomainNameForAssetLock:(id)lock;
- (id)atomicInstanceUUIDForLockTracker:(id)tracker;
- (id)locateLockByFullAssetSelector:(id)selector;
- (id)locateLocksBySelector:(id)selector;
- (id)locateLocksNewAllBySelector;
- (id)summary;
- (int64_t)_currentLockCountOfLock:(id)lock;
- (void)_endAllSetLocksByClient:(id)client forSetDescriptor:(id)descriptor;
- (void)_logPersistedEntry:(id)entry operation:(id)operation persistingAssetLock:(id)lock forSelector:(id)selector message:(id)message;
- (void)_logPersistedRemovedEntry:(id)entry removedAssetLock:(id)lock forSelector:(id)selector message:(id)message;
- (void)_logPersistedTableOfContents:(id)contents;
- (void)_mergeAddedLock:(id)lock intoExistingLock:(id)existingLock;
- (void)_mergeContinuedLock:(id)lock intoExistingLock:(id)existingLock;
- (void)_persistRemoveAssetLock:(id)lock removedAssetLock:(id)assetLock message:(id)message;
- (void)_removeAssetLock:(id)lock removingAssetLock:(id)assetLock lastClient:(id)client forSelector:(id)selector message:(id)message;
- (void)addToLockCountsBySelector:(id)selector addingAssetLock:(id)lock;
- (void)trackPerformanceIteration:(id)iteration ofContainer:(id)container;
- (void)trackPerformanceIteration:(id)iteration ofContainer:(id)container forSelector:(id)selector;
@end

@implementation MADAutoAssetLocker

- (MADAutoAssetLocker)init
{
  v16.receiver = self;
  v16.super_class = MADAutoAssetLocker;
  v2 = [(MADAutoAssetLocker *)&v16 init];
  if (v2)
  {
    uTF8String = [@"com.apple.MobileAsset.daemon.autoassetlocker" UTF8String];
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create(uTF8String, v4);
    lockerQueue = v2->_lockerQueue;
    v2->_lockerQueue = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    eliminateSelectors = v2->_eliminateSelectors;
    v2->_eliminateSelectors = v7;

    lockCountsBySelector = v2->_lockCountsBySelector;
    v2->_lockCountsBySelector = 0;

    v10 = [[MADAutoAssetPersisted alloc] initForModule:@"AutoAssetLocker" ofModuleVersion:@"1.0" usingDispatchQueue:v2->_lockerQueue loggingByName:0 withVersionMigrator:&__block_literal_global_33];
    persistedState = v2->_persistedState;
    v2->_persistedState = v10;

    v12 = v2->_lockerQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __26__MADAutoAssetLocker_init__block_invoke_2;
    block[3] = &unk_4B2AA0;
    v15 = v2;
    dispatch_sync(v12, block);
  }

  return v2;
}

+ (id)autoAssetLocker
{
  if (autoAssetLocker_dispatchOnceAutoAssetLocker != -1)
  {
    +[MADAutoAssetLocker autoAssetLocker];
  }

  v3 = autoAssetLocker___autoAssetLocker;

  return v3;
}

void __37__MADAutoAssetLocker_autoAssetLocker__block_invoke(id a1)
{
  autoAssetLocker___autoAssetLocker = objc_alloc_init(MADAutoAssetLocker);

  _objc_release_x1();
}

+ (BOOL)lockedByClient:(id)client forClientProcessName:(id)name withClientProcessID:(int64_t)d forAssetSelector:(id)selector forLockReason:(id)reason withUsagePolicy:(id)policy withLocalContentURL:(id)l withAssetAttributes:(id)self0 lockError:(id *)self1
{
  clientCopy = client;
  nameCopy = name;
  selectorCopy = selector;
  reasonCopy = reason;
  policyCopy = policy;
  lCopy = l;
  attributesCopy = attributes;
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = __Block_byref_object_copy__17;
  v63 = __Block_byref_object_dispose__17;
  v64 = 0;
  v47 = attributesCopy;
  if (clientCopy && selectorCopy && reasonCopy && lCopy && attributesCopy)
  {
    assetVersion = [selectorCopy assetVersion];
    v22 = assetVersion == 0;

    if (v22)
    {
      v34 = [NSString alloc];
      summary = [selectorCopy summary];
      reasonCopy = [v34 initWithFormat:@"lock not tracked (selector missing asset-version) | client:%@, selector:%@, reason:%@", clientCopy, summary, reasonCopy];

      v33 = [MAAutoAssetError buildError:6102 fromOperation:@"AUTO-LOCKER:lockedByClient" underlyingError:0 withDescription:reasonCopy];
    }

    else
    {
      v23 = +[MADAutoAssetLocker autoAssetLocker];
      reasonCopy = v23;
      if (v23)
      {
        lockerQueue = [v23 lockerQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __175__MADAutoAssetLocker_lockedByClient_forClientProcessName_withClientProcessID_forAssetSelector_forLockReason_withUsagePolicy_withLocalContentURL_withAssetAttributes_lockError___block_invoke;
        block[3] = &unk_4B6238;
        v57 = &v59;
        reasonCopy = reasonCopy;
        v49 = reasonCopy;
        v50 = clientCopy;
        v51 = nameCopy;
        dCopy = d;
        v52 = selectorCopy;
        v53 = reasonCopy;
        v54 = policyCopy;
        v55 = lCopy;
        v56 = v47;
        dispatch_sync(lockerQueue, block);

        v26 = v49;
        goto LABEL_31;
      }

      v33 = [MAAutoAssetError buildError:6101 fromOperation:@"AUTO-LOCKER:lockedByClient" underlyingError:0 withDescription:@"no auto-asset-locker"];
    }
  }

  else
  {
    v27 = [NSString alloc];
    if (clientCopy)
    {
      v28 = clientCopy;
    }

    else
    {
      v28 = @"MISSING";
    }

    if (selectorCopy)
    {
      summary2 = [selectorCopy summary];
    }

    else
    {
      summary2 = @"MISSING";
    }

    if (reasonCopy)
    {
      v30 = reasonCopy;
    }

    else
    {
      v30 = @"MISSING";
    }

    if (lCopy)
    {
      path = [lCopy path];
    }

    else
    {
      path = @"MISSING";
    }

    v32 = @"provided";
    if (!v47)
    {
      v32 = @"MISSING";
    }

    reasonCopy = [v27 initWithFormat:@"lock not tracked (missing required) | client:%@, selector:%@, reason:%@, localURL:%@, attributes:%@", v28, summary2, v30, path, v32, nameCopy];
    if (lCopy)
    {
    }

    if (selectorCopy)
    {
    }

    v33 = [MAAutoAssetError buildError:6102 fromOperation:@"AUTO-LOCKER:lockedByClient" underlyingError:0 withDescription:reasonCopy];
  }

  v26 = v60[5];
  v60[5] = v33;
LABEL_31:

  v36 = v60[5];
  if (v36)
  {
    v37 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      summary3 = [selectorCopy summary];
      summary4 = [policyCopy summary];
      v40 = v60[5];
      *buf = 138544386;
      v66 = clientCopy;
      v67 = 2114;
      v68 = summary3;
      v69 = 2114;
      v70 = reasonCopy;
      v71 = 2114;
      v72 = summary4;
      v73 = 2114;
      v74 = v40;
      _os_log_impl(&dword_0, v37, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:lockedByClient} failed lock | client:%{public}@, selector:%{public}@, reason:%{public}@, policy:%{public}@ | error:%{public}@", buf, 0x34u);
    }

    [MADAutoAssetHistory recordFailedOperation:101 fromClient:clientCopy forAssetID:@"UNKNOWN" withSelector:selectorCopy failingWithError:v60[5]];
    if (error)
    {
      *error = v60[5];
    }
  }

  else
  {
    v41 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      summary5 = [selectorCopy summary];
      summary6 = [policyCopy summary];
      *buf = 138544130;
      v66 = clientCopy;
      v67 = 2114;
      v68 = summary5;
      v69 = 2114;
      v70 = reasonCopy;
      v71 = 2114;
      v72 = summary6;
      _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "{AUTO-LOCKER:lockedByClient} successful lock | client:%{public}@, selector:%{public}@, reason:%{public}@, policy:%{public}@", buf, 0x2Au);
    }
  }

  _Block_object_dispose(&v59, 8);

  return v36 == 0;
}

uint64_t __175__MADAutoAssetLocker_lockedByClient_forClientProcessName_withClientProcessID_forAssetSelector_forLockReason_withUsagePolicy_withLocalContentURL_withAssetAttributes_lockError___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 96) + 8) + 40) = [*(a1 + 32) _lockAutoAssetByClient:*(a1 + 40) forClientProcessName:*(a1 + 48) withClientProcessID:*(a1 + 104) forClientDomainName:0 forAssetSelector:*(a1 + 56) forSetAtomicInstance:0 forLockReason:*(a1 + 64) withDeltaLockCount:1 withUsagePolicy:*(a1 + 72) withLocalContentURL:*(a1 + 80) withAssetAttributes:*(a1 + 88)];

  return _objc_release_x1();
}

+ (BOOL)continuedLockByClient:(id)client forAssetSelector:(id)selector forLockReason:(id)reason withUsagePolicy:(id)policy continueError:(id *)error
{
  clientCopy = client;
  selectorCopy = selector;
  reasonCopy = reason;
  policyCopy = policy;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__17;
  v48 = __Block_byref_object_dispose__17;
  v49 = 0;
  if (clientCopy && selectorCopy && reasonCopy)
  {
    assetVersion = [selectorCopy assetVersion];
    v16 = assetVersion == 0;

    if (v16)
    {
      v26 = [NSString alloc];
      summary = [selectorCopy summary];
      reasonCopy = [v26 initWithFormat:@"lock not tracked (selector missing asset-version) | client:%@, selector:%@, reason:%@", clientCopy, summary, reasonCopy];

      v25 = [MAAutoAssetError buildError:6102 fromOperation:@"AUTO-LOCKER:continuedLockByClient" underlyingError:0 withDescription:reasonCopy];
    }

    else
    {
      v17 = +[MADAutoAssetLocker autoAssetLocker];
      reasonCopy = v17;
      if (v17)
      {
        lockerQueue = [v17 lockerQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __105__MADAutoAssetLocker_continuedLockByClient_forAssetSelector_forLockReason_withUsagePolicy_continueError___block_invoke;
        block[3] = &unk_4B6260;
        v43 = &v44;
        reasonCopy = reasonCopy;
        v38 = reasonCopy;
        v39 = clientCopy;
        v40 = selectorCopy;
        v41 = reasonCopy;
        v42 = policyCopy;
        dispatch_sync(lockerQueue, block);

        v20 = v38;
        goto LABEL_22;
      }

      v25 = [MAAutoAssetError buildError:6101 fromOperation:@"AUTO-LOCKER:continuedLockByClient" underlyingError:0 withDescription:@"no auto-asset-locker"];
    }
  }

  else
  {
    v21 = [NSString alloc];
    if (clientCopy)
    {
      v22 = clientCopy;
    }

    else
    {
      v22 = @"MISSING";
    }

    if (selectorCopy)
    {
      summary2 = [selectorCopy summary];
    }

    else
    {
      summary2 = @"MISSING";
    }

    if (reasonCopy)
    {
      v24 = reasonCopy;
    }

    else
    {
      v24 = @"MISSING";
    }

    reasonCopy = [v21 initWithFormat:@"lock not tracked (missing required) | client:%@, selector:%@, reason:%@", v22, summary2, v24];
    if (selectorCopy)
    {
    }

    v25 = [MAAutoAssetError buildError:6102 fromOperation:@"AUTO-LOCKER:continuedLockByClient" underlyingError:0 withDescription:reasonCopy];
  }

  v20 = v45[5];
  v45[5] = v25;
LABEL_22:

  v28 = v45[5];
  if (v28)
  {
    v29 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      summary3 = [selectorCopy summary];
      summary4 = [policyCopy summary];
      v32 = v45[5];
      *buf = 138544386;
      v51 = clientCopy;
      v52 = 2114;
      v53 = summary3;
      v54 = 2114;
      v55 = reasonCopy;
      v56 = 2114;
      v57 = summary4;
      v58 = 2114;
      v59 = v32;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:continuedLockByClient} failed continue-lock | client:%{public}@, selector:%{public}@, reason:%{public}@, policy:%{public}@ | error:%{public}@", buf, 0x34u);
    }

    [MADAutoAssetHistory recordFailedOperation:501 fromClient:clientCopy forAssetID:@"UNKNOWN" withSelector:selectorCopy failingWithError:v45[5]];
    if (error)
    {
      *error = v45[5];
    }
  }

  else
  {
    v33 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      summary5 = [selectorCopy summary];
      summary6 = [policyCopy summary];
      *buf = 138544130;
      v51 = clientCopy;
      v52 = 2114;
      v53 = summary5;
      v54 = 2114;
      v55 = reasonCopy;
      v56 = 2114;
      v57 = summary6;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "{AUTO-LOCKER:continuedLockByClient} successful continue-lock | client:%{public}@, selector:%{public}@, reason:%{public}@, policy:%{public}@", buf, 0x2Au);
    }
  }

  _Block_object_dispose(&v44, 8);

  return v28 == 0;
}

uint64_t __105__MADAutoAssetLocker_continuedLockByClient_forAssetSelector_forLockReason_withUsagePolicy_continueError___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 72) + 8) + 40) = [*(a1 + 32) _continuedLockByClient:*(a1 + 40) forClientDomainName:0 forAssetSetIdentifier:0 forAssetSelector:*(a1 + 48) forSetAtomicInstance:0 forLockReason:*(a1 + 56) withUsagePolicy:*(a1 + 64)];

  return _objc_release_x1();
}

+ (BOOL)endedLockByClient:(id)client forAssetSelector:(id)selector forLockReason:(id)reason endError:(id *)error
{
  clientCopy = client;
  selectorCopy = selector;
  reasonCopy = reason;
  v12 = reasonCopy;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__17;
  v43 = __Block_byref_object_dispose__17;
  v44 = 0;
  if (clientCopy && selectorCopy && reasonCopy)
  {
    assetVersion = [selectorCopy assetVersion];
    v14 = assetVersion == 0;

    if (v14)
    {
      v24 = [NSString alloc];
      summary = [selectorCopy summary];
      v16 = [v24 initWithFormat:@"lock not ended (selector missing asset-version) | client:%@, selector:%@, reason:%@", clientCopy, summary, v12];

      v23 = [MAAutoAssetError buildError:6102 fromOperation:@"AUTO-LOCKER:endedLockByClient" underlyingError:0 withDescription:v16];
    }

    else
    {
      v15 = +[MADAutoAssetLocker autoAssetLocker];
      v16 = v15;
      if (v15)
      {
        lockerQueue = [v15 lockerQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __80__MADAutoAssetLocker_endedLockByClient_forAssetSelector_forLockReason_endError___block_invoke;
        block[3] = &unk_4B3E68;
        v38 = &v39;
        v16 = v16;
        v34 = v16;
        v35 = clientCopy;
        v36 = selectorCopy;
        v37 = v12;
        dispatch_sync(lockerQueue, block);

        v18 = v34;
        goto LABEL_22;
      }

      v23 = [MAAutoAssetError buildError:6101 fromOperation:@"AUTO-LOCKER:endedLockByClient" underlyingError:0 withDescription:@"no auto-asset-locker"];
    }
  }

  else
  {
    v19 = [NSString alloc];
    if (clientCopy)
    {
      v20 = clientCopy;
    }

    else
    {
      v20 = @"MISSING";
    }

    if (selectorCopy)
    {
      summary2 = [selectorCopy summary];
    }

    else
    {
      summary2 = @"MISSING";
    }

    if (v12)
    {
      v22 = v12;
    }

    else
    {
      v22 = @"MISSING";
    }

    v16 = [v19 initWithFormat:@"lock not ended (missing required) | client:%@, selector:%@, reason:%@", v20, summary2, v22];
    if (selectorCopy)
    {
    }

    v23 = [MAAutoAssetError buildError:6102 fromOperation:@"AUTO-LOCKER:endedLockByClient" underlyingError:0 withDescription:v16];
  }

  v18 = v40[5];
  v40[5] = v23;
LABEL_22:

  v26 = v40[5];
  if (v26)
  {
    v27 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      summary3 = [selectorCopy summary];
      v29 = v40[5];
      *buf = 138544130;
      v46 = clientCopy;
      v47 = 2114;
      v48 = summary3;
      v49 = 2114;
      v50 = v12;
      v51 = 2114;
      v52 = v29;
      _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:endedLockByClient} failed end-lock | client:%{public}@, selector:%{public}@, reason:%{public}@ | error:%{public}@", buf, 0x2Au);
    }

    [MADAutoAssetHistory recordFailedOperation:502 fromClient:clientCopy forAssetID:@"UNKNOWN" withSelector:selectorCopy failingWithError:v40[5]];
    if (error)
    {
      *error = v40[5];
    }
  }

  else
  {
    v30 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      summary4 = [selectorCopy summary];
      *buf = 138543874;
      v46 = clientCopy;
      v47 = 2114;
      v48 = summary4;
      v49 = 2114;
      v50 = v12;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "{AUTO-LOCKER:endedLockByClient} successful end-lock | client:%{public}@, selector:%{public}@, reason:%{public}@", buf, 0x20u);
    }
  }

  _Block_object_dispose(&v39, 8);

  return v26 == 0;
}

uint64_t __80__MADAutoAssetLocker_endedLockByClient_forAssetSelector_forLockReason_endError___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 64) + 8) + 40) = [*(a1 + 32) _endedLockByClient:*(a1 + 40) forClientDomainName:0 forAssetSetIdentifier:0 forAssetSelector:*(a1 + 48) forSetAtomicInstance:0 forLockReason:*(a1 + 56)];

  return _objc_release_x1();
}

+ (BOOL)endedPreviousLocksByClient:(id)client forAssetSelector:(id)selector forLockReason:(id)reason removingLockCount:(int64_t)count endError:(id *)error
{
  clientCopy = client;
  selectorCopy = selector;
  reasonCopy = reason;
  v14 = reasonCopy;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__17;
  v53 = __Block_byref_object_dispose__17;
  v54 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  if (clientCopy && selectorCopy && reasonCopy)
  {
    assetVersion = [selectorCopy assetVersion];
    v16 = assetVersion == 0;

    if (v16)
    {
      v26 = [NSString alloc];
      summary = [selectorCopy summary];
      v18 = [v26 initWithFormat:@"locks not ended (selector missing asset-version) | client:%@, selector:%@, reason:%@", clientCopy, summary, v14];

      v25 = [MAAutoAssetError buildError:6102 fromOperation:@"AUTO-LOCKER:endedPreviousLocksByClient" underlyingError:0 withDescription:v18];
    }

    else if (count <= 0)
    {
      v28 = [NSString alloc];
      summary2 = [selectorCopy summary];
      v18 = [v28 initWithFormat:@"locks not ended (invalid endLockCount:%ld) | client:%@, selector:%@, reason:%@", count, clientCopy, summary2, v14];

      v25 = [MAAutoAssetError buildError:6102 fromOperation:@"AUTO-LOCKER:endedPreviousLocksByClient" underlyingError:0 withDescription:v18];
    }

    else
    {
      v17 = +[MADAutoAssetLocker autoAssetLocker];
      v18 = v17;
      if (v17)
      {
        lockerQueue = [v17 lockerQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __107__MADAutoAssetLocker_endedPreviousLocksByClient_forAssetSelector_forLockReason_removingLockCount_endError___block_invoke;
        block[3] = &unk_4B6288;
        v42 = &v45;
        v18 = v18;
        v38 = v18;
        v39 = clientCopy;
        v40 = selectorCopy;
        v41 = v14;
        v43 = &v49;
        countCopy = count;
        dispatch_sync(lockerQueue, block);

        v20 = v38;
        goto LABEL_24;
      }

      v25 = [MAAutoAssetError buildError:6101 fromOperation:@"AUTO-LOCKER:endedPreviousLocksByClient" underlyingError:0 withDescription:@"no auto-asset-locker"];
    }
  }

  else
  {
    v21 = [NSString alloc];
    if (clientCopy)
    {
      v22 = clientCopy;
    }

    else
    {
      v22 = @"MISSING";
    }

    if (selectorCopy)
    {
      summary3 = [selectorCopy summary];
    }

    else
    {
      summary3 = @"MISSING";
    }

    if (v14)
    {
      v24 = v14;
    }

    else
    {
      v24 = @"MISSING";
    }

    v18 = [v21 initWithFormat:@"locks not ended (missing required) | client:%@, selector:%@, reason:%@", v22, summary3, v24];
    if (selectorCopy)
    {
    }

    v25 = [MAAutoAssetError buildError:6102 fromOperation:@"AUTO-LOCKER:endedPreviousLocksByClient" underlyingError:0 withDescription:v18];
  }

  v20 = v50[5];
  v50[5] = v25;
LABEL_24:

  if (v50[5])
  {
    v30 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      summary4 = [selectorCopy summary];
      checkedSummary = [v50[5] checkedSummary];
      *buf = 138544130;
      v56 = clientCopy;
      v57 = 2114;
      v58 = summary4;
      v59 = 2114;
      v60 = v14;
      v61 = 2114;
      countCopy2 = checkedSummary;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:endedPreviousLocksByClient} failed end-lock(s) | client:%{public}@, selector:%{public}@, reason:%{public}@ | error:%{public}@", buf, 0x2Au);
    }

    [MADAutoAssetHistory recordFailedOperation:502 fromClient:clientCopy forAssetID:@"UNKNOWN" withSelector:selectorCopy failingWithError:v50[5]];
    if (error)
    {
      *error = v50[5];
    }
  }

  else
  {
    v33 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      summary5 = [selectorCopy summary];
      *buf = 138544130;
      v56 = clientCopy;
      v57 = 2114;
      v58 = summary5;
      v59 = 2114;
      v60 = v14;
      v61 = 2048;
      countCopy2 = count;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "{AUTO-LOCKER:endedPreviousLocksByClient} successful end-lock(s) | client:%{public}@, selector:%{public}@, reason:%{public}@, ended locks:%ld", buf, 0x2Au);
    }

    *(v46 + 24) = 1;
  }

  v35 = *(v46 + 24);
  _Block_object_dispose(&v45, 8);
  _Block_object_dispose(&v49, 8);

  return v35 & 1;
}

void __107__MADAutoAssetLocker_endedPreviousLocksByClient_forAssetSelector_forLockReason_removingLockCount_endError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[10];
  v7 = *(a1[9] + 8);
  obj = *(v7 + 40);
  v8 = [v2 _endLocksByClient:@"AUTO-LOCKER:endedPreviousLocksByClient" forAssetClientName:v3 forAllClientNames:0 forClientProcessName:0 withClientProcessID:0 forClientDomainName:0 forAssetSelector:v4 forSetAtomicInstance:0 forLockReason:v5 removingLockCount:v6 endError:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(a1[8] + 8) + 24) = v8;
}

+ (BOOL)endedAllPreviousLocksByClient:(id)client forAssetSelector:(id)selector forLockReason:(id)reason endError:(id *)error
{
  clientCopy = client;
  selectorCopy = selector;
  reasonCopy = reason;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__17;
  v48 = __Block_byref_object_dispose__17;
  v49 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  if (clientCopy && selectorCopy)
  {
    assetVersion = [selectorCopy assetVersion];
    v13 = assetVersion == 0;

    if (v13)
    {
      v22 = [NSString alloc];
      summary = [selectorCopy summary];
      v24 = summary;
      v25 = @"ALL-REASONS";
      if (reasonCopy)
      {
        v25 = reasonCopy;
      }

      v15 = [v22 initWithFormat:@"locks not ended (selector missing asset-version) | client:%@, selector:%@, reason:%@", clientCopy, summary, v25];

      v21 = [MAAutoAssetError buildError:6102 fromOperation:@"AUTO-LOCKER:endedAllPreviousLocksByClient" underlyingError:0 withDescription:v15];
    }

    else
    {
      v14 = +[MADAutoAssetLocker autoAssetLocker];
      v15 = v14;
      if (v14)
      {
        lockerQueue = [v14 lockerQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __92__MADAutoAssetLocker_endedAllPreviousLocksByClient_forAssetSelector_forLockReason_endError___block_invoke;
        block[3] = &unk_4B62B0;
        v38 = &v40;
        v15 = v15;
        v34 = v15;
        v35 = clientCopy;
        v36 = selectorCopy;
        v37 = reasonCopy;
        v39 = &v44;
        dispatch_sync(lockerQueue, block);

        v17 = v34;
        goto LABEL_19;
      }

      v21 = [MAAutoAssetError buildError:6101 fromOperation:@"AUTO-LOCKER:endedAllPreviousLocksByClient" underlyingError:0 withDescription:@"no auto-asset-locker"];
    }
  }

  else
  {
    v18 = [NSString alloc];
    summary2 = @"MISSING";
    if (clientCopy)
    {
      v20 = clientCopy;
    }

    else
    {
      v20 = @"MISSING";
    }

    if (selectorCopy)
    {
      summary2 = [selectorCopy summary];
    }

    v15 = [v18 initWithFormat:@"locks not ended (missing required) | client:%@, selector:%@", v20, summary2];
    if (selectorCopy)
    {
    }

    v21 = [MAAutoAssetError buildError:6102 fromOperation:@"AUTO-LOCKER:endedAllPreviousLocksByClient" underlyingError:0 withDescription:v15];
  }

  v17 = v45[5];
  v45[5] = v21;
LABEL_19:

  if (v45[5])
  {
    v26 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      summary3 = [selectorCopy summary];
      v28 = v45[5];
      *buf = 138544130;
      v51 = clientCopy;
      v52 = 2114;
      v53 = summary3;
      v54 = 2114;
      v55 = reasonCopy;
      v56 = 2114;
      v57 = v28;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:endedAllPreviousLocksByClient} failed end-all-locks | client:%{public}@, selector:%{public}@, reason:%{public}@ | error:%{public}@", buf, 0x2Au);
    }

    [MADAutoAssetHistory recordFailedOperation:502 fromClient:clientCopy forAssetID:@"UNKNOWN" withSelector:selectorCopy failingWithError:v45[5]];
    if (error)
    {
      *error = v45[5];
    }
  }

  else
  {
    v29 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      summary4 = [selectorCopy summary];
      *buf = 138543874;
      v51 = clientCopy;
      v52 = 2114;
      v53 = summary4;
      v54 = 2114;
      v55 = reasonCopy;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "{AUTO-LOCKER:endedAllPreviousLocksByClient} successful end-all-locks | client:%{public}@, selector:%{public}@, reason:%{public}@", buf, 0x20u);
    }

    *(v41 + 24) = 1;
  }

  v31 = *(v41 + 24);
  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);

  return v31 & 1;
}

void __92__MADAutoAssetLocker_endedAllPreviousLocksByClient_forAssetSelector_forLockReason_endError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = *(a1[9] + 8);
  obj = *(v6 + 40);
  v7 = [v2 _endLocksByClient:@"AUTO-LOCKER:endedAllPreviousLocksByClient" forAssetClientName:v3 forAllClientNames:0 forClientProcessName:0 withClientProcessID:0 forClientDomainName:0 forAssetSelector:v4 forSetAtomicInstance:0 forLockReason:v5 removingLockCount:-1 endError:&obj];
  objc_storeStrong((v6 + 40), obj);
  *(*(a1[8] + 8) + 24) = v7;
}

- (BOOL)_endLocksByClient:(id)client forAssetClientName:(id)name forAllClientNames:(BOOL)names forClientProcessName:(id)processName withClientProcessID:(int64_t)d forClientDomainName:(id)domainName forAssetSelector:(id)selector forSetAtomicInstance:(id)self0 forLockReason:(id)self1 removingLockCount:(int64_t)self2 endError:(id *)self3
{
  clientCopy = client;
  nameCopy = name;
  v19 = clientCopy;
  v20 = nameCopy;
  processNameCopy = processName;
  domainNameCopy = domainName;
  selectorCopy = selector;
  instanceCopy = instance;
  reasonCopy = reason;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  v168 = [[NSString alloc] initWithFormat:@"%@:_endLocksByClient", v19];
  selfCopy = self;
  if (instanceCopy)
  {
    v26 = [(MADAutoAssetLocker *)self newSetClientNameForDomain:domainNameCopy withAutoAssetClientName:v20 forSetAtomicInstance:instanceCopy];
  }

  else
  {
    v26 = v20;
  }

  v171 = v26;
  countCopy8 = count;
  v28 = reasonCopy;
  if (__isPlatformVersionAtLeast(2, 18, 4, 0))
  {
    v29 = objc_opt_respondsToSelector();
    if (!instanceCopy && (v29 & 1) != 0)
    {
      setAtomicInstanceUUID = [selectorCopy setAtomicInstanceUUID];

      if (setAtomicInstanceUUID)
      {
        instanceCopy = [selectorCopy setAtomicInstanceUUID];
      }

      else
      {
        instanceCopy = 0;
      }

      v28 = reasonCopy;
    }
  }

  v166 = selectorCopy;
  v172 = instanceCopy;
  v164 = domainNameCopy;
  if (processNameCopy)
  {
    v31 = [(MADAutoAssetLocker *)selfCopy locateLockByFullAssetSelector:selectorCopy];
    if (v31)
    {
      if (count == -1)
      {
        v160 = processNameCopy;
        v150 = v20;
        v153 = v19;
        v155 = objc_alloc_init(NSMutableDictionary);
        v189 = 0u;
        v190 = 0u;
        v191 = 0u;
        v192 = 0u;
        obj = [v31 lockReasons];
        v46 = [obj countByEnumeratingWithState:&v189 objects:v209 count:16];
        if (v46)
        {
          v47 = v46;
          v48 = 0;
          v49 = *v190;
          while (2)
          {
            for (i = 0; i != v47; i = i + 1)
            {
              if (*v190 != v49)
              {
                objc_enumerationMutation(obj);
              }

              v51 = *(*(&v189 + 1) + 8 * i);
              v52 = objc_autoreleasePoolPush();
              if (!instanceCopy || [v51 containsString:instanceCopy])
              {
                lockReasons = [v31 lockReasons];
                v54 = [lockReasons safeObjectForKey:v51 ofClass:objc_opt_class()];

                v48 += [v54 activeLockCount];
                if ((objc_opt_respondsToSelector() & 1) == 0 || (objc_opt_respondsToSelector() & 1) == 0)
                {
                  v39 = [MAAutoAssetError buildError:6101 fromOperation:v168 underlyingError:0 withDescription:@"cannot accept ended locks by process name since not supported by installed OS version"];

                  objc_autoreleasePoolPop(v52);
                  goto LABEL_59;
                }

                clientProcessName = [v54 clientProcessName];
                if ([SUCore stringIsEqual:clientProcessName to:v160])
                {
                  clientProcessID = [v54 clientProcessID];

                  if (clientProcessID == d)
                  {
                    [v155 setSafeObject:v54 forKey:v51];
                  }
                }

                else
                {
                }

                instanceCopy = v172;
              }

              objc_autoreleasePoolPop(v52);
            }

            v47 = [obj countByEnumeratingWithState:&v189 objects:v209 count:16];
            if (v47)
            {
              continue;
            }

            break;
          }

          v39 = 0;
LABEL_59:
          countCopy8 = count;
        }

        else
        {
          v48 = 0;
          v39 = 0;
        }

        v20 = v150;
        v19 = v153;
        if (!v39 && v48 <= 0)
        {
          v39 = [MAAutoAssetError buildError:6110 fromOperation:v168 underlyingError:0 withDescription:@"cannot accept ended locks by process name since no locks found to be ended"];
        }

        v40 = v39 == 0;
        if (!v39)
        {
          v187 = 0u;
          v188 = 0u;
          v185 = 0u;
          v186 = 0u;
          v81 = v155;
          v82 = [v81 countByEnumeratingWithState:&v185 objects:v208 count:16];
          if (v82)
          {
            v83 = v82;
            v84 = *v186;
            do
            {
              for (j = 0; j != v83; j = j + 1)
              {
                if (*v186 != v84)
                {
                  objc_enumerationMutation(v81);
                }

                v86 = *(*(&v185 + 1) + 8 * j);
                lockReasons2 = [v31 lockReasons];
                [lockReasons2 removeObjectForKey:v86];
              }

              v83 = [v81 countByEnumeratingWithState:&v185 objects:v208 count:16];
            }

            while (v83);
          }

          lockReasons3 = [v31 lockReasons];
          v89 = [lockReasons3 count];

          if (v89)
          {
            v90 = [NSString alloc];
            lockReasons4 = [v31 lockReasons];
            v92 = [v90 initWithFormat:@"client ended specified number of locks (or all locks) for all lock-reasons | assetLock.lockReasons:%ld", objc_msgSend(lockReasons4, "count")];
            [(MADAutoAssetLocker *)selfCopy _persistAssetLock:v168 operation:@"ENTRY_DECREASED" forAssetLock:v31 withDeltaLockCount:v48 message:v92];

            if ([v31 inhibitedFromEmergencyRemoval])
            {
              v93 = 251;
            }

            else
            {
              v93 = 250;
            }

            lockCountsTotal = [(MADAutoAssetLocker *)selfCopy lockCountsTotal];
            v95 = [(MADAutoAssetLocker *)selfCopy _assetIDOfLock:v31];
            [MADAutoAssetHistory recordOperation:v93 toHistoryType:1 fromClient:v171 usageCount:lockCountsTotal forAssetID:v95 withSelector:v166];
          }

          else
          {
            [(MADAutoAssetLocker *)selfCopy _removeAssetLock:v168 removingAssetLock:v31 lastClient:v171 forSelector:v166 message:@"endedLock for all reasons [specific count] (all locks have ended)"];
          }

          v20 = v150;
          v19 = v153;
          instanceCopy = v172;
          countCopy8 = count;
        }

        processNameCopy = v160;
        goto LABEL_63;
      }

      v32 = @"cannot accept ended locks by process name unless ending all locks by the given process";
      v33 = 6108;
      goto LABEL_61;
    }

    v41 = [NSString alloc];
    [selectorCopy summary];
    v43 = v42 = v19;
    v149 = [v41 initWithFormat:@"cannot accept ended locks when no existing lock for auto-specific-asset | clientProcessName:%@ | fullAssetSelector:%@", processNameCopy, v43];
    goto LABEL_23;
  }

  if (v28)
  {
    v31 = [[MAAutoAssetLockReason alloc] initForClientName:v171 forLockReason:v28];
    if (!v31)
    {
      v32 = @"unable to allocate client-lock-reason";
      v33 = 6101;
LABEL_61:
      v39 = [MAAutoAssetError buildError:v33 fromOperation:v168 underlyingError:0 withDescription:v32];
      goto LABEL_62;
    }

    v34 = [(MADAutoAssetLocker *)selfCopy locateLockByFullAssetSelector:selectorCopy];
    v35 = v34;
    if (v34)
    {
      lockReasons5 = [v34 lockReasons];
      summary = [v31 summary];
      summary3 = [lockReasons5 safeObjectForKey:summary ofClass:objc_opt_class()];

      if (summary3)
      {
        v152 = v19;
        if (count != -1)
        {
          if ([summary3 activeLockCount] < count)
          {
            v39 = [MAAutoAssetError buildError:6109 fromOperation:v168 underlyingError:0 withDescription:@"cannot accept ended locks (for specific lock-reason) when fewer locks exist than requested unlock count"];
            v40 = 0;
LABEL_154:
            v19 = v152;
            goto LABEL_155;
          }

          if ([summary3 activeLockCount] > count)
          {
            [summary3 setActiveLockCount:{objc_msgSend(summary3, "activeLockCount") - count}];
            v128 = [NSString alloc];
            lockReasons6 = [v35 lockReasons];
            v130 = [v128 initWithFormat:@"client ended specified number of locks (other locks by client remain for client-lock-reason) | assetLock.lockReasons:%ld", objc_msgSend(lockReasons6, "count")];
            [(MADAutoAssetLocker *)selfCopy _persistAssetLock:v168 operation:@"ENTRY_DECREASED" forAssetLock:v35 withDeltaLockCount:count message:v130];

            if ([v35 inhibitedFromEmergencyRemoval])
            {
              v131 = 251;
            }

            else
            {
              v131 = 250;
            }

            v132 = summary3;
            lockCountsTotal2 = [(MADAutoAssetLocker *)selfCopy lockCountsTotal];
            countCopy8 = count;
            v134 = [(MADAutoAssetLocker *)selfCopy _assetIDOfLock:v35];
            v135 = selectorCopy;
            v136 = v134;
            v40 = 1;
            v137 = lockCountsTotal2;
            summary3 = v132;
            [MADAutoAssetHistory recordOperation:v131 toHistoryType:1 fromClient:v171 usageCount:v137 forAssetID:v134 withSelector:v135];

            v39 = 0;
            goto LABEL_154;
          }
        }

        lockReasons7 = [v35 lockReasons];
        summary2 = [v31 summary];
        [lockReasons7 removeObjectForKey:summary2];

        lockReasons8 = [v35 lockReasons];
        v141 = [lockReasons8 count];

        if (v141)
        {
          if (count == -1)
          {
            countCopy5 = 0;
          }

          else
          {
            countCopy5 = count;
          }

          v143 = [NSString alloc];
          lockReasons9 = [v35 lockReasons];
          v145 = [v143 initWithFormat:@"client ended all locks for specified reason (other locks remain) | assetLock.lockReasons:%ld", objc_msgSend(lockReasons9, "count")];
          v170 = summary3;
          [(MADAutoAssetLocker *)selfCopy _persistAssetLock:v168 operation:@"ENTRY_DECREASED" forAssetLock:v35 withDeltaLockCount:countCopy5 message:v145];

          if ([v35 inhibitedFromEmergencyRemoval])
          {
            v146 = 251;
          }

          else
          {
            v146 = 250;
          }

          lockCountsTotal3 = [(MADAutoAssetLocker *)selfCopy lockCountsTotal];
          v148 = [(MADAutoAssetLocker *)selfCopy _assetIDOfLock:v35];
          [MADAutoAssetHistory recordOperation:v146 toHistoryType:1 fromClient:v171 usageCount:lockCountsTotal3 forAssetID:v148 withSelector:selectorCopy];

          summary3 = v170;
          v39 = 0;
          v40 = 1;
        }

        else
        {
          [(MADAutoAssetLocker *)selfCopy _removeAssetLock:v168 removingAssetLock:v35 lastClient:v171 forSelector:selectorCopy message:@"endedLock for specific lock-reason (all locks have ended)"];
          v39 = 0;
          v40 = 1;
        }

        goto LABEL_154;
      }

      v39 = [MAAutoAssetError buildError:6501 fromOperation:v168 underlyingError:0 withDescription:@"cannot accept ended locks when no existing lock for client-lock-reason"];
    }

    else
    {
      v79 = [NSString alloc];
      summary3 = [selectorCopy summary];
      v80 = [v79 initWithFormat:@"cannot accept ended locks when no existing lock for auto-specific-asset | endLockReason:%@ | fullAssetSelector:%@", reasonCopy, summary3];
      v39 = [MAAutoAssetError buildError:6501 fromOperation:v168 underlyingError:0 withDescription:v80];
    }

    v40 = 0;
LABEL_155:

    processNameCopy = 0;
    goto LABEL_63;
  }

  v57 = [(MADAutoAssetLocker *)selfCopy locateLockByFullAssetSelector:selectorCopy];
  v31 = v57;
  if (!v57)
  {
    v96 = [NSString alloc];
    [selectorCopy summary];
    v43 = v42 = v19;
    v149 = [v96 initWithFormat:@"cannot accept ended locks when no existing lock for auto-specific-asset (ending for all reasons) | fullAssetSelector:%@", v43, v149];
LABEL_23:
    v45 = v149;
    v39 = [MAAutoAssetError buildError:6501 fromOperation:v168 underlyingError:0 withDescription:v149];

    v19 = v42;
    goto LABEL_62;
  }

  v151 = v20;
  v154 = v19;
  if (count == -1)
  {
    v97 = 0;
  }

  else
  {
    v183 = 0u;
    v184 = 0u;
    v181 = 0u;
    v182 = 0u;
    lockReasons10 = [v57 lockReasons];
    v39 = [lockReasons10 countByEnumeratingWithState:&v181 objects:v207 count:16];
    v58 = 0;
    if (v39)
    {
      v59 = *v182;
      while (2)
      {
        for (k = 0; k != v39; k = k + 1)
        {
          if (*v182 != v59)
          {
            objc_enumerationMutation(lockReasons10);
          }

          v61 = *(*(&v181 + 1) + 8 * k);
          v62 = objc_autoreleasePoolPush();
          if (!instanceCopy || [v61 containsString:instanceCopy])
          {
            lockReasons11 = [v31 lockReasons];
            v64 = [lockReasons11 safeObjectForKey:v61 ofClass:objc_opt_class()];

            if (!v64)
            {
              v39 = [MAAutoAssetError buildError:6111 fromOperation:v168 underlyingError:0 withDescription:@"cannot accept ended locks due to missing internal lock reference"];
              objc_autoreleasePoolPop(v62);
              goto LABEL_96;
            }

            clientLockReason = [v64 clientLockReason];
            v66 = clientLockReason;
            if (names || ([clientLockReason autoAssetClientName], v67 = objc_claimAutoreleasedReturnValue(), v68 = +[SUCore stringIsEqual:to:](SUCore, "stringIsEqual:to:", v171, v67), v67, countCopy8 = count, v68))
            {
              v58 += [v64 activeLockCount];
            }

            instanceCopy = v172;
          }

          objc_autoreleasePoolPop(v62);
        }

        v39 = [lockReasons10 countByEnumeratingWithState:&v181 objects:v207 count:16];
        if (v39)
        {
          continue;
        }

        break;
      }

LABEL_96:
      v20 = v151;
      v19 = v154;
      processNameCopy = 0;
    }

    if (v58 < countCopy8)
    {
      v98 = [MAAutoAssetError buildError:6109 fromOperation:v168 underlyingError:0 withDescription:@"cannot accept ended locks when fewer locks exist than requested unlock count"];

      v39 = v98;
    }

    v97 = countCopy8;
    if (v39)
    {
LABEL_62:
      v40 = 0;
      goto LABEL_63;
    }
  }

  v156 = v97;
  obja = objc_alloc_init(NSMutableDictionary);
  v177 = 0u;
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  lockReasons12 = [v31 lockReasons];
  v99 = [lockReasons12 countByEnumeratingWithState:&v177 objects:v206 count:16];
  if (!v99)
  {
    goto LABEL_123;
  }

  v100 = v99;
  v101 = 0;
  v163 = *v178;
  while (2)
  {
    for (m = 0; m != v100; m = m + 1)
    {
      if (*v178 != v163)
      {
        objc_enumerationMutation(lockReasons12);
      }

      v103 = *(*(&v177 + 1) + 8 * m);
      v104 = objc_autoreleasePoolPush();
      if (!instanceCopy || [v103 containsString:instanceCopy])
      {
        lockReasons13 = [v31 lockReasons];
        v106 = [lockReasons13 safeObjectForKey:v103 ofClass:objc_opt_class()];

        clientLockReason2 = [v106 clientLockReason];
        v108 = clientLockReason2;
        if (!names)
        {
          autoAssetClientName = [clientLockReason2 autoAssetClientName];
          v110 = [SUCore stringIsEqual:v171 to:autoAssetClientName];

          if (!v110)
          {
            instanceCopy = v172;
            countCopy8 = count;
LABEL_118:

            goto LABEL_119;
          }
        }

        countCopy7 = [v106 activeLockCount];
        if (count != -1)
        {
          activeLockCount = [v106 activeLockCount];
          if (countCopy7 > count)
          {
            countCopy7 = count;
            [v106 setActiveLockCount:&activeLockCount[-count]];

            v106 = 0;
            goto LABEL_116;
          }

          countCopy7 = activeLockCount;
        }

        if (v106)
        {
          [obja setSafeObject:v106 forKey:v103];
        }

LABEL_116:
        instanceCopy = v172;
        v101 += countCopy7;
        countCopy8 = count;
        if (count != -1 && v101 >= count)
        {

          objc_autoreleasePoolPop(v104);
          goto LABEL_123;
        }

        goto LABEL_118;
      }

LABEL_119:
      objc_autoreleasePoolPop(v104);
    }

    v100 = [lockReasons12 countByEnumeratingWithState:&v177 objects:v206 count:16];
    if (v100)
    {
      continue;
    }

    break;
  }

LABEL_123:

  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v113 = obja;
  v114 = [v113 countByEnumeratingWithState:&v173 objects:v205 count:16];
  v20 = v151;
  if (v114)
  {
    v115 = v114;
    v116 = *v174;
    do
    {
      for (n = 0; n != v115; n = n + 1)
      {
        if (*v174 != v116)
        {
          objc_enumerationMutation(v113);
        }

        v118 = *(*(&v173 + 1) + 8 * n);
        lockReasons14 = [v31 lockReasons];
        [lockReasons14 removeObjectForKey:v118];
      }

      v115 = [v113 countByEnumeratingWithState:&v173 objects:v205 count:16];
    }

    while (v115);
  }

  lockReasons15 = [v31 lockReasons];
  v121 = [lockReasons15 count];

  processNameCopy = 0;
  if (v121)
  {
    v122 = [NSString alloc];
    lockReasons16 = [v31 lockReasons];
    v124 = [v122 initWithFormat:@"client ended specified number of locks (or all locks) for all lock-reasons | assetLock.lockReasons:%ld", objc_msgSend(lockReasons16, "count")];
    [(MADAutoAssetLocker *)selfCopy _persistAssetLock:v168 operation:@"ENTRY_DECREASED" forAssetLock:v31 withDeltaLockCount:v156 message:v124];

    if ([v31 inhibitedFromEmergencyRemoval])
    {
      v125 = 251;
    }

    else
    {
      v125 = 250;
    }

    lockCountsTotal4 = [(MADAutoAssetLocker *)selfCopy lockCountsTotal];
    v127 = [(MADAutoAssetLocker *)selfCopy _assetIDOfLock:v31];
    [MADAutoAssetHistory recordOperation:v125 toHistoryType:1 fromClient:v171 usageCount:lockCountsTotal4 forAssetID:v127 withSelector:v166];
  }

  else
  {
    [(MADAutoAssetLocker *)selfCopy _removeAssetLock:v168 removingAssetLock:v31 lastClient:v171 forSelector:v166 message:@"endedLock for all reasons [specific count] (all locks have ended)"];
  }

  v39 = 0;
  v40 = 1;
  instanceCopy = v172;
  v19 = v154;
LABEL_63:

  v69 = _MADLog(@"AutoLocker");
  v70 = v69;
  if (v39)
  {
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      summary4 = [v166 summary];
      [v39 checkedDescription];
      v73 = v72 = v19;
      *buf = 138544386;
      v194 = v168;
      v195 = 2114;
      v196 = v171;
      v197 = 2114;
      v198 = summary4;
      v199 = 2114;
      v200 = reasonCopy;
      v201 = 2114;
      v202 = v73;
      _os_log_impl(&dword_0, v70, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:%{public}@} failed end-lock(s) | client:%{public}@, selector:%{public}@, reason:%{public}@ | error:%{public}@", buf, 0x34u);

      v19 = v72;
    }

    [MADAutoAssetHistory recordFailedOperation:502 fromClient:v171 forAssetID:@"UNKNOWN" withSelector:v166 failingWithError:v39];
    if (error)
    {
      v74 = v39;
      *error = v39;
    }

    v75 = v164;
    instanceCopy = v172;
  }

  else
  {
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      lockCountsTotal5 = [(MADAutoAssetLocker *)selfCopy lockCountsTotal];
      summary5 = [v166 summary];
      *buf = 134219266;
      v194 = lockCountsTotal5;
      v195 = 2114;
      v196 = v168;
      v197 = 2114;
      v198 = v171;
      v199 = 2114;
      v200 = summary5;
      v201 = 2114;
      v202 = reasonCopy;
      v203 = 2048;
      v204 = countCopy8;
      _os_log_impl(&dword_0, v70, OS_LOG_TYPE_DEFAULT, "{AUTO-LOCKER[totalLocks:%ld]:%{public}@} successful end-lock(s) | client:%{public}@, selector:%{public}@, reason:%{public}@, ended locks:%ld", buf, 0x3Eu);
    }

    v40 = 1;
    v75 = v164;
  }

  return v40;
}

- (int64_t)_currentLockCountOfLock:(id)lock
{
  lockCopy = lock;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  lockReasons = [lockCopy lockReasons];
  v7 = [lockReasons countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(lockReasons);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        lockReasons2 = [lockCopy lockReasons];
        v15 = [lockReasons2 safeObjectForKey:v12 ofClass:objc_opt_class()];

        if (v15)
        {
          v9 += [v15 activeLockCount];
        }

        objc_autoreleasePoolPop(v13);
      }

      v8 = [lockReasons countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_assetIDOfLock:(id)lock
{
  lockCopy = lock;
  fullAssetSelector = [lockCopy fullAssetSelector];
  assetType = [fullAssetSelector assetType];
  assetAttributes = [lockCopy assetAttributes];

  v7 = getAssetIdFromDict(assetType, assetAttributes);

  return v7;
}

+ (id)newCurrentLockUsageForSelector:(id)selector
{
  selectorCopy = selector;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__17;
  v28 = __Block_byref_object_dispose__17;
  v29 = objc_alloc_init(NSMutableDictionary);
  v4 = +[MADAutoAssetLocker autoAssetLocker];
  v5 = v4;
  if (v4)
  {
    lockerQueue = [v4 lockerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __53__MADAutoAssetLocker_newCurrentLockUsageForSelector___block_invoke;
    block[3] = &unk_4B4478;
    v21 = v5;
    v7 = selectorCopy;
    v22 = v7;
    v23 = &v24;
    dispatch_sync(lockerQueue, block);

    if (![v25[5] count])
    {
      v8 = v25[5];
      v25[5] = 0;
    }

    v9 = v25[5];
    if (v9)
    {
      v10 = [v9 count];
      v11 = _MADLog(@"AutoLocker");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        summary = [v7 summary];
        safeSummary = [v25[5] safeSummary];
        v14 = safeSummary;
        v15 = @"s";
        *buf = 138544130;
        v32 = 2048;
        v31 = summary;
        if (v10 == &dword_0 + 1)
        {
          v15 = &stru_4BD3F0;
        }

        v33 = v10;
        v34 = 2114;
        v35 = v15;
        v36 = 2114;
        v37 = safeSummary;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "{AUTO-LOCKER:newCurrentLockUsageForSelector} | assetSelector:%{public}@ | %ld current lock-reason%{public}@:%{public}@", buf, 0x2Au);
      }
    }

    else
    {
      v11 = _MADLog(@"AutoLocker");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        summary2 = [v7 summary];
        *buf = 138543362;
        v31 = summary2;
        _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "{AUTO-LOCKER:newCurrentLockUsageForSelector} | assetSelector:%{public}@ | no current lock-reasons", buf, 0xCu);
      }
    }

    v17 = v25[5];
    v16 = v21;
  }

  else
  {
    v16 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:newCurrentLockUsageForSelector} | no auto-asset-locker", buf, 2u);
    }

    v17 = 0;
  }

  _Block_object_dispose(&v24, 8);
  return v17;
}

void __53__MADAutoAssetLocker_newCurrentLockUsageForSelector___block_invoke(uint64_t a1)
{
  [*(a1 + 32) trackPerformanceIteration:@"newCurrentLockUsageForSelector" ofContainer:@"locateLocksBySelector" forSelector:*(a1 + 40)];
  v32 = a1;
  [*(a1 + 32) locateLocksBySelector:*(a1 + 40)];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v40 = 0u;
  v27 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v27)
  {
    v26 = *v38;
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    do
    {
      v3 = 0;
      do
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v3;
        v4 = *(*(&v37 + 1) + 8 * v3);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v31 = [v4 lockReasons];
        v5 = [v31 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v34;
          v29 = *v34;
          do
          {
            v8 = 0;
            v30 = v6;
            do
            {
              if (*v34 != v7)
              {
                objc_enumerationMutation(v31);
              }

              v9 = *(*(&v33 + 1) + 8 * v8);
              v10 = objc_autoreleasePoolPush();
              v11 = [v4 lockReasons];
              v12 = [v11 safeObjectForKey:v9 ofClass:objc_opt_class()];

              if (v12)
              {
                v13 = [v12 clientLockReason];
                v14 = [v13 lockReason];

                if (v14)
                {
                  v15 = p_weak_ivar_lyt;
                  v16 = *(*(*(v32 + 48) + 8) + 40);
                  v17 = [v12 clientLockReason];
                  v18 = [v17 lockReason];
                  v19 = [v16 safeObjectForKey:v18 ofClass:objc_opt_class()];

                  v20 = [NSNumber alloc];
                  if (v19)
                  {
                    v21 = [v20 initWithLong:{objc_msgSend(v12, "activeLockCount") + objc_msgSend(v19, "intValue")}];
                  }

                  else
                  {
                    v21 = [v20 initWithLong:{objc_msgSend(v12, "activeLockCount")}];
                  }

                  v22 = *(*(*(v32 + 48) + 8) + 40);
                  v23 = [v12 clientLockReason];
                  v24 = [v23 lockReason];
                  [v22 setSafeObject:v21 forKey:v24];

                  p_weak_ivar_lyt = v15;
                  v7 = v29;
                  v6 = v30;
                }
              }

              objc_autoreleasePoolPop(v10);
              v8 = v8 + 1;
            }

            while (v6 != v8);
            v6 = [v31 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v6);
        }

        v3 = v28 + 1;
      }

      while ((v28 + 1) != v27);
      v27 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v27);
  }
}

+ (id)copyOfLocksBySelector
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__17;
  v17 = __Block_byref_object_dispose__17;
  v18 = 0;
  v2 = +[MADAutoAssetLocker autoAssetLocker];
  v3 = v2;
  if (v2)
  {
    lockerQueue = [v2 lockerQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __43__MADAutoAssetLocker_copyOfLocksBySelector__block_invoke;
    v9[3] = &unk_4B2AC8;
    v11 = &v13;
    v10 = v3;
    dispatch_sync(lockerQueue, v9);

    v5 = v10;
  }

  else
  {
    v5 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:copyOfLocksBySelector} | no auto-asset-locker", buf, 2u);
    }
  }

  if (![v14[5] count])
  {
    v6 = v14[5];
    v14[5] = 0;
  }

  v7 = v14[5];

  _Block_object_dispose(&v13, 8);
  return v7;
}

uint64_t __43__MADAutoAssetLocker_copyOfLocksBySelector__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) locateLocksNewAllBySelector];

  return _objc_release_x1();
}

+ (id)copyOfLockCountsBySelector
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__17;
  v17 = __Block_byref_object_dispose__17;
  v18 = 0;
  v2 = +[MADAutoAssetLocker autoAssetLocker];
  v3 = v2;
  if (v2)
  {
    lockerQueue = [v2 lockerQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __48__MADAutoAssetLocker_copyOfLockCountsBySelector__block_invoke;
    v9[3] = &unk_4B2AC8;
    v11 = &v13;
    v10 = v3;
    dispatch_sync(lockerQueue, v9);

    v5 = v10;
  }

  else
  {
    v5 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:copyOfLocksBySelector} | no auto-asset-locker", buf, 2u);
    }
  }

  if (![v14[5] count])
  {
    v6 = v14[5];
    v14[5] = 0;
  }

  v7 = v14[5];

  _Block_object_dispose(&v13, 8);
  return v7;
}

void __48__MADAutoAssetLocker_copyOfLockCountsBySelector__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) lockCountsBySelector];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

+ (id)lockedSelectorsForEliminate:(id)eliminate
{
  eliminateCopy = eliminate;
  v4 = +[MADAutoAssetLocker autoAssetLocker];
  if (v4)
  {
    *buf = 0;
    v17 = buf;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__17;
    v20 = __Block_byref_object_dispose__17;
    v21 = objc_alloc_init(NSMutableArray);
    if (*(v17 + 5))
    {
      lockerQueue = [v4 lockerQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __50__MADAutoAssetLocker_lockedSelectorsForEliminate___block_invoke;
      block[3] = &unk_4B4478;
      v12 = v4;
      v13 = eliminateCopy;
      v14 = buf;
      dispatch_sync(lockerQueue, block);

      if (![*(v17 + 5) count])
      {
        v6 = *(v17 + 5);
        *(v17 + 5) = 0;
      }

      v7 = *(v17 + 5);

      v8 = v12;
    }

    else
    {
      v8 = _MADLog(@"AutoLocker");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v15 = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:lockedSelectorsForEliminate} | failed alloc of matchedLockedSelectors", v15, 2u);
      }

      v7 = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v9 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:lockedSelectorsForEliminate} | no auto-asset-locker", buf, 2u);
    }

    v7 = 0;
  }

  return v7;
}

void __50__MADAutoAssetLocker_lockedSelectorsForEliminate___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) trackPerformanceIteration:@"lockedSelectorsForEliminate" ofContainer:@"locateLocksBySelector" forSelector:*(a1 + 40)];
  v3 = [*(a1 + 32) locateLocksBySelector:*(a1 + 40)];
  v4 = v3;
  if (v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * v9);
          v11 = objc_autoreleasePoolPush();
          v12 = *(*(*(a1 + 48) + 8) + 40);
          v13 = [v10 fullAssetSelector];
          [v12 addObject:v13];

          objc_autoreleasePoolPop(v11);
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (void)_removeAssetLock:(id)lock removingAssetLock:(id)assetLock lastClient:(id)client forSelector:(id)selector message:(id)message
{
  assetLockCopy = assetLock;
  clientCopy = client;
  selectorCopy = selector;
  messageCopy = message;
  lockCopy = lock;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  lockCopy = [[NSString alloc] initWithFormat:@"%@:_removeAssetLock", lockCopy];
  persistedEntryID = [selectorCopy persistedEntryID];
  if (persistedEntryID)
  {
    [(MADAutoAssetLocker *)self _persistRemoveAssetLock:lockCopy removedAssetLock:assetLockCopy message:messageCopy];
    if ([assetLockCopy inhibitedFromEmergencyRemoval])
    {
      v20 = 303;
    }

    else
    {
      v20 = 302;
    }

    lockCountsTotal = [(MADAutoAssetLocker *)self lockCountsTotal];
    v22 = [(MADAutoAssetLocker *)self _assetIDOfLock:assetLockCopy];
    if (clientCopy)
    {
      [MADAutoAssetHistory recordOperation:v20 toHistoryType:1 fromClient:clientCopy usageCount:lockCountsTotal forAssetID:v22 withSelector:selectorCopy];
    }

    else
    {
      [MADAutoAssetHistory recordOperation:v20 toHistoryType:1 fromLayer:3 usageCount:lockCountsTotal forAssetID:v22 withSelector:selectorCopy];
    }
  }

  else
  {
    v23 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      summary = [(MADAutoAssetLocker *)self summary];
      summary2 = [selectorCopy summary];
      summary3 = [assetLockCopy summary];
      *buf = 138544386;
      v28 = summary;
      v29 = 2114;
      v30 = lockCopy;
      v31 = 2114;
      v32 = messageCopy;
      v33 = 2114;
      v34 = summary2;
      v35 = 2114;
      v36 = summary3;
      _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, "%{public}@ | {%{public}@} | %{public}@: | no entry ID for fullAssetSelector:%{public}@ | assetLock:%{public}@", buf, 0x34u);
    }
  }
}

+ (void)resumeFromPersistedWithDownloadedSelectors:(id)selectors
{
  selectorsCopy = selectors;
  v4 = +[MADAutoAssetLocker autoAssetLocker];
  v5 = v4;
  if (v4)
  {
    lockerQueue = [v4 lockerQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __65__MADAutoAssetLocker_resumeFromPersistedWithDownloadedSelectors___block_invoke_1272;
    v8[3] = &unk_4B2B18;
    v9 = v5;
    v10 = selectorsCopy;
    dispatch_async(lockerQueue, v8);
  }

  else
  {
    v7 = [MADAutoAssetControlManager selectDispatchQueue:0];
    dispatch_async(v7, &__block_literal_global_1271);
  }
}

void __65__MADAutoAssetLocker_resumeFromPersistedWithDownloadedSelectors___block_invoke(id a1)
{
  v1 = _MADLog(@"AutoLocker");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&dword_0, v1, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:resumeFromPersistedWithDownloadedSelectors} | unable to determine current locks from persisted-state (no auto-asset-locker)", v2, 2u);
  }

  +[MADAutoAssetControlManager lockerResumed];
}

void __65__MADAutoAssetLocker_resumeFromPersistedWithDownloadedSelectors___block_invoke_1272(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) lockCountsBySelector];

  if (v2)
  {
    v3 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "{resumeFromPersistedWithDownloadedSelectors} | called a second time when should only be called once", buf, 2u);
    }

    goto LABEL_39;
  }

  v4 = objc_alloc_init(NSMutableDictionary);
  [*(v1 + 32) setLockCountsBySelector:v4];

  v5 = [*(v1 + 32) persistedState];
  [v5 loadPersistedState:@"resumeFromPersistedWithDownloadedSelectors"];

  v6 = [*(v1 + 32) persistedState];
  v3 = [v6 persistedEntryIDs:@"resumeFromPersistedWithDownloadedSelectors"];

  if ([v3 count])
  {
    [*(v1 + 32) trackPerformanceIteration:@"resumeFromPersistedWithDownloadedSelectors" ofContainer:@"persistedState"];
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v46 = v3;
    obj = v3;
    v49 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (!v49)
    {
      goto LABEL_31;
    }

    v7 = @"resumeFromPersistedWithDownloadedSelectors";
    v48 = *v55;
    while (1)
    {
      for (i = 0; i != v49; i = i + 1)
      {
        if (*v55 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v54 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        v11 = [*(v1 + 32) persistedState];
        v12 = [v11 persistedEntry:v9 fromLocation:v7];

        if (v12)
        {
          v52 = i;
          v53 = v10;
          v51 = [NSSet alloc];
          v50 = objc_opt_class();
          v13 = objc_opt_class();
          v14 = objc_opt_class();
          v15 = v12;
          v16 = v1;
          v17 = objc_opt_class();
          v18 = v7;
          v19 = objc_opt_class();
          v20 = objc_opt_class();
          v21 = objc_opt_class();
          v44 = v17;
          v45 = v19;
          v7 = v18;
          v1 = v16;
          v12 = v15;
          v22 = [v51 initWithObjects:{v50, v13, v14, v44, v45, v20, v21, objc_opt_class(), 0}];
          v23 = [*(v1 + 32) persistedState];
          LOBYTE(v43) = 0;
          v24 = [v23 decodeFromLocation:v7 ofEntryName:v9 fromPersistedEntry:v15 decodingObjectForKey:@"assetLock" ofClass:objc_opt_class() withEncodeClasses:v22 allowingNilObject:v43];

          if (v24)
          {
            v25 = [v24 fullAssetSelector];

            if (v25)
            {
              if (__isPlatformVersionAtLeast(2, 18, 4, 0) && ([v24 fullAssetSelector], v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_opt_respondsToSelector(), v26, (v27 & 1) != 0) && (objc_msgSend(v24, "fullAssetSelector"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v28, "setAtomicInstanceUUID"), v29 = objc_claimAutoreleasedReturnValue(), v29, v28, v29) || (v30 = *(v1 + 40), objc_msgSend(v24, "fullAssetSelector"), v31 = objc_claimAutoreleasedReturnValue(), LOBYTE(v30) = objc_msgSend(v30, "containsObject:", v31), v31, (v30 & 1) != 0))
              {
                [*(v1 + 32) addToLockCountsBySelector:v7 addingAssetLock:v24];
                v32 = *(v1 + 32);
                v33 = [v24 fullAssetSelector];
                [v32 _logPersistedEntry:v7 operation:@"ENTRY_LOAD" persistingAssetLock:v24 forSelector:v33 message:@"resumed from persisted-state for currently downloaded selector"];
              }

              else
              {
                v36 = _MADLog(@"AutoLocker");
                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138543362;
                  v59 = v9;
                  _os_log_impl(&dword_0, v36, OS_LOG_TYPE_ERROR, "{resumeFromPersistedWithDownloadedSelectors} | downloaded asset selector does not contain persisted entry:%{public}@", buf, 0xCu);
                }

                v37 = *(v1 + 32);
                v33 = [v24 fullAssetSelector];
                [v37 _removeAssetLock:v7 removingAssetLock:v24 lastClient:0 forSelector:v33 message:@"downloaded asset selector does not contain persisted entry"];
              }

              goto LABEL_28;
            }

            v33 = _MADLog(@"AutoLocker");
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v59 = v9;
              v34 = v33;
              v35 = "{resumeFromPersistedWithDownloadedSelectors} | missing asset selector for entry:%{public}@";
LABEL_24:
              _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, v35, buf, 0xCu);
            }
          }

          else
          {
            v33 = _MADLog(@"AutoLocker");
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v59 = v9;
              v34 = v33;
              v35 = "{resumeFromPersistedWithDownloadedSelectors} | no asset-lock entry found for entry:%{public}@";
              goto LABEL_24;
            }
          }

LABEL_28:
          i = v52;
          v10 = v53;

          goto LABEL_29;
        }

        v22 = _MADLog(@"AutoLocker");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v59 = v9;
          _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "{resumeFromPersistedWithDownloadedSelectors} | unable to determine previous status for entry:%{public}@", buf, 0xCu);
        }

LABEL_29:

        objc_autoreleasePoolPop(v10);
      }

      v49 = [obj countByEnumeratingWithState:&v54 objects:v62 count:16];
      if (!v49)
      {
LABEL_31:

        v38 = _MADLog(@"AutoLocker");
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [*(v1 + 32) lockCountsTotal];
          v40 = [*(v1 + 32) lockCountsTotal];
          v41 = @"s";
          if (v40 == &dword_0 + 1)
          {
            v41 = &stru_4BD3F0;
          }

          *buf = 134218242;
          v59 = v39;
          v60 = 2114;
          v61 = v41;
          _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "{resumeFromPersistedWithDownloadedSelectors} | %ld lock%{public}@ (by selector) | MA_MILESTONE", buf, 0x16u);
        }

        v3 = v46;
        goto LABEL_38;
      }
    }
  }

  v38 = _MADLog(@"AutoLocker");
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "{resumeFromPersistedWithDownloadedSelectors} | no locked auto-assets | MA_MILESTONE", buf, 2u);
  }

LABEL_38:

  [*(v1 + 32) _logPersistedTableOfContents:@"resumeFromPersistedWithDownloadedSelectors"];
LABEL_39:

  v42 = [MADAutoAssetControlManager selectDispatchQueue:0];
  dispatch_async(v42, &__block_literal_global_1296);
}

+ (int64_t)persistedLocksCount
{
  v2 = +[MADAutoAssetLocker autoAssetLocker];
  v3 = v2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -1;
  if (v2)
  {
    lockerQueue = [v2 lockerQueue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __41__MADAutoAssetLocker_persistedLocksCount__block_invoke;
    v8[3] = &unk_4B2AC8;
    v10 = &v12;
    v9 = v3;
    dispatch_sync(lockerQueue, v8);

    v5 = v9;
  }

  else
  {
    v5 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:persistedLocksCount} | unable to determine current auto-asset lock count (no auto-asset-locker)", buf, 2u);
    }
  }

  v6 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v6;
}

id __41__MADAutoAssetLocker_persistedLocksCount__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) lockCountsTotal];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)_persistAssetLock:(id)lock operation:(id)operation forAssetLock:(id)assetLock withDeltaLockCount:(int64_t)count message:(id)message
{
  lockCopy = lock;
  operationCopy = operation;
  assetLockCopy = assetLock;
  messageCopy = message;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  fullAssetSelector = [assetLockCopy fullAssetSelector];
  persistedEntryID = [fullAssetSelector persistedEntryID];

  persistedState = [(MADAutoAssetLocker *)self persistedState];
  v20 = [persistedState persistedEntry:persistedEntryID fromLocation:lockCopy];

  if (v20)
  {
    v52 = messageCopy;
    lockCountsBySelector = [(MADAutoAssetLocker *)self lockCountsBySelector];
    v22 = [lockCountsBySelector safeObjectForKey:persistedEntryID ofClass:objc_opt_class()];

    if ([SUCore stringIsEqual:operationCopy to:@"ENTRY_ADD"])
    {
      if (!v22)
      {
        v22 = [[NSNumber alloc] initWithInteger:count];
        lockCountsBySelector2 = [(MADAutoAssetLocker *)self lockCountsBySelector];
        [lockCountsBySelector2 setSafeObject:v22 forKey:persistedEntryID];

        [(MADAutoAssetLocker *)self setLockCountsTotal:[(MADAutoAssetLocker *)self lockCountsTotal]+ count];
LABEL_39:
        messageCopy = v52;
LABEL_40:
        [v20 persistSecureCodedObject:assetLockCopy forKey:{@"assetLock", summary5}];
        persistedState2 = [(MADAutoAssetLocker *)self persistedState];
        summary = [assetLockCopy summary];
        [persistedState2 storePersistedEntry:persistedEntryID withEntrySummary:summary fromLocation:lockCopy];

        fullAssetSelector2 = [assetLockCopy fullAssetSelector];
        [(MADAutoAssetLocker *)self _logPersistedEntry:lockCopy operation:operationCopy persistingAssetLock:assetLockCopy forSelector:fullAssetSelector2 message:messageCopy];

        goto LABEL_41;
      }

LABEL_9:
      v27 = [[NSNumber alloc] initWithInteger:{-[NSObject integerValue](v22, "integerValue") + count}];

      lockCountsBySelector3 = [(MADAutoAssetLocker *)self lockCountsBySelector];
      [lockCountsBySelector3 setSafeObject:v27 forKey:persistedEntryID];

      [(MADAutoAssetLocker *)self setLockCountsTotal:[(MADAutoAssetLocker *)self lockCountsTotal]+ count];
      v22 = v27;
      goto LABEL_39;
    }

    if ([SUCore stringIsEqual:operationCopy to:@"ENTRY_INCREASED"])
    {
      if (v22)
      {
        goto LABEL_9;
      }

      v35 = _MADLog(@"AutoLocker");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        fullAssetSelector3 = [assetLockCopy fullAssetSelector];
        summary2 = [fullAssetSelector3 summary];
        *buf = 138543618;
        v54 = lockCopy;
        v55 = 2114;
        countCopy = summary2;
        v38 = "{AUTO-LOCKER:%{public}@:_persistAssetLock} | increasing lock count for selector not represented in lockCountsBySelector | selector:%{public}@";
LABEL_28:
        _os_log_impl(&dword_0, v35, OS_LOG_TYPE_ERROR, v38, buf, 0x16u);

        goto LABEL_29;
      }

      goto LABEL_29;
    }

    if (![SUCore stringIsEqual:operationCopy to:@"ENTRY_DECREASED"])
    {
      if ([SUCore stringIsEqual:operationCopy to:@"ENTRY_MODIFY"])
      {
        if (!v22)
        {
          v32 = _MADLog(@"AutoLocker");
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            fullAssetSelector4 = [assetLockCopy fullAssetSelector];
            summary3 = [fullAssetSelector4 summary];
            *buf = 138543618;
            v54 = lockCopy;
            v55 = 2114;
            countCopy = summary3;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:%{public}@:_persistAssetLock} | continued lock count for selector not represented in lockCountsBySelector | selector:%{public}@", buf, 0x16u);
          }

          v22 = 0;
        }
      }

      else
      {
        v39 = _MADLog(@"AutoLocker");
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          loga = [assetLockCopy fullAssetSelector];
          summary4 = [loga summary];
          *buf = 138543874;
          v54 = lockCopy;
          v55 = 2114;
          countCopy = summary4;
          v57 = 2114;
          countCopy3 = operationCopy;
          _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:%{public}@:_persistAssetLock} | unknown persistedStateOperation type | selector:%{public}@ persistedStateOperation:%{public}@", buf, 0x20u);
        }
      }

      goto LABEL_40;
    }

    if (!v22)
    {
      v35 = _MADLog(@"AutoLocker");
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        fullAssetSelector3 = [assetLockCopy fullAssetSelector];
        summary2 = [fullAssetSelector3 summary];
        *buf = 138543618;
        v54 = lockCopy;
        v55 = 2114;
        countCopy = summary2;
        v38 = "{AUTO-LOCKER:%{public}@:_persistAssetLock} | decreasing lock count for selector not represented in lockCountsBySelector | selector:%{public}@";
        goto LABEL_28;
      }

LABEL_29:

      v22 = 0;
      goto LABEL_39;
    }

    integerValue = [v22 integerValue];
    v30 = integerValue;
    if (count == -1 || integerValue >= count)
    {
      if (count == -1 || integerValue != count)
      {
        goto LABEL_36;
      }

      log = _MADLog(@"AutoLocker");
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        fullAssetSelector5 = [assetLockCopy fullAssetSelector];
        summary5 = [fullAssetSelector5 summary];
        *buf = 138544130;
        v54 = lockCopy;
        v55 = 2048;
        countCopy = count;
        v57 = 2048;
        countCopy3 = count;
        v59 = 2114;
        v60 = summary5;
        v31 = "{AUTO-LOCKER:%{public}@:_persistAssetLock} | decreasing lock count to 0 - should be a remove operation (ignored) | lockCountToDecrease:%ld | deltaLockCount:%ld | selector:%{public}@";
        goto LABEL_34;
      }
    }

    else
    {
      log = _MADLog(@"AutoLocker");
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        fullAssetSelector5 = [assetLockCopy fullAssetSelector];
        summary5 = [fullAssetSelector5 summary];
        *buf = 138544130;
        v54 = lockCopy;
        v55 = 2048;
        countCopy = v30;
        v57 = 2048;
        countCopy3 = count;
        v59 = 2114;
        v60 = summary5;
        v31 = "{AUTO-LOCKER:%{public}@:_persistAssetLock} | decreasing lock count for selector with fewer locks tracked (ignored) | lockCountToDecrease:%ld | deltaLockCount:%ld | selector:%{public}@";
LABEL_34:
        _os_log_impl(&dword_0, log, OS_LOG_TYPE_ERROR, v31, buf, 0x2Au);
      }
    }

LABEL_36:
    if (count == -1)
    {
      count = v30;
    }

    countCopy4 = count;
    v42 = [[NSNumber alloc] initWithInteger:v30 - count];

    lockCountsBySelector4 = [(MADAutoAssetLocker *)self lockCountsBySelector];
    [lockCountsBySelector4 setSafeObject:v42 forKey:persistedEntryID];

    [(MADAutoAssetLocker *)self setLockCountsTotal:[(MADAutoAssetLocker *)self lockCountsTotal]- countCopy4];
    v22 = v42;
    goto LABEL_39;
  }

  v22 = _MADLog(@"AutoLocker");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    lockCountsTotal = [(MADAutoAssetLocker *)self lockCountsTotal];
    fullAssetSelector6 = [assetLockCopy fullAssetSelector];
    summary6 = [fullAssetSelector6 summary];
    *buf = 134218498;
    v54 = lockCountsTotal;
    v55 = 2114;
    countCopy = lockCopy;
    v57 = 2114;
    countCopy3 = summary6;
    _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER[totalLocks:%ld]:%{public}@:_persistAssetLock} | unable to record delta-to-locks (no persisted-state) for selector:%{public}@", buf, 0x20u);
  }

LABEL_41:

  return v20 != 0;
}

- (void)_persistRemoveAssetLock:(id)lock removedAssetLock:(id)assetLock message:(id)message
{
  lockCopy = lock;
  assetLockCopy = assetLock;
  messageCopy = message;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  fullAssetSelector = [assetLockCopy fullAssetSelector];
  persistedEntryID = [fullAssetSelector persistedEntryID];

  if (persistedEntryID)
  {
    persistedState = [(MADAutoAssetLocker *)self persistedState];
    v15 = [persistedState persistedEntry:persistedEntryID fromLocation:lockCopy];

    lockCountsBySelector = [(MADAutoAssetLocker *)self lockCountsBySelector];
    v17 = [lockCountsBySelector safeObjectForKey:persistedEntryID ofClass:objc_opt_class()];

    if (v17)
    {
      lockCountsBySelector2 = [(MADAutoAssetLocker *)self lockCountsBySelector];
      [lockCountsBySelector2 removeObjectForKey:persistedEntryID];

      -[MADAutoAssetLocker setLockCountsTotal:](self, "setLockCountsTotal:", -[MADAutoAssetLocker lockCountsTotal](self, "lockCountsTotal") - [v17 integerValue]);
      if (v15)
      {
LABEL_4:
        persistedState2 = [(MADAutoAssetLocker *)self persistedState];
        [persistedState2 removePersistedEntry:persistedEntryID fromLocation:lockCopy];

        fullAssetSelector2 = [assetLockCopy fullAssetSelector];
        [(MADAutoAssetLocker *)self _logPersistedRemovedEntry:lockCopy removedAssetLock:assetLockCopy forSelector:fullAssetSelector2 message:messageCopy];
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v24 = _MADLog(@"AutoLocker");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        lockCountsTotal = [(MADAutoAssetLocker *)self lockCountsTotal];
        fullAssetSelector3 = [assetLockCopy fullAssetSelector];
        summary = [fullAssetSelector3 summary];
        *buf = 134218498;
        v32 = lockCountsTotal;
        v33 = 2114;
        v34 = lockCopy;
        v35 = 2114;
        v36 = summary;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER[totalLocks:%ld]:%{public}@:_persistRemoveAssetLock} | removing asset-lock that is not represented in lockCountsBySelector | selector:%{public}@", buf, 0x20u);
      }

      if (v15)
      {
        goto LABEL_4;
      }
    }

    fullAssetSelector2 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(fullAssetSelector2, OS_LOG_TYPE_ERROR))
    {
      lockCountsTotal2 = [(MADAutoAssetLocker *)self lockCountsTotal];
      fullAssetSelector4 = [assetLockCopy fullAssetSelector];
      summary2 = [fullAssetSelector4 summary];
      *buf = 134218498;
      v32 = lockCountsTotal2;
      v33 = 2114;
      v34 = lockCopy;
      v35 = 2114;
      v36 = summary2;
      _os_log_impl(&dword_0, fullAssetSelector2, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER[totalLocks:%ld]:%{public}@:_persistRemoveAssetLock} | unable to remove lock tracker (no persisted-state) for selector:%{public}@", buf, 0x20u);
    }

    goto LABEL_12;
  }

  v15 = _MADLog(@"AutoLocker");
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    lockCountsTotal3 = [(MADAutoAssetLocker *)self lockCountsTotal];
    fullAssetSelector5 = [assetLockCopy fullAssetSelector];
    summary3 = [fullAssetSelector5 summary];
    *buf = 134218498;
    v32 = lockCountsTotal3;
    v33 = 2114;
    v34 = lockCopy;
    v35 = 2114;
    v36 = summary3;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER[totalLocks:%ld]:%{public}@:_persistRemoveAssetLock} | no entry ID for selector (ignored) | selector:%{public}@", buf, 0x20u);
  }

LABEL_13:
}

- (void)_mergeAddedLock:(id)lock intoExistingLock:(id)existingLock
{
  lockCopy = lock;
  existingLockCopy = existingLock;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  lockUsagePolicy = [lockCopy lockUsagePolicy];

  if (lockUsagePolicy)
  {
    lockUsagePolicy2 = [lockCopy lockUsagePolicy];
    [existingLockCopy setLockUsagePolicy:lockUsagePolicy2];
  }

  [existingLockCopy setActiveLockCount:{objc_msgSend(existingLockCopy, "activeLockCount") + 1}];
  activeLockCount = [existingLockCopy activeLockCount];
  if (activeLockCount > [existingLockCopy maximumLockCount])
  {
    [existingLockCopy setMaximumLockCount:{objc_msgSend(existingLockCopy, "activeLockCount")}];
  }

  [existingLockCopy setTotalLockCount:{objc_msgSend(existingLockCopy, "totalLockCount") + 1}];
  v11 = +[NSDate date];
  [existingLockCopy setLastRefreshTimestamp:v11];
}

- (void)_mergeContinuedLock:(id)lock intoExistingLock:(id)existingLock
{
  lockCopy = lock;
  existingLockCopy = existingLock;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  lockUsagePolicy = [lockCopy lockUsagePolicy];

  if (lockUsagePolicy)
  {
    lockUsagePolicy2 = [lockCopy lockUsagePolicy];
    [existingLockCopy setLockUsagePolicy:lockUsagePolicy2];
  }

  [existingLockCopy setContinueCount:{objc_msgSend(existingLockCopy, "continueCount") + 1}];
  v10 = +[NSDate date];
  [existingLockCopy setLastRefreshTimestamp:v10];
}

- (BOOL)_endLockDecideUnlocked:(id)unlocked
{
  unlockedCopy = unlocked;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  if ([unlockedCopy activeLockCount] >= 1)
  {
    [unlockedCopy setActiveLockCount:{objc_msgSend(unlockedCopy, "activeLockCount") - 1}];
  }

  v6 = [unlockedCopy activeLockCount] < 1;

  return v6;
}

- (void)_logPersistedEntry:(id)entry operation:(id)operation persistingAssetLock:(id)lock forSelector:(id)selector message:(id)message
{
  entryCopy = entry;
  operationCopy = operation;
  lockCopy = lock;
  selectorCopy = selector;
  messageCopy = message;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  v18 = [MADAutoAssetPersisted persistedOperationSymbol:operationCopy];
  persistedEntryID = [selectorCopy persistedEntryID];
  v20 = _MADLog(@"AutoLocker");
  v21 = v20;
  if (persistedEntryID)
  {
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      lockCountsTotal = [(MADAutoAssetLocker *)self lockCountsTotal];
      summary = [selectorCopy summary];
      v23 = [(MADAutoAssetLocker *)self _newAssetLockSummaryWithoutSelectorOrAttributes:lockCopy];
      *buf = 138546690;
      v30 = @"PERSISTED";
      v31 = 2114;
      v32 = @"AUTO-LOCKER";
      v33 = 2114;
      v34 = operationCopy;
      v35 = 2114;
      v36 = @"LOCKR";
      v37 = 2114;
      v38 = @">----->";
      v39 = 2114;
      v40 = entryCopy;
      v41 = 2114;
      v42 = messageCopy;
      v43 = 2048;
      v44 = lockCountsTotal;
      v45 = 2114;
      v46 = @"LOCKR";
      v47 = 2114;
      v48 = v18;
      v49 = 2114;
      v50 = summary;
      v51 = 2114;
      v52 = v23;
      v53 = 2114;
      v54 = @"LOCKR";
      v55 = 2114;
      v56 = @"<-----<";
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@ [totalLocks:%ld]\n#_%{public}@:(%{public}@) [%{public}@] | %{public}@\n#_%{public}@:%{public}@", buf, 0x8Eu);
    }
  }

  else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    summary2 = [(MADAutoAssetLocker *)self summary];
    summary3 = [selectorCopy summary];
    [lockCopy summary];
    *buf = 138544642;
    v30 = summary2;
    v31 = 2114;
    v32 = entryCopy;
    v33 = 2114;
    v34 = operationCopy;
    v35 = 2114;
    v36 = messageCopy;
    v37 = 2114;
    v25 = summary3;
    v38 = summary3;
    v40 = v39 = 2114;
    v26 = v40;
    _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%{public}@ | {%{public}@:_logPersistedEntry} %{public}@ | no fullAssetSelectorKey | %{public}@ | fullAssetSelector:%{public}@ | assetLock:%{public}@", buf, 0x3Eu);
  }
}

- (void)_logPersistedRemovedEntry:(id)entry removedAssetLock:(id)lock forSelector:(id)selector message:(id)message
{
  entryCopy = entry;
  lockCopy = lock;
  selectorCopy = selector;
  messageCopy = message;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  v15 = [MADAutoAssetPersisted persistedOperationSymbol:@"ENTRY_REMOVE"];
  persistedEntryID = [selectorCopy persistedEntryID];
  v17 = _MADLog(@"AutoLocker");
  v18 = v17;
  if (persistedEntryID)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      lockCountsTotal = [(MADAutoAssetLocker *)self lockCountsTotal];
      summary = [(MADAutoAssetLocker *)self _newAssetLockSummaryWithoutSelectorOrAttributes:lockCopy];
      v23 = 138546690;
      v24 = @"PERSISTED";
      v25 = 2114;
      v26 = @"AUTO-LOCKER";
      v27 = 2114;
      v28 = @"ENTRY_REMOVE";
      v29 = 2114;
      v30 = @"LOCKR";
      v31 = 2114;
      v32 = @">----->";
      v33 = 2114;
      v34 = entryCopy;
      v35 = 2114;
      v36 = messageCopy;
      v37 = 2048;
      v38 = lockCountsTotal;
      v39 = 2114;
      v40 = @"LOCKR";
      v41 = 2114;
      v42 = v15;
      v43 = 2114;
      v44 = persistedEntryID;
      v45 = 2114;
      v46 = summary;
      v47 = 2114;
      v48 = @"LOCKR";
      v49 = 2114;
      v50 = @"<-----<";
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@ [totalLocks:%ld]\n#_%{public}@:(%{public}@) [%{public}@] | %{public}@\n#_%{public}@:%{public}@", &v23, 0x8Eu);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    summary = [(MADAutoAssetLocker *)self summary];
    summary2 = [selectorCopy summary];
    summary3 = [lockCopy summary];
    v23 = 138544386;
    v24 = summary;
    v25 = 2114;
    v26 = entryCopy;
    v27 = 2114;
    v28 = messageCopy;
    v29 = 2114;
    v30 = summary2;
    v31 = 2114;
    v32 = summary3;
    _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "%{public}@ | {%{public}@:_logPersistedRemovedEntry} | no fullAssetSelectorKey to remove | %{public}@ | fullAssetSelector:%{public}@ | assetLock:%{public}@", &v23, 0x34u);

    goto LABEL_6;
  }
}

- (void)_logPersistedTableOfContents:(id)contents
{
  contentsCopy = contents;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  if (+[MADAutoAssetControlManager preferencePersistedTableLoggingEnabled])
  {
    persistedState = [(MADAutoAssetLocker *)self persistedState];
    v7 = [persistedState persistedEntryIDs:contentsCopy];

    if ([v7 count])
    {
      v8 = [v7 count];
      v9 = _MADLog(@"AutoLocker");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544642;
        v39 = @"PERSISTED";
        v40 = 2114;
        v41 = @"AUTO-LOCKER";
        v42 = 2114;
        v43 = @"ENTRY_LOAD";
        v44 = 2114;
        v45 = @"LOCKR";
        v46 = 2114;
        v47 = @">----->";
        v48 = 2114;
        v49 = contentsCopy;
        _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} table-of-contents...", buf, 0x3Eu);
      }

      if (v8 >= 1)
      {
        v10 = 0;
        v33 = v7;
        do
        {
          v11 = [v7 objectAtIndexedSubscript:v10];
          persistedState2 = [(MADAutoAssetLocker *)self persistedState];
          v13 = [persistedState2 persistedEntry:v11 fromLocation:contentsCopy];

          if (v13)
          {
            v36 = [NSSet alloc];
            v35 = objc_opt_class();
            v34 = objc_opt_class();
            v37 = v13;
            v14 = objc_opt_class();
            v15 = v8;
            v16 = objc_opt_class();
            v17 = objc_opt_class();
            v31 = objc_opt_class();
            v32 = objc_opt_class();
            v30 = v16;
            v8 = v15;
            v29 = v14;
            v13 = v37;
            v18 = [v36 initWithObjects:{v35, v34, v29, v30, v17, v31, v32, objc_opt_class(), 0}];
            persistedState3 = [(MADAutoAssetLocker *)self persistedState];
            LOBYTE(v28) = 0;
            v20 = [persistedState3 decodeFromLocation:contentsCopy ofEntryName:v11 fromPersistedEntry:v37 decodingObjectForKey:@"assetLock" ofClass:objc_opt_class() withEncodeClasses:v18 allowingNilObject:v28];

            if (v20)
            {
              v21 = _MADLog(@"AutoLocker");
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = [(MADAutoAssetLocker *)self _newAssetLockSummaryWithoutSelectorOrAttributes:v20];
                *buf = 138544642;
                v39 = @"LOCKR";
                v40 = 2114;
                v41 = @"E_LOD";
                v42 = 2048;
                v43 = (v10 + 1);
                v13 = v37;
                v44 = 2048;
                v45 = v8;
                v46 = 2114;
                v47 = v11;
                v48 = 2114;
                v49 = v22;
                _os_log_impl(&dword_0, v21, OS_LOG_TYPE_DEFAULT, "\n#_%{public}@:%{public}@ (%ld of %ld) [%{public}@] | %{public}@", buf, 0x3Eu);
              }
            }

            v7 = v33;
          }

          else
          {
            v18 = _MADLog(@"AutoLocker");
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              summary = [(MADAutoAssetLocker *)self summary];
              *buf = 138543874;
              v39 = contentsCopy;
              v40 = 2114;
              v41 = summary;
              v42 = 2114;
              v43 = v11;
              _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "{%{public}@:_logPersistedTableOfContents} | %{public}@ | unable to load entry:%{public}@", buf, 0x20u);
            }
          }

          ++v10;
        }

        while (v8 != v10);
      }

      v24 = _MADLog(@"AutoLocker");
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      *buf = 138544642;
      v39 = @"PERSISTED";
      v40 = 2114;
      v41 = @"AUTO-LOCKER";
      v42 = 2114;
      v43 = @"ENTRY_LOAD";
      v44 = 2114;
      v45 = @"LOCKR";
      v46 = 2114;
      v47 = @"<-----<";
      v48 = 2114;
      v49 = contentsCopy;
      v25 = "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} ...table-of-contents";
      v26 = v24;
      v27 = 62;
    }

    else
    {
      v24 = _MADLog(@"AutoLocker");
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
LABEL_21:

        goto LABEL_22;
      }

      *buf = 138545410;
      v39 = @"PERSISTED";
      v40 = 2114;
      v41 = @"AUTO-LOCKER";
      v42 = 2114;
      v43 = @"ENTRY_LOAD";
      v44 = 2114;
      v45 = @"LOCKR";
      v46 = 2114;
      v47 = @">----->";
      v48 = 2114;
      v49 = contentsCopy;
      v50 = 2114;
      v51 = @"empty table-of-contents";
      v52 = 2114;
      v53 = @"LOCKR";
      v54 = 2114;
      v55 = @"<-----<";
      v25 = "[%{public}@][%{public}@][%{public}@]\n#_%{public}@:%{public}@ {%{public}@} %{public}@\n#_%{public}@:%{public}@";
      v26 = v24;
      v27 = 92;
    }

    _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, v25, buf, v27);
    goto LABEL_21;
  }

LABEL_22:
}

- (id)_locateLockByPersistentEntryID:(id)d
{
  dCopy = d;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  persistedState = [(MADAutoAssetLocker *)self persistedState];
  v7 = [persistedState persistedEntryAlreadyExists:dCopy fromLocation:@"locateLockBySelector"];

  if (!v7)
  {
    v22 = 0;
    goto LABEL_16;
  }

  persistedState2 = [(MADAutoAssetLocker *)self persistedState];
  v9 = [persistedState2 persistedEntry:dCopy fromLocation:@"locateLockBySelector"];

  if (v9)
  {
    v28 = [NSSet alloc];
    v10 = objc_opt_class();
    v11 = v9;
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v26 = v12;
    v9 = v11;
    v18 = [v28 initWithObjects:{v10, v26, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
    persistedState3 = [(MADAutoAssetLocker *)self persistedState];
    LOBYTE(v27) = 0;
    v20 = [persistedState3 decodeFromLocation:@"locateLockBySelector" ofEntryName:dCopy fromPersistedEntry:v9 decodingObjectForKey:@"assetLock" ofClass:objc_opt_class() withEncodeClasses:v18 allowingNilObject:v27];

    if (v20)
    {
      fullAssetSelector = [v20 fullAssetSelector];

      if (fullAssetSelector)
      {
        v22 = v20;
LABEL_14:

        goto LABEL_15;
      }

      v23 = _MADLog(@"AutoLocker");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v30 = dCopy;
        v24 = "{locateLockBySelector} | missing asset selector for entry:%{public}@";
        goto LABEL_12;
      }
    }

    else
    {
      v23 = _MADLog(@"AutoLocker");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v30 = dCopy;
        v24 = "{locateLockBySelector} | no asset-lock entry found for entry:%{public}@";
LABEL_12:
        _os_log_impl(&dword_0, v23, OS_LOG_TYPE_ERROR, v24, buf, 0xCu);
      }
    }

    v22 = 0;
    goto LABEL_14;
  }

  v22 = 0;
LABEL_15:

LABEL_16:

  return v22;
}

- (id)locateLockByFullAssetSelector:(id)selector
{
  selectorCopy = selector;
  if ([selectorCopy isFullAssetSelector])
  {
    persistedEntryID = [selectorCopy persistedEntryID];
    v6 = [(MADAutoAssetLocker *)self _locateLockByPersistentEntryID:persistedEntryID];
  }

  else
  {
    v7 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      summary = [selectorCopy summary];
      v10 = 138543362;
      v11 = summary;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:locateLockByFullAssetSelector} fullAssetSelector's isFullAssetSelector check failed | fullAssetSelector:%{public}@", &v10, 0xCu);
    }

    v6 = 0;
  }

  return v6;
}

- (id)locateLocksBySelector:(id)selector
{
  selectorCopy = selector;
  selfCopy = self;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  v6 = objc_opt_new();
  if (!v6)
  {
    v9 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "{AUTO-LOCKER:newCurrentLockUsageForSelector} | bad alloc/init for locatedLocksForSelector";
LABEL_57:
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, v10, buf, 2u);
    }

LABEL_58:

    v8 = 0;
    goto LABEL_71;
  }

  if (![selectorCopy isFullAssetSelector])
  {
    assetType = [selectorCopy assetType];

    if (assetType)
    {
      assetSpecifier = [selectorCopy assetSpecifier];

      if (assetSpecifier)
      {
        persistedEntryID = [selectorCopy persistedEntryID];
        if (persistedEntryID)
        {
          goto LABEL_11;
        }
      }

      else
      {
        assetType2 = [selectorCopy assetType];
        persistedEntryID = [NSString stringWithFormat:@"%@_", assetType2];

        if (persistedEntryID)
        {
LABEL_11:
          v14 = objc_opt_new();
          if (v14)
          {
            persistedState = [(MADAutoAssetLocker *)self persistedState];
            v16 = [persistedState persistedEntryIDs:@"locateLocksBySelectorPrefix"];

            if (v16)
            {
              v60 = v6;
              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v17 = v16;
              v18 = [v17 countByEnumeratingWithState:&v69 objects:v80 count:16];
              v19 = selfCopy;
              if (v18)
              {
                v20 = v18;
                v21 = *v70;
                do
                {
                  for (i = 0; i != v20; i = i + 1)
                  {
                    if (*v70 != v21)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v23 = *(*(&v69 + 1) + 8 * i);
                    if ([v23 hasPrefix:persistedEntryID])
                    {
                      [v14 addObject:v23];
                    }
                  }

                  v20 = [v17 countByEnumeratingWithState:&v69 objects:v80 count:16];
                }

                while (v20);
              }

              v61 = persistedEntryID;
              v58 = v17;

              v67 = 0u;
              v68 = 0u;
              v65 = 0u;
              v66 = 0u;
              v59 = v14;
              obj = v14;
              v24 = [obj countByEnumeratingWithState:&v65 objects:v79 count:16];
              if (v24)
              {
                v25 = v24;
                v26 = *v66;
                v63 = selectorCopy;
                do
                {
                  for (j = 0; j != v25; j = j + 1)
                  {
                    if (*v66 != v26)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v28 = *(*(&v65 + 1) + 8 * j);
                    v29 = objc_autoreleasePoolPush();
                    v30 = [(MADAutoAssetLocker *)v19 _locateLockByPersistentEntryID:v28];
                    v31 = v30;
                    if (v30)
                    {
                      fullAssetSelector = [v30 fullAssetSelector];
                      if (fullAssetSelector)
                      {
                        assetType3 = [selectorCopy assetType];

                        if (!assetType3)
                        {
                          v47 = _MADLog(@"AutoLocker");
                          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                          {
                            *buf = 0;
                            _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:newCurrentLockUsageForSelector} invarient failed, assetType must be non-nil", buf, 2u);
                          }

                          goto LABEL_51;
                        }

                        assetType4 = [selectorCopy assetType];
                        [fullAssetSelector assetType];
                        v36 = v35 = selectorCopy;
                        v37 = [SUCore stringIsEqual:assetType4 to:v36];

                        if (v37)
                        {
                          assetSpecifier2 = [v35 assetSpecifier];

                          selectorCopy = v35;
                          if (assetSpecifier2 && ([v35 assetSpecifier], v39 = objc_claimAutoreleasedReturnValue(), -[NSObject assetSpecifier](fullAssetSelector, "assetSpecifier"), v40 = objc_claimAutoreleasedReturnValue(), v41 = +[SUCore stringIsEqual:to:](SUCore, "stringIsEqual:to:", v39, v40), v40, v39, selectorCopy = v63, (v41 & 1) == 0))
                          {
                            v47 = _MADLog(@"AutoLocker");
                            v19 = selfCopy;
                            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                            {
                              summary = [v63 summary];
                              summary2 = [fullAssetSelector summary];
                              *buf = 138543874;
                              v74 = summary;
                              v75 = 2114;
                              v76 = summary2;
                              v77 = 2114;
                              v78 = v61;
                              v53 = v47;
                              v54 = "{AUTO-LOCKER:newCurrentLockUsageForSelector} allowed but unexpected naming collision on assetSpecifier | assetSelector:%{public}@ foundFullAssetSelector:%{public}@ prefix:%{public}@";
                              goto LABEL_50;
                            }
                          }

                          else
                          {
                            assetVersion = [selectorCopy assetVersion];

                            v19 = selfCopy;
                            if (!assetVersion || ([selectorCopy assetVersion], v43 = objc_claimAutoreleasedReturnValue(), -[NSObject assetVersion](fullAssetSelector, "assetVersion"), v44 = objc_claimAutoreleasedReturnValue(), v45 = +[SUCore stringIsEqual:to:](SUCore, "stringIsEqual:to:", v43, v44), v44, v43, selectorCopy = v63, (v45 & 1) != 0))
                            {
                              [v60 addObject:v31];
                              goto LABEL_52;
                            }

                            v47 = _MADLog(@"AutoLocker");
                            if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                            {
                              summary = [v63 summary];
                              summary2 = [fullAssetSelector summary];
                              *buf = 138543874;
                              v74 = summary;
                              v75 = 2114;
                              v76 = summary2;
                              v77 = 2114;
                              v78 = v61;
                              v53 = v47;
                              v54 = "{AUTO-LOCKER:newCurrentLockUsageForSelector} allowed but unexpected naming collision on assetVersion | assetSelector:%{public}@ foundFullAssetSelector:%{public}@ prefix:%{public}@";
LABEL_50:
                              _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEBUG, v54, buf, 0x20u);

                              selectorCopy = v63;
                            }
                          }

LABEL_51:

                          goto LABEL_52;
                        }

                        v48 = _MADLog(@"AutoLocker");
                        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                        {
                          summary3 = [v63 summary];
                          summary4 = [fullAssetSelector summary];
                          *buf = 138543874;
                          v74 = summary3;
                          v75 = 2114;
                          v76 = summary4;
                          v77 = 2114;
                          v78 = v61;
                          _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEBUG, "{AUTO-LOCKER:newCurrentLockUsageForSelector} allowed but unexpected naming collision on assetType | assetSelector:%{public}@ foundFullAssetSelector:%{public}@ prefix:%{public}@", buf, 0x20u);
                        }

                        selectorCopy = v63;
                        v19 = selfCopy;
                      }

                      else
                      {
                        v46 = _MADLog(@"AutoLocker");
                        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138543362;
                          v74 = v28;
                          _os_log_impl(&dword_0, v46, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:newCurrentLockUsageForSelector} lock missing fullAssetSelector | persistedEntryID:%{public}@", buf, 0xCu);
                        }
                      }
                    }

                    else
                    {
                      fullAssetSelector = _MADLog(@"AutoLocker");
                      if (os_log_type_enabled(fullAssetSelector, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 138543362;
                        v74 = v28;
                        _os_log_impl(&dword_0, fullAssetSelector, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:newCurrentLockUsageForSelector} unable to find lock for known persistedEntryID | persistedEntryID:%{public}@", buf, 0xCu);
                      }
                    }

LABEL_52:

                    objc_autoreleasePoolPop(v29);
                  }

                  v25 = [obj countByEnumeratingWithState:&v65 objects:v79 count:16];
                }

                while (v25);
              }

              v6 = v60;
              v8 = v60;
              persistedEntryID = v61;
              v16 = v58;
              v14 = v59;
              goto LABEL_69;
            }

            v56 = _MADLog(@"AutoLocker");
            if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v56, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:newCurrentLockUsageForSelector} | bad alloc/init for persistedEntryIDs", buf, 2u);
            }
          }

          else
          {
            v16 = _MADLog(@"AutoLocker");
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_impl(&dword_0, v16, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:newCurrentLockUsageForSelector} | bad alloc/init for persistedEntryIDsWithPrefix", buf, 2u);
            }
          }

          v8 = 0;
LABEL_69:

LABEL_70:
          goto LABEL_71;
        }
      }

      v14 = _MADLog(@"AutoLocker");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:newCurrentLockUsageForSelector} | bad alloc/init for prefix", buf, 2u);
      }

      v8 = 0;
      goto LABEL_70;
    }

    v9 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v10 = "{AUTO-LOCKER:newCurrentLockUsageForSelector} | missing assetSelector.assetType";
      goto LABEL_57;
    }

    goto LABEL_58;
  }

  v7 = [(MADAutoAssetLocker *)self locateLockByFullAssetSelector:selectorCopy];
  if (v7)
  {
    [v6 addObject:v7];
  }

  v8 = v6;

LABEL_71:

  return v8;
}

- (id)locateLocksNewAllBySelector
{
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  persistedState = [(MADAutoAssetLocker *)self persistedState];
  v5 = [persistedState persistedEntryIDs:@"locateLocksNewAllBySelector"];

  v30 = objc_alloc_init(NSMutableDictionary);
  if ([v5 count])
  {
    [(MADAutoAssetLocker *)self trackPerformanceIteration:@"locateLocksNewAllBySelector" ofContainer:@"persistedState"];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v29 = v5;
    obj = v5;
    v33 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (!v33)
    {
      goto LABEL_22;
    }

    v32 = *v39;
    while (1)
    {
      for (i = 0; i != v33; i = i + 1)
      {
        if (*v39 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v38 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        persistedState2 = [(MADAutoAssetLocker *)self persistedState];
        v10 = [persistedState2 persistedEntry:v7 fromLocation:@"locateLocksNewAllBySelector"];

        if (v10)
        {
          v37 = v8;
          v36 = [NSSet alloc];
          v35 = objc_opt_class();
          v34 = objc_opt_class();
          v11 = objc_opt_class();
          v12 = v10;
          v13 = objc_opt_class();
          v14 = objc_opt_class();
          v15 = objc_opt_class();
          v28 = objc_opt_class();
          v26 = v13;
          v27 = v14;
          v16 = v7;
          v10 = v12;
          v17 = [v36 initWithObjects:{v35, v34, v11, v26, v27, v15, v28, objc_opt_class(), 0}];
          persistedState3 = [(MADAutoAssetLocker *)self persistedState];
          LOBYTE(v25) = 0;
          v19 = [persistedState3 decodeFromLocation:@"locateLocksNewAllBySelector" ofEntryName:v7 fromPersistedEntry:v12 decodingObjectForKey:@"assetLock" ofClass:objc_opt_class() withEncodeClasses:v17 allowingNilObject:v25];

          if (v19)
          {
            fullAssetSelector = [v19 fullAssetSelector];

            if (fullAssetSelector)
            {
              [v30 setSafeObject:v19 forKey:v16];
LABEL_19:
              v8 = v37;

              goto LABEL_20;
            }

            v21 = _MADLog(@"AutoLocker");
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v43 = v16;
              v22 = v21;
              v23 = "{locateLocksNewAllBySelector} | missing asset selector for entry:%{public}@";
LABEL_17:
              _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, v23, buf, 0xCu);
            }
          }

          else
          {
            v21 = _MADLog(@"AutoLocker");
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v43 = v16;
              v22 = v21;
              v23 = "{locateLocksNewAllBySelector} | no asset-lock entry found for entry:%{public}@";
              goto LABEL_17;
            }
          }

          goto LABEL_19;
        }

        v17 = _MADLog(@"AutoLocker");
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v43 = v7;
          _os_log_impl(&dword_0, v17, OS_LOG_TYPE_ERROR, "{locateLocksNewAllBySelector} | unable to determine previous status for entry:%{public}@", buf, 0xCu);
        }

LABEL_20:

        objc_autoreleasePoolPop(v8);
      }

      v33 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
      if (!v33)
      {
LABEL_22:

        v5 = v29;
        break;
      }
    }
  }

  return v30;
}

- (void)addToLockCountsBySelector:(id)selector addingAssetLock:(id)lock
{
  lockCopy = lock;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  fullAssetSelector = [lockCopy fullAssetSelector];
  persistedEntryID = [fullAssetSelector persistedEntryID];

  lockCountsBySelector = [(MADAutoAssetLocker *)self lockCountsBySelector];
  v9 = [lockCountsBySelector safeObjectForKey:persistedEntryID ofClass:objc_opt_class()];

  v10 = [(MADAutoAssetLocker *)self _currentLockCountOfLock:lockCopy];
  v11 = [NSNumber alloc];
  if (v9)
  {
    v12 = [v11 initWithInteger:{objc_msgSend(v9, "integerValue") + v10}];
  }

  else
  {
    v12 = [v11 initWithInteger:v10];
  }

  lockCountsBySelector2 = [(MADAutoAssetLocker *)self lockCountsBySelector];
  [lockCountsBySelector2 setSafeObject:v12 forKey:persistedEntryID];

  [(MADAutoAssetLocker *)self setLockCountsTotal:[(MADAutoAssetLocker *)self lockCountsTotal]+ v10];
}

- (id)_refreshFilesystemMetadataLastInterest:(id)interest
{
  interestCopy = interest;
  if (__isPlatformVersionAtLeast(2, 18, 4, 0))
  {
    fullAssetSelector = [interestCopy fullAssetSelector];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      fullAssetSelector2 = [interestCopy fullAssetSelector];
      setAtomicInstanceUUID = [fullAssetSelector2 setAtomicInstanceUUID];

      if (setAtomicInstanceUUID)
      {
        v8 = _MADLog(@"Auto");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          summary = [interestCopy summary];
          v29 = 138543362;
          v30 = summary;
          v10 = "{AUTO-LOCKER:_refreshFilesystemMetadataLastInterest} asset-lock refresh skipped for set | asset-lock:%{public}@";
LABEL_11:
          _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, v10, &v29, 0xCu);

          goto LABEL_12;
        }

        goto LABEL_12;
      }
    }
  }

  localContentURL = [interestCopy localContentURL];

  if (localContentURL)
  {
    v12 = +[NSFileManager defaultManager];
    localContentURL2 = [interestCopy localContentURL];
    path = [localContentURL2 path];
    v15 = [v12 fileExistsAtPath:path];

    if (v15)
    {
      localContentURL3 = [interestCopy localContentURL];
      uRLByDeletingLastPathComponent = [localContentURL3 URLByDeletingLastPathComponent];
      updated = updateClientUsageDate(uRLByDeletingLastPathComponent);

      v19 = _MADLog(@"AutoLocker");
      v8 = v19;
      if (updated)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          summary = [interestCopy summary];
          v29 = 138543362;
          v30 = summary;
          v10 = "{AUTO-LOCKER:_refreshFilesystemMetadataLastInterest} asset-lock refreshed | asset-lock:%{public}@";
          goto LABEL_11;
        }

LABEL_12:

        v20 = 0;
        goto LABEL_24;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        summary2 = [interestCopy summary];
        v29 = 138543362;
        v30 = summary2;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:_refreshFilesystemMetadataLastInterest} asset-lock refresh failed to update usage date | asset-lock:%{public}@", &v29, 0xCu);
      }

      v23 = @"asset-lock refresh failed to update usage date";
    }

    else
    {
      v25 = _MADLog(@"AutoLocker");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        summary3 = [interestCopy summary];
        v29 = 138543362;
        v30 = summary3;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:_refreshFilesystemMetadataLastInterest} asset-lock refresh attempted with no content at URL | asset-lock:%{public}@", &v29, 0xCu);
      }

      v23 = @"asset-lock refresh attempted with no content at URL";
    }

    v24 = 6111;
  }

  else
  {
    v21 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      summary4 = [interestCopy summary];
      v29 = 138543362;
      v30 = summary4;
      _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:_refreshFilesystemMetadataLastInterest} asset-lock refresh without local content URL | asset-lock:%{public}@", &v29, 0xCu);
    }

    v23 = @"asset-lock refresh without local content URL";
    v24 = 6101;
  }

  v20 = [MAAutoAssetError buildError:v24 fromOperation:@"AUTO-LOCKER:_refreshFilesystemMetadataLastInterest" underlyingError:0 withDescription:v23];
LABEL_24:

  return v20;
}

- (BOOL)_anyCurrentLocksForEliminate:(id)eliminate
{
  eliminateCopy = eliminate;
  v5 = objc_autoreleasePoolPush();
  [(MADAutoAssetLocker *)self trackPerformanceIteration:@"_anyCurrentLocksForEliminate" ofContainer:@"locateLocksBySelector" forSelector:eliminateCopy];
  v6 = [(MADAutoAssetLocker *)self locateLocksBySelector:eliminateCopy];
  v7 = [v6 count] != 0;

  objc_autoreleasePoolPop(v5);
  return v7;
}

- (id)summary
{
  lockCountsBySelector = [(MADAutoAssetLocker *)self lockCountsBySelector];
  v4 = [lockCountsBySelector count];
  eliminateSelectors = [(MADAutoAssetLocker *)self eliminateSelectors];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"locksBySelector:%ld|eliminateSelectors:%ld", v4, [eliminateSelectors count]);

  return v6;
}

- (id)_newAssetLockSummaryWithoutSelectorOrAttributes:(id)attributes
{
  attributesCopy = attributes;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  v6 = [NSString alloc];
  localContentURL = [attributesCopy localContentURL];
  path = [localContentURL path];
  if ([attributesCopy inhibitedFromEmergencyRemoval])
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  lockReasons = [attributesCopy lockReasons];

  safeSummary = [lockReasons safeSummary];
  v12 = [v6 initWithFormat:@"localURL:%@|inhibitedRemoval:%@|reasons:%@", path, v9, safeSummary];

  return v12;
}

+ (void)addClientLockReasons:(id)reasons basedOnControl:(id)control
{
  reasonsCopy = reasons;
  controlCopy = control;
  v7 = +[MADAutoAssetLocker autoAssetLocker];
  v8 = v7;
  if (v7)
  {
    lockerQueue = [v7 lockerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __58__MADAutoAssetLocker_addClientLockReasons_basedOnControl___block_invoke;
    block[3] = &unk_4B2AF0;
    v12 = v8;
    v13 = controlCopy;
    v14 = reasonsCopy;
    dispatch_sync(lockerQueue, block);

    v10 = v12;
  }

  else
  {
    v10 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:addClientLockReasons} | unable to locate auto-asset-locker | unable to provide client-lock-tracker entries", buf, 2u);
    }
  }
}

void __58__MADAutoAssetLocker_addClientLockReasons_basedOnControl___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) locateLocksNewAllBySelector];
  v42 = a1;
  [*(a1 + 32) trackPerformanceIteration:@"addClientLockReasons" ofContainer:@"locksBySelector"];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v48 objects:v55 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v49;
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    v8 = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    v34 = *v49;
    v35 = v3;
    do
    {
      v9 = 0;
      v36 = v5;
      do
      {
        if (*v49 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v48 + 1) + 8 * v9);
        context = objc_autoreleasePoolPush();
        v39 = v10;
        v11 = [v3 safeObjectForKey:v10 ofClass:objc_opt_class()];
        v12 = p_weak_ivar_lyt[266];
        v13 = [v11 fullAssetSelector];
        LODWORD(v12) = [v12 selectorToBeIncluded:v13 basedOnControl:*(v42 + 40)];

        if (v12)
        {
          v37 = v9;
          v46 = 0u;
          v47 = 0u;
          v44 = 0u;
          v45 = 0u;
          obj = [v11 lockReasons];
          v14 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
          v15 = v11;
          if (v14)
          {
            v16 = v14;
            v17 = *v45;
            v41 = v11;
            do
            {
              v18 = 0;
              v40 = v16;
              do
              {
                if (*v45 != v17)
                {
                  objc_enumerationMutation(obj);
                }

                v19 = *(*(&v44 + 1) + 8 * v18);
                v20 = objc_autoreleasePoolPush();
                v21 = [v15 lockReasons];
                v22 = [v21 safeObjectForKey:v19 ofClass:objc_opt_class()];

                if (v22)
                {
                  v23 = [v22 copy];
                  if (v23)
                  {
                    v24 = v17;
                    v25 = v8;
                    v26 = [NSString alloc];
                    v27 = [v23 clientLockReason];
                    v28 = [v27 autoAssetClientName];
                    v29 = [v26 initWithFormat:@"(%@)%@", v39, v28];
                    v30 = [v23 clientLockReason];
                    [v30 setAutoAssetClientName:v29];

                    v15 = v41;
                    if ([v41 inhibitedFromEmergencyRemoval])
                    {
                      v31 = [v23 lockUsagePolicy];
                      [v31 setLockInhibitsEmergencyRemoval:1];
                    }

                    [*(v42 + 48) addObject:v23];
                    v8 = v25;
                    v17 = v24;
                    v16 = v40;
                  }

                  else
                  {
                    v32 = _MADLog(@"AutoLocker");
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                    {
                      v33 = [*(v42 + 32) summary];
                      *buf = 138543362;
                      v53 = v33;
                      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "%{public}@ {addClientLockReasons} | unable to copy MAAutoAssetLockTracker summaryEntry", buf, 0xCu);

                      v15 = v41;
                    }
                  }
                }

                objc_autoreleasePoolPop(v20);
                v18 = v18 + 1;
              }

              while (v16 != v18);
              v16 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
            }

            while (v16);
          }

          v6 = v34;
          v3 = v35;
          p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
          v11 = v15;
          v5 = v36;
          v9 = v37;
        }

        objc_autoreleasePoolPop(context);
        v9 = v9 + 1;
      }

      while (v9 != v5);
      v5 = [v3 countByEnumeratingWithState:&v48 objects:v55 count:16];
    }

    while (v5);
  }
}

- (void)trackPerformanceIteration:(id)iteration ofContainer:(id)container
{
  iterationCopy = iteration;
  containerCopy = container;
  if (+[MADAutoAssetControlManager preferencePerformanceLoggingEnabled])
  {
    v7 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = iterationCopy;
      v10 = 2114;
      v11 = containerCopy;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "[AUTO-PERFORMANCE] {AUTO-LOCKER:%{public}@:trackPerformanceIteration} | containerName:%{public}@", &v8, 0x16u);
    }
  }
}

- (void)trackPerformanceIteration:(id)iteration ofContainer:(id)container forSelector:(id)selector
{
  iterationCopy = iteration;
  containerCopy = container;
  selectorCopy = selector;
  if (+[MADAutoAssetControlManager preferencePerformanceLoggingEnabled])
  {
    v10 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      summary = [selectorCopy summary];
      v12 = 138543874;
      v13 = iterationCopy;
      v14 = 2114;
      v15 = containerCopy;
      v16 = 2114;
      v17 = summary;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "[AUTO-PERFORMANCE] {AUTO-LOCKER:%{public}@:trackPerformanceIteration} | containerName:%{public}@ | assetSelector:%{public}@", &v12, 0x20u);
    }
  }
}

+ (void)forceGlobalUnlock:(id)unlock atomicInstancesHandle:(id *)handle
{
  unlockCopy = unlock;
  v6 = +[MADAutoAssetLocker autoAssetLocker];
  if (v6)
  {
    v7 = objc_alloc_init(NSMutableSet);
    lockerQueue = [v6 lockerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __62__MADAutoAssetLocker_forceGlobalUnlock_atomicInstancesHandle___block_invoke;
    block[3] = &unk_4B2AF0;
    v12 = v6;
    v13 = unlockCopy;
    v9 = v7;
    v14 = v9;
    dispatch_sync(lockerQueue, block);

    if (handle)
    {
      v10 = v9;
      *handle = v9;
    }
  }

  else
  {
    v9 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:forceGlobalUnlock} | unable to locate auto-asset-locker | no unlocks occurred", buf, 2u);
    }
  }
}

void __62__MADAutoAssetLocker_forceGlobalUnlock_atomicInstancesHandle___block_invoke(id *a1)
{
  v44 = objc_alloc_init(NSMutableDictionary);
  [a1[4] trackPerformanceIteration:@"forceGlobalUnlock" ofContainer:@"locateLocksBySelector"];
  [a1[4] locateLocksBySelector:a1[5]];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  obj = v66 = 0u;
  v53 = [obj countByEnumeratingWithState:&v63 objects:v69 count:16];
  if (v53)
  {
    v2 = *v64;
    p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
    v43 = *v64;
    do
    {
      v4 = 0;
      do
      {
        if (*v64 != v2)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v63 + 1) + 8 * v4);
        v6 = objc_autoreleasePoolPush();
        v7 = p_weak_ivar_lyt[223];
        v8 = [v5 fullAssetSelector];
        v9 = [v8 assetType];
        v10 = [a1[5] assetType];
        LODWORD(v7) = [v7 stringIsEqual:v9 to:v10];

        if (v7)
        {
          v11 = [a1[5] assetSpecifier];
          if (v11)
          {
            v12 = p_weak_ivar_lyt[223];
            v51 = [v5 fullAssetSelector];
            v13 = [v51 assetSpecifier];
            v47 = [a1[5] assetSpecifier];
            v49 = v13;
            if (![v12 stringIsEqual:v13 to:?])
            {
              LOBYTE(v19) = 0;
              goto LABEL_15;
            }
          }

          v14 = [a1[5] assetVersion];
          if (!v14)
          {

            if (v11)
            {
              LOBYTE(v19) = 1;
              goto LABEL_15;
            }

            goto LABEL_16;
          }

          v15 = p_weak_ivar_lyt[223];
          v16 = [v5 fullAssetSelector];
          v17 = [v16 assetVersion];
          v18 = [a1[5] assetVersion];
          v19 = [v15 stringIsEqual:v17 to:v18];

          if (v11)
          {
            v2 = v43;
            p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
LABEL_15:

            if ((v19 & 1) == 0)
            {
              goto LABEL_17;
            }

LABEL_16:
            v20 = [v5 fullAssetSelector];
            v21 = [v20 persistedEntryID];
            [v44 setSafeObject:v5 forKey:v21];

            goto LABEL_17;
          }

          v2 = v43;
          p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
          if (v19)
          {
            goto LABEL_16;
          }
        }

LABEL_17:
        objc_autoreleasePoolPop(v6);
        v4 = v4 + 1;
      }

      while (v53 != v4);
      v22 = [obj countByEnumeratingWithState:&v63 objects:v69 count:16];
      v53 = v22;
    }

    while (v22);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v23 = v44;
  v24 = [v23 countByEnumeratingWithState:&v59 objects:v68 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v60;
    v48 = v23;
    v45 = *v60;
    do
    {
      v27 = 0;
      v50 = v25;
      do
      {
        if (*v60 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v59 + 1) + 8 * v27);
        v29 = objc_autoreleasePoolPush();
        v30 = [v23 safeObjectForKey:v28 ofClass:objc_opt_class()];
        v31 = v30;
        if (v30)
        {
          v52 = v27;
          v54 = v29;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v32 = [v30 lockReasons];
          v33 = [v32 countByEnumeratingWithState:&v55 objects:v67 count:16];
          if (!v33)
          {
            goto LABEL_40;
          }

          v34 = v33;
          v35 = 0;
          v36 = *v56;
          do
          {
            for (i = 0; i != v34; i = i + 1)
            {
              if (*v56 != v36)
              {
                objc_enumerationMutation(v32);
              }

              v38 = *(*(&v55 + 1) + 8 * i);
              v39 = [v31 lockReasons];
              v40 = [v39 objectForKeyedSubscript:v38];

              v41 = [a1[4] atomicInstanceUUIDForLockTracker:v40];
              if (v41 && [v40 activeLockCount] >= 1)
              {
                [a1[6] addObject:v41];
              }

              v35 |= v41 == 0;
            }

            v34 = [v32 countByEnumeratingWithState:&v55 objects:v67 count:16];
          }

          while (v34);

          v23 = v48;
          v25 = v50;
          v26 = v45;
          v27 = v52;
          v29 = v54;
          if (v35)
          {
            v42 = a1[4];
            v32 = [v31 fullAssetSelector];
            [v42 _removeAssetLock:@"forceGlobalUnlock" removingAssetLock:v31 lastClient:0 forSelector:v32 message:@"force global unlock"];
LABEL_40:

            v29 = v54;
          }
        }

        objc_autoreleasePoolPop(v29);
        v27 = v27 + 1;
      }

      while (v27 != v25);
      v25 = [v23 countByEnumeratingWithState:&v59 objects:v68 count:16];
    }

    while (v25);
  }
}

+ (id)currentSetLockUsageEliminatingOtherThanSetAtomicInstances:(id)instances
{
  instancesCopy = instances;
  v4 = +[MADAutoAssetLocker autoAssetLocker];
  v5 = v4;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__17;
  v19 = __Block_byref_object_dispose__17;
  v20 = 0;
  if (v4)
  {
    lockerQueue = [v4 lockerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __80__MADAutoAssetLocker_currentSetLockUsageEliminatingOtherThanSetAtomicInstances___block_invoke;
    block[3] = &unk_4B4478;
    v11 = v5;
    v12 = instancesCopy;
    v13 = &v15;
    dispatch_sync(lockerQueue, block);

    v7 = v16[5];
    v8 = v11;
  }

  else
  {
    v8 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:currentSetLockUsageEliminatingOtherThanSetAtomicInstances} | unable to provide set-lock-usage or eliminate auto-asset-locks for other than active set-atomic-instances (no auto-asset-locker)", buf, 2u);
    }

    v7 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v7;
}

void __80__MADAutoAssetLocker_currentSetLockUsageEliminatingOtherThanSetAtomicInstances___block_invoke(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) persistedState];
  v153 = [v2 persistedEntryIDs:@"currentSetLockUsageEliminatingOtherThanSetAtomicInstances"];

  v142 = objc_alloc_init(NSMutableDictionary);
  v3 = [NSSet alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v120 = [v3 initWithObjects:{v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  [*(v1 + 32) trackPerformanceIteration:@"currentSetLockUsageEliminatingOtherThanSetAtomicInstances" ofContainer:@"persistedState"];
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  obj = v153;
  v130 = [obj countByEnumeratingWithState:&v162 objects:v177 count:16];
  if (v130)
  {
    v129 = *v163;
    v150 = v1;
    do
    {
      v11 = 0;
      do
      {
        if (*v163 != v129)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v162 + 1) + 8 * v11);
        v13 = objc_autoreleasePoolPush();
        v14 = [*(v1 + 32) persistedState];
        [v14 persistedEntry:v12 fromLocation:@"currentSetLockUsageEliminatingOtherThanSetAtomicInstances"];
        v16 = v15 = v1;

        v147 = v12;
        if (v16)
        {
          v17 = v15;
          v18 = [*(v15 + 32) persistedState];
          LOBYTE(v116) = 0;
          v131 = v16;
          v19 = [v18 decodeFromLocation:@"currentSetLockUsageEliminatingOtherThanSetAtomicInstances" ofEntryName:v12 fromPersistedEntry:v16 decodingObjectForKey:@"assetLock" ofClass:objc_opt_class() withEncodeClasses:v120 allowingNilObject:v116];

          if (!v19)
          {
            v94 = _MADLog(@"AutoLocker");
            if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v167 = v147;
              v113 = v94;
              v114 = "{currentSetLockUsageEliminatingOtherThanSetAtomicInstances} | no asset-lock entry found for entry:%{public}@";
              goto LABEL_98;
            }

LABEL_99:
            v16 = v131;

            goto LABEL_100;
          }

          v20 = [v19 fullAssetSelector];

          if (!v20)
          {
            v94 = _MADLog(@"AutoLocker");
            if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v167 = v147;
              v113 = v94;
              v114 = "{currentSetLockUsageEliminatingOtherThanSetAtomicInstances} | missing asset selector for entry:%{public}@";
LABEL_98:
              _os_log_impl(&dword_0, v113, OS_LOG_TYPE_ERROR, v114, buf, 0xCu);
            }

            goto LABEL_99;
          }

          v21 = v17;
          if ([*(v17 + 32) isAssetLockSetAtomicInstanceLock:v19])
          {
            v121 = v13;
            v122 = v11;
            v140 = objc_alloc_init(NSMutableArray);
            v141 = objc_alloc_init(NSMutableArray);
            v158 = 0u;
            v159 = 0u;
            v160 = 0u;
            v161 = 0u;
            v148 = [v19 lockReasons];
            v143 = v19;
            v152 = [v148 countByEnumeratingWithState:&v158 objects:v176 count:16];
            if (v152)
            {
              v151 = *v159;
              do
              {
                for (i = 0; i != v152; i = i + 1)
                {
                  if (*v159 != v151)
                  {
                    objc_enumerationMutation(v148);
                  }

                  v23 = *(*(&v158 + 1) + 8 * i);
                  v24 = objc_autoreleasePoolPush();
                  v25 = [v19 lockReasons];
                  v26 = [v25 safeObjectForKey:v23 ofClass:objc_opt_class()];

                  if (v26)
                  {
                    v154 = v24;
                    v27 = [*(v21 + 32) atomicInstanceUUIDForLockTracker:v26];
                    if (!v27)
                    {
                      v28 = _MADLog(@"AutoLocker");
                      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                      {
                        *buf = 138543618;
                        v167 = v147;
                        v168 = 2114;
                        v169 = v23;
                        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEBUG, "{currentSetLockUsageEliminatingOtherThanSetAtomicInstances} | ignoring reason not associated with an asset set | entry:%{public}@ | lockReasonKey:%{public}@", buf, 0x16u);
                      }

                      goto LABEL_77;
                    }

                    v28 = [*(v21 + 40) objectForKeyedSubscript:v27];
                    if (!v28)
                    {
                      [v140 addObject:v26];
                      [v141 addObject:v19];
                      goto LABEL_77;
                    }

                    v29 = [NSString alloc];
                    v30 = [v28 clientDomainName];
                    v144 = v28;
                    v31 = [v28 assetSetIdentifier];
                    v32 = [v29 initWithFormat:@"%@_%@", v30, v31];

                    v149 = v32;
                    v33 = [v142 safeObjectForKey:v32 ofClass:objc_opt_class()];
                    if (!v33)
                    {
                      v33 = objc_alloc_init(NSMutableDictionary);
                      [v142 setSafeObject:v33 forKey:v149];
                    }

                    v34 = [v26 clientLockReason];
                    v35 = [v34 lockReason];
                    v36 = [v33 safeObjectForKey:v35 ofClass:objc_opt_class()];

                    if (!v36)
                    {
                      v36 = objc_alloc_init(NSMutableDictionary);
                      v37 = [v26 clientLockReason];
                      v38 = [v37 lockReason];
                      [v33 setSafeObject:v36 forKey:v38];
                    }

                    v146 = v33;
                    v39 = v36;
                    v40 = [v36 safeObjectForKey:v27 ofClass:objc_opt_class()];
                    if (v40)
                    {
                      v41 = v40;
                      v42 = [v40 longValue];
                      v28 = v144;
                      if ([v26 activeLockCount] != v42)
                      {
                        v43 = _MADLog(@"AutoLocker");
                        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                        {
                          v44 = [v26 summary];
                          *buf = 134218242;
                          v167 = v42;
                          v168 = 2114;
                          v169 = v44;
                          _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "{currentSetLockUsageEliminatingOtherThanSetAtomicInstances} | additional locked auto-asset for already tracked lock-reason+set-atomic-instance count mismatch - using largest count for set-lock-usage-map | alreadyTrackedCount:%ld | nextLockTracker:%{public}@", buf, 0x16u);
                        }
                      }

                      if (v42 >= [v26 activeLockCount])
                      {
                        p_weak_ivar_lyt = &MAAIRBMobileAssetOperationMetadata__metaData.weak_ivar_lyt;
                      }

                      else
                      {
                        v45 = [[NSNumber alloc] initWithLong:{objc_msgSend(v26, "activeLockCount")}];

                        v41 = v45;
                        p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
                        v47 = v147;
                        if (!v41)
                        {
LABEL_36:
                          v48 = _MADLog(@"AutoLocker");
                          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
                          {
                            v49 = [v26 summary];
                            *buf = 138543618;
                            v167 = v47;
                            v168 = 2114;
                            v169 = v49;
                            _os_log_impl(&dword_0, v48, OS_LOG_TYPE_ERROR, "{currentSetLockUsageEliminatingOtherThanSetAtomicInstances} | unable to allocate usage-map countForReasonByAtomicInstance - not representing entry:%{public}@ | nextLockTracker:%{public}@", buf, 0x16u);
                          }

                          v41 = 0;
                          v19 = v143;
LABEL_75:

LABEL_76:
LABEL_77:

                          v21 = v150;
                          v24 = v154;
                          goto LABEL_78;
                        }
                      }
                    }

                    else
                    {
                      v41 = [[NSNumber alloc] initWithLong:{objc_msgSend(v26, "activeLockCount")}];
                      p_weak_ivar_lyt = (&MAAIRBMobileAssetOperationMetadata__metaData + 56);
                      v47 = v147;
                      v28 = v144;
                      if (!v41)
                      {
                        goto LABEL_36;
                      }
                    }

                    [v39 setSafeObject:v41 forKey:v27];
                    if (!__isPlatformVersionAtLeast(2, 18, 4, 0) || (v50 = p_weak_ivar_lyt, v51 = objc_alloc(p_weak_ivar_lyt[267]), v52 = objc_opt_respondsToSelector(), v51, (v52 & 1) == 0))
                    {
                      v19 = v143;
                      goto LABEL_76;
                    }

                    v53 = [objc_alloc(v50[267]) initForSetAtomicInstanceUUID:v27];
                    v145 = v53;
                    if (v53)
                    {
                      [*(v150 + 32) locateLockByFullAssetSelector:v53];
                      v19 = v143;
                      v139 = v138 = v39;
                      if (v139)
                      {
                        v54 = [v143 lockReasons];
                        v55 = [v54 safeObjectForKey:v23 ofClass:objc_opt_class()];

                        if (v55)
                        {
                          v56 = [v55 activeLockCount];
                        }

                        else
                        {
                          v56 = 0;
                        }

                        v19 = v143;
                      }

                      else
                      {
                        v56 = 0;
                      }

                      v48 = v145;
                      if (v56 < [v41 longLongValue])
                      {
                        v58 = v56;
                        v59 = _MADLog(@"AutoLocker");
                        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
                        {
                          v60 = [v26 summary];
                          *buf = 138543362;
                          v167 = v60;
                          _os_log_impl(&dword_0, v59, OS_LOG_TYPE_ERROR, "{currentSetLockUsageEliminatingOtherThanSetAtomicInstances} | set-atomic-instance lock count lower than auto-asset lock count for instance, repairing. | nextLockTracker:%{public}@", buf, 0xCu);
                        }

                        v61 = *(v150 + 32);
                        v135 = [v26 clientLockReason];
                        v62 = [v135 autoAssetClientName];
                        v132 = [v26 clientLockReason];
                        v63 = [v132 lockReason];
                        v64 = ([v26 activeLockCount] - v58);
                        v65 = [v26 lockUsagePolicy];
                        v117 = v64;
                        v66 = v61;
                        v67 = v62;
                        v48 = v145;
                        v68 = [v66 _lockAutoAssetByClient:v62 forClientProcessName:0 withClientProcessID:0 forClientDomainName:0 forAssetSelector:v145 forSetAtomicInstance:0 forLockReason:v63 withDeltaLockCount:v117 withUsagePolicy:v65 withLocalContentURL:0 withAssetAttributes:0];

                        v69 = v68;
                        if (v68)
                        {
                          v136 = v68;
                          v70 = _MADLog(@"AutoLocker");
                          v39 = v138;
                          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
                          {
                            v133 = [v26 clientLockReason];
                            v124 = [v133 autoAssetClientName];
                            v125 = [v145 summary];
                            v127 = [v26 clientLockReason];
                            v71 = [v127 lockReason];
                            v123 = [v26 lockUsagePolicy];
                            v72 = [v123 summary];
                            *buf = 138544386;
                            v167 = v124;
                            v168 = 2114;
                            v169 = v125;
                            v170 = 2114;
                            v171 = v71;
                            v172 = 2114;
                            v173 = v72;
                            v73 = v72;
                            v174 = 2114;
                            v175 = v68;
                            _os_log_impl(&dword_0, v70, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:currentSetLockUsageEliminatingOtherThanSetAtomicInstances} failed lock | client:%{public}@, selector:%{public}@, reason:%{public}@, policy:%{public}@ | error:%{public}@", buf, 0x34u);
                          }

                          v74 = [v26 clientLockReason];
                          v75 = [v74 autoAssetClientName];
                          v76 = 101;
                          goto LABEL_72;
                        }

                        v19 = v143;
LABEL_68:
                        v39 = v138;
                        goto LABEL_73;
                      }

                      if (v56 <= [v41 longLongValue])
                      {
                        v39 = v138;
                      }

                      else
                      {
                        v77 = v56;
                        v78 = _MADLog(@"AutoLocker");
                        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
                        {
                          v79 = [v26 summary];
                          *buf = 138543362;
                          v167 = v79;
                          _os_log_impl(&dword_0, v78, OS_LOG_TYPE_ERROR, "{currentSetLockUsageEliminatingOtherThanSetAtomicInstances} | set-atomic-instance lock count higher than auto-asset lock count for instance, repairing. | nextLockTracker:%{public}@", buf, 0xCu);
                        }

                        v80 = *(v150 + 32);
                        v137 = [v26 clientLockReason];
                        v81 = [v137 autoAssetClientName];
                        v82 = [v26 clientLockReason];
                        v83 = [v82 lockReason];
                        v84 = [v26 activeLockCount];
                        v157 = 0;
                        v118 = v77 - v84;
                        v85 = v80;
                        v86 = v81;
                        v87 = [v85 _endLocksByClient:@"AUTO-LOCKER:endedPreviousLocksByClient" forAssetClientName:v81 forAllClientNames:0 forClientProcessName:0 withClientProcessID:0 forClientDomainName:0 forAssetSelector:v145 forSetAtomicInstance:0 forLockReason:v83 removingLockCount:v118 endError:&v157];
                        v88 = v157;

                        v69 = v88;
                        if (v87 && !v88)
                        {
                          v19 = v143;
                          v48 = v145;
                          goto LABEL_68;
                        }

                        v136 = v88;
                        v89 = _MADLog(@"AutoLocker");
                        v39 = v138;
                        if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                        {
                          v134 = [v26 clientLockReason];
                          v90 = [v134 autoAssetClientName];
                          v128 = [v145 summary];
                          v126 = [v26 clientLockReason];
                          v91 = [v126 lockReason];
                          v92 = [v136 checkedSummary];
                          *buf = 138544130;
                          v167 = v90;
                          v168 = 2114;
                          v169 = v128;
                          v170 = 2114;
                          v171 = v91;
                          v172 = 2114;
                          v173 = v92;
                          v93 = v92;
                          _os_log_impl(&dword_0, v89, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:currentSetLockUsageEliminatingOtherThanSetAtomicInstances} failed end-lock(s) | client:%{public}@, selector:%{public}@, reason:%{public}@ | error:%{public}@", buf, 0x2Au);
                        }

                        v74 = [v26 clientLockReason];
                        v75 = [v74 autoAssetClientName];
                        v76 = 502;
LABEL_72:
                        [MADAutoAssetHistory recordFailedOperation:v76 fromClient:v75 forAssetID:@"UNKNOWN" withSelector:v145 failingWithError:v136];

                        v19 = v143;
                        v48 = v145;
                        v69 = v136;
LABEL_73:
                      }
                    }

                    else
                    {
                      v57 = _MADLog(@"AutoLocker");
                      v19 = v143;
                      v139 = v57;
                      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                      {
                        *buf = 0;
                        _os_log_impl(&dword_0, v57, OS_LOG_TYPE_ERROR, "{currentSetLockUsageEliminatingOtherThanSetAtomicInstances} | failed to alloc/init autoAssetSetAtomicInstanceSelector", buf, 2u);
                      }

                      v48 = 0;
                    }

                    goto LABEL_75;
                  }

                  v27 = _MADLog(@"AutoLocker");
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543618;
                    v167 = v147;
                    v168 = 2114;
                    v169 = v23;
                    _os_log_impl(&dword_0, v27, OS_LOG_TYPE_ERROR, "{currentSetLockUsageEliminatingOtherThanSetAtomicInstances} | unable to load lock-tracker | entry:%{public}@ | lockReasonKey:%{public}@", buf, 0x16u);
                  }

LABEL_78:

                  objc_autoreleasePoolPop(v24);
                }

                v152 = [v148 countByEnumeratingWithState:&v158 objects:v176 count:16];
              }

              while (v152);
            }

            v17 = v21;

            v94 = v140;
            v13 = v121;
            v11 = v122;
            if ([v140 count])
            {
              v95 = [v140 count];
              if (v95 == [v141 count])
              {
                v155 = [v140 count];
                if (v155 >= 1)
                {
                  for (j = 0; j != v155; ++j)
                  {
                    v97 = [v94 objectAtIndex:j];
                    v98 = [v141 objectAtIndex:j];
                    v99 = v98;
                    if (v97)
                    {
                      if (v98)
                      {
                        v100 = *(v17 + 32);
                        v101 = [v97 clientLockReason];
                        v102 = [v101 autoAssetClientName];
                        v103 = [v99 fullAssetSelector];
                        v104 = [v97 clientLockReason];
                        v105 = [v104 lockReason];
                        v106 = [v97 activeLockCount];
                        v156 = 0;
                        [v100 _endLocksByClient:@"currentSetLockUsageEliminatingOtherThanSetAtomicInstances" forAssetClientName:v102 forAllClientNames:0 forClientProcessName:0 withClientProcessID:0 forClientDomainName:0 forAssetSelector:v103 forSetAtomicInstance:0 forLockReason:v105 removingLockCount:v106 endError:&v156];
                        v107 = v156;

                        v17 = v150;
                        v13 = v121;

                        v11 = v122;
                        v19 = v143;
                        if (v107)
                        {
                          v108 = _MADLog(@"AutoLocker");
                          if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
                          {
                            v109 = [*(v150 + 32) lockCountsTotal];
                            v110 = [v99 summary];
                            v111 = [v97 summary];
                            v112 = [v107 checkedSummary];
                            *buf = 134218754;
                            v167 = v109;
                            v168 = 2114;
                            v169 = v110;
                            v170 = 2114;
                            v171 = v111;
                            v172 = 2114;
                            v173 = v112;
                            _os_log_impl(&dword_0, v108, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER[totalLocks:%ld]:currentSetLockUsageEliminatingOtherThanSetAtomicInstances} failed to drop stale lock | dropFromAssetLock:%{public}@, dropLockTracker:%{public}@ | error:%{public}@", buf, 0x2Au);

                            v17 = v150;
                            v13 = v121;

                            v11 = v122;
                          }

                          v19 = v143;
                        }
                      }
                    }

                    v94 = v140;
                  }
                }
              }
            }

            goto LABEL_99;
          }

          v16 = v131;
        }

        else
        {
          v17 = v15;
          v19 = _MADLog(@"AutoLocker");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v167 = v12;
            _os_log_impl(&dword_0, v19, OS_LOG_TYPE_ERROR, "{currentSetLockUsageEliminatingOtherThanSetAtomicInstances} | unable to determine previous status for entry:%{public}@", buf, 0xCu);
          }
        }

LABEL_100:

        objc_autoreleasePoolPop(v13);
        v11 = v11 + 1;
        v1 = v17;
      }

      while (v11 != v130);
      v115 = [obj countByEnumeratingWithState:&v162 objects:v177 count:16];
      v130 = v115;
    }

    while (v115);
  }

  if ([v142 count])
  {
    objc_storeStrong((*(*(v1 + 48) + 8) + 40), v142);
  }
}

+ (BOOL)lockedSetByClient:(id)client forClientProcessName:(id)name withClientProcessID:(int64_t)d lockingSetDescriptor:(id)descriptor forLockReason:(id)reason withSetUsagePolicy:(id)policy lockError:(id *)error
{
  clientCopy = client;
  nameCopy = name;
  descriptorCopy = descriptor;
  reasonCopy = reason;
  policyCopy = policy;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__17;
  v53 = __Block_byref_object_dispose__17;
  v54 = 0;
  if (clientCopy && descriptorCopy && reasonCopy)
  {
    v19 = +[MADAutoAssetLocker autoAssetLocker];
    v20 = v19;
    if (v19)
    {
      lockerQueue = [v19 lockerQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __145__MADAutoAssetLocker_lockedSetByClient_forClientProcessName_withClientProcessID_lockingSetDescriptor_forLockReason_withSetUsagePolicy_lockError___block_invoke;
      block[3] = &unk_4B6318;
      v20 = v20;
      v41 = v20;
      v42 = policyCopy;
      v43 = descriptorCopy;
      v47 = &v49;
      v44 = clientCopy;
      v45 = nameCopy;
      dCopy = d;
      v46 = reasonCopy;
      dispatch_sync(lockerQueue, block);

      v22 = v41;
      goto LABEL_20;
    }

    v27 = [MAAutoAssetError buildError:6101 fromOperation:@"AUTO-LOCKER:lockedSetByClient" underlyingError:0 withDescription:@"no auto-asset-locker"];
  }

  else
  {
    v23 = [NSString alloc];
    if (clientCopy)
    {
      v24 = clientCopy;
    }

    else
    {
      v24 = @"MISSING";
    }

    if (descriptorCopy)
    {
      summary = [descriptorCopy summary];
    }

    else
    {
      summary = @"MISSING";
    }

    if (reasonCopy)
    {
      v26 = reasonCopy;
    }

    else
    {
      v26 = @"MISSING";
    }

    v20 = [v23 initWithFormat:@"set-lock not tracked (missing required) | autoAssetClientName:%@, lockedSetDescriptor:%@, lockReason:%@", v24, summary, v26];
    if (descriptorCopy)
    {
    }

    v27 = [MAAutoAssetError buildError:6102 fromOperation:@"AUTO-LOCKER:lockedSetByClient" underlyingError:0 withDescription:v20];
  }

  v22 = v50[5];
  v50[5] = v27;
LABEL_20:

  v28 = v50[5];
  if (v28)
  {
    v29 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      summary2 = [descriptorCopy summary];
      summary3 = [policyCopy summary];
      v32 = v50[5];
      *buf = 138544386;
      v56 = clientCopy;
      v57 = 2112;
      v58 = summary2;
      v59 = 2114;
      v60 = reasonCopy;
      v61 = 2114;
      v62 = summary3;
      v63 = 2114;
      v64 = v32;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:lockedSetByClient} failed set-lock | client:%{public}@, lockedSetDescriptor:%@, reason:%{public}@, policy:%{public}@ | error:%{public}@", buf, 0x34u);
    }

    clientDomainName = [descriptorCopy clientDomainName];
    assetSetIdentifier = [descriptorCopy assetSetIdentifier];
    latestDownloadedAtomicInstance = [descriptorCopy latestDownloadedAtomicInstance];
    [MADAutoAssetHistory recordFailedOperation:101 fromClient:clientCopy forClientDomainName:clientDomainName forAssetSetIdentifier:assetSetIdentifier forAtomicInstance:latestDownloadedAtomicInstance failingWithError:v50[5]];

    if (error)
    {
      *error = v50[5];
    }
  }

  else
  {
    v36 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      summary4 = [descriptorCopy summary];
      summary5 = [policyCopy summary];
      *buf = 138544130;
      v56 = clientCopy;
      v57 = 2112;
      v58 = summary4;
      v59 = 2114;
      v60 = reasonCopy;
      v61 = 2114;
      v62 = summary5;
      _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "{AUTO-LOCKER:lockedSetByClient} successful set-lock | client:%{public}@, lockedSetDescriptor:%@, reason:%{public}@, policy:%{public}@", buf, 0x2Au);
    }
  }

  _Block_object_dispose(&v49, 8);

  return v28 == 0;
}

void __145__MADAutoAssetLocker_lockedSetByClient_forClientProcessName_withClientProcessID_lockingSetDescriptor_forLockReason_withSetUsagePolicy_lockError___block_invoke(uint64_t a1)
{
  v45 = objc_alloc_init(NSMutableArray);
  v46 = [*(a1 + 32) _autoAssetLockPolicyFromSetPolicy:*(a1 + 40)];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = [*(a1 + 48) latestDowloadedAtomicInstanceEntries];
  v47 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
  if (v47)
  {
    v44 = *v59;
LABEL_3:
    v2 = 0;
    while (1)
    {
      if (*v59 != v44)
      {
        objc_enumerationMutation(obj);
      }

      v3 = *(*(&v58 + 1) + 8 * v2);
      v4 = *(a1 + 56);
      v50 = *(a1 + 64);
      v52 = *(a1 + 32);
      v48 = *(a1 + 88);
      v5 = [*(a1 + 48) clientDomainName];
      v6 = [v3 fullAssetSelector];
      v7 = [*(a1 + 48) latestDownloadedAtomicInstance];
      v8 = *(a1 + 72);
      v9 = [v3 localContentURL];
      v10 = [v3 assetAttributes];
      v11 = [v52 _lockAutoAssetByClient:v4 forClientProcessName:v50 withClientProcessID:v48 forClientDomainName:v5 forAssetSelector:v6 forSetAtomicInstance:v7 forLockReason:v8 withDeltaLockCount:1 withUsagePolicy:v46 withLocalContentURL:v9 withAssetAttributes:v10];
      v12 = *(*(a1 + 80) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      if (*(*(*(a1 + 80) + 8) + 40))
      {
        break;
      }

      [v45 addObject:v3];
      if (v47 == ++v2)
      {
        v47 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
        if (v47)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (__isPlatformVersionAtLeast(2, 18, 4, 0))
  {
    v14 = [MAAutoAssetSelector alloc];
    v15 = objc_opt_respondsToSelector();

    if ((v15 & 1) != 0 && !*(*(*(a1 + 80) + 8) + 40))
    {
      v16 = [MAAutoAssetSelector alloc];
      v17 = [*(a1 + 48) latestDownloadedAtomicInstance];
      v18 = [v16 initForSetAtomicInstanceUUID:v17];

      if (v18)
      {
        v19 = *(a1 + 32);
        v21 = *(a1 + 56);
        v20 = *(a1 + 64);
        v22 = *(a1 + 88);
        v23 = [*(a1 + 48) clientDomainName];
        v24 = [*(a1 + 48) latestDownloadedAtomicInstance];
        v25 = [v19 _lockAutoAssetByClient:v21 forClientProcessName:v20 withClientProcessID:v22 forClientDomainName:v23 forAssetSelector:v18 forSetAtomicInstance:v24 forLockReason:*(a1 + 72) withDeltaLockCount:1 withUsagePolicy:v46 withLocalContentURL:0 withAssetAttributes:0];
        v26 = *(*(a1 + 80) + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = v25;
      }

      else
      {
        v28 = [MAAutoAssetError buildError:6101 fromOperation:@"AUTO-LOCKER:lockedSetByClient" underlyingError:0 withDescription:@"no auto-asset-locker"];
        v29 = *(*(a1 + 80) + 8);
        v23 = *(v29 + 40);
        *(v29 + 40) = v28;
      }
    }
  }

  if (*(*(*(a1 + 80) + 8) + 40))
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v49 = v45;
    v53 = [v49 countByEnumeratingWithState:&v54 objects:v68 count:16];
    if (v53)
    {
      v51 = *v55;
      do
      {
        for (i = 0; i != v53; i = i + 1)
        {
          if (*v55 != v51)
          {
            objc_enumerationMutation(v49);
          }

          v31 = *(*(&v54 + 1) + 8 * i);
          v32 = *(a1 + 32);
          v33 = *(a1 + 56);
          v34 = [*(a1 + 48) clientDomainName];
          v35 = [*(a1 + 48) assetSetIdentifier];
          v36 = [v31 fullAssetSelector];
          v37 = [*(a1 + 48) latestDownloadedAtomicInstance];
          v38 = [v32 _endedLockByClient:v33 forClientDomainName:v34 forAssetSetIdentifier:v35 forAssetSelector:v36 forSetAtomicInstance:v37 forLockReason:*(a1 + 72)];

          if (v38)
          {
            v39 = _MADLog(@"AutoLocker");
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v40 = [*(a1 + 32) lockCountsTotal];
              v41 = [v31 summary];
              v42 = [v38 checkedSummary];
              *buf = 134218498;
              v63 = v40;
              v64 = 2114;
              v65 = v41;
              v66 = 2114;
              v67 = v42;
              _os_log_impl(&dword_0, v39, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER[totalLocks:%ld]:lockedSetByClient} | unable to end auto-asset lock after failure to lock entire set | setAtomicEntry:%{public}@ | endLockError:%{public}@", buf, 0x20u);
            }
          }
        }

        v53 = [v49 countByEnumeratingWithState:&v54 objects:v68 count:16];
      }

      while (v53);
    }
  }
}

+ (BOOL)continuedSetLockByClient:(id)client forSetDescriptor:(id)descriptor forLockReason:(id)reason withSetUsagePolicy:(id)policy continueError:(id *)error
{
  clientCopy = client;
  descriptorCopy = descriptor;
  reasonCopy = reason;
  policyCopy = policy;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__17;
  v46 = __Block_byref_object_dispose__17;
  v47 = 0;
  if (clientCopy && descriptorCopy && reasonCopy)
  {
    v15 = +[MADAutoAssetLocker autoAssetLocker];
    v16 = v15;
    if (v15)
    {
      lockerQueue = [v15 lockerQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __111__MADAutoAssetLocker_continuedSetLockByClient_forSetDescriptor_forLockReason_withSetUsagePolicy_continueError___block_invoke;
      block[3] = &unk_4B2ED0;
      v37 = descriptorCopy;
      v16 = v16;
      v38 = v16;
      v39 = clientCopy;
      v40 = reasonCopy;
      v41 = &v42;
      dispatch_sync(lockerQueue, block);

      v18 = v37;
      goto LABEL_20;
    }

    v23 = [MAAutoAssetError buildError:6101 fromOperation:@"AUTO-LOCKER:continuedSetLockByClient" underlyingError:0 withDescription:@"no auto-asset-locker"];
  }

  else
  {
    v19 = [NSString alloc];
    if (clientCopy)
    {
      v20 = clientCopy;
    }

    else
    {
      v20 = @"MISSING";
    }

    if (descriptorCopy)
    {
      summary = [descriptorCopy summary];
    }

    else
    {
      summary = @"MISSING";
    }

    if (reasonCopy)
    {
      v22 = reasonCopy;
    }

    else
    {
      v22 = @"MISSING";
    }

    v16 = [v19 initWithFormat:@"set-lock not tracked (missing required) | client:%@, lockedSetDescriptor:%@, continueReason:%@", v20, summary, v22];
    if (descriptorCopy)
    {
    }

    v23 = [MAAutoAssetError buildError:6102 fromOperation:@"AUTO-LOCKER:continuedSetLockByClient" underlyingError:0 withDescription:v16];
  }

  v18 = v43[5];
  v43[5] = v23;
LABEL_20:

  v24 = v43[5];
  if (v24)
  {
    v25 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      summary2 = [descriptorCopy summary];
      summary3 = [policyCopy summary];
      v28 = v43[5];
      *buf = 138544386;
      v49 = clientCopy;
      v50 = 2114;
      v51 = summary2;
      v52 = 2114;
      v53 = reasonCopy;
      v54 = 2114;
      v55 = summary3;
      v56 = 2114;
      v57 = v28;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:continuedSetLockByClient} failed continue-set-lock | client:%{public}@, lockedSetDescriptor:%{public}@, reason:%{public}@, policy:%{public}@ | error:%{public}@", buf, 0x34u);
    }

    clientDomainName = [descriptorCopy clientDomainName];
    assetSetIdentifier = [descriptorCopy assetSetIdentifier];
    latestDownloadedAtomicInstance = [descriptorCopy latestDownloadedAtomicInstance];
    [MADAutoAssetHistory recordFailedOperation:501 fromClient:clientCopy forClientDomainName:clientDomainName forAssetSetIdentifier:assetSetIdentifier forAtomicInstance:latestDownloadedAtomicInstance failingWithError:v43[5]];

    if (error)
    {
      *error = v43[5];
    }
  }

  else
  {
    v32 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      summary4 = [descriptorCopy summary];
      summary5 = [policyCopy summary];
      *buf = 138544130;
      v49 = clientCopy;
      v50 = 2114;
      v51 = summary4;
      v52 = 2114;
      v53 = reasonCopy;
      v54 = 2114;
      v55 = summary5;
      _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "{AUTO-LOCKER:continuedSetLockByClient} successful continue-set-lock | client:%{public}@, lockedSetDescriptor:%{public}@, reason:%{public}@, policy:%{public}@", buf, 0x2Au);
    }
  }

  _Block_object_dispose(&v42, 8);

  return v24 == 0;
}

void __111__MADAutoAssetLocker_continuedSetLockByClient_forSetDescriptor_forLockReason_withSetUsagePolicy_continueError___block_invoke(uint64_t a1)
{
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = [*(a1 + 32) latestDowloadedAtomicInstanceEntries];
  v2 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v2)
  {
    v3 = v2;
    v39 = *v41;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v41 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v40 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v6 = *(a1 + 48);
        v8 = [*(a1 + 32) clientDomainName];
        v9 = [*(a1 + 32) assetSetIdentifier];
        v10 = [v5 fullAssetSelector];
        v11 = [*(a1 + 32) latestDownloadedAtomicInstance];
        v12 = [v7 _continuedLockByClient:v6 forClientDomainName:v8 forAssetSetIdentifier:v9 forAssetSelector:v10 forSetAtomicInstance:v11 forLockReason:*(a1 + 56) withUsagePolicy:0];

        if (v12)
        {
          v13 = _MADLog(@"AutoLocker");
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = [*(a1 + 40) lockCountsTotal];
            v15 = [v5 summary];
            v16 = [v12 checkedSummary];
            *buf = 134218498;
            v45 = v14;
            v46 = 2114;
            v47 = v15;
            v48 = 2114;
            v49 = v16;
            _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER[totalLocks:%ld]:continuedSetLockByClient} | unable to continue auto-asset lock of the set | setAtomicEntry:%{public}@ | continueError:%{public}@", buf, 0x20u);
          }

          v17 = *(*(a1 + 64) + 8);
          v19 = *(v17 + 40);
          v18 = (v17 + 40);
          if (!v19)
          {
            objc_storeStrong(v18, v12);
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v3);
  }

  if (__isPlatformVersionAtLeast(2, 18, 4, 0))
  {
    v20 = [MAAutoAssetSelector alloc];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = [MAAutoAssetSelector alloc];
      v23 = [*(a1 + 32) latestDownloadedAtomicInstance];
      v24 = [v22 initForSetAtomicInstanceUUID:v23];

      if (v24)
      {
        v26 = *(a1 + 40);
        v25 = *(a1 + 48);
        v27 = [*(a1 + 32) clientDomainName];
        v28 = [*(a1 + 32) assetSetIdentifier];
        v29 = [*(a1 + 32) latestDownloadedAtomicInstance];
        v30 = [v26 _continuedLockByClient:v25 forClientDomainName:v27 forAssetSetIdentifier:v28 forAssetSelector:v24 forSetAtomicInstance:v29 forLockReason:*(a1 + 56) withUsagePolicy:0];

        if (!v30)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v30 = [MAAutoAssetError buildError:6101 fromOperation:@"AUTO-LOCKER:lockedSetByClient" underlyingError:0 withDescription:@"no auto-asset-locker"];
        if (!v30)
        {
LABEL_23:

          return;
        }
      }

      v31 = _MADLog(@"AutoLocker");
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = [*(a1 + 40) lockCountsTotal];
        v33 = [v24 summary];
        v34 = [v30 checkedSummary];
        *buf = 134218498;
        v45 = v32;
        v46 = 2114;
        v47 = v33;
        v48 = 2114;
        v49 = v34;
        _os_log_impl(&dword_0, v31, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER[totalLocks:%ld]:continuedSetLockByClient} | unable to continue auto-asset lock of the set | setSelector:%{public}@ | continueError:%{public}@", buf, 0x20u);
      }

      v35 = *(*(a1 + 64) + 8);
      v37 = *(v35 + 40);
      v36 = (v35 + 40);
      if (!v37)
      {
        objc_storeStrong(v36, v30);
      }

      goto LABEL_23;
    }
  }
}

+ (BOOL)endedPreviousSetLocksByClient:(id)client forSetDescriptor:(id)descriptor forLockReason:(id)reason removingLockCount:(int64_t)count endError:(id *)error
{
  clientCopy = client;
  descriptorCopy = descriptor;
  reasonCopy = reason;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__17;
  v51 = __Block_byref_object_dispose__17;
  v52 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  if (clientCopy && descriptorCopy)
  {
    if (count == -1 || count > 0)
    {
      v21 = +[MADAutoAssetLocker autoAssetLocker];
      reasonCopy = v21;
      if (v21)
      {
        lockerQueue = [v21 lockerQueue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = __110__MADAutoAssetLocker_endedPreviousSetLocksByClient_forSetDescriptor_forLockReason_removingLockCount_endError___block_invoke;
        block[3] = &unk_4B6340;
        v36 = descriptorCopy;
        reasonCopy = reasonCopy;
        v37 = reasonCopy;
        v38 = clientCopy;
        v39 = reasonCopy;
        v40 = &v47;
        v41 = &v43;
        countCopy = count;
        dispatch_sync(lockerQueue, block);

        v23 = v36;
        goto LABEL_21;
      }

      v17 = [MAAutoAssetError buildError:6101 fromOperation:@"AUTO-LOCKER:endedPreviousSetLocksByClient" underlyingError:0 withDescription:@"no auto-asset-locker"];
    }

    else
    {
      v14 = [NSString alloc];
      summary = [descriptorCopy summary];
      reasonCopy = [v14 initWithFormat:@"set-locks not ended (invalid endLockCount:%ld) | client:%@, lockedSetDescriptor:%@, endReason:%@", count, clientCopy, summary, reasonCopy];

      v17 = [MAAutoAssetError buildError:6102 fromOperation:@"AUTO-LOCKER:endedPreviousSetLocksByClient" underlyingError:0 withDescription:reasonCopy];
    }
  }

  else
  {
    v18 = [NSString alloc];
    if (clientCopy)
    {
      v19 = clientCopy;
    }

    else
    {
      v19 = @"MISSING";
    }

    if (descriptorCopy)
    {
      summary2 = [descriptorCopy summary];
    }

    else
    {
      summary2 = @"MISSING";
    }

    if (reasonCopy)
    {
      v24 = reasonCopy;
    }

    else
    {
      v24 = @"MISSING";
    }

    reasonCopy = [v18 initWithFormat:@"set-locks not ended (missing required) | client:%@, lockedSetDescriptor:%@, endReason:%@", v19, summary2, v24];
    if (descriptorCopy)
    {
    }

    v17 = [MAAutoAssetError buildError:6102 fromOperation:@"AUTO-LOCKER:endedPreviousSetLocksByClient" underlyingError:0 withDescription:reasonCopy];
  }

  v23 = v48[5];
  v48[5] = v17;
LABEL_21:

  if (v48[5])
  {
    v25 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      summary3 = [descriptorCopy summary];
      v27 = v48[5];
      *buf = 138544130;
      v54 = clientCopy;
      v55 = 2114;
      v56 = summary3;
      v57 = 2114;
      v58 = reasonCopy;
      v59 = 2114;
      countCopy2 = v27;
      _os_log_impl(&dword_0, v25, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:endedPreviousSetLocksByClient} failed end-set-lock(s) | client:%{public}@, lockedSetDescriptor:%{public}@, reason:%{public}@ | error:%{public}@", buf, 0x2Au);
    }

    clientDomainName = [descriptorCopy clientDomainName];
    assetSetIdentifier = [descriptorCopy assetSetIdentifier];
    latestDownloadedAtomicInstance = [descriptorCopy latestDownloadedAtomicInstance];
    [MADAutoAssetHistory recordFailedOperation:502 fromClient:clientCopy forClientDomainName:clientDomainName forAssetSetIdentifier:assetSetIdentifier forAtomicInstance:latestDownloadedAtomicInstance failingWithError:v48[5]];

    if (error)
    {
      *error = v48[5];
    }
  }

  else
  {
    v31 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      summary4 = [descriptorCopy summary];
      *buf = 138544130;
      v54 = clientCopy;
      v55 = 2114;
      v56 = summary4;
      v57 = 2114;
      v58 = reasonCopy;
      v59 = 2048;
      countCopy2 = count;
      _os_log_impl(&dword_0, v31, OS_LOG_TYPE_DEFAULT, "{AUTO-LOCKER:endedPreviousSetLocksByClient} successful end-set-lock(s) | client:%{public}@, lockedSetDescriptor:%{public}@, reason:%{public}@, ended locks:%ld", buf, 0x2Au);
    }

    *(v44 + 24) = 1;
  }

  v33 = *(v44 + 24);
  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);

  return v33 & 1;
}

void __110__MADAutoAssetLocker_endedPreviousSetLocksByClient_forSetDescriptor_forLockReason_removingLockCount_endError___block_invoke(uint64_t a1)
{
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = [*(a1 + 32) latestDowloadedAtomicInstanceEntries];
  v2 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
  if (v2)
  {
    v3 = v2;
    v42 = *v46;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v46 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v45 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v6 = *(a1 + 48);
        v8 = [*(a1 + 32) clientDomainName];
        v9 = [v5 fullAssetSelector];
        v10 = [*(a1 + 32) latestDownloadedAtomicInstance];
        v11 = *(a1 + 56);
        v12 = *(a1 + 80);
        v44 = 0;
        [v7 _endLocksByClient:@"AUTO-LOCKER:endedPreviousSetLocksByClient" forAssetClientName:v6 forAllClientNames:0 forClientProcessName:0 withClientProcessID:0 forClientDomainName:v8 forAssetSelector:v9 forSetAtomicInstance:v10 forLockReason:v11 removingLockCount:v12 endError:&v44];
        v13 = v44;
        v14 = v44;

        if (v14)
        {
          v15 = _MADLog(@"AutoLocker");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = [*(a1 + 40) lockCountsTotal];
            v17 = [v5 summary];
            v18 = [v14 checkedSummary];
            *buf = 134218498;
            v50 = v16;
            v51 = 2114;
            v52 = v17;
            v53 = 2114;
            v54 = v18;
            _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER[totalLocks:%ld]:endedPreviousSetLocksByClient} | unable to end auto-asset lock-count of the set | setAtomicEntry:%{public}@ | endedLocksAutoAssetError:%{public}@", buf, 0x20u);
          }

          v19 = *(*(a1 + 64) + 8);
          v21 = *(v19 + 40);
          v20 = (v19 + 40);
          if (!v21)
          {
            objc_storeStrong(v20, v13);
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v45 objects:v55 count:16];
    }

    while (v3);
  }

  if (__isPlatformVersionAtLeast(2, 18, 4, 0))
  {
    v22 = [MAAutoAssetSelector alloc];
    v23 = objc_opt_respondsToSelector();

    if (v23)
    {
      v24 = [MAAutoAssetSelector alloc];
      v25 = [*(a1 + 32) latestDownloadedAtomicInstance];
      v26 = [v24 initForSetAtomicInstanceUUID:v25];

      if (v26)
      {
        v28 = *(a1 + 40);
        v27 = *(a1 + 48);
        v29 = [*(a1 + 32) clientDomainName];
        v30 = [*(a1 + 32) latestDownloadedAtomicInstance];
        v31 = *(a1 + 56);
        v32 = *(a1 + 80);
        v43 = 0;
        [v28 _endLocksByClient:@"AUTO-LOCKER:endedPreviousSetLocksByClient" forAssetClientName:v27 forAllClientNames:0 forClientProcessName:0 withClientProcessID:0 forClientDomainName:v29 forAssetSelector:v26 forSetAtomicInstance:v30 forLockReason:v31 removingLockCount:v32 endError:&v43];
        v33 = v43;

        if (!v33)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v33 = [MAAutoAssetError buildError:6101 fromOperation:@"AUTO-LOCKER:lockedSetByClient" underlyingError:0 withDescription:@"no auto-asset-locker"];
        if (!v33)
        {
LABEL_23:

          goto LABEL_24;
        }
      }

      v34 = _MADLog(@"AutoLocker");
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v35 = [*(a1 + 40) lockCountsTotal];
        v36 = [v26 summary];
        v37 = [v33 checkedSummary];
        *buf = 134218498;
        v50 = v35;
        v51 = 2114;
        v52 = v36;
        v53 = 2114;
        v54 = v37;
        _os_log_impl(&dword_0, v34, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER[totalLocks:%ld]:endedPreviousSetLocksByClient} | unable to end auto-asset lock-count of the set | setAtomicEntry:%{public}@ | endedLocksAutoAssetError:%{public}@", buf, 0x20u);
      }

      v38 = *(*(a1 + 64) + 8);
      v40 = *(v38 + 40);
      v39 = (v38 + 40);
      if (!v40)
      {
        objc_storeStrong(v39, v33);
      }

      goto LABEL_23;
    }
  }

LABEL_24:
  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    *(*(*(a1 + 72) + 8) + 24) = 1;
  }
}

+ (void)eliminateAllPreviousSetLocksByClient:(id)client forSetDescriptor:(id)descriptor
{
  clientCopy = client;
  descriptorCopy = descriptor;
  v7 = descriptorCopy;
  if (clientCopy && descriptorCopy)
  {
    v8 = +[MADAutoAssetLocker autoAssetLocker];
    v9 = v8;
    if (v8)
    {
      lockerQueue = [v8 lockerQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __76__MADAutoAssetLocker_eliminateAllPreviousSetLocksByClient_forSetDescriptor___block_invoke;
      block[3] = &unk_4B2AF0;
      v15 = v9;
      v16 = clientCopy;
      v17 = v7;
      dispatch_sync(lockerQueue, block);

      summary2 = v15;
    }

    else
    {
      summary2 = _MADLog(@"AutoLocker");
      if (os_log_type_enabled(summary2, OS_LOG_TYPE_ERROR))
      {
        summary = [v7 summary];
        *buf = 138543618;
        v19 = clientCopy;
        v20 = 2114;
        v21 = summary;
        _os_log_impl(&dword_0, summary2, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:eliminateAllPreviousSetLocksByClient} no auto-asset-locker | client:%{public}@, lockedSetDescriptor:%{public}@", buf, 0x16u);
      }
    }

LABEL_15:

    goto LABEL_16;
  }

  v9 = _MADLog(@"AutoLocker");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    summary2 = @"MISSING";
    if (clientCopy)
    {
      v12 = clientCopy;
    }

    else
    {
      v12 = @"MISSING";
    }

    if (v7)
    {
      summary2 = [v7 summary];
    }

    *buf = 138543618;
    v19 = v12;
    v20 = 2114;
    v21 = summary2;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:eliminateAllPreviousSetLocksByClient} set-locks not eliminated (missing required) | client:%{public}@, lockedSetDescriptor:%{public}@", buf, 0x16u);
    if (v7)
    {
      goto LABEL_15;
    }
  }

LABEL_16:
}

+ (id)eliminateAllPreviousSetLocksNoLongerTracked:(id)tracked
{
  trackedCopy = tracked;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__17;
  v19 = __Block_byref_object_dispose__17;
  v20 = 0;
  if (trackedCopy)
  {
    v4 = +[MADAutoAssetLocker autoAssetLocker];
    v5 = v4;
    if (v4)
    {
      lockerQueue = [v4 lockerQueue];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __66__MADAutoAssetLocker_eliminateAllPreviousSetLocksNoLongerTracked___block_invoke;
      block[3] = &unk_4B2E80;
      v13 = &v15;
      v11 = v5;
      v12 = trackedCopy;
      dispatch_sync(lockerQueue, block);

      v7 = v11;
    }

    else
    {
      v7 = _MADLog(@"AutoLocker");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:eliminateAllPreviousSetLocksNoLongerTracked} no auto-asset-locker", buf, 2u);
      }
    }
  }

  else
  {
    v5 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v5, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:eliminateAllPreviousSetLocksNoLongerTracked} set-locks not eliminated (missing required) | trackedSetDescriptors:N", buf, 2u);
    }
  }

  v8 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v8;
}

uint64_t __66__MADAutoAssetLocker_eliminateAllPreviousSetLocksNoLongerTracked___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _endAllSetLocksNoLongerTracked:*(a1 + 40)];

  return _objc_release_x1();
}

+ (id)newCurrentSetLockUsageForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__17;
  v27 = __Block_byref_object_dispose__17;
  v28 = objc_alloc_init(NSMutableDictionary);
  v4 = +[MADAutoAssetLocker autoAssetLocker];
  v5 = v4;
  if (v4)
  {
    lockerQueue = [v4 lockerQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __58__MADAutoAssetLocker_newCurrentSetLockUsageForDescriptor___block_invoke;
    block[3] = &unk_4B4478;
    v20 = descriptorCopy;
    v21 = v5;
    v22 = &v23;
    dispatch_sync(lockerQueue, block);

    v7 = v20;
  }

  else
  {
    v7 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v7, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:newCurrentSetLockUsageForDescriptor} | no auto-asset-locker", buf, 2u);
    }
  }

  if (![v24[5] count])
  {
    v8 = v24[5];
    v24[5] = 0;
  }

  v9 = v24[5];
  if (v9)
  {
    v10 = [v9 count];
    v11 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      summary = [descriptorCopy summary];
      safeSummary = [v24[5] safeSummary];
      v14 = safeSummary;
      v15 = @"s";
      *buf = 138544130;
      v31 = 2048;
      v30 = summary;
      if (v10 == &dword_0 + 1)
      {
        v15 = &stru_4BD3F0;
      }

      v32 = v10;
      v33 = 2114;
      v34 = v15;
      v35 = 2114;
      v36 = safeSummary;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "{AUTO-LOCKER:newCurrentSetLockUsageForDescriptor} | lockedSetDescriptor:%{public}@ | %ld current lock-reason%{public}@:%{public}@", buf, 0x2Au);
    }
  }

  else
  {
    v11 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      summary2 = [descriptorCopy summary];
      *buf = 138543362;
      v30 = summary2;
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_DEFAULT, "{AUTO-LOCKER:newCurrentSetLockUsageForDescriptor} | lockedSetDescriptor:%{public}@ | no current lock-reasons", buf, 0xCu);
    }
  }

  v17 = v24[5];
  _Block_object_dispose(&v23, 8);

  return v17;
}

void __58__MADAutoAssetLocker_newCurrentSetLockUsageForDescriptor___block_invoke(uint64_t a1)
{
  v1 = a1;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [*(a1 + 32) latestDowloadedAtomicInstanceEntries];
  v2 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v50;
    *&v3 = 138543618;
    v37 = v3;
    v38 = *v50;
    do
    {
      v6 = 0;
      v39 = v4;
      do
      {
        if (*v50 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v49 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = *(v1 + 40);
        v10 = [v7 fullAssetSelector];
        v11 = [v9 locateLockByFullAssetSelector:v10];

        v43 = v11;
        if (v11)
        {
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v44 = [v11 lockReasons];
          v12 = [v44 countByEnumeratingWithState:&v45 objects:v53 count:16];
          if (v12)
          {
            v13 = v12;
            v41 = v8;
            v42 = v6;
            v14 = *v46;
            v15 = v11;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v46 != v14)
                {
                  objc_enumerationMutation(v44);
                }

                v17 = *(*(&v45 + 1) + 8 * i);
                v18 = objc_autoreleasePoolPush();
                v19 = [v15 lockReasons];
                v20 = [v19 safeObjectForKey:v17 ofClass:objc_opt_class()];

                if (v20)
                {
                  v21 = [v20 clientLockReason];
                  v22 = [v21 lockReason];

                  if (v22)
                  {
                    v23 = *(*(*(v1 + 48) + 8) + 40);
                    v24 = [v20 clientLockReason];
                    v25 = [v24 lockReason];
                    v26 = [v23 safeObjectForKey:v25 ofClass:objc_opt_class()];

                    v27 = [NSNumber alloc];
                    if (v26)
                    {
                      v28 = [v27 initWithLong:{objc_msgSend(v20, "activeLockCount") + objc_msgSend(v26, "intValue")}];
                    }

                    else
                    {
                      v28 = [v27 initWithLong:{objc_msgSend(v20, "activeLockCount")}];
                    }

                    v29 = *(*(*(v1 + 48) + 8) + 40);
                    v30 = [v20 clientLockReason];
                    [v30 lockReason];
                    v32 = v31 = v1;
                    [v29 setSafeObject:v28 forKey:v32];

                    v1 = v31;
                    v15 = v43;
                  }
                }

                objc_autoreleasePoolPop(v18);
              }

              v13 = [v44 countByEnumeratingWithState:&v45 objects:v53 count:16];
            }

            while (v13);
            v5 = v38;
            v4 = v39;
            v8 = v41;
            v6 = v42;
          }

          v33 = v44;
        }

        else
        {
          v33 = _MADLog(@"AutoLocker");
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = [*(v1 + 40) summary];
            v35 = [v7 fullAssetSelector];
            v36 = [v35 summary];
            *buf = v37;
            v55 = v34;
            v56 = 2114;
            v57 = v36;
            _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%{public}@ | {newCurrentLockUsageForSelector} no assetLock on locksBySelector for fullAssetSelector:%{public}@", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(v8);
        v6 = v6 + 1;
      }

      while (v6 != v4);
      v4 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v4);
  }
}

- (BOOL)isAssetLockSetAtomicInstanceLock:(id)lock
{
  lockCopy = lock;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  lockReasons = [lockCopy lockReasons];
  v6 = [lockReasons countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(lockReasons);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        lockReasons2 = [lockCopy lockReasons];
        v13 = [lockReasons2 safeObjectForKey:v11 ofClass:objc_opt_class()];

        v14 = [(MADAutoAssetLocker *)self atomicInstanceUUIDForLockTracker:v13];
        v8 |= v14 != 0;
      }

      v7 = [lockReasons countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

- (id)atomicInstanceUUIDForLockTracker:(id)tracker
{
  trackerCopy = tracker;
  clientLockReason = [trackerCopy clientLockReason];
  autoAssetClientName = [clientLockReason autoAssetClientName];

  if (autoAssetClientName)
  {
    clientLockReason2 = [trackerCopy clientLockReason];
    autoAssetClientName2 = [clientLockReason2 autoAssetClientName];
    v8 = [autoAssetClientName2 componentsSeparatedByString:@"_"];

    v9 = [v8 count];
    if (v9 < 3)
    {
      autoAssetClientName = 0;
    }

    else
    {
      v10 = [v8 objectAtIndex:v9 - 1];
      if ([v10 length] == &stru_20.cmdsize)
      {
        autoAssetClientName = v10;
      }

      else
      {
        autoAssetClientName = 0;
      }
    }
  }

  return autoAssetClientName;
}

- (id)_lockAutoAssetByClient:(id)client forClientProcessName:(id)name withClientProcessID:(int64_t)d forClientDomainName:(id)domainName forAssetSelector:(id)selector forSetAtomicInstance:(id)instance forLockReason:(id)reason withDeltaLockCount:(int64_t)self0 withUsagePolicy:(id)self1 withLocalContentURL:(id)self2 withAssetAttributes:(id)self3
{
  clientCopy = client;
  nameCopy = name;
  domainNameCopy = domainName;
  selectorCopy = selector;
  instanceCopy = instance;
  policyCopy = policy;
  v23 = instanceCopy;
  lCopy = l;
  attributesCopy = attributes;
  reasonCopy = reason;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  if (v23)
  {
    v26 = [(MADAutoAssetLocker *)self newSetClientNameForDomain:domainNameCopy withAutoAssetClientName:clientCopy forSetAtomicInstance:v23];
  }

  else
  {
    v26 = clientCopy;
  }

  v60 = v26;
  v27 = [[MAAutoAssetLockReason alloc] initForClientName:v26 forLockReason:reasonCopy];

  if (objc_opt_respondsToSelector())
  {
    v28 = selectorCopy;
    isPlatformVersionAtLeast = __isPlatformVersionAtLeast(2, 18, 0, 0);
    v30 = [MAAutoAssetLockTracker alloc];
    if (isPlatformVersionAtLeast)
    {
      v31 = [v30 initForClientLockReason:v27 forClientProcessName:nameCopy withClientProcessID:d lockingWithUsagePolicy:policyCopy];
    }

    else
    {
      v31 = [v30 initForClientLockReason:v27 lockingWithUsagePolicy:policyCopy];
    }

    v32 = v31;
    selectorCopy = v28;
    if (!v27)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v32 = [[MAAutoAssetLockTracker alloc] initForClientLockReason:v27 lockingWithUsagePolicy:policyCopy];
    if (!v27)
    {
      goto LABEL_15;
    }
  }

  if (!v32)
  {
LABEL_15:
    v39 = [MAAutoAssetError buildError:6101 fromOperation:@"AUTO-LOCKER:_lockAutoAssetByClient" underlyingError:0 withDescription:@"unable to allocate auto-asset-lock-tracker"];
    goto LABEL_40;
  }

  v59 = v23;
  v33 = [(MADAutoAssetLocker *)self locateLockByFullAssetSelector:selectorCopy];
  v55 = clientCopy;
  v56 = selectorCopy;
  if (v33)
  {
    v34 = v33;
    lockReasons = [v33 lockReasons];
    summary = [v27 summary];
    v37 = [lockReasons safeObjectForKey:summary ofClass:objc_opt_class()];

    if (v37)
    {
      [(MADAutoAssetLocker *)self _mergeAddedLock:v32 intoExistingLock:v37];
      v38 = @"existing lock of auto-specific-asset locked again for given reason";
    }

    else
    {
      lockReasons2 = [v34 lockReasons];
      summary2 = [v27 summary];
      [lockReasons2 setSafeObject:v32 forKey:summary2];

      v38 = @"existing lock of auto-specific-asset locked for new reason";
    }

    v39 = 0;
    v43 = 0;
    clientCopy = v55;
    if (policyCopy)
    {
LABEL_21:
      if ([policyCopy lockInhibitsEmergencyRemoval])
      {
        [v34 setInhibitedFromEmergencyRemoval:1];
      }
    }
  }

  else
  {
    v40 = [[MAAutoAssetLock alloc] initForSelector:selectorCopy withLocalContentURL:lCopy withAssetAttributes:attributesCopy];
    v34 = v40;
    if (v40)
    {
      lockReasons3 = [v40 lockReasons];
      summary3 = [v27 summary];
      [lockReasons3 setSafeObject:v32 forKey:summary3];

      v39 = 0;
      v38 = @"first lock of auto-specific-asset";
      v43 = 1;
      if (policyCopy)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v39 = [MAAutoAssetError buildError:6101 fromOperation:@"AUTO-LOCKER:_lockAutoAssetByClient" underlyingError:0 withDescription:@"unable to allocate auto-asset-lock"];
      v43 = 0;
      v38 = @"locked by client for specified reason";
      if (policyCopy)
      {
        goto LABEL_21;
      }
    }
  }

  if (!v39)
  {
    v46 = [NSString alloc];
    lockReasons4 = [v34 lockReasons];
    v48 = [v46 initWithFormat:@"%@ | assetLock.lockReasons:%ld", v38, objc_msgSend(lockReasons4, "count")];

    if (v43)
    {
      v49 = @"ENTRY_ADD";
    }

    else
    {
      v49 = @"ENTRY_INCREASED";
    }

    [(MADAutoAssetLocker *)self _persistAssetLock:@"_lockAutoAssetByClient" operation:v49 forAssetLock:v34 withDeltaLockCount:count message:v48];
    v39 = [(MADAutoAssetLocker *)self _refreshFilesystemMetadataLastInterest:v34];
    if (v39)
    {
      fullAssetSelector = [v34 fullAssetSelector];
      clientCopy = v55;
      [(MADAutoAssetLocker *)self _removeAssetLock:@"_lockAutoAssetByClient" removingAssetLock:v34 lastClient:v55 forSelector:fullAssetSelector message:@"unable to refresh filesystem metadata on initial lock (lock considered invalid)"];
    }

    else
    {
      inhibitedFromEmergencyRemoval = [v34 inhibitedFromEmergencyRemoval];
      v52 = 101;
      if (inhibitedFromEmergencyRemoval)
      {
        v52 = 102;
      }

      v53 = 250;
      if (inhibitedFromEmergencyRemoval)
      {
        v53 = 251;
      }

      if (!v43)
      {
        v52 = v53;
      }

      v57 = v52;
      [(MADAutoAssetLocker *)self lockCountsTotal];
      fullAssetSelector = [(MADAutoAssetLocker *)self _assetIDOfLock:v34];
      clientCopy = v55;
      [MADAutoAssetHistory recordOperation:"recordOperation:toHistoryType:fromClient:usageCount:forAssetID:withSelector:" toHistoryType:v57 fromClient:1 usageCount:? forAssetID:? withSelector:?];
    }
  }

  selectorCopy = v56;
  v23 = v59;
LABEL_40:

  return v39;
}

- (id)_continuedLockByClient:(id)client forClientDomainName:(id)name forAssetSetIdentifier:(id)identifier forAssetSelector:(id)selector forSetAtomicInstance:(id)instance forLockReason:(id)reason withUsagePolicy:(id)policy
{
  clientCopy = client;
  nameCopy = name;
  selectorCopy = selector;
  instanceCopy = instance;
  policyCopy = policy;
  reasonCopy = reason;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  if (instanceCopy)
  {
    v20 = [(MADAutoAssetLocker *)self newSetClientNameForDomain:nameCopy withAutoAssetClientName:clientCopy forSetAtomicInstance:instanceCopy];
  }

  else
  {
    v20 = clientCopy;
  }

  v52 = v20;
  v21 = [[MAAutoAssetLockReason alloc] initForClientName:v20 forLockReason:reasonCopy];

  v22 = [[MAAutoAssetLockTracker alloc] initForClientLockReason:v21 lockingWithUsagePolicy:policyCopy];
  v23 = v22;
  v24 = selectorCopy;
  v53 = policyCopy;
  if (!v21 || !v22)
  {
    v34 = [MAAutoAssetError buildError:6101 fromOperation:@"AUTO-LOCKER:continuedLockByClient" underlyingError:0 withDescription:@"unable to allocate auto-asset-lock-tracker"];
    if (!v34)
    {
      goto LABEL_27;
    }

    goto LABEL_24;
  }

  v51 = nameCopy;
  v25 = [(MADAutoAssetLocker *)self locateLockByFullAssetSelector:selectorCopy];
  v26 = v25;
  if (!v25)
  {
    v36 = [NSString alloc];
    summary = [selectorCopy summary];
    fullAssetSelector = [v36 initWithFormat:@"cannot accept continue lock when no existing lock for auto-specific-asset:%@", summary];
    v34 = [MAAutoAssetError buildError:6501 fromOperation:@"AUTO-LOCKER:continuedLockByClient" underlyingError:0 withDescription:fullAssetSelector];
    goto LABEL_22;
  }

  v50 = clientCopy;
  lockReasons = [v25 lockReasons];
  summary2 = [v21 summary];
  summary = [lockReasons safeObjectForKey:summary2 ofClass:objc_opt_class()];

  if (!summary)
  {
    v37 = [NSString alloc];
    summary3 = [v21 summary];
    v39 = [v37 initWithFormat:@"cannot accept continue lock when no existing lock for client-lock-reason:%@", summary3];
    v34 = [MAAutoAssetError buildError:6501 fromOperation:@"AUTO-LOCKER:continuedLockByClient" underlyingError:0 withDescription:v39];

    if (v34)
    {
      clientCopy = v50;
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  [(MADAutoAssetLocker *)self _mergeContinuedLock:v23 intoExistingLock:summary];
  if (v53 && [v53 lockInhibitsEmergencyRemoval])
  {
    [v26 setInhibitedFromEmergencyRemoval:1];
  }

  v30 = [NSString alloc];
  lockReasons2 = [v26 lockReasons];
  v32 = [v30 initWithFormat:@"client continued lock of auto-specific-asset | assetLock.lockReasons:%ld", objc_msgSend(lockReasons2, "count")];
  [(MADAutoAssetLocker *)self _persistAssetLock:@"continuedLockByClient" operation:@"ENTRY_MODIFY" forAssetLock:v26 withDeltaLockCount:0 message:v32];

  v33 = [(MADAutoAssetLocker *)self _refreshFilesystemMetadataLastInterest:v26];
  if (!v33)
  {
LABEL_18:
    if ([v26 inhibitedFromEmergencyRemoval])
    {
      v40 = 251;
    }

    else
    {
      v40 = 250;
    }

    lockCountsTotal = [(MADAutoAssetLocker *)self lockCountsTotal];
    fullAssetSelector = [(MADAutoAssetLocker *)self _assetIDOfLock:v26];
    v42 = v40;
    clientCopy = v50;
    [MADAutoAssetHistory recordOperation:v42 toHistoryType:1 fromClient:v50 usageCount:lockCountsTotal forAssetID:fullAssetSelector withSelector:selectorCopy];
    v34 = 0;
    goto LABEL_22;
  }

  v34 = v33;
  fullAssetSelector = [v26 fullAssetSelector];
  [(MADAutoAssetLocker *)self _removeAssetLock:@"continuedLockByClient" removingAssetLock:v26 lastClient:clientCopy forSelector:fullAssetSelector message:@"unable to refresh filesystem metadata on continue lock (lock considered invalid)"];
LABEL_22:

LABEL_23:
  nameCopy = v51;
  if (!v34)
  {
    goto LABEL_27;
  }

LABEL_24:
  v43 = _MADLog(@"AutoLocker");
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    summary4 = [(MADAutoAssetLocker *)self summary];
    [selectorCopy summary];
    v45 = nameCopy;
    v47 = v46 = clientCopy;
    checkedSummary = [v34 checkedSummary];
    *buf = 138543874;
    v56 = summary4;
    v57 = 2114;
    v58 = v47;
    v59 = 2114;
    v60 = checkedSummary;
    _os_log_impl(&dword_0, v43, OS_LOG_TYPE_ERROR, "%{public}@ | {_continuedLockByClient} unable to continue lock | fullAssetSelector:%{public}@ | continueError:%{public}@", buf, 0x20u);

    clientCopy = v46;
    nameCopy = v45;
    v24 = selectorCopy;
  }

LABEL_27:

  return v34;
}

- (void)_endAllSetLocksByClient:(id)client forSetDescriptor:(id)descriptor
{
  clientCopy = client;
  descriptorCopy = descriptor;
  selfCopy = self;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = [descriptorCopy latestDowloadedAtomicInstanceEntries];
  v9 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
  v37 = clientCopy;
  if (v9)
  {
    v10 = v9;
    v39 = *v44;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v44 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v43 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        clientDomainName = [descriptorCopy clientDomainName];
        fullAssetSelector = [v12 fullAssetSelector];
        latestDownloadedAtomicInstance = [descriptorCopy latestDownloadedAtomicInstance];
        v42 = 0;
        [(MADAutoAssetLocker *)selfCopy _endLocksByClient:@"_endAllSetLocksByClient" forAssetClientName:clientCopy forAllClientNames:1 forClientProcessName:0 withClientProcessID:0 forClientDomainName:clientDomainName forAssetSelector:fullAssetSelector forSetAtomicInstance:latestDownloadedAtomicInstance forLockReason:0 removingLockCount:-1 endError:&v42];
        v17 = v42;

        if (v17)
        {
          v18 = _MADLog(@"AutoLocker");
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            lockCountsTotal = [(MADAutoAssetLocker *)selfCopy lockCountsTotal];
            summary = [descriptorCopy summary];
            summary2 = [v12 summary];
            checkedSummary = [v17 checkedSummary];
            *buf = 134218754;
            v48 = lockCountsTotal;
            v49 = 2114;
            v50 = summary;
            v51 = 2114;
            v52 = summary2;
            v53 = 2114;
            v54 = checkedSummary;
            _os_log_impl(&dword_0, v18, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER[totalLocks:%ld]:eliminateAllPreviousSetLocksByClient} | unable to end auto-asset all-lock for the set | lockedSetDescriptor:%{public}@ | nextEntry:%{public}@ | endedLocksAutoAssetError:%{public}@", buf, 0x2Au);

            clientCopy = v37;
          }
        }

        objc_autoreleasePoolPop(v13);
      }

      v10 = [obj countByEnumeratingWithState:&v43 objects:v55 count:16];
    }

    while (v10);
  }

  if (__isPlatformVersionAtLeast(2, 18, 4, 0))
  {
    v23 = objc_autoreleasePoolPush();
    v24 = [MAAutoAssetSelector alloc];
    v25 = objc_opt_respondsToSelector();

    if (v25)
    {
      v26 = [MAAutoAssetSelector alloc];
      latestDownloadedAtomicInstance2 = [descriptorCopy latestDownloadedAtomicInstance];
      v28 = [v26 initForSetAtomicInstanceUUID:latestDownloadedAtomicInstance2];

      if (v28)
      {
        clientDomainName2 = [descriptorCopy clientDomainName];
        latestDownloadedAtomicInstance3 = [descriptorCopy latestDownloadedAtomicInstance];
        v41 = 0;
        [(MADAutoAssetLocker *)selfCopy _endLocksByClient:@"_endAllSetLocksByClient" forAssetClientName:v37 forAllClientNames:1 forClientProcessName:0 withClientProcessID:0 forClientDomainName:clientDomainName2 forAssetSelector:v28 forSetAtomicInstance:latestDownloadedAtomicInstance3 forLockReason:0 removingLockCount:-1 endError:&v41];
        v31 = v41;

        if (v31)
        {
          v32 = _MADLog(@"AutoLocker");
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            lockCountsTotal2 = [(MADAutoAssetLocker *)selfCopy lockCountsTotal];
            summary3 = [descriptorCopy summary];
            summary4 = [v28 summary];
            checkedSummary2 = [v31 checkedSummary];
            *buf = 134218754;
            v48 = lockCountsTotal2;
            v49 = 2114;
            v50 = summary3;
            v51 = 2114;
            v52 = summary4;
            v53 = 2114;
            v54 = checkedSummary2;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER[totalLocks:%ld]:eliminateAllPreviousSetLocksByClient} | unable to end auto-asset all-lock for the set | lockedSetDescriptor:%{public}@ | setSelector:%{public}@ | endedLocksAutoAssetError:%{public}@", buf, 0x2Au);
          }
        }
      }

      clientCopy = v37;
    }

    objc_autoreleasePoolPop(v23);
  }
}

- (id)_endAllSetLocksNoLongerTracked:(id)tracked
{
  trackedCopy = tracked;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  locateLocksNewAllBySelector = [(MADAutoAssetLocker *)self locateLocksNewAllBySelector];
  v7 = objc_alloc_init(NSMutableArray);
  v33 = objc_alloc_init(NSMutableArray);
  [(MADAutoAssetLocker *)self trackPerformanceIteration:@"_endAllSetLocksNoLongerTracked" ofContainer:@"locksBySelector"];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v8 = locateLocksNewAllBySelector;
  v9 = [v8 countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v42;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v42 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v41 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = [v8 safeObjectForKey:v13 ofClass:objc_opt_class()];
        if ([(MADAutoAssetLocker *)self _isUntrackedSetAssetLock:v15 forTrackedSetDescriptors:trackedCopy])
        {
          [v7 addObject:v15];
        }

        objc_autoreleasePoolPop(v14);
      }

      v10 = [v8 countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v10);
  }

  v31 = v8;
  v32 = trackedCopy;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v7;
  v35 = [obj countByEnumeratingWithState:&v37 objects:v51 count:16];
  if (v35)
  {
    v16 = *v38;
    do
    {
      for (j = 0; j != v35; j = j + 1)
      {
        if (*v38 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v37 + 1) + 8 * j);
        v19 = objc_autoreleasePoolPush();
        fullAssetSelector = [v18 fullAssetSelector];
        v36 = 0;
        [(MADAutoAssetLocker *)self _endLocksByClient:@"_endAllSetLocksNoLongerTracked" forAssetClientName:@"_endAllSetLocksNoLongerTracked" forAllClientNames:1 forClientProcessName:0 withClientProcessID:0 forClientDomainName:@"_endAllSetLocksNoLongerTracked" forAssetSelector:fullAssetSelector forSetAtomicInstance:0 forLockReason:0 removingLockCount:-1 endError:&v36];
        v21 = v36;

        if (v21)
        {
          v22 = _MADLog(@"AutoLocker");
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            lockCountsTotal = [(MADAutoAssetLocker *)self lockCountsTotal];
            summary = [v18 summary];
            [v21 checkedSummary];
            v26 = v25 = v16;
            *buf = 134218498;
            v46 = lockCountsTotal;
            v47 = 2114;
            v48 = summary;
            v49 = 2114;
            v50 = v26;
            _os_log_impl(&dword_0, v22, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER[totalLocks:%ld]:_endAllSetLocksNoLongerTracked} | unable to end auto-asset all-locks not tracked in sets | untrackedLock:%{public}@ |  endedLocksAutoAssetError:%{public}@", buf, 0x20u);

            v16 = v25;
          }
        }

        else
        {
          fullAssetSelector2 = [v18 fullAssetSelector];
          v22 = [(MADAutoAssetLocker *)self locateLockByFullAssetSelector:fullAssetSelector2];

          if (!v22)
          {
            fullAssetSelector3 = [v18 fullAssetSelector];
            [v33 addObject:fullAssetSelector3];
          }
        }

        objc_autoreleasePoolPop(v19);
      }

      v35 = [obj countByEnumeratingWithState:&v37 objects:v51 count:16];
    }

    while (v35);
  }

  if ([v33 count])
  {
    v29 = v33;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (id)_endAllSetLocks:(id)locks forClientDomainName:(id)name forAssetSetIdentifier:(id)identifier
{
  locksCopy = locks;
  nameCopy = name;
  identifierCopy = identifier;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  v37 = locksCopy;
  locksCopy = [[NSString alloc] initWithFormat:@"%@:_endAllSetLocks", locksCopy];
  locateLocksNewAllBySelector = [(MADAutoAssetLocker *)self locateLocksNewAllBySelector];
  v13 = objc_alloc_init(NSMutableArray);
  v38 = objc_alloc_init(NSMutableArray);
  [(MADAutoAssetLocker *)self trackPerformanceIteration:locksCopy ofContainer:@"locksBySelector"];
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = locateLocksNewAllBySelector;
  v14 = [obj countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v49;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v49 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v48 + 1) + 8 * i);
        v19 = objc_autoreleasePoolPush();
        v20 = [obj safeObjectForKey:v18 ofClass:objc_opt_class()];
        if ([(MADAutoAssetLocker *)self _isSetAssetLock:v20 forClientDomainName:nameCopy forAssetSetIdentifier:identifierCopy])
        {
          [v13 addObject:v20];
        }

        objc_autoreleasePoolPop(v19);
      }

      v15 = [obj countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v15);
  }

  v36 = identifierCopy;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v39 = v13;
  v21 = v38;
  v40 = [v39 countByEnumeratingWithState:&v44 objects:v60 count:16];
  if (v40)
  {
    v22 = *v45;
    do
    {
      for (j = 0; j != v40; j = j + 1)
      {
        if (*v45 != v22)
        {
          objc_enumerationMutation(v39);
        }

        v24 = *(*(&v44 + 1) + 8 * j);
        v25 = objc_autoreleasePoolPush();
        fullAssetSelector = [v24 fullAssetSelector];
        v43 = 0;
        [(MADAutoAssetLocker *)self _endLocksByClient:locksCopy forAssetClientName:locksCopy forAllClientNames:1 forClientProcessName:0 withClientProcessID:0 forClientDomainName:nameCopy forAssetSelector:fullAssetSelector forSetAtomicInstance:0 forLockReason:0 removingLockCount:-1 endError:&v43];
        v27 = v43;

        if (v27)
        {
          fullAssetSelector2 = _MADLog(@"AutoLocker");
          if (os_log_type_enabled(fullAssetSelector2, OS_LOG_TYPE_ERROR))
          {
            lockCountsTotal = [(MADAutoAssetLocker *)self lockCountsTotal];
            summary = [v24 summary];
            [v27 checkedSummary];
            selfCopy = self;
            v33 = v32 = v22;
            *buf = 134218754;
            v53 = lockCountsTotal;
            v21 = v38;
            v54 = 2114;
            v55 = locksCopy;
            v56 = 2114;
            v57 = summary;
            v58 = 2114;
            v59 = v33;
            _os_log_impl(&dword_0, fullAssetSelector2, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER[totalLocks:%ld]:{%{public}@} | unable to end auto-asset all-locks for set-identifier | orphanedLock:%{public}@ |  endedLocksAutoAssetError:%{public}@", buf, 0x2Au);

            v22 = v32;
            self = selfCopy;
          }
        }

        else
        {
          fullAssetSelector2 = [v24 fullAssetSelector];
          [v21 addObject:fullAssetSelector2];
        }

        objc_autoreleasePoolPop(v25);
      }

      v40 = [v39 countByEnumeratingWithState:&v44 objects:v60 count:16];
    }

    while (v40);
  }

  if ([0 count])
  {
    v34 = v21;
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

- (id)_endedLockByClient:(id)client forClientDomainName:(id)name forAssetSetIdentifier:(id)identifier forAssetSelector:(id)selector forSetAtomicInstance:(id)instance forLockReason:(id)reason
{
  clientCopy = client;
  nameCopy = name;
  selectorCopy = selector;
  instanceCopy = instance;
  reasonCopy = reason;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  if (instanceCopy)
  {
    v19 = [(MADAutoAssetLocker *)self newSetClientNameForDomain:nameCopy withAutoAssetClientName:clientCopy forSetAtomicInstance:instanceCopy];
  }

  else
  {
    v19 = clientCopy;
  }

  v20 = v19;
  v21 = [[MAAutoAssetLockReason alloc] initForClientName:v19 forLockReason:reasonCopy];
  if (!v21)
  {
    v34 = [NSString alloc];
    summary = [selectorCopy summary];
    reasonCopy = [v34 initWithFormat:@"unable to allocate client-lock-reason | client:%@, selector:%@, reason:%@", clientCopy, summary, reasonCopy];

    v30 = [MAAutoAssetError buildError:6101 fromOperation:@"AUTO-LOCKER:endedLockByClient" underlyingError:0 withDescription:reasonCopy];
    goto LABEL_20;
  }

  v22 = [(MADAutoAssetLocker *)self locateLockByFullAssetSelector:selectorCopy];
  v23 = v22;
  if (v22)
  {
    v47 = v20;
    v48 = nameCopy;
    lockReasons = [v22 lockReasons];
    summary2 = [v21 summary];
    v26 = [lockReasons safeObjectForKey:summary2 ofClass:objc_opt_class()];

    if (v26)
    {
      if (![(MADAutoAssetLocker *)self _endLockDecideUnlocked:?])
      {
        v41 = [NSString alloc];
        lockReasons2 = [v23 lockReasons];
        v33 = [v41 initWithFormat:@"ended lock when other locks for client-lock-reason remain | assetLock.lockReasons:%ld", objc_msgSend(lockReasons2, "count")];
        goto LABEL_14;
      }

      lockReasons3 = [v23 lockReasons];
      summary3 = [v21 summary];
      [lockReasons3 removeObjectForKey:summary3];

      lockReasons4 = [v23 lockReasons];
      v30 = [lockReasons4 count];

      if (v30)
      {
        v31 = [NSString alloc];
        lockReasons2 = [v23 lockReasons];
        v33 = [v31 initWithFormat:@"all locks have ended for specific client-lock-reason | assetLock.lockReasons:%ld", objc_msgSend(lockReasons2, "count")];
LABEL_14:
        v42 = v33;
        [(MADAutoAssetLocker *)self _persistAssetLock:@"endedLockByClient" operation:@"ENTRY_DECREASED" forAssetLock:v23 withDeltaLockCount:1 message:v33];

        if ([v23 inhibitedFromEmergencyRemoval])
        {
          v43 = 251;
        }

        else
        {
          v43 = 250;
        }

        lockCountsTotal = [(MADAutoAssetLocker *)self lockCountsTotal];
        v45 = [(MADAutoAssetLocker *)self _assetIDOfLock:v23];
        [MADAutoAssetHistory recordOperation:v43 toHistoryType:1 fromClient:clientCopy usageCount:lockCountsTotal forAssetID:v45 withSelector:selectorCopy];

        reasonCopy = 0;
        v30 = 0;
        goto LABEL_18;
      }

      [(MADAutoAssetLocker *)self _removeAssetLock:@"endedLockByClient" removingAssetLock:v23 lastClient:clientCopy forSelector:selectorCopy message:@"endedLock (all locks have ended)"];
      reasonCopy = 0;
    }

    else
    {
      v26 = 0;
      v39 = [NSString alloc];
      summary4 = [selectorCopy summary];
      reasonCopy = [v39 initWithFormat:@"cannot accept ended lock when no existing lock for client-lock-reason | client:%@, selector:%@, reason:%@", clientCopy, summary4, reasonCopy];

      v30 = [MAAutoAssetError buildError:6501 fromOperation:@"AUTO-LOCKER:endedLockByClient" underlyingError:0 withDescription:reasonCopy];
    }

LABEL_18:

    v20 = v47;
    nameCopy = v48;
    goto LABEL_19;
  }

  v37 = [NSString alloc];
  summary5 = [selectorCopy summary];
  reasonCopy = [v37 initWithFormat:@"cannot accept ended lock when no existing lock for auto-specific-asset | client:%@, selector:%@, reason:%@", clientCopy, summary5, reasonCopy];

  v30 = [MAAutoAssetError buildError:6501 fromOperation:@"AUTO-LOCKER:endedLockByClient" underlyingError:0 withDescription:reasonCopy];
LABEL_19:

LABEL_20:

  return v30;
}

- (BOOL)_isUntrackedSetAssetLock:(id)lock forTrackedSetDescriptors:(id)descriptors
{
  lockCopy = lock;
  descriptorsCopy = descriptors;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  v9 = [(MADAutoAssetLocker *)self _setClientDomainNameForAssetLock:lockCopy];
  if (v9)
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v10 = descriptorsCopy;
    v30 = [v10 countByEnumeratingWithState:&v38 objects:v47 count:16];
    if (v30)
    {
      v11 = *v39;
      v31 = v10;
      v32 = descriptorsCopy;
      v28 = *v39;
      v29 = v9;
      do
      {
        v12 = 0;
        do
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(v10);
          }

          v13 = *(*(&v38 + 1) + 8 * v12);
          context = objc_autoreleasePoolPush();
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          latestDowloadedAtomicInstanceEntries = [v13 latestDowloadedAtomicInstanceEntries];
          v15 = [latestDowloadedAtomicInstanceEntries countByEnumeratingWithState:&v34 objects:v46 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v35;
            while (2)
            {
              for (i = 0; i != v16; i = i + 1)
              {
                if (*v35 != v17)
                {
                  objc_enumerationMutation(latestDowloadedAtomicInstanceEntries);
                }

                fullAssetSelector = [*(*(&v34 + 1) + 8 * i) fullAssetSelector];
                fullAssetSelector2 = [lockCopy fullAssetSelector];
                v21 = [fullAssetSelector isEqual:fullAssetSelector2];

                if (v21)
                {

                  objc_autoreleasePoolPop(context);
                  v26 = 0;
                  v22 = v31;
                  descriptorsCopy = v32;
                  v9 = v29;
                  goto LABEL_21;
                }
              }

              v16 = [latestDowloadedAtomicInstanceEntries countByEnumeratingWithState:&v34 objects:v46 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          objc_autoreleasePoolPop(context);
          v12 = v12 + 1;
          v10 = v31;
          descriptorsCopy = v32;
          v11 = v28;
        }

        while (v12 != v30);
        v9 = v29;
        v30 = [v31 countByEnumeratingWithState:&v38 objects:v47 count:16];
      }

      while (v30);
    }

    v22 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v9;
      lockCountsTotal = [(MADAutoAssetLocker *)self lockCountsTotal];
      summary = [lockCopy summary];
      *buf = 134218242;
      v43 = lockCountsTotal;
      v44 = 2114;
      v45 = summary;
      v9 = v23;
      _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "{AUTO-LOCKER[totalLocks:%ld]:_isUntrackedSetAssetLock} | untracked set-asset-lock | assetLock:%{public}@", buf, 0x16u);
    }

    v26 = 1;
LABEL_21:
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (BOOL)_isSetAssetLock:(id)lock forClientDomainName:(id)name forAssetSetIdentifier:(id)identifier
{
  lockCopy = lock;
  nameCopy = name;
  identifierCopy = identifier;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  lockReasons = [lockCopy lockReasons];
  v34 = [lockReasons countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v34)
  {
    v12 = *v36;
    v33 = lockCopy;
    while (2)
    {
      for (i = 0; i != v34; i = i + 1)
      {
        if (*v36 != v12)
        {
          objc_enumerationMutation(lockReasons);
        }

        v14 = *(*(&v35 + 1) + 8 * i);
        lockReasons2 = [lockCopy lockReasons];
        v16 = [lockReasons2 safeObjectForKey:v14 ofClass:objc_opt_class()];

        clientLockReason = [v16 clientLockReason];
        lockReason = [clientLockReason lockReason];
        v19 = [lockReason containsString:nameCopy];

        if (v19)
        {
          clientLockReason2 = [v16 clientLockReason];
          lockReason2 = [clientLockReason2 lockReason];
          v22 = [lockReason2 rangeOfString:@"_"];

          if (v22 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v23 = lockReasons;
            clientLockReason3 = [v16 clientLockReason];
            lockReason3 = [clientLockReason3 lockReason];
            v26 = [lockReason3 substringWithRange:{0, v22}];

            if ([SUCore stringIsEqual:v26 to:nameCopy])
            {
              clientLockReason4 = [v16 clientLockReason];
              lockReason4 = [clientLockReason4 lockReason];
              v29 = [lockReason4 containsString:identifierCopy];

              if (v29)
              {

                v30 = 1;
                lockReasons = v23;
                lockCopy = v33;
                goto LABEL_15;
              }
            }

            lockReasons = v23;
            lockCopy = v33;
          }
        }
      }

      v34 = [lockReasons countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }
  }

  v30 = 0;
LABEL_15:

  return v30;
}

- (id)_setClientDomainNameForAssetLock:(id)lock
{
  lockCopy = lock;
  lockerQueue = [(MADAutoAssetLocker *)self lockerQueue];
  dispatch_assert_queue_V2(lockerQueue);

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [lockCopy lockReasons];
  v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v26 + 1) + 8 * i);
        lockReasons = [lockCopy lockReasons];
        v12 = [lockReasons safeObjectForKey:v10 ofClass:objc_opt_class()];

        clientLockReason = [v12 clientLockReason];
        lockReason = [clientLockReason lockReason];
        clientLockReason2 = [v12 clientLockReason];
        autoAssetClientName = [clientLockReason2 autoAssetClientName];
        v17 = [lockReason containsString:autoAssetClientName];

        if (v17)
        {
          clientLockReason3 = [v12 clientLockReason];
          lockReason2 = [clientLockReason3 lockReason];
          v20 = [lockReason2 rangeOfString:@"_"];

          if (v20 != 0x7FFFFFFFFFFFFFFFLL)
          {
            clientLockReason4 = [v12 clientLockReason];
            lockReason3 = [clientLockReason4 lockReason];
            v23 = [lockReason3 substringWithRange:{0, v20}];

            if (v23)
            {

              goto LABEL_13;
            }
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
LABEL_13:

  return v23;
}

+ (id)newSetClientNameForDomain:(id)domain withAutoAssetClientName:(id)name forSetAtomicInstance:(id)instance
{
  instanceCopy = instance;
  nameCopy = name;
  domainCopy = domain;
  instanceCopy = [[NSString alloc] initWithFormat:@"%@_%@_%@", domainCopy, nameCopy, instanceCopy];

  return instanceCopy;
}

- (id)_autoAssetLockPolicyFromSetPolicy:(id)policy
{
  policyCopy = policy;
  if (policyCopy)
  {
    v4 = objc_alloc_init(MAAutoAssetPolicy);
    if (v4)
    {
      v5 = v4;
      [v4 setUserInitiated:{objc_msgSend(policyCopy, "userInitiated")}];
      [v5 setLockInhibitsEmergencyRemoval:{objc_msgSend(policyCopy, "lockInhibitsEmergencyRemoval")}];
      goto LABEL_8;
    }

    v6 = _MADLog(@"AutoLocker");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      summary = [policyCopy summary];
      v9 = 138543362;
      v10 = summary;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "{AUTO-LOCKER:_autoAssetLockPolicyFromSetPolicy} | unable to allocate lockUsagePolicy | lockSetUsagePolicy:%{public}@", &v9, 0xCu);
    }
  }

  v5 = 0;
LABEL_8:

  return v5;
}

+ (void)setPersistedStateCaching:(BOOL)caching
{
  v4 = +[MADAutoAssetLocker autoAssetLocker];
  lockerQueue = [v4 lockerQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __47__MADAutoAssetLocker_setPersistedStateCaching___block_invoke;
  v7[3] = &unk_4B3488;
  v8 = v4;
  cachingCopy = caching;
  v6 = v4;
  dispatch_sync(lockerQueue, v7);
}

void __47__MADAutoAssetLocker_setPersistedStateCaching___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) persistedState];
  [v2 flushPersistedStateCacheAndSetCachingBehaviour:*(a1 + 40)];
}

@end