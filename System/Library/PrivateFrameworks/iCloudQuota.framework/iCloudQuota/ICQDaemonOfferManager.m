@interface ICQDaemonOfferManager
+ (id)getCkBackupDeviceIDWithCompletionHandler:(id)a3;
+ (id)sharedDaemonOfferManager;
- (BOOL)_isCacheValidForRequestType:(int64_t)a3 offerStubs:(id)a4;
- (BOOL)_isCachedDaemonOfferValid:(id)a3 forAccount:(id)a4;
- (BOOL)_useFetchOffersDataDirectly;
- (BOOL)isBuddyOfferEnabled;
- (BOOL)isSimulatedDeviceStorageAlmostFull;
- (BOOL)shouldDirectToStorageManagement;
- (Class)_classForOfferStub:(id)a3;
- (Class)_daemonOfferClassForRequestType:(int64_t)a3;
- (Class)daemonOfferClassFromBundleId:(id)a3 options:(id)a4;
- (ICQDaemonOfferManager)init;
- (ICQDaemonOfferManager)initWithAccountManager:(id)a3;
- (NSNumber)simulatedPhotosLibrarySize;
- (id)_getFetchOfferStubsFromStubs:(id)a3;
- (id)_getHandlerForBundleId:(id)a3 options:(id)a4;
- (id)_getStubsForRequestType:(int64_t)a3 fromDaemonStubs:(id)a4;
- (id)_placeholderOfferForAccount:(id)a3 requestType:(int64_t)a4 error:(id)a5;
- (id)_storageManagementFollowupActions;
- (id)_storageManagementFollowupItem;
- (id)_storageManagementFollowupNotification;
- (id)soonestOfferOrStubExpirationDate;
- (unint64_t)daemonOfferSource;
- (void)_clearCachedStubsIfOfferIDIsNew:(id)a3;
- (void)_clearStorageManagementFollowup;
- (void)_coalescedDaemonOfferStubsDictionaryForAccount:(id)a3 requestType:(int64_t)a4 quotaReason:(id)a5 completion:(id)a6;
- (void)_coalescedFetchDaemonOfferForAccount:(id)a3 stub:(id)a4 notificationID:(id)a5 completion:(id)a6;
- (void)_coalescedReconsiderOffersForAccount:(id)a3 isForBuddy:(BOOL)a4 quotaReason:(id)a5 options:(id)a6 choiceHandler:(id)a7 completion:(id)a8;
- (void)_daemonLocalOfferStubsDictionaryForAccount:(id)a3 requestType:(int64_t)a4 completion:(id)a5;
- (void)_daemonOfferStubsDictionaryForAccount:(id)a3 requestType:(int64_t)a4 quotaReason:(id)a5 completion:(id)a6;
- (void)_fetchDaemonOfferForAccount:(id)a3 stub:(id)a4 notificationID:(id)a5 completion:(id)a6;
- (void)_fetchDaemonOfferStubsForAccount:(id)a3 isForBuddy:(BOOL)a4 quotaReason:(id)a5 completion:(id)a6;
- (void)_fetchDictionaryForAccount:(id)a3 quotaKey:(id)a4 quotaReason:(id)a5 stub:(id)a6 notificationID:(id)a7 contextDictionary:(id)a8 mlDaemonExtraFields:(id)a9 completion:(id)a10;
- (void)_handlerMultipleStubs:(id)a3 forAccount:(id)a4 requestType:(int64_t)a5 completion:(id)a6;
- (void)_logErrorsForFetchOfferResultWithOffer:(id)a3 error:(id)a4 isForBuddy:(BOOL)a5;
- (void)_mockFetchDictionaryForAccount:(id)a3 quotaKey:(id)a4 stub:(id)a5 notificationID:(id)a6 contextDictionary:(id)a7 completion:(id)a8;
- (void)_persistAndNotifyMissingPlaceholdersForRequestType:(int64_t)a3 account:(id)a4;
- (void)_postDaemonOfferChangedDueToPushDarwinNotificationRequestType:(int64_t)a3;
- (void)_postStorageManagementFollowup;
- (void)_postUserNotification:(id)a3 replaceExisting:(BOOL)a4 offerID:(id)a5 completion:(id)a6;
- (void)_processOfferStub:(id)a3 account:(id)a4 offerType:(int64_t)a5 completion:(id)a6;
- (void)_processPushNotificationCheckHardwareIDWithDictionary:(id)a3 completion:(id)a4;
- (void)_processPushNotificationDictionary:(id)a3 completion:(id)a4;
- (void)_reconsiderLocalOffersWithReason:(id)a3 account:(id)a4 completion:(id)a5;
- (void)_showDaemonAlertForOffer:(id)a3 notificationDictionary:(id)a4 store:(id)a5 account:(id)a6 completion:(id)a7;
- (void)_subdDisplayDelayedOfferWithContext:(id)a3 completion:(id)a4;
- (void)_subdFetchDaemonOfferForAccount:(id)a3 stub:(id)a4 notificationID:(id)a5 isoNewOfferResponse:(id)a6 completion:(id)a7;
- (void)_subdFetchNewOfferResponseWithContent:(id)a3 andMaxDelaySecs:(id)a4 completion:(id)a5;
- (void)_subdHandleFetchOffersStub:(id)a3 account:(id)a4 requestType:(int64_t)a5 group:(id)a6 completion:(id)a7;
- (void)_subdRefreshOfferDetailsAndDisplay:(id)a3 completion:(id)a4 account:(id)a5 accountStore:(id)a6 notificationID:(id)a7 isoNewOfferResponse:(id)a8;
- (void)_subdStopFailsafeActivity;
- (void)_subdTearDown;
- (void)_teardownCachedDefaultOfferAndNotify:(BOOL)a3;
- (void)_teardownCachedEventOfferAndNotify:(BOOL)a3;
- (void)_teardownCachedOfferAndNotify:(BOOL)a3;
- (void)_teardownCachedPremiumOfferAndNotify:(BOOL)a3;
- (void)_updateOffer:(id)a3 buttonId:(id)a4 info:(id)a5 account:(id)a6 accountStore:(id)a7 completion:(id)a8;
- (void)_updateQuotaForAccount:(id)a3 withServerDictionary:(id)a4;
- (void)addCommonHeadersToRequest:(id)a3;
- (void)addPremiumOffersHeaderIfNeededForRequest:(id)a3;
- (void)clearAllFollowupsWithCompletion:(id)a3;
- (void)clearFollowupsOfferType:(int64_t)a3 completion:(id)a4;
- (void)daemonBuddyOfferDictionaryForAccount:(id)a3 completion:(id)a4;
- (void)daemonOfferDictionaryForAccount:(id)a3 options:(id)a4 completion:(id)a5;
- (void)displayDelayedOfferWithContext:(id)a3 completion:(id)a4;
- (void)forcePostFollowup;
- (void)reconsiderOffersWithReason:(id)a3 reuseLocalOffers:(BOOL)a4 completion:(id)a5;
- (void)renewCredentialsWithCompletion:(id)a3;
- (void)setBuddyOfferEnabled:(BOOL)a3;
- (void)setLegacyDeviceStorageLevelNotificationEnabled:(BOOL)a3;
- (void)setShouldDirectToStorageManagement:(BOOL)a3;
- (void)setSimulatedDeviceStorageAlmostFull:(BOOL)a3;
- (void)setSimulatedPhotosLibrarySize:(id)a3;
- (void)startDirectingToStorageManagement;
- (void)stopDirectingToStorageManagement;
- (void)teardownOffersForAccount:(id)a3 completion:(id)a4;
- (void)updateOfferForAccount:(id)a3 offerId:(id)a4 buttonId:(id)a5 info:(id)a6 completion:(id)a7;
@end

@implementation ICQDaemonOfferManager

+ (id)sharedDaemonOfferManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__ICQDaemonOfferManager_sharedDaemonOfferManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedDaemonOfferManager_onceToken != -1)
  {
    dispatch_once(&sharedDaemonOfferManager_onceToken, block);
  }

  v2 = sharedDaemonOfferManager_sDaemonOfferManager;

  return v2;
}

- (void)stopDirectingToStorageManagement
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  [(ICQDaemonOfferManager *)v2 _clearStorageManagementFollowup];
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ICQDaemonOfferManager stopDirectingToStorageManagement]";
    _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "%s successfully cleared CFU", &v6, 0xCu);
  }

  if ([(ICQDaemonOfferManager *)v2 shouldDirectToStorageManagement])
  {
    [(ICQDaemonOfferManager *)v2 setShouldDirectToStorageManagement:0];
  }

  else
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[ICQDaemonOfferManager stopDirectingToStorageManagement]";
    }
  }

  objc_sync_exit(v2);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_clearStorageManagementFollowup
{
  v13 = *MEMORY[0x277D85DE8];
  followUpController = self->_followUpController;
  v10 = 0;
  [(FLFollowUpController *)followUpController clearPendingFollowUpItemsWithUniqueIdentifiers:&unk_288445298 error:&v10];
  v3 = v10;
  v4 = _ICQGetLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 138543362;
      v12 = v3;
      v6 = "Error clearing Storage Management followup; error: %{public}@";
      v7 = v4;
      v8 = 12;
LABEL_6:
      _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
    }
  }

  else if (v5)
  {
    *buf = 0;
    v6 = "Cleared Storage Management followup";
    v7 = v4;
    v8 = 2;
    goto LABEL_6;
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldDirectToStorageManagement
{
  v14 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"_ICQShouldDirectToStorageManagement", @"com.apple.cloud.quota", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    *buf = 136315394;
    v11 = "[ICQDaemonOfferManager shouldDirectToStorageManagement]";
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "%s: returning value %{public}@.", buf, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)soonestOfferOrStubExpirationDate
{
  v2 = +[(ICQDaemonPersisted *)ICQDaemonOfferStubs];
  v3 = [v2 expirationDate];

  v4 = +[(ICQDaemonPersisted *)ICQDaemonOffer];
  v5 = [v4 expirationDate];

  if (v3 | v5)
  {
    if (v3)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = v3;
      }

      v9 = v7;
    }

    else
    {
      v9 = [v3 earlierDate:v5];
    }

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __49__ICQDaemonOfferManager_sharedDaemonOfferManager__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedDaemonOfferManager_sDaemonOfferManager = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (ICQDaemonOfferManager)init
{
  v3 = objc_alloc_init(_ICQAccountManager);
  v4 = [(ICQDaemonOfferManager *)self initWithAccountManager:v3];

  return v4;
}

- (ICQDaemonOfferManager)initWithAccountManager:(id)a3
{
  v5 = a3;
  v24.receiver = self;
  v24.super_class = ICQDaemonOfferManager;
  v6 = [(ICQDaemonOfferManager *)&v24 init];
  if (v6)
  {
    if (objc_opt_respondsToSelector() & 1) != 0 && ([MEMORY[0x277CEC868] sharedSessionWithNoUrlCache], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, (v8))
    {
      v9 = _ICQGetLogSystem();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "Using AAA provided session.", v23, 2u);
      }

      v10 = [MEMORY[0x277CEC868] sharedSessionWithNoUrlCache];
      v11 = [v10 urlSession];
    }

    else
    {
      v12 = _ICQGetLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v23 = 0;
        _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "Unable to use AAA provided session.", v23, 2u);
      }

      v10 = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
      v13 = [objc_alloc(MEMORY[0x277CF0188]) initWithIdentifier:@"ICQFetchOfferURLSession"];
      [v10 set_appleIDContext:v13];

      v11 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v10];
    }

    sharedURLSession = v6->_sharedURLSession;
    v6->_sharedURLSession = v11;

    v15 = [objc_alloc(MEMORY[0x277CFE500]) initWithClientIdentifier:@"com.apple.icloud.quota"];
    followUpController = v6->_followUpController;
    v6->_followUpController = v15;

    objc_storeStrong(&v6->_accountManager, a3);
    v17 = objc_opt_new();
    taskLimiters = v6->_taskLimiters;
    v6->_taskLimiters = v17;

    v19 = +[ICQDaemonOfferManager ckBackupDeviceID];
    v20 = objc_opt_new();
    throttleController = v6->_throttleController;
    v6->_throttleController = v20;
  }

  return v6;
}

- (void)daemonOfferDictionaryForAccount:(id)a3 options:(id)a4 completion:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 objectForKeyedSubscript:@"bundleIdentifier"];
  if (![v11 isEqualToString:@"com.apple.purplebuddy"])
  {
    if (!v8)
    {
      v12 = ICQCreateError(8);
      v10[2](v10, 0, v12);
LABEL_28:

      goto LABEL_29;
    }

    if ([_ICQHelperFunctions backupRestoreCompletedInOptions:v9])
    {
      [_ICQHelperFunctions setUserDefaultsBool:1 forKey:@"backupRestoreComplete"];
    }

    v12 = [v9 objectForKeyedSubscript:@"contextDictionary"];
    if (v12)
    {
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __76__ICQDaemonOfferManager_daemonOfferDictionaryForAccount_options_completion___block_invoke;
      v35[3] = &unk_27A651F28;
      v36 = v8;
      v38 = v10;
      v37 = v12;
      [(ICQDaemonOfferManager *)self _fetchDictionaryForAccount:v36 quotaKey:@"quotaFetchOffersURL" quotaReason:v11 stub:0 notificationID:0 contextDictionary:v37 mlDaemonExtraFields:0 completion:v35];

      v13 = v36;
LABEL_27:

      goto LABEL_28;
    }

    v14 = [(ICQDaemonOfferManager *)self daemonOfferClassFromBundleId:v11 options:v9];
    v15 = [(objc_class *)v14 persistedObject];
    v13 = v15;
    if (v15)
    {
      if ([v15 isValidForAccount:v8])
      {
        v16 = [v13 isExpired];
        v17 = _ICQGetLogSystem();
        v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (!v16)
        {
          if (v18)
          {
            *buf = 138412290;
            v40 = v14;
            _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, "Returning persisted daemon offer of class %@", buf, 0xCu);
          }

          v21 = [v13 _persistenceDictionary];
          (v10)[2](v10, v21, 0);
          goto LABEL_26;
        }

        if (v18)
        {
          v19 = [v13 retrievalDate];
          [v13 callbackInterval];
          *buf = 138543874;
          v40 = v14;
          v41 = 2112;
          v42 = v19;
          v43 = 2048;
          v44 = v20;
          _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, "Skipping persisted daemon offer of class %{public}@ because it expired: daemon offer retrieval date %@, callback interval: %f", buf, 0x20u);
        }

        v21 = [v13 notificationID];
LABEL_20:
        if ([v21 length])
        {
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __76__ICQDaemonOfferManager_daemonOfferDictionaryForAccount_options_completion___block_invoke_213;
          v31[3] = &unk_27A651F78;
          v31[4] = self;
          v32 = v9;
          v33 = v11;
          v34 = v10;
          [(ICQDaemonOfferManager *)self _fetchDaemonOfferForAccount:v8 stub:0 notificationID:v21 completion:v31];
        }

        else
        {
          v26 = [(ICQDaemonOfferManager *)self _getHandlerForBundleId:v11 options:v9];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __76__ICQDaemonOfferManager_daemonOfferDictionaryForAccount_options_completion___block_invoke_3;
          v27[3] = &unk_27A651FA0;
          v27[4] = self;
          v28 = v11;
          v29 = v9;
          v30 = v10;
          [(ICQDaemonOfferManager *)self _reconsiderOffersForAccount:v8 isForBuddy:0 quotaReason:v28 options:v29 choiceHandler:v26 completion:v27];
        }

LABEL_26:

        goto LABEL_27;
      }

      v22 = _ICQGetLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = [v13 accountAltDSID];
        [v8 aa_altDSID];
        *buf = 138544130;
        v40 = v14;
        v41 = 2112;
        v42 = v23;
        v44 = v43 = 2112;
        v24 = v44;
        v45 = 2112;
        v46 = v13;
        _os_log_impl(&dword_275572000, v22, OS_LOG_TYPE_DEFAULT, "Skipping persisted daemon offer of class %{public}@ due to account mismatch: daemon offer account alt dsid: %@, account alt dsid: %@. Persisted offer was %@", buf, 0x2Au);
      }
    }

    else
    {
      v22 = _ICQGetLogSystem();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v40 = v14;
        _os_log_impl(&dword_275572000, v22, OS_LOG_TYPE_DEFAULT, "Did not find a persisted daemon offer of class %{public}@", buf, 0xCu);
      }
    }

    v21 = 0;
    goto LABEL_20;
  }

  [(ICQDaemonOfferManager *)self daemonBuddyOfferDictionaryForAccount:v8 completion:v10];
LABEL_29:

  v25 = *MEMORY[0x277D85DE8];
}

void __76__ICQDaemonOfferManager_daemonOfferDictionaryForAccount_options_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v16 = _ICQGetLogSystem();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = a1[5];
      v21 = 138412802;
      v22 = v7;
      v23 = 2114;
      v24 = v17;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_275572000, v16, OS_LOG_TYPE_DEFAULT, "error %@ fetching offers with context dictionary %{public}@ resulting in serverDict %@", &v21, 0x20u);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    v8 = [[ICQDaemonOfferStubs alloc] _initWithAccount:a1[4] serverDictionary:v5];
    v9 = [v8 chooseFirstStub];
    if (v9)
    {
      v10 = [ICQDaemonOffer alloc];
      v11 = a1[4];
      v12 = [v9 serverDictionary];
      v13 = [(ICQDaemonOffer *)v10 _initWithAccount:v11 serverDictionary:v12];

      [v13 cacheLiftUIContent];
      v14 = a1[6];
      v15 = [v13 _persistenceDictionary];
      (*(v14 + 16))(v14, v15, 0);
    }

    else
    {
      v18 = _ICQGetLogSystem();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_275572000, v18, OS_LOG_TYPE_DEFAULT, "context dictionary response is missing device offers", &v21, 2u);
      }

      v19 = a1[6];
      v13 = ICQCreateErrorWithMessage(996, @"context dictionary response is missing device offers");
      (*(v19 + 16))(v19, 0, v13);
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __76__ICQDaemonOfferManager_daemonOfferDictionaryForAccount_options_completion___block_invoke_213(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__ICQDaemonOfferManager_daemonOfferDictionaryForAccount_options_completion___block_invoke_2;
  v13[3] = &unk_27A651F50;
  v7 = *(a1 + 32);
  v14 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 32);
  v15 = v8;
  v16 = v9;
  v10 = *(a1 + 56);
  v18 = v6;
  v19 = v10;
  v17 = v5;
  v11 = v6;
  v12 = v5;
  [v7 _postFollowupForDaemonOffer:v12 replaceExisting:1 completion:v13];
}

void __76__ICQDaemonOfferManager_daemonOfferDictionaryForAccount_options_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 48) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:{+[_ICQHelperFunctions _getOfferRequestTypeFromOptions:bundleId:isBuddy:](_ICQHelperFunctions, "_getOfferRequestTypeFromOptions:bundleId:isBuddy:", *(a1 + 32), *(a1 + 40), 0)}];
  v2 = *(a1 + 72);
  v3 = [*(a1 + 56) _persistenceDictionary];
  (*(v2 + 16))(v2, v3, *(a1 + 64));
}

void __76__ICQDaemonOfferManager_daemonOfferDictionaryForAccount_options_completion___block_invoke_3(uint64_t a1)
{
  v4 = [objc_msgSend(*(a1 + 32) daemonOfferClassFromBundleId:*(a1 + 40) options:{*(a1 + 48)), "persistedObject"}];
  v2 = *(a1 + 56);
  v3 = [v4 _persistenceDictionary];
  (*(v2 + 16))(v2, v3, 0);
}

- (id)_getHandlerForBundleId:(id)a3 options:(id)a4
{
  v4 = [_ICQHelperFunctions _getOfferRequestTypeFromOptions:a4 bundleId:a3 isBuddy:0];
  if ((v4 - 1) > 4)
  {
    return 0;
  }

  else
  {
    return *(&off_27A652708 + v4 - 1);
  }
}

- (Class)daemonOfferClassFromBundleId:(id)a3 options:(id)a4
{
  v4 = [_ICQHelperFunctions _getOfferRequestTypeFromOptions:a4 bundleId:a3 isBuddy:0];
  if ((v4 - 1) > 4)
  {
    v5 = off_27A650D88;
  }

  else
  {
    v5 = off_27A652730[v4 - 1];
  }

  v6 = *v5;
  v7 = objc_opt_class();

  return v7;
}

- (void)daemonBuddyOfferDictionaryForAccount:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__ICQDaemonOfferManager_daemonBuddyOfferDictionaryForAccount_completion___block_invoke;
  v8[3] = &unk_27A651FE8;
  v9 = v6;
  v7 = v6;
  [(ICQDaemonOfferManager *)self _reconsiderOffersForAccount:a3 isForBuddy:1 quotaReason:@"com.apple.purplebuddy" choiceHandler:0 completion:v8];
}

void __73__ICQDaemonOfferManager_daemonBuddyOfferDictionaryForAccount_completion___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v4 = +[(ICQDaemonPersisted *)ICQDaemonBuddyOffer];
    v2 = *(a1 + 32);
    v3 = [v4 _persistenceDictionary];
    (*(v2 + 16))(v2, v3, 0);
  }
}

- (void)teardownOffersForAccount:(id)a3 completion:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 aa_isPrimaryAccount];
  v9 = _ICQGetLogSystem();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v12 = 138412290;
      v13 = v6;
      _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "teardown offers related to primary account %@", &v12, 0xCu);
    }

    [(ICQDaemonOfferManager *)self _teardownCachedOffersAndNotify:1];
    if (!v7)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7[2](v7);
    goto LABEL_10;
  }

  if (v10)
  {
    v12 = 138412290;
    v13 = v6;
    _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "teardown for non-primary account %@ - ignoring", &v12, 0xCu);
  }

  if (v7)
  {
    goto LABEL_9;
  }

LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
}

- (void)addCommonHeadersToRequest:(id)a3
{
  v4 = a3;
  v5 = [ICQRequestProvider alloc];
  v6 = [(ICQDaemonOfferManager *)self accountManager];
  v7 = [v6 accountStore];
  v8 = [v7 aa_primaryAppleAccount];
  v9 = [(ICQRequestProvider *)v5 initWithAccount:v8];

  [(ICQRequestProvider *)v9 addCommonHeadersToRequest:v4];
}

- (void)renewCredentialsWithCompletion:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ICQDaemonOfferManager renewCredentialsWithCompletion:]";
    _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "%s - Renewing credentials", &v8, 0xCu);
  }

  v5 = [MEMORY[0x277CB8F48] defaultStore];
  v6 = [v5 aa_primaryAppleAccount];
  [v5 renewCredentialsForAccount:v6 force:0 reason:0 completion:v3];

  v7 = *MEMORY[0x277D85DE8];
}

- (id)_storageManagementFollowupActions
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CFE4F8];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"DEVICE_FULL_FOLLOWUP_MANAGE_STORAGE_BUTTON_TITLE" value:&stru_288431E38 table:@"Localizable"];
  v5 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=STORAGE_MGMT"];
  v6 = [v2 actionWithLabel:v4 url:v5];

  v7 = MEMORY[0x277CFE4F8];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"DEVICE_FULL_FOLLOWUP_LEARN_MORE_BUTTON_TITLE" value:&stru_288431E38 table:@"Localizable"];
  v10 = [MEMORY[0x277CBEBC0] URLWithString:@"https://support.apple.com/HT206504"];
  v11 = [v7 actionWithLabel:v9 url:v10];

  v15[0] = v6;
  v15[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_storageManagementFollowupNotification
{
  v20[3] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CFE510]);
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = _ICQModelSpecificLocalizedStringKeyForKey(@"DEVICE_FULL_ALERT_TITLE");
  v5 = [v3 localizedStringForKey:v4 value:&stru_288431E38 table:@"Localizable"];
  [v2 setTitle:v5];

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = _ICQModelSpecificLocalizedStringKeyForKey(@"DEVICE_FULL_ALERT_MESSAGE");
  v8 = [v6 localizedStringForKey:v7 value:&stru_288431E38 table:@"Localizable"];
  [v2 setInformativeText:v8];

  v9 = MEMORY[0x277CFE4F8];
  v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"DEVICE_FULL_ALERT_ACTIVATE_BUTTON_TITLE" value:&stru_288431E38 table:@"Localizable"];
  v12 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=General&path=STORAGE_MGMT"];
  v13 = [v9 actionWithLabel:v11 url:v12];
  [v2 setActivateAction:v13];

  [v2 setFrequency:86400.0];
  v14 = MEMORY[0x277CBEB98];
  v15 = *MEMORY[0x277CFE498];
  v20[0] = *MEMORY[0x277CFE488];
  v20[1] = v15;
  v20[2] = *MEMORY[0x277CFE4A8];
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:3];
  v17 = [v14 setWithArray:v16];
  [v2 setOptions:v17];

  v18 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)_storageManagementFollowupItem
{
  v3 = objc_alloc_init(MEMORY[0x277CFE508]);
  [v3 setUniqueIdentifier:@"com.apple.iCloudQuota.StorageManagement.followup"];
  [v3 setGroupIdentifier:*MEMORY[0x277CFE440]];
  [v3 setDisplayStyle:1];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = _ICQModelSpecificLocalizedStringKeyForKey(@"DEVICE_FULL_FOLLOWUP_TITLE");
  v6 = [v4 localizedStringForKey:v5 value:&stru_288431E38 table:@"Localizable"];
  [v3 setTitle:v6];

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = _ICQModelSpecificLocalizedStringKeyForKey(@"DEVICE_FULL_FOLLOWUP_MESSAGE");
  v9 = [v7 localizedStringForKey:v8 value:&stru_288431E38 table:@"Localizable"];
  [v3 setInformativeText:v9];

  v10 = [(ICQDaemonOfferManager *)self _storageManagementFollowupActions];
  [v3 setActions:v10];

  v11 = [(ICQDaemonOfferManager *)self _storageManagementFollowupNotification];
  [v3 setNotification:v11];

  return v3;
}

- (void)_postStorageManagementFollowup
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(ICQDaemonOfferManager *)self _storageManagementFollowupItem];
  followUpController = self->_followUpController;
  v12 = 0;
  [(FLFollowUpController *)followUpController postFollowUpItem:v3 error:&v12];
  v5 = v12;
  v6 = _ICQGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 138543618;
      v14 = v3;
      v15 = 2114;
      v16 = v5;
      v8 = "Error posting Storage Management followup %{public}@; error: %{public}@";
      v9 = v6;
      v10 = 22;
LABEL_6:
      _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    }
  }

  else if (v7)
  {
    *buf = 138543362;
    v14 = v3;
    v8 = "Posted Storage Management followup %{public}@";
    v9 = v6;
    v10 = 12;
    goto LABEL_6;
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)startDirectingToStorageManagement
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  if ([(ICQDaemonOfferManager *)v2 shouldDirectToStorageManagement])
  {
    v3 = _ICQGetLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[ICQDaemonOfferManager startDirectingToStorageManagement]";
LABEL_6:
      _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, v4, &v6, 0xCu);
    }
  }

  else
  {
    [(ICQDaemonOfferManager *)v2 setShouldDirectToStorageManagement:1];
    [(ICQDaemonOfferManager *)v2 _teardownCachedOffersAndNotify:1];
    [(ICQDaemonOfferManager *)v2 _postStorageManagementFollowup];
    v3 = _ICQGetLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315138;
      v7 = "[ICQDaemonOfferManager startDirectingToStorageManagement]";
      v4 = "%s successfully posted CFU";
      goto LABEL_6;
    }
  }

  objc_sync_exit(v2);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)reconsiderOffersWithReason:(id)a3 reuseLocalOffers:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v25[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [(ICQDaemonOfferManager *)self accountManager];
  v11 = [v10 accountStore];

  v12 = [v11 aa_primaryAppleAccount];
  if (v6)
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __80__ICQDaemonOfferManager_reconsiderOffersWithReason_reuseLocalOffers_completion___block_invoke;
    v20[3] = &unk_27A652010;
    v20[4] = self;
    v22 = v11;
    v23 = v9;
    v21 = v8;
    v13 = v9;
    v14 = v11;
    [(ICQDaemonOfferManager *)self _reconsiderLocalOffersWithReason:v21 account:v12 completion:v20];
  }

  else
  {
    +[(ICQDaemonPersisted *)ICQDaemonOfferStubs];
    v24 = @"isForFetchOffers";
    v25[0] = MEMORY[0x277CBEC38];
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __80__ICQDaemonOfferManager_reconsiderOffersWithReason_reuseLocalOffers_completion___block_invoke_2;
    v17[3] = &unk_27A652038;
    v18 = v11;
    v19 = v9;
    v15 = v9;
    v13 = v11;
    [(ICQDaemonOfferManager *)self _reconsiderOffersForAccount:v12 isForBuddy:0 quotaReason:v8 options:v14 choiceHandler:0 completion:v17];
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __80__ICQDaemonOfferManager_reconsiderOffersWithReason_reuseLocalOffers_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) reconsiderOffersWithReason:*(a1 + 40) reuseLocalOffers:0 completion:*(a1 + 56)];
  }

  else
  {
    return (*(*(a1 + 56) + 16))();
  }
}

- (void)_reconsiderLocalOffersWithReason:(id)a3 account:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = _ICQGetLogSystem();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "Reconsidering local offers", buf, 2u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __77__ICQDaemonOfferManager__reconsiderLocalOffersWithReason_account_completion___block_invoke;
  v12[3] = &unk_27A652060;
  v13 = v7;
  v14 = v8;
  v12[4] = self;
  v10 = v7;
  v11 = v8;
  [(ICQDaemonOfferManager *)self _daemonLocalOfferStubsDictionaryForAccount:v10 requestType:0 completion:v12];
}

void __77__ICQDaemonOfferManager__reconsiderLocalOffersWithReason_account_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    v8 = [[ICQDaemonOfferStubs alloc] initWithDictionary:v5];
    v9 = +[ICQDaemonOfferConditions currentConditions];
    v10 = [(ICQDaemonOfferStubs *)v8 chooseStubForConditions:v9];
    v21 = [(ICQDaemonOfferStubs *)v8 choosePremiumStubForConditions:v9];
    v11 = dispatch_group_create();
    dispatch_group_enter(v11);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __77__ICQDaemonOfferManager__reconsiderLocalOffersWithReason_account_completion___block_invoke_269;
    v26[3] = &unk_27A651BB8;
    v14 = v11;
    v27 = v14;
    [v12 _processOfferStub:v10 account:v13 offerType:3 completion:v26];
    dispatch_group_enter(v14);
    v15 = *(a1 + 32);
    v16 = *(a1 + 40);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __77__ICQDaemonOfferManager__reconsiderLocalOffersWithReason_account_completion___block_invoke_2;
    v24[3] = &unk_27A651BB8;
    v25 = v14;
    v17 = v14;
    [v15 _processOfferStub:v21 account:v16 offerType:2 completion:v24];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __77__ICQDaemonOfferManager__reconsiderLocalOffersWithReason_account_completion___block_invoke_3;
    block[3] = &unk_27A651FE8;
    v23 = *(a1 + 48);
    dispatch_group_notify(v17, MEMORY[0x277D85CD0], block);

LABEL_9:
    goto LABEL_10;
  }

  v18 = _ICQGetLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v7;
    _os_log_impl(&dword_275572000, v18, OS_LOG_TYPE_DEFAULT, "Unable to get offer stubs; error: %@", buf, 0xCu);
  }

  v19 = *(a1 + 48);
  if (!v7)
  {
    v8 = ICQCreateError(11);
    (*(v19 + 16))(v19, v8);
    goto LABEL_9;
  }

  (*(v19 + 16))(v19, v7);
LABEL_10:

  v20 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isCachedDaemonOfferValid:(id)a3 forAccount:(id)a4
{
  v5 = a3;
  if ([v5 isValidForAccount:a4])
  {
    v6 = [v5 isExpired] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)_processOfferStub:(id)a3 account:(id)a4 offerType:(int64_t)a5 completion:(id)a6
{
  v26 = *MEMORY[0x277D85DE8];
  v10 = a4;
  v11 = a6;
  if (a3)
  {
    v12 = [a3 persistedOffer];
    if ([(ICQDaemonOfferManager *)self _isCachedDaemonOfferValid:v12 forAccount:v10])
    {
      v13 = _ICQGetLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [_ICQHelperFunctions _getOfferDescriptionFromRequestType:a5];
        *buf = 138412290;
        v25 = v14;
        _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "%@ offer is valid, posting CFU with replaceExisting: NO", buf, 0xCu);
      }

      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __72__ICQDaemonOfferManager__processOfferStub_account_offerType_completion___block_invoke_270;
      v18[3] = &unk_27A652088;
      v18[4] = self;
      v20 = a5;
      v19 = v11;
      [(ICQDaemonOfferManager *)self _postFollowupForDaemonOffer:v12 replaceExisting:0 completion:v18];
    }

    else
    {
      v11[2](v11);
    }
  }

  else
  {
    v15 = _ICQGetLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [_ICQHelperFunctions _getOfferDescriptionFromRequestType:a5];
      *buf = 138412290;
      v25 = v16;
      _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, "%@ offer is no longer valid, removing CFU.", buf, 0xCu);
    }

    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __72__ICQDaemonOfferManager__processOfferStub_account_offerType_completion___block_invoke;
    v21[3] = &unk_27A652088;
    v21[4] = self;
    v23 = a5;
    v22 = v11;
    [(ICQDaemonOfferManager *)self clearFollowupsOfferType:a5 completion:v21];
  }

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t __72__ICQDaemonOfferManager__processOfferStub_account_offerType_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

uint64_t __72__ICQDaemonOfferManager__processOfferStub_account_offerType_completion___block_invoke_270(uint64_t a1)
{
  [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:*(a1 + 48)];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)clearAllFollowupsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "Clearing all followups", buf, 2u);
  }

  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __57__ICQDaemonOfferManager_clearAllFollowupsWithCompletion___block_invoke;
  v15[3] = &unk_27A651BB8;
  v7 = v6;
  v16 = v7;
  [(ICQDaemonOfferManager *)self clearFollowupsOfferType:3 completion:v15];
  dispatch_group_enter(v7);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__ICQDaemonOfferManager_clearAllFollowupsWithCompletion___block_invoke_2;
  v13[3] = &unk_27A651BB8;
  v8 = v7;
  v14 = v8;
  [(ICQDaemonOfferManager *)self clearFollowupsOfferType:2 completion:v13];
  dispatch_group_enter(v8);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__ICQDaemonOfferManager_clearAllFollowupsWithCompletion___block_invoke_3;
  v11[3] = &unk_27A651BB8;
  v12 = v8;
  v9 = v8;
  [(ICQDaemonOfferManager *)self clearFollowupsOfferType:5 completion:v11];
  v10 = dispatch_time(0, 10000000000);
  dispatch_group_wait(v9, v10);
  v4[2](v4);
}

- (void)clearFollowupsOfferType:(int64_t)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [_ICQHelperFunctions _getOfferDescriptionFromRequestType:a3];
    *buf = 138412290;
    v16 = v8;
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Attempting to clear followup! offer type: %@", buf, 0xCu);
  }

  followUpController = self->_followUpController;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__ICQDaemonOfferManager_clearFollowupsOfferType_completion___block_invoke;
  v12[3] = &unk_27A6520B0;
  v13 = v6;
  v14 = a3;
  v10 = v6;
  [_ICQFollowupSpecification clearFollowupWithController:followUpController offerType:a3 completion:v12];

  v11 = *MEMORY[0x277D85DE8];
}

void __60__ICQDaemonOfferManager_clearFollowupsOfferType_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _ICQGetLogSystem();
  v7 = v6;
  if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [_ICQHelperFunctions _getOfferDescriptionFromRequestType:*(a1 + 40)];
      v11 = 138412290;
      v12 = v8;
      _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Succeeded at clearing followup! offerType: %@", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __60__ICQDaemonOfferManager_clearFollowupsOfferType_completion___block_invoke_cold_1(v5, a1);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (unint64_t)daemonOfferSource
{
  v2 = CFPreferencesCopyAppValue(@"_ICQOfferSource", @"com.apple.cloud.quota");
  if ([v2 isEqualToString:@"local-sample"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"server-sample"])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_useFetchOffersDataDirectly
{
  v2 = CFPreferencesCopyAppValue(@"_ICQUseFetchOffersDataDirectly", @"com.apple.cloud.quota");
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_daemonOfferStubsDictionaryForAccount:(id)a3 requestType:(int64_t)a4 quotaReason:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v13 = MEMORY[0x277CCACA8];
  v14 = [v10 aa_altDSID];
  v15 = [v13 stringWithFormat:@"%@", v14];
  v16 = [v15 stringByAppendingString:@"FetchOffers"];

  objc_initWeak(&location, self);
  v17 = [(ICQDaemonOfferManager *)self taskLimiters];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __98__ICQDaemonOfferManager__daemonOfferStubsDictionaryForAccount_requestType_quotaReason_completion___block_invoke;
  v20[3] = &unk_27A6520D8;
  objc_copyWeak(v23, &location);
  v18 = v10;
  v21 = v18;
  v23[1] = a4;
  v19 = v11;
  v22 = v19;
  [v17 performWithIdentifier:v16 task:v20 completion:v12];

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

void __98__ICQDaemonOfferManager__daemonOfferStubsDictionaryForAccount_requestType_quotaReason_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _coalescedDaemonOfferStubsDictionaryForAccount:*(a1 + 32) requestType:*(a1 + 56) quotaReason:*(a1 + 40) completion:v3];
}

- (void)_coalescedDaemonOfferStubsDictionaryForAccount:(id)a3 requestType:(int64_t)a4 quotaReason:(id)a5 completion:(id)a6
{
  v39 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = a6;
  [(ICQDaemonOfferManager *)self clearLegacyFollowups];
  v13 = _ICQSignpostLogSystem();
  v14 = objc_opt_new();
  v15 = _ICQSignpostCreateWithObject(v13, v14);
  v17 = v16;

  v18 = _ICQSignpostLogSystem();
  v19 = v18;
  v20 = v15 - 1;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v19, OS_SIGNPOST_INTERVAL_BEGIN, v15, "FetchOffers", " enableTelemetry=YES ", buf, 2u);
  }

  v21 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [ICQDaemonOfferManager _coalescedDaemonOfferStubsDictionaryForAccount:requestType:quotaReason:completion:];
  }

  if (v10)
  {
    v22 = +[(ICQDaemonPersisted *)ICQDaemonOfferStubs];
    if ([v22 isValidForAccount:v10]&& ([v22 isExpired]& 1) == 0 && [(ICQDaemonOfferManager *)self _isCacheValidForRequestType:a4 offerStubs:v22])
    {
      v23 = _ICQGetLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [v22 expirationDate];
        *buf = 138412290;
        v38 = v24;
        _os_log_impl(&dword_275572000, v23, OS_LOG_TYPE_DEFAULT, "using cached offer stubs - expires %@", buf, 0xCu);
      }

      v25 = [v22 _persistenceDictionary];
      v12[2](v12, v25, 0);

      _ICQSignpostGetNanoseconds(v15, v17);
      v26 = _ICQSignpostLogSystem();
      v27 = v26;
      if (v20 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_275572000, v27, OS_SIGNPOST_INTERVAL_END, v15, "FetchOffers", "", buf, 2u);
      }

      v28 = _ICQSignpostLogSystem();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        [ICQDaemonOfferManager _coalescedDaemonOfferStubsDictionaryForAccount:requestType:quotaReason:completion:];
      }
    }

    else
    {
      v33[0] = MEMORY[0x277D85DD0];
      v33[1] = 3221225472;
      v33[2] = __107__ICQDaemonOfferManager__coalescedDaemonOfferStubsDictionaryForAccount_requestType_quotaReason_completion___block_invoke;
      v33[3] = &unk_27A652100;
      v35 = v15;
      v36 = v17;
      v34 = v12;
      [(ICQDaemonOfferManager *)self _fetchDaemonOfferStubsForAccount:v10 isForBuddy:a4 == 4 quotaReason:v11 completion:v33];
      v28 = v34;
    }
  }

  else
  {
    v29 = ICQCreateError(8);
    (v12)[2](v12, 0, v29);

    _ICQSignpostGetNanoseconds(v15, v17);
    v30 = _ICQSignpostLogSystem();
    v31 = v30;
    if (v20 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_275572000, v31, OS_SIGNPOST_INTERVAL_END, v15, "FetchOffers", "", buf, 2u);
    }

    v22 = _ICQSignpostLogSystem();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [ICQDaemonOfferManager _coalescedDaemonOfferStubsDictionaryForAccount:requestType:quotaReason:completion:];
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __107__ICQDaemonOfferManager__coalescedDaemonOfferStubsDictionaryForAccount_requestType_quotaReason_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v6 = a1[5];
  v7 = a1[6];
  v5 = (a1 + 5);
  v8 = a3;
  v9 = a2;
  _ICQSignpostGetNanoseconds(v6, v7);
  v10 = _ICQSignpostLogSystem();
  v11 = v10;
  v12 = *v5;
  if ((*v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchOffers", "", v16, 2u);
  }

  v13 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    __107__ICQDaemonOfferManager__coalescedDaemonOfferStubsDictionaryForAccount_requestType_quotaReason_completion___block_invoke_cold_1(v5);
  }

  v14 = a1[4];
  v15 = [v9 _persistenceDictionary];

  (*(v14 + 16))(v14, v15, v8);
}

- (void)_daemonLocalOfferStubsDictionaryForAccount:(id)a3 requestType:(int64_t)a4 completion:(id)a5
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = _ICQSignpostLogSystem();
  v11 = objc_opt_new();
  v12 = _ICQSignpostCreateWithObject(v10, v11);
  v14 = v13;

  v15 = _ICQSignpostLogSystem();
  v16 = v15;
  v17 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(v31) = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v12, "FetchOffers", " enableTelemetry=YES ", &v31, 2u);
  }

  v18 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [ICQDaemonOfferManager _coalescedDaemonOfferStubsDictionaryForAccount:requestType:quotaReason:completion:];
  }

  if (v8)
  {
    v19 = +[(ICQDaemonPersisted *)ICQDaemonOfferStubs];
    if ([v19 isValidForAccount:v8]&& ([v19 isExpired]& 1) == 0 && [(ICQDaemonOfferManager *)self _isCacheValidForRequestType:a4 offerStubs:v19])
    {
      v20 = _ICQGetLogSystem();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v19 expirationDate];
        v31 = 138412290;
        v32 = v21;
        _os_log_impl(&dword_275572000, v20, OS_LOG_TYPE_DEFAULT, "using cached offer stubs - expires %@", &v31, 0xCu);
      }

      v22 = [v19 _persistenceDictionary];
      v9[2](v9, v22, 0);
    }

    else
    {
      v23 = _ICQGetLogSystem();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [ICQDaemonOfferManager _daemonLocalOfferStubsDictionaryForAccount:requestType:completion:];
      }

      v22 = ICQCreateError(11);
      (v9)[2](v9, 0, v22);
    }

    _ICQSignpostGetNanoseconds(v12, v14);
    v24 = _ICQSignpostLogSystem();
    v25 = v24;
    if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      LOWORD(v31) = 0;
      _os_signpost_emit_with_name_impl(&dword_275572000, v25, OS_SIGNPOST_INTERVAL_END, v12, "FetchOffers", "", &v31, 2u);
    }

    v26 = _ICQSignpostLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [ICQDaemonOfferManager _coalescedDaemonOfferStubsDictionaryForAccount:requestType:quotaReason:completion:];
    }
  }

  else
  {
    v27 = ICQCreateError(8);
    (v9)[2](v9, 0, v27);

    _ICQSignpostGetNanoseconds(v12, v14);
    v28 = _ICQSignpostLogSystem();
    v29 = v28;
    if (v17 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
    {
      LOWORD(v31) = 0;
      _os_signpost_emit_with_name_impl(&dword_275572000, v29, OS_SIGNPOST_INTERVAL_END, v12, "FetchOffers", "", &v31, 2u);
    }

    v19 = _ICQSignpostLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      [ICQDaemonOfferManager _coalescedDaemonOfferStubsDictionaryForAccount:requestType:quotaReason:completion:];
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isCacheValidForRequestType:(int64_t)a3 offerStubs:(id)a4
{
  if (a3 != 1)
  {
    return 1;
  }

  v4 = [a4 chooseDefaultStub];
  v5 = v4 != 0;

  return v5;
}

- (void)_processPushNotificationCheckHardwareIDWithDictionary:(id)a3 completion:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _ICQSignpostLogSystem();
  v9 = _ICQSignpostCreate(v8);

  v10 = _ICQSignpostLogSystem();
  v11 = v10;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v11, OS_SIGNPOST_EVENT, v9, "PushNotification", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [ICQDaemonOfferManager _processPushNotificationCheckHardwareIDWithDictionary:completion:];
  }

  v13 = _ICQGetLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v6;
    _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "_processPushNotificationDictionary: %@", buf, 0xCu);
  }

  v14 = [v6 objectForKeyedSubscript:@"event"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(ICQDaemonOfferManager *)self clearLegacyFollowups];
    v27[0] = @"CKHardwareID";
    v27[1] = @"hardwareId";
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
    v16 = _ICQStringForOneOfKeys(v6, v15);

    if (v16 && ([v16 lowercaseString], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", @"all"), v17, (v18 & 1) == 0))
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __90__ICQDaemonOfferManager__processPushNotificationCheckHardwareIDWithDictionary_completion___block_invoke;
      v22[3] = &unk_27A652128;
      v23 = v16;
      v26 = v7;
      v24 = self;
      v25 = v6;
      v20 = [ICQDaemonOfferManager getCkBackupDeviceIDWithCompletionHandler:v22];
    }

    else
    {
      [(ICQDaemonOfferManager *)self _processPushNotificationDictionary:v6 completion:v7];
    }
  }

  else
  {
    v19 = _ICQGetLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v14;
      _os_log_impl(&dword_275572000, v19, OS_LOG_TYPE_DEFAULT, "push notification with bad event %@", buf, 0xCu);
    }

    v7[2](v7);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __90__ICQDaemonOfferManager__processPushNotificationCheckHardwareIDWithDictionary_completion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) isEqualToString:v3];
  v5 = _ICQGetLogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v9 = 138412290;
      v10 = v3;
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "push targeted to this device only with CKHardwareID:%@", &v9, 0xCu);
    }

    [*(a1 + 40) _processPushNotificationDictionary:*(a1 + 48) completion:*(a1 + 56)];
  }

  else
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v9 = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "ignoring push (CKHardwareID:%@ does not match local CKHardwareID:%@)", &v9, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_processPushNotificationDictionary:(id)a3 completion:(id)a4
{
  v53 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 objectForKeyedSubscript:@"dsId"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 stringValue];

    v8 = v9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    *&v48 = 0;
    *(&v48 + 1) = &v48;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy__5;
    v51 = __Block_byref_object_dispose__5;
    v10 = [(ICQDaemonOfferManager *)self accountManager];
    v52 = [v10 accountStore];

    v11 = [*(*(&v48 + 1) + 40) aa_primaryAppleAccount];
    v12 = [v11 aa_personID];
    v13 = [v8 isEqual:v12];

    if (v13)
    {
      v14 = [v6 objectForKeyedSubscript:@"event"];
      v15 = _ICQGetLogSystem();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v47 = v14;
        _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, "handling push event %@", buf, 0xCu);
      }

      v16 = [v6 objectForKeyedSubscript:@"notificationId"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = _ICQGetLogSystem();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v16;
          _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, "push notification with bad notificationId %@", buf, 0xCu);
        }

        v16 = 0;
      }

      if ([v14 isEqualToString:@"alert"])
      {
        v18 = _ICQGetLogSystem();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275572000, v18, OS_LOG_TYPE_DEFAULT, "push event (alert)", buf, 2u);
        }

        v19 = _ICQGetLogSystem();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v16;
          _os_log_impl(&dword_275572000, v19, OS_LOG_TYPE_DEFAULT, "refreshing offer details for notificationID %@", buf, 0xCu);
        }

        if (v6)
        {
          v20 = v6;
        }

        else
        {
          v20 = MEMORY[0x277CBEC10];
        }

        [ICQMLBiomePublisher publishEventWithPushNotification:v20];
        if ([ICQMLProtocolParser shouldCallMlDaemonForPushNotification:v6])
        {
          v21 = [MEMORY[0x277D7F4F0] shared];
          v22 = [v21 parseNotification:v6];

          v23 = [ICQMLProtocolParser parseMaxDelaySecsFromPushNotification:v6];
          v40[0] = MEMORY[0x277D85DD0];
          v40[1] = 3221225472;
          v40[2] = __71__ICQDaemonOfferManager__processPushNotificationDictionary_completion___block_invoke;
          v40[3] = &unk_27A652150;
          v40[4] = self;
          v41 = v6;
          v44 = v7;
          v42 = v11;
          v45 = &v48;
          v43 = v16;
          [(ICQDaemonOfferManager *)self _subdFetchNewOfferResponseWithContent:v22 andMaxDelaySecs:v23 completion:v40];
        }

        else
        {
          v35[0] = MEMORY[0x277D85DD0];
          v35[1] = 3221225472;
          v35[2] = __71__ICQDaemonOfferManager__processPushNotificationDictionary_completion___block_invoke_2;
          v35[3] = &unk_27A6521A0;
          v35[4] = self;
          v36 = v6;
          v39 = &v48;
          v37 = v11;
          v38 = v7;
          [(ICQDaemonOfferManager *)self _fetchDaemonOfferForAccount:v37 stub:0 notificationID:v16 completion:v35];
        }
      }

      else if (([v14 isEqualToString:@"dismiss"] & 1) != 0 || objc_msgSend(v14, "isEqualToString:", @"teardown"))
      {
        v28 = _ICQGetLogSystem();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v47 = v14;
          _os_log_impl(&dword_275572000, v28, OS_LOG_TYPE_DEFAULT, "push event (%{public}@)", buf, 0xCu);
        }

        [(ICQDaemonOfferManager *)self _teardownCachedOffersAndNotify:0];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __71__ICQDaemonOfferManager__processPushNotificationDictionary_completion___block_invoke_293;
        v31[3] = &unk_27A6521F0;
        v31[4] = self;
        v32 = v11;
        v34 = &v48;
        v33 = v7;
        [(ICQDaemonOfferManager *)self reconsiderOffersWithReason:@"PushTeardown" reuseLocalOffers:0 completion:v31];
      }

      else
      {
        v29 = _ICQGetLogSystem();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v47 = v14;
          _os_log_impl(&dword_275572000, v29, OS_LOG_TYPE_DEFAULT, "push notification with unexpected event %@ (ignored)", buf, 0xCu);
        }

        v7[2](v7);
      }
    }

    else
    {
      v27 = _ICQGetLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v27, OS_LOG_TYPE_DEFAULT, "dsid mismatch: ignoring", buf, 2u);
      }

      v7[2](v7);
    }

    _Block_object_dispose(&v48, 8);
  }

  else
  {
    v24 = _ICQGetLogSystem();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      LODWORD(v48) = 138412290;
      *(&v48 + 4) = v26;
      _os_log_impl(&dword_275572000, v24, OS_LOG_TYPE_DEFAULT, "push notification with bad dsid of class %@", &v48, 0xCu);
    }

    v7[2](v7);
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __71__ICQDaemonOfferManager__processPushNotificationDictionary_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v18 = _ICQGetLogSystem();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = v7;
      _os_log_impl(&dword_275572000, v18, OS_LOG_TYPE_DEFAULT, "fetch error %@", buf, 0xCu);
    }

    v19 = *(a1 + 32);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __71__ICQDaemonOfferManager__processPushNotificationDictionary_completion___block_invoke_292;
    v21[3] = &unk_27A652038;
    v21[4] = v19;
    v11 = &v22;
    v22 = *(a1 + 56);
    [v19 clearAllFollowupsWithCompletion:v21];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v5 offerId];
    [v8 _clearCachedStubsIfOfferIDIsNew:v9];

    v10 = *(a1 + 32);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __71__ICQDaemonOfferManager__processPushNotificationDictionary_completion___block_invoke_3;
    v23[3] = &unk_27A652178;
    v23[4] = v10;
    v11 = &v24;
    v12 = v5;
    v24 = v12;
    v13 = *(a1 + 40);
    v14 = *(a1 + 64);
    v15 = *(a1 + 48);
    *&v16 = *(a1 + 56);
    *(&v16 + 1) = v14;
    *&v17 = v13;
    *(&v17 + 1) = v15;
    v25 = v17;
    v26 = v16;
    [v10 _postFollowupForDaemonOffer:v12 replaceExisting:1 completion:v23];
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t __71__ICQDaemonOfferManager__processPushNotificationDictionary_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:{objc_msgSend(*(a1 + 40), "requestType")}];
  v2 = [*(a1 + 48) objectForKeyedSubscript:@"debugAlert"];

  if (v2)
  {
    [*(a1 + 40) _addSampleAlert];
  }

  v3 = [ICQDaemonAlert shouldShowForDaemonOffer:*(a1 + 40)];
  v4 = _ICQGetLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "showing alert", buf, 2u);
    }

    return [*(a1 + 32) _showDaemonAlertForOffer:*(a1 + 40) notificationDictionary:*(a1 + 48) store:*(*(*(a1 + 72) + 8) + 40) account:*(a1 + 56) completion:*(a1 + 64)];
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "skipping alert", v7, 2u);
    }

    return (*(*(a1 + 64) + 16))();
  }
}

uint64_t __71__ICQDaemonOfferManager__processPushNotificationDictionary_completion___block_invoke_292(uint64_t a1)
{
  [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:3];
  [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:1];
  [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:2];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void __71__ICQDaemonOfferManager__processPushNotificationDictionary_completion___block_invoke_293(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(*(*(a1 + 56) + 8) + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __71__ICQDaemonOfferManager__processPushNotificationDictionary_completion___block_invoke_2_294;
  v4[3] = &unk_27A6521C8;
  v5 = *(a1 + 48);
  [v1 _updateOffer:0 buttonId:@"teardown" info:0 account:v2 accountStore:v3 completion:v4];
}

void __71__ICQDaemonOfferManager__processPushNotificationDictionary_completion___block_invoke_2_294(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109378;
    v8[1] = a2;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "reconsidered offers success:%d error:%{public}@", v8, 0x12u);
  }

  (*(*(a1 + 32) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_clearCachedStubsIfOfferIDIsNew:(id)a3
{
  v3 = a3;
  v4 = +[(ICQDaemonPersisted *)ICQDaemonOfferStubs];
  v5 = [v4 containsOfferID:v3];
  v6 = _ICQGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v7)
    {
      [ICQDaemonOfferManager _clearCachedStubsIfOfferIDIsNew:];
    }
  }

  else
  {
    if (v7)
    {
      [ICQDaemonOfferManager _clearCachedStubsIfOfferIDIsNew:];
    }

    +[(ICQDaemonPersisted *)ICQDaemonOfferStubs];
  }
}

- (void)_fetchDictionaryForAccount:(id)a3 quotaKey:(id)a4 quotaReason:(id)a5 stub:(id)a6 notificationID:(id)a7 contextDictionary:(id)a8 mlDaemonExtraFields:(id)a9 completion:(id)a10
{
  v72 = *MEMORY[0x277D85DE8];
  v16 = a3;
  v17 = a4;
  v52 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v51 = a9;
  v21 = a10;
  v22 = _ICQGetLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413570;
    *&buf[4] = v16;
    *&buf[12] = 2112;
    *&buf[14] = v17;
    *&buf[22] = 2112;
    v68 = v52;
    *v69 = 2112;
    *&v69[2] = v18;
    *&v69[10] = 2112;
    *&v69[12] = v19;
    v70 = 2112;
    v71 = v20;
    _os_log_impl(&dword_275572000, v22, OS_LOG_TYPE_DEFAULT, "_fetchDictionaryForAccount:%@ quotaKey:%@ quotaReason:%@ stub:%@ notificationID:%@ contextDictionary:%@", buf, 0x3Eu);
  }

  if (+[_ICQHelperFunctions isServerMockingEnabled])
  {
    [(ICQDaemonOfferManager *)self _mockFetchDictionaryForAccount:v16 quotaKey:v17 stub:v18 notificationID:v19 contextDictionary:v20 completion:v21];
  }

  else if (v16)
  {
    if (v18 && -[ICQDaemonOfferManager _useFetchOffersDataDirectly](self, "_useFetchOffersDataDirectly") && ([v18 serverDictionary], v23 = objc_claimAutoreleasedReturnValue(), v24 = v23 == 0, v23, !v24))
    {
      v25 = [v18 serverDictionary];
      v21[2](v21, v25, 0);
    }

    else
    {
      v26 = [ICQDaemonOfferRequestBuilder alloc];
      v27 = [(ICQDaemonOfferManager *)self accountManager];
      v50 = [(ICQDaemonOfferRequestBuilder *)v26 initWithAccount:v16 accountManager:v27];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v68 = __Block_byref_object_copy__5;
      *v69 = __Block_byref_object_dispose__5;
      LOBYTE(v44) = [(ICQDaemonOfferManager *)self daemonOfferSource]== 2;
      v28 = [(ICQDaemonOfferRequestBuilder *)v50 requestWithQuotaKey:v17 reason:v52 offerStub:v18 notificationID:v19 contextDictionary:v20 mlDaemonExtraFields:v51 sourceIsServerSample:v44];
      *&v69[8] = [v28 mutableCopy];

      if (*(*&buf[8] + 40))
      {
        if ([(ICQNetworkThrottleController *)self->_throttleController requestShouldThrottle:?])
        {
          if (v21)
          {
            v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"Request throttling active for request: %@", *(*&buf[8] + 40)];
            v30 = ICQCreateErrorWithMessage(16, v29);
            (v21)[2](v21, 0, v30);
          }
        }

        else
        {
          v36 = _ICQGetLogSystem();
          v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG);

          if (v37)
          {
            v38 = _ICQGetLogSystem();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
            {
              v46 = *(*&buf[8] + 40);
              v49 = [v46 allHTTPHeaderFields];
              v39 = [*(*&buf[8] + 40) HTTPBody];
              v45 = objc_alloc(MEMORY[0x277CCACA8]);
              v48 = [*(*&buf[8] + 40) HTTPBody];
              *v64 = 138413058;
              *&v64[4] = v46;
              *&v64[12] = 2112;
              *&v64[14] = v49;
              *&v64[22] = 2112;
              v65 = v39;
              LOWORD(v66) = 2112;
              v47 = [v45 initWithData:v48 encoding:4];
              *(&v66 + 2) = v47;
              _os_log_debug_impl(&dword_275572000, v38, OS_LOG_TYPE_DEBUG, "request: %@ headers: %@ body: %@ body (as string): %@", v64, 0x2Au);
            }
          }

          else
          {
            v38 = _ICQGetLogSystem();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *v64 = 0;
              _os_log_impl(&dword_275572000, v38, OS_LOG_TYPE_DEFAULT, "sending request for latest offer", v64, 2u);
            }
          }

          *v64 = 0;
          *&v64[8] = v64;
          *&v64[16] = 0x3032000000;
          v65 = __Block_byref_object_copy__5;
          *&v66 = __Block_byref_object_dispose__5;
          *(&v66 + 1) = [[ICQNetworkRequestController alloc] initWithSession:self->_sharedURLSession numberOfSecondsBetweenRetries:&unk_2884452B0];
          v62[0] = 0;
          v62[1] = v62;
          v62[2] = 0x3032000000;
          v62[3] = __Block_byref_object_copy__5;
          v62[4] = __Block_byref_object_dispose__5;
          v63 = self->_throttleController;
          v40 = *(*&v64[8] + 40);
          v41 = *(*&buf[8] + 40);
          v42 = [MEMORY[0x277CBEB98] setWithArray:&unk_2884452C8];
          v60[0] = MEMORY[0x277D85DD0];
          v60[1] = 3221225472;
          v60[2] = __142__ICQDaemonOfferManager__fetchDictionaryForAccount_quotaKey_quotaReason_stub_notificationID_contextDictionary_mlDaemonExtraFields_completion___block_invoke;
          v60[3] = &unk_27A652218;
          v61 = v50;
          v53[0] = MEMORY[0x277D85DD0];
          v53[1] = 3221225472;
          v53[2] = __142__ICQDaemonOfferManager__fetchDictionaryForAccount_quotaKey_quotaReason_stub_notificationID_contextDictionary_mlDaemonExtraFields_completion___block_invoke_2;
          v53[3] = &unk_27A652240;
          v54 = v18;
          v55 = v19;
          v57 = v62;
          v58 = buf;
          v56 = v21;
          v59 = v64;
          [v40 executeRequest:v41 acceptedStatusCodes:v42 renewHeadersBlock:v60 completion:v53];

          _Block_object_dispose(v62, 8);
          _Block_object_dispose(v64, 8);
        }
      }

      else if (v21)
      {
        v32 = MEMORY[0x277CCACA8];
        v33 = [v18 offerId];
        v34 = [v32 stringWithFormat:@"Failed to build request for key: %@ reason: %@ offerID: %@ notificationID: %@ contextDictionary: %@", v17, v52, v33, v19, v20];
        v35 = ICQCreateErrorWithMessage(6, v34);
        (v21)[2](v21, 0, v35);
      }

      _Block_object_dispose(buf, 8);
    }
  }

  else if (v21)
  {
    v31 = ICQCreateError(8);
    (v21)[2](v21, 0, v31);
  }

  v43 = *MEMORY[0x277D85DE8];
}

void __142__ICQDaemonOfferManager__fetchDictionaryForAccount_quotaKey_quotaReason_stub_notificationID_contextDictionary_mlDaemonExtraFields_completion___block_invoke_2(void *a1, void *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = @"refreshOffer";
  if (!a1[4] && !a1[5])
  {
    v8 = @"fetchOffer";
  }

  v9 = a4;
  ICQLogDataTaskComplete(v8, v7, a3, v9);
  [*(*(a1[7] + 8) + 40) request:*(*(a1[8] + 8) + 40) didCompleteWithError:v9];

  if (v7)
  {
    v18 = 0;
    v10 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v18];
    v11 = v18;
    if (v11)
    {
      v12 = _ICQGetLogSystem();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v11;
        _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "error parsing fetched offer: %@", buf, 0xCu);
      }

      v13 = _ICQGetLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
        *buf = 138412290;
        v20 = v14;
        _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  (*(a1[6] + 16))();
  v15 = *(a1[9] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = 0;

  v17 = *MEMORY[0x277D85DE8];
}

- (void)addPremiumOffersHeaderIfNeededForRequest:(id)a3
{
  v3 = a3;
  v4 = [_ICQHelperFunctions defaultValueForKey:@"_ICQEnableServerPremiumOffers"];
  v5 = v4;
  if (v4 && [v4 BOOLValue])
  {
    [v3 setValue:@"true" forHTTPHeaderField:@"x-apple-opt-in-flow"];
  }

  v6 = [_ICQHelperFunctions defaultValueForKey:@"_ICQAddFetchOffersHeaders"];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __66__ICQDaemonOfferManager_addPremiumOffersHeaderIfNeededForRequest___block_invoke;
  v8[3] = &unk_27A651630;
  v9 = v3;
  v7 = v3;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

void __66__ICQDaemonOfferManager_addPremiumOffersHeaderIfNeededForRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      [*(a1 + 32) setValue:v5 forHTTPHeaderField:v6];
    }
  }
}

- (void)_mockFetchDictionaryForAccount:(id)a3 quotaKey:(id)a4 stub:(id)a5 notificationID:(id)a6 contextDictionary:(id)a7 completion:(id)a8
{
  v40 = *MEMORY[0x277D85DE8];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a8;
  v15 = _ICQGetLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, "Mocking the server response", buf, 2u);
  }

  v36 = [MEMORY[0x277CCAA00] defaultManager];
  if (([(__CFString *)v11 isEqualToString:@"quotaFetchOffersURL"]& 1) != 0)
  {
    v16 = @"_ICQ_MOCK_FETCH_OFFER";
    goto LABEL_12;
  }

  if (![(__CFString *)v11 isEqualToString:@"quotaRefreshOfferDetailsURL"])
  {
    v17 = _ICQGetLogSystem();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
LABEL_11:

      v16 = 0;
      goto LABEL_12;
    }

    *buf = 138412290;
    v39 = v11;
    v18 = "Mocking Not Supported for %@";
    v19 = v17;
    v20 = 12;
LABEL_10:
    _os_log_impl(&dword_275572000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, v20);
    goto LABEL_11;
  }

  if (v13)
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"_ICQ_MOCK_%@", v13];
    goto LABEL_12;
  }

  if (!v12)
  {
    v17 = _ICQGetLogSystem();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    *buf = 0;
    v18 = "Mocking Not Supported in case of both stub and notification id are nil";
    v19 = v17;
    v20 = 2;
    goto LABEL_10;
  }

  v33 = MEMORY[0x277CCACA8];
  v34 = [v12 offerId];
  v16 = [v33 stringWithFormat:@"_ICQ_MOCK_%@", v34];

LABEL_12:
  v21 = _ICQGetLogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v16;
    _os_log_impl(&dword_275572000, v21, OS_LOG_TYPE_DEFAULT, "getting mock server dict from %@", buf, 0xCu);
  }

  v22 = [_ICQHelperFunctions defaultStringValueForKey:v16];
  v23 = [v22 dataUsingEncoding:4];
  if (v23)
  {
    v37 = 0;
    v24 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v23 options:0 error:&v37];
    v25 = v37;
    if (v25)
    {
      v26 = _ICQGetLogSystem();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = v25;
        _os_log_impl(&dword_275572000, v26, OS_LOG_TYPE_DEFAULT, "error parsing mock offer: %@", buf, 0xCu);
      }

      v27 = _ICQGetLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v11;
        v28 = v13;
        v29 = v12;
        v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v23 encoding:4];
        *buf = 138412290;
        v39 = v30;
        _os_log_impl(&dword_275572000, v27, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);

        v12 = v29;
        v13 = v28;
        v11 = v35;
      }

      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  v31 = _ICQGetLogSystem();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v24;
    _os_log_impl(&dword_275572000, v31, OS_LOG_TYPE_DEFAULT, "mockServerDict = %@", buf, 0xCu);
  }

  v14[2](v14, v24, 0);
  v32 = *MEMORY[0x277D85DE8];
}

- (void)_updateQuotaForAccount:(id)a3 withServerDictionary:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _ICQDictionaryForKey(a4, @"quotaInfo");
  v7 = [v6 objectForKeyedSubscript:@"totalQuota"];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v6 objectForKeyedSubscript:@"total_quota"];
  }

  v10 = v9;

  if (objc_opt_respondsToSelector())
  {
    v11 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v10, "longLongValue")}];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v5 aa_lastKnownQuota];
  v13 = v12;
  if (v11 && ([v12 isEqualToNumber:v11] & 1) == 0)
  {
    v14 = [v5 copy];
    [v14 reload];
    [v14 aa_setLastKnownQuota:v11];
    v15 = _ICQGetLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412802;
      v19 = v5;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v11;
      _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, "Quota for %@ changed from %@ to %@; updating last known quota", &v18, 0x20u);
    }

    v16 = [v5 accountStore];
    [v16 saveVerifiedAccount:v14 withCompletionHandler:&__block_literal_global_363];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __69__ICQDaemonOfferManager__updateQuotaForAccount_withServerDictionary___block_invoke(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (a2)
    {
      v6 = @"YES";
    }

    v8 = 138412546;
    v9 = v6;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "Updated account quota information with success: %@, error: %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_fetchDaemonOfferForAccount:(id)a3 stub:(id)a4 notificationID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [_ICQHelperFunctions _getOfferDescriptionFromRequestType:[_ICQHelperFunctions _offerRequestTypeForStub:v11]];
  v15 = MEMORY[0x277CCACA8];
  v16 = [v10 aa_altDSID];
  v17 = [v15 stringWithFormat:@"%@", v16];
  v18 = [v17 stringByAppendingString:v14];

  if (v12)
  {
    v19 = [v18 stringByAppendingString:v12];

    v18 = v19;
  }

  objc_initWeak(&location, self);
  v20 = [(ICQDaemonOfferManager *)self taskLimiters];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __84__ICQDaemonOfferManager__fetchDaemonOfferForAccount_stub_notificationID_completion___block_invoke;
  v24[3] = &unk_27A652288;
  objc_copyWeak(&v28, &location);
  v21 = v10;
  v25 = v21;
  v22 = v11;
  v26 = v22;
  v23 = v12;
  v27 = v23;
  [v20 performWithIdentifier:v18 task:v24 completion:v13];

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
}

void __84__ICQDaemonOfferManager__fetchDaemonOfferForAccount_stub_notificationID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _coalescedFetchDaemonOfferForAccount:*(a1 + 32) stub:*(a1 + 40) notificationID:*(a1 + 48) completion:v3];
}

- (void)_coalescedFetchDaemonOfferForAccount:(id)a3 stub:(id)a4 notificationID:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!(v11 | v12))
  {
    v14 = _ICQGetLogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "WARNING: both stub and notificationID are nil -- attempting blind refresh", buf, 2u);
    }
  }

  v15 = _ICQSignpostLogSystem();
  v16 = objc_opt_new();
  v17 = _ICQSignpostCreateWithObject(v15, v16);
  v19 = v18;

  v20 = _ICQSignpostLogSystem();
  v21 = v20;
  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v17, "RefreshOfferDetails", " enableTelemetry=YES ", buf, 2u);
  }

  v22 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [ICQDaemonOfferManager _coalescedFetchDaemonOfferForAccount:stub:notificationID:completion:];
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __93__ICQDaemonOfferManager__coalescedFetchDaemonOfferForAccount_stub_notificationID_completion___block_invoke;
  v27[3] = &unk_27A6522D0;
  v28 = v11;
  v29 = self;
  v30 = v10;
  v31 = v12;
  v33 = v17;
  v34 = v19;
  v32 = v13;
  v23 = v13;
  v24 = v12;
  v25 = v10;
  v26 = v11;
  [(ICQDaemonOfferManager *)self _fetchDictionaryForAccount:v25 quotaKey:@"quotaRefreshOfferDetailsURL" quotaReason:@"RefreshOfferDetails" stub:v26 notificationID:v24 contextDictionary:0 mlDaemonExtraFields:0 completion:v27];
}

void __93__ICQDaemonOfferManager__coalescedFetchDaemonOfferForAccount_stub_notificationID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [[ICQDaemonOfferStub alloc] initWithServerDictionary:v5];
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  [ICQMLBiomePublisher publishEventWithRefreshOfferDetailsResponse:v9];
  if (v7)
  {
    if (v5)
    {
      v10 = [(ICQDaemonOfferStub *)v7 offerId];
      v11 = [(ICQDaemonOfferStub *)v8 offerId];
      v12 = [v10 isEqualToString:v11];

      if ((v12 & 1) == 0)
      {
        v13 = _ICQGetLogSystem();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __93__ICQDaemonOfferManager__coalescedFetchDaemonOfferForAccount_stub_notificationID_completion___block_invoke_cold_1(v8, v7);
        }
      }

      if ([(ICQDaemonOfferStub *)v7 isBuddyOffer]&& ![(ICQDaemonOfferStub *)v8 isBuddyOffer])
      {
        v14 = _ICQGetLogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "missing buddyOffer flag after refresh offer details", buf, 2u);
        }
      }
    }
  }

  else
  {
    v7 = v8;
  }

  v15 = [(ICQDaemonOfferStub *)v7 conditionsWhenChosen];
  if (v15)
  {
    [(ICQDaemonOfferStub *)v7 conditionsWhenChosen];
  }

  else
  {
    +[ICQDaemonOfferConditions currentConditions];
  }
  v16 = ;

  v17 = [(ICQDaemonOfferStub *)v8 criteria];
  v18 = [v17 isSatisfiedByConditions:v16];

  if (v18)
  {
    if (v5)
    {
      v47 = v6;
      v19 = [*(a1 + 40) _classForOfferStub:v8];
      ICQLogOfferDetailsForServerDictionary(v5);
      [*(a1 + 40) _updateQuotaForAccount:*(a1 + 48) withServerDictionary:v5];
      v20 = [[v19 alloc] _initWithAccount:*(a1 + 48) serverDictionary:v5];
      [v20 setNotificationID:*(a1 + 56)];
      [v20 cacheLiftUIContent];
      [v20 persistObject];
      Nanoseconds = _ICQSignpostGetNanoseconds(*(a1 + 72), *(a1 + 80));
      v22 = _ICQSignpostLogSystem();
      v23 = v22;
      v24 = *(a1 + 72);
      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 138412290;
        *v49 = v19;
        _os_signpost_emit_with_name_impl(&dword_275572000, v23, OS_SIGNPOST_INTERVAL_END, v24, "RefreshOfferDetails", "%@", buf, 0xCu);
      }

      v25 = _ICQSignpostLogSystem();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109634;
        *v49 = *(a1 + 72);
        *&v49[4] = 2048;
        *&v49[6] = Nanoseconds / 1000000000.0;
        *&v49[14] = 2112;
        *&v49[16] = v19;
        _os_log_debug_impl(&dword_275572000, v25, OS_LOG_TYPE_DEBUG, "SIGNPOST END   [id: %hu]: (%.4fs) RefreshOfferDetails %@", buf, 0x1Cu);
      }

      v26 = _ICQGetLogSystem();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v20 expirationDate];
        *buf = 138543618;
        *v49 = v19;
        *&v49[8] = 2112;
        *&v49[10] = v27;
        _os_log_impl(&dword_275572000, v26, OS_LOG_TYPE_DEFAULT, "Finished persisting %{public}@ offer; expires on %@", buf, 0x16u);
      }

      v28 = *(a1 + 64);
      if (v28)
      {
        (*(v28 + 16))(v28, v20, 0);
      }

      v29 = v47;
      goto LABEL_58;
    }
  }

  else
  {
    v30 = _ICQGetLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v30, OS_LOG_TYPE_DEFAULT, "Fetched offer is not valid in current conditions, invalidating both old and new offers", buf, 2u);
    }

    v31 = [(ICQDaemonOfferStub *)v8 offerResetURL];

    v32 = _ICQGetLogSystem();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    if (v31)
    {
      if (v33)
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v32, OS_LOG_TYPE_DEFAULT, "Updating server with invalid fetched offer status", buf, 2u);
      }

      [*(a1 + 40) _fetchDictionaryForAccount:*(a1 + 48) quotaKey:@"quotaOfferReset" quotaReason:@"OfferReset" stub:v8 notificationID:*(a1 + 56) contextDictionary:0 mlDaemonExtraFields:0 completion:&__block_literal_global_374];
    }

    else
    {
      if (v33)
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v32, OS_LOG_TYPE_DEFAULT, "No offerResetURL provided in fetched offer, unable to notify server", buf, 2u);
      }
    }
  }

  v34 = _ICQGetLogSystem();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    if ([(ICQDaemonOfferStub *)v7 isBuddyOffer])
    {
      v35 = @"buddy ";
    }

    else
    {
      v35 = &stru_288431E38;
    }

    *buf = 138543618;
    *v49 = v6;
    *&v49[8] = 2114;
    *&v49[10] = v35;
    _os_log_impl(&dword_275572000, v34, OS_LOG_TYPE_DEFAULT, "error %{public}@ occurred fetching %{public}@offer -- persisting placeholder", buf, 0x16u);
  }

  v36 = [*(a1 + 40) _classForOfferStub:v7];
  v29 = v6;
  v5 = [*(a1 + 40) _placeholderOfferForAccount:*(a1 + 48) requestType:-[ICQDaemonOfferStub requestType](v7 error:{"requestType"), v6}];
  [v5 cacheLiftUIContent];
  [v5 persistObject];
  v37 = _ICQSignpostGetNanoseconds(*(a1 + 72), *(a1 + 80));
  v38 = _ICQSignpostLogSystem();
  v39 = v38;
  v40 = *(a1 + 72);
  if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
  {
    *buf = 138412290;
    *v49 = v36;
    _os_signpost_emit_with_name_impl(&dword_275572000, v39, OS_SIGNPOST_INTERVAL_END, v40, "RefreshOfferDetails", "%@", buf, 0xCu);
  }

  v41 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109634;
    *v49 = *(a1 + 72);
    *&v49[4] = 2048;
    *&v49[6] = v37 / 1000000000.0;
    *&v49[14] = 2112;
    *&v49[16] = v36;
    _os_log_debug_impl(&dword_275572000, v41, OS_LOG_TYPE_DEBUG, "SIGNPOST END   [id: %hu]: (%.4fs) RefreshOfferDetails %@", buf, 0x1Cu);
  }

  v42 = _ICQGetLogSystem();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    if ([(ICQDaemonOfferStub *)v7 isBuddyOffer])
    {
      v43 = @"buddy ";
    }

    else
    {
      v43 = &stru_288431E38;
    }

    v44 = [v5 expirationDate];
    *buf = 138543618;
    *v49 = v43;
    *&v49[8] = 2112;
    *&v49[10] = v44;
    _os_log_impl(&dword_275572000, v42, OS_LOG_TYPE_DEFAULT, "Finished persisting placeholder %{public}@ offer; expires on %@", buf, 0x16u);
  }

  v45 = *(a1 + 64);
  if (v45)
  {
    (*(v45 + 16))(v45, v5, 0);
  }

LABEL_58:

  v46 = *MEMORY[0x277D85DE8];
}

void __93__ICQDaemonOfferManager__coalescedFetchDaemonOfferForAccount_stub_notificationID_completion___block_invoke_372(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __93__ICQDaemonOfferManager__coalescedFetchDaemonOfferForAccount_stub_notificationID_completion___block_invoke_372_cold_1();
    }
  }
}

- (Class)_classForOfferStub:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [a3 offerClass];
  v4 = _ICQGetLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = v3;
    _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "Fetched daemon offer of class %{public}@", &v7, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)_fetchDaemonOfferStubsForAccount:(id)a3 isForBuddy:(BOOL)a4 quotaReason:(id)a5 completion:(id)a6
{
  v8 = a4;
  v29 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = a5;
  if ([(ICQDaemonOfferManager *)self daemonOfferSource]== 1)
  {
    v13 = +[ICQDaemonOfferStubs daemonOfferStubsDictionarySample];
    v14 = _ICQGetLogSystem();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "fetched local sample offer", buf, 2u);
      }

      v14 = [[ICQDaemonOfferStubs alloc] _initWithAccount:v10 serverDictionary:v13];
      [v14 persistObject];
      v16 = _ICQGetLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v14 expirationDate];
        *buf = 138412290;
        v28 = v17;
        _os_log_impl(&dword_275572000, v16, OS_LOG_TYPE_DEFAULT, "Finished persisting local offer stubs; expires on %@", buf, 0xCu);
      }

      if (v11)
      {
        v11[2](v11, v14, 0);
      }
    }

    else if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "Unable to get local offer stubs; dropping through to server stubs", buf, 2u);
    }
  }

  v18 = &ICQAccountQuotaFetchOffersForBuddyURLKey;
  if (!v8)
  {
    v18 = &ICQAccountQuotaFetchOffersURLKey;
  }

  v19 = *v18;
  v20 = _ICQGetLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v19;
    _os_log_impl(&dword_275572000, v20, OS_LOG_TYPE_DEFAULT, "Fetching offer stubs - calling %@", buf, 0xCu);
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __92__ICQDaemonOfferManager__fetchDaemonOfferStubsForAccount_isForBuddy_quotaReason_completion___block_invoke;
  v24[3] = &unk_27A6522F8;
  v24[4] = self;
  v25 = v10;
  v26 = v11;
  v21 = v11;
  v22 = v10;
  [(ICQDaemonOfferManager *)self _fetchDictionaryForAccount:v22 quotaKey:v19 quotaReason:v12 stub:0 notificationID:0 contextDictionary:0 mlDaemonExtraFields:0 completion:v24];

  v23 = *MEMORY[0x277D85DE8];
}

void __92__ICQDaemonOfferManager__fetchDaemonOfferStubsForAccount_isForBuddy_quotaReason_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v8)
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "fetched offers:\n%@", &v15, 0xCu);
    }

    [ICQMLBiomePublisher publishEventWithFetchOffersResponse:v5];
    [*(a1 + 32) _updateQuotaForAccount:*(a1 + 40) withServerDictionary:v5];
    v9 = [[ICQDaemonOfferStubs alloc] _initWithAccount:*(a1 + 40) serverDictionary:v5];
    [v9 persistObject];
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 expirationDate];
      v15 = 138412290;
      v16 = v11;
      v12 = "Finished persisting offer stubs; expires on %@";
LABEL_10:
      _os_log_impl(&dword_275572000, v10, OS_LOG_TYPE_DEFAULT, v12, &v15, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      v15 = 138543362;
      v16 = v6;
      _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "error %{public}@ occurred fetching offer stubs -- persisting placeholder", &v15, 0xCu);
    }

    v9 = [[ICQDaemonOfferStubs alloc] _initWithAccount:*(a1 + 40) error:v6];
    [v9 persistObject];
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 expirationDate];
      v15 = 138412290;
      v16 = v11;
      v12 = "Finished persisting placeholder stubs; expires on %@";
      goto LABEL_10;
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, v9, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_showDaemonAlertForOffer:(id)a3 notificationDictionary:(id)a4 store:(id)a5 account:(id)a6 completion:(id)a7
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__ICQDaemonOfferManager__showDaemonAlertForOffer_notificationDictionary_store_account_completion___block_invoke;
  block[3] = &unk_27A652348;
  v23 = v12;
  v24 = v14;
  v20 = v11;
  v21 = self;
  v22 = v13;
  v15 = v12;
  v16 = v13;
  v17 = v14;
  v18 = v11;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __98__ICQDaemonOfferManager__showDaemonAlertForOffer_notificationDictionary_store_account_completion___block_invoke(id *a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138412290;
    v25 = v3;
    _os_log_impl(&dword_275572000, v2, OS_LOG_TYPE_DEFAULT, "showing alert for daemonOffer %@", buf, 0xCu);
  }

  if (sDaemonAlert)
  {
    [sDaemonAlert dismissAlert];
    v4 = sDaemonAlert;
    sDaemonAlert = 0;
  }

  v5 = [ICQDaemonAlert shouldShowForDaemonOffer:a1[4]];
  v6 = _ICQGetLogSystem();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1[4], "level")}];
      v9 = [a1[4] alertSpecification];
      *buf = 138412546;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "Showing alert from daemon with offer level %@ alertSpecification %@", buf, 0x16u);
    }

    v10 = [[ICQDaemonAlert alloc] initWithDaemonOffer:a1[4]];
    v11 = sDaemonAlert;
    sDaemonAlert = v10;

    +[ICQMLBiomePublisher publishOfferDisplayActionEvent];
    v12 = sDaemonAlert;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __98__ICQDaemonOfferManager__showDaemonAlertForOffer_notificationDictionary_store_account_completion___block_invoke_378;
    v19[3] = &unk_27A652320;
    v18 = *(a1 + 2);
    v13 = v18.i64[0];
    v20 = vextq_s8(v18, v18, 8uLL);
    v21 = a1[6];
    v22 = a1[7];
    v23 = a1[8];
    [v12 showAlertWithCompletion:v19];
  }

  else
  {
    if (v7)
    {
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(a1[4], "level")}];
      v15 = [a1[4] alertSpecification];
      *buf = 138412546;
      v25 = v14;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "Skipping alert from daemon offer level %@ alertSpecification %@", buf, 0x16u);
    }

    v16 = a1[8];
    if (v16)
    {
      v16[2]();
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __98__ICQDaemonOfferManager__showDaemonAlertForOffer_notificationDictionary_store_account_completion___block_invoke_378(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = _ICQGetLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = _ICQStringForAction(a2);
    *buf = 138412546;
    v19 = v7;
    v20 = 2112;
    v21 = v5;
    _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "Daemon alert completed with action %@ parameters %@", buf, 0x16u);
  }

  if (a2 == 4)
  {
    +[ICQMLBiomePublisher publishOfferBuyActionEvent];
  }

  v8 = [v5 objectForKeyedSubscript:@"ServerLinkId"];
  if (v8)
  {
    v9 = *(a1 + 32);
    v10 = [*(a1 + 40) offerId];
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __98__ICQDaemonOfferManager__showDaemonAlertForOffer_notificationDictionary_store_account_completion___block_invoke_379;
    v16[3] = &unk_27A6521C8;
    v17 = *(a1 + 64);
    [v9 _updateOffer:v10 buttonId:v8 info:0 account:v11 accountStore:v12 completion:v16];
  }

  else
  {
    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "no buttonId, skipping teardown ack", buf, 2u);
    }

    v14 = *(a1 + 64);
    if (v14)
    {
      (*(v14 + 16))();
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t __98__ICQDaemonOfferManager__showDaemonAlertForOffer_notificationDictionary_store_account_completion___block_invoke_379(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_postDaemonOfferChangedDueToPushDarwinNotificationRequestType:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  v5 = v4;
  if (a3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [_ICQHelperFunctions _getOfferDescriptionFromRequestType:a3];
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "posting push received darwin notification: %@", &v14, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v5 = [_ICQHelperFunctions _darwinNotificationNameForRequestType:a3];
    CFNotificationCenterPostNotification(DarwinNotifyCenter, v5, 0, 0, 1u);
    v8 = _ICQSignpostLogSystem();
    v9 = _ICQSignpostCreate(v8);

    v10 = _ICQSignpostLogSystem();
    v11 = v10;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      v14 = 138412290;
      v15 = v5;
      _os_signpost_emit_with_name_impl(&dword_275572000, v11, OS_SIGNPOST_EVENT, v9, "DarwinNotification", " enableTelemetry=YES %@", &v14, 0xCu);
    }

    v12 = _ICQSignpostLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [ICQDaemonOfferManager _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:];
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [ICQDaemonOfferManager _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_persistAndNotifyMissingPlaceholdersForRequestType:(int64_t)a3 account:(id)a4
{
  v6 = a4;
  if (a3 == 5)
  {
    v13 = [(objc_class *)[(ICQDaemonOfferManager *)self _daemonOfferClassForRequestType:5] persistedObject];

    if (!v13)
    {
      v14 = [(ICQDaemonOfferManager *)self _placeholderOfferForAccount:v6 requestType:5 error:0];
      [v14 persistObject];
    }
  }

  else if (a3)
  {
    v15 = [(objc_class *)[(ICQDaemonOfferManager *)self _daemonOfferClassForRequestType:a3] persistedObject];

    if (!v15)
    {
      v16 = [(ICQDaemonOfferManager *)self _placeholderOfferForAccount:v6 requestType:a3 error:0];
      [v16 persistObject];

      [(ICQDaemonOfferManager *)self _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:a3];
    }
  }

  else
  {
    v7 = +[(ICQDaemonPersisted *)ICQDaemonOffer];

    if (!v7)
    {
      v8 = [(ICQDaemonOfferManager *)self _placeholderOfferForAccount:v6 requestType:3 error:0];
      [v8 persistObject];

      [(ICQDaemonOfferManager *)self _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:3];
    }

    v9 = +[(ICQDaemonPersisted *)ICQDaemonDefaultOffer];

    if (!v9)
    {
      v10 = [(ICQDaemonOfferManager *)self _placeholderOfferForAccount:v6 requestType:1 error:0];
      [v10 persistObject];

      [(ICQDaemonOfferManager *)self _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:1];
    }

    v11 = +[(ICQDaemonPersisted *)ICQDaemonPremiumOffer];

    if (!v11)
    {
      v12 = [(ICQDaemonOfferManager *)self _placeholderOfferForAccount:v6 requestType:2 error:0];
      [v12 persistObject];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __84__ICQDaemonOfferManager__persistAndNotifyMissingPlaceholdersForRequestType_account___block_invoke;
      v17[3] = &unk_27A651BB8;
      v17[4] = self;
      [(ICQDaemonOfferManager *)self _postFollowupForDaemonOffer:v12 replaceExisting:1 completion:v17];
    }
  }
}

- (void)updateOfferForAccount:(id)a3 offerId:(id)a4 buttonId:(id)a5 info:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a4;
  v16 = a3;
  v17 = [v16 accountStore];
  [(ICQDaemonOfferManager *)self _updateOffer:v15 buttonId:v14 info:v13 account:v16 accountStore:v17 completion:v12];
}

- (void)_updateOffer:(id)a3 buttonId:(id)a4 info:(id)a5 account:(id)a6 accountStore:(id)a7 completion:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = objc_alloc_init(ICQOfferUpdateRequestContext);
  [(ICQOfferUpdateRequestContext *)v20 setAccount:v17];
  [(ICQOfferUpdateRequestContext *)v20 setButtonId:v15];
  v26 = v14;
  [(ICQOfferUpdateRequestContext *)v20 setOfferId:v14];
  v21 = [v16 objectForKeyedSubscript:@"ICQUpdateOfferKeyIsZeroAction"];
  LOBYTE(v14) = objc_opt_respondsToSelector();

  if (v14)
  {
    v22 = [v16 objectForKeyedSubscript:@"ICQUpdateOfferKeyIsZeroAction"];
    -[ICQOfferUpdateRequestContext setZeroAction:](v20, "setZeroAction:", [v22 BOOLValue]);
  }

  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__5;
  v30[4] = __Block_byref_object_dispose__5;
  v23 = v18;
  v31 = v23;
  v24 = [[ICQOfferUpdateController alloc] initWithSession:self->_sharedURLSession];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __84__ICQDaemonOfferManager__updateOffer_buttonId_info_account_accountStore_completion___block_invoke;
  v27[3] = &unk_27A652370;
  v29 = v30;
  v25 = v19;
  v28 = v25;
  [(ICQOfferUpdateController *)v24 performOfferUpdateWithContext:v20 completion:v27];

  _Block_object_dispose(v30, 8);
}

void __84__ICQDaemonOfferManager__updateOffer_buttonId_info_account_accountStore_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v8);
  }
}

- (void)_teardownCachedOfferAndNotify:(BOOL)a3
{
  [ICQDaemonAlert dismissAlertsWithNotificationID:0];
  +[(ICQDaemonPersisted *)ICQDaemonOffer];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__ICQDaemonOfferManager__teardownCachedOfferAndNotify___block_invoke;
  v5[3] = &unk_27A652398;
  v6 = a3;
  v5[4] = self;
  [(ICQDaemonOfferManager *)self clearFollowupsOfferType:3 completion:v5];
}

void __55__ICQDaemonOfferManager__teardownCachedOfferAndNotify___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = _ICQGetLogSystem();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "regular daemon offer / alerts / followups were torn down without replacement; notifying clients", buf, 2u);
    }

    [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:3];
  }

  else
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "regular daemon offer / alerts / followups were torn down but will be replaced; not notifying clients until then", v5, 2u);
    }
  }
}

- (void)_teardownCachedDefaultOfferAndNotify:(BOOL)a3
{
  +[(ICQDaemonPersisted *)ICQDaemonDefaultOffer];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__ICQDaemonOfferManager__teardownCachedDefaultOfferAndNotify___block_invoke;
  v5[3] = &unk_27A652398;
  v6 = a3;
  v5[4] = self;
  [(ICQDaemonOfferManager *)self clearFollowupsOfferType:3 completion:v5];
}

void __62__ICQDaemonOfferManager__teardownCachedDefaultOfferAndNotify___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = _ICQGetLogSystem();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "default daemon offer torn down without replacement; notifying clients", buf, 2u);
    }

    [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:1];
  }

  else
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "default daemon offer torn down but will be replaced; not notifying clients until then", v5, 2u);
    }
  }
}

- (void)_teardownCachedPremiumOfferAndNotify:(BOOL)a3
{
  +[(ICQDaemonPersisted *)ICQDaemonPremiumOffer];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__ICQDaemonOfferManager__teardownCachedPremiumOfferAndNotify___block_invoke;
  v5[3] = &unk_27A652398;
  v6 = a3;
  v5[4] = self;
  [(ICQDaemonOfferManager *)self clearFollowupsOfferType:2 completion:v5];
}

void __62__ICQDaemonOfferManager__teardownCachedPremiumOfferAndNotify___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = _ICQGetLogSystem();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "premium daemon offer / followups were torn down without replacement; notifying clients", buf, 2u);
    }

    [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:2];
  }

  else
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "premium daemon offer / alerts / followups were torn down but will be replaced; not notifying clients until then", v5, 2u);
    }
  }
}

- (void)_teardownCachedEventOfferAndNotify:(BOOL)a3
{
  +[(ICQDaemonPersisted *)ICQDaemonEventOffer];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__ICQDaemonOfferManager__teardownCachedEventOfferAndNotify___block_invoke;
  v5[3] = &unk_27A652398;
  v6 = a3;
  v5[4] = self;
  [(ICQDaemonOfferManager *)self clearFollowupsOfferType:5 completion:v5];
}

void __60__ICQDaemonOfferManager__teardownCachedEventOfferAndNotify___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = _ICQGetLogSystem();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "premium daemon offer / followups were torn down without replacement; notifying clients", buf, 2u);
    }

    [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:5];
  }

  else
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "premium daemon offer / alerts / followups were torn down but will be replaced; not notifying clients until then", v5, 2u);
    }
  }
}

+ (id)getCkBackupDeviceIDWithCompletionHandler:(id)a3
{
  v3 = a3;
  if (getCkBackupDeviceIDWithCompletionHandler__onceToken != -1)
  {
    +[ICQDaemonOfferManager getCkBackupDeviceIDWithCompletionHandler:];
  }

  if (v3)
  {
    v4 = [getCkBackupDeviceIDWithCompletionHandler__loader value];

    if (v4)
    {
      v5 = [getCkBackupDeviceIDWithCompletionHandler__loader value];
      v3[2](v3, v5);
    }

    else
    {
      [getCkBackupDeviceIDWithCompletionHandler__loader setDidUpdate:v3];
    }
  }

  v6 = [getCkBackupDeviceIDWithCompletionHandler__loader value];

  return v6;
}

uint64_t __66__ICQDaemonOfferManager_getCkBackupDeviceIDWithCompletionHandler___block_invoke()
{
  v0 = [[ICQAsyncValueLoader alloc] initWithDefaultValue:0 valueFetcher:&__block_literal_global_391];
  v1 = getCkBackupDeviceIDWithCompletionHandler__loader;
  getCkBackupDeviceIDWithCompletionHandler__loader = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

void __66__ICQDaemonOfferManager_getCkBackupDeviceIDWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [v4 isEqualToString:@"com.apple.ind"];

  if (v5)
  {
    v6 = _ICQGetLogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v6, OS_LOG_TYPE_DEFAULT, "Fetching CloudKit backup container device id...", buf, 2u);
    }

    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v7 = getCKContainerClass_softClass;
    v20 = getCKContainerClass_softClass;
    if (!getCKContainerClass_softClass)
    {
      *buf = MEMORY[0x277D85DD0];
      v13 = 3221225472;
      v14 = __getCKContainerClass_block_invoke;
      v15 = &unk_27A6517A8;
      v16 = &v17;
      __getCKContainerClass_block_invoke(buf);
      v7 = v18[3];
    }

    v8 = v7;
    _Block_object_dispose(&v17, 8);
    v9 = [v7 containerWithIdentifier:@"com.apple.backup.ios"];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __66__ICQDaemonOfferManager_getCkBackupDeviceIDWithCompletionHandler___block_invoke_398;
    v10[3] = &unk_27A6523E0;
    v11 = v2;
    [v9 fetchCurrentDeviceIDWithCompletionHandler:v10];
  }

  else
  {
    (*(v2 + 2))(v2, 0);
  }
}

void __66__ICQDaemonOfferManager_getCkBackupDeviceIDWithCompletionHandler___block_invoke_398(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __66__ICQDaemonOfferManager_getCkBackupDeviceIDWithCompletionHandler___block_invoke_398_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "Fetched CloudKit backup container device id: %@", &v10, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (Class)_daemonOfferClassForRequestType:(int64_t)a3
{
  if (a3 > 5)
  {
    v5 = 0;
  }

  else
  {
    v4 = *off_27A652758[a3];
    v5 = objc_opt_class();
  }

  return v5;
}

- (id)_placeholderOfferForAccount:(id)a3 requestType:(int64_t)a4 error:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [objc_alloc(-[ICQDaemonOfferManager _daemonOfferClassForRequestType:](self _daemonOfferClassForRequestType:{a4)), "_initWithAccount:error:", v9, v8}];

  [v10 setNotificationID:&stru_288431E38];

  return v10;
}

void __109__ICQDaemonOfferManager__reconsiderOffersForAccount_isForBuddy_quotaReason_options_choiceHandler_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  [WeakRetained _coalescedReconsiderOffersForAccount:*(a1 + 32) isForBuddy:*(a1 + 72) quotaReason:*(a1 + 40) options:*(a1 + 48) choiceHandler:*(a1 + 56) completion:v3];
}

- (void)_coalescedReconsiderOffersForAccount:(id)a3 isForBuddy:(BOOL)a4 quotaReason:(id)a5 options:(id)a6 choiceHandler:(id)a7 completion:(id)a8
{
  v61 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v14 = a6;
  v40 = a7;
  v15 = a8;
  v41 = a5;
  v16 = _ICQGetLogSystem();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v60 = v14;
    _os_log_impl(&dword_275572000, v16, OS_LOG_TYPE_DEFAULT, "Reconsidering offers with options %@", buf, 0xCu);
  }

  v42 = [v14 objectForKeyedSubscript:@"bundleIdentifier"];
  v17 = [_ICQHelperFunctions _getOfferRequestTypeFromOptions:"_getOfferRequestTypeFromOptions:bundleId:isBuddy:" bundleId:v14 isBuddy:?];
  v18 = _ICQSignpostLogSystem();
  v19 = objc_opt_new();
  v20 = _ICQSignpostCreateWithObject(v18, v19);
  v22 = v21;

  v23 = _ICQSignpostLogSystem();
  v24 = v23;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    v25 = [_ICQHelperFunctions _getOfferDescriptionFromRequestType:v17];
    *buf = 138412290;
    v60 = v25;
    _os_signpost_emit_with_name_impl(&dword_275572000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v20, "ReconsiderOffers", " enableTelemetry=YES %@", buf, 0xCu);
  }

  v26 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [ICQDaemonOfferManager _coalescedReconsiderOffersForAccount:v20 isForBuddy:v17 quotaReason:v26 options:? choiceHandler:? completion:?];
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __118__ICQDaemonOfferManager__coalescedReconsiderOffersForAccount_isForBuddy_quotaReason_options_choiceHandler_completion___block_invoke;
  aBlock[3] = &unk_27A652430;
  v57 = v20;
  v58 = v22;
  v27 = v15;
  v56 = v27;
  v28 = _Block_copy(aBlock);
  if (v17 <= 1)
  {
    if (!v17)
    {
      +[(ICQDaemonPersisted *)ICQDaemonPremiumOffer];
      [ICQDaemonAlert dismissAlertsWithNotificationID:0];
      +[(ICQDaemonPersisted *)ICQDaemonOffer];
      +[(ICQDaemonPersisted *)ICQDaemonDefaultOffer];
      +[(ICQDaemonPersisted *)ICQDaemonEventOffer];
      v38 = +[ICQLiftUICache sharedCache];
      [v38 discardCaches];

      goto LABEL_20;
    }

    if (v17 == 1)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v17 == 2)
  {
    v29 = ICQDaemonPremiumOffer;
    goto LABEL_19;
  }

  if (v17 == 5)
  {
    v29 = ICQDaemonEventOffer;
    goto LABEL_19;
  }

  if (v17 != 4)
  {
LABEL_15:
    [ICQDaemonAlert dismissAlertsWithNotificationID:0];
    +[(ICQDaemonPersisted *)ICQDaemonOffer];
LABEL_16:
    v29 = ICQDaemonDefaultOffer;
    goto LABEL_19;
  }

  +[(ICQDaemonPersisted *)ICQDaemonBuddyOffer];
  v29 = ICQDaemonOfferStubs;
LABEL_19:
  [(__objc2_class *)v29 clearPersistedObject];
LABEL_20:
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __118__ICQDaemonOfferManager__coalescedReconsiderOffersForAccount_isForBuddy_quotaReason_options_choiceHandler_completion___block_invoke_402;
  v50[3] = &unk_27A652480;
  v50[4] = self;
  v53 = v17;
  v30 = v39;
  v51 = v30;
  v54 = a4;
  v31 = v28;
  v52 = v31;
  v32 = _Block_copy(v50);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __118__ICQDaemonOfferManager__coalescedReconsiderOffersForAccount_isForBuddy_quotaReason_options_choiceHandler_completion___block_invoke_3;
  v43[3] = &unk_27A652518;
  v43[4] = self;
  v44 = v30;
  v49 = a4;
  v45 = v31;
  v46 = v32;
  v47 = v40;
  v48 = v17;
  v33 = v40;
  v34 = v32;
  v35 = v30;
  v36 = v31;
  [(ICQDaemonOfferManager *)self _daemonOfferStubsDictionaryForAccount:v35 requestType:v17 quotaReason:v41 completion:v43];

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __118__ICQDaemonOfferManager__coalescedReconsiderOffersForAccount_isForBuddy_quotaReason_options_choiceHandler_completion___block_invoke(void *a1)
{
  v2 = (a1 + 5);
  _ICQSignpostGetNanoseconds(a1[5], a1[6]);
  v3 = _ICQSignpostLogSystem();
  v4 = v3;
  v5 = *v2;
  if ((*v2 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v3))
  {
    *v8 = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v4, OS_SIGNPOST_INTERVAL_END, v5, "ReconsiderOffers", "", v8, 2u);
  }

  v6 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __118__ICQDaemonOfferManager__coalescedReconsiderOffersForAccount_isForBuddy_quotaReason_options_choiceHandler_completion___block_invoke_cold_1(v2);
  }

  return (*(a1[4] + 16))();
}

void __118__ICQDaemonOfferManager__coalescedReconsiderOffersForAccount_isForBuddy_quotaReason_options_choiceHandler_completion___block_invoke_402(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _persistAndNotifyMissingPlaceholdersForRequestType:*(a1 + 56) account:*(a1 + 40)];
  if (*(a1 + 64) != 1)
  {
    v4 = [v3 isDefaultOffer];
    v5 = *(a1 + 32);
    if (!v4)
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __118__ICQDaemonOfferManager__coalescedReconsiderOffersForAccount_isForBuddy_quotaReason_options_choiceHandler_completion___block_invoke_2;
      v6[3] = &unk_27A652458;
      v6[4] = v5;
      v7 = v3;
      v8 = *(a1 + 48);
      [v5 _postFollowupForDaemonOffer:v7 replaceExisting:1 completion:v6];

      goto LABEL_6;
    }

    [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:1];
  }

  (*(*(a1 + 48) + 16))();
LABEL_6:
}

uint64_t __118__ICQDaemonOfferManager__coalescedReconsiderOffersForAccount_isForBuddy_quotaReason_options_choiceHandler_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:{objc_msgSend(*(a1 + 40), "requestType")}];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void __118__ICQDaemonOfferManager__coalescedReconsiderOffersForAccount_isForBuddy_quotaReason_options_choiceHandler_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = _ICQGetLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v7, OS_LOG_TYPE_DEFAULT, "Finished getting stubs", buf, 2u);
  }

  if (v5 && !v6)
  {
    v8 = [[ICQDaemonOfferStubs alloc] initWithDictionary:v5];
    if (!v8)
    {
      v26 = _ICQGetLogSystem();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = v5;
        _os_log_impl(&dword_275572000, v26, OS_LOG_TYPE_DEFAULT, "Error: Unable to create offer stubs from dict %@", buf, 0xCu);
      }

      v27 = _ICQGetLogSystem();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v27, OS_LOG_TYPE_DEFAULT, "Persisting placeholder & clearing any existing followups", buf, 2u);
      }

      v9 = ICQCreateErrorWithMessage(996, @"malformed daemon offer stubs");
      if (*(a1 + 80))
      {
        v28 = 4;
      }

      else
      {
        v28 = 3;
      }

      v17 = [*(a1 + 32) _placeholderOfferForAccount:*(a1 + 40) requestType:v28 error:v9];
      [v17 persistObject];
      (*(*(a1 + 56) + 16))();
      goto LABEL_38;
    }

    v9 = objc_opt_new();
    v10 = *(a1 + 64);
    if (v10 && ((*(v10 + 16))(v10, v8), v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
    {
      v12 = (*(*(a1 + 64) + 16))();
      v13 = _ICQGetLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v46 = v12;
        _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "Choice handler block returned stub %@", buf, 0xCu);
      }

      if (v12)
      {
        v44 = v12;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];

        v9 = v14;
      }
    }

    else
    {
      [*(a1 + 32) _getStubsForRequestType:*(a1 + 72) fromDaemonStubs:v8];
      v9 = v12 = v9;
    }

    v16 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_411];
    v17 = [v9 filteredArrayUsingPredicate:v16];

    if ([v17 count])
    {
      if ([v17 count] != 1)
      {
        [*(a1 + 32) _handlerMultipleStubs:v17 forAccount:*(a1 + 40) requestType:*(a1 + 72) completion:*(a1 + 48)];
LABEL_38:

        goto LABEL_39;
      }

      v18 = [v17 firstObject];
      v19 = [v18 serverDictionary];
      v20 = [ICQMLProtocolParser shouldCallMlDaemonForFetchOfferStub:v19];

      if (v20)
      {
        v21 = [MEMORY[0x277D7F4F0] shared];
        v22 = [v18 serverDictionary];
        v35 = [v21 parseNotification:v22];

        v23 = [v18 serverDictionary];
        v24 = [ICQMLProtocolParser parseMaxDelaySecsFromFetchOffersResponse:v23];

        v25 = *(a1 + 32);
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __118__ICQDaemonOfferManager__coalescedReconsiderOffersForAccount_isForBuddy_quotaReason_options_choiceHandler_completion___block_invoke_412;
        v39[3] = &unk_27A6524F0;
        v39[4] = v25;
        v40 = *(a1 + 40);
        v41 = v18;
        v43 = *(a1 + 80);
        v42 = *(a1 + 56);
        [v25 _subdFetchNewOfferResponseWithContent:v35 andMaxDelaySecs:v24 completion:v39];
      }

      else
      {
        v32 = *(a1 + 32);
        v33 = *(a1 + 40);
        v36[0] = MEMORY[0x277D85DD0];
        v36[1] = 3221225472;
        v36[2] = __118__ICQDaemonOfferManager__coalescedReconsiderOffersForAccount_isForBuddy_quotaReason_options_choiceHandler_completion___block_invoke_3_414;
        v36[3] = &unk_27A6524C8;
        v36[4] = v32;
        v38 = *(a1 + 80);
        v37 = *(a1 + 56);
        [v32 _fetchDaemonOfferForAccount:v33 stub:v18 notificationID:0 completion:v36];
      }
    }

    else
    {
      if (*(a1 + 72) == 1)
      {
        v29 = _ICQGetLogSystem();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          __118__ICQDaemonOfferManager__coalescedReconsiderOffersForAccount_isForBuddy_quotaReason_options_choiceHandler_completion___block_invoke_3_cold_1();
        }
      }

      v30 = _ICQGetLogSystem();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [_ICQHelperFunctions _getOfferDescriptionFromRequestType:*(a1 + 72)];
        *buf = 138412290;
        v46 = v31;
        _os_log_impl(&dword_275572000, v30, OS_LOG_TYPE_DEFAULT, "No stub matched for %@ offer -- persisting placeholder", buf, 0xCu);
      }

      v18 = [*(a1 + 32) _placeholderOfferForAccount:*(a1 + 40) requestType:*(a1 + 72) error:0];
      [v18 persistObject];
      (*(*(a1 + 56) + 16))();
    }

    goto LABEL_38;
  }

  v15 = _ICQGetLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v46 = v6;
    _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, "Unable to get offer stubs; error: %@", buf, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
LABEL_39:

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __118__ICQDaemonOfferManager__coalescedReconsiderOffersForAccount_isForBuddy_quotaReason_options_choiceHandler_completion___block_invoke_408(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 offerId];
  v4 = [v3 isEqualToString:&stru_288431E38];

  if (v4)
  {
    v5 = _ICQGetLogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v2 serverDictionary];
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "Missing offer id in stub %@", &v9, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4 ^ 1u;
}

void __118__ICQDaemonOfferManager__coalescedReconsiderOffersForAccount_isForBuddy_quotaReason_options_choiceHandler_completion___block_invoke_412(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __118__ICQDaemonOfferManager__coalescedReconsiderOffersForAccount_isForBuddy_quotaReason_options_choiceHandler_completion___block_invoke_2_413;
  v6[3] = &unk_27A6524C8;
  v6[4] = v3;
  v8 = *(a1 + 64);
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v3 _subdFetchDaemonOfferForAccount:v4 stub:v5 notificationID:0 isoNewOfferResponse:a2 completion:v6];
}

void __118__ICQDaemonOfferManager__coalescedReconsiderOffersForAccount_isForBuddy_quotaReason_options_choiceHandler_completion___block_invoke_2_413(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = a2;
  [v5 _logErrorsForFetchOfferResultWithOffer:v7 error:a3 isForBuddy:v6];
  (*(*(a1 + 40) + 16))();
}

void __118__ICQDaemonOfferManager__coalescedReconsiderOffersForAccount_isForBuddy_quotaReason_options_choiceHandler_completion___block_invoke_3_414(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = a2;
  [v5 _logErrorsForFetchOfferResultWithOffer:v7 error:a3 isForBuddy:v6];
  (*(*(a1 + 40) + 16))();
}

- (id)_getStubsForRequestType:(int64_t)a3 fromDaemonStubs:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = v6;
  if (a3 > 1)
  {
    switch(a3)
    {
      case 2:
        v8 = [v6 choosePremiumStub];
        if (v8)
        {
          v13 = _ICQGetLogSystem();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = v8;
            _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "Chose premium stub %@", buf, 0xCu);
          }

          v23 = v8;
          v10 = MEMORY[0x277CBEA60];
          v11 = &v23;
          goto LABEL_30;
        }

        goto LABEL_31;
      case 4:
        v8 = [v6 chooseBuddyStub];
        v14 = _ICQGetLogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = v8;
          _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "ChooseBuddyStub returned stub %@", buf, 0xCu);
        }

        if (v8)
        {
          v24 = v8;
          v10 = MEMORY[0x277CBEA60];
          v11 = &v24;
LABEL_30:
          v16 = [v10 arrayWithObjects:v11 count:1];
LABEL_32:

          goto LABEL_33;
        }

LABEL_31:
        v16 = 0;
        goto LABEL_32;
      case 5:
        v8 = [v6 chooseEventStub];
        if (v8)
        {
          v9 = _ICQGetLogSystem();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = v8;
            _os_log_impl(&dword_275572000, v9, OS_LOG_TYPE_DEFAULT, "Chose backup restored stub %@", buf, 0xCu);
          }

          v21 = v8;
          v10 = MEMORY[0x277CBEA60];
          v11 = &v21;
          goto LABEL_30;
        }

        goto LABEL_31;
    }

LABEL_26:
    v8 = [v6 chooseStub];
    if (v8)
    {
      v17 = _ICQGetLogSystem();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v26 = v8;
        _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, "Chose regular stub %@", buf, 0xCu);
      }

      v20 = v8;
      v10 = MEMORY[0x277CBEA60];
      v11 = &v20;
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  if (a3)
  {
    if (a3 == 1)
    {
      v8 = [v6 chooseDefaultStub];
      if (v8)
      {
        v12 = _ICQGetLogSystem();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v26 = v8;
          _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "Chose default stub %@", buf, 0xCu);
        }

        v22 = v8;
        v10 = MEMORY[0x277CBEA60];
        v11 = &v22;
        goto LABEL_30;
      }

      goto LABEL_31;
    }

    goto LABEL_26;
  }

  v15 = _ICQGetLogSystem();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_275572000, v15, OS_LOG_TYPE_DEFAULT, "Choosing all available stubs", buf, 2u);
  }

  v16 = [(ICQDaemonOfferManager *)self _getFetchOfferStubsFromStubs:v7];
LABEL_33:

  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)_getFetchOfferStubsFromStubs:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = +[ICQDaemonOfferConditions currentConditions];
  v6 = [v3 chooseStubForConditions:v5];
  v7 = [v3 choosePremiumStubForConditions:v5];
  v8 = [v3 chooseEventStubForConditions:v5];
  v9 = [v3 chooseDefaultStubForConditions:v5];

  if (v6)
  {
    v10 = _ICQGetLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&dword_275572000, v10, OS_LOG_TYPE_DEFAULT, "Adding regular offer stub %@", &v16, 0xCu);
    }

    [v4 addObject:v6];
  }

  if (v7)
  {
    v11 = _ICQGetLogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v7;
      _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "Adding premium offer stub %@", &v16, 0xCu);
    }

    [v4 addObject:v7];
  }

  if (v8)
  {
    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v8;
      _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "Adding event offer stub %@", &v16, 0xCu);
    }

    [v4 addObject:v8];
  }

  if (v9)
  {
    v13 = _ICQGetLogSystem();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v9;
      _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "Adding default offer stub %@", &v16, 0xCu);
    }

    [v4 addObject:v9];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_handlerMultipleStubs:(id)a3 forAccount:(id)a4 requestType:(int64_t)a5 completion:(id)a6
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v22 = a6;
  v11 = dispatch_group_create();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v9;
  v12 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    v21 = v26;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v28 + 1) + 8 * i);
        v17 = [v16 serverDictionary];
        v18 = [ICQMLProtocolParser shouldCallMlDaemonForFetchOfferStub:v17];

        if (v18)
        {
          [(ICQDaemonOfferManager *)self _subdHandleFetchOffersStub:v16 account:v10 requestType:a5 group:v11 completion:v22];
        }

        else
        {
          dispatch_group_enter(v11);
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v26[0] = __81__ICQDaemonOfferManager__handlerMultipleStubs_forAccount_requestType_completion___block_invoke;
          v26[1] = &unk_27A652568;
          v26[2] = self;
          v27 = v11;
          [(ICQDaemonOfferManager *)self _fetchDaemonOfferForAccount:v10 stub:v16 notificationID:0 completion:v25];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v13);
  }

  v19 = dispatch_time(0, 10000000000);
  dispatch_group_wait(v11, v19);
  [(ICQDaemonOfferManager *)self _persistAndNotifyMissingPlaceholdersForRequestType:a5 account:v10];
  v22[2](v22);

  v20 = *MEMORY[0x277D85DE8];
}

void __81__ICQDaemonOfferManager__handlerMultipleStubs_forAccount_requestType_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) _logErrorsForFetchOfferResultWithOffer:v5 error:a3 isForBuddy:0];
  if (v5 && ![v5 isBuddyOffer])
  {
    v6 = [v5 isDefaultOffer];
    v7 = *(a1 + 32);
    if (!v6)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __81__ICQDaemonOfferManager__handlerMultipleStubs_forAccount_requestType_completion___block_invoke_2;
      v8[3] = &unk_27A652540;
      v8[4] = v7;
      v9 = v5;
      v10 = *(a1 + 40);
      [v7 _postFollowupForDaemonOffer:v9 replaceExisting:1 completion:v8];

      goto LABEL_6;
    }

    [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:1];
  }

  dispatch_group_leave(*(a1 + 40));
LABEL_6:
}

void __81__ICQDaemonOfferManager__handlerMultipleStubs_forAccount_requestType_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:{objc_msgSend(*(a1 + 40), "requestType")}];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

- (void)_logErrorsForFetchOfferResultWithOffer:(id)a3 error:(id)a4 isForBuddy:(BOOL)a5
{
  v5 = a5;
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = _ICQGetLogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v8;
      v10 = "Unexpected error %@";
      v11 = v9;
      v12 = 12;
LABEL_15:
      _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
    }

LABEL_16:

    goto LABEL_17;
  }

  if (!v7)
  {
    v9 = _ICQGetLogSystem();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    LOWORD(v15) = 0;
    v10 = "Error: Unexpected nil daemonOffer";
    goto LABEL_14;
  }

  v13 = [v7 isBuddyOffer];
  if (v5)
  {
    if ((v13 & 1) == 0)
    {
      v9 = _ICQGetLogSystem();
      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      LOWORD(v15) = 0;
      v10 = "Error: Requested buddy offer but got non-buddy offer!";
LABEL_14:
      v11 = v9;
      v12 = 2;
      goto LABEL_15;
    }
  }

  else if (v13)
  {
    v9 = _ICQGetLogSystem();
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    LOWORD(v15) = 0;
    v10 = "Error: Requested offer but got buddy offer!";
    goto LABEL_14;
  }

LABEL_17:

  v14 = *MEMORY[0x277D85DE8];
}

void __80__ICQDaemonOfferManager__postFollowupForDaemonOffer_replaceExisting_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _ICQGetLogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v9 = 138543362;
      v10 = v4;
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "error %{public}@ posting followup", &v9, 0xCu);
    }
  }

  else if (v6)
  {
    v7 = +[_ICQHelperFunctions _getOfferDescriptionFromRequestType:](_ICQHelperFunctions, "_getOfferDescriptionFromRequestType:", [*(a1 + 32) requestType]);
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "posted followup for offer type: %@", &v9, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_postUserNotification:(id)a3 replaceExisting:(BOOL)a4 offerID:(id)a5 completion:(id)a6
{
  v42 = a4;
  v52[3] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v11 = [v8 objectForKeyedSubscript:@"lockTitle"];
  v12 = [_ICQHelperFunctions parseTemplates:v11];

  v13 = [v8 objectForKeyedSubscript:@"lockSubTitle"];
  v14 = [_ICQHelperFunctions parseTemplates:v13];

  v15 = [v8 objectForKeyedSubscript:@"lockMessage"];
  v16 = [_ICQHelperFunctions parseTemplates:v15];

  v17 = v14;
  v18 = [v12 objectForKeyedSubscript:@"default"];
  v19 = [v17 objectForKeyedSubscript:@"default"];
  v20 = [v16 objectForKeyedSubscript:@"default"];
  v21 = v20;
  if (!v18 || !v20)
  {
    goto LABEL_18;
  }

  v38 = v19;
  v39 = v17;
  v22 = [v8 objectForKeyedSubscript:@"actParams"];
  v23 = 0x277CBE000uLL;
  v41 = v22;
  if (!v22)
  {
    v40 = 0;
    goto LABEL_12;
  }

  v24 = [v8 objectForKeyedSubscript:@"action"];
  if (!v24)
  {
    goto LABEL_9;
  }

  v25 = v24;
  v51[0] = @"actParams";
  v51[1] = @"action";
  v52[0] = v41;
  v52[1] = v24;
  v51[2] = @"display";
  v52[2] = &stru_288431E38;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];
  v27 = _ICQLinkForServerMessageParameter(v26);

  if (!v27)
  {
LABEL_9:
    v40 = 0;
LABEL_10:
    v23 = 0x277CBE000;
LABEL_12:
    v31 = [*(v23 + 3008) URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/STORAGE_AND_BACKUP/MANAGE_STORAGE"];
    goto LABEL_13;
  }

  v40 = v27;
  v28 = [v27 parameters];
  v29 = [v28 objectForKeyedSubscript:@"openURL"];

  if (!v29 || ([MEMORY[0x277CBEBC0] URLWithString:v29], (v30 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([v40 action] == 105)
    {
      v31 = [MEMORY[0x277CBEBC0] URLWithString:@"prefs:root=APPLE_ACCOUNT&path=ICLOUD_SERVICE/STORAGE_AND_BACKUP/STORAGE_UPGRADE"];

      v23 = 0x277CBE000uLL;
      if (v31)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v31 = v30;

LABEL_13:
  v32 = [v8 objectForKeyedSubscript:@"notificationId"];
  v33 = v32;
  v34 = @"OOBE_EXPIRED";
  if (v32)
  {
    v34 = v32;
  }

  v35 = v34;

  v36 = _ICQGetLogSystem();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v46 = v18;
    v47 = 2112;
    v48 = v21;
    v49 = 2112;
    v50 = v31;
    _os_log_impl(&dword_275572000, v36, OS_LOG_TYPE_DEFAULT, "posting user notification, title:%@, message:%@, url:%@", buf, 0x20u);
  }

  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __82__ICQDaemonOfferManager__postUserNotification_replaceExisting_offerID_completion___block_invoke;
  v43[3] = &unk_27A652590;
  v44 = v10;
  [ICQUserNotifications postUserNotificationWithIdentifier:v35 title:v18 subTitle:v38 bodyText:v21 url:v31 replaceExisting:v42 offerID:v9 completion:v43];

  v19 = v38;
  v17 = v39;
LABEL_18:

  v37 = *MEMORY[0x277D85DE8];
}

void __82__ICQDaemonOfferManager__postUserNotification_replaceExisting_offerID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __82__ICQDaemonOfferManager__postUserNotification_replaceExisting_offerID_completion___block_invoke_cold_1();
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

id __51__ICQDaemonOfferManager__postOfferType_isForBuddy___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = _ICQOfferTypeForString(v3);
  if (*(a1 + 40) == 1)
  {
    [v4 chooseBuddyStubForOfferType:v5];
  }

  else
  {
    [v4 chooseStubForOfferType:v5];
  }
  v6 = ;

  return v6;
}

- (void)forcePostFollowup
{
  v3 = [(ICQDaemonOfferManager *)self accountManager];
  v4 = [v3 accountStore];

  v5 = [v4 aa_primaryAppleAccount];
  v6 = dispatch_semaphore_create(0);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__ICQDaemonOfferManager_forcePostFollowup__block_invoke;
  v9[3] = &unk_27A651D90;
  v10 = v4;
  v11 = v6;
  v7 = v6;
  v8 = v4;
  [(ICQDaemonOfferManager *)self _reconsiderOffersForAccount:v5 isForBuddy:0 quotaReason:@"icqctl" choiceHandler:0 completion:v9];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

- (void)setShouldDirectToStorageManagement:(BOOL)a3
{
  v3 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v4 = [(ICQDaemonOfferManager *)self shouldDirectToStorageManagement];
  v5 = _ICQGetLogSystem();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 == v3)
  {
    if (v6)
    {
      v9 = 136315138;
      v10 = "[ICQDaemonOfferManager setShouldDirectToStorageManagement:]";
      _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "%s: value didn't change. Exiting early.", &v9, 0xCu);
    }
  }

  else
  {
    if (v3)
    {
      if (v6)
      {
        v9 = 136315138;
        v10 = "[ICQDaemonOfferManager setShouldDirectToStorageManagement:]";
        _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "%s: setting cached value to true.", &v9, 0xCu);
      }

      v7 = *MEMORY[0x277CBED28];
    }

    else
    {
      if (v6)
      {
        v9 = 136315138;
        v10 = "[ICQDaemonOfferManager setShouldDirectToStorageManagement:]";
        _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "%s: removing cached value.", &v9, 0xCu);
      }

      v7 = 0;
    }

    CFPreferencesSetAppValue(@"_ICQShouldDirectToStorageManagement", v7, @"com.apple.cloud.quota");
    CFPreferencesAppSynchronize(@"com.apple.cloud.quota");
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSimulatedDeviceStorageAlmostFull
{
  v14 = *MEMORY[0x277D85DE8];
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"_ICQSimulatedDeviceStorageAlmostFull", @"com.apple.cloud.quota", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v3 = AppBooleanValue == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  v5 = _ICQGetLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    *buf = 136315394;
    v11 = "[ICQDaemonOfferManager isSimulatedDeviceStorageAlmostFull]";
    v12 = 2114;
    v13 = v6;
    _os_log_impl(&dword_275572000, v5, OS_LOG_TYPE_DEFAULT, "%s: returning value %{public}@.", buf, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

- (void)setSimulatedDeviceStorageAlmostFull:(BOOL)a3
{
  v3 = a3;
  v10 = *MEMORY[0x277D85DE8];
  v4 = _ICQGetLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v8 = 136315138;
      v9 = "[ICQDaemonOfferManager setSimulatedDeviceStorageAlmostFull:]";
      _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "%s: setting cached value to true.", &v8, 0xCu);
    }

    v6 = *MEMORY[0x277CBED28];
  }

  else
  {
    if (v5)
    {
      v8 = 136315138;
      v9 = "[ICQDaemonOfferManager setSimulatedDeviceStorageAlmostFull:]";
      _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "%s: removing cached value.", &v8, 0xCu);
    }

    v6 = 0;
  }

  CFPreferencesSetAppValue(@"_ICQSimulatedDeviceStorageAlmostFull", v6, @"com.apple.cloud.quota");
  CFPreferencesAppSynchronize(@"com.apple.cloud.quota");
  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)isBuddyOfferEnabled
{
  v2 = CFPreferencesCopyAppValue(@"_ICQBuddyOfferEnable", @"com.apple.cloud.quota");
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 BOOLValue];
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

- (void)setBuddyOfferEnabled:(BOOL)a3
{
  v3 = *MEMORY[0x277CBED28];
  if (a3)
  {
    v4 = *MEMORY[0x277CBED28];
  }

  else
  {
    v4 = 0;
  }

  CFPreferencesSetAppValue(@"_ICQBuddyOfferEnable", v4, @"com.apple.cloud.quota");

  CFPreferencesAppSynchronize(@"com.apple.cloud.quota");
}

- (NSNumber)simulatedPhotosLibrarySize
{
  v2 = CFPreferencesCopyAppValue(@"_ICQSimulatedPhotosLibrarySize", @"com.apple.cloud.quota");
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) == 0 && (objc_opt_respondsToSelector())
  {
    v3 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v2, "longLongValue")}];

    v2 = v3;
  }

  return v2;
}

- (void)setSimulatedPhotosLibrarySize:(id)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  CFPreferencesSetAppValue(@"_ICQSimulatedPhotosLibrarySize", v3, @"com.apple.cloud.quota");

  CFPreferencesAppSynchronize(@"com.apple.cloud.quota");
}

- (void)setLegacyDeviceStorageLevelNotificationEnabled:(BOOL)a3
{
  v3 = *MEMORY[0x277CBED28];
  if (a3)
  {
    v4 = *MEMORY[0x277CBED28];
  }

  else
  {
    v4 = 0;
  }

  CFPreferencesSetAppValue(@"_ICQLegacyDeviceStorageLevelNotification", v4, @"com.apple.cloud.quota");

  CFPreferencesAppSynchronize(@"com.apple.cloud.quota");
}

- (void)displayDelayedOfferWithContext:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = _ICQGetLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_275572000, v8, OS_LOG_TYPE_DEFAULT, "[SUBD] Previously delayed offer is ready to be presented.", v9, 2u);
  }

  [(ICQDaemonOfferManager *)self _subdDisplayDelayedOfferWithContext:v7 completion:v6];
}

- (void)_subdStopFailsafeActivity
{
  v2 = _ICQGetLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_275572000, v2, OS_LOG_TYPE_DEFAULT, "[SUBD] Cancelling the failsafe activity.", v3, 2u);
  }

  [ICQDelayedOfferFailsafeActivityController stopActivityWithCompletion:&__block_literal_global_597];
}

void __85__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdStopFailsafeActivity__block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = _ICQGetLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "[SUBD] Successfully cancelled failsafe activity. error=[%@]", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_subdRefreshOfferDetailsAndDisplay:(id)a3 completion:(id)a4 account:(id)a5 accountStore:(id)a6 notificationID:(id)a7 isoNewOfferResponse:(id)a8
{
  v33 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = _ICQGetLogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v32 = v18;
    _os_log_impl(&dword_275572000, v20, OS_LOG_TYPE_DEFAULT, "refreshing offer details for notificationID %@", buf, 0xCu);
  }

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __162__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdRefreshOfferDetailsAndDisplay_completion_account_accountStore_notificationID_isoNewOfferResponse___block_invoke;
  v26[3] = &unk_27A652608;
  v26[4] = self;
  v27 = v14;
  v28 = v17;
  v29 = v16;
  v30 = v15;
  v21 = v15;
  v22 = v16;
  v23 = v17;
  v24 = v14;
  [(ICQDaemonOfferManager *)self _subdFetchDaemonOfferForAccount:v22 stub:0 notificationID:v18 isoNewOfferResponse:v19 completion:v26];

  v25 = *MEMORY[0x277D85DE8];
}

void __162__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdRefreshOfferDetailsAndDisplay_completion_account_accountStore_notificationID_isoNewOfferResponse___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v19 = _ICQGetLogSystem();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v7;
      _os_log_impl(&dword_275572000, v19, OS_LOG_TYPE_DEFAULT, "fetch error %@", buf, 0xCu);
    }

    v20 = *(a1 + 32);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __162__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdRefreshOfferDetailsAndDisplay_completion_account_accountStore_notificationID_isoNewOfferResponse___block_invoke_598;
    v22[3] = &unk_27A652038;
    v22[4] = v20;
    v11 = &v23;
    v23 = *(a1 + 64);
    [v20 clearAllFollowupsWithCompletion:v22];
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = [v5 offerId];
    [v8 _clearCachedStubsIfOfferIDIsNew:v9];

    v10 = *(a1 + 32);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __162__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdRefreshOfferDetailsAndDisplay_completion_account_accountStore_notificationID_isoNewOfferResponse___block_invoke_2;
    v24[3] = &unk_27A6525E0;
    v24[4] = v10;
    v11 = &v25;
    v12 = v5;
    v25 = v12;
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = *(a1 + 56);
    v16 = *(a1 + 64);
    *&v17 = v15;
    *(&v17 + 1) = v16;
    *&v18 = v13;
    *(&v18 + 1) = v14;
    v26 = v18;
    v27 = v17;
    [v10 _postFollowupForDaemonOffer:v12 replaceExisting:1 completion:v24];
  }

  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __162__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdRefreshOfferDetailsAndDisplay_completion_account_accountStore_notificationID_isoNewOfferResponse___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:{objc_msgSend(*(a1 + 40), "requestType")}];
  v2 = [*(a1 + 48) objectForKeyedSubscript:@"debugAlert"];

  if (v2)
  {
    [*(a1 + 40) _addSampleAlert];
  }

  v3 = [ICQDaemonAlert shouldShowForDaemonOffer:*(a1 + 40)];
  v4 = _ICQGetLogSystem();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "showing alert", buf, 2u);
    }

    return [*(a1 + 32) _showDaemonAlertForOffer:*(a1 + 40) notificationDictionary:*(a1 + 48) store:*(a1 + 56) account:*(a1 + 64) completion:*(a1 + 72)];
  }

  else
  {
    if (v5)
    {
      *v7 = 0;
      _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "skipping alert", v7, 2u);
    }

    return (*(*(a1 + 72) + 16))();
  }
}

uint64_t __162__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdRefreshOfferDetailsAndDisplay_completion_account_accountStore_notificationID_isoNewOfferResponse___block_invoke_598(uint64_t a1)
{
  [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:3];
  [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:1];
  [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:2];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)_subdFetchDaemonOfferForAccount:(id)a3 stub:(id)a4 notificationID:(id)a5 isoNewOfferResponse:(id)a6 completion:(id)a7
{
  v45 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!(v13 | v14))
  {
    v17 = _ICQGetLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v17, OS_LOG_TYPE_DEFAULT, "WARNING: both stub and notificationID are nil -- attempting blind refresh", buf, 2u);
    }
  }

  v18 = _ICQSignpostLogSystem();
  v19 = objc_opt_new();
  v20 = _ICQSignpostCreateWithObject(v18, v19);
  v34 = v21;

  v22 = _ICQSignpostLogSystem();
  v23 = v22;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v23, OS_SIGNPOST_INTERVAL_BEGIN, v20, "RefreshOfferDetails", " enableTelemetry=YES ", buf, 2u);
  }

  v24 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [ICQDaemonOfferManager _coalescedFetchDaemonOfferForAccount:stub:notificationID:completion:];
  }

  if (v15 && ([v15 error], v25 = objc_claimAutoreleasedReturnValue(), v25, !v25))
  {
    v27 = [v15 toContext];
    v33 = _ICQGetLogSystem();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v27;
      _os_log_impl(&dword_275572000, v33, OS_LOG_TYPE_DEFAULT, "[SUBD] RefreshOfferDetails request will contain extra fields=[%@].", buf, 0xCu);
    }

    if ([v15 shouldDisplayOfferNow])
    {
      [(ICQDaemonOfferManager *)self _subdStopFailsafeActivity];
    }
  }

  else
  {
    v26 = _ICQGetLogSystem();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v44 = v15;
      _os_log_impl(&dword_275572000, v26, OS_LOG_TYPE_DEFAULT, "[SUBD] Not passing extra RefreshOfferDetails arguments. isoNewOfferResponse=[%@]", buf, 0xCu);
    }

    v27 = 0;
  }

  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __143__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdFetchDaemonOfferForAccount_stub_notificationID_isoNewOfferResponse_completion___block_invoke;
  v35[3] = &unk_27A6522D0;
  v36 = v13;
  v37 = self;
  v38 = v12;
  v39 = v14;
  v41 = v20;
  v42 = v34;
  v40 = v16;
  v28 = v16;
  v29 = v14;
  v30 = v12;
  v31 = v13;
  [(ICQDaemonOfferManager *)self _fetchDictionaryForAccount:v30 quotaKey:@"quotaRefreshOfferDetailsURL" quotaReason:@"RefreshOfferDetails" stub:v31 notificationID:v29 contextDictionary:0 mlDaemonExtraFields:v27 completion:v35];

  v32 = *MEMORY[0x277D85DE8];
}

void __143__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdFetchDaemonOfferForAccount_stub_notificationID_isoNewOfferResponse_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [[ICQDaemonOfferStub alloc] initWithServerDictionary:v5];
  if (v5)
  {
    v9 = v5;
  }

  else
  {
    v9 = MEMORY[0x277CBEC10];
  }

  [ICQMLBiomePublisher publishEventWithRefreshOfferDetailsResponse:v9];
  if (v7)
  {
    if (v5)
    {
      v10 = [(ICQDaemonOfferStub *)v7 offerId];
      v11 = [(ICQDaemonOfferStub *)v8 offerId];
      v12 = [v10 isEqualToString:v11];

      if ((v12 & 1) == 0)
      {
        v13 = _ICQGetLogSystem();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __93__ICQDaemonOfferManager__coalescedFetchDaemonOfferForAccount_stub_notificationID_completion___block_invoke_cold_1(v8, v7);
        }
      }

      if ([(ICQDaemonOfferStub *)v7 isBuddyOffer]&& ![(ICQDaemonOfferStub *)v8 isBuddyOffer])
      {
        v14 = _ICQGetLogSystem();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_275572000, v14, OS_LOG_TYPE_DEFAULT, "missing buddyOffer flag after refresh offer details", buf, 2u);
        }
      }
    }
  }

  else
  {
    v7 = v8;
  }

  v15 = [(ICQDaemonOfferStub *)v7 conditionsWhenChosen];
  if (v15)
  {
    [(ICQDaemonOfferStub *)v7 conditionsWhenChosen];
  }

  else
  {
    +[ICQDaemonOfferConditions currentConditions];
  }
  v16 = ;

  v17 = [(ICQDaemonOfferStub *)v8 criteria];
  v18 = [v17 isSatisfiedByConditions:v16];

  if (v18)
  {
    if (v5)
    {
      v47 = v6;
      v19 = [*(a1 + 40) _classForOfferStub:v8];
      ICQLogOfferDetailsForServerDictionary(v5);
      [*(a1 + 40) _updateQuotaForAccount:*(a1 + 48) withServerDictionary:v5];
      v20 = [[v19 alloc] _initWithAccount:*(a1 + 48) serverDictionary:v5];
      [v20 setNotificationID:*(a1 + 56)];
      [v20 cacheLiftUIContent];
      [v20 persistObject];
      Nanoseconds = _ICQSignpostGetNanoseconds(*(a1 + 72), *(a1 + 80));
      v22 = _ICQSignpostLogSystem();
      v23 = v22;
      v24 = *(a1 + 72);
      if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
      {
        *buf = 138412290;
        *v49 = v19;
        _os_signpost_emit_with_name_impl(&dword_275572000, v23, OS_SIGNPOST_INTERVAL_END, v24, "RefreshOfferDetails", "%@", buf, 0xCu);
      }

      v25 = _ICQSignpostLogSystem();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109634;
        *v49 = *(a1 + 72);
        *&v49[4] = 2048;
        *&v49[6] = Nanoseconds / 1000000000.0;
        *&v49[14] = 2112;
        *&v49[16] = v19;
        _os_log_debug_impl(&dword_275572000, v25, OS_LOG_TYPE_DEBUG, "SIGNPOST END   [id: %hu]: (%.4fs) RefreshOfferDetails %@", buf, 0x1Cu);
      }

      v26 = _ICQGetLogSystem();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v20 expirationDate];
        *buf = 138543618;
        *v49 = v19;
        *&v49[8] = 2112;
        *&v49[10] = v27;
        _os_log_impl(&dword_275572000, v26, OS_LOG_TYPE_DEFAULT, "Finished persisting %{public}@ offer; expires on %@", buf, 0x16u);
      }

      v28 = *(a1 + 64);
      if (v28)
      {
        (*(v28 + 16))(v28, v20, 0);
      }

      v29 = v47;
      goto LABEL_58;
    }
  }

  else
  {
    v30 = _ICQGetLogSystem();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v30, OS_LOG_TYPE_DEFAULT, "Fetched offer is not valid in current conditions, invalidating both old and new offers", buf, 2u);
    }

    v31 = [(ICQDaemonOfferStub *)v8 offerResetURL];

    v32 = _ICQGetLogSystem();
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    if (v31)
    {
      if (v33)
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v32, OS_LOG_TYPE_DEFAULT, "Updating server with invalid fetched offer status", buf, 2u);
      }

      [*(a1 + 40) _fetchDictionaryForAccount:*(a1 + 48) quotaKey:@"quotaOfferReset" quotaReason:@"OfferReset" stub:v8 notificationID:*(a1 + 56) contextDictionary:0 mlDaemonExtraFields:0 completion:&__block_literal_global_601];
    }

    else
    {
      if (v33)
      {
        *buf = 0;
        _os_log_impl(&dword_275572000, v32, OS_LOG_TYPE_DEFAULT, "No offerResetURL provided in fetched offer, unable to notify server", buf, 2u);
      }
    }
  }

  v34 = _ICQGetLogSystem();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    if ([(ICQDaemonOfferStub *)v7 isBuddyOffer])
    {
      v35 = @"buddy ";
    }

    else
    {
      v35 = &stru_288431E38;
    }

    *buf = 138543618;
    *v49 = v6;
    *&v49[8] = 2114;
    *&v49[10] = v35;
    _os_log_impl(&dword_275572000, v34, OS_LOG_TYPE_DEFAULT, "error %{public}@ occurred fetching %{public}@offer -- persisting placeholder", buf, 0x16u);
  }

  v36 = [*(a1 + 40) _classForOfferStub:v7];
  v29 = v6;
  v5 = [*(a1 + 40) _placeholderOfferForAccount:*(a1 + 48) requestType:-[ICQDaemonOfferStub requestType](v7 error:{"requestType"), v6}];
  [v5 persistObject];
  v37 = _ICQSignpostGetNanoseconds(*(a1 + 72), *(a1 + 80));
  v38 = _ICQSignpostLogSystem();
  v39 = v38;
  v40 = *(a1 + 72);
  if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v38))
  {
    *buf = 138412290;
    *v49 = v36;
    _os_signpost_emit_with_name_impl(&dword_275572000, v39, OS_SIGNPOST_INTERVAL_END, v40, "RefreshOfferDetails", "%@", buf, 0xCu);
  }

  v41 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109634;
    *v49 = *(a1 + 72);
    *&v49[4] = 2048;
    *&v49[6] = v37 / 1000000000.0;
    *&v49[14] = 2112;
    *&v49[16] = v36;
    _os_log_debug_impl(&dword_275572000, v41, OS_LOG_TYPE_DEBUG, "SIGNPOST END   [id: %hu]: (%.4fs) RefreshOfferDetails %@", buf, 0x1Cu);
  }

  v42 = _ICQGetLogSystem();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    if ([(ICQDaemonOfferStub *)v7 isBuddyOffer])
    {
      v43 = @"buddy ";
    }

    else
    {
      v43 = &stru_288431E38;
    }

    v44 = [v5 expirationDate];
    *buf = 138543618;
    *v49 = v43;
    *&v49[8] = 2112;
    *&v49[10] = v44;
    _os_log_impl(&dword_275572000, v42, OS_LOG_TYPE_DEFAULT, "Finished persisting placeholder %{public}@ offer; expires on %@", buf, 0x16u);
  }

  v45 = *(a1 + 64);
  if (v45)
  {
    (*(v45 + 16))(v45, v5, 0);
  }

LABEL_58:

  v46 = *MEMORY[0x277D85DE8];
}

void __143__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdFetchDaemonOfferForAccount_stub_notificationID_isoNewOfferResponse_completion___block_invoke_599(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (v3)
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __93__ICQDaemonOfferManager__coalescedFetchDaemonOfferForAccount_stub_notificationID_completion___block_invoke_372_cold_1();
    }
  }
}

- (void)_subdFetchNewOfferResponseWithContent:(id)a3 andMaxDelaySecs:(id)a4 completion:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 shouldCallMlDaemon];
  v11 = _ICQGetLogSystem();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v8 && v10)
  {
    if (v12)
    {
      *buf = 67109120;
      LODWORD(v20) = [v8 intValue];
      _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "[SUBD] Installing a the failsafe activity with maxDelaySecs=[%d].", buf, 8u);
    }

    [v8 doubleValue];
    v14 = v13;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __125__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdFetchNewOfferResponseWithContent_andMaxDelaySecs_completion___block_invoke;
    v16[3] = &unk_27A652658;
    v17 = v7;
    v18 = v9;
    [ICQDelayedOfferFailsafeActivityController startActivityWithDelaySecs:v14 completion:v16];
  }

  else
  {
    if (v12)
    {
      *buf = 138412546;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "[SUBD] Skipping call to SubscriptionD and using the normal IND code flow. notificationContent=[%@] maxDelaySecs=[%@]", buf, 0x16u);
    }

    (*(v9 + 2))(v9, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __125__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdFetchNewOfferResponseWithContent_andMaxDelaySecs_completion___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = _ICQGetLogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __125__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdFetchNewOfferResponseWithContent_andMaxDelaySecs_completion___block_invoke_cold_1();
    }
  }

  v5 = _ICQSignpostLogSystem();
  v6 = objc_opt_new();
  v7 = _ICQSignpostCreateWithObject(v5, v6);
  v9 = v8;

  v10 = _ICQSignpostLogSystem();
  v11 = v10;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_275572000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v7, "QuotaClientNewOffer", " enableTelemetry=YES ", buf, 2u);
  }

  v12 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __125__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdFetchNewOfferResponseWithContent_andMaxDelaySecs_completion___block_invoke_cold_2();
  }

  v13 = _ICQGetLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 32);
    *buf = 138412290;
    v23 = v14;
    _os_log_impl(&dword_275572000, v13, OS_LOG_TYPE_DEFAULT, "[SUBD] Calling SubscriptionD with content=[%@].", buf, 0xCu);
  }

  v15 = [MEMORY[0x277D7F4F0] shared];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __125__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdFetchNewOfferResponseWithContent_andMaxDelaySecs_completion___block_invoke_602;
  v18[3] = &unk_27A652630;
  v20 = v7;
  v21 = v9;
  v16 = *(a1 + 32);
  v19 = *(a1 + 40);
  [v15 newOffer:v16 andCallback:v18];

  v17 = *MEMORY[0x277D85DE8];
}

void __125__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdFetchNewOfferResponseWithContent_andMaxDelaySecs_completion___block_invoke_602(void *a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  Nanoseconds = _ICQSignpostGetNanoseconds(a1[5], a1[6]);
  v5 = _ICQSignpostLogSystem();
  v6 = v5;
  v7 = a1[5];
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v10 = 138412290;
    *v11 = v3;
    _os_signpost_emit_with_name_impl(&dword_275572000, v6, OS_SIGNPOST_INTERVAL_END, v7, "QuotaClientNewOffer", "[SUBD] Async call to SubscriptionD with response=[%@].", &v10, 0xCu);
  }

  v8 = _ICQSignpostLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 67109634;
    *v11 = *(a1 + 20);
    *&v11[4] = 2048;
    *&v11[6] = Nanoseconds / 1000000000.0;
    v12 = 2112;
    v13 = v3;
    _os_log_debug_impl(&dword_275572000, v8, OS_LOG_TYPE_DEBUG, "SIGNPOST END   [id: %hu]: (%.4fs) QuotaClientNewOffer [SUBD] Async call to SubscriptionD with response=[%@].", &v10, 0x1Cu);
  }

  (*(a1[4] + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_subdHandleFetchOffersStub:(id)a3 account:(id)a4 requestType:(int64_t)a5 group:(id)a6 completion:(id)a7
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  dispatch_group_enter(v12);
  v13 = [MEMORY[0x277D7F4F0] shared];
  v14 = [v10 serverDictionary];
  v15 = [v13 parseNotification:v14];

  v16 = [v10 serverDictionary];
  v17 = [ICQMLProtocolParser parseMaxDelaySecsFromFetchOffersResponse:v16];

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __124__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdHandleFetchOffersStub_account_requestType_group_completion___block_invoke;
  v21[3] = &unk_27A652680;
  v21[4] = self;
  v22 = v11;
  v23 = v10;
  v24 = v12;
  v18 = v12;
  v19 = v10;
  v20 = v11;
  [(ICQDaemonOfferManager *)self _subdFetchNewOfferResponseWithContent:v15 andMaxDelaySecs:v17 completion:v21];
}

void __124__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdHandleFetchOffersStub_account_requestType_group_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __124__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdHandleFetchOffersStub_account_requestType_group_completion___block_invoke_2;
  v6[3] = &unk_27A652568;
  v6[4] = v3;
  v5 = *(a1 + 48);
  v7 = *(a1 + 56);
  [v3 _subdFetchDaemonOfferForAccount:v4 stub:v5 notificationID:0 isoNewOfferResponse:a2 completion:v6];
}

void __124__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdHandleFetchOffersStub_account_requestType_group_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  [*(a1 + 32) _logErrorsForFetchOfferResultWithOffer:v5 error:a3 isForBuddy:0];
  if (v5 && ![v5 isBuddyOffer])
  {
    v6 = [v5 isDefaultOffer];
    v7 = *(a1 + 32);
    if (!v6)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __124__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdHandleFetchOffersStub_account_requestType_group_completion___block_invoke_3;
      v8[3] = &unk_27A652540;
      v8[4] = v7;
      v9 = v5;
      v10 = *(a1 + 40);
      [v7 _postFollowupForDaemonOffer:v9 replaceExisting:1 completion:v8];

      goto LABEL_6;
    }

    [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:1];
  }

  dispatch_group_leave(*(a1 + 40));
LABEL_6:
}

void __124__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdHandleFetchOffersStub_account_requestType_group_completion___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:{objc_msgSend(*(a1 + 40), "requestType")}];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

- (void)_subdDisplayDelayedOfferWithContext:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = MEMORY[0x277D7F4F0];
  v8 = a3;
  v9 = [v7 shared];
  v10 = [v9 parseDelayedOfferFromJson:v8];

  v11 = _ICQGetLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v10;
    _os_log_impl(&dword_275572000, v11, OS_LOG_TYPE_DEFAULT, "[SUBD] Parsed the delayed offer context=[%@].", buf, 0xCu);
  }

  if (v10)
  {
    v12 = [v10 serverDict];
    v13 = [v10 newOfferResponse];
    v14 = [v12 objectForKeyedSubscript:@"notificationId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      if (v12)
      {
        v16 = [[ICQDaemonOfferStub alloc] initWithServerDictionary:v12];
        v15 = 0;
LABEL_11:

        goto LABEL_12;
      }

      v15 = 0;
    }

    v16 = 0;
    goto LABEL_11;
  }

  v13 = 0;
  v15 = 0;
  v16 = 0;
LABEL_12:
  v17 = [MEMORY[0x277CB8F48] defaultStore];
  v18 = [v17 aa_primaryAppleAccount];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __107__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdDisplayDelayedOfferWithContext_completion___block_invoke;
  v23[3] = &unk_27A651F78;
  v23[4] = self;
  v24 = v17;
  v25 = v18;
  v26 = v6;
  v19 = v6;
  v20 = v18;
  v21 = v17;
  [(ICQDaemonOfferManager *)self _subdFetchDaemonOfferForAccount:v20 stub:v16 notificationID:v15 isoNewOfferResponse:v13 completion:v23];

  v22 = *MEMORY[0x277D85DE8];
}

void __107__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdDisplayDelayedOfferWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v12 = _ICQGetLogSystem();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v7;
      _os_log_impl(&dword_275572000, v12, OS_LOG_TYPE_DEFAULT, "Fetch offer error [%@] for a delayed offer notification.", buf, 0xCu);
    }

    v13 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __107__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdDisplayDelayedOfferWithContext_completion___block_invoke_604;
    v15[3] = &unk_27A6526D0;
    v15[4] = v13;
    v9 = &v17;
    v17 = *(a1 + 56);
    v11 = &v16;
    v16 = v7;
    [v13 clearAllFollowupsWithCompletion:v15];
  }

  else
  {
    v8 = *(a1 + 32);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __107__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdDisplayDelayedOfferWithContext_completion___block_invoke_2;
    v18[3] = &unk_27A6526A8;
    v18[4] = v8;
    v9 = &v19;
    v10 = v5;
    v19 = v10;
    v11 = &v20;
    v20 = *(a1 + 40);
    v21 = *(a1 + 48);
    v22 = *(a1 + 56);
    [v8 _postFollowupForDaemonOffer:v10 replaceExisting:1 completion:v18];
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __107__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdDisplayDelayedOfferWithContext_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:{objc_msgSend(*(a1 + 40), "requestType")}];
  v2 = [ICQDaemonAlert shouldShowForDaemonOffer:*(a1 + 40)];
  v3 = _ICQGetLogSystem();
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "Showing the alert triggered by a delayed offer notification.", buf, 2u);
    }

    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __107__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdDisplayDelayedOfferWithContext_completion___block_invoke_603;
    v9[3] = &unk_27A651FE8;
    v10 = *(a1 + 64);
    [v5 _showDaemonAlertForOffer:v6 notificationDictionary:0 store:v7 account:v8 completion:v9];
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_275572000, v3, OS_LOG_TYPE_DEFAULT, "Skipping alert from a delayed offer notification.", buf, 2u);
    }

    (*(*(a1 + 64) + 16))();
  }
}

uint64_t __107__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdDisplayDelayedOfferWithContext_completion___block_invoke_604(uint64_t a1)
{
  [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:3];
  [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:1];
  [*(a1 + 32) _postDaemonOfferChangedDueToPushDarwinNotificationRequestType:2];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)_subdTearDown
{
  v2 = [MEMORY[0x277D7F4F0] shared];
  [v2 clearNotificationState:&__block_literal_global_606];
}

void __73__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdTearDown__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _ICQGetLogSystem();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __73__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdTearDown__block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_275572000, v4, OS_LOG_TYPE_DEFAULT, "Successfully cleaned up the Subscription Daemon state.", v5, 2u);
  }
}

void __60__ICQDaemonOfferManager_clearFollowupsOfferType_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [_ICQHelperFunctions _getOfferDescriptionFromRequestType:*(a2 + 40)];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5(&dword_275572000, v3, v4, "Failed to clear followup with error %{public}@, offerType: %@", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_coalescedDaemonOfferStubsDictionaryForAccount:requestType:quotaReason:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_coalescedDaemonOfferStubsDictionaryForAccount:requestType:quotaReason:completion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void __107__ICQDaemonOfferManager__coalescedDaemonOfferStubsDictionaryForAccount_requestType_quotaReason_completion___block_invoke_cold_1(unsigned __int16 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_processPushNotificationCheckHardwareIDWithDictionary:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_clearCachedStubsIfOfferIDIsNew:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_coalescedFetchDaemonOfferForAccount:stub:notificationID:completion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __93__ICQDaemonOfferManager__coalescedFetchDaemonOfferForAccount_stub_notificationID_completion___block_invoke_cold_1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [a1 offerId];
  v4 = [a2 offerId];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5(&dword_275572000, v5, v6, "Fetched offerId (%@) does not match requested offerId (%@)", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

void __93__ICQDaemonOfferManager__coalescedFetchDaemonOfferForAccount_stub_notificationID_completion___block_invoke_372_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_postDaemonOfferChangedDueToPushDarwinNotificationRequestType:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7(&dword_275572000, v0, v1, "SIGNPOST EVENT [id: %hu] DarwinNotification  enableTelemetry=YES %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_postDaemonOfferChangedDueToPushDarwinNotificationRequestType:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_teardownCachedOffersAndNotify:(NSObject *)a3 .cold.1(unsigned __int16 a1, uint64_t a2, NSObject *a3)
{
  v3 = &stru_288431E38;
  if (a2)
  {
    v3 = @"and notify";
  }

  LODWORD(v5) = 67109378;
  HIDWORD(v5) = a1;
  LOWORD(v6) = 2112;
  *(&v6 + 2) = v3;
  OUTLINED_FUNCTION_7(&dword_275572000, a2, a3, "SIGNPOST EVENT [id: %hu] TeardownAllOffers  enableTelemetry=YES %@", v5, v6, HIWORD(v3), *MEMORY[0x277D85DE8]);
  v4 = *MEMORY[0x277D85DE8];
}

void __66__ICQDaemonOfferManager_getCkBackupDeviceIDWithCompletionHandler___block_invoke_398_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_coalescedReconsiderOffersForAccount:(NSObject *)a3 isForBuddy:quotaReason:options:choiceHandler:completion:.cold.1(unsigned __int16 a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = [_ICQHelperFunctions _getOfferDescriptionFromRequestType:a2];
  v7[0] = 67109378;
  v7[1] = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_debug_impl(&dword_275572000, a3, OS_LOG_TYPE_DEBUG, "SIGNPOST BEGIN [id: %hu]: ReconsiderOffers  enableTelemetry=YES %@", v7, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

void __118__ICQDaemonOfferManager__coalescedReconsiderOffersForAccount_isForBuddy_quotaReason_options_choiceHandler_completion___block_invoke_cold_1(unsigned __int16 *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x12u);
  v7 = *MEMORY[0x277D85DE8];
}

void __82__ICQDaemonOfferManager__postUserNotification_replaceExisting_offerID_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __125__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdFetchNewOfferResponseWithContent_andMaxDelaySecs_completion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __125__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdFetchNewOfferResponseWithContent_andMaxDelaySecs_completion___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void __73__ICQDaemonOfferManager_iCloudSubscriptionOptimizerDaemon___subdTearDown__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end