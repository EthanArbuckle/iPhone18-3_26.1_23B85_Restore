@interface UAUserActivity
+ (BOOL)checkWebpageURL:(id)a3 actionType:(unint64_t)a4 throwIfFailed:(BOOL)a5;
+ (BOOL)currentUserActivityProxiesWithOptions:(id)a3 matching:(id)a4 completionHandler:(id)a5;
+ (BOOL)currentUserActivityUUIDWithOptions:(id)a3 completionHandler:(id)a4;
+ (BOOL)determineIfUserActivityIsCurrent:(id)a3 completionHandler:(id)a4;
+ (BOOL)isIndexPendingForUUID:(id)a3;
+ (id)_decodeFromEntireString:(id)a3;
+ (id)_decodeFromScanner:(id)a3;
+ (id)_decodeFromString:(id)a3;
+ (id)_encodeKeyAndValueIntoString:(id)a3 value:(id)a4;
+ (id)_encodeToString:(id)a3;
+ (id)allowedWebpageURLSchemes;
+ (id)currentUserActivityUUID;
+ (id)fetchUserActivityWithUUID:(id)a3 intervalToWaitForDocumentSynchronizationToComplete:(double)a4 completionHandler:(id)a5;
+ (id)mainBundleIdentifier;
+ (id)registerForSuggestedActionNudgeOfType:(unint64_t)a3 withOptions:(id)a4 block:(id)a5;
+ (id)userActivityFromUUID:(id)a3 timeout:(double)a4 withError:(id *)a5;
+ (id)userActivityFromUUID:(id)a3 withError:(id *)a4;
+ (void)addDynamicUserActivity:(id)a3 matching:(id)a4;
+ (void)addUserActivityObserver:(id)a3;
+ (void)deleteAllSavedUserActivitiesWithCompletionHandler:(id)a3;
+ (void)deleteSavedUserActivitiesWithPersistentIdentifiers:(id)a3 completionHandler:(id)a4;
+ (void)fetchUserActivityWithUUID:(id)a3 completionHandler:(id)a4;
+ (void)removeDynamicUserActivity:(id)a3 matching:(id)a4;
+ (void)removeUserActivityObserver:(id)a3;
+ (void)unregisterForSuggestedActionNudgeOfType:(id)a3;
- (BOOL)archiveURL:(id)a3 completionHandler:(id)a4;
- (BOOL)createUserActivityDataWithSaving:(BOOL)a3 options:(id)a4 completionHandler:(id)a5;
- (BOOL)createUserActivityStringsWithSaving:(BOOL)a3 options:(id)a4 completionHandler:(id)a5;
- (BOOL)dirty;
- (BOOL)finishUserInfoUpdate;
- (BOOL)forwardToCoreSpotlightIndexer;
- (BOOL)isCurrent;
- (BOOL)isEligibleForPrediction;
- (BOOL)isEligibleForReminders;
- (BOOL)isEqual:(id)a3;
- (BOOL)isInvalidated;
- (BOOL)isPayloadDirty:(id)a3;
- (BOOL)isUniversalLink;
- (BOOL)needsSave;
- (BOOL)supportsContinuationStreams;
- (CSSearchableItemAttributeSet)contentAttributeSet;
- (NSData)streamsData;
- (NSDate)expirationDate;
- (NSDictionary)userInfo;
- (NSSet)keywords;
- (NSSet)requiredUserInfoKeys;
- (NSString)contentUserAction;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)persistentIdentifier;
- (NSString)subtitle;
- (NSString)targetContentIdentifier;
- (NSString)title;
- (NSURL)referrerURL;
- (NSURL)webpageURL;
- (NSUserActivity)parentUserActivity;
- (OS_dispatch_queue)willCallSaveSerializationQueue;
- (UAUserActivity)initWithManager:(id)a3 userActivityInfo:(id)a4;
- (UAUserActivity)initWithTypeIdentifier:(id)a3 suggestedActionType:(unint64_t)a4 options:(id)a5;
- (UAUserActivity)initWithUserActivityData:(id)a3 options:(id)a4;
- (UAUserActivity)initWithUserActivityStrings:(id)a3 optionalString:(id)a4 tertiaryData:(id)a5 options:(id)a6;
- (UAUserActivityDelegate)delegate;
- (UAUserActivityManager)manager;
- (double)madeCurrentInterval;
- (id)_encodeIntoUserActivityDataWithSave:(BOOL)a3 options:(id)a4 error:(id *)a5;
- (id)archiver:(id)a3 willEncodeObject:(id)a4;
- (id)callWillSaveDelegateIfDirtyAndPackageUpData:(BOOL)a3 options:(id)a4 clearDirty:(BOOL)a5;
- (id)callWillSaveDelegateIfDirtyAndPackageUpData:(BOOL)a3 options:(id)a4 clearDirty:(BOOL)a5 completionHandler:(id)a6;
- (id)contentAttributes;
- (id)contentType;
- (id)copyWithNewUUID:(BOOL)a3;
- (id)createUserActivityDataWithSaving:(BOOL)a3 options:(id)a4 error:(id *)a5;
- (id)createUserActivityStringsWithSaving:(BOOL)a3 options:(id)a4 optionalString:(id *)a5 data:(id *)a6 error:(id *)a7;
- (id)decodeUserInfo:(id)a3;
- (id)decodeUserInfo:(id)a3 options:(id)a4;
- (id)determineMatchingApplicationBundleIdentfierWithOptions:(id)a3;
- (id)encodeUserInfo:(id)a3;
- (id)encodeUserInfo:(id)a3 error:(id *)a4;
- (id)encodeUserInfo:(id)a3 options:(id)a4 error:(id *)a5;
- (id)initDynamicActivityWithTypeIdentifier:(id)a3 dynamicIdentifier:(id)a4 suggestedActionType:(unint64_t)a5 options:(id)a6;
- (id)objectForIdentifier:(id)a3;
- (id)payloadForIdentifier:(id)a3;
- (id)payloadIdentifiers;
- (id)payloadUpdateBlockForIdentifier:(id)a3;
- (id)stateString;
- (id)unarchiveURL:(id)a3 error:(id *)a4;
- (id)unarchiver:(id)a3 didDecodeObject:(id)a4;
- (id)userActivityInfoForSelfWithPayload:(BOOL)a3 options:(id)a4;
- (int64_t)priority;
- (unint64_t)beginUserInfoUpdate:(id)a3;
- (unint64_t)hash;
- (unint64_t)userInfoChangeCount;
- (void)addContentAttribute:(id)a3 forKey:(id)a4;
- (void)addKeywordsFromArray:(id)a3;
- (void)addUserInfoEntriesFromDictionary:(id)a3;
- (void)advertiser:(id)a3 didReceiveInputStream:(id)a4 outputStream:(id)a5;
- (void)becomeCurrent;
- (void)dealloc;
- (void)didReceiveInputStream:(id)a3 outputStream:(id)a4;
- (void)didSynchronizeUserActivity;
- (void)getContinuationStreamsWithCompletionHandler:(id)a3;
- (void)indexActivity:(double)a3 forceIndexing:(BOOL)a4;
- (void)invalidate;
- (void)prepareUserActivityForLaunchingWithOptions:(id)a3 completionHandler:(id)a4;
- (void)removeContentAttribute:(id)a3;
- (void)resignCurrent;
- (void)scheduleSendUserActivityInfoToLSUserActivityd;
- (void)sendToCoreSpotlightIndexer;
- (void)setContentAttributeSet:(id)a3;
- (void)setContentAttributes:(id)a3;
- (void)setContentType:(id)a3;
- (void)setContentUserAction:(id)a3;
- (void)setDirty:(BOOL)a3;
- (void)setDirty:(BOOL)a3 identifier:(id)a4;
- (void)setEligibleForHandoff:(BOOL)a3;
- (void)setEligibleForPrediction:(BOOL)a3;
- (void)setEligibleForPublicIndexing:(BOOL)a3;
- (void)setEligibleForReminders:(BOOL)a3;
- (void)setEligibleForSearch:(BOOL)a3;
- (void)setExpirationDate:(id)a3;
- (void)setKeywords:(id)a3;
- (void)setNeedsSave:(BOOL)a3;
- (void)setParentUserActivity:(id)a3;
- (void)setPayload:(id)a3 object:(id)a4 identifier:(id)a5 dirty:(BOOL)a6;
- (void)setPayloadIdentifier:(id)a3 object:(id)a4 withBlock:(id)a5;
- (void)setPersistentIdentifier:(id)a3;
- (void)setReferrerURL:(id)a3;
- (void)setRequiredUserInfoKeys:(id)a3;
- (void)setStreamsData:(id)a3;
- (void)setSubtitle:(id)a3;
- (void)setSupportsContinuationStreams:(BOOL)a3;
- (void)setTargetContentIdentifier:(id)a3;
- (void)setTitle:(id)a3;
- (void)setUniversalLink:(BOOL)a3;
- (void)setUserInfo:(id)a3;
- (void)setWebpageURL:(id)a3;
- (void)synchronouslyEncodeUserInfo:(id)a3 options:(id)a4 completionHandler:(id)a5;
- (void)tellDaemonAboutNewLSUserActivity;
- (void)updateForwardToCoreSpotlightIndexer:(char)a3;
- (void)willSynchronizeUserActivityWithHandler:(id)a3;
@end

@implementation UAUserActivity

- (unint64_t)hash
{
  v2 = [(UAUserActivity *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEligibleForPrediction
{
  v2 = self;
  objc_sync_enter(v2);
  eligibleForPrediction = v2->_eligibleForPrediction;
  objc_sync_exit(v2);

  return eligibleForPrediction;
}

- (BOOL)isInvalidated
{
  v2 = self;
  objc_sync_enter(v2);
  invalidated = v2->_invalidated;
  objc_sync_exit(v2);

  return invalidated;
}

- (NSDictionary)userInfo
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSDictionary *)v2->_userInfo copy];
  objc_sync_exit(v2);

  return v3;
}

- (UAUserActivityManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

- (BOOL)forwardToCoreSpotlightIndexer
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_forwardToCoreSpotlightIndexerCount > 0 || [(UAUserActivity *)v2 isEligibleForSearch])
  {
    v3 = 1;
  }

  else
  {
    v3 = [(UAUserActivity *)v2 isEligibleForPrediction];
  }

  objc_sync_exit(v2);

  return v3;
}

- (NSUserActivity)parentUserActivity
{
  v3 = getUAUserActivityToNSUserActivityMap();
  objc_sync_enter(v3);
  v4 = [v3 objectForKey:self];
  objc_sync_exit(v3);

  return v4;
}

- (NSString)title
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_title;
  objc_sync_exit(v2);

  return v3;
}

- (void)becomeCurrent
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(UAUserActivity *)self uniqueIdentifier];
    v5 = [v4 UUIDString];
    v6 = [(UAUserActivity *)self manager];
    v7 = [v6 userActivityIsActive:self];
    v8 = [(UAUserActivity *)self isInvalidated];
    v9 = &stru_283A5A2C8;
    v10 = @" (already current)";
    if (!v7)
    {
      v10 = &stru_283A5A2C8;
    }

    *buf = 138543874;
    v37 = v5;
    v38 = 2114;
    *v39 = v10;
    if (v8)
    {
      v9 = @"(invalidated)";
    }

    *&v39[8] = 2114;
    v40 = v9;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "-becomeCurrent, uuid=%{public}@%{public}@%{public}@", buf, 0x20u);
  }

  if (loadSynapseObserverWhenFirstUserActivityIsMadeCurrent(void)::sOnce != -1)
  {
    [UAUserActivity becomeCurrent];
  }

  if (![(UAUserActivity *)self isInvalidated])
  {
    v11 = [(UAUserActivity *)self manager];
    v30 = [v11 userActivityIsActive:self];

    v12 = biomeInfoLogging();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = [(UAUserActivity *)self uniqueIdentifier];
      needsSave = self->_needsSave;
      dirty = self->_dirty;
      activityHasBeenSentToServer = self->_activityHasBeenSentToServer;
      *buf = 138544386;
      v37 = v13;
      v38 = 1024;
      *v39 = v30;
      *&v39[4] = 1024;
      *&v39[6] = needsSave;
      LOWORD(v40) = 1024;
      *(&v40 + 2) = dirty;
      HIWORD(v40) = 1024;
      v41 = activityHasBeenSentToServer;
      _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_INFO, "%{public}@ BECOMECURRENT\twas=%{BOOL}d needsSave=%{BOOL}d dirty=%{BOOL}d sendToServer=%{BOOL}d", buf, 0x24u);
    }

    v17 = [MEMORY[0x277CBEAA8] now];
    if (v30)
    {
      madeCurrentDate = self->_madeCurrentDate;
      self->_madeCurrentDate = v17;
    }

    else
    {
      madeInitiallyCurrentDate = self->_madeInitiallyCurrentDate;
      self->_madeInitiallyCurrentDate = v17;

      objc_storeStrong(&self->_madeCurrentDate, self->_madeInitiallyCurrentDate);
      if (![(UAUserActivity *)self activityHasBeenSentToServer])
      {
        [(UAUserActivity *)self tellDaemonAboutNewLSUserActivity];
      }

      v20 = [(UAUserActivity *)self manager];
      [v20 makeActive:self];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      madeCurrentDate = getUserActivityObserversCopy();
      v21 = [madeCurrentDate countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v21)
      {
        v22 = *v32;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v32 != v22)
            {
              objc_enumerationMutation(madeCurrentDate);
            }

            v24 = *(*(&v31 + 1) + 8 * i);
            v25 = [(UAUserActivity *)self parentUserActivity];
            if (v25)
            {
              v26 = objc_opt_respondsToSelector();

              if (v26)
              {
                v27 = [(UAUserActivity *)self parentUserActivity];
                [v24 userActivityDidBecomeCurrent:v27 current:1];
              }
            }
          }

          v21 = [madeCurrentDate countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v21);
      }
    }

    if ([(UAUserActivity *)self isEligibleForSearch]|| [(UAUserActivity *)self forwardToCoreSpotlightIndexer])
    {
      v28 = 0.1;
      if (v30)
      {
        v28 = 1.0;
      }

      [(UAUserActivity *)self indexActivity:1 forceIndexing:v28];
    }

    if (v30)
    {
      [(UAUserActivity *)self scheduleSendUserActivityInfoToLSUserActivityd];
    }

    else
    {
      [(UAUserActivity *)self sendUserActivityInfoToLSUserActivityd:1 onAsyncQueue:1];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)tellDaemonAboutNewLSUserActivity
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(UAUserActivity *)self uniqueIdentifier];
    v5 = [v4 UUIDString];
    v15 = 138543362;
    v16 = v5;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "Sending activity %{public}@ information to server", &v15, 0xCu);
  }

  if (self->_createsNewUUIDIfSaved)
  {
    v6 = [(UAUserActivity *)self manager];
    [v6 removeUserActivity:self];

    v7 = [MEMORY[0x277CCAD78] UUID];
    v8 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = [(NSUUID *)self->_uniqueIdentifier UUIDString];
      v10 = [(NSUUID *)v7 UUIDString];
      v15 = 138543618;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_INFO, "-- Allocating a new UUID for this activity, old=%{public}@ new=%{public}@", &v15, 0x16u);
    }

    uniqueIdentifier = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v7;
  }

  v12 = self;
  objc_sync_enter(v12);
  v12->_activityHasBeenSentToServer = 1;
  objc_sync_exit(v12);

  v13 = [(UAUserActivity *)v12 manager];
  [v13 tellDaemonAboutNewLSUserActivity:v12];

  v14 = *MEMORY[0x277D85DE8];
}

- (NSURL)webpageURL
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_webpageURL;
  objc_sync_exit(v2);

  return v3;
}

- (NSString)targetContentIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_targetContentIdentifier;
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)needsSave
{
  v2 = self;
  objc_sync_enter(v2);
  needsSave = v2->_needsSave;
  objc_sync_exit(v2);

  return needsSave;
}

- (void)resignCurrent
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(UAUserActivity *)self uniqueIdentifier];
    v5 = [v4 UUIDString];
    v6 = [(UAUserActivity *)self manager];
    v7 = [v6 userActivityIsActive:self];
    v8 = [(UAUserActivity *)self isInvalidated];
    v9 = &stru_283A5A2C8;
    v10 = @" (was current)";
    if (!v7)
    {
      v10 = &stru_283A5A2C8;
    }

    *buf = 138543874;
    v38 = v5;
    v39 = 2114;
    *v40 = v10;
    if (v8)
    {
      v9 = @"(invalidated)";
    }

    *&v40[8] = 2114;
    v41 = v9;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "uuid=%{public}@%{public}@%{public}@", buf, 0x20u);
  }

  v11 = self;
  objc_sync_enter(v11);
  v12 = [(UAUserActivity *)v11 manager];
  v13 = [v12 userActivityIsActive:v11];

  v14 = biomeInfoLogging();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [(UAUserActivity *)v11 uniqueIdentifier];
    needsSave = v11->_needsSave;
    dirty = v11->_dirty;
    activityHasBeenSentToServer = v11->_activityHasBeenSentToServer;
    *buf = 138544386;
    v38 = v15;
    v39 = 1024;
    *v40 = v13;
    *&v40[4] = 1024;
    *&v40[6] = needsSave;
    LOWORD(v41) = 1024;
    *(&v41 + 2) = dirty;
    HIWORD(v41) = 1024;
    v42 = activityHasBeenSentToServer;
    _os_log_impl(&dword_226A4E000, v14, OS_LOG_TYPE_INFO, "%{public}@ RESIGNCURRENT\twas=%{BOOL}d needsSave=%{BOOL}d dirty=%{BOOL}d sendToServer=%{BOOL}d", buf, 0x24u);
  }

  if (v13)
  {
    v19 = objc_opt_new();
    madeCurrentEndDate = v11->_madeCurrentEndDate;
    v11->_madeCurrentEndDate = v19;

    [(NSDate *)v11->_madeCurrentEndDate timeIntervalSinceDate:v11->_madeInitiallyCurrentDate];
    v11->_madeCurrentInterval = v21 + v11->_madeCurrentInterval;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v22 = getUserActivityObserversCopy();
    v23 = [v22 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v23)
    {
      v24 = *v33;
      do
      {
        v25 = 0;
        do
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v32 + 1) + 8 * v25);
          v27 = [(UAUserActivity *)v11 parentUserActivity];
          if (v27)
          {
            v28 = objc_opt_respondsToSelector();

            if (v28)
            {
              v29 = [(UAUserActivity *)v11 parentUserActivity];
              [v26 userActivityDidBecomeCurrent:v29 current:0];
            }
          }

          ++v25;
        }

        while (v23 != v25);
        v23 = [v22 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v23);
    }
  }

  v30 = [(UAUserActivity *)v11 manager];
  [v30 makeInactive:v11];

  objc_sync_exit(v11);
  v31 = *MEMORY[0x277D85DE8];
}

- (id)payloadIdentifiers
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x277CBEB98];
  v4 = [(UAUserActivity *)v2 payloadUpdateBlocks];
  v5 = [v4 allKeys];
  v6 = [v3 setWithArray:v5];

  v7 = [(UAUserActivity *)v2 payloadDataCache];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(UAUserActivity *)v2 payloadDataCache];
    v10 = [v9 allKeys];
    v11 = [v6 setByAddingObjectsFromArray:v10];

    v6 = v11;
  }

  objc_sync_exit(v2);

  return v6;
}

- (BOOL)dirty
{
  v2 = self;
  objc_sync_enter(v2);
  dirty = v2->_dirty;
  objc_sync_exit(v2);

  return dirty;
}

- (OS_dispatch_queue)willCallSaveSerializationQueue
{
  v2 = self;
  objc_sync_enter(v2);
  willCallSaveSerializationQueue = v2->_willCallSaveSerializationQueue;
  if (!willCallSaveSerializationQueue)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(UAUserActivity *)v2 uniqueIdentifier];
    v6 = [v5 UUIDString];
    v7 = [v4 stringWithFormat:@"willSaveCallback/%@", v6];
    v8 = dispatch_queue_create([v7 cStringUsingEncoding:4], 0);
    v9 = v2->_willCallSaveSerializationQueue;
    v2->_willCallSaveSerializationQueue = v8;

    willCallSaveSerializationQueue = v2->_willCallSaveSerializationQueue;
  }

  v10 = willCallSaveSerializationQueue;
  objc_sync_exit(v2);

  return v10;
}

- (UAUserActivityDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (NSSet)requiredUserInfoKeys
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSSet *)v2->_requiredUserInfoKeys copy];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isUniversalLink
{
  v2 = self;
  objc_sync_enter(v2);
  universalLink = v2->_universalLink;
  objc_sync_exit(v2);

  return universalLink;
}

- (NSSet)keywords
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSSet *)v2->_keywords copy];
  objc_sync_exit(v2);

  return v3;
}

- (NSString)contentUserAction
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_contentUserAction;
  objc_sync_exit(v2);

  return v3;
}

- (NSDate)expirationDate
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_expirationDate;
  objc_sync_exit(v2);

  return v3;
}

- (NSString)persistentIdentifier
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSString *)v2->_persistentIdentifier copy];
  objc_sync_exit(v2);

  return v3;
}

- (BOOL)isEligibleForReminders
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_eligibleForReminders || v2->_eligibleForSearch;
  objc_sync_exit(v2);

  return v3 & 1;
}

- (void)invalidate
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(UAUserActivity *)self uniqueIdentifier];
    v5 = [v4 UUIDString];
    v6 = [(UAUserActivity *)self description];
    v7 = [(UAUserActivity *)self isInvalidated];
    v8 = &stru_283A5A2C8;
    *buf = 138543875;
    v34 = v5;
    if (v7)
    {
      v8 = @" (was already invalidated)";
    }

    v35 = 2113;
    *v36 = v6;
    *&v36[8] = 2114;
    v37 = v8;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "Invalidate activity %{public}@ (%{private}@)%{public}@", buf, 0x20u);
  }

  if (![(UAUserActivity *)self isInvalidated])
  {
    v9 = biomeInfoLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(UAUserActivity *)self uniqueIdentifier];
      v11 = [(UAUserActivity *)self manager];
      v12 = [v11 userActivityIsActive:self];
      needsSave = self->_needsSave;
      dirty = self->_dirty;
      activityHasBeenSentToServer = self->_activityHasBeenSentToServer;
      *buf = 138544386;
      v34 = v10;
      v35 = 1024;
      *v36 = v12;
      *&v36[4] = 1024;
      *&v36[6] = needsSave;
      LOWORD(v37) = 1024;
      *(&v37 + 2) = dirty;
      HIWORD(v37) = 1024;
      v38 = activityHasBeenSentToServer;
      _os_log_impl(&dword_226A4E000, v9, OS_LOG_TYPE_INFO, "%{public}@ INVALIDATE\twasCurrent=%{BOOL}d needsSave=%{BOOL}d dirty=%{BOOL}d sendToServer=%{BOOL}d", buf, 0x24u);
    }

    v16 = self;
    objc_sync_enter(v16);
    v16->_invalidated = 1;
    objc_sync_exit(v16);

    [(UAUserActivity *)v16 setDelegate:0];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v17 = getUserActivityObserversCopy();
    v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v18)
    {
      v19 = *v29;
      do
      {
        v20 = 0;
        do
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v28 + 1) + 8 * v20);
          v22 = [(UAUserActivity *)v16 parentUserActivity];
          if (v22)
          {
            v23 = objc_opt_respondsToSelector();

            if (v23)
            {
              v24 = [(UAUserActivity *)v16 parentUserActivity];
              [v21 userActivityWasInvalidated:v24];
            }
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [v17 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v18);
    }

    v25 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__UAUserActivity_invalidate__block_invoke;
    block[3] = &unk_2785C37B0;
    block[4] = v16;
    dispatch_async(v25, block);
  }

  v26 = *MEMORY[0x277D85DE8];
}

void __28__UAUserActivity_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[6])
  {
    [v2[6] stop];
    v2 = *(a1 + 32);
  }

  v3 = [v2 manager];
  [v3 removeUserActivity:*(a1 + 32)];
}

- (void)dealloc
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = biomeInfoLogging();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(UAUserActivity *)self uniqueIdentifier];
    *buf = 138543618;
    v25 = v4;
    v26 = 2050;
    v27 = [(UAUserActivity *)self userInfoChangeCount];
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_INFO, "%{public}@ RELEASED changeCount=%{public}ld", buf, 0x16u);
  }

  v5 = [(UAUserActivity *)self manager];
  [v5 removeUserActivity:self];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = getUserActivityObserversCopy();
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        v11 = [(UAUserActivity *)self parentUserActivity];
        if (v11)
        {
          v12 = objc_opt_respondsToSelector();

          if (v12)
          {
            v13 = [(UAUserActivity *)self parentUserActivity];
            [v10 userActivityWillBeDestroyed:v13];
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  setIndexPendingForUUID(0, self->_uniqueIdentifier);
  v14 = self;
  objc_sync_enter(v14);
  v15 = uaUserActivityObjectsMap();
  objc_sync_enter(v15);
  v16 = uaUserActivityObjectsMap();
  [v16 removeObjectForKey:self->_uniqueIdentifier];

  objc_sync_exit(v15);
  objc_sync_exit(v14);

  if (v14->_os_state_handler)
  {
    os_state_remove_handler();
    v14->_os_state_handler = 0;
  }

  objc_storeWeak(&v14->_manager, 0);
  v14->_delegate = 0;
  v18.receiver = v14;
  v18.super_class = UAUserActivity;
  [(UAUserActivity *)&v18 dealloc];
  v17 = *MEMORY[0x277D85DE8];
}

- (unint64_t)userInfoChangeCount
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(UAUserActivity *)v2 uniqueIdentifier];
    v5 = [v4 UUIDString];
    userInfoChangeCount = v2->_userInfoChangeCount;
    v10 = 138543875;
    v11 = v5;
    v12 = 2113;
    v13 = v2;
    v14 = 1024;
    v15 = userInfoChangeCount;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "UAUserActivity:%{public}@/%{private}@, userInfoChangeCount = %d", &v10, 0x1Cu);
  }

  v7 = v2->_userInfoChangeCount;
  objc_sync_exit(v2);

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

- (BOOL)finishUserInfoUpdate
{
  v2 = self;
  objc_sync_enter(v2);
  savedUserInfo = v2->_savedUserInfo;
  if (savedUserInfo)
  {
    objc_storeStrong(&v2->_userInfo, v2->_savedUserInfo);
    v4 = v2->_savedUserInfo;
    v2->_savedUserInfo = 0;
  }

  objc_sync_exit(v2);

  return savedUserInfo == 0;
}

- (CSSearchableItemAttributeSet)contentAttributeSet
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(UAUserActivity *)v2 objectForIdentifier:@"UAUserActivityContentAttributeSetPayloadKey"];
  if (!v3)
  {
    v4 = [(UAUserActivity *)v2 payloadForIdentifier:@"UAUserActivityContentAttributeSetPayloadKey"];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v4 error:0];
      getCSSearchableItemAttributeSetClass();
      v3 = [v5 decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CCA308]];

      if (v3)
      {
        [(UAUserActivity *)v2 setContentAttributeSet:v3];
      }
    }

    else
    {
      v3 = 0;
    }
  }

  objc_sync_exit(v2);

  v6 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)currentUserActivityUUID
{
  v2 = +[UAUserActivityManager defaultManager];
  v3 = [v2 activeUserActivityUUID];

  return v3;
}

- (void)sendToCoreSpotlightIndexer
{
  v22 = *MEMORY[0x277D85DE8];
  getCSSearchableIndexClass();
  if (objc_opt_respondsToSelector())
  {
    v3 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = [(UAUserActivity *)self uniqueIdentifier];
      v5 = [v4 UUIDString];
      v6 = [(UAUserActivity *)self typeIdentifier];
      v7 = [(UAUserActivity *)self payloadForIdentifier:@"UAUserActivityContentAttributeSetPayloadKey"];
      if (v7)
      {
        v8 = [(UAUserActivity *)self payloadForIdentifier:@"UAUserActivityContentAttributeSetPayloadKey"];
        trimmedHexStringForData(v8, 0x40uLL);
      }

      else
      {
        v8 = [(UAUserActivity *)self contentAttributeSet];
        stringForContentSet(v8);
      }
      v9 = ;
      v16 = 138543875;
      v17 = v5;
      v18 = 2113;
      v19 = v6;
      v20 = 2113;
      v21 = v9;
      _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_INFO, "INDEXING:%{public}@/%{private}@, attrs=%{private}@", &v16, 0x20u);
    }

    v10 = biomeInfoLogging();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = [(UAUserActivity *)self uniqueIdentifier];
      v16 = 138543362;
      v17 = v11;
      _os_log_impl(&dword_226A4E000, v10, OS_LOG_TYPE_INFO, "%{public}@ SENDTOCORESPOTLIGHT", &v16, 0xCu);
    }

    v12 = [getCSSearchableIndexClass() defaultSearchableIndex];
    if (objc_opt_respondsToSelector())
    {
      v13 = [objc_alloc(getNSUserActivityClass()) initWithInternalUserActivity:self];
      [v12 indexUserActivity:v13];
      v14 = [(UAUserActivity *)self manager];
      [v14 registerForApplicationDeactivateIfNecessary];
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)scheduleSendUserActivityInfoToLSUserActivityd
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(UAUserActivity *)v2 dirty])
  {
    Current = CFAbsoluteTimeGetCurrent();
    lastSaveTime = v2->_lastSaveTime;
    if (Current >= lastSaveTime && Current - lastSaveTime <= 30.0)
    {
      if (!v2->_saveScheduled)
      {
        v2->_saveScheduled = 1;
        v6 = dispatch_time(0, 30000000000);
        v7 = dispatch_get_global_queue(0, 0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __73__UAUserActivity_Internal__scheduleSendUserActivityInfoToLSUserActivityd__block_invoke;
        block[3] = &unk_2785C37B0;
        block[4] = v2;
        dispatch_after(v6, v7, block);
      }
    }

    else
    {
      [(UAUserActivity *)v2 sendUserActivityInfoToLSUserActivityd:0 onAsyncQueue:1];
      v2->_saveScheduled = 0;
    }
  }

  objc_sync_exit(v2);
}

- (double)madeCurrentInterval
{
  v2 = self;
  objc_sync_enter(v2);
  madeCurrentInterval = v2->_madeCurrentInterval;
  objc_sync_exit(v2);

  return madeCurrentInterval;
}

- (id)stateString
{
  v3 = MEMORY[0x277CCAB68];
  v4 = [(UAUserActivity *)self uniqueIdentifier];
  v5 = [v4 UUIDString];
  v6 = [(UAUserActivity *)self userInfo];
  v7 = [v6 count];
  v8 = [(UAUserActivity *)self delegate];
  v9 = [(UAUserActivity *)self dirty];
  v10 = "(delegate) ";
  v11 = "";
  if (!v8)
  {
    v10 = "";
  }

  if (v9)
  {
    v11 = "dirty ";
  }

  v12 = [v3 stringWithFormat:@"[%@ userInfo.count=%ld %s%s", v5, v7, v10, v11];

  v13 = [v12 copy];

  return v13;
}

- (NSString)description
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSDictionary *)v2->_userInfo count];
  objc_sync_exit(v2);

  v4 = MEMORY[0x277CCACA8];
  v17.receiver = v2;
  v17.super_class = UAUserActivity;
  v16 = [(UAUserActivity *)&v17 description];
  v5 = [(UAUserActivity *)v2 typeIdentifier];
  v6 = trimmedString(v5, 0x80u);
  v7 = [(UAUserActivity *)v2 uniqueIdentifier];
  v8 = [v7 UUIDString];
  v15 = [(UAUserActivity *)v2 cachedEncodedUserInfo];
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld items", v3];
  v10 = [(UAUserActivity *)v2 supportsContinuationStreams];
  if (v10)
  {
    v11 = MEMORY[0x277CCACA8];
    v2 = [(UAUserActivity *)v2 payloadForIdentifier:@"UAUserActivityStreamsPayload"];
    v3 = trimmedHexStringForData(v2, 0x10uLL);
    v12 = [v11 stringWithFormat:@" streamData=%@", v3];
  }

  else
  {
    v12 = &stru_283A5A2C8;
  }

  v13 = [v4 stringWithFormat:@"%@ { type = %@, UUID = %@, userInfo = %@%@ }", v16, v6, v8, v9, v12];
  if (v10)
  {
  }

  return v13;
}

- (BOOL)supportsContinuationStreams
{
  v2 = self;
  objc_sync_enter(v2);
  supportsContinuationStreams = v2->_supportsContinuationStreams;
  objc_sync_exit(v2);

  return supportsContinuationStreams;
}

+ (id)allowedWebpageURLSchemes
{
  if (+[UAUserActivity(Internal) allowedWebpageURLSchemes]::once != -1)
  {
    +[UAUserActivity(Internal) allowedWebpageURLSchemes];
  }

  v3 = +[UAUserActivity(Internal) allowedWebpageURLSchemes]::result;

  return v3;
}

void __52__UAUserActivity_Internal__allowedWebpageURLSchemes__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"http", @"https", 0}];
  v1 = +[UAUserActivity(Internal) allowedWebpageURLSchemes]::result;
  +[UAUserActivity(Internal) allowedWebpageURLSchemes]::result = v0;
}

+ (id)userActivityFromUUID:(id)a3 timeout:(double)a4 withError:(id *)a5
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v7 = a3;
  v8 = dispatch_semaphore_create(0);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __57__UAUserActivity_userActivityFromUUID_timeout_withError___block_invoke;
  v17[3] = &unk_2785C3710;
  v19 = &v27;
  v20 = &v21;
  v9 = v8;
  v18 = v9;
  [UAUserActivity fetchUserActivityWithUUID:v7 completionHandler:v17];

  if (a4 >= 1.84467441e19)
  {
    v10 = -1;
  }

  else
  {
    v10 = dispatch_time(0, (a4 * 1000000000.0));
  }

  v11 = dispatch_semaphore_wait(v9, v10);

  if (v11 && !v22[5])
  {
    v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"UAContinuityErrorDomain" code:-109 userInfo:0];
    v13 = v22[5];
    v22[5] = v12;
  }

  v14 = v28[5];
  if (a5 && !v14)
  {
    *a5 = v22[5];
    v14 = v28[5];
  }

  v15 = v14;

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v15;
}

void __57__UAUserActivity_userActivityFromUUID_timeout_withError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 48;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (id)userActivityFromUUID:(id)a3 withError:(id *)a4
{
  v4 = [a1 userActivityFromUUID:a3 timeout:a4 withError:9.5];

  return v4;
}

+ (void)fetchUserActivityWithUUID:(id)a3 completionHandler:(id)a4
{
  v8 = a3;
  v5 = a4;
  v6 = +[UAUserActivityManager defaultManager];
  v7 = [v6 fetchUUID:v8 intervalToWaitForDocumentSynchonization:v5 withCompletionHandler:3.40282347e38];
}

+ (id)fetchUserActivityWithUUID:(id)a3 intervalToWaitForDocumentSynchronizationToComplete:(double)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = +[UAUserActivityManager defaultManager];
  v10 = [v9 fetchUUID:v7 intervalToWaitForDocumentSynchonization:v8 withCompletionHandler:a4];

  return v10;
}

- (UAUserActivity)initWithTypeIdentifier:(id)a3 suggestedActionType:(unint64_t)a4 options:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = trimmedString(v8, 0x80u);
    v12 = suggestedActionTypeString(a4);
    v13 = userActivityInfoOptionsDictionaryString(v9);
    v18 = 138478339;
    v19 = v11;
    v20 = 2114;
    v21 = v12;
    v22 = 2114;
    v23 = v13;
    _os_log_impl(&dword_226A4E000, v10, OS_LOG_TYPE_DEBUG, "CREATING UAUserActivity/initWithTypeIdentifier:%{private}@ type:%{public}@ options=%{public}@)", &v18, 0x20u);
  }

  if (!v8 || ![v8 length])
  {
    v14 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_226A4E000, v14, OS_LOG_TYPE_ERROR, "*** UserActivity: passed nil or the empty string for activityType, which is an error.", &v18, 2u);
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Caller did not provide an activityType, and this process does not have a NSUserActivityTypes in its Info.plist."}];
  }

  v15 = [(UAUserActivity *)self initDynamicActivityWithTypeIdentifier:v8 dynamicIdentifier:0 suggestedActionType:a4 options:v9];

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)initDynamicActivityWithTypeIdentifier:(id)a3 dynamicIdentifier:(id)a4 suggestedActionType:(unint64_t)a5 options:(id)a6
{
  v66 = *MEMORY[0x277D85DE8];
  v53 = a3;
  v52 = a4;
  v51 = a6;
  v10 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = trimmedString(v53, 0x80u);
    if (v52)
    {
      v12 = trimmedString(v52, 0x10u);
    }

    else
    {
      v12 = &stru_283A5A2C8;
    }

    v13 = suggestedActionTypeString(a5);
    v14 = userActivityInfoOptionsDictionaryString(v51);
    *buf = 138544131;
    v59 = v11;
    v60 = 2113;
    v61 = v12;
    v62 = 2114;
    v63 = v13;
    v64 = 2114;
    v65 = v14;
    _os_log_impl(&dword_226A4E000, v10, OS_LOG_TYPE_DEBUG, "CREATING UAUserActivity/(%{public}@-%{private}@ %{public}@ options=%{public}@)", buf, 0x2Au);
    if (v52)
    {
    }
  }

  if (!v53 || ![v53 length])
  {
    v15 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_226A4E000, v15, OS_LOG_TYPE_ERROR, "*** UserActivity: passed nil or the empty string for activityType, which is an error.", buf, 2u);
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"Caller did not provide an activityType, and this process does not have a NSUserActivityTypes in its Info.plist."}];
  }

  v57.receiver = self;
  v57.super_class = UAUserActivity;
  v16 = [(UAUserActivity *)&v57 init];
  if (v16)
  {
    obj = [MEMORY[0x277CCAD78] UUID];
    v17 = +[UAUserActivityManager defaultManager];
    objc_initWeak(&location, v17);

    v18 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v16->_manager, v18);

    objc_initWeak(&from, v16);
    v19 = dispatch_get_global_queue(0, 0);
    objc_copyWeak(&v54, &from);
    v20 = obj;
    v21 = os_state_add_handler();

    v16->_os_state_handler = v21;
    v22 = uaUserActivityObjectsMap();
    objc_sync_enter(v22);
    v23 = uaUserActivityObjectsMap();
    v24 = objc_loadWeakRetained(&from);
    [v23 setObject:v24 forKey:v20];

    objc_sync_exit(v22);
    v25 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    userInfo = v16->_userInfo;
    v16->_userInfo = v25;

    objc_storeStrong(&v16->_uniqueIdentifier, obj);
    v16->_suggestedActionType = a5;
    v27 = [v53 copy];
    typeIdentifier = v16->_typeIdentifier;
    v16->_typeIdentifier = v27;

    v29 = v52;
    if (v52)
    {
      v29 = [v52 copy];
    }

    dynamicIdentifier = v16->_dynamicIdentifier;
    v16->_dynamicIdentifier = v29;

    *&v16->_needsSave = 1;
    v16->_sendToServerPending = 0;
    if (v51)
    {
      [MEMORY[0x277CBEB38] dictionaryWithDictionary:?];
    }

    else
    {
      [MEMORY[0x277CBEB38] dictionary];
    }
    v49 = ;
    v31 = [v49 copy];
    options = v16->_options;
    v16->_options = v31;

    advertiser = v16->_advertiser;
    v16->_advertiser = 0;

    v16->_canCreateStreams = 0;
    resumerAdvertiser = v16->_resumerAdvertiser;
    v16->_resumerAdvertiser = 0;

    v16->_supportsContinuationStreams = 0;
    *&v16->_needsSave = 1;
    v16->_sendToServerPending = 0;
    v16->_eligibleForHandoff = 1;
    v35 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = [(UAUserActivity *)v16 typeIdentifier];
      v37 = trimmedString(v36, 0x80u);
      v38 = [(UAUserActivity *)v16 dynamicIdentifier];
      v39 = trimmedString(v38, 0x80u);
      v40 = [(UAUserActivity *)v16 uniqueIdentifier];
      v41 = [v40 UUIDString];
      v42 = suggestedActionTypeString([(UAUserActivity *)v16 suggestedActionType]);
      *buf = 138478595;
      v59 = v37;
      v60 = 2113;
      v61 = v39;
      v62 = 2114;
      v63 = v41;
      v64 = 2114;
      v65 = v42;
      _os_log_impl(&dword_226A4E000, v35, OS_LOG_TYPE_INFO, "initUAUserActivity:%{private}@-%{private}@ %{public}@ %{public}@", buf, 0x2Au);
    }

    v43 = biomeInfoLogging();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
    {
      v44 = [(UAUserActivity *)v16 uniqueIdentifier];
      v45 = [(UAUserActivity *)v16 typeIdentifier];
      v46 = [(UAUserActivity *)v16 dynamicIdentifier];
      *buf = 138543874;
      v59 = v44;
      v60 = 2112;
      v61 = v45;
      v62 = 2112;
      v63 = v46;
      _os_log_impl(&dword_226A4E000, v43, OS_LOG_TYPE_INFO, "%{public}@ CREATED %@/%@", buf, 0x20u);
    }

    objc_destroyWeak(&v54);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  v47 = *MEMORY[0x277D85DE8];
  return v16;
}

char *__102__UAUserActivity_initDynamicActivityWithTypeIdentifier_dynamicIdentifier_suggestedActionType_options___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  objc_sync_enter(WeakRetained);
  v4 = uaUserActivityObjectsMap();
  objc_sync_enter(v4);
  v5 = uaUserActivityObjectsMap();
  v6 = [v5 objectForKey:*(a1 + 32)];
  v7 = objc_loadWeakRetained((a1 + 40));

  if (v6 == v7)
  {
    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 stateString];
    v8 = serializedCFType(v10);
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(v4);

  objc_sync_exit(WeakRetained);
  objc_autoreleasePoolPop(v2);
  return v8;
}

- (void)setTitle:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(UAUserActivity *)self uniqueIdentifier];
    v7 = [v6 UUIDString];
    v16 = 138543362;
    v17 = v7;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "setTitle(%{public}@)", &v16, 0xCu);
  }

  v8 = self;
  objc_sync_enter(v8);
  if (differ(v4, v8->_title))
  {
    v9 = biomeInfoLogging();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = [(UAUserActivity *)v8 uniqueIdentifier];
      v16 = 138543362;
      v17 = v10;
      _os_log_impl(&dword_226A4E000, v9, OS_LOG_TYPE_INFO, "%{public}@ SET-TITLE", &v16, 0xCu);
    }

    v11 = copyNSStringOrSubclass(&v4->isa);
    title = v8->_title;
    v8->_title = v11;

    [(UAUserActivity *)v8 setDirty:1];
    v13 = [(UAUserActivity *)v8 manager];
    v14 = [v13 userActivityIsActive:v8];

    if (v14)
    {
      [(UAUserActivity *)v8 indexActivity:1 forceIndexing:0.5];
    }
  }

  objc_sync_exit(v8);

  v15 = *MEMORY[0x277D85DE8];
}

- (void)setUserInfo:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (differ(v5->_userInfo, v4))
  {
    ++v5->_userInfoChangeCount;
    savedUserInfo = v5->_savedUserInfo;
    v5->_savedUserInfo = 0;

    v7 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [(UAUserActivity *)v5 uniqueIdentifier];
      v9 = [v8 UUIDString];
      userInfoChangeCount = v5->_userInfoChangeCount;
      *buf = 138543875;
      *&buf[4] = v9;
      *&buf[12] = 2113;
      *&buf[14] = v5;
      *&buf[22] = 1024;
      LODWORD(v26) = userInfoChangeCount;
      _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_DEBUG, "UAUserActivity:%{public}@/%{private}@, updating userInfoChangeCount to %d", buf, 0x1Cu);
    }

    if (v4)
    {
      if ((recurse(v4, &__block_literal_global) & 1) == 0 && dyld_program_sdk_at_least())
      {
        v20 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"userInfo contained an invalid object type" userInfo:0];
        objc_exception_throw(v20);
      }

      v11 = [(objc_object *)v4 copy];
      userInfo = v5->_userInfo;
      v5->_userInfo = v11;

      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL25dictionaryContainsFileURLP12NSDictionary_block_invoke;
      v26 = &unk_2785C3BB0;
      v27 = &v21;
      recurse(v4, buf);
      v13 = *(v22 + 24);
      _Block_object_dispose(&v21, 8);
      if ([(UAUserActivity *)v5 userInfoContainsFileURLs]!= v13)
      {
        [(UAUserActivity *)v5 setUserInfoContainsFileURLs:v13];
        if (!v5->_inWillSaveCallback)
        {
          [(UAUserActivity *)v5 sendUserActivityInfoToLSUserActivityd:1 onAsyncQueue:1];
        }
      }

      v14 = biomeInfoLogging();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = [(UAUserActivity *)v5 uniqueIdentifier];
        v16 = [(objc_object *)v4 count];
        *buf = 138543874;
        *&buf[4] = v15;
        *&buf[12] = 2050;
        *&buf[14] = v16;
        *&buf[22] = 1024;
        LODWORD(v26) = v13;
        _os_log_impl(&dword_226A4E000, v14, OS_LOG_TYPE_INFO, "%{public}@ SET-USERINFO\tcount=%{public}ld %{BOOL}d", buf, 0x1Cu);
      }

      [(UAUserActivity *)v5 setDirty:1];
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEAC0]);
      v18 = v5->_userInfo;
      v5->_userInfo = v17;
    }
  }

  objc_sync_exit(v5);

  v19 = *MEMORY[0x277D85DE8];
}

- (void)addUserInfoEntriesFromDictionary:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (v8 && [v8 count])
  {
    if ((recurse(v8, &__block_literal_global) & 1) != 0 || (dyld_program_sdk_at_least() & 1) == 0)
    {
      userInfo = v4->_userInfo;
      if (userInfo)
      {
        v7 = [(NSDictionary *)userInfo mutableCopy];
        [v7 addEntriesFromDictionary:v8];
      }

      else
      {
        v7 = [v8 copy];
      }

      [(UAUserActivity *)v4 setUserInfo:v7];
    }

    else if (dyld_program_sdk_at_least())
    {
      v5 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"userInfo contained an invalid object type" userInfo:0];
      objc_exception_throw(v5);
    }
  }

  objc_sync_exit(v4);
}

- (unint64_t)beginUserInfoUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (!v5->_savedUserInfo)
  {
    objc_storeStrong(&v5->_savedUserInfo, v5->_userInfo);
    if (v4)
    {
      v6 = [v4 copy];
    }

    else
    {
      v6 = 0;
    }

    userInfo = v5->_userInfo;
    v5->_userInfo = v6;
  }

  userInfoChangeCount = v5->_userInfoChangeCount;
  objc_sync_exit(v5);

  return userInfoChangeCount;
}

- (void)setWebpageURL:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v23 = a3;
  v4 = objc_opt_class();
  v5 = [(UAUserActivity *)self suggestedActionType];
  v6 = getenv("__UA_THROW_ON_SETWEBPAGEURL_FAILURE");
  if (v6)
  {
    v7 = atoi(v6) != 0;
  }

  else
  {
    v7 = 1;
  }

  [v4 checkWebpageURL:v23 actionType:v5 throwIfFailed:v7];
  v8 = self;
  objc_sync_enter(v8);
  if (differ(v23, v8->_webpageURL))
  {
    v9 = v8->_webpageURL;
    v10 = [(objc_object *)v23 copy];
    webpageURL = v8->_webpageURL;
    v8->_webpageURL = v10;

    v12 = [(UAUserActivity *)v8 manager];
    v13 = [v12 userActivityIsActive:v8];

    if (v13)
    {
      [(UAUserActivity *)v8 setForceImmediateSendToServer:1];
      [(UAUserActivity *)v8 indexActivity:1 forceIndexing:0.5];
    }

    [(UAUserActivity *)v8 setDirty:1];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = getUserActivityObserversCopy();
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = *v25;
      do
      {
        v17 = 0;
        do
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v24 + 1) + 8 * v17);
          v19 = [(UAUserActivity *)v8 parentUserActivity];
          if (v19)
          {
            v20 = objc_opt_respondsToSelector();

            if (v20)
            {
              v21 = [(UAUserActivity *)v8 parentUserActivity];
              [v18 userActivityWebpageURLWasChanged:v21 webpageURL:v23 previousValue:v9];
            }
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }
  }

  objc_sync_exit(v8);

  v22 = *MEMORY[0x277D85DE8];
}

- (NSURL)referrerURL
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_referrerURL;
  objc_sync_exit(v2);

  return v3;
}

- (void)setReferrerURL:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if (differ(v4, v5->_referrerURL))
  {
    v6 = biomeInfoLogging();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(UAUserActivity *)v5 uniqueIdentifier];
      v11 = 138543362;
      v12 = v7;
      _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_INFO, "%{public}@ SET-REFERRERURL", &v11, 0xCu);
    }

    v8 = [(objc_object *)v4 copy];
    referrerURL = v5->_referrerURL;
    v5->_referrerURL = v8;

    [(UAUserActivity *)v5 setDirty:1];
  }

  objc_sync_exit(v5);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setUniversalLink:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_universalLink != v3)
  {
    obj->_universalLink = v3;
    [(UAUserActivity *)obj setDirty:1];
  }

  objc_sync_exit(obj);
}

- (void)setTargetContentIdentifier:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  p_isa = &v4->isa;
  if (differ(v4, v5->_targetContentIdentifier))
  {
    v6 = v5->_targetContentIdentifier;
    v7 = copyNSStringOrSubclass(&v4->isa);
    targetContentIdentifier = v5->_targetContentIdentifier;
    v5->_targetContentIdentifier = v7;

    [(UAUserActivity *)v5 setDirty:1];
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = getUserActivityObserversCopy();
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v19 + 1) + 8 * i);
          v14 = [(UAUserActivity *)v5 parentUserActivity];
          if (v14)
          {
            v15 = objc_opt_respondsToSelector();

            if (v15)
            {
              v16 = [(UAUserActivity *)v5 parentUserActivity];
              [v13 userActivityTargetContentIdentifierWasChanged:v16 targetContentIdentifier:p_isa previousValue:v6];
            }
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v10);
    }
  }

  objc_sync_exit(v5);

  v17 = *MEMORY[0x277D85DE8];
}

- (void)setDirty:(BOOL)a3
{
  v3 = a3;
  v45 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  dirty = v4->_dirty;
  if (v4->_inWillSaveCallback)
  {
    v33 = 0;
    goto LABEL_31;
  }

  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(UAUserActivity *)v4 uniqueIdentifier];
    v7 = [v6 UUIDString];
    v8 = v7;
    v9 = @"NO";
    v10 = v4->_dirty;
    if (v3)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    *buf = 138543874;
    v39 = v7;
    v40 = 2114;
    if (v10)
    {
      v9 = @"YES";
    }

    *v41 = v11;
    *&v41[8] = 2114;
    v42 = v9;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "setDirty:(%{public}@) => %{public}@ (is currently %{public}@)", buf, 0x20u);
  }

  if ([(UAUserActivity *)v4 forceImmediateSendToServer])
  {
    v12 = 1;
  }

  else
  {
    if (!v4->_activityHasBeenSentToServer)
    {
      HIDWORD(v33) = 0;
      if (v3)
      {
        goto LABEL_15;
      }

LABEL_18:
      LODWORD(v33) = 0;
      goto LABEL_31;
    }

    v12 = v4->_dirty != v3;
  }

  HIDWORD(v33) = v12;
  if (!v3)
  {
    goto LABEL_18;
  }

LABEL_15:
  v4->_dirty = 1;
  [(UAUserActivity *)v4 setCachedEncodedUserInfo:0];
  if ([(UAUserActivity *)v4 forwardToCoreSpotlightIndexer])
  {
    v13 = [(UAUserActivity *)v4 manager];
    LODWORD(v33) = [v13 userActivityIsActive:v4];
  }

  else
  {
    LODWORD(v33) = 0;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v14 = getUserActivityObserversCopy();
  v15 = [v14 countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v15)
  {
    v16 = *v35;
    do
    {
      v17 = 0;
      do
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = *(*(&v34 + 1) + 8 * v17);
        v19 = [(UAUserActivity *)v4 parentUserActivity];
        if (v19)
        {
          v20 = objc_opt_respondsToSelector();

          if (v20)
          {
            v21 = [(UAUserActivity *)v4 parentUserActivity];
            [v18 userActivityWasMadeDirty:v21];
          }
        }

        ++v17;
      }

      while (v15 != v17);
      v15 = [v14 countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v15);
  }

LABEL_31:
  objc_sync_exit(v4);

  v22 = biomeInfoLogging();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = [(UAUserActivity *)v4 uniqueIdentifier];
    v24 = [(UAUserActivity *)v4 forceImmediateSendToServer];
    *buf = 138544386;
    v39 = v23;
    v40 = 1024;
    *v41 = dirty;
    *&v41[4] = 1024;
    *&v41[6] = v24;
    LOWORD(v42) = 1024;
    *(&v42 + 2) = HIDWORD(v33);
    HIWORD(v42) = 1024;
    v43 = v33;
    _os_log_impl(&dword_226A4E000, v22, OS_LOG_TYPE_INFO, "%{public}@ SET-DIRTY\twasDirty=%{BOOL}d force=%{BOOL}d informServer=%{BOOL}d informIndex=%{BOOL}d", buf, 0x24u);
  }

  if (HIDWORD(v33))
  {
    if (v4->_createsNewUUIDIfSaved)
    {
      [(UAUserActivity *)v4 tellDaemonAboutNewLSUserActivity];
    }

    else
    {
      if ([(UAUserActivity *)v4 forceImmediateSendToServer])
      {
        [(UAUserActivity *)v4 setForceImmediateSendToServer:0];
        v25 = 1;
      }

      else
      {
        v25 = [(UAUserActivity *)v4 encodedContainsUnsynchronizedCloudDocument];
      }

      v26 = [(UAUserActivity *)v4 manager];
      [v26 markUserActivityAsDirty:v4 forceImmediate:v25];
    }
  }

  if (v33)
  {
    v27 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = [(UAUserActivity *)v4 typeIdentifier];
      v29 = [(UAUserActivity *)v4 uniqueIdentifier];
      v30 = [v29 UUIDString];
      *buf = 138478339;
      v39 = v28;
      v40 = 2114;
      *v41 = v30;
      *&v41[8] = 2048;
      v42 = 0x403E000000000000;
      _os_log_impl(&dword_226A4E000, v27, OS_LOG_TYPE_DEBUG, "sending %{private}@/%{public}@ to indexer within %f seconds because it is dirty.", buf, 0x20u);
    }

    [(UAUserActivity *)v4 indexActivity:1 forceIndexing:30.0];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)setNeedsSave:(BOOL)a3
{
  v3 = a3;
  v31 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  if (!v4->_inWillSaveCallback)
  {
    if ([(UAUserActivity *)v4 forceImmediateSendToServer])
    {
      v12 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = [(UAUserActivity *)v4 uniqueIdentifier];
        v14 = [v13 UUIDString];
        *v29 = 138543362;
        *&v29[4] = v14;
        _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_DEBUG, "setNeedsSave:(%{public}@), since self.forceImmediateSendToServer == YES doing an immediate call to the server to mark this item as dirty.", v29, 0xCu);
      }

      v15 = biomeInfoLogging();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = [(UAUserActivity *)v4 uniqueIdentifier];
        needsSave = v4->_needsSave;
        *v29 = 138544130;
        *&v29[4] = v16;
        *&v29[12] = 1024;
        *&v29[14] = v3;
        *&v29[18] = 1024;
        *&v29[20] = needsSave;
        LOWORD(v30) = 1024;
        *(&v30 + 2) = 1;
        _os_log_impl(&dword_226A4E000, v15, OS_LOG_TYPE_INFO, "%{public}@ SET-NEEDSSAVE\t%{BOOL}d was=%{BOOL}d force=%{BOOL}d", v29, 0x1Eu);
      }

      v4->_needsSave = v3;
      [(UAUserActivity *)v4 setForceImmediateSendToServer:0];
    }

    else
    {
      if (v4->_needsSave == v3)
      {
        goto LABEL_29;
      }

      v18 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v19 = [(UAUserActivity *)v4 uniqueIdentifier];
        v20 = [v19 UUIDString];
        v21 = v20;
        v22 = "NO";
        v23 = v4->_needsSave;
        if (v3)
        {
          v24 = "YES";
        }

        else
        {
          v24 = "NO";
        }

        *v29 = 138543874;
        *&v29[4] = v20;
        *&v29[12] = 2082;
        if (v23)
        {
          v22 = "YES";
        }

        *&v29[14] = v24;
        *&v29[22] = 2082;
        v30 = v22;
        _os_log_impl(&dword_226A4E000, v18, OS_LOG_TYPE_DEBUG, "setNeedsSave:(%{public}@ => %{public}s, (was %{public}s) and .dirty = YES", v29, 0x20u);
      }

      v25 = biomeInfoLogging();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = [(UAUserActivity *)v4 uniqueIdentifier];
        v27 = v4->_needsSave;
        *v29 = 138543874;
        *&v29[4] = v26;
        *&v29[12] = 1024;
        *&v29[14] = v3;
        *&v29[18] = 1024;
        *&v29[20] = v27;
        _os_log_impl(&dword_226A4E000, v25, OS_LOG_TYPE_INFO, "%{public}@ SET-NEEDSSAVE\t%{BOOL}d was=%{BOOL}d", v29, 0x18u);
      }

      v4->_needsSave = v3;
    }

    [(UAUserActivity *)v4 setDirty:1, *v29];
    goto LABEL_29;
  }

  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(UAUserActivity *)v4 uniqueIdentifier];
    v7 = [v6 UUIDString];
    v8 = v7;
    v9 = "NO";
    needsSaveValueAtEndOfWillSaveCallback = v4->_needsSaveValueAtEndOfWillSaveCallback;
    if (v3)
    {
      v11 = "YES";
    }

    else
    {
      v11 = "NO";
    }

    *v29 = 138543874;
    *&v29[4] = v7;
    *&v29[12] = 2082;
    if (needsSaveValueAtEndOfWillSaveCallback)
    {
      v9 = "YES";
    }

    *&v29[14] = v11;
    *&v29[22] = 2082;
    v30 = v9;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "setNeedsSave:(%{public}@) => %{public}s, but in willSave callback, so setting _needsSaveValueAtEndOfWillSaveCallback (was %{public}s", v29, 0x20u);
  }

  if (v3)
  {
    v4->_needsSaveValueAtEndOfWillSaveCallback = 1;
  }

LABEL_29:
  objc_sync_exit(v4);

  v28 = *MEMORY[0x277D85DE8];
}

- (void)setParentUserActivity:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = getUAUserActivityToNSUserActivityMap();
  objc_sync_enter(v5);
  [v5 setObject:v4 forKey:self];
  objc_sync_exit(v5);
  if (v4)
  {
    v6 = self;
    objc_sync_enter(v6);
    if (!v6->_userActivityWasCreatedSent)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = getUserActivityObserversCopy();
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = *v14;
        do
        {
          v10 = 0;
          do
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(v7);
            }

            v11 = *(*(&v13 + 1) + 8 * v10);
            if (objc_opt_respondsToSelector())
            {
              [v11 userActivityWasCreated:{v4, v13}];
            }

            ++v10;
          }

          while (v8 != v10);
          v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }
    }

    objc_sync_exit(v6);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (NSData)streamsData
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_supportsContinuationStreams)
  {
    goto LABEL_6;
  }

  v3 = [(UAUserActivity *)v2 payloadForIdentifier:@"UAUserActivityStreamsPayload"];
  v4 = [v3 copy];

  if (!v4)
  {
    advertiserCompletedGroup = v2->_advertiserCompletedGroup;
    if (advertiserCompletedGroup)
    {
      v5 = advertiserCompletedGroup;
LABEL_7:
      v4 = 0;
      goto LABEL_8;
    }

LABEL_6:
    v5 = 0;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_8:
  objc_sync_exit(v2);

  if (v5 && !v4)
  {
    v7 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_INFO, "UserActivity: Before waiting for completion group to finish.", &v16, 2u);
    }

    v8 = dispatch_time(0, 750000000);
    v9 = dispatch_group_wait(v5, v8);
    v10 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = "NO";
      if (!v9)
      {
        v11 = "YES";
      }

      v16 = 136446210;
      v17 = v11;
      _os_log_impl(&dword_226A4E000, v10, OS_LOG_TYPE_INFO, "UserActivity: After waiting for completion group to finish, success = %{public}s.", &v16, 0xCu);
    }

    if (v9)
    {
      v12 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v16) = 0;
        _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_INFO, "UserActivity: Failed getting streamsData from sharingd, so continuation streams are broken even though we think they are needed.", &v16, 2u);
      }

      v4 = 0;
    }

    else
    {
      v12 = v2;
      objc_sync_enter(v12);
      v13 = [v12 payloadForIdentifier:@"UAUserActivityStreamsPayload"];
      v4 = [v13 copy];

      objc_sync_exit(v12);
    }
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)setStreamsData:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = biomeInfoLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(UAUserActivity *)v5 uniqueIdentifier];
    v10 = 138543618;
    v11 = v7;
    v12 = 1024;
    v13 = v4 != 0;
    _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_INFO, "%{public}@ SET-STREAMSDATA hasStream=%{BOOL}d", &v10, 0x12u);
  }

  v5->_supportsContinuationStreams = v4 != 0;
  v8 = [v4 copy];
  [(UAUserActivity *)v5 setPayload:v8 object:0 identifier:@"UAUserActivityStreamsPayload" dirty:0];

  objc_sync_exit(v5);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)setSupportsContinuationStreams:(BOOL)a3
{
  v3 = a3;
  v31 = *MEMORY[0x277D85DE8];
  if (getSFCompanionAdvertiserClass())
  {
    v5 = self;
    objc_sync_enter(v5);
    if (v5->_supportsContinuationStreams != v3)
    {
      v5->_supportsContinuationStreams = v3;
      if (v5->_advertiser)
      {
        v6 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          v7 = "NO";
          advertiser = v5->_advertiser;
          if (v5->_supportsContinuationStreams)
          {
            v7 = "YES";
          }

          *buf = 136446722;
          v26 = v7;
          v27 = 2114;
          v28 = v5;
          v29 = 2114;
          v30 = advertiser;
          _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_INFO, "Changing supportsContinuationStreams to %{public}s on %{public}@ advertiser=%{public}@", buf, 0x20u);
        }

        advertiserCompletedGroup = v5->_advertiserCompletedGroup;
        v10 = getSupportsContinuationStreamsQueue();
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __49__UAUserActivity_setSupportsContinuationStreams___block_invoke_125;
        v21[3] = &unk_2785C3760;
        v21[4] = v5;
        v22 = v3;
        v11 = v21;
LABEL_15:
        dispatch_group_async(advertiserCompletedGroup, v10, v11);

        goto LABEL_16;
      }

      if (v3)
      {
        v12 = objc_alloc(getSFCompanionAdvertiserClass());
        v13 = [(NSUUID *)v5->_uniqueIdentifier UUIDString];
        v14 = [v12 initWithServiceType:v13];
        v15 = v5->_advertiser;
        v5->_advertiser = v14;

        v16 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = v5->_advertiser;
          *buf = 138543618;
          v26 = v5;
          v27 = 2114;
          v28 = v17;
          _os_log_impl(&dword_226A4E000, v16, OS_LOG_TYPE_INFO, "Creating SFCompanionAdvertiser, since the client is setting .supportsContinuationStreams == YES for the first time on %{public}@ advertiser=%{public}@", buf, 0x16u);
        }

        advertiserCompletedGroup = v5->_advertiserCompletedGroup;
        if (!advertiserCompletedGroup)
        {
          v18 = dispatch_group_create();
          v19 = v5->_advertiserCompletedGroup;
          v5->_advertiserCompletedGroup = v18;

          advertiserCompletedGroup = v5->_advertiserCompletedGroup;
        }

        v10 = getSupportsContinuationStreamsQueue();
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __49__UAUserActivity_setSupportsContinuationStreams___block_invoke;
        block[3] = &unk_2785C3760;
        block[4] = v5;
        v24 = v3;
        v11 = block;
        goto LABEL_15;
      }
    }

LABEL_16:
    objc_sync_exit(v5);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __49__UAUserActivity_setSupportsContinuationStreams___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_226A4E000, v2, OS_LOG_TYPE_INFO, "UserActivity: In group, setting up advertiser.", &v13, 2u);
  }

  v3 = *(a1 + 32);
  objc_sync_enter(v3);
  v4 = *(*(a1 + 32) + 48);
  [v4 setSupportsStreams:*(a1 + 40)];
  [v4 setDelegate:*(a1 + 32)];
  [*(a1 + 32) setPayload:0 object:0 identifier:@"UAUserActivityStreamsPayload"];
  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 48);
    v13 = 138543618;
    v14 = v6;
    v15 = 2114;
    v16 = v7;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_INFO, "Calling _start on advertiser and getting serviceEndpointData, %{public}@ advertiser=%{public}@", &v13, 0x16u);
  }

  objc_sync_exit(v3);
  [v4 start];
  v8 = [v4 serviceEndpointData];
  v9 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a1 + 32);
    v11 = *(v10 + 48);
    v13 = 138543874;
    v14 = v10;
    v15 = 2114;
    v16 = v11;
    v17 = 2114;
    v18 = v8;
    _os_log_impl(&dword_226A4E000, v9, OS_LOG_TYPE_INFO, "Finished calling _start on advertiser and getting serviceEndpointData, %{public}@ advertiser=%{public}@ data=%{public}@", &v13, 0x20u);
  }

  [*(a1 + 32) setStreamsData:v8];
  [*(a1 + 32) setDirty:1];

  v12 = *MEMORY[0x277D85DE8];
}

void __49__UAUserActivity_setSupportsContinuationStreams___block_invoke_125(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 40))
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    v5 = *(a1 + 32);
    v6 = *(v5 + 48);
    v8 = 136446722;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_INFO, "Telling _advertiser that supportsStreams = %{public}s on %{public}@ advertiser=%{public}@", &v8, 0x20u);
  }

  [*(*(a1 + 32) + 48) setSupportsStreams:*(a1 + 40)];
  [*(a1 + 32) setDirty:1];
  objc_sync_exit(v2);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)getContinuationStreamsWithCompletionHandler:(id)a3
{
  v36[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "getContinuationStreamsWithCompletionHandler", buf, 2u);
  }

  if (!v4)
  {
    v22 = MEMORY[0x277CBEAD8];
    v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"getContinuationStreamsWithCompletionHandler called with a nil completionHandler argument."];
    v24 = [v22 exceptionWithName:*MEMORY[0x277CBE660] reason:v23 userInfo:0];
    v25 = v24;

    objc_exception_throw(v24);
  }

  if (getSFCompanionAdvertiserClass())
  {
    if (self->_resumerAdvertiser)
    {
      v6 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_DEFAULT, "getContinuationStreamsWithCompletionHandler(), activtiy stream already in progress, EALREADY", buf, 2u);
      }

      v7 = MEMORY[0x277CCA9B8];
      v31 = *MEMORY[0x277CCA450];
      v32 = @"Get streams already in progress";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v32 forKeys:&v31 count:1];
      v9 = [v7 errorWithDomain:*MEMORY[0x277CCA5B8] code:37 userInfo:v8];
      (*(v4 + 2))(v4, 0, 0, v9);
    }

    else if (self->_canCreateStreams)
    {
      v8 = [(UAUserActivity *)self payloadForIdentifier:@"UAUserActivityStreamsPayload"];
      if (v8)
      {
        self->_supportsContinuationStreams = 0;
        v12 = [objc_alloc(getSFCompanionAdvertiserClass()) initWithServiceType:0];
        resumerAdvertiser = self->_resumerAdvertiser;
        p_resumerAdvertiser = &self->_resumerAdvertiser;
        *p_resumerAdvertiser = v12;

        v15 = *p_resumerAdvertiser;
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __62__UAUserActivity_getContinuationStreamsWithCompletionHandler___block_invoke;
        v26[3] = &unk_2785C3788;
        v27 = v4;
        [(SFCompanionAdvertiser *)v15 getContinuationStreamsWithEndpointData:v8 completionHandler:v26];
        v9 = v27;
      }

      else
      {
        v18 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_226A4E000, v18, OS_LOG_TYPE_DEFAULT, "getContinuationStreamsWithCompletionHandler(), no connect back token available, EOENT", buf, 2u);
        }

        v19 = MEMORY[0x277CCA9B8];
        v35 = *MEMORY[0x277CCA450];
        v36[0] = @"No connect back token available";
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
        v20 = [v19 errorWithDomain:*MEMORY[0x277CCA5B8] code:2 userInfo:v9];
        (*(v4 + 2))(v4, 0, 0, v20);
      }
    }

    else
    {
      v16 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_226A4E000, v16, OS_LOG_TYPE_DEFAULT, "getContinuationStreamsWithCompletionHandler(), activtiy doesn't support streams, ENOTSUP", buf, 2u);
      }

      v17 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277CCA450];
      v34 = @"Activity doesn't support streams";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
      v9 = [v17 errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:v8];
      (*(v4 + 2))(v4, 0, 0, v9);
    }
  }

  else
  {
    v10 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_226A4E000, v10, OS_LOG_TYPE_DEFAULT, "getContinuationStreamsWithCompletionHandler(), failed to load Sharing.framework, ENOSYS", buf, 2u);
    }

    v11 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277CCA450];
    v30 = @"Failed to load Sharing framework";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
    v9 = [v11 errorWithDomain:*MEMORY[0x277CCA5B8] code:78 userInfo:v8];
    (*(v4 + 2))(v4, 0, 0, v9);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __62__UAUserActivity_getContinuationStreamsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_226A4E000, v10, OS_LOG_TYPE_INFO, "getContinuationStreamsWithCompletionHandler(), inputStream=%{public}@ outputStream=%{public}@ error=%{public}@", &v12, 0x20u);
  }

  (*(*(a1 + 32) + 16))();
  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCurrent
{
  v2 = self;
  objc_sync_enter(v2);
  if ([(UAUserActivity *)v2 isInvalidated])
  {
    v3 = 0;
  }

  else
  {
    v4 = [(UAUserActivity *)v2 manager];
    v5 = [v4 activeUserActivityUUID];
    v6 = [(UAUserActivity *)v2 uniqueIdentifier];
    v3 = [v5 isEqual:v6];
  }

  objc_sync_exit(v2);

  return v3;
}

- (BOOL)archiveURL:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = dispatch_get_global_queue(0, 0);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __47__UAUserActivity_archiveURL_completionHandler___block_invoke;
  v11[3] = &unk_2785C37D8;
  v12 = v5;
  v13 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v11);

  return 1;
}

void __47__UAUserActivity_archiveURL_completionHandler___block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v43 = a1;
  v2 = [*(a1 + 32) absoluteURL];
  v3 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v3 setScheme:@"x-br-file"];
  v4 = [v2 path];
  [v3 setPath:v4];

  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (!v2)
  {
    v13 = 0;
    goto LABEL_26;
  }

  err = 0;
  v6 = _UABRCopyUbiquitousBookmarkDataForDocumentAtURL(v2, &err);
  v7 = v6;
  if (err)
  {
    v8 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478083;
      v46 = v2;
      v47 = 2114;
      v48 = err;
      _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_DEBUG, "*** Error from _UACopyUbiquitousBookmarkDataForDocumentAtURL(%{private}@) => %{public}@", buf, 0x16u);
    }

    Domain = CFErrorGetDomain(err);
    v10 = _UABRCloudDocsErrorDomain();
    if (CFEqual(Domain, v10))
    {
      Code = CFErrorGetCode(err);
      if (Code == 6)
      {
        v13 = 0;
        goto LABEL_21;
      }

      if (Code == 7)
      {
        v12 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138477827;
          v46 = v2;
          _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_DEFAULT, "*** Setting self.encodedContainsUnsynchronizedCloudDocument = YES because the .userInfo contains an unsynced cloud document, %{private}@", buf, 0xCu);
        }
      }

      else
      {
        v12 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138478083;
          v46 = v2;
          v47 = 2114;
          v48 = err;
          _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_DEBUG, "*** ERROR, BRCloudDocsErrorDomain from _UACopyUbiquitousBookmarkDataForDocumentAtURL(%{private}@) => %{public}@", buf, 0x16u);
        }
      }

      v41 = MEMORY[0x277CCA9B8];
      v22 = CFErrorGetDomain(err);
      v23 = CFErrorGetCode(err);
      v24 = MEMORY[0x277CBEAC0];
      v19 = CFErrorCopyUserInfo(err);
      v20 = [v24 dictionaryWithDictionary:v19];
      v21 = [v41 errorWithDomain:v22 code:v23 userInfo:v20];
    }

    else
    {
      v15 = MEMORY[0x277CCA9B8];
      v16 = CFErrorGetDomain(err);
      v17 = CFErrorGetCode(err);
      v18 = MEMORY[0x277CBEAC0];
      v19 = CFErrorCopyUserInfo(err);
      v20 = [v18 dictionaryWithDictionary:v19];
      v21 = [v15 errorWithDomain:v16 code:v17 userInfo:v20];
    }

    v13 = v21;

LABEL_21:
    if (!v7)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (!v6)
  {
    v13 = 0;
    goto LABEL_25;
  }

  v14 = [MEMORY[0x277CCAD18] queryItemWithName:@"v" value:v6];
  [v5 addObject:v14];

  v13 = 0;
LABEL_22:
  CFRelease(v7);
LABEL_23:
  if (err)
  {
    CFRelease(err);
  }

LABEL_25:
  if (![v5 count] && softLinkFPURLMightBeInFileProvider(v2))
  {
    err = 0;
    v30 = softLinkFPCreateBookmarkableStringFromDocumentURL(v2, &err);
    if (v30)
    {
      v31 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543618;
        v46 = v30;
        v47 = 2114;
        v48 = v2;
        _os_log_impl(&dword_226A4E000, v31, OS_LOG_TYPE_DEBUG, "*** fileProviderCookie=%{public}@ for url %{public}@", buf, 0x16u);
      }

      v32 = [MEMORY[0x277CCAD18] queryItemWithName:@"fp" value:v30];
      [v5 addObject:v32];

      CFRelease(v30);
    }

    else
    {
      if (!err)
      {
        goto LABEL_26;
      }

      v33 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        *buf = 138478083;
        v46 = v2;
        v47 = 2114;
        v48 = err;
        _os_log_impl(&dword_226A4E000, v33, OS_LOG_TYPE_ERROR, "*** Error from FPBookmarkableStringFromDocumentURL, %{private}@ -> %{public}@", buf, 0x16u);
      }

      v34 = MEMORY[0x277CCA9B8];
      v35 = CFErrorGetDomain(err);
      v36 = CFErrorGetCode(err);
      v37 = MEMORY[0x277CBEAC0];
      v38 = CFErrorCopyUserInfo(err);
      v39 = [v37 dictionaryWithDictionary:v38];
      v40 = [v34 errorWithDomain:v35 code:v36 userInfo:v39];

      v13 = v40;
    }

    if (err)
    {
      CFRelease(err);
    }
  }

LABEL_26:
  if ([v5 count])
  {
    [v3 setQueryItems:v5];
    v25 = [v3 URL];
    v26 = [v25 copy];

    v27 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      v28 = *(v43 + 32);
      *buf = 138478083;
      v46 = v26;
      v47 = 2113;
      v48 = v28;
      _os_log_impl(&dword_226A4E000, v27, OS_LOG_TYPE_DEBUG, "BR: Mapping file:%{private}@ from %{private}@", buf, 0x16u);
    }

    (*(*(v43 + 40) + 16))();
  }

  else
  {
    (*(*(v43 + 40) + 16))();
  }

  objc_autoreleasePoolPop(context);
  v29 = *MEMORY[0x277D85DE8];
}

- (id)unarchiveURL:(id)a3 error:(id *)a4
{
  v48 = *MEMORY[0x277D85DE8];
  v33 = a3;
  if (!v33)
  {
    v24 = 0;
    goto LABEL_51;
  }

  v32 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v33 resolvingAgainstBaseURL:1];
  v5 = [(__CFString *)v32 scheme];
  v6 = [v5 isEqual:@"x-br-file"];

  if (v6)
  {
    v7 = _uaGetLogForCategory(0);
    v31 = a4;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [(__CFString *)v32 queryItems];
      *buf = 138478083;
      v42 = v32;
      v43 = 2113;
      v44 = v8;
      _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_DEBUG, "components=%{private}@ queryItems=%{private}@", buf, 0x16u);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v9 = [(__CFString *)v32 queryItems];
    v10 = [v9 countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (!v10)
    {

      v11 = 0;
      v34 = 0;
      v24 = 0;
      cf = 0;
LABEL_47:
      v28 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138478083;
        v42 = v24;
        v43 = 2113;
        v44 = v33;
        _os_log_impl(&dword_226A4E000, v28, OS_LOG_TYPE_DEBUG, "BR:Resolved url %{private}@ from %{private}@", buf, 0x16u);
      }

      goto LABEL_50;
    }

    v11 = 0;
    v34 = 0;
    v12 = *v38;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v38 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v37 + 1) + 8 * i);
        v15 = [v14 name];
        v16 = [v15 isEqual:@"v"];

        if (v16)
        {
          v17 = [v14 value];

          v34 = v17;
        }

        v18 = [v14 name];
        v19 = [v18 isEqual:@"fp"];

        if (v19)
        {
          v20 = [v14 value];

          v11 = v20;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v10);

    cf = 0;
    if (!v11)
    {
      v24 = 0;
LABEL_36:
      if (v34 && !v24)
      {
        v35 = 0;
        v24 = _UABRCopyDocumentURLForUbiquitousBookmarkData(v34, &v35);
        v26 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138478339;
          v42 = v34;
          v43 = 2113;
          v44 = v24;
          v45 = 2114;
          v46 = v35;
          _os_log_impl(&dword_226A4E000, v26, OS_LOG_TYPE_DEBUG, "BRCopyDocumentURLForBookmarkData(%{private}@) = %{private}@/%{public}@", buf, 0x20u);
        }

        if (v31 && v35)
        {
          v27 = _uaGetLogForCategory(0);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 138478083;
            v42 = v34;
            v43 = 2114;
            v44 = v35;
            _os_log_impl(&dword_226A4E000, v27, OS_LOG_TYPE_INFO, "error decoding brCookie %{private}@, error = %{public}@", buf, 0x16u);
          }

          *v31 = CFRetain(v35);
        }

        if (v35)
        {
          CFRelease(v35);
        }
      }

      goto LABEL_47;
    }

    v21 = softLinkFPCreateDocumentURLFromBookmarkableString(v11, &cf);
    v22 = v21;
    if (cf)
    {
      v23 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138478083;
        v42 = v11;
        v43 = 2114;
        v44 = cf;
        _os_log_impl(&dword_226A4E000, v23, OS_LOG_TYPE_DEBUG, "error decoding fileProvider %{private}@, error = %{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      [(__CFString *)v32 setScheme:@"file"];
      v25 = CFURLCopyPath(v22);
      [(__CFString *)v32 setPath:v25];

      v24 = [(__CFString *)v32 URL];
LABEL_28:
      if (v31 && cf)
      {
        *v31 = CFRetain(cf);
      }

      if (v22)
      {
        CFRelease(v22);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      cf = 0;
      goto LABEL_36;
    }

    v24 = 0;
    goto LABEL_28;
  }

  v24 = 0;
LABEL_50:

LABEL_51:
  v29 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)archiver:(id)a3 willEncodeObject:(id)a4
{
  v6 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v7 = a4;
  v21 = v7;
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = v7;
    if ([v8 isFileURL])
    {
      v9 = dispatch_group_create();
      dispatch_group_enter(v9);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __44__UAUserActivity_archiver_willEncodeObject___block_invoke;
      v13[3] = &unk_2785C3800;
      v15 = &v16;
      v10 = v9;
      v14 = v10;
      if ([(UAUserActivity *)self archiveURL:v8 completionHandler:v13])
      {
        dispatch_group_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
      }
    }
  }

  else
  {
    objc_storeStrong(v17 + 5, a4);
  }

  v11 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v11;
}

void __44__UAUserActivity_archiver_willEncodeObject___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

- (id)unarchiver:(id)a3 didDecodeObject:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if (!a4)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_14;
  }

  v7 = a4;
  v8 = [v7 scheme];
  v9 = [v8 isEqual:@"x-br-file"];

  if ((v9 & 1) == 0)
  {

LABEL_14:
    v12 = a4;
    v14 = v12;
    goto LABEL_15;
  }

  v17 = 0;
  v10 = [(UAUserActivity *)self unarchiveURL:v7 error:&v17];
  v11 = v17;
  if (v11)
  {
    [(UAUserActivity *)self setDecodeUserInfoError:v11];
LABEL_6:
    v12 = 0;
    goto LABEL_10;
  }

  if (!v10)
  {
    goto LABEL_6;
  }

  v12 = v10;
LABEL_10:
  v13 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138478083;
    v19 = v12;
    v20 = 2113;
    v21 = v7;
    _os_log_impl(&dword_226A4E000, v13, OS_LOG_TYPE_DEBUG, " -- resolved url = %{private}@ from %{private}@", buf, 0x16u);
  }

  if (!v12)
  {
    goto LABEL_14;
  }

  v14 = 0;
LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)synchronouslyEncodeUserInfo:(id)a3 options:(id)a4 completionHandler:(id)a5
{
  v98 = *MEMORY[0x277D85DE8];
  v54 = a3;
  v7 = a4;
  v59 = a5;
  v8 = objc_autoreleasePoolPush();
  v53 = v7;
  if (v7)
  {
    v9 = [v7 objectForKeyedSubscript:@"UACreateUserActivityDataDoNotEncodeFileURLs"];
    if (v9 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v10 = [v9 BOOLValue];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = [(UAUserActivity *)self cachedEncodedUserInfo];

  if (!v7 && v11)
  {
    v57 = [(UAUserActivity *)self cachedEncodedUserInfo];
    context = v8;
    v12 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(UAUserActivity *)self cachedEncodedUserInfo];
      v14 = trimmedHexStringForData(v13, 0x40uLL);
      LODWORD(buf) = 138477827;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_DEFAULT, "Returning cached encoded userInfo, %{private}@", &buf, 0xCu);
    }

    (*(v59 + 2))(v59, v57, 0, 0);
LABEL_49:

    v49 = context;
    goto LABEL_50;
  }

  if (v54)
  {
    v15 = [MEMORY[0x277CBEB38] dictionary];
    v85[0] = MEMORY[0x277D85DD0];
    v85[1] = 3221225472;
    v85[2] = __72__UAUserActivity_synchronouslyEncodeUserInfo_options_completionHandler___block_invoke;
    v85[3] = &unk_2785C3848;
    v87 = v10;
    v57 = v15;
    v86 = v57;
    context = v8;
    if (recurse(v54, v85))
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v96 = 0x2020000000;
      v97 = 0;
      v81 = 0;
      v82 = &v81;
      v83 = 0x2020000000;
      v84 = 0;
      v77 = 0;
      v78 = &v77;
      v79 = 0x2020000000;
      v80 = 0;
      if ([v57 count])
      {
        v16 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v17 = [v57 description];
          v18 = stringRemovingNewlines(v17);
          *v88 = 138477827;
          v89 = v18;
          _os_log_impl(&dword_226A4E000, v16, OS_LOG_TYPE_INFO, "-- This .userInfo contains iCloud URLs, so beginning process to supplement them with iCloud cookie information. (%{private}@)", v88, 0xCu);
        }

        group = dispatch_group_create();
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v19 = [v57 allKeys];
        obj = v19;
        v20 = [v19 countByEnumeratingWithState:&v73 objects:v94 count:16];
        if (v20)
        {
          v21 = *v74;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v74 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v73 + 1) + 8 * i);
              v24 = dispatch_get_global_queue(0, 0);
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __72__UAUserActivity_synchronouslyEncodeUserInfo_options_completionHandler___block_invoke_182;
              block[3] = &unk_2785C3898;
              p_buf = &buf;
              v25 = group;
              v65 = v25;
              v66 = self;
              v67 = v23;
              v68 = v57;
              v71 = &v81;
              v72 = &v77;
              v69 = v59;
              dispatch_group_async(v25, v24, block);
            }

            v19 = obj;
            v20 = [obj countByEnumeratingWithState:&v73 objects:v94 count:16];
          }

          while (v20);
        }

        v26 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = [v54 description];
          v28 = stringRemovingNewlines(v27);
          *v88 = 138477827;
          v89 = v28;
          _os_log_impl(&dword_226A4E000, v26, OS_LOG_TYPE_DEBUG, "ENCODE: Waiting for replacementURLs block to complete, userInfo=%{private}@.", v88, 0xCu);
        }

        dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
        v29 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v30 = [v57 description];
          v31 = stringRemovingNewlines(v30);
          *v88 = 138477827;
          v89 = v31;
          _os_log_impl(&dword_226A4E000, v29, OS_LOG_TYPE_DEBUG, "ENCODE: DONE waiting for replacementURLs block to complete. replacementURLs=%{private}@", v88, 0xCu);
        }
      }

      atomic_load((*(&buf + 1) + 24));
      if (!atomic_load((*(&buf + 1) + 24)))
      {
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __72__UAUserActivity_synchronouslyEncodeUserInfo_options_completionHandler___block_invoke_183;
        v62[3] = &unk_2785C38C0;
        v63 = v57;
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __72__UAUserActivity_synchronouslyEncodeUserInfo_options_completionHandler___block_invoke_2_185;
        v60[3] = &unk_2785C38E8;
        v61 = v63;
        v33 = _UACopyPackedDataForObjectWithSubstitution(v54, 0, v62, v60);
        v92[0] = @"UAUserActivityContainsCloudDocsKey";
        if (atomic_load(v82 + 6))
        {
          v35 = MEMORY[0x277CBEC38];
        }

        else
        {
          v35 = MEMORY[0x277CBEC28];
        }

        v36 = *MEMORY[0x277CC1F30];
        v93[0] = v35;
        v93[1] = MEMORY[0x277CBEC28];
        v37 = *MEMORY[0x277CC1F28];
        v92[1] = v36;
        v92[2] = v37;
        LODWORD(v37) = atomic_load(v78 + 6);
        if (v37)
        {
          v38 = MEMORY[0x277CBEC38];
        }

        else
        {
          v38 = MEMORY[0x277CBEC28];
        }

        v93[2] = v38;
        v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v93 forKeys:v92 count:{3, context}];
        (*(v59 + 2))(v59, v33, v39, 0);
        v40 = _uaGetLogForCategory(0);
        v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
        v42 = v53;
        if (v41)
        {
          v43 = trimmedHexStringForData(v33, 0x40uLL);
          v44 = [v39 description];
          v45 = stringRemovingNewlines(v44);
          *v88 = 138478083;
          v89 = v43;
          v90 = 2114;
          v91 = v45;
          _os_log_impl(&dword_226A4E000, v40, OS_LOG_TYPE_DEFAULT, "ENCODE: Caching encoded userInfo to use until we are marked dirty again, returning encoded result %{private}@ opts=%{public}@", v88, 0x16u);

          v42 = v53;
        }

        v46 = v42 == 0;

        if (v46)
        {
          v47 = v33;
        }

        else
        {
          v47 = 0;
        }

        [(UAUserActivity *)self setCachedEncodedUserInfo:v47];
      }

      _Block_object_dispose(&v77, 8);
      _Block_object_dispose(&v81, 8);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v50 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UAContinuityErrorDomain" code:-114 userInfo:0];
      (*(v59 + 2))(v59, 0, 0, v50);
    }

    goto LABEL_49;
  }

  v48 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_226A4E000, v48, OS_LOG_TYPE_DEFAULT, "ENCODE: Asked to encode nil userInfo, so returning nil.", &buf, 2u);
  }

  (*(v59 + 2))(v59, 0, 0, 0);
  v49 = v8;
LABEL_50:
  objc_autoreleasePoolPop(v49);

  v51 = *MEMORY[0x277D85DE8];
}

uint64_t __72__UAUserActivity_synchronouslyEncodeUserInfo_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3 && objectIsOfAcceptableClassForUserInfo(v3))
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(objc_object *)v4 isFileURL]&& (*(a1 + 40) & 1) == 0)
    {
      v5 = *(a1 + 32);
      v6 = [MEMORY[0x277CBEB68] null];
      [v5 setObject:v6 forKey:v4];
    }

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __72__UAUserActivity_synchronouslyEncodeUserInfo_options_completionHandler___block_invoke_182(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if (atomic_fetch_or((*(*(a1 + 72) + 8) + 24), 0))
  {
    v3 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = *(a1 + 48);
      *buf = 138477827;
      v19 = v4;
      _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "ENCODE: Skipping archiveURL for %{private}@ because another URL archive has already failed.", buf, 0xCu);
    }
  }

  else
  {
    dispatch_group_enter(*(a1 + 32));
    v5 = *(a1 + 40);
    v6 = *(a1 + 48);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __72__UAUserActivity_synchronouslyEncodeUserInfo_options_completionHandler___block_invoke_2;
    v11[3] = &unk_2785C3870;
    v7 = *(a1 + 56);
    v8 = *(a1 + 48);
    v12 = v7;
    v13 = v8;
    v16 = *(a1 + 80);
    v9 = *(a1 + 64);
    v17 = *(a1 + 72);
    v15 = v9;
    v14 = *(a1 + 32);
    if (([v5 archiveURL:v6 completionHandler:v11] & 1) == 0)
    {
      dispatch_group_leave(*(a1 + 32));
    }

    v3 = v12;
  }

  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x277D85DE8];
}

void __72__UAUserActivity_synchronouslyEncodeUserInfo_options_completionHandler___block_invoke_2(uint64_t a1, void *a2, unsigned int a3, unsigned int a4, void *a5)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a5;
  v11 = v10;
  if (v9)
  {
    v12 = *(a1 + 32);
    objc_sync_enter(v12);
    v13 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 40);
      v23 = 138478083;
      v24 = v14;
      v25 = 2113;
      v26 = v9;
      _os_log_impl(&dword_226A4E000, v13, OS_LOG_TYPE_INFO, "-- Replacing url %{private}@ with %{private}@", &v23, 0x16u);
    }

    [*(a1 + 32) setObject:v9 forKey:*(a1 + 40)];
    atomic_fetch_add((*(*(a1 + 64) + 8) + 24), a3);
    atomic_fetch_add((*(*(a1 + 72) + 8) + 24), a4);
    objc_sync_exit(v12);
  }

  else
  {
    if (atomic_fetch_add((*(*(a1 + 80) + 8) + 24), 1u))
    {
      goto LABEL_7;
    }

    if (v10)
    {
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v10 forKey:*MEMORY[0x277CCA7E8]];
    }

    else
    {
      v12 = 0;
    }

    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"UAContinuityErrorDomain" code:-114 userInfo:v12];
    v17 = *MEMORY[0x277CC1F30];
    v31[0] = @"UAUserActivityContainsCloudDocsKey";
    v31[1] = v17;
    v32[0] = MEMORY[0x277CBEC38];
    v32[1] = MEMORY[0x277CBEC38];
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    v19 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 40);
      v21 = [v18 description];
      v22 = stringRemovingNewlines(v21);
      v23 = 138478595;
      v24 = v20;
      v25 = 2114;
      v26 = v11;
      v27 = 2114;
      v28 = v16;
      v29 = 2114;
      v30 = v22;
      _os_log_impl(&dword_226A4E000, v19, OS_LOG_TYPE_INFO, "ICLOUD: Error encoding url %{private}@, %{public}@, so failing with error %{public}@ opts=%{public}@.", &v23, 0x2Au);
    }

    (*(*(a1 + 56) + 16))();
  }

LABEL_7:
  dispatch_group_leave(*(a1 + 48));

  v15 = *MEMORY[0x277D85DE8];
}

BOOL __72__UAUserActivity_synchronouslyEncodeUserInfo_options_completionHandler___block_invoke_183(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];
  v3 = v2 != 0;

  return v3;
}

- (id)encodeUserInfo:(id)a3 options:(id)a4 error:(id *)a5
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy_;
  v13 = __Block_byref_object_dispose_;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__UAUserActivity_encodeUserInfo_options_error___block_invoke;
  v8[3] = &unk_2785C3910;
  v8[4] = &v15;
  v8[5] = &v9;
  [(UAUserActivity *)self synchronouslyEncodeUserInfo:a3 options:a4 completionHandler:v8];
  if (a5)
  {
    *a5 = v10[5];
  }

  v6 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __47__UAUserActivity_encodeUserInfo_options_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
  v12 = v6;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
}

- (id)encodeUserInfo:(id)a3 error:(id *)a4
{
  v4 = [(UAUserActivity *)self encodeUserInfo:a3 options:0 error:a4];

  return v4;
}

- (id)encodeUserInfo:(id)a3
{
  v3 = [(UAUserActivity *)self encodeUserInfo:a3 error:0];

  return v3;
}

- (id)decodeUserInfo:(id)a3 options:(id)a4
{
  v74 = *MEMORY[0x277D85DE8];
  v49 = a3;
  v4 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = trimmedHexStringForData(v49, 0x20uLL);
    *buf = 138477827;
    *&buf[4] = v5;
    _os_log_impl(&dword_226A4E000, v4, OS_LOG_TYPE_DEBUG, "data=%{private}@", buf, 0xCu);
  }

  v6 = v49;
  if (!v49)
  {
    v26 = 0;
    goto LABEL_42;
  }

  if ([v49 length] < 4 || (v7 = v49, *objc_msgSend(v49, "bytes") != 77) || (v8 = v49, *(objc_msgSend(v49, "bytes") + 1) != 80))
  {
    v27 = MEMORY[0x277CBEB98];
    v68[0] = objc_opt_class();
    v68[1] = objc_opt_class();
    v68[2] = objc_opt_class();
    v68[3] = objc_opt_class();
    v68[4] = objc_opt_class();
    v68[5] = objc_opt_class();
    v68[6] = objc_opt_class();
    v68[7] = objc_opt_class();
    v68[8] = objc_opt_class();
    v68[9] = objc_opt_class();
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:10];
    v48 = [v27 setWithArray:v28];

    v29 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v49 error:0];
    [v29 setDelegate:self];
    [v29 setRequiresSecureCoding:1];
    [(UAUserActivity *)self setDecodeUserInfoError:0];
    v30 = [v29 decodeObjectOfClasses:v48 forKey:*MEMORY[0x277CCA308]];
    v31 = [(UAUserActivity *)self decodeUserInfoError];
    v32 = v31 == 0;

    if (v32)
    {
      if (v30)
      {
        v33 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
        {
          v35 = trimmedHexStringForData(v49, 0x40uLL);
          *buf = 138478083;
          *&buf[4] = v30;
          *&buf[12] = 2113;
          *&buf[14] = v35;
          _os_log_impl(&dword_226A4E000, v33, OS_LOG_TYPE_DEBUG, "Successfully unarchived(old) payload to %{private}@, from %{private}@", buf, 0x16u);
        }
      }

      else
      {
        v36 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_226A4E000, v36, OS_LOG_TYPE_ERROR, "*** Failed to decode keyed object, trying unkeyed object decode", buf, 2u);
        }

        v30 = [v29 decodeObjectOfClasses:v48 forKey:@"$$0"];
        if (!v30)
        {
          v26 = 0;
          goto LABEL_39;
        }

        v33 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_226A4E000, v33, OS_LOG_TYPE_INFO, "*** Unarchived(old and unkeyed) payload", buf, 2u);
        }
      }
    }

    else
    {
      v33 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        v34 = [(UAUserActivity *)self decodeUserInfoError];
        *buf = 138543362;
        *&buf[4] = v34;
        _os_log_impl(&dword_226A4E000, v33, OS_LOG_TYPE_ERROR, "*** Failed decoding archive, with error %{public}@.", buf, 0xCu);
      }
    }

    v26 = v30;
LABEL_39:
    [v29 finishDecoding];
    goto LABEL_40;
  }

  v9 = v49;
  v10 = _UACopyUnpackedObjectFromData([v49 bytes], objc_msgSend(v49, "length"), 0);
  v48 = v10;
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [MEMORY[0x277CBEB38] dictionary];
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __41__UAUserActivity_decodeUserInfo_options___block_invoke;
    v66[3] = &unk_2785C3938;
    v12 = v11;
    v67 = v12;
    v47 = v12;
    recurse(v10, v66);
    if ([v12 count])
    {
      v13 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [v12 description];
        v15 = stringRemovingNewlines(v14);
        *buf = 138477827;
        *&buf[4] = v15;
        _os_log_impl(&dword_226A4E000, v13, OS_LOG_TYPE_INFO, "-- Converting x-br-file: NSURLs into local, iCloud URLs: %{private}@", buf, 0xCu);
      }

      v16 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:{-[NSObject count](v12, "count") + 1}];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v73 = 0;
      [v16 setCancellable:1];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __41__UAUserActivity_decodeUserInfo_options___block_invoke_189;
      v65[3] = &unk_2785C3960;
      v65[4] = buf;
      [v16 setCancellationHandler:v65];
      group = dispatch_group_create();
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v17 = v12;
      v18 = [v17 countByEnumeratingWithState:&v61 objects:v71 count:16];
      if (v18)
      {
        v19 = *v62;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v62 != v19)
            {
              objc_enumerationMutation(v17);
            }

            if ((*(*&buf[8] + 24) & 1) == 0)
            {
              v21 = v16;
              v22 = *(*(&v61 + 1) + 8 * i);
              v23 = dispatch_get_global_queue(0, 0);
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __41__UAUserActivity_decodeUserInfo_options___block_invoke_2;
              block[3] = &unk_2785C3988;
              block[4] = v22;
              v16 = v21;
              v57 = v21;
              v58 = self;
              v59 = v17;
              v60 = buf;
              dispatch_group_async(group, v23, block);
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v61 objects:v71 count:16];
        }

        while (v18);
      }

      v24 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *v69 = 134217984;
        v70 = 0x402E000000000000;
        _os_log_impl(&dword_226A4E000, v24, OS_LOG_TYPE_INFO, "-- Waiting up to %g seconds for all iCloud x-br-file items to be converted into local iCloud NSURLs", v69, 0xCu);
      }

      v25 = dispatch_time(0, 15000000000);
      v26 = 0;
      if (!dispatch_group_wait(group, v25))
      {
        [v16 becomeCurrentWithPendingUnitCount:1];
        if (*(*&buf[8] + 24))
        {
          v26 = 0;
        }

        else
        {
          v54[0] = MEMORY[0x277D85DD0];
          v54[1] = 3221225472;
          v54[2] = __41__UAUserActivity_decodeUserInfo_options___block_invoke_190;
          v54[3] = &unk_2785C3938;
          v55 = v17;
          v52[0] = MEMORY[0x277D85DD0];
          v52[1] = 3221225472;
          v52[2] = __41__UAUserActivity_decodeUserInfo_options___block_invoke_2_191;
          v52[3] = &unk_2785C39B0;
          v53 = v55;
          v45 = recurseAndReplace(v48, v54, v52);
          v46 = v45;
          if (v45)
          {
            v26 = [v45 mutableCopy];
          }

          else
          {
            v26 = 0;
          }
        }

        [v16 resignCurrent];
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      v26 = [v10 copy];
    }

    v41 = v67;
  }

  else
  {
    v39 = [(UAUserActivity *)self decodeUserInfoError];
    v40 = v39 == 0;

    if (v40)
    {
      v26 = 0;
      goto LABEL_41;
    }

    v41 = _uaGetLogForCategory(0);
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_INFO);
    v43 = v48;
    if (v42)
    {
      v44 = [(UAUserActivity *)self decodeUserInfoError];
      *buf = 138543362;
      *&buf[4] = v44;
      _os_log_impl(&dword_226A4E000, v41, OS_LOG_TYPE_INFO, "*** Failed decoding archive, with error %{public}@, so (potentially) looping and trying again.", buf, 0xCu);

      v26 = 0;
      v43 = v48;
    }

    else
    {
      v26 = 0;
    }

    v47 = v43;
    v48 = 0;
  }

  v29 = v47;
LABEL_40:

LABEL_41:
  v6 = v49;
LABEL_42:
  [(UAUserActivity *)self setDecodeUserInfoError:0, v47];

  v37 = *MEMORY[0x277D85DE8];

  return v26;
}

uint64_t __41__UAUserActivity_decodeUserInfo_options___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  objc_opt_class();
  v4 = v3;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = [v3 scheme];
  v6 = [v5 compare:@"x-br-file" options:1];

  if (!v6)
  {
    v7 = *(a1 + 32);
    v4 = [MEMORY[0x277CBEB68] null];
    [v7 setValue:v4 forKey:v3];
LABEL_5:
  }

  return 1;
}

void __41__UAUserActivity_decodeUserInfo_options___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = *(a1 + 32);
    v10 = 138477827;
    v11 = v4;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "-- Converting x-br-file: NSURL %{private}@ into local, iCloud URL", &v10, 0xCu);
  }

  [*(a1 + 40) becomeCurrentWithPendingUnitCount:1];
  v5 = [*(a1 + 48) unarchiveURL:*(a1 + 32) error:0];
  [*(a1 + 40) resignCurrent];
  v6 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v10 = 138478083;
    v11 = v7;
    v12 = 2113;
    v13 = v5;
    _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_DEBUG, "-- Converted x-br-file: NSURL %{private}@ into local, iCloud URLs: %{private}@", &v10, 0x16u);
  }

  v8 = *(a1 + 56);
  objc_sync_enter(v8);
  if (v5)
  {
    [*(a1 + 56) setObject:v5 forKey:*(a1 + 32)];
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  objc_sync_exit(v8);

  objc_autoreleasePoolPop(v2);
  v9 = *MEMORY[0x277D85DE8];
}

BOOL __41__UAUserActivity_decodeUserInfo_options___block_invoke_190(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) objectForKey:v3];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id __41__UAUserActivity_decodeUserInfo_options___block_invoke_2_191(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) objectForKey:a2];

  return v2;
}

- (id)decodeUserInfo:(id)a3
{
  v3 = [(UAUserActivity *)self decodeUserInfo:a3 options:0];

  return v3;
}

+ (void)addDynamicUserActivity:(id)a3 matching:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138478083;
    v11 = v5;
    v12 = 2113;
    v13 = v6;
    _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_INFO, "addDynamicUserActivity(%{private}@ matching=%{private}@)", &v10, 0x16u);
  }

  v8 = +[UAUserActivityManager defaultManager];
  [v8 addDynamicUserActivity:v5 matching:v6];

  v9 = *MEMORY[0x277D85DE8];
}

+ (void)removeDynamicUserActivity:(id)a3 matching:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v10 = 138478083;
    v11 = v5;
    v12 = 2113;
    v13 = v6;
    _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_INFO, "removeDynamicUserActivity(%{private}@ matching=%{private}@)", &v10, 0x16u);
  }

  v8 = +[UAUserActivityManager defaultManager];
  [v8 removeDynamicUserActivity:v5 matching:v6];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)prepareUserActivityForLaunchingWithOptions:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v5 = [(UAUserActivity *)self manager];
  [v5 pinUserActivity:self withCompletionHandler:v6];
}

- (id)determineMatchingApplicationBundleIdentfierWithOptions:(id)a3
{
  v4 = [(UAUserActivity *)self typeIdentifier];
  v5 = [(UAUserActivity *)self dynamicIdentifier];
  v6 = [(UAUserActivity *)self teamIdentifier];
  v7 = [UAUserActivityManager _determineMatchingApplicationBundleIdentfierWithOptionsForActivityType:v4 dynamicType:v5 kind:1 teamIdentifier:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(UAUserActivity *)self uniqueIdentifier];
    v7 = [(UAUserActivity *)v5 uniqueIdentifier];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)debugDescription
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSDictionary *)v2->_userInfo description];
  v4 = stringRemovingNewlines(v3);

  objc_sync_exit(v2);
  v5 = [(UAUserActivity *)v2 payloadIdentifiers];
  if ([v5 count])
  {
    v6 = [(UAUserActivity *)v2 payloadIdentifiers];
    v7 = [v6 description];
    v8 = stringRemovingNewlines(v7);
  }

  else
  {
    v8 = &stru_283A5A2C8;
  }

  v9 = MEMORY[0x277CCACA8];
  v16.receiver = v2;
  v16.super_class = UAUserActivity;
  v10 = [(UAUserActivity *)&v16 description];
  v11 = [(UAUserActivity *)v2 typeIdentifier];
  v12 = [(UAUserActivity *)v2 uniqueIdentifier];
  v13 = [v12 UUIDString];
  v14 = [v9 stringWithFormat:@"%@ { type = %@, UUID = %@, userInfo = %@ %@ }", v10, v11, v13, v4, v8];

  return v14;
}

+ (void)addUserActivityObserver:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v5 = v3;
    if (getUserActivityObservers(BOOL)::sOnce != -1)
    {
      +[UAUserActivity addUserActivityObserver:];
    }

    v4 = getUserActivityObservers(BOOL)::sResult;
    objc_sync_enter(v4);
    [v4 addObject:v5];
    objc_sync_exit(v4);

    v3 = v5;
  }
}

+ (void)removeUserActivityObserver:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v5 = v3;
    v4 = getUserActivityObservers(BOOL)::sResult;
    objc_sync_enter(v4);
    [v4 removeObject:v5];
    objc_sync_exit(v4);

    v3 = v5;
  }
}

- (NSString)subtitle
{
  if ([UAUserActivity(Legacy) subtitle]::sOnce != -1)
  {
    [UAUserActivity(Legacy) subtitle];
  }

  return 0;
}

- (void)setSubtitle:(id)a3
{
  v3 = a3;
  if ([UAUserActivity(Legacy) setSubtitle:]::sOnce != -1)
  {
    [UAUserActivity(Legacy) setSubtitle:];
  }
}

- (id)contentType
{
  if ([UAUserActivity(Legacy) contentType]::sOnce != -1)
  {
    [UAUserActivity(Legacy) contentType];
  }

  return 0;
}

- (void)setContentType:(id)a3
{
  v3 = a3;
  if ([UAUserActivity(Legacy) setContentType:]::sOnce != -1)
  {
    [UAUserActivity(Legacy) setContentType:];
  }
}

- (id)contentAttributes
{
  if ([UAUserActivity(Legacy) contentAttributes]::sOnce != -1)
  {
    [UAUserActivity(Legacy) contentAttributes];
  }

  return 0;
}

- (void)setContentAttributes:(id)a3
{
  v3 = a3;
  if ([UAUserActivity(Legacy) setContentAttributes:]::sOnce != -1)
  {
    [UAUserActivity(Legacy) setContentAttributes:];
  }
}

- (void)addContentAttribute:(id)a3 forKey:(id)a4
{
  v6 = a3;
  v5 = a4;
  if ([UAUserActivity(Legacy) addContentAttribute:forKey:]::sOnce != -1)
  {
    [UAUserActivity(Legacy) addContentAttribute:forKey:];
  }
}

- (void)removeContentAttribute:(id)a3
{
  v3 = a3;
  if ([UAUserActivity(Legacy) removeContentAttribute:]::sOnce != -1)
  {
    [UAUserActivity(Legacy) removeContentAttribute:];
  }
}

- (UAUserActivity)initWithManager:(id)a3 userActivityInfo:(id)a4
{
  v69 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138543619;
    v66 = v6;
    v67 = 2113;
    v68 = v7;
    _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_INFO, "initWithManager:%{public}@, userActivityInfo=%{private}@", buf, 0x16u);
  }

  v64.receiver = self;
  v64.super_class = UAUserActivity;
  v9 = [(UAUserActivity *)&v64 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_manager, v6);
    v11 = [MEMORY[0x277CCAC48] progressWithTotalUnitCount:-1];
    [v11 becomeCurrentWithPendingUnitCount:1];
    v12 = [v7 uuid];
    uniqueIdentifier = v10->_uniqueIdentifier;
    v10->_uniqueIdentifier = v12;

    v10->_suggestedActionType = [v7 type];
    v14 = [v7 options];
    v15 = [v14 copy];
    options = v10->_options;
    v10->_options = v15;

    v17 = [v7 title];
    v18 = [v17 copy];
    title = v10->_title;
    v10->_title = v18;

    v20 = [v7 activityType];
    typeIdentifier = v10->_typeIdentifier;
    v10->_typeIdentifier = v20;

    v22 = [v7 dynamicActivityType];
    dynamicIdentifier = v10->_dynamicIdentifier;
    v10->_dynamicIdentifier = v22;

    v24 = [v7 teamIdentifier];
    teamIdentifier = v10->_teamIdentifier;
    v10->_teamIdentifier = v24;

    v26 = [v7 webpageURL];
    webpageURL = v10->_webpageURL;
    v10->_webpageURL = v26;

    v28 = [v7 referrerURL];
    referrerURL = v10->_referrerURL;
    v10->_referrerURL = v28;

    v30 = [v7 targetContentIdentifier];
    targetContentIdentifier = v10->_targetContentIdentifier;
    v10->_targetContentIdentifier = v30;

    v32 = [v7 payloads];
    v33 = v32 == 0;

    if (!v33)
    {
      v34 = objc_alloc(MEMORY[0x277CBEB38]);
      v35 = [v7 payloads];
      v36 = [v34 initWithDictionary:v35];
      payloadDataCache = v10->_payloadDataCache;
      v10->_payloadDataCache = v36;

      v38 = objc_alloc(MEMORY[0x277CBEB38]);
      v39 = [v7 payloadForIdentifier:@"UAUserActivityUserInfoPayload"];
      v40 = [(UAUserActivity *)v10 decodeUserInfo:v39];
      v41 = [v38 initWithDictionary:v40];
      userInfo = v10->_userInfo;
      v10->_userInfo = v41;

      [(NSMutableDictionary *)v10->_payloadDataCache removeObjectForKey:@"UAUserActivityUserInfoPayload"];
    }

    frameworkPayload = v10->_frameworkPayload;
    v10->_frameworkPayload = 0;

    advertiser = v10->_advertiser;
    v10->_advertiser = 0;

    resumerAdvertiser = v10->_resumerAdvertiser;
    v10->_resumerAdvertiser = 0;

    v10->_needsSave = 1;
    v46 = [(UAUserActivity *)v10 payloadForIdentifier:@"UAUserActivityStreamsPayload"];
    v47 = v46 == 0;

    if (!v47)
    {
      v10->_canCreateStreams = 1;
      v10->_supportsContinuationStreams = 1;
    }

    v10->_createsNewUUIDIfSaved = 1;
    v10->_eligibleForHandoff = [v7 eligibleForHandoff];
    v10->_eligibleForPublicIndexing = [v7 eligibleForPublicIndexing];
    v10->_eligibleForReminders = [v7 eligibleForReminders];
    v10->_eligibleForSearch = [v7 eligibleForSearch];
    v10->_eligibleForPrediction = [v7 eligibleForPrediction];
    v48 = [v7 persistentIdentifier];
    persistentIdentifier = v10->_persistentIdentifier;
    v10->_persistentIdentifier = v48;

    v50 = [v7 requiredUserInfoKeys];
    if (v50)
    {
      v51 = [v7 requiredUserInfoKeys];
      v52 = [v51 copy];
      requiredUserInfoKeys = v10->_requiredUserInfoKeys;
      v10->_requiredUserInfoKeys = v52;
    }

    else
    {
      v51 = v10->_requiredUserInfoKeys;
      v10->_requiredUserInfoKeys = 0;
    }

    v10->_universalLink = [v7 isUniversalLink];
    v54 = [v7 contentUserAction];
    contentUserAction = v10->_contentUserAction;
    v10->_contentUserAction = v54;

    v56 = [v7 keywords];
    if (v56)
    {
      v57 = [v7 keywords];
      v58 = [v57 copy];
      keywords = v10->_keywords;
      v10->_keywords = v58;
    }

    else
    {
      v57 = v10->_keywords;
      v10->_keywords = 0;
    }

    v60 = [v7 expirationDate];
    expirationDate = v10->_expirationDate;
    v10->_expirationDate = v60;

    [v11 resignCurrent];
  }

  v62 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)copyWithNewUUID:(BOOL)a3
{
  v3 = a3;
  v87 = *MEMORY[0x277D85DE8];
  v5 = [UAUserActivity alloc];
  v6 = [(UAUserActivity *)self typeIdentifier];
  v7 = [(UAUserActivity *)self dynamicIdentifier];
  v8 = [(UAUserActivity *)self suggestedActionType];
  v9 = [(UAUserActivity *)self options];
  v10 = [(UAUserActivity *)v5 initDynamicActivityWithTypeIdentifier:v6 dynamicIdentifier:v7 suggestedActionType:v8 options:v9];

  if ([(UAUserActivity *)self isInvalidated])
  {
    v11 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [(UAUserActivity *)self uniqueIdentifier];
      v13 = [v12 UUIDString];
      *buf = 138543362;
      v84 = v13;
      _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_ERROR, "copyWithNewUUID:%{public}@, unable to copy because this object has been invalidated.", buf, 0xCu);
    }

    v14 = 0;
LABEL_40:

    goto LABEL_41;
  }

  if (-[UAUserActivity needsSave](self, "needsSave") || (-[UAUserActivity dirtyPayloadIdentifiers](self, "dirtyPayloadIdentifiers"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 count], v15, v16))
  {
    v17 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      if (v3)
      {
        v18 = "-callDelegate-";
      }

      else
      {
        v18 = "-noDelegateCall-";
      }

      v19 = [(UAUserActivity *)self uniqueIdentifier];
      v20 = [v19 UUIDString];
      *buf = 136446466;
      v84 = v18;
      v85 = 2114;
      v86 = v20;
      _os_log_impl(&dword_226A4E000, v17, OS_LOG_TYPE_DEBUG, "copyWithNewUUID:%{public}s (%{public}@), calling delegate because .needSave == YES or it has dirty payloads", buf, 0x16u);
    }

    v21 = self;
    objc_sync_enter(v21);
    needsSave = v21->_needsSave;
    *&v21->_needsSave = 0;
    objc_sync_exit(v21);

    v23 = [(UAUserActivity *)v21 delegate];
    v24 = v23;
    if (v3)
    {
      if (needsSave && v23 && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v25 = [(UAUserActivity *)v21 willCallSaveSerializationQueue];
        dispatch_assert_queue_not_V2(v25);

        v26 = [(UAUserActivity *)v21 willCallSaveSerializationQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __44__UAUserActivity_Internal__copyWithNewUUID___block_invoke;
        block[3] = &unk_2785C39F8;
        block[4] = v21;
        v81 = v24;
        dispatch_sync(v26, block);
      }
    }

    else
    {

      v10 = 0;
    }
  }

  if (v10)
  {
    v10 = v10;
    objc_sync_enter(v10);
    v27 = self;
    objc_sync_enter(v27);
    v28 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v29 = [(UAUserActivity *)v27 uniqueIdentifier];
      v30 = [v29 UUIDString];
      v31 = [v10 uniqueIdentifier];
      v32 = [v31 UUIDString];
      *buf = 138543618;
      v84 = v30;
      v85 = 2114;
      v86 = v32;
      _os_log_impl(&dword_226A4E000, v28, OS_LOG_TYPE_DEBUG, "copyWithNewUUID(%{public}@), copying all properties over to new object %{public}@", buf, 0x16u);
    }

    v33 = [(UAUserActivity *)v27 originalUniqueIdentifier];
    v34 = v33;
    if (v33)
    {
      v35 = v33;
    }

    else
    {
      v35 = [(UAUserActivity *)v27 uniqueIdentifier];
    }

    v36 = *(v10 + 44);
    *(v10 + 44) = v35;

    v37 = [(UAUserActivity *)v27 title];
    v38 = [v37 copy];
    v39 = *(v10 + 2);
    *(v10 + 2) = v38;

    v40 = [(UAUserActivity *)v27 userInfo];
    if (v40)
    {
      v41 = [(UAUserActivity *)v27 userInfo];
      v42 = [v41 count] == 0;

      if (!v42)
      {
        v43 = [(UAUserActivity *)v27 userInfo];
        v44 = [v43 copy];
        v45 = *(v10 + 36);
        *(v10 + 36) = v44;
      }
    }

    v46 = [(NSURL *)v27->_webpageURL copy];
    v47 = *(v10 + 3);
    *(v10 + 3) = v46;

    v48 = [(NSURL *)v27->_referrerURL copy];
    v49 = *(v10 + 4);
    *(v10 + 4) = v48;

    v10[235] = 0;
    v10[109] = 0;
    *(v10 + 107) = 0;
    v10[180] = [(UAUserActivity *)v27 isEligibleForHandoff];
    v10[183] = [(UAUserActivity *)v27 isEligibleForPublicIndexing];
    v10[181] = [(UAUserActivity *)v27 isEligibleForSearch];
    v10[182] = [(UAUserActivity *)v27 isEligibleForReminders];
    v10[184] = [(UAUserActivity *)v27 isEligibleForPrediction];
    v50 = [(UAUserActivity *)v27 persistentIdentifier];
    v51 = *(v10 + 24);
    *(v10 + 24) = v50;

    v52 = [(UAUserActivity *)v27 keywords];
    v53 = [v52 copy];
    v54 = *(v10 + 16);
    *(v10 + 16) = v53;

    v55 = [(UAUserActivity *)v27 requiredUserInfoKeys];
    v56 = [v55 copy];
    v57 = *(v10 + 19);
    *(v10 + 19) = v56;

    v10[234] = [(UAUserActivity *)v27 isUniversalLink];
    v58 = [(UAUserActivity *)v27 contentUserAction];
    v59 = [v58 copy];
    v60 = *(v10 + 18);
    *(v10 + 18) = v59;

    v61 = [(UAUserActivity *)v27 expirationDate];
    v62 = [v61 copy];
    v63 = *(v10 + 17);
    *(v10 + 17) = v62;

    v64 = [(UAUserActivity *)v27 madeCurrentDate];
    v65 = *(v10 + 30);
    *(v10 + 30) = v64;

    v66 = [(UAUserActivity *)v27 madeCurrentEndDate];
    v67 = *(v10 + 31);
    *(v10 + 31) = v66;

    *(v10 + 32) = *&v27->_madeCurrentInterval;
    objc_storeStrong(v10 + 33, v27->_madeInitiallyCurrentDate);
    v78 = 0u;
    v79 = 0u;
    v76 = 0u;
    v77 = 0u;
    v68 = [(UAUserActivity *)v27 payloadIdentifiers];
    v69 = [v68 countByEnumeratingWithState:&v76 objects:v82 count:16];
    if (v69)
    {
      v70 = *v77;
      do
      {
        for (i = 0; i != v69; ++i)
        {
          if (*v77 != v70)
          {
            objc_enumerationMutation(v68);
          }

          v72 = *(*(&v76 + 1) + 8 * i);
          if (([v72 isEqual:@"UAUserActivityUserInfoPayload"] & 1) == 0 && (objc_msgSend(v72, "isEqual:", @"UAUserActivityStreamsPayload") & 1) == 0)
          {
            v73 = [(UAUserActivity *)v27 payloadForIdentifier:v72];
            [v10 setPayload:v73 object:0 identifier:v72 dirty:0];
          }
        }

        v69 = [v68 countByEnumeratingWithState:&v76 objects:v82 count:16];
      }

      while (v69);
    }

    *(v10 + 25) = 0;
    v10[104] = 0;
    v10[106] = 0;
    objc_sync_exit(v27);

    objc_sync_exit(v10);
    v14 = v10;
    goto LABEL_40;
  }

  v14 = 0;
LABEL_41:
  v74 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t __44__UAUserActivity_Internal__copyWithNewUUID___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  ++*(*(a1 + 32) + 120);
  objc_sync_exit(v2);

  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [*(a1 + 32) uniqueIdentifier];
    v5 = [v4 UUIDString];
    v6 = *(a1 + 32);
    v14 = 138543619;
    v15 = v5;
    v16 = 2113;
    v17 = v6;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "in async block, calling willSynchronizeActivity. self=%{public}@/%{private}@", &v14, 0x16u);
  }

  [*(a1 + 40) willSynchronizeActivity];
  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  --*(*(a1 + 32) + 120);
  *(*(a1 + 32) + 104) = *(*(a1 + 32) + 105);
  objc_sync_exit(v7);

  v8 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [*(a1 + 32) uniqueIdentifier];
    v10 = [v9 UUIDString];
    v11 = *(a1 + 32);
    v14 = 138543619;
    v15 = v10;
    v16 = 2113;
    v17 = v11;
    _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_DEBUG, "in async block, back from willSynchronizeActivity. self=%{public}@/%{private}@", &v14, 0x16u);
  }

  result = 0;
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)willSynchronizeUserActivityWithHandler:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(UAUserActivity *)self uniqueIdentifier];
    v7 = [v6 UUIDString];
    v18 = 138543619;
    v19 = v7;
    v20 = 2113;
    v21 = self;
    _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "self=%{public}@/%{private}@", &v18, 0x16u);
  }

  self->_lastSaveTime = 0.0;
  v8 = self;
  objc_sync_enter(v8);
  v9 = [(UAUserActivity *)v8 needsSave];
  objc_sync_exit(v8);

  v10 = [(UAUserActivity *)v8 delegate];
  if ([(UAUserActivity *)v8 isInvalidated])
  {
    v11 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [(UAUserActivity *)v8 uniqueIdentifier];
      v13 = [v12 UUIDString];
      v18 = 138543362;
      v19 = v13;
      _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_INFO, "willSynchronize was called after the UAUserActivity %{public}@ had been invalidated.", &v18, 0xCu);
    }

    v10 = 0;
    goto LABEL_12;
  }

  if (v10 == 0 || !v9)
  {
LABEL_12:
    if (v4)
    {
      v4[2](v4, 0);
    }

    goto LABEL_14;
  }

  [(UAUserActivity *)v8 sendUserActivityInfoToLSUserActivityd:0 onAsyncQueue:0];
  if (v4)
  {
    v14 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = [(UAUserActivity *)v8 uniqueIdentifier];
      v16 = [v15 UUIDString];
      v18 = 138543619;
      v19 = v16;
      v20 = 2113;
      v21 = v8;
      _os_log_impl(&dword_226A4E000, v14, OS_LOG_TYPE_DEBUG, "Calling completionHandler self=%{public}@/%{private}@", &v18, 0x16u);
    }

    v4[2](v4, 0);
  }

LABEL_14:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)didSynchronizeUserActivity
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [(UAUserActivity *)self uniqueIdentifier];
    v5 = [v4 UUIDString];
    *buf = 138543619;
    v19 = v5;
    v20 = 2113;
    v21 = self;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "self=%{public}@/%{private}@", buf, 0x16u);
  }

  v6 = [(UAUserActivity *)self delegate];
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__UAUserActivity_Internal__didSynchronizeUserActivity__block_invoke;
    v16[3] = &unk_2785C39F8;
    v16[4] = self;
    v17 = v6;
    dispatch_async(v7, v16);
  }

  else
  {
    v9 = [(UAUserActivity *)self options];
    if (v9)
    {
      v10 = [(UAUserActivity *)self options];
      v11 = [v10 objectForKeyedSubscript:*MEMORY[0x277CC1F38]];
      v12 = [v11 BOOLValue];

      if (v12)
      {
        v13 = _uaGetLogForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = [(UAUserActivity *)self uniqueIdentifier];
          v15 = [v14 UUIDString];
          *buf = 138543362;
          v19 = v15;
          _os_log_impl(&dword_226A4E000, v13, OS_LOG_TYPE_DEBUG, "UserActivity(%{public}@) has UAUserActivityOptionInvalidateAfterFetchKey = YES, so invalidating this activity because it has been continued.", buf, 0xCu);
        }

        [(UAUserActivity *)self invalidate];
      }
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __54__UAUserActivity_Internal__didSynchronizeUserActivity__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [*(a1 + 32) uniqueIdentifier];
    v5 = [v4 UUIDString];
    v6 = *(a1 + 32);
    v24 = 138543619;
    v25 = v5;
    v26 = 2113;
    v27 = v6;
    _os_log_impl(&dword_226A4E000, v3, OS_LOG_TYPE_DEBUG, "(on default queue) self=%{public}@/%{private}@", &v24, 0x16u);
  }

  v7 = *(a1 + 40);
  if (objc_opt_respondsToSelector())
  {
    v8 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [*(a1 + 32) uniqueIdentifier];
      v10 = [v9 UUIDString];
      v11 = *(a1 + 32);
      v24 = 138543619;
      v25 = v10;
      v26 = 2113;
      v27 = v11;
      _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_DEBUG, "--- calling delegate.didSynchronizeActivity self=%{public}@/%{private}@", &v24, 0x16u);
    }

    [*(a1 + 40) didSynchronizeActivity];
    v12 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = [*(a1 + 32) uniqueIdentifier];
      v14 = [v13 UUIDString];
      v15 = *(a1 + 32);
      v24 = 138543619;
      v25 = v14;
      v26 = 2113;
      v27 = v15;
      _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_DEBUG, "--- after calling delegate.didSynchronizeActivity self=%{public}@/%{private}@", &v24, 0x16u);
    }
  }

  v16 = [*(a1 + 32) options];
  if (v16)
  {
    v17 = [*(a1 + 32) options];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x277CC1F38]];
    v19 = [v18 BOOLValue];

    if (v19)
    {
      v20 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = [*(a1 + 32) uniqueIdentifier];
        v22 = [v21 UUIDString];
        v24 = 138543362;
        v25 = v22;
        _os_log_impl(&dword_226A4E000, v20, OS_LOG_TYPE_DEBUG, "UserActivity(%{public}@) has UAUserActivityOptionInvalidateAfterFetchKey = YES, so invalidating this activity because it has been continued.", &v24, 0xCu);
      }

      [*(a1 + 32) invalidate];
    }
  }

  objc_autoreleasePoolPop(v2);
  v23 = *MEMORY[0x277D85DE8];
}

- (void)didReceiveInputStream:(id)a3 outputStream:(id)a4
{
  v5 = [(UAUserActivity *)self delegate:a3];
  if (v5)
  {
    v6 = dispatch_get_global_queue(0, 0);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __63__UAUserActivity_Internal__didReceiveInputStream_outputStream___block_invoke;
    v7[3] = &unk_2785C39F8;
    v8 = v5;
    v9 = self;
    dispatch_async(v6, v7);
  }
}

void __63__UAUserActivity_Internal__didReceiveInputStream_outputStream___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  objc_opt_respondsToSelector();

  objc_autoreleasePoolPop(v2);
}

void __73__UAUserActivity_Internal__scheduleSendUserActivityInfoToLSUserActivityd__block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) scheduleSendUserActivityInfoToLSUserActivityd];

  objc_autoreleasePoolPop(v2);
}

- (id)userActivityInfoForSelfWithPayload:(BOOL)a3 options:(id)a4
{
  v4 = a3;
  v53 = *MEMORY[0x277D85DE8];
  v43 = a4;
  v6 = self;
  objc_sync_enter(v6);
  v7 = objc_alloc_init(UAUserActivityInfo);
  v8 = [(UAUserActivity *)v6 uniqueIdentifier];
  [(UAUserActivityInfo *)v7 setUuid:v8];

  [(UAUserActivityInfo *)v7 setType:[(UAUserActivity *)v6 suggestedActionType]];
  v9 = [(UAUserActivity *)v6 title];
  [(UAUserActivityInfo *)v7 setTitle:v9];

  [(UAUserActivityInfo *)v7 setActivityType:v6->_typeIdentifier];
  [(UAUserActivityInfo *)v7 setDynamicActivityType:v6->_dynamicIdentifier];
  v10 = [(UAUserActivity *)v6 teamIdentifier];
  [(UAUserActivityInfo *)v7 setTeamIdentifier:v10];

  [(UAUserActivityInfo *)v7 setWebpageURL:v6->_webpageURL];
  [(UAUserActivityInfo *)v7 setReferrerURL:v6->_referrerURL];
  [(UAUserActivityInfo *)v7 setTargetContentIdentifier:v6->_targetContentIdentifier];
  v11 = [MEMORY[0x277CBEAA8] date];
  [(UAUserActivityInfo *)v7 setWhen:v11];

  v12 = [(UAUserActivity *)v6 requiredUserInfoKeys];
  [(UAUserActivityInfo *)v7 setRequiredUserInfoKeys:v12];

  [(UAUserActivityInfo *)v7 setUniversalLink:[(UAUserActivity *)v6 isUniversalLink]];
  if (v4)
  {
    v13 = [(UAUserActivity *)v6 cachedEncodedUserInfo];

    if (v43 || !v13)
    {
      v17 = [(UAUserActivity *)v6 userInfo];
      v16 = deepMutableCopy(v17);
    }

    else
    {
      v14 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_226A4E000, v14, OS_LOG_TYPE_DEFAULT, "Using cached encoded userInfo to build ActivityInfo", buf, 2u);
      }

      v15 = [(UAUserActivity *)v6 cachedEncodedUserInfo];
      [(UAUserActivityInfo *)v7 setPayload:v15 identifier:@"UAUserActivityUserInfoPayload"];

      v16 = 0;
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v18 = [(UAUserActivity *)v6 payloadIdentifiers];
    v19 = [v18 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v19)
    {
      v20 = *v48;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v48 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v47 + 1) + 8 * i);
          v23 = [(UAUserActivity *)v6 payloadForIdentifier:v22];
          [(UAUserActivityInfo *)v7 setPayload:v23 identifier:v22];
        }

        v19 = [v18 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v19);
    }

    if (v6->_supportsContinuationStreams)
    {
      v24 = [(UAUserActivity *)v6 payloadForIdentifier:@"UAUserActivityStreamsPayload"];
      v25 = v24 == 0;

      if (v25)
      {
        advertiserCompletedGroup = v6->_advertiserCompletedGroup;
        if (advertiserCompletedGroup)
        {
          if (dispatch_group_wait(advertiserCompletedGroup, 0xEE6B280uLL))
          {
            v27 = 0;
            goto LABEL_23;
          }

          v42 = [(UAUserActivity *)v6 payloadForIdentifier:@"UAUserActivityStreamsPayload"];
          if (v42)
          {
            [(UAUserActivityInfo *)v7 setPayload:v42 identifier:@"UAUserActivityStreamsPayload"];
          }
        }
      }
    }

    else
    {
      [(UAUserActivityInfo *)v7 setPayload:0 identifier:@"UAUserActivityStreamsPayload"];
    }
  }

  else
  {
    v16 = 0;
  }

  v27 = 1;
LABEL_23:
  v28 = [(UAUserActivity *)v6 options];
  v29 = MEMORY[0x277CBEB38];
  if (v28)
  {
    v30 = [(UAUserActivity *)v6 options];
    v31 = [v29 dictionaryWithDictionary:v30];
  }

  else
  {
    v31 = [MEMORY[0x277CBEB38] dictionary];
  }

  if ([(UAUserActivity *)v6 userInfoContainsFileURLs])
  {
    [v31 setObject:MEMORY[0x277CBEC38] forKey:@"UAUserActivityContainsCloudDocsKey"];
  }

  if ([(UAUserActivity *)v6 encodedFileProviderURL])
  {
    [v31 setObject:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277CC1F28]];
  }

  [(UAUserActivityInfo *)v7 setEligibleForHandoff:[(UAUserActivity *)v6 isEligibleForHandoff]];
  [(UAUserActivityInfo *)v7 setEligibleForSearch:[(UAUserActivity *)v6 isEligibleForSearch]];
  [(UAUserActivityInfo *)v7 setEligibleForPublicIndexing:[(UAUserActivity *)v6 isEligibleForPublicIndexing]];
  [(UAUserActivityInfo *)v7 setEligibleForReminders:[(UAUserActivity *)v6 isEligibleForReminders]];
  [(UAUserActivityInfo *)v7 setEligibleForPrediction:[(UAUserActivity *)v6 isEligibleForPrediction]];
  v32 = [(UAUserActivity *)v6 persistentIdentifier];
  [(UAUserActivityInfo *)v7 setPersistentIdentifier:v32];

  v33 = [(UAUserActivity *)v6 contentUserAction];
  [(UAUserActivityInfo *)v7 setContentUserAction:v33];

  v34 = [(UAUserActivity *)v6 keywords];
  [(UAUserActivityInfo *)v7 setKeywords:v34];

  v35 = [(UAUserActivity *)v6 expirationDate];
  [(UAUserActivityInfo *)v7 setExpirationDate:v35];

  v36 = [v31 copy];
  [(UAUserActivityInfo *)v7 setOptions:v36];

  [(UAUserActivityInfo *)v7 setEncodingOptions:0];
  objc_sync_exit(v6);

  if (v16)
  {
    v37 = v27;
  }

  else
  {
    v37 = 0;
  }

  if (v37 == 1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([v16 count])
      {
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __71__UAUserActivity_Internal__userActivityInfoForSelfWithPayload_options___block_invoke;
        v44[3] = &unk_2785C3A20;
        v45 = v7;
        v46 = v6;
        [(UAUserActivity *)v6 synchronouslyEncodeUserInfo:v16 options:v43 completionHandler:v44];
      }
    }
  }

  if (v27)
  {
    v38 = v7;
  }

  else
  {
    v38 = 0;
  }

  v39 = v38;

  v40 = *MEMORY[0x277D85DE8];
  return v38;
}

void __71__UAUserActivity_Internal__userActivityInfoForSelfWithPayload_options___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v23 = v7;
  [*(a1 + 32) setPayload:v7 identifier:@"UAUserActivityUserInfoPayload"];
  if (v8)
  {
    v10 = [*(a1 + 40) options];
    v11 = MEMORY[0x277CBEB38];
    if (v10)
    {
      v12 = [*(a1 + 40) options];
      v13 = [v11 dictionaryWithDictionary:v12];
    }

    else
    {
      v13 = [MEMORY[0x277CBEB38] dictionary];
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = [v8 allKeys];
    v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v15)
    {
      v16 = *v25;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v25 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v24 + 1) + 8 * i);
          v19 = [v8 objectForKeyedSubscript:v18];
          [v13 setObject:v19 forKeyedSubscript:v18];
        }

        v15 = [v14 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v15);
    }

    v20 = [v8 objectForKeyedSubscript:*MEMORY[0x277CC1F30]];
    [*(a1 + 40) setEncodedContainsUnsynchronizedCloudDocument:{objc_msgSend(v20, "BOOLValue")}];

    v21 = [v13 copy];
    [*(a1 + 40) setOptions:v21];
  }

  [*(a1 + 32) setEncodedUserInfoError:v9];

  v22 = *MEMORY[0x277D85DE8];
}

- (id)callWillSaveDelegateIfDirtyAndPackageUpData:(BOOL)a3 options:(id)a4 clearDirty:(BOOL)a5
{
  v8 = a4;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v9 = [(UAUserActivity *)self willCallSaveSerializationQueue];
  dispatch_assert_queue_not_V2(v9);

  v10 = _uaGetLogForCategory(@"signposts");
  v11 = os_signpost_id_make_with_pointer(v10, self);

  v12 = _uaGetLogForCategory(@"signposts");
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_226A4E000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "callWillSaveDelegate", &unk_226A98EB7, buf, 2u);
  }

  v14 = [(UAUserActivity *)self willCallSaveSerializationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __91__UAUserActivity_Internal__callWillSaveDelegateIfDirtyAndPackageUpData_options_clearDirty___block_invoke;
  block[3] = &unk_2785C3A48;
  v22 = a3;
  v23 = a5;
  v20 = &v25;
  v21 = v11;
  block[4] = self;
  v19 = v8;
  v15 = v8;
  dispatch_sync(v14, block);

  v16 = v26[5];
  _Block_object_dispose(&v25, 8);

  return v16;
}

void __91__UAUserActivity_Internal__callWillSaveDelegateIfDirtyAndPackageUpData_options_clearDirty___block_invoke(uint64_t a1)
{
  v82 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  if (v2)
  {
    if (![v3 isInvalidated])
    {
      goto LABEL_8;
    }

LABEL_5:
    oslog = _uaGetLogForCategory(0);
    v61 = 1;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) uniqueIdentifier];
      v6 = [v5 UUIDString];
      *buf = 138543362;
      v79 = v6;
      _os_log_impl(&dword_226A4E000, oslog, OS_LOG_TYPE_INFO, "Refusing to consider calling delegate for %{public}@ because it has been invalidated.", buf, 0xCu);

      v61 = 1;
    }

    goto LABEL_49;
  }

  v4 = [v3 needsSave];
  if ([*(a1 + 32) isInvalidated])
  {
    goto LABEL_5;
  }

  if (v4)
  {
LABEL_8:
    v7 = 1;
LABEL_9:
    v8 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [*(a1 + 32) uniqueIdentifier];
      v10 = [v9 UUIDString];
      v11 = [*(a1 + 32) needsSave];
      v12 = @"NO";
      if (v11)
      {
        v12 = @"YES";
      }

      *buf = 138543618;
      v79 = v10;
      v80 = 2114;
      v81 = v12;
      _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_DEBUG, "for %{public}@: needsSave=%{public}@", buf, 0x16u);
    }

    if (*(a1 + 64))
    {
      v13 = 1000;
    }

    else
    {
      v13 = 0;
    }

    if ([*(a1 + 32) needsSave])
    {
      v14 = 100;
    }

    else
    {
      v14 = 0;
    }

    if ([*(a1 + 32) dirty])
    {
      v15 = 10;
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a1 + 32);
    objc_sync_enter(v16);
    *(*(a1 + 32) + 104) = 0;
    *(*(a1 + 32) + 105) = 0;
    [*(a1 + 32) setCachedEncodedUserInfo:0];
    objc_sync_exit(v16);

    oslog = [*(a1 + 32) delegate];
    v61 = v14 + v13 + v15;
    if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v17 = *(a1 + 32);
      objc_sync_enter(v17);
      ++*(*(a1 + 32) + 120);
      objc_sync_exit(v17);

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v18 = getUserActivityObserversCopy();
      v19 = [v18 countByEnumeratingWithState:&v71 objects:v77 count:16];
      if (v19)
      {
        v20 = *v72;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v72 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v71 + 1) + 8 * i);
            v23 = [*(a1 + 32) parentUserActivity];
            if (v23)
            {
              v24 = objc_opt_respondsToSelector();

              if (v24)
              {
                v25 = [*(a1 + 32) parentUserActivity];
                [v22 userActivityWillSynchronize:v25];
              }
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v71 objects:v77 count:16];
        }

        while (v19);
      }

      v26 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = [*(a1 + 32) uniqueIdentifier];
        v28 = [v27 UUIDString];
        v29 = *(a1 + 32);
        *buf = 138543619;
        v79 = v28;
        v80 = 2113;
        v81 = v29;
        _os_log_impl(&dword_226A4E000, v26, OS_LOG_TYPE_DEBUG, "--- in async block, calling willSynchronizeActivity. self=%{public}@/%{private}@", buf, 0x16u);
      }

      [oslog willSynchronizeActivity];
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v30 = getUserActivityObserversCopy();
      v31 = [v30 countByEnumeratingWithState:&v67 objects:v76 count:16];
      if (v31)
      {
        v32 = *v68;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v68 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v67 + 1) + 8 * j);
            v35 = [*(a1 + 32) parentUserActivity];
            if (v35)
            {
              v36 = objc_opt_respondsToSelector();

              if (v36)
              {
                v37 = [*(a1 + 32) parentUserActivity];
                [v34 userActivityWasSynchronized:v37];
              }
            }
          }

          v31 = [v30 countByEnumeratingWithState:&v67 objects:v76 count:16];
        }

        while (v31);
      }

      v38 = *(a1 + 32);
      objc_sync_enter(v38);
      --*(*(a1 + 32) + 120);
      *(*(a1 + 32) + 104) = *(*(a1 + 32) + 105);
      objc_sync_exit(v38);

      [*(a1 + 32) displayInDtrace];
      v39 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v40 = [*(a1 + 32) uniqueIdentifier];
        v41 = [v40 UUIDString];
        v42 = *(a1 + 32);
        *buf = 138543619;
        v79 = v41;
        v80 = 2113;
        v81 = v42;
        _os_log_impl(&dword_226A4E000, v39, OS_LOG_TYPE_DEBUG, "--- in async block, back from willSynchronizeActivity. self=%{public}@/%{private}@", buf, 0x16u);
      }
    }

LABEL_49:

    goto LABEL_50;
  }

  v7 = 0;
  v61 = 0;
  if ([*(a1 + 32) dirty])
  {
    goto LABEL_9;
  }

LABEL_50:
  if (*(a1 + 65) == 1)
  {
    v43 = *(a1 + 32);
    objc_sync_enter(v43);
    *(*(a1 + 32) + 106) = 0;
    v44 = *(a1 + 32);
    if (v44[104] == 1)
    {
      [v44 setDirty:1];
    }

    objc_sync_exit(v43);
  }

  v45 = _uaGetLogForCategory(@"signposts");
  v46 = v45;
  v47 = *(a1 + 56);
  if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
  {
    *buf = 67240192;
    LODWORD(v79) = v61;
    _os_signpost_emit_with_name_impl(&dword_226A4E000, v46, OS_SIGNPOST_INTERVAL_END, v47, "callWillSaveDelegate", "why=%{public}d enableTelemetry=YES ", buf, 8u);
  }

  v48 = [*(a1 + 32) userActivityInfoForSelfWithPayload:1 options:*(a1 + 40)];
  v49 = *(*(a1 + 48) + 8);
  v50 = *(v49 + 40);
  *(v49 + 40) = v48;

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v51 = getUserActivityObserversCopy();
  v52 = 0;
  v53 = [v51 countByEnumeratingWithState:&v63 objects:v75 count:16];
  if (v53)
  {
    v54 = *v64;
    do
    {
      for (k = 0; k != v53; ++k)
      {
        if (*v64 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v63 + 1) + 8 * k);
        v57 = [*(a1 + 32) parentUserActivity];
        if (v57)
        {
          v58 = objc_opt_respondsToSelector();

          if (v58)
          {
            if (!v52)
            {
              v52 = [*(*(*(a1 + 48) + 8) + 40) archiveUserActivityInfo];
            }

            v59 = [*(a1 + 32) parentUserActivity];
            [v56 userActivityWasSerialized:v59 archived:v52];
          }
        }
      }

      v53 = [v51 countByEnumeratingWithState:&v63 objects:v75 count:16];
    }

    while (v53);
  }

  v60 = *MEMORY[0x277D85DE8];
}

- (id)callWillSaveDelegateIfDirtyAndPackageUpData:(BOOL)a3 options:(id)a4 clearDirty:(BOOL)a5 completionHandler:(id)a6
{
  v9 = a4;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy_;
  v30 = __Block_byref_object_dispose_;
  v31 = 0;
  v10 = [(UAUserActivity *)self willCallSaveSerializationQueue];
  dispatch_assert_queue_not_V2(v10);

  v11 = _uaGetLogForCategory(@"signposts");
  v12 = os_signpost_id_make_with_pointer(v11, self);

  v13 = _uaGetLogForCategory(@"signposts");
  v14 = v13;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_226A4E000, v14, OS_SIGNPOST_INTERVAL_BEGIN, v12, "callWillSaveDelegate", &unk_226A98EB7, buf, 2u);
  }

  v15 = [(UAUserActivity *)self willCallSaveSerializationQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __109__UAUserActivity_Internal__callWillSaveDelegateIfDirtyAndPackageUpData_options_clearDirty_completionHandler___block_invoke;
  block[3] = &unk_2785C3A48;
  v23 = a3;
  v24 = a5;
  v21 = &v26;
  v22 = v12;
  block[4] = self;
  v20 = v9;
  v16 = v9;
  dispatch_sync(v15, block);

  v17 = v27[5];
  _Block_object_dispose(&v26, 8);

  return v17;
}

void __109__UAUserActivity_Internal__callWillSaveDelegateIfDirtyAndPackageUpData_options_clearDirty_completionHandler___block_invoke(uint64_t a1)
{
  v82 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  if (v2)
  {
    if (![v3 isInvalidated])
    {
      goto LABEL_8;
    }

LABEL_5:
    oslog = _uaGetLogForCategory(0);
    v61 = 1;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      v5 = [*(a1 + 32) uniqueIdentifier];
      v6 = [v5 UUIDString];
      *buf = 138543362;
      v79 = v6;
      _os_log_impl(&dword_226A4E000, oslog, OS_LOG_TYPE_INFO, "Refusing to consider calling delegate for %{public}@ because it has been invalidated.", buf, 0xCu);

      v61 = 1;
    }

    goto LABEL_49;
  }

  v4 = [v3 needsSave];
  if ([*(a1 + 32) isInvalidated])
  {
    goto LABEL_5;
  }

  if (v4)
  {
LABEL_8:
    v7 = 1;
LABEL_9:
    v8 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = [*(a1 + 32) uniqueIdentifier];
      v10 = [v9 UUIDString];
      v11 = [*(a1 + 32) needsSave];
      v12 = @"NO";
      if (v11)
      {
        v12 = @"YES";
      }

      *buf = 138543618;
      v79 = v10;
      v80 = 2114;
      v81 = v12;
      _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_DEBUG, "for %{public}@: needsSave=%{public}@", buf, 0x16u);
    }

    if (*(a1 + 64))
    {
      v13 = 1000;
    }

    else
    {
      v13 = 0;
    }

    if ([*(a1 + 32) needsSave])
    {
      v14 = 100;
    }

    else
    {
      v14 = 0;
    }

    if ([*(a1 + 32) dirty])
    {
      v15 = 10;
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a1 + 32);
    objc_sync_enter(v16);
    *(*(a1 + 32) + 104) = 0;
    *(*(a1 + 32) + 105) = 0;
    [*(a1 + 32) setCachedEncodedUserInfo:0];
    objc_sync_exit(v16);

    oslog = [*(a1 + 32) delegate];
    v61 = v14 + v13 + v15;
    if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v17 = *(a1 + 32);
      objc_sync_enter(v17);
      ++*(*(a1 + 32) + 120);
      objc_sync_exit(v17);

      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v18 = getUserActivityObserversCopy();
      v19 = [v18 countByEnumeratingWithState:&v71 objects:v77 count:16];
      if (v19)
      {
        v20 = *v72;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v72 != v20)
            {
              objc_enumerationMutation(v18);
            }

            v22 = *(*(&v71 + 1) + 8 * i);
            v23 = [*(a1 + 32) parentUserActivity];
            if (v23)
            {
              v24 = objc_opt_respondsToSelector();

              if (v24)
              {
                v25 = [*(a1 + 32) parentUserActivity];
                [v22 userActivityWillSynchronize:v25];
              }
            }
          }

          v19 = [v18 countByEnumeratingWithState:&v71 objects:v77 count:16];
        }

        while (v19);
      }

      v26 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        v27 = [*(a1 + 32) uniqueIdentifier];
        v28 = [v27 UUIDString];
        v29 = *(a1 + 32);
        *buf = 138543619;
        v79 = v28;
        v80 = 2113;
        v81 = v29;
        _os_log_impl(&dword_226A4E000, v26, OS_LOG_TYPE_DEBUG, "--- in async block, calling willSynchronizeActivity. self=%{public}@/%{private}@", buf, 0x16u);
      }

      [oslog willSynchronizeActivity];
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v30 = getUserActivityObserversCopy();
      v31 = [v30 countByEnumeratingWithState:&v67 objects:v76 count:16];
      if (v31)
      {
        v32 = *v68;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v68 != v32)
            {
              objc_enumerationMutation(v30);
            }

            v34 = *(*(&v67 + 1) + 8 * j);
            v35 = [*(a1 + 32) parentUserActivity];
            if (v35)
            {
              v36 = objc_opt_respondsToSelector();

              if (v36)
              {
                v37 = [*(a1 + 32) parentUserActivity];
                [v34 userActivityWasSynchronized:v37];
              }
            }
          }

          v31 = [v30 countByEnumeratingWithState:&v67 objects:v76 count:16];
        }

        while (v31);
      }

      v38 = *(a1 + 32);
      objc_sync_enter(v38);
      --*(*(a1 + 32) + 120);
      *(*(a1 + 32) + 104) = *(*(a1 + 32) + 105);
      objc_sync_exit(v38);

      [*(a1 + 32) displayInDtrace];
      v39 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        v40 = [*(a1 + 32) uniqueIdentifier];
        v41 = [v40 UUIDString];
        v42 = *(a1 + 32);
        *buf = 138543619;
        v79 = v41;
        v80 = 2113;
        v81 = v42;
        _os_log_impl(&dword_226A4E000, v39, OS_LOG_TYPE_DEBUG, "--- in async block, back from willSynchronizeActivity. self=%{public}@/%{private}@", buf, 0x16u);
      }
    }

LABEL_49:

    goto LABEL_50;
  }

  v7 = 0;
  v61 = 0;
  if ([*(a1 + 32) dirty])
  {
    goto LABEL_9;
  }

LABEL_50:
  if (*(a1 + 65) == 1)
  {
    v43 = *(a1 + 32);
    objc_sync_enter(v43);
    *(*(a1 + 32) + 106) = 0;
    v44 = *(a1 + 32);
    if (v44[104] == 1)
    {
      [v44 setDirty:1];
    }

    objc_sync_exit(v43);
  }

  v45 = _uaGetLogForCategory(@"signposts");
  v46 = v45;
  v47 = *(a1 + 56);
  if (v47 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v45))
  {
    *buf = 67240192;
    LODWORD(v79) = v61;
    _os_signpost_emit_with_name_impl(&dword_226A4E000, v46, OS_SIGNPOST_INTERVAL_END, v47, "callWillSaveDelegate", "why=%{public}d enableTelemetry=YES ", buf, 8u);
  }

  v48 = [*(a1 + 32) userActivityInfoForSelfWithPayload:1 options:*(a1 + 40)];
  v49 = *(*(a1 + 48) + 8);
  v50 = *(v49 + 40);
  *(v49 + 40) = v48;

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  v51 = getUserActivityObserversCopy();
  v52 = 0;
  v53 = [v51 countByEnumeratingWithState:&v63 objects:v75 count:16];
  if (v53)
  {
    v54 = *v64;
    do
    {
      for (k = 0; k != v53; ++k)
      {
        if (*v64 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v63 + 1) + 8 * k);
        v57 = [*(a1 + 32) parentUserActivity];
        if (v57)
        {
          v58 = objc_opt_respondsToSelector();

          if (v58)
          {
            if (!v52)
            {
              v52 = [*(*(*(a1 + 48) + 8) + 40) archiveUserActivityInfo];
            }

            v59 = [*(a1 + 32) parentUserActivity];
            [v56 userActivityWasSerialized:v59 archived:v52];
          }
        }
      }

      v53 = [v51 countByEnumeratingWithState:&v63 objects:v75 count:16];
    }

    while (v53);
  }

  v60 = *MEMORY[0x277D85DE8];
}

void __79__UAUserActivity_Internal__sendUserActivityInfoToLSUserActivityd_onAsyncQueue___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) sendUserActivityInfoToLSUserActivityd:*(a1 + 40) onAsyncQueue:0];

  objc_autoreleasePoolPop(v2);
}

- (int64_t)priority
{
  v3 = [(UAUserActivity *)self options];
  v4 = [v3 allKeys];
  v5 = [v4 containsObject:@"UserActivityPriority"];

  if (!v5)
  {
    return 0;
  }

  v6 = [(UAUserActivity *)self options];
  v7 = [v6 objectForKeyedSubscript:@"UserActivityPriority"];
  v8 = [v7 integerValue];

  return v8;
}

+ (BOOL)checkWebpageURL:(id)a3 actionType:(unint64_t)a4 throwIfFailed:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = v8;
  v10 = 0;
  v11 = 1;
  if (v8 && a4 != 10)
  {
    v12 = [v8 scheme];
    v13 = [v12 lowercaseString];
    v10 = [v13 copy];

    if (v10)
    {
      v14 = [a1 allowedWebpageURLSchemes];
      v11 = [v14 containsObject:v10];

      if (v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = 0;
    }

    if (v5)
    {
      v16 = MEMORY[0x277CBEAD8];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"NSUserActivity.webpageURL scheme %@ is not allowed.", v10];
      v18 = [v16 exceptionWithName:*MEMORY[0x277CBE660] reason:v17 userInfo:0];
      v19 = v18;

      objc_exception_throw(v18);
    }
  }

LABEL_8:

  return v11;
}

- (void)advertiser:(id)a3 didReceiveInputStream:(id)a4 outputStream:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(UAUserActivity *)self delegate];
  if (v9)
  {
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__UAUserActivity_Internal__advertiser_didReceiveInputStream_outputStream___block_invoke;
    block[3] = &unk_2785C3A70;
    v12 = v9;
    v13 = v7;
    v14 = v8;
    dispatch_async(v10, block);
  }
}

void __74__UAUserActivity_Internal__advertiser_didReceiveInputStream_outputStream___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) didReceiveInputStream:*(a1 + 40) outputStream:*(a1 + 48)];
  }

  objc_autoreleasePoolPop(v2);
}

+ (BOOL)isIndexPendingForUUID:(id)a3
{
  v3 = a3;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = getIndexPendingQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = ___ZL21isIndexPendingForUUIDP6NSUUID_block_invoke;
  v7[3] = &unk_2785C3BD8;
  v8 = v3;
  v9 = &v10;
  v5 = v3;
  dispatch_sync(v4, v7);

  LOBYTE(v4) = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v4;
}

+ (id)registerForSuggestedActionNudgeOfType:(unint64_t)a3 withOptions:(id)a4 block:(id)a5
{
  v5 = a5;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v6 = suggestedActionNudgesQueue();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__UAUserActivity_Nudges__registerForSuggestedActionNudgeOfType_withOptions_block___block_invoke;
  v10[3] = &unk_2785C3A98;
  v11 = v5;
  v12 = &v13;
  v7 = v5;
  dispatch_sync(v6, v10);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

uint64_t __82__UAUserActivity_Nudges__registerForSuggestedActionNudgeOfType_withOptions_block___block_invoke(uint64_t a1)
{
  if (!suggestedActionNudges)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3 = suggestedActionNudges;
    suggestedActionNudges = v2;
  }

  v4 = _ZZZ82__UAUserActivity_Nudges__registerForSuggestedActionNudgeOfType_withOptions_block__EUb_E7sNextID++;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  if ([suggestedActionNudges count])
  {
    v8 = 0;
  }

  else
  {
    v8 = springBoardEventToken == 0;
  }

  if (v8)
  {
    v9 = suggestedActionNudgesQueue();
    notify_register_dispatch("com.apple.sharing.SpringBoard.startDiscovery", &springBoardEventToken, v9, &__block_literal_global_914);
  }

  v10 = suggestedActionNudges;
  v11 = _Block_copy(*(a1 + 32));
  v12 = *(*(*(a1 + 40) + 8) + 40);

  return [v10 setObject:v11 forKey:v12];
}

+ (void)unregisterForSuggestedActionNudgeOfType:(id)a3
{
  v3 = a3;
  v4 = suggestedActionNudgesQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__UAUserActivity_Nudges__unregisterForSuggestedActionNudgeOfType___block_invoke;
  block[3] = &unk_2785C37B0;
  v7 = v3;
  v5 = v3;
  dispatch_sync(v4, block);
}

uint64_t __66__UAUserActivity_Nudges__unregisterForSuggestedActionNudgeOfType___block_invoke(uint64_t a1)
{
  v2 = [suggestedActionNudges objectForKey:*(a1 + 32)];
  if (v2)
  {
    _Block_release(v2);
  }

  [suggestedActionNudges removeObjectForKey:*(a1 + 32)];
  result = [suggestedActionNudges count];
  if (!result)
  {
    result = springBoardEventToken;
    if (springBoardEventToken)
    {
      result = notify_cancel(springBoardEventToken);
      springBoardEventToken = 0;
    }
  }

  return result;
}

+ (BOOL)currentUserActivityUUIDWithOptions:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[UAUserActivityManager defaultManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __96__UAUserActivity_UAUserActivityReminders__currentUserActivityUUIDWithOptions_completionHandler___block_invoke;
  v11[3] = &unk_2785C3AC0;
  v8 = v6;
  v12 = v8;
  v9 = [v7 currentUserActivityUUIDWithOptions:v5 completionHandler:v11];

  return v9;
}

+ (BOOL)determineIfUserActivityIsCurrent:(id)a3 completionHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = +[UAUserActivityManager defaultManager];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __94__UAUserActivity_UAUserActivityReminders__determineIfUserActivityIsCurrent_completionHandler___block_invoke;
  v11[3] = &unk_2785C3AE8;
  v8 = v6;
  v12 = v8;
  v9 = [v7 determineIfUserActivityIsCurrent:v5 completionHandler:v11];

  return v9;
}

+ (BOOL)currentUserActivityProxiesWithOptions:(id)a3 matching:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = +[UAUserActivityManager defaultManager];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __108__UAUserActivity_UAUserActivityReminders__currentUserActivityProxiesWithOptions_matching_completionHandler___block_invoke;
    v12[3] = &unk_2785C3B10;
    v13 = v9;
    [v10 currentUserActivityProxiesWithOptions:v7 predicate:v8 completionHandler:v12];
  }

  return v9 != 0;
}

void __108__UAUserActivity_UAUserActivityReminders__currentUserActivityProxiesWithOptions_matching_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v5 description];
      v9 = stringRemovingNewlines(v8);
      v11 = 138543618;
      v12 = v9;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_ERROR, " proxies=%{public}@ error=%{public}@", &v11, 0x16u);
    }
  }

  (*(*(a1 + 32) + 16))();

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setContentUserAction:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (differ(v7, v4->_contentUserAction))
  {
    v5 = [(objc_object *)v7 copy];
    contentUserAction = v4->_contentUserAction;
    v4->_contentUserAction = v5;

    [(UAUserActivity *)v4 setDirty:1];
  }

  objc_sync_exit(v4);
}

- (void)setExpirationDate:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (differ(v7, v4->_expirationDate))
  {
    v5 = [(objc_object *)v7 copy];
    expirationDate = v4->_expirationDate;
    v4->_expirationDate = v5;

    [(UAUserActivity *)v4 setForceImmediateSendToServer:1];
    [(UAUserActivity *)v4 setDirty:1];
  }

  objc_sync_exit(v4);
}

- (void)setKeywords:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v9 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [MEMORY[0x277CBEB98] setWithArray:v9];

      v9 = v5;
    }
  }

  else
  {
    v9 = 0;
  }

  v6 = self;
  objc_sync_enter(v6);
  if (differ(v9, v6->_keywords))
  {
    if (v9)
    {
      v7 = [(objc_object *)v9 copy];
    }

    else
    {
      v7 = [MEMORY[0x277CBEB98] set];
    }

    keywords = v6->_keywords;
    v6->_keywords = v7;

    [(UAUserActivity *)v6 setDirty:1];
  }

  objc_sync_exit(v6);
}

- (void)setRequiredUserInfoKeys:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  if (differ(v8, v4->_requiredUserInfoKeys))
  {
    v5 = v8;
    if (v8)
    {
      v5 = [(objc_object *)v8 copy];
    }

    requiredUserInfoKeys = v4->_requiredUserInfoKeys;
    v4->_requiredUserInfoKeys = v5;

    savedUserInfo = v4->_savedUserInfo;
    v4->_savedUserInfo = 0;

    [(UAUserActivity *)v4 setDirty:1];
  }

  objc_sync_exit(v4);
}

- (void)addKeywordsFromArray:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v6 = [MEMORY[0x277CBEB58] setWithSet:v5->_keywords];
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __63__UAUserActivity_UAUserActivityAppLinks__addKeywordsFromArray___block_invoke;
    v13 = &unk_2785C3B38;
    v7 = v6;
    v14 = v7;
    v15 = &v16;
    [v4 enumerateObjectsUsingBlock:&v10];
    if (*(v17 + 24) == 1)
    {
      v8 = [v7 copy];
      keywords = v5->_keywords;
      v5->_keywords = v8;

      [(UAUserActivity *)v5 setDirty:1];
    }

    _Block_object_dispose(&v16, 8);
    objc_sync_exit(v5);
  }
}

void __63__UAUserActivity_UAUserActivityAppLinks__addKeywordsFromArray___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([*(a1 + 32) containsObject:v3] & 1) == 0)
    {
      [*(a1 + 32) addObject:v3];
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

- (void)setEligibleForHandoff:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_eligibleForHandoff != v3)
  {
    obj->_eligibleForHandoff = v3;
    [(UAUserActivity *)obj setDirty:1];
    [(UAUserActivity *)obj setForceImmediateSendToServer:1];
    v4 = [(UAUserActivity *)obj manager];
    v5 = [v4 userActivityIsActive:obj];

    if (v5)
    {
      [(UAUserActivity *)obj scheduleSendUserActivityInfoToLSUserActivityd];
    }
  }

  objc_sync_exit(obj);
}

- (void)setEligibleForSearch:(BOOL)a3
{
  v3 = a3;
  v17 = *MEMORY[0x277D85DE8];
  v4 = self;
  objc_sync_enter(v4);
  if (v4->_eligibleForSearch != v3)
  {
    v5 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(UAUserActivity *)v4 uniqueIdentifier];
      v7 = [v6 UUIDString];
      v8 = v7;
      v9 = "NO";
      if (v3)
      {
        v9 = "YES";
      }

      v13 = 138543618;
      v14 = v7;
      v15 = 2080;
      v16 = v9;
      _os_log_impl(&dword_226A4E000, v5, OS_LOG_TYPE_DEBUG, "setEligibleForSearch(%{public}@)=%s", &v13, 0x16u);
    }

    v4->_eligibleForSearch = v3;
  }

  if (v3)
  {
    v10 = [(UAUserActivity *)v4 manager];
    v11 = [v10 userActivityIsActive:v4];

    if (v11)
    {
      [(UAUserActivity *)v4 indexActivity:1 forceIndexing:0.0];
    }
  }

  objc_sync_exit(v4);

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setEligibleForReminders:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_eligibleForReminders != v3)
  {
    obj->_eligibleForReminders = v3;
    [(UAUserActivity *)obj setDirty:1];
  }

  objc_sync_exit(obj);
}

- (void)setEligibleForPublicIndexing:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_eligibleForPublicIndexing != v3)
  {
    obj->_eligibleForPublicIndexing = v3;
    [(UAUserActivity *)obj setDirty:1];
  }

  objc_sync_exit(obj);
}

- (UAUserActivity)initWithUserActivityStrings:(id)a3 optionalString:(id)a4 tertiaryData:(id)a5 options:(id)a6
{
  v74 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v53 = a4;
  v51 = a5;
  v52 = a6;
  v56 = v10;
  v58 = self;
  if (([v10 hasPrefix:@"v1/"] & 1) == 0 && (!objc_msgSend(v10, "hasPrefix:", @"v1.") || !objc_msgSend(v10, "containsString:", @"/")))
  {
    v60 = 0;
    v61 = 0;
    v62 = 0;
    obj = 0;
    v57 = 0;
    v54 = 0;
    v22 = 0;
    v23 = self;
    goto LABEL_80;
  }

  v11 = [MEMORY[0x277CCAC80] scannerWithString:v10];
  v72 = 0;
  [v11 scanUpToString:@"/" intoString:&v72];
  v63 = v72;
  [v11 scanString:@"/" intoString:0];
  v71 = 0;
  v12 = [v11 scanUpToString:@"/" intoString:&v71];
  v13 = v71;
  v62 = v13;
  if (v12)
  {
    v14 = [v13 stringByRemovingPercentEncoding];

    v62 = v14;
    [v11 scanString:@"/" intoString:0];
  }

  v50 = 0;
  v54 = 0;
  v57 = 0;
  v60 = 0;
  v61 = 0;
  obj = 0;
  while (([v11 isAtEnd] & 1) == 0 && (objc_msgSend(v11, "scanString:intoString:", @"/", 0) & 1) == 0)
  {
    v15 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"=&/"];
    v70 = 0;
    v16 = [v11 scanUpToCharactersFromSet:v15 intoString:&v70];
    v17 = v70;

    if (!v16 || ![v11 scanString:@"=" intoString:0] || (+[UAUserActivity _decodeFromScanner:](UAUserActivity, "_decodeFromScanner:", v11), (v18 = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_35:

      break;
    }

    if ([v17 isEqual:@"t"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = obj;
        obj = v18;
LABEL_25:
        v20 = v18;

        goto LABEL_26;
      }
    }

    if ([v17 isEqual:@"u"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v61;
        v61 = v18;
        goto LABEL_25;
      }
    }

    if ([v17 isEqual:@"url"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v60;
        v60 = v18;
        goto LABEL_25;
      }
    }

    if ([v17 isEqual:@"referrer"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v57;
        v57 = v18;
        goto LABEL_25;
      }
    }

    if ([v17 isEqual:@"targetIdentifier"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = v54;
        v54 = v18;
        goto LABEL_25;
      }
    }

    if ([v17 isEqual:@"universalLink"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v50 = [v18 BOOLValue];
      }
    }

LABEL_26:

    if ([v11 isAtEnd])
    {
      goto LABEL_35;
    }

    v21 = [v11 scanString:@"&" intoString:0];

    if ((v21 & 1) == 0)
    {
      break;
    }
  }

  if (v61)
  {
    v24 = MEMORY[0x277CBEB98];
    v25 = [v61 allKeys];
    v22 = [v24 setWithArray:v25];
  }

  else
  {
    v22 = 0;
  }

  if (v53 && v62)
  {
    v64 = [MEMORY[0x277CCAC80] scannerWithString:v53];
    while (([v64 isAtEnd] & 1) == 0)
    {
      if ([v64 isAtEnd])
      {
        v28 = 0;
LABEL_71:

        break;
      }

      v26 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"=&/"];
      v69 = 0;
      v27 = [v64 scanUpToCharactersFromSet:v26 intoString:&v69];
      v28 = v69;

      if (!v27)
      {
        goto LABEL_71;
      }

      if ([v64 scanString:@"=" intoString:0])
      {
        v55 = [UAUserActivity _decodeFromScanner:v64];
        if ([v28 isEqual:@"ue"])
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v61)
            {
              [MEMORY[0x277CBEB38] dictionaryWithDictionary:?];
            }

            else
            {
              [MEMORY[0x277CBEB38] dictionary];
            }
            v29 = ;
            v30 = v55;
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v68 = 0u;
            v31 = [v30 allKeys];
            v32 = [v31 countByEnumeratingWithState:&v65 objects:v73 count:16];
            if (v32)
            {
              v33 = *v66;
              do
              {
                for (i = 0; i != v32; ++i)
                {
                  if (*v66 != v33)
                  {
                    objc_enumerationMutation(v31);
                  }

                  v35 = *(*(&v65 + 1) + 8 * i);
                  if (([v22 containsObject:v35] & 1) == 0)
                  {
                    v36 = [v30 objectForKeyedSubscript:v35];
                    [v29 setObject:v36 forKeyedSubscript:v35];
                  }
                }

                v32 = [v31 countByEnumeratingWithState:&v65 objects:v73 count:16];
              }

              while (v32);
            }

            [(UAUserActivity *)v58 setRequiredUserInfoKeys:v22];
            v37 = [v29 copy];

            v61 = v37;
          }
        }
      }

      if (([v64 scanString:@"&" intoString:0] & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    if (!v60)
    {
LABEL_73:
      v23 = 0;
      v38 = v58;
LABEL_74:
      if ([v52 count])
      {
        v39 = v52;
      }

      else
      {
        v39 = 0;
      }

      v40 = [(UAUserActivity *)v38 initDynamicActivityWithTypeIdentifier:v62 dynamicIdentifier:0 suggestedActionType:1 options:v39];
      v41 = v40;
      if (v40)
      {
        objc_storeStrong((v40 + 16), obj);
        if (v61)
        {
          v42 = [v61 copy];
        }

        else
        {
          v42 = [MEMORY[0x277CBEAC0] dictionary];
        }

        userInfo = v41->_userInfo;
        v41->_userInfo = v42;

        [(UAUserActivity *)v41 setWebpageURL:v23];
        if (v57)
        {
          v44 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v57];
        }

        else
        {
          v44 = 0;
        }

        [(UAUserActivity *)v41 setReferrerURL:v44];
        if (v57)
        {
        }

        if (v22)
        {
          v45 = [v22 copy];
        }

        else
        {
          v45 = [MEMORY[0x277CBEB98] set];
        }

        requiredUserInfoKeys = v41->_requiredUserInfoKeys;
        v41->_requiredUserInfoKeys = v45;

        [(UAUserActivity *)v41 setTargetContentIdentifier:v54];
        [(UAUserActivity *)v41 setUniversalLink:v50 & 1];
        v58 = v41;
        goto LABEL_91;
      }

LABEL_80:
      v58 = 0;
      goto LABEL_91;
    }
  }

  else
  {
    if (!v62)
    {
      v62 = 0;
      v23 = self;
      goto LABEL_80;
    }

    if (!v60)
    {
      goto LABEL_73;
    }
  }

  v38 = v58;
  v23 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:v60];
  if (!v23 || [objc_opt_class() checkWebpageURL:v23 actionType:1 throwIfFailed:0])
  {
    goto LABEL_74;
  }

LABEL_91:

  v47 = v58;
  v48 = *MEMORY[0x277D85DE8];
  return v47;
}

- (UAUserActivity)initWithUserActivityData:(id)a3 options:(id)a4
{
  v5 = a3;
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAAC8]) initForReadingFromData:v5 error:0];
    v7 = objc_opt_class();
    v8 = *MEMORY[0x277CCA308];
    v15 = 0;
    v9 = [v6 decodeTopLevelObjectOfClass:v7 forKey:v8 error:&v15];
    v10 = v15;
    if (v9)
    {
      v11 = [MEMORY[0x277CCAD78] UUID];
      [v9 setUuid:v11];

      v12 = +[UAUserActivityManager defaultManager];
      v13 = [(UAUserActivity *)self initWithManager:v12 userActivityInfo:v9];
    }

    else
    {
      v12 = self;
      v13 = 0;
    }

    [v6 finishDecoding];
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

- (id)createUserActivityStringsWithSaving:(BOOL)a3 options:(id)a4 optionalString:(id *)a5 data:(id *)a6 error:(id *)a7
{
  v10 = a3;
  v12 = a4;
  v13 = v10 && [(UAUserActivity *)self needsSave];
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v21 = [(UAUserActivity *)self _encodeIntoUserActivityStringWithSave:v13 options:v12 optionalString:&v24 optionalData:&v23 error:&v22];
  v14 = v24;
  v15 = v24;
  v16 = v23;
  v17 = v23;
  v18 = v22;
  v19 = v22;
  if (a5)
  {
    objc_storeStrong(a5, v14);
  }

  if (a6)
  {
    objc_storeStrong(a6, v16);
  }

  if (a7)
  {
    objc_storeStrong(a7, v18);
  }

  return v21;
}

- (BOOL)createUserActivityStringsWithSaving:(BOOL)a3 options:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (v6 && [(UAUserActivity *)self needsSave])
  {
    v10 = dispatch_get_global_queue(0, 0);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __112__UAUserActivity_UAUserActivityAppLinksEncoding__createUserActivityStringsWithSaving_options_completionHandler___block_invoke;
    v13[3] = &unk_2785C3B88;
    v13[4] = self;
    v16 = v6;
    v14 = v8;
    v15 = v9;
    dispatch_async(v10, v13);

    v11 = 1;
  }

  else
  {
    v11 = [(UAUserActivity *)self _encodeIntoUserActivityStringWithSave:0 options:v8 completionHandler:v9];
  }

  return v11;
}

void __112__UAUserActivity_UAUserActivityAppLinksEncoding__createUserActivityStringsWithSaving_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __112__UAUserActivity_UAUserActivityAppLinksEncoding__createUserActivityStringsWithSaving_options_completionHandler___block_invoke_2;
  v6[3] = &unk_2785C3B60;
  v7 = *(a1 + 48);
  if (([v4 _encodeIntoUserActivityStringWithSave:v3 options:v5 completionHandler:v6] & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
  }

  objc_autoreleasePoolPop(v2);
}

- (id)_encodeIntoUserActivityDataWithSave:(BOOL)a3 options:(id)a4 error:(id *)a5
{
  v5 = a3;
  v7 = a4;
  if (v5)
  {
    [(UAUserActivity *)self callWillSaveDelegateIfDirtyAndPackageUpData:1 options:v7 clearDirty:0];
  }

  else
  {
    [(UAUserActivity *)self userActivityInfoForSelfWithPayload:1 options:v7];
  }
  v8 = ;
  [v8 setUuid:0];
  v9 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v9 encodeObject:v8 forKey:*MEMORY[0x277CCA308]];
  [v9 finishEncoding];
  v10 = [v9 encodedData];

  return v10;
}

- (id)createUserActivityDataWithSaving:(BOOL)a3 options:(id)a4 error:(id *)a5
{
  v6 = a3;
  v8 = a4;
  v9 = v6 && [(UAUserActivity *)self needsSave];
  v10 = [(UAUserActivity *)self _encodeIntoUserActivityDataWithSave:v9 options:v8 error:a5];

  return v10;
}

- (BOOL)createUserActivityDataWithSaving:(BOOL)a3 options:(id)a4 completionHandler:(id)a5
{
  v6 = a3;
  v8 = a4;
  v9 = a5;
  if (v6 && [(UAUserActivity *)self needsSave])
  {
    v10 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __109__UAUserActivity_UAUserActivityAppLinksEncoding__createUserActivityDataWithSaving_options_completionHandler___block_invoke;
    block[3] = &unk_2785C3B88;
    block[4] = self;
    v18 = v6;
    v16 = v8;
    v17 = v9;
    dispatch_async(v10, block);
  }

  else
  {
    v14 = 0;
    v11 = [(UAUserActivity *)self _encodeIntoUserActivityDataWithSave:0 options:v8 error:&v14];
    v12 = v14;
    (*(v9 + 2))(v9, v11, v12);
  }

  return 1;
}

void __109__UAUserActivity_UAUserActivityAppLinksEncoding__createUserActivityDataWithSaving_options_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8 = 0;
  v6 = [v4 _encodeIntoUserActivityDataWithSave:v3 options:v5 error:&v8];
  v7 = v8;
  (*(*(a1 + 48) + 16))();

  objc_autoreleasePoolPop(v2);
}

+ (id)_encodeToString:(id)a3
{
  v62 = *MEMORY[0x277D85DE8];
  v46 = a3;
  if (v46)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
      v4 = {;
      v5 = MEMORY[0x277CCACA8];
      v6 = [v46 stringByAddingPercentEncodingWithAllowedCharacters:v4];
      v7 = [v5 stringWithFormat:@"'%@'", v6];
LABEL_4:
      v8 = v7;
LABEL_5:

LABEL_6:
      goto LABEL_43;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v10 = v46;
      v11 = [v10 countByEnumeratingWithState:&v55 objects:v61 count:16];
      if (v11)
      {
        v12 = 0;
        v13 = *v56;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v56 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [UAUserActivity _encodeToString:*(*(&v55 + 1) + 8 * i)];
            if (v12)
            {
              [v9 appendString:{@", "}];
            }

            [v9 appendString:v15];

            v12 = 1;
          }

          v11 = [v10 countByEnumeratingWithState:&v55 objects:v61 count:16];
        }

        while (v11);
      }

      [v9 appendString:@""]);
      v8 = [v9 copy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"{(");
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v17 = [v46 allObjects];
        v18 = sortedArrayIfSameClass(v17);

        v19 = [v18 countByEnumeratingWithState:&v51 objects:v60 count:16];
        if (v19)
        {
          v20 = 0;
          v21 = *v52;
          do
          {
            for (j = 0; j != v19; ++j)
            {
              if (*v52 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = [a1 _encodeToString:*(*(&v51 + 1) + 8 * j)];
              if (v20)
              {
                [v16 appendString:{@", "}];
              }

              [v16 appendString:v23];

              v20 = 1;
            }

            v19 = [v18 countByEnumeratingWithState:&v51 objects:v60 count:16];
          }

          while (v19);
        }

        [v16 appendString:@"}"]);
        v8 = [v16 copy];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v24 = [MEMORY[0x277CCAB68] stringWithString:@"{"];
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v25 = [v46 allKeys];
          v26 = sortedArrayIfSameClass(v25);

          obj = v26;
          v27 = [v26 countByEnumeratingWithState:&v47 objects:v59 count:16];
          if (v27)
          {
            v28 = 0;
            v29 = *v48;
            do
            {
              for (k = 0; k != v27; ++k)
              {
                if (*v48 != v29)
                {
                  objc_enumerationMutation(obj);
                }

                v31 = *(*(&v47 + 1) + 8 * k);
                v32 = [v46 objectForKey:v31];
                if (v28)
                {
                  [v24 appendString:{@", "}];
                }

                v33 = [a1 _encodeToString:v32];
                v34 = [a1 _encodeToString:v31];
                v35 = v34;
                v36 = [v34 UTF8String];
                v37 = v33;
                [v24 appendFormat:@"%s=%s", v36, objc_msgSend(v33, "UTF8String")];

                v28 = 1;
              }

              v26 = obj;
              v27 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
            }

            while (v27);
          }

          [v24 appendString:@"}"];
          v8 = [v24 copy];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v8 = [v46 stringValue];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v40 = MEMORY[0x277CCACA8];
              v4 = [v46 base64EncodedStringWithOptions:0];
              v8 = [v40 stringWithFormat:@"$%s$", objc_msgSend(v4, "UTF8String")];
              goto LABEL_6;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v4 = objc_alloc_init(MEMORY[0x277CCA968]);
              [v4 setDateFormat:@"yyyy-MM-dd-HH-mm-ss"];
              v41 = MEMORY[0x277CCACA8];
              v6 = [v4 stringFromDate:v46];
              v7 = [v41 stringWithFormat:@"^d%@^", v6];
              goto LABEL_4;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v4 = [v46 absoluteString];
              v6 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789."];
              v42 = MEMORY[0x277CCACA8];
              v43 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:v6];
              v8 = [v42 stringWithFormat:@"^url^%@%%%%^", v43];

              goto LABEL_5;
            }

            v44 = [MEMORY[0x277CBEB68] null];

            if (v44 == v46)
            {
              v8 = @"--";
            }

            else
            {
              v8 = 0;
            }
          }
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_43:

  v38 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_encodeKeyAndValueIntoString:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = [a1 _encodeToString:a4];
  v8 = [a1 _encodeToString:v6];
  v9 = v8;
  v10 = &stru_283A5A2C8;
  if (v8 && v7)
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s=%s", objc_msgSend(v8, "UTF8String"), objc_msgSend(v7, "UTF8String")];
  }

  return v10;
}

+ (id)_decodeFromScanner:(id)a3
{
  v4 = a3;
  if ([v4 scanString:@"--" intoString:0])
  {
    v5 = 0;
    v6 = [MEMORY[0x277CBEB68] null];
LABEL_3:
    v7 = v6;
    goto LABEL_51;
  }

  if (![v4 scanString:@"'" intoString:0])
  {
    if ([v4 scanString:@"$" intoString:0])
    {
      v9 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"$"];
      v32 = 0;
      v10 = [v4 scanUpToCharactersFromSet:v9 intoString:&v32];
      v11 = v32;

      if (v10)
      {
        v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v11 options:0];
      }

      else
      {
        v7 = 0;
      }

      [v4 scanString:@"$" intoString:0];
      goto LABEL_50;
    }

    if ([v4 scanString:@"{(" intoString:0)]
    {
      v11 = [MEMORY[0x277CBEB58] set];
      if (v11)
      {
LABEL_15:
        if (([v4 scanString:@"}" intoString:?], 0) & 1) == 0)
        {
          while (1)
          {
            v12 = [a1 _decodeFromScanner:v4];
            if (!v12)
            {
              break;
            }

            [v11 addObject:v12];

            if (([v4 scanString:@" intoString:{", 0}] & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          v11 = 0;
        }
      }

LABEL_49:
      v7 = [v11 copy];
LABEL_50:

      v5 = 0;
      goto LABEL_51;
    }

    if ([v4 scanString:@"(" intoString:0)]
    {
      v11 = [MEMORY[0x277CBEB18] array];
      if (v11)
      {
LABEL_24:
        if (([v4 isAtEnd] & 1) == 0 && (objc_msgSend(v4, "scanString:intoString:", @""), 0) & 1) == 0)
        {
          while (1)
          {
            v13 = [a1 _decodeFromScanner:v4];
            if (!v13)
            {
              break;
            }

            [v11 addObject:v13];

            if (([v4 scanString:@" intoString:{", 0}] & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          v11 = 0;
        }
      }

      goto LABEL_49;
    }

    if ([v4 scanString:@"{" intoString:0])
    {
      v11 = [MEMORY[0x277CBEB38] dictionary];
      if (v11)
      {
LABEL_35:
        if (([v4 isAtEnd] & 1) == 0 && (objc_msgSend(v4, "scanString:intoString:", @"}", 0) & 1) == 0)
        {
          while (1)
          {
            v14 = [a1 _decodeFromScanner:v4];
            if (!v14)
            {
              break;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            if (![v4 scanString:@"=" intoString:0])
            {
              break;
            }

            v15 = [a1 _decodeFromScanner:v4];
            if (!v15)
            {
              break;
            }

            [v11 setObject:v15 forKey:v14];

            if (([v4 scanString:@" intoString:{", 0}] & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          v11 = 0;
        }
      }

      goto LABEL_49;
    }

    v16 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789.-"];
    v31 = 0;
    v17 = [v4 scanCharactersFromSet:v16 intoString:&v31];
    v5 = v31;

    if (v17)
    {
      if (![v5 containsString:@"."])
      {
        if ([v5 containsString:@"-"])
        {
          v6 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v5, "longLongValue")}];
        }

        else
        {
          v27 = 0;
          for (i = 0; i < [v5 length]; ++i)
          {
            v27 = 10 * v27 + [v5 characterAtIndex:i] - 48;
          }

          v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v27];
        }

        goto LABEL_3;
      }

      v18 = objc_alloc_init(MEMORY[0x277CCABB8]);
      v7 = [v18 numberFromString:v5];
      goto LABEL_63;
    }

    if ([v4 scanString:@"^d" intoString:0])
    {
      v20 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789-"];
      v30 = 0;
      v21 = [v4 scanCharactersFromSet:v20 intoString:&v30];
      v18 = v30;

      if (v21)
      {
        v22 = objc_alloc_init(MEMORY[0x277CCA968]);
        [v22 setDateFormat:@"yyyy-MM-dd-HH-mm-ss"];
        v7 = [v22 dateFromString:v18];
        [v4 scanString:@"^" intoString:0];

LABEL_63:
        goto LABEL_51;
      }
    }

    else
    {
      if (![v4 scanString:@"^url^" intoString:0])
      {
        goto LABEL_12;
      }

      v29 = 0;
      v23 = [v4 scanUpToString:@"%%^" intoString:&v29];
      v24 = v29;
      v18 = v24;
      if (v23)
      {
        v25 = MEMORY[0x277CBEBC0];
        v26 = [v24 stringByRemovingPercentEncoding];
        v7 = [v25 URLWithString:v26];

        [v4 scanString:@"%%^" intoString:0];
        goto LABEL_63;
      }
    }

    v7 = 0;
    goto LABEL_63;
  }

  v33 = 0;
  v8 = [v4 scanUpToString:@"'" intoString:&v33];
  v5 = v33;
  if (v8)
  {
    if ([v4 scanString:@"'" intoString:0])
    {
      v6 = [v5 stringByRemovingPercentEncoding];
      goto LABEL_3;
    }

    goto LABEL_12;
  }

  if ([v4 isAtEnd])
  {
LABEL_12:
    v7 = 0;
    goto LABEL_51;
  }

  if ([v4 scanString:@"'" intoString:0])
  {
    v7 = &stru_283A5A2C8;
  }

  else
  {
    v7 = 0;
  }

LABEL_51:

  return v7;
}

+ (id)_decodeFromString:(id)a3
{
  v3 = [MEMORY[0x277CCAC80] scannerWithString:a3];
  v4 = [UAUserActivity _decodeFromScanner:v3];

  return v4;
}

+ (id)_decodeFromEntireString:(id)a3
{
  v3 = [MEMORY[0x277CCAC80] scannerWithString:a3];
  v4 = [UAUserActivity _decodeFromScanner:v3];
  if (v4 && ([v3 isAtEnd] & 1) == 0)
  {

    v4 = 0;
  }

  return v4;
}

- (void)setContentAttributeSet:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [(UAUserActivity *)v5 uniqueIdentifier];
    v8 = [v7 UUIDString];
    v18 = 138543619;
    v19 = v8;
    v20 = 2113;
    v21 = v4;
    _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_INFO, "setContentAttributeSet(%{public}@,%{private}@))", &v18, 0x16u);
  }

  v9 = [(UAUserActivity *)v5 objectForIdentifier:@"UAUserActivityContentAttributeSetPayloadKey"];
  v10 = v9;
  if (v4 || !v9)
  {
    if (v4 && !v9 || v4 && ([v4 isEqual:v9] & 1) == 0)
    {
      v11 = biomeInfoLogging();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [(UAUserActivity *)v5 uniqueIdentifier];
        v18 = 138543362;
        v19 = v12;
        _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_INFO, "%{public}@ SETCONTENTATTRIBUTESET", &v18, 0xCu);
      }

      v13 = [v4 copy];
      [(UAUserActivity *)v5 setPayloadIdentifier:@"UAUserActivityContentAttributeSetPayloadKey" object:v13 withBlock:&__block_literal_global_0];

      [(UAUserActivity *)v5 setDirty:1];
    }
  }

  else
  {
    [(UAUserActivity *)v5 setPayload:0 object:0 identifier:@"UAUserActivityContentAttributeSetPayloadKey"];
  }

  objc_sync_exit(v5);
  v14 = [(UAUserActivity *)v5 manager];
  v15 = [v14 userActivityIsActive:v5];

  if (v15)
  {
    v16 = [(UAUserActivity *)v5 manager];
    [v16 registerForApplicationDeactivateIfNecessary];

    [(UAUserActivity *)v5 indexActivity:1 forceIndexing:0.5];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __85__UAUserActivity_UAUserActivityCoreSpotlightIndexingSupport__setContentAttributeSet___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [objc_alloc(MEMORY[0x277CCAAB0]) initRequiringSecureCoding:1];
  [v12 encodeObject:v9 forKey:*MEMORY[0x277CCA308]];
  [v12 finishEncoding];
  v13 = [v12 encodedData];
  (*(v11 + 2))(v11, v10, v13, 0, 0);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateForwardToCoreSpotlightIndexer:(char)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  v4 = obj->_forwardToCoreSpotlightIndexerCount + v3;
  obj->_forwardToCoreSpotlightIndexerCount = v4;
  if (v4)
  {
    v5 = [(UAUserActivity *)obj manager];
    v6 = [v5 userActivityIsActive:obj];

    v7 = [(UAUserActivity *)obj manager];
    [v7 registerForApplicationDeactivateIfNecessary];

    objc_sync_exit(obj);
    if (v6)
    {

      [(UAUserActivity *)obj indexActivity:1 forceIndexing:0.0];
    }
  }

  else
  {
    objc_sync_exit(obj);
  }
}

- (void)indexActivity:(double)a3 forceIndexing:(BOOL)a4
{
  v4 = a4;
  v46 = *MEMORY[0x277D85DE8];
  v7 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [(UAUserActivity *)self uniqueIdentifier];
    v9 = [v8 UUIDString];
    v10 = "NO";
    *buf = 138543874;
    v41 = v9;
    if (v4)
    {
      v10 = "YES";
    }

    v42 = 2048;
    v43 = a3;
    v44 = 2082;
    v45 = v10;
    _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_INFO, "indexActivity(%{public}@} delay=%f forceIndexing:%{public}s", buf, 0x20u);
  }

  if (self->_indexInProcess)
  {
    v11 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [(UAUserActivity *)self uniqueIdentifier];
      v13 = [v12 UUIDString];
      *buf = 138543362;
      v41 = v13;
      _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_DEBUG, "indexActivity: %{public}@, _indexInProcess == YES so doing nothing.,", buf, 0xCu);
    }
  }

  else if ([(UAUserActivity *)self forwardToCoreSpotlightIndexer]&& (v4 || [(UAUserActivity *)self dirty]&& (a3 <= 0.0 || ([(UAUserActivity *)self uniqueIdentifier], v26 = objc_claimAutoreleasedReturnValue(), v27 = [UAUserActivity isIndexPendingForUUID:v26], v26, !v27))))
  {
    v11 = [(UAUserActivity *)self manager];
    v14 = [(UAUserActivity *)self uniqueIdentifier];
    if (-[UAUserActivity needsSave](self, "needsSave") || -[UAUserActivity dirty](self, "dirty") || (-[UAUserActivity dirtyPayloadIdentifiers](self, "dirtyPayloadIdentifiers"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 count] == 0, v15, !v16))
    {
      [UAUserActivity setIndexPending:1 forUUID:v14];
      v17 = biomeInfoLogging();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [(UAUserActivity *)self uniqueIdentifier];
        *buf = 138543362;
        v41 = v18;
        _os_log_impl(&dword_226A4E000, v17, OS_LOG_TYPE_INFO, "%{public}@ INDEX-UPDATEUSERINFO", buf, 0xCu);
      }

      v19 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        v20 = [(UAUserActivity *)self uniqueIdentifier];
        v21 = [v20 UUIDString];
        *buf = 138543618;
        v41 = v21;
        v42 = 2048;
        v43 = a3;
        _os_log_impl(&dword_226A4E000, v19, OS_LOG_TYPE_DEBUG, "indexActivity: %{public}@, Deferred %g seconds, because .dirty == YES", buf, 0x16u);
      }

      v22 = a3 * 1000000000.0;
      if (a3 < 0.0)
      {
        v22 = 0.0;
      }

      v23 = dispatch_time(0, v22);
      if (getDeferredIndexingQueue(void)::sOnce != -1)
      {
        [UAUserActivity(UAUserActivityCoreSpotlightIndexingSupport) indexActivity:forceIndexing:];
      }

      v24 = getDeferredIndexingQueue(void)::sQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __90__UAUserActivity_UAUserActivityCoreSpotlightIndexingSupport__indexActivity_forceIndexing___block_invoke;
      block[3] = &unk_2785C3A70;
      v37 = v14;
      v38 = v11;
      v39 = self;
      dispatch_after(v23, v24, block);

      v25 = v37;
    }

    else
    {
      v25 = self;
      objc_sync_enter(v25);
      self->_indexInProcess = 1;
      v31 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = [(UAUserActivity *)v25 uniqueIdentifier];
        v33 = [v32 UUIDString];
        *buf = 138543362;
        v41 = v33;
        _os_log_impl(&dword_226A4E000, v31, OS_LOG_TYPE_DEBUG, "indexActivity: Immediate, %{public}@ because .needsSave == NO", buf, 0xCu);
      }

      v34 = [(UAUserActivity *)v25 copyWithNewUUID:0];
      self->_indexInProcess = 0;
      if (v34)
      {
        v35 = objc_opt_new();
        [v34 setSentToIndexerDate:v35];

        [v34 sendToCoreSpotlightIndexer];
      }

      objc_sync_exit(v25);
    }
  }

  else
  {
    v11 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v28 = [(UAUserActivity *)self uniqueIdentifier];
      v29 = [v28 UUIDString];
      *buf = 138543362;
      v41 = v29;
      _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_DEBUG, "indexActivity: Ignoring, because this activity %{public}@ doesn't seem to need indexing", buf, 0xCu);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __90__UAUserActivity_UAUserActivityCoreSpotlightIndexingSupport__indexActivity_forceIndexing___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if ([UAUserActivity isIndexPendingForUUID:*(a1 + 32)])
  {
    v3 = [*(a1 + 40) userActivityForUUID:*(a1 + 32)];
    v4 = v3;
    if (v3 && ([v3 isInvalidated] & 1) == 0 && objc_msgSend(v4, "forwardToCoreSpotlightIndexer") && objc_msgSend(*(a1 + 40), "userActivityIsActive:", v4))
    {
      v4[114] = 1;
      v5 = [v4 copyWithNewUUID:1];
      [v5 setEligibleForHandoff:0];
      v4[114] = 0;
      v6 = biomeInfoLogging();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = [*(a1 + 48) uniqueIdentifier];
        v8 = [v5 uniqueIdentifier];
        v11 = 138543618;
        v12 = v7;
        v13 = 2114;
        v14 = v8;
        _os_log_impl(&dword_226A4E000, v6, OS_LOG_TYPE_INFO, "%{public}@ COPYFORINDEXING %{public}@", &v11, 0x16u);
      }

      v9 = [MEMORY[0x277CBEAA8] date];
      [v5 setSentToIndexerDate:v9];

      [v5 sendToCoreSpotlightIndexer];
    }
  }

  [UAUserActivity setIndexPending:0 forUUID:*(a1 + 32)];
  objc_autoreleasePoolPop(v2);
  v10 = *MEMORY[0x277D85DE8];
}

- (void)setEligibleForPrediction:(BOOL)a3
{
  v3 = a3;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_eligibleForPrediction != v3)
  {
    obj->_eligibleForPrediction = v3;
  }

  objc_sync_exit(obj);
}

- (void)setPersistentIdentifier:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  persistentIdentifier = v5->_persistentIdentifier;
  if (persistentIdentifier == v4)
  {
    if (!v4 || ![(NSString *)v4 isEqual:?])
    {
      goto LABEL_12;
    }

    persistentIdentifier = v5->_persistentIdentifier;
  }

  v7 = persistentIdentifier;
  v8 = [(NSString *)v4 copy];
  v9 = v5->_persistentIdentifier;
  v5->_persistentIdentifier = v8;

  [(UAUserActivity *)v5 setDirty:1];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = +[UAUserActivity observers];
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          v15 = [(UAUserActivity *)v5 parentUserActivity];
          [v14 userActivityPersistentIdentifierWasChanged:v15 persistentIdentifier:v4 previousValue:v7];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

LABEL_12:
  objc_sync_exit(v5);

  v16 = *MEMORY[0x277D85DE8];
}

+ (id)mainBundleIdentifier
{
  if (mainBundleIdentifier_sOnce != -1)
  {
    +[UAUserActivity(UAUserActivitySiriActions) mainBundleIdentifier];
  }

  v3 = mainBundleIdentifier_bundleIdentifier;

  return v3;
}

void __65__UAUserActivity_UAUserActivitySiriActions__mainBundleIdentifier__block_invoke()
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v2 bundleIdentifier];
  v1 = mainBundleIdentifier_bundleIdentifier;
  mainBundleIdentifier_bundleIdentifier = v0;
}

+ (void)deleteSavedUserActivitiesWithPersistentIdentifiers:(id)a3 completionHandler:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _uaGetLogForCategory(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = v6;
    _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_INFO, "Deleting saved user activities with persistent identifiers: %@", buf, 0xCu);
  }

  getCSSearchableIndexClass();
  if (objc_opt_respondsToSelector())
  {
    v9 = [(objc_class *)getCSSearchableIndexClass() defaultSearchableIndex];
    v10 = [a1 mainBundleIdentifier];
    if (objc_opt_respondsToSelector())
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __114__UAUserActivity_UAUserActivitySiriActions__deleteSavedUserActivitiesWithPersistentIdentifiers_completionHandler___block_invoke;
      v14[3] = &unk_2785C3E70;
      v15 = v7;
      [v9 deleteUserActivitiesWithPersistentIdentifiers:v6 bundleID:v10 completionHandler:v14];
    }

    else
    {
      v12 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_226A4E000, v12, OS_LOG_TYPE_ERROR, "INDEX: CSSearchableIndex @selector() not implemented.", buf, 2u);
      }

      v7[2](v7);
    }
  }

  else
  {
    v11 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_226A4E000, v11, OS_LOG_TYPE_ERROR, "INDEX: CSSearchableIndex @selector() not implemented.", buf, 2u);
    }

    v7[2](v7);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __114__UAUserActivity_UAUserActivitySiriActions__deleteSavedUserActivitiesWithPersistentIdentifiers_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _uaGetLogForCategory(0);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v3;
      v6 = "Error deleting saved items: %{public}@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 12;
LABEL_6:
      _os_log_impl(&dword_226A4E000, v7, v8, v6, &v12, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    v6 = "Deleted saved user activities";
    v7 = v5;
    v8 = OS_LOG_TYPE_INFO;
    v9 = 2;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v10);
  v11 = *MEMORY[0x277D85DE8];
}

+ (void)deleteAllSavedUserActivitiesWithCompletionHandler:(id)a3
{
  v4 = a3;
  getCSSearchableIndexClass();
  if (objc_opt_respondsToSelector())
  {
    v5 = [(objc_class *)getCSSearchableIndexClass() defaultSearchableIndex];
    v6 = [a1 mainBundleIdentifier];
    v7 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_226A4E000, v7, OS_LOG_TYPE_INFO, "Deleting all saved useractivities", buf, 2u);
    }

    if (objc_opt_respondsToSelector())
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __95__UAUserActivity_UAUserActivitySiriActions__deleteAllSavedUserActivitiesWithCompletionHandler___block_invoke;
      v10[3] = &unk_2785C3E70;
      v11 = v4;
      [v5 deleteAllUserActivities:v6 completionHandler:v10];
    }

    else
    {
      v9 = _uaGetLogForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_226A4E000, v9, OS_LOG_TYPE_ERROR, "INDEX: CSSearchableIndex @selector() not implemented.", buf, 2u);
      }

      v4[2](v4);
    }
  }

  else
  {
    v8 = _uaGetLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_226A4E000, v8, OS_LOG_TYPE_ERROR, "INDEX: CSSearchableIndex @selector() not implemented.", buf, 2u);
    }

    v4[2](v4);
  }
}

void __95__UAUserActivity_UAUserActivitySiriActions__deleteAllSavedUserActivitiesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _uaGetLogForCategory(0);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v3;
      v6 = "Error deleting saved items: %{public}@";
      v7 = v5;
      v8 = OS_LOG_TYPE_ERROR;
      v9 = 12;
LABEL_6:
      _os_log_impl(&dword_226A4E000, v7, v8, v6, &v12, v9);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v12) = 0;
    v6 = "Deleted saved user activities";
    v7 = v5;
    v8 = OS_LOG_TYPE_INFO;
    v9 = 2;
    goto LABEL_6;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v10);
  v11 = *MEMORY[0x277D85DE8];
}

- (id)objectForIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(UAUserActivity *)v5 payloadObjects];
  v7 = [v6 objectForKey:v4];

  objc_sync_exit(v5);

  return v7;
}

- (id)payloadForIdentifier:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  if (v4)
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [(UAUserActivity *)v5 payloadUpdateBlocks];
    v7 = [v6 objectForKey:v4];

    if (v7)
    {
      v8 = [(UAUserActivity *)v5 objectForIdentifier:v4];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __77__UAUserActivity_UAUserActivityPayloadServicesSupport__payloadForIdentifier___block_invoke;
      v14[3] = &unk_2785C4770;
      v14[4] = v5;
      v14[5] = &v15;
      (v7)[2](v7, v5, v8, v4, v14);
    }

    else
    {
      v8 = [(UAUserActivity *)v5 payloadDataCache];
      v10 = [v8 objectForKey:v4];
      v11 = v16[5];
      v16[5] = v10;
    }

    objc_sync_exit(v5);
    v9 = v16[5];
  }

  else
  {
    v9 = 0;
  }

  v12 = v9;
  _Block_object_dispose(&v15, 8);

  return v12;
}

void __77__UAUserActivity_UAUserActivityPayloadServicesSupport__payloadForIdentifier___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, int a5)
{
  v12 = a2;
  v9 = a3;
  if (!a4 || !*a4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  v10 = [*(a1 + 32) dirtyPayloadIdentifiers];
  v11 = v10;
  if (a5)
  {
    [v10 addObject:v12];
  }

  else
  {
    [v10 removeObject:v12];
  }
}

- (void)setPayload:(id)a3 object:(id)a4 identifier:(id)a5 dirty:(BOOL)a6
{
  v27 = a6;
  v35 = *MEMORY[0x277D85DE8];
  v28 = a3;
  v29 = a4;
  v9 = a5;
  if (v9)
  {
    v10 = self;
    objc_sync_enter(v10);
    [(UAUserActivity *)v10 setPayloadIdentifier:v9 object:0 withBlock:0];
    if (v29)
    {
      v11 = [(UAUserActivity *)v10 payloadObjects];

      if (!v11)
      {
        v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(UAUserActivity *)v10 setPayloadObjects:v12];
      }

      v13 = [(UAUserActivity *)v10 payloadObjects];
      [v13 setObject:v29 forKey:v9];
    }

    else
    {
      v13 = [(UAUserActivity *)v10 payloadObjects];
      [v13 removeObjectForKey:v9];
    }

    if (v28)
    {
      v14 = [(UAUserActivity *)v10 payloadDataCache];

      if (!v14)
      {
        v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(UAUserActivity *)v10 setPayloadDataCache:v15];
      }

      v16 = [(UAUserActivity *)v10 payloadDataCache];
      v17 = [v28 copy];
      [v16 setObject:v17 forKey:v9];
    }

    else
    {
      v16 = [(UAUserActivity *)v10 payloadDataCache];
      [v16 removeObjectForKey:v9];
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v18 = [objc_opt_class() observers];
    v19 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v19)
    {
      v20 = *v31;
      do
      {
        v21 = 0;
        do
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v30 + 1) + 8 * v21);
          v23 = [(UAUserActivity *)v10 parentUserActivity];
          if (v23)
          {
            v24 = objc_opt_respondsToSelector();

            if (v24)
            {
              v25 = [(UAUserActivity *)v10 parentUserActivity];
              [v22 userActivityPayloadWasChanged:v25 payloadIdentifier:v9];
            }
          }

          ++v21;
        }

        while (v19 != v21);
        v19 = [v18 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v19);
    }

    [(UAUserActivity *)v10 setDirty:v27 identifier:v9];
    objc_sync_exit(v10);
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (void)setPayloadIdentifier:(id)a3 object:(id)a4 withBlock:(id)a5
{
  v23 = a3;
  v8 = a4;
  v9 = a5;
  if (v23)
  {
    v10 = self;
    objc_sync_enter(v10);
    if (v9)
    {
      if (v8)
      {
        v11 = [(UAUserActivity *)v10 payloadObjects];

        if (!v11)
        {
          v12 = [MEMORY[0x277CBEB38] dictionary];
          [(UAUserActivity *)v10 setPayloadObjects:v12];
        }

        v13 = [(UAUserActivity *)v10 payloadObjects];
        [v13 setObject:v8 forKey:v23];
      }

      else
      {
        v13 = [(UAUserActivity *)v10 payloadObjects];
        [v13 removeObjectForKey:v23];
      }

      v19 = [(UAUserActivity *)v10 payloadUpdateBlocks];

      if (!v19)
      {
        v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(UAUserActivity *)v10 setPayloadUpdateBlocks:v20];
      }

      v21 = [(UAUserActivity *)v10 payloadUpdateBlocks];
      v22 = _Block_copy(v9);
      [v21 setObject:v22 forKey:v23];

      [(UAUserActivity *)v10 setDirty:1 identifier:v23];
    }

    else
    {
      v14 = [(UAUserActivity *)v10 payloadObjects];
      [v14 removeObjectForKey:v23];

      v15 = [(UAUserActivity *)v10 payloadUpdateBlocks];
      v16 = [v15 objectForKey:v23];

      if (v16)
      {
        v17 = [(UAUserActivity *)v10 payloadUpdateBlocks];
        [v17 removeObjectForKey:v23];
      }

      v18 = [(UAUserActivity *)v10 dirtyPayloadIdentifiers];
      [v18 removeObject:v23];
    }

    objc_sync_exit(v10);
  }
}

- (id)payloadUpdateBlockForIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UAUserActivity *)self payloadUpdateBlocks];

    if (v5)
    {
      v6 = self;
      objc_sync_enter(v6);
      v7 = [(UAUserActivity *)v6 payloadUpdateBlocks];
      v5 = [v7 objectForKey:v4];

      objc_sync_exit(v6);
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = _Block_copy(v5);

  return v8;
}

- (BOOL)isPayloadDirty:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(UAUserActivity *)self dirtyPayloadIdentifiers];

    if (v5)
    {
      v6 = self;
      objc_sync_enter(v6);
      if (([(NSMutableSet *)v6->_dirtyPayloadIdentifiers containsObject:v4]& 1) != 0)
      {
        goto LABEL_4;
      }

      if (![v4 isEqual:@"UAUserActivityUserInfoPayload"])
      {
        LOBYTE(v5) = 0;
        goto LABEL_10;
      }

      if ([(UAUserActivity *)v6 needsSave])
      {
LABEL_4:
        LOBYTE(v5) = 1;
      }

      else
      {
        LOBYTE(v5) = [(UAUserActivity *)v6 dirty];
      }

LABEL_10:
      objc_sync_exit(v6);
    }
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)setDirty:(BOOL)a3 identifier:(id)a4
{
  v4 = a3;
  v10 = a4;
  v6 = self;
  objc_sync_enter(v6);
  if (v4)
  {
    v7 = [(UAUserActivity *)v6 dirtyPayloadIdentifiers];

    if (!v7)
    {
      v8 = [MEMORY[0x277CBEB58] set];
      [(UAUserActivity *)v6 setDirtyPayloadIdentifiers:v8];
    }

    v9 = [(UAUserActivity *)v6 dirtyPayloadIdentifiers];
    [v9 addObject:v10];
  }

  else
  {
    v9 = [(UAUserActivity *)v6 dirtyPayloadIdentifiers];
    [v9 removeObject:v10];
  }

  objc_sync_exit(v6);
}

@end