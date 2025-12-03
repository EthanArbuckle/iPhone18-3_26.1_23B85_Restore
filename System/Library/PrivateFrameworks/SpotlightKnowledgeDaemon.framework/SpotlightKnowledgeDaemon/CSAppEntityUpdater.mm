@interface CSAppEntityUpdater
+ (id)sharedInstance;
- (BOOL)_handleJournalUpdateWithDonation:(id)donation orDeletion:(id)deletion cancelBlock:(id)block completion:(id)completion;
- (BOOL)handleDeletion:(id)deletion turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block;
- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block;
- (BOOL)shouldHandleJournalItem:(id)item bundleID:(id)d;
- (CSAppEntityUpdater)init;
- (CSAppEntityUpdater)initWithQueue:(id)queue directory:(id)directory;
- (id)_allBundlesApplicableToCascade;
- (id)_allExistentSetsNotContainedInSpotlightBundles:(id)bundles;
- (id)_countAppEntitiesFromBundle:(id)bundle;
- (id)_disabledTypeIdentifiersClause:(id)clause;
- (id)description;
- (void)_allBundlesApplicableToCascade;
- (void)_donateJournalUpdateWithRecursiveRetry:(unint64_t)retry donation:(id)donation deletion:(id)deletion ledger:(id)ledger cancelBlock:(id)block completion:(id)completion;
- (void)_donateToCascadeWithReason:(unsigned __int8)reason ledger:(id)ledger donation:(id)donation deletion:(id)deletion completion:(id)completion;
- (void)_recursivelyCleanupDeletedSets:(id)sets withIndex:(unint64_t)index cancelBlock:(id)block completion:(id)completion;
- (void)_recursivelyDonateNowForAllBundles:(id)bundles withIndex:(unint64_t)index cancelBlock:(id)block completion:(id)completion;
- (void)_recursivelyVerifyAllBundles:(id)bundles withIndex:(unint64_t)index cancelBlock:(id)block completion:(id)completion;
- (void)handleDonateNowNotification:(id)notification completionHandler:(id)handler;
- (void)runNightlyVerification:(id)verification completionHandler:(id)handler;
@end

@implementation CSAppEntityUpdater

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CSAppEntityUpdater sharedInstance];
  }

  v3 = sharedInstance_appEntityUpdater;

  return v3;
}

void __36__CSAppEntityUpdater_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(CSAppEntityUpdater);
  v1 = sharedInstance_appEntityUpdater;
  sharedInstance_appEntityUpdater = v0;
}

- (CSAppEntityUpdater)init
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("CSAppEntityUpdater", v3);

  v5 = MEMORY[0x277CBEBC0];
  v6 = cascadePath();
  v7 = [v5 fileURLWithPath:v6 isDirectory:1];

  v8 = [(CSAppEntityUpdater *)self initWithQueue:v4 directory:v7];
  return v8;
}

- (CSAppEntityUpdater)initWithQueue:(id)queue directory:(id)directory
{
  queueCopy = queue;
  directoryCopy = directory;
  v14.receiver = self;
  v14.super_class = CSAppEntityUpdater;
  v9 = [(CSAppEntityUpdater *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    v11 = objc_opt_new();
    translator = v10->_translator;
    v10->_translator = v11;

    objc_storeStrong(&v10->_ledgerDirectory, directory);
  }

  return v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  taskName = [(CSAppEntityUpdater *)self taskName];
  v6 = [v3 initWithFormat:@"<%@:%p; %@>", v4, self, taskName];

  return v6;
}

- (BOOL)shouldHandleJournalItem:(id)item bundleID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (([(CSEventDonationJournalItem *)itemCopy flags]& 0x20) == 0)
  {
    goto LABEL_19;
  }

  if (([(CSEventDonationJournalItem *)itemCopy flags]& 1) != 0)
  {
    goto LABEL_19;
  }

  [(CSEventDonationJournalItem *)itemCopy attrDictObj];
  if (_MDPlistGetPlistObjectType() != 241)
  {
    goto LABEL_19;
  }

  v12 = 0uLL;
  v13 = 0;
  [(CSEventDonationJournalItem *)itemCopy attrDictObj];
  if (!_MDPlistDictionaryGetPlistObjectForKey() || (*buf = v12, v15 = v13, _MDPlistGetPlistObjectType() != 244) && (*buf = v12, v15 = v13, _MDPlistGetPlistObjectType() != 245))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v6 = SKGLogInit();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = objc_opt_class();
        *buf = 138412290;
        *&buf[4] = v7;
        v8 = "### %@ missing _kMDItemAppEntityInstanceIdentifier";
LABEL_17:
        _os_log_impl(&dword_231B25000, v6, OS_LOG_TYPE_DEFAULT, v8, buf, 0xCu);
      }

LABEL_18:
    }

LABEL_19:
    v5 = 0;
    goto LABEL_20;
  }

  [(CSEventDonationJournalItem *)itemCopy attrDictObj];
  if (!_MDPlistDictionaryGetPlistObjectForKey() || (*buf = v12, v15 = v13, _MDPlistGetPlistObjectType() != 244) && (*buf = v12, v15 = v13, _MDPlistGetPlistObjectType() != 245))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v6 = SKGLogInit();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = objc_opt_class();
        *buf = 138412290;
        *&buf[4] = v9;
        v8 = "### %@ missing _kMDItemAppEntityTypeIdentifier";
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    goto LABEL_19;
  }

  v5 = 1;
LABEL_20:

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)_donateToCascadeWithReason:(unsigned __int8)reason ledger:(id)ledger donation:(id)donation deletion:(id)deletion completion:(id)completion
{
  reasonCopy = reason;
  v51 = *MEMORY[0x277D85DE8];
  ledgerCopy = ledger;
  donationCopy = donation;
  deletionCopy = deletion;
  completionCopy = completion;
  v15 = MEMORY[0x277CF9500];
  bundleIdentifier = [ledgerCopy bundleIdentifier];
  v43 = 0;
  v17 = [v15 sourceIdentifierWithValue:bundleIdentifier error:&v43];
  v18 = v43;

  if (v17)
  {
    version = [ledgerCopy version];
    if (reasonCopy == 2)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v20 = SKGLogInit();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v33 = objc_opt_class();
          bundleIdentifier2 = [ledgerCopy bundleIdentifier];
          v22 = _donationReasonDescription(2);
          *buf = 138412802;
          v46 = v33;
          v47 = 2112;
          v48 = bundleIdentifier2;
          v49 = 2112;
          v50 = v22;
          _os_log_impl(&dword_231B25000, v20, OS_LOG_TYPE_DEFAULT, "### %@ Resetting version to force full Cascade donation for bundle: %@ with reason: %@", buf, 0x20u);
        }
      }

      v23 = 0;
    }

    else
    {
      v23 = version;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v26 = SKGLogInit();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        *buf = 138412802;
        v46 = v27;
        v47 = 2112;
        v48 = v17;
        v49 = 2048;
        v50 = v23;
        _os_log_impl(&dword_231B25000, v26, OS_LOG_TYPE_DEFAULT, "%@ ### Requesting Cascade donation (%@, version: %llu)", buf, 0x20u);
      }
    }

    v28 = MEMORY[0x277CF9508];
    v44 = v17;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __85__CSAppEntityUpdater__donateToCascadeWithReason_ledger_donation_deletion_completion___block_invoke;
    v35[3] = &unk_27893C668;
    v35[4] = self;
    v42 = reasonCopy;
    v36 = ledgerCopy;
    v25 = donationCopy;
    v37 = donationCopy;
    v38 = deletionCopy;
    v39 = v17;
    v41 = v23;
    v40 = completionCopy;
    [v28 incrementalSetDonationWithItemType:47341 descriptors:v29 version:v23 validity:@"Spotlight" completion:v35];
  }

  else
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v24 = SKGLogInit();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        bundleIdentifier3 = [ledgerCopy bundleIdentifier];
        *buf = 138412802;
        v46 = v31;
        v47 = 2112;
        v48 = bundleIdentifier3;
        v49 = 2112;
        v50 = v18;
        _os_log_error_impl(&dword_231B25000, v24, OS_LOG_TYPE_ERROR, "### %@ Failed to build descriptor from bundle: %@ with error %@", buf, 0x20u);
      }
    }

    (*(completionCopy + 2))(completionCopy, 7, v18);
    v25 = donationCopy;
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __85__CSAppEntityUpdater__donateToCascadeWithReason_ledger_donation_deletion_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v8 = *(a1 + 88);
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v33 = 0;
    v13 = &v33;
    v14 = [v9 _handleIncrementalCascadeDonation:v5 withReason:v8 ledger:v10 donation:v11 deletion:v12 error:&v33];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v20 = v6;
      isKindOfClass = 1;
      v18 = 6;
      goto LABEL_11;
    }

    v15 = *(a1 + 88);
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v32 = 0;
    v13 = &v32;
    v14 = [v16 _handleFullCascadeDonation:v5 withReason:v15 ledger:v17 error:&v32];
  }

  v18 = v14;
  v19 = *v13;
  v20 = v19;
  if (v18)
  {
LABEL_11:
    [v5 cancel];
    goto LABEL_12;
  }

  v31 = v19;
  v21 = [v5 finish:&v31];
  v22 = v31;

  if (v21)
  {
    v18 = 0;
  }

  else
  {
    v18 = 11;
  }

  v20 = v22;
LABEL_12:
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v23 = SKGLogInit();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v6;
      v24 = *(a1 + 32);
      v25 = objc_opt_class();
      v26 = *(a1 + 64);
      v27 = *(a1 + 80);
      if (v18)
      {
        v28 = _errorDescription(v18, v20);
      }

      else
      {
        v28 = @"Completed";
      }

      *buf = 138413058;
      v35 = v25;
      v36 = 2112;
      v37 = v26;
      v38 = 2048;
      v39 = v27;
      v40 = 2112;
      v41 = v28;
      _os_log_impl(&dword_231B25000, v23, OS_LOG_TYPE_DEFAULT, "### %@ Cascade donation (%@, version: %llu) %@", buf, 0x2Au);
      if (v18)
      {
      }

      v6 = v30;
    }
  }

  if (!(isKindOfClass & 1 | (v18 != 0)))
  {
    [*(a1 + 40) completeFullSetDonationWithVersion:*(a1 + 80)];
  }

  (*(*(a1 + 72) + 16))();

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __98__CSAppEntityUpdater__handleIncrementalCascadeDonation_withReason_ledger_donation_deletion_error___block_invoke(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = [*(a1 + 40) bundleIdentifier];
  LODWORD(v5) = [v5 shouldHandleJournalItem:v3 bundleID:v6];

  if (v5)
  {
    v7 = *MEMORY[0x277CBECE8];
    [(CSEventDonationJournalItem *)v3 identifier];
    v8 = MDJournalReaderMDPlistObjectCopy();
    v9 = [v8 mutableCopy];

    v10 = *(a1 + 48);
    v11 = [(CSEventListenerManager *)*(a1 + 56) journalMap];
    v12 = [v10 readSerialNumberFromBundleID:v11 identifier:objc_msgSend(v9 UUID:"UTF8String") listenerType:{-[CSEventListenerManager journalQueue](*(a1 + 56)), objc_msgSend(*(a1 + 32), "eventType")}];
    if ([(CSEventListenerManager *)*(a1 + 56) totalJournalSize]>= v12)
    {
      [(CSEventDonationJournalItem *)v3 attrDictObj];
      v13 = _MDPlistContainerCopyObject();
      v19 = [objc_alloc(MEMORY[0x277CC34B8]) initWithAttributes:v13];
      v20 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v9 domainIdentifier:0 attributeSet:v19];
      v21 = *(*(a1 + 32) + 16);
      v22 = [*(a1 + 40) bundleIdentifier];
      v43 = 0;
      v23 = [v21 translateItem:v20 fromBundleId:v22 error:&v43];
      v41 = v43;

      if (v23)
      {
        v39 = v19;
        v24 = *(a1 + 64);
        v42 = 0;
        v25 = [v24 addOrUpdateItem:v23 error:&v42];
        v26 = v42;
        v27 = v42;
        if ((v25 & 1) == 0)
        {
          if (SKGLogGetCurrentLoggingLevel() >= 4)
          {
            log = SKGLogInit();
            if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
            {
              v28 = *(a1 + 32);
              v35 = objc_opt_class();
              v36 = [v20 uniqueIdentifier];
              *buf = 138412802;
              v45 = v35;
              v46 = 2112;
              v47 = v36;
              v48 = 2112;
              v49 = v27;
              _os_log_impl(&dword_231B25000, log, OS_LOG_TYPE_DEFAULT, "### %@ Failed to add or update item with uniqueID: %@ with error: %@", buf, 0x20u);
            }
          }

          *(*(*(a1 + 80) + 8) + 24) = 8;
          objc_storeStrong((*(*(a1 + 88) + 8) + 40), v26);
        }

        v18 = v25 ^ 1u;

        v19 = v39;
      }

      else
      {
        if (!*(*(*(a1 + 72) + 8) + 24) && SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v29 = SKGLogInit();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = *(a1 + 32);
            loga = objc_opt_class();
            v31 = [v20 uniqueIdentifier];
            [*(a1 + 40) bundleIdentifier];
            v32 = v40 = v19;
            *buf = 138413058;
            v45 = loga;
            v46 = 2112;
            v47 = v31;
            v48 = 2112;
            v49 = v32;
            v50 = 2112;
            v51 = v41;
            _os_log_impl(&dword_231B25000, v29, OS_LOG_TYPE_DEFAULT, "### %@ Encountered translation error for item %@ from bundle %@ error %@", buf, 0x2Au);

            v19 = v40;
          }
        }

        v18 = 0;
        ++*(*(*(a1 + 72) + 8) + 24);
      }
    }

    else
    {
      if (SKGLogGetCurrentLoggingLevel() < 4)
      {
        v18 = 0;
LABEL_25:

        goto LABEL_26;
      }

      v13 = SKGLogInit();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *(a1 + 32);
        v15 = objc_opt_class();
        v16 = [(CSEventListenerManager *)*(a1 + 56) totalJournalSize];
        v17 = [*(a1 + 40) bundleIdentifier];
        *buf = 138413314;
        v45 = v15;
        v46 = 2112;
        v47 = v9;
        v48 = 2048;
        v49 = v16;
        v50 = 2048;
        v51 = v12;
        v52 = 2112;
        v53 = v17;
        _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEFAULT, "%@ SKIPPING add for item uniqueID: %@ with serialNumber:%llu < latestSerialNumber:%llu from bundle: %@", buf, 0x34u);
      }

      v18 = 0;
    }

    goto LABEL_25;
  }

  v18 = 0;
LABEL_26:
  objc_autoreleasePoolPop(v4);

  v33 = *MEMORY[0x277D85DE8];
  return v18;
}

void __98__CSAppEntityUpdater__handleIncrementalCascadeDonation_withReason_ledger_donation_deletion_error___block_invoke_170(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  if (!*(a1 + 32) || !-[CSEventListenerManager totalJournalSize](*(a1 + 40)) || (v5 = *(a1 + 32), v6 = -[CSEventListenerManager journalMap](*(a1 + 40)), v7 = [v5 readSerialNumberFromBundleID:v6 identifier:objc_msgSend(v3 UUID:"UTF8String") listenerType:{-[CSEventListenerManager journalQueue](*(a1 + 40)), objc_msgSend(*(a1 + 48), "eventType")}], -[CSEventListenerManager totalJournalSize](*(a1 + 40)) >= v7))
  {
    v13 = *(a1 + 64);
    v20 = 0;
    v14 = [v13 removeItemWithSourceItemIdentifier:v3 error:&v20];
    v15 = v20;
    v8 = v20;
    if ((v14 & 1) == 0)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v16 = SKGLogInit();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 48);
          v18 = objc_opt_class();
          *buf = 138412802;
          v22 = v18;
          v23 = 2112;
          v24 = v3;
          v25 = 2112;
          v26 = v8;
          _os_log_impl(&dword_231B25000, v16, OS_LOG_TYPE_DEFAULT, "### %@ Failed delete item with uniqueID: %@ with error: %@", buf, 0x20u);
        }
      }

      *(*(*(a1 + 72) + 8) + 24) = 9;
      objc_storeStrong((*(*(a1 + 80) + 8) + 40), v15);
    }

    goto LABEL_13;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 7)
  {
    v8 = SKGLogKeyphraseInit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 48);
      v10 = objc_opt_class();
      v11 = [(CSEventListenerManager *)*(a1 + 40) totalJournalSize];
      v12 = [*(a1 + 56) bundleIdentifier];
      *buf = 138413314;
      v22 = v10;
      v23 = 2112;
      v24 = v3;
      v25 = 2048;
      v26 = v11;
      v27 = 2048;
      v28 = v7;
      v29 = 2112;
      v30 = v12;
      _os_log_debug_impl(&dword_231B25000, v8, OS_LOG_TYPE_DEBUG, "%@ SKIPPING delete for item uniqueID: %@ with serialNumber:%llu < latestSerialNumber:%llu from bundle: %@", buf, 0x34u);
    }

LABEL_13:
  }

  objc_autoreleasePoolPop(v4);

  v19 = *MEMORY[0x277D85DE8];
}

void __73__CSAppEntityUpdater__handleFullCascadeDonation_withReason_ledger_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CSAppEntityUpdater__handleFullCascadeDonation_withReason_ledger_error___block_invoke_2;
  block[3] = &unk_27893C6E0;
  block[4] = v5;
  v11 = v3;
  v7 = v4;
  v8 = *(a1 + 56);
  v12 = v7;
  v14 = v8;
  v9 = v3;
  objc_copyWeak(&v17, (a1 + 88));
  v13 = *(a1 + 48);
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  dispatch_sync(v6, block);

  objc_destroyWeak(&v17);
}

void __73__CSAppEntityUpdater__handleFullCascadeDonation_withReason_ledger_error___block_invoke_2(uint64_t a1)
{
  v54 = *MEMORY[0x277D85DE8];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v2 = SKGLogInit();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = objc_opt_class();
      v5 = [*(a1 + 40) count];
      v6 = *(a1 + 48);
      *buf = 138412802;
      v48 = v4;
      v49 = 2048;
      *v50 = v5;
      *&v50[8] = 2112;
      *v51 = v6;
      _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_DEFAULT, "### %@ Received %ld items from Spotlight in the foundItemsHandler from %@", buf, 0x20u);
    }
  }

  if (*(*(*(a1 + 64) + 8) + 24) != 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 96));
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = *(a1 + 40);
    v11 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v40 = 0;
      v14 = *v44;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v44 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v43 + 1) + 8 * i);
          v17 = objc_autoreleasePoolPush();
          v18 = *(*(a1 + 32) + 16);
          v19 = *(a1 + 48);
          v42 = 0;
          v20 = [v18 translateItem:v16 fromBundleId:v19 error:&v42];
          v21 = v42;
          if (v20)
          {
            v22 = v13;
            v23 = *(a1 + 56);
            v24 = *(*(a1 + 72) + 8);
            v41 = *(v24 + 40);
            v25 = [v23 registerItem:v20 error:&v41];
            objc_storeStrong((v24 + 40), v41);
            if ((v25 & 1) == 0)
            {
              v7 = WeakRetained;
              if (SKGLogGetCurrentLoggingLevel() >= 2)
              {
                v31 = SKGLogInit();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                {
                  __73__CSAppEntityUpdater__handleFullCascadeDonation_withReason_ledger_error___block_invoke_2_cold_1();
                }
              }

              *(*(*(a1 + 80) + 8) + 24) = 10;
              [WeakRetained cancel];

              objc_autoreleasePoolPop(v17);
              goto LABEL_37;
            }

            v13 = v22 + 1;
          }

          else
          {
            if (!v40 && SKGLogGetCurrentLoggingLevel() >= 2)
            {
              v26 = SKGLogInit();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                v27 = *(a1 + 32);
                v37 = v13;
                v28 = objc_opt_class();
                v29 = [v16 uniqueIdentifier];
                v30 = *(a1 + 48);
                *buf = 138413058;
                v48 = v28;
                v13 = v37;
                v49 = 2112;
                *v50 = v29;
                *&v50[8] = 2112;
                *v51 = v21;
                *&v51[8] = 2112;
                v52 = v30;
                _os_log_error_impl(&dword_231B25000, v26, OS_LOG_TYPE_ERROR, "### %@ Skipping item with unique id %@ from %@ due to translation failure: %@ Subsequent translation errors are silenced for this request.", buf, 0x2Au);
              }
            }

            ++v40;
          }

          objc_autoreleasePoolPop(v17);
        }

        v12 = [obj countByEnumeratingWithState:&v43 objects:v53 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v13 = 0;
      v40 = 0;
    }

    v7 = WeakRetained;
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v32 = SKGLogInit();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(a1 + 32);
        v34 = objc_opt_class();
        v35 = *(a1 + 48);
        *buf = 138413058;
        v48 = v34;
        v49 = 1024;
        *v50 = v13;
        *&v50[4] = 1024;
        *&v50[6] = v40;
        *v51 = 2112;
        *&v51[2] = v35;
        _os_log_impl(&dword_231B25000, v32, OS_LOG_TYPE_DEFAULT, "### %@ Registered %u items with %d translation errors from %@", buf, 0x22u);
      }
    }

    *(*(*(a1 + 88) + 8) + 24) += v13;
    goto LABEL_37;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v7 = SKGLogInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = *(a1 + 48);
      *buf = 138412546;
      v48 = v9;
      v49 = 2112;
      *v50 = v10;
      _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_DEFAULT, "### %@ foundItemsHandler: Query was stopped for bundle: %@", buf, 0x16u);
    }

LABEL_37:
  }

  v36 = *MEMORY[0x277D85DE8];
}

void __73__CSAppEntityUpdater__handleFullCascadeDonation_withReason_ledger_error___block_invoke_185(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__CSAppEntityUpdater__handleFullCascadeDonation_withReason_ledger_error___block_invoke_2_186;
  block[3] = &unk_27893C730;
  v9 = *(a1 + 40);
  v10 = v3;
  v14 = *(a1 + 64);
  v15 = *(a1 + 80);
  v11 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 88);
  v12 = v5;
  v16 = v6;
  v13 = *(a1 + 56);
  v7 = v3;
  dispatch_sync(v4, block);
}

void __73__CSAppEntityUpdater__handleFullCascadeDonation_withReason_ledger_error___block_invoke_2_186(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) timeIntervalSinceNow];
  v3 = v2;
  v4 = *(a1 + 40);
  if (!v4)
  {
    v6 = @"completed";
    goto LABEL_8;
  }

  if ([v4 code] == -2003)
  {
    v5 = a1 + 72;
    v6 = @"was cancelled";
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"hit error: %@", *(a1 + 40)];
    v5 = a1 + 72;
    if (*(*(*(a1 + 72) + 8) + 24))
    {
      goto LABEL_8;
    }

    objc_storeStrong((*(*(a1 + 80) + 8) + 40), *(a1 + 40));
    *(*(*(a1 + 88) + 8) + 24) = 14;
  }

  *(*(*v5 + 8) + 24) = 1;
LABEL_8:
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v7 = SKGLogInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 48);
      v9 = objc_opt_class();
      v10 = *(a1 + 56);
      v11 = *(*(*(a1 + 96) + 8) + 24);
      *buf = 138413314;
      v14 = v9;
      v15 = 2112;
      v16 = v6;
      v17 = 2112;
      v18 = v10;
      v19 = 1024;
      v20 = v11;
      v21 = 2048;
      v22 = -v3;
      _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_DEFAULT, "### %@ Spotlight query %@ for bundle: %@ after registering %u items with Cascade in %.3f seconds", buf, 0x30u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 64));

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_disabledTypeIdentifiersClause:(id)clause
{
  v20 = *MEMORY[0x277D85DE8];
  clauseCopy = clause;
  v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(clauseCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = clauseCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    v9 = *MEMORY[0x277D23AE0];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@!=%@", v9, *(*(&v15 + 1) + 8 * i), v15];
        [v4 addObject:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v12 = [v4 componentsJoinedByString:@" || "];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_countAppEntitiesFromBundle:(id)bundle
{
  v47[1] = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  v5 = objc_opt_new();
  _kMDItemAppEntityTypeIdentifier = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@=*)", _kMDItemAppEntityTypeIdentifier];
  [v5 setCounting:1];
  v47[0] = bundleCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
  [v5 setBundleIDs:v7];

  v8 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:_kMDItemAppEntityTypeIdentifier queryContext:v5];
  v9 = dispatch_semaphore_create(0);
  v10 = [MEMORY[0x277CBEAA8] now];
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __50__CSAppEntityUpdater__countAppEntitiesFromBundle___block_invoke;
  v36[3] = &unk_27893C780;
  v36[4] = self;
  v11 = bundleCopy;
  v37 = v11;
  v38 = &v39;
  [v8 setCountChangedHandler:v36];
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy_;
  v34 = __Block_byref_object_dispose_;
  v35 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __50__CSAppEntityUpdater__countAppEntitiesFromBundle___block_invoke_207;
  v23[3] = &unk_27893C7A8;
  v12 = v10;
  v24 = v12;
  selfCopy = self;
  v13 = v11;
  v26 = v13;
  v28 = &v30;
  v29 = &v39;
  v14 = v9;
  v27 = v14;
  [v8 setCompletionHandler:v23];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v15 = SKGLogInit();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      *buf = 138412546;
      v44 = v16;
      v45 = 2112;
      v46 = v13;
      _os_log_impl(&dword_231B25000, v15, OS_LOG_TYPE_DEFAULT, "### %@ Starting AppEntity count Spotlight query for bundle: %@", buf, 0x16u);
    }
  }

  [v8 start];
  v17 = dispatch_time(0, 240000000000);
  if (dispatch_semaphore_wait(v14, v17))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v18 = SKGLogInit();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        [(CSAppEntityUpdater *)v19 _countAppEntitiesFromBundle:v13, buf, v18];
      }
    }

    [v8 cancel];
    goto LABEL_12;
  }

  if (v31[5])
  {
LABEL_12:
    v20 = 0;
    goto LABEL_13;
  }

  v20 = [MEMORY[0x277CCABB0] numberWithInteger:v40[3]];
LABEL_13:

  _Block_object_dispose(&v30, 8);
  _Block_object_dispose(&v39, 8);

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __50__CSAppEntityUpdater__countAppEntitiesFromBundle___block_invoke(uint64_t a1, uint64_t a2)
{
  if (SKGLogGetCurrentLoggingLevel() >= 6)
  {
    v4 = SKGLogInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      __50__CSAppEntityUpdater__countAppEntitiesFromBundle___block_invoke_cold_1();
    }
  }

  *(*(*(a1 + 48) + 8) + 24) += a2;
}

void __50__CSAppEntityUpdater__countAppEntitiesFromBundle___block_invoke_207(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = COERCE_DOUBLE(a2);
  [*(a1 + 32) timeIntervalSinceNow];
  v5 = -v4;
  if (v3 == 0.0)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v8 = SKGLogInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 40);
        v16 = objc_opt_class();
        v17 = *(a1 + 48);
        v18 = *(*(*(a1 + 72) + 8) + 24);
        v26 = 138413058;
        v27 = v16;
        v28 = 2112;
        v29 = v17;
        v30 = 2048;
        v31 = v18;
        v32 = 2048;
        v33 = v5;
        v12 = "### %@ Spotlight AppEntity count query (bundle: %@) completed (result: %ld) after %.3f seconds";
        v13 = v8;
        v14 = 42;
        goto LABEL_9;
      }

LABEL_15:
    }
  }

  else
  {
    v6 = [*&v3 code];
    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if (v6 != -2003)
    {
      if (CurrentLoggingLevel >= 4)
      {
        v19 = SKGLogInit();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(a1 + 40);
          v21 = objc_opt_class();
          v22 = *(a1 + 48);
          v26 = 138413058;
          v27 = v21;
          v28 = 2112;
          v29 = v22;
          v30 = 2112;
          v31 = v3;
          v32 = 2048;
          v33 = v5;
          _os_log_impl(&dword_231B25000, v19, OS_LOG_TYPE_DEFAULT, "### %@ Spotlight AppEntity count query (bundle: %@) hit error: %@ after %.3f seconds", &v26, 0x2Au);
        }
      }

      v23 = *(*(a1 + 64) + 8);
      v24 = *&v3;
      v8 = *(v23 + 40);
      *(v23 + 40) = v24;
      goto LABEL_15;
    }

    if (CurrentLoggingLevel >= 4)
    {
      v8 = SKGLogInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 40);
        v10 = objc_opt_class();
        v11 = *(a1 + 48);
        v26 = 138412802;
        v27 = v10;
        v28 = 2112;
        v29 = v11;
        v30 = 2048;
        v31 = v5;
        v12 = "### %@ Spotlight AppEntity count query (bundle: %@) was cancelled after %.3f seconds";
        v13 = v8;
        v14 = 32;
LABEL_9:
        _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEFAULT, v12, &v26, v14);
        goto LABEL_15;
      }

      goto LABEL_15;
    }
  }

  dispatch_semaphore_signal(*(a1 + 56));

  v25 = *MEMORY[0x277D85DE8];
}

- (id)_allBundlesApplicableToCascade
{
  v44 = *MEMORY[0x277D85DE8];
  defaultSearchableIndex = [MEMORY[0x277CC34A8] defaultSearchableIndex];
  v3 = dispatch_semaphore_create(0);
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy_;
  v37 = __Block_byref_object_dispose_;
  v38 = objc_opt_new();
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __52__CSAppEntityUpdater__allBundlesApplicableToCascade__block_invoke;
  v30[3] = &unk_27893C7D0;
  v30[4] = self;
  v32 = &v33;
  v4 = v3;
  v31 = v4;
  [defaultSearchableIndex _fetchBundleIDsWithCompletionHandler:v30];
  v24 = v4;
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v5 = SKGLogInit();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = objc_opt_class();
      *buf = 138412290;
      v40 = v6;
      _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_DEFAULT, "### %@ Starting applicable bundle identifiers Spotlight query", buf, 0xCu);
    }

    v4 = v24;
  }

  v7 = dispatch_time(0, 240000000000);
  if (!dispatch_semaphore_wait(v4, v7))
  {
    v10 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v34[5];
    v11 = [v8 countByEnumeratingWithState:&v26 objects:v43 count:16];
    if (!v11)
    {
      goto LABEL_33;
    }

    v12 = *v27;
    while (1)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        if ([(LNSpotlightCascadeTranslator *)self->_translator isAllowedClientBundleIdentifier:v14, v24])
        {
          v15 = [(CSAppEntityUpdater *)self _countAppEntitiesFromBundle:v14];
          v16 = v15;
          if (v15)
          {
            if (![v15 longValue])
            {
              if (SKGLogGetCurrentLoggingLevel() >= 4)
              {
                v17 = SKGLogInit();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                {
                  v18 = objc_opt_class();
                  *buf = 138412546;
                  v40 = v18;
                  v41 = 2112;
                  v42 = v14;
                  _os_log_impl(&dword_231B25000, v17, OS_LOG_TYPE_DEFAULT, "### %@ Excluding bundle after couting zero AppEntities: %@", buf, 0x16u);
                }
              }

              goto LABEL_30;
            }
          }

          else if (SKGLogGetCurrentLoggingLevel() >= 4)
          {
            v20 = SKGLogInit();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = objc_opt_class();
              *buf = 138412546;
              v40 = v21;
              v41 = 2112;
              v42 = v14;
              _os_log_impl(&dword_231B25000, v20, OS_LOG_TYPE_DEFAULT, "### %@ Including bundle despite failed count query: %@", buf, 0x16u);
            }
          }

          [v10 addObject:v14];
        }

        else
        {
          if (SKGLogGetCurrentLoggingLevel() < 4)
          {
            continue;
          }

          v16 = SKGLogInit();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v19 = objc_opt_class();
            *buf = 138412546;
            v40 = v19;
            v41 = 2112;
            v42 = v14;
            _os_log_impl(&dword_231B25000, v16, OS_LOG_TYPE_DEFAULT, "### %@ Excluding bundle based on allow list: %@", buf, 0x16u);
          }
        }

LABEL_30:
      }

      v11 = [v8 countByEnumeratingWithState:&v26 objects:v43 count:16];
      if (!v11)
      {
        goto LABEL_33;
      }
    }
  }

  if (SKGLogGetCurrentLoggingLevel() < 2)
  {
    v10 = 0;
  }

  else
  {
    v8 = SKGLogInit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      [(CSAppEntityUpdater *)v9 _allBundlesApplicableToCascade];
    }

    v10 = 0;
LABEL_33:
  }

  _Block_object_dispose(&v33, 8);
  v22 = *MEMORY[0x277D85DE8];

  return v10;
}

void __52__CSAppEntityUpdater__allBundlesApplicableToCascade__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
  if (v6)
  {
    if (CurrentLoggingLevel >= 4)
    {
      v8 = SKGLogInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v17 = 138412546;
        v18 = objc_opt_class();
        v19 = 2112;
        v20 = v6;
        _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_DEFAULT, "### %@ fetchBundleIds returned error: %@", &v17, 0x16u);
      }
    }

    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }

  else
  {
    if (CurrentLoggingLevel >= 4)
    {
      v12 = SKGLogInit();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v17 = 138412546;
        v18 = objc_opt_class();
        v19 = 2112;
        v20 = v5;
        _os_log_impl(&dword_231B25000, v12, OS_LOG_TYPE_DEFAULT, "### %@ fetchBundleIds returned bundles: [%@]", &v17, 0x16u);
      }
    }

    v14 = *(*(a1 + 48) + 8);
    v15 = v5;
    v11 = *(v14 + 40);
    *(v14 + 40) = v15;
  }

  dispatch_semaphore_signal(*(a1 + 40));
  v16 = *MEMORY[0x277D85DE8];
}

- (id)_allExistentSetsNotContainedInSpotlightBundles:(id)bundles
{
  v27 = *MEMORY[0x277D85DE8];
  bundlesCopy = bundles;
  v4 = [MEMORY[0x277CF94E8] setEnumeratorWithUseCase:@"AppEntityDonation"];
  v25 = 0;
  v5 = [v4 allSetsWithItemType:47341 error:&v25];
  v6 = v25;

  if (v5)
  {
    v7 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v19 = v6;
      v20 = v5;
      v11 = *v22;
      v12 = *MEMORY[0x277CF9498];
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v14 descriptorWithKey:{v12, v19, v20, v21}];
          value = [v15 value];

          if (([bundlesCopy containsObject:value] & 1) == 0)
          {
            [v7 addObject:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v10);
      v6 = v19;
      v5 = v20;
    }

LABEL_16:

    goto LABEL_17;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v8 = SKGLogInit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CSAppEntityUpdater _allExistentSetsNotContainedInSpotlightBundles:];
    }

    v7 = 0;
    goto LABEL_16;
  }

  v7 = 0;
LABEL_17:

  v17 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_donateJournalUpdateWithRecursiveRetry:(unint64_t)retry donation:(id)donation deletion:(id)deletion ledger:(id)ledger cancelBlock:(id)block completion:(id)completion
{
  v37 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  deletionCopy = deletion;
  ledgerCopy = ledger;
  blockCopy = block;
  completionCopy = completion;
  if ([ledgerCopy journalUpdateAttempts] < 3)
  {
    if (blockCopy[2](blockCopy))
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v22 = SKGLogInit();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = objc_opt_class();
          bundleIdentifier = [ledgerCopy bundleIdentifier];
          *buf = 138412802;
          v34 = v23;
          v35 = 2048;
          *v36 = retry;
          *&v36[8] = 2112;
          *&v36[10] = bundleIdentifier;
          _os_log_impl(&dword_231B25000, v22, OS_LOG_TYPE_DEFAULT, "### %@ Asked to cancel. Deferring journal update with serialNumber: %lld bundle: %@", buf, 0x20u);
        }
      }

      completionCopy[2](completionCopy, 3);
    }

    else
    {
      [ledgerCopy attemptJournalUpdate];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __109__CSAppEntityUpdater__donateJournalUpdateWithRecursiveRetry_donation_deletion_ledger_cancelBlock_completion___block_invoke;
      v26[3] = &unk_27893C7F8;
      v26[4] = self;
      retryCopy = retry;
      v27 = ledgerCopy;
      v30 = completionCopy;
      v28 = donationCopy;
      v29 = deletionCopy;
      v31 = blockCopy;
      [(CSAppEntityUpdater *)self _donateToCascadeWithReason:1 ledger:v27 donation:v28 deletion:v29 completion:v26];
    }
  }

  else
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v19 = SKGLogInit();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        bundleIdentifier2 = [ledgerCopy bundleIdentifier];
        *buf = 138413058;
        v34 = v20;
        v35 = 1024;
        *v36 = 3;
        *&v36[4] = 2048;
        *&v36[6] = retry;
        *&v36[14] = 2112;
        *&v36[16] = bundleIdentifier2;
        _os_log_impl(&dword_231B25000, v19, OS_LOG_TYPE_DEFAULT, "### %@ Retries exhausted (limit %u). Abandoning journal update with serialNumber: %lld for bundle: %@", buf, 0x26u);
      }
    }

    completionCopy[2](completionCopy, 0);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void __109__CSAppEntityUpdater__donateJournalUpdateWithRecursiveRetry_donation_deletion_ledger_cancelBlock_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!a2)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v14 = SKGLogInit();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(a1 + 32);
        v16 = objc_opt_class();
        v17 = *(a1 + 80);
        v18 = [*(a1 + 40) bundleIdentifier];
        v20 = 138412802;
        v21 = v16;
        v22 = 2048;
        v23 = v17;
        v24 = 2112;
        v25 = v18;
        _os_log_impl(&dword_231B25000, v14, OS_LOG_TYPE_DEFAULT, "### %@ Successfully donated journal update with serialNumber: %lld for bundle: %@", &v20, 0x20u);
      }
    }

    [*(a1 + 40) completeJournalUpdate];
    goto LABEL_16;
  }

  v6 = [*(a1 + 32) _skipRetryForErrorCode:a2];
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v7 = SKGLogInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      if (v6)
      {
        v10 = @"Skipping";
      }

      else
      {
        v10 = @"Proceeding to";
      }

      v11 = _errorDescription(a2, v5);
      v12 = *(a1 + 80);
      v13 = [*(a1 + 40) bundleIdentifier];
      v20 = 138413314;
      v21 = v9;
      v22 = 2112;
      v23 = v10;
      v24 = 2112;
      v25 = v11;
      v26 = 2048;
      v27 = v12;
      v28 = 2112;
      v29 = v13;
      _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_DEFAULT, "### %@ %@ retry loop after error (%@) for journal update with serialNumber: %lld bundle: %@", &v20, 0x34u);
    }
  }

  if (v6)
  {
LABEL_16:
    (*(*(a1 + 64) + 16))();
    goto LABEL_17;
  }

  [*(a1 + 32) _donateJournalUpdateWithRecursiveRetry:*(a1 + 80) donation:*(a1 + 48) deletion:*(a1 + 56) ledger:*(a1 + 40) cancelBlock:*(a1 + 72) completion:*(a1 + 64)];
LABEL_17:

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)_handleJournalUpdateWithDonation:(id)donation orDeletion:(id)deletion cancelBlock:(id)block completion:(id)completion
{
  v45 = *MEMORY[0x277D85DE8];
  donationCopy = donation;
  deletionCopy = deletion;
  blockCopy = block;
  completionCopy = completion;
  if (donationCopy)
  {
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalMap](donationCopy)];
    totalJournalSize = [(CSEventListenerManager *)donationCopy totalJournalSize];
    indexTypeName = [(CSEventListenerDonation *)donationCopy indexTypeName];
  }

  else
  {
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:-[CSEventListenerManager journalMap](deletionCopy)];
    totalJournalSize = [(CSEventListenerManager *)deletionCopy totalJournalSize];
    indexTypeName = [(CSEventListenerDonation *)deletionCopy indexTypeName];
  }

  v17 = indexTypeName;
  v18 = [(LNSpotlightCascadeTranslator *)self->_translator isAllowedClientBundleIdentifier:v14];
  CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
  if (v18)
  {
    if (CurrentLoggingLevel >= 4)
    {
      v20 = SKGLogInit();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        *buf = 138413314;
        v22 = @"donation";
        v36 = v21;
        v37 = 2112;
        if (!donationCopy)
        {
          v22 = @"deletion";
        }

        v38 = v22;
        v39 = 2048;
        v40 = totalJournalSize;
        v41 = 2112;
        v42 = v14;
        v43 = 2080;
        v44 = v17;
        _os_log_impl(&dword_231B25000, v20, OS_LOG_TYPE_DEFAULT, "### %@ handling %@ for journal update with serialNumber: %lld from bundle: %@ indexType: %s", buf, 0x34u);
      }
    }

    v23 = [CSAppEntityCascadeLedger alloc];
    ledgerDirectory = self->_ledgerDirectory;
    v34 = 0;
    v25 = [(CSAppEntityCascadeLedger *)v23 initWithDirectory:ledgerDirectory bundleIdentifier:v14 error:&v34];
    v26 = v34;
    if (v25)
    {
      [(CSAppEntityCascadeLedger *)v25 resetJournalUpdateAttempts];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __89__CSAppEntityUpdater__handleJournalUpdateWithDonation_orDeletion_cancelBlock_completion___block_invoke;
      v31[3] = &unk_27893C820;
      v32 = v25;
      v33 = completionCopy;
      [(CSAppEntityUpdater *)self _donateJournalUpdateWithRecursiveRetry:totalJournalSize donation:donationCopy deletion:deletionCopy ledger:v32 cancelBlock:blockCopy completion:v31];
    }

    else
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v27 = SKGLogInit();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = objc_opt_class();
          *buf = 138412802;
          v36 = v28;
          v37 = 2112;
          v38 = v14;
          v39 = 2112;
          v40 = v26;
          _os_log_impl(&dword_231B25000, v27, OS_LOG_TYPE_DEFAULT, "### %@ Failed to load ledger for bundle: %@ error: %@", buf, 0x20u);
        }
      }

      (*(completionCopy + 2))(completionCopy, v26);
    }

LABEL_22:
    goto LABEL_23;
  }

  if (CurrentLoggingLevel >= 4)
  {
    v26 = SKGLogInit();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v36 = objc_opt_class();
      v37 = 2112;
      v38 = v14;
      _os_log_impl(&dword_231B25000, v26, OS_LOG_TYPE_DEFAULT, "### %@ Cascade donation from bundle is disabled: %@", buf, 0x16u);
    }

    goto LABEL_22;
  }

LABEL_23:

  v29 = *MEMORY[0x277D85DE8];
  return v18;
}

void __89__CSAppEntityUpdater__handleJournalUpdateWithDonation_orDeletion_cancelBlock_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) releaseLock];
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"CSAppEntityUpdaterErrorDomain" code:a2 userInfo:0];
    (*(v4 + 16))(v4, v6);
  }

  else
  {
    v5 = *(v4 + 16);

    v5(v4, 0);
  }
}

- (BOOL)handleDonation:(id)donation turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block
{
  donationCopy = donation;
  handlerCopy = handler;
  blockCopy = block;
  if ([objc_opt_class() isCascadeDonationEnabled])
  {
    v12 = SKGLogEventInit();
    v13 = os_signpost_id_generate(v12);

    v14 = SKGLogEventInit();
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_231B25000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CSAppEntityUpdaterHandleDonation", "", buf, 2u);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__CSAppEntityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke;
    v18[3] = &unk_27893C848;
    v20 = v13;
    v19 = handlerCopy;
    v16 = [(CSAppEntityUpdater *)self _handleJournalUpdateWithDonation:donationCopy orDeletion:0 cancelBlock:blockCopy completion:v18];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
    v16 = 1;
  }

  return v16;
}

void __80__CSAppEntityUpdater_handleDonation_turboEnabled_completionHandler_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SKGLogEventInit();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v5, OS_SIGNPOST_INTERVAL_END, v6, "CSAppEntityUpdaterHandleDonation", "", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)handleDeletion:(id)deletion turboEnabled:(BOOL)enabled completionHandler:(id)handler cancelBlock:(id)block
{
  deletionCopy = deletion;
  handlerCopy = handler;
  blockCopy = block;
  if ([objc_opt_class() isCascadeDonationEnabled])
  {
    v12 = SKGLogEventInit();
    v13 = os_signpost_id_generate(v12);

    v14 = SKGLogEventInit();
    v15 = v14;
    if (v13 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_231B25000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v13, "CSAppEntityUpdaterHandleDeletion", "", buf, 2u);
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __80__CSAppEntityUpdater_handleDeletion_turboEnabled_completionHandler_cancelBlock___block_invoke;
    v18[3] = &unk_27893C848;
    v20 = v13;
    v19 = handlerCopy;
    v16 = [(CSAppEntityUpdater *)self _handleJournalUpdateWithDonation:0 orDeletion:deletionCopy cancelBlock:blockCopy completion:v18];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
    v16 = 1;
  }

  return v16;
}

void __80__CSAppEntityUpdater_handleDeletion_turboEnabled_completionHandler_cancelBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SKGLogEventInit();
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_231B25000, v5, OS_SIGNPOST_INTERVAL_END, v6, "CSAppEntityUpdaterHandleDeletion", "", v7, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_recursivelyVerifyAllBundles:(id)bundles withIndex:(unint64_t)index cancelBlock:(id)block completion:(id)completion
{
  v51 = *MEMORY[0x277D85DE8];
  bundlesCopy = bundles;
  blockCopy = block;
  completionCopy = completion;
  if ([bundlesCopy count] > index)
  {
    if (blockCopy[2](blockCopy))
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v13 = SKGLogInit();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v48 = objc_opt_class();
          v49 = 2048;
          *v50 = index + 1;
          *&v50[8] = 2048;
          *&v50[10] = [bundlesCopy count];
          _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEFAULT, "### %@ Asked to cancel verification at bundle %ld / %ld", buf, 0x20u);
        }
      }

      completionCopy[2](completionCopy, 3);
      goto LABEL_39;
    }

    v15 = [bundlesCopy objectAtIndex:index];
    v16 = [CSAppEntityCascadeLedger alloc];
    ledgerDirectory = self->_ledgerDirectory;
    v46 = 0;
    v18 = [(CSAppEntityCascadeLedger *)v16 initWithDirectory:ledgerDirectory bundleIdentifier:v15 error:&v46];
    v19 = v46;
    if (v18)
    {
      if ([(CSAppEntityCascadeLedger *)v18 isInitialFullDonationRequired]|| [(CSAppEntityCascadeLedger *)v18 isRecoveryFullDonationRequired])
      {
        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v20 = SKGLogInit();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = objc_opt_class();
            *buf = 138412546;
            v48 = v21;
            v49 = 2112;
            *v50 = v18;
            _os_log_impl(&dword_231B25000, v20, OS_LOG_TYPE_DEFAULT, "### %@ Ledger indicates full donation is required: %@", buf, 0x16u);
          }
        }

        if ([(CSAppEntityCascadeLedger *)v18 fullSetDonationAttempts]< 6)
        {
          v28 = 0;
LABEL_35:
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __84__CSAppEntityUpdater__recursivelyVerifyAllBundles_withIndex_cancelBlock_completion___block_invoke;
          aBlock[3] = &unk_27893C870;
          v31 = v18;
          v40 = v31;
          selfCopy = self;
          v42 = bundlesCopy;
          indexCopy = index;
          v43 = blockCopy;
          v44 = completionCopy;
          v32 = _Block_copy(aBlock);
          v33 = v32;
          if (v28)
          {
            (*(v32 + 2))(v32);
          }

          else
          {
            v36[0] = MEMORY[0x277D85DD0];
            v36[1] = 3221225472;
            v36[2] = __84__CSAppEntityUpdater__recursivelyVerifyAllBundles_withIndex_cancelBlock_completion___block_invoke_2;
            v36[3] = &unk_27893C898;
            v36[4] = self;
            v37 = v15;
            v38 = v33;
            [(CSAppEntityUpdater *)self _donateToCascadeWithReason:2 ledger:v31 donation:0 deletion:0 completion:v36];
          }

          goto LABEL_39;
        }

        if (SKGLogGetCurrentLoggingLevel() >= 4)
        {
          v22 = SKGLogInit();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = objc_opt_class();
            *buf = 138412802;
            v48 = v23;
            v49 = 1024;
            *v50 = 5;
            *&v50[4] = 2112;
            *&v50[6] = v15;
            v24 = "### %@ Full donation retries exhausted (limit %u). Skipping nightly verification for bundle: %@";
            v25 = v22;
            v26 = 28;
LABEL_28:
            _os_log_impl(&dword_231B25000, v25, OS_LOG_TYPE_DEFAULT, v24, buf, v26);
            goto LABEL_33;
          }

          goto LABEL_33;
        }
      }

      else if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v22 = SKGLogInit();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v35 = objc_opt_class();
          bundleIdentifier = [(CSAppEntityCascadeLedger *)v18 bundleIdentifier];
          *buf = 138412546;
          v48 = v35;
          v49 = 2112;
          *v50 = bundleIdentifier;
          v30 = bundleIdentifier;
          _os_log_impl(&dword_231B25000, v22, OS_LOG_TYPE_DEFAULT, "### %@ No action is required for bundle: %@", buf, 0x16u);
        }

        goto LABEL_33;
      }
    }

    else if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v22 = SKGLogInit();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v27 = objc_opt_class();
        *buf = 138412802;
        v48 = v27;
        v49 = 2112;
        *v50 = v15;
        *&v50[8] = 2112;
        *&v50[10] = v19;
        v24 = "### %@ Failed to load ledger for bundle: %@ error: %@";
        v25 = v22;
        v26 = 32;
        goto LABEL_28;
      }

LABEL_33:
    }

    v28 = 1;
    goto LABEL_35;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v14 = SKGLogInit();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v48 = objc_opt_class();
      v49 = 2048;
      *v50 = [bundlesCopy count];
      _os_log_impl(&dword_231B25000, v14, OS_LOG_TYPE_DEFAULT, "### %@ Finished verifying %ld bundles", buf, 0x16u);
    }
  }

  completionCopy[2](completionCopy, 0);
LABEL_39:

  v34 = *MEMORY[0x277D85DE8];
}

uint64_t __84__CSAppEntityUpdater__recursivelyVerifyAllBundles_withIndex_cancelBlock_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) releaseLock];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v5 = *(a1 + 56);
  v6 = *(a1 + 72) + 1;

  return [v2 _recursivelyVerifyAllBundles:v3 withIndex:v6 cancelBlock:v5 completion:v4];
}

uint64_t __84__CSAppEntityUpdater__recursivelyVerifyAllBundles_withIndex_cancelBlock_completion___block_invoke_2(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a2 && SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v3 = SKGLogInit();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = a1[4];
      v5 = objc_opt_class();
      v6 = a1[5];
      v9 = 138412546;
      v10 = v5;
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_231B25000, v3, OS_LOG_TYPE_DEFAULT, "### %@ Nightly verification successfully recovered bundle: %@", &v9, 0x16u);
    }
  }

  result = (*(a1[6] + 16))();
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)_recursivelyDonateNowForAllBundles:(id)bundles withIndex:(unint64_t)index cancelBlock:(id)block completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  bundlesCopy = bundles;
  blockCopy = block;
  completionCopy = completion;
  if ([bundlesCopy count] <= index)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v14 = SKGLogInit();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v36 = objc_opt_class();
        v37 = 2048;
        v38 = [bundlesCopy count];
        _os_log_impl(&dword_231B25000, v14, OS_LOG_TYPE_DEFAULT, "### %@ Finished DonateNow for %ld bundles", buf, 0x16u);
      }
    }

    completionCopy[2](completionCopy, 0);
  }

  else if (blockCopy[2](blockCopy))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v13 = SKGLogInit();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v36 = objc_opt_class();
        v37 = 2048;
        v38 = index + 1;
        v39 = 2048;
        v40 = [bundlesCopy count];
        _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEFAULT, "### %@ Asked to cancel DonateNow at bundle %ld / %ld", buf, 0x20u);
      }
    }

    completionCopy[2](completionCopy, 3);
  }

  else
  {
    v15 = [bundlesCopy objectAtIndex:index];
    v16 = [CSAppEntityCascadeLedger alloc];
    ledgerDirectory = self->_ledgerDirectory;
    v34 = 0;
    v18 = [(CSAppEntityCascadeLedger *)v16 initWithDirectory:ledgerDirectory bundleIdentifier:v15 error:&v34];
    v19 = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __90__CSAppEntityUpdater__recursivelyDonateNowForAllBundles_withIndex_cancelBlock_completion___block_invoke;
    aBlock[3] = &unk_27893C870;
    v20 = v18;
    v28 = v20;
    selfCopy = self;
    v30 = bundlesCopy;
    indexCopy = index;
    v31 = blockCopy;
    v32 = completionCopy;
    v21 = _Block_copy(aBlock);
    if (v20)
    {
      [(CSAppEntityCascadeLedger *)v20 incrementVersion];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __90__CSAppEntityUpdater__recursivelyDonateNowForAllBundles_withIndex_cancelBlock_completion___block_invoke_221;
      v25[3] = &unk_27893C8C0;
      v26 = v21;
      [(CSAppEntityUpdater *)self _donateToCascadeWithReason:3 ledger:v20 donation:0 deletion:0 completion:v25];
    }

    else
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v22 = SKGLogInit();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = objc_opt_class();
          *buf = 138412802;
          v36 = v23;
          v37 = 2112;
          v38 = v15;
          v39 = 2112;
          v40 = v19;
          _os_log_impl(&dword_231B25000, v22, OS_LOG_TYPE_DEFAULT, "### %@ Failed to load ledger for bundle: %@ error: %@", buf, 0x20u);
        }
      }

      v21[2](v21);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

uint64_t __90__CSAppEntityUpdater__recursivelyDonateNowForAllBundles_withIndex_cancelBlock_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) releaseLock];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = *(a1 + 64);
  v5 = *(a1 + 56);
  v6 = *(a1 + 72) + 1;

  return [v2 _recursivelyDonateNowForAllBundles:v3 withIndex:v6 cancelBlock:v5 completion:v4];
}

- (void)_recursivelyCleanupDeletedSets:(id)sets withIndex:(unint64_t)index cancelBlock:(id)block completion:(id)completion
{
  v33 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  blockCopy = block;
  completionCopy = completion;
  if ([setsCopy count] <= index)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v14 = SKGLogInit();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v28 = objc_opt_class();
        v29 = 2048;
        v30 = [setsCopy count];
        _os_log_impl(&dword_231B25000, v14, OS_LOG_TYPE_DEFAULT, "### %@ Finished cleaning up %ld sets", buf, 0x16u);
      }
    }

    completionCopy[2](completionCopy, 0);
  }

  else if (blockCopy[2](blockCopy))
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v13 = SKGLogInit();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v28 = objc_opt_class();
        v29 = 2048;
        v30 = index + 1;
        v31 = 2048;
        v32 = [setsCopy count];
        _os_log_impl(&dword_231B25000, v13, OS_LOG_TYPE_DEFAULT, "### %@ Asked to cancel verification at set %ld / %ld", buf, 0x20u);
      }
    }

    completionCopy[2](completionCopy, 3);
  }

  else
  {
    v15 = [setsCopy objectAtIndex:index];
    v16 = MEMORY[0x277CF9508];
    itemType = [v15 itemType];
    descriptors = [v15 descriptors];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __86__CSAppEntityUpdater__recursivelyCleanupDeletedSets_withIndex_cancelBlock_completion___block_invoke;
    v21[3] = &unk_27893C8E8;
    v21[4] = self;
    v22 = v15;
    v23 = setsCopy;
    indexCopy = index;
    v24 = blockCopy;
    v25 = completionCopy;
    v19 = v15;
    [v16 deleteSetWithItemType:itemType descriptors:descriptors completion:v21];
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __86__CSAppEntityUpdater__recursivelyCleanupDeletedSets_withIndex_cancelBlock_completion___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (SKGLogGetCurrentLoggingLevel() >= 4)
  {
    v4 = SKGLogInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = objc_opt_class();
      v7 = *(a1 + 40);
      v8 = @"Success";
      *v10 = 138412802;
      if (v3)
      {
        v8 = v3;
      }

      *&v10[4] = v6;
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_DEFAULT, "### %@ Delete for Cascade set: %@ result: %@", v10, 0x20u);
    }
  }

  [*(a1 + 32) _recursivelyCleanupDeletedSets:*(a1 + 48) withIndex:*(a1 + 72) + 1 cancelBlock:*(a1 + 56) completion:{*(a1 + 64), *v10}];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)runNightlyVerification:(id)verification completionHandler:(id)handler
{
  v36 = *MEMORY[0x277D85DE8];
  verificationCopy = verification;
  handlerCopy = handler;
  if ([objc_opt_class() isCascadeDonationEnabled])
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v8 = SKGLogInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = objc_opt_class();
        _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_DEFAULT, "### %@ Starting nightly verification", buf, 0xCu);
      }
    }

    _allBundlesApplicableToCascade = [(CSAppEntityUpdater *)self _allBundlesApplicableToCascade];
    v10 = _allBundlesApplicableToCascade;
    if (_allBundlesApplicableToCascade)
    {
      allObjects = [_allBundlesApplicableToCascade allObjects];
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v12 = SKGLogInit();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = objc_opt_class();
          *buf = 138412546;
          *&buf[4] = v13;
          *&buf[12] = 2112;
          *&buf[14] = allObjects;
          _os_log_impl(&dword_231B25000, v12, OS_LOG_TYPE_DEFAULT, "### %@ Verifying all applicable bundles: %@", buf, 0x16u);
        }
      }

      v14 = dispatch_group_create();
      dispatch_group_enter(v14);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v35 = 0;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __63__CSAppEntityUpdater_runNightlyVerification_completionHandler___block_invoke;
      v31[3] = &unk_27893C910;
      v33 = buf;
      v15 = v14;
      v32 = v15;
      [(CSAppEntityUpdater *)self _recursivelyVerifyAllBundles:allObjects withIndex:0 cancelBlock:verificationCopy completion:v31];
      v16 = dispatch_group_create();
      dispatch_group_enter(v16);
      queue = self->_queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __63__CSAppEntityUpdater_runNightlyVerification_completionHandler___block_invoke_2;
      block[3] = &unk_27893C938;
      v30 = buf;
      block[4] = self;
      v27 = v16;
      v18 = v10;
      v28 = v18;
      v29 = verificationCopy;
      v19 = v16;
      dispatch_group_notify(v15, queue, block);
      v20 = self->_queue;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __63__CSAppEntityUpdater_runNightlyVerification_completionHandler___block_invoke_2_226;
      v22[3] = &unk_27893C960;
      v25 = buf;
      v22[4] = self;
      v24 = handlerCopy;
      v23 = v18;
      dispatch_group_notify(v19, v20, v22);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __63__CSAppEntityUpdater_runNightlyVerification_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 32));
}

void __63__CSAppEntityUpdater_runNightlyVerification_completionHandler___block_invoke_2(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*(*(*(a1 + 64) + 8) + 24) == 1)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v2 = SKGLogInit();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = *(a1 + 32);
        *buf = 138412290;
        v18 = objc_opt_class();
        _os_log_impl(&dword_231B25000, v2, OS_LOG_TYPE_DEFAULT, "### %@ Asked to cancel - skipping deleted bundle cleanup", buf, 0xCu);
      }
    }

    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v4 = [*(a1 + 32) _allExistentSetsNotContainedInSpotlightBundles:*(a1 + 48)];
    v5 = [v4 count];
    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if (v5)
    {
      if (CurrentLoggingLevel >= 4)
      {
        v7 = SKGLogInit();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(a1 + 32);
          *buf = 138412802;
          v18 = objc_opt_class();
          v19 = 2048;
          v20 = [v4 count];
          v21 = 2112;
          v22 = v4;
          _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_DEFAULT, "### %@ Deleting %ld Cascade sets with bundle identifiers not contained in spotlight: %@", buf, 0x20u);
        }
      }

      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __63__CSAppEntityUpdater_runNightlyVerification_completionHandler___block_invoke_225;
      v14[3] = &unk_27893C910;
      v9 = *(a1 + 56);
      v16 = *(a1 + 64);
      v10 = *(a1 + 32);
      v15 = *(a1 + 40);
      [v10 _recursivelyCleanupDeletedSets:v4 withIndex:0 cancelBlock:v9 completion:v14];
    }

    else
    {
      if (CurrentLoggingLevel >= 4)
      {
        v11 = SKGLogInit();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(a1 + 32);
          *buf = 138412290;
          v18 = objc_opt_class();
          _os_log_impl(&dword_231B25000, v11, OS_LOG_TYPE_DEFAULT, "### %@ No Cascade sets to delete", buf, 0xCu);
        }
      }

      dispatch_group_leave(*(a1 + 40));
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __63__CSAppEntityUpdater_runNightlyVerification_completionHandler___block_invoke_225(uint64_t a1, uint64_t a2)
{
  if (a2 == 3)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __63__CSAppEntityUpdater_runNightlyVerification_completionHandler___block_invoke_2_226(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1[7] + 8) + 24);
  CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
  if (v2 == 1)
  {
    if (CurrentLoggingLevel >= 4)
    {
      v4 = SKGLogInit();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = a1[4];
        v14 = 138412290;
        v15 = objc_opt_class();
        v6 = "### %@ Asked to cancel - skipping ledger directory cleanup";
LABEL_12:
        _os_log_impl(&dword_231B25000, v4, OS_LOG_TYPE_DEFAULT, v6, &v14, 0xCu);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else
  {
    if (CurrentLoggingLevel >= 4)
    {
      v7 = SKGLogInit();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = a1[4];
        v14 = 138412290;
        v15 = objc_opt_class();
        _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_DEFAULT, "### %@ Cleaning up ledger directory", &v14, 0xCu);
      }
    }

    [CSAppEntityCascadeLedger deleteLedgerFilesInDirectory:*(a1[4] + 24) notContainedInActiveBundles:a1[5]];
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v4 = SKGLogInit();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v9 = a1[4];
        v10 = objc_opt_class();
        v14 = 138412290;
        v15 = v10;
        v6 = "### %@ Finished nightly verification";
        goto LABEL_12;
      }

LABEL_13:
    }
  }

  v11 = *(*(a1[7] + 8) + 24);
  result = (*(a1[6] + 16))();
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)handleDonateNowNotification:(id)notification completionHandler:(id)handler
{
  v26 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  handlerCopy = handler;
  if ([objc_opt_class() isCascadeDonationEnabled])
  {
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v8 = SKGLogInit();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = objc_opt_class();
        _os_log_impl(&dword_231B25000, v8, OS_LOG_TYPE_DEFAULT, "### %@ handling DonateNow notification", buf, 0xCu);
      }
    }

    _allBundlesApplicableToCascade = [(CSAppEntityUpdater *)self _allBundlesApplicableToCascade];
    allObjects = [_allBundlesApplicableToCascade allObjects];

    if (allObjects)
    {
      if (SKGLogGetCurrentLoggingLevel() >= 4)
      {
        v11 = SKGLogInit();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = objc_opt_class();
          *buf = 138412546;
          *&buf[4] = v12;
          *&buf[12] = 2112;
          *&buf[14] = allObjects;
          _os_log_impl(&dword_231B25000, v11, OS_LOG_TYPE_DEFAULT, "### %@ Performing DonateNow for all allowed bundles: %@", buf, 0x16u);
        }
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v25 = 0;
      v13 = dispatch_group_create();
      dispatch_group_enter(v13);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __68__CSAppEntityUpdater_handleDonateNowNotification_completionHandler___block_invoke;
      v20[3] = &unk_27893C988;
      v20[4] = self;
      v23 = buf;
      v21 = allObjects;
      v14 = v13;
      v22 = v14;
      [(CSAppEntityUpdater *)self _recursivelyDonateNowForAllBundles:v21 withIndex:0 cancelBlock:notificationCopy completion:v20];
      queue = self->_queue;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __68__CSAppEntityUpdater_handleDonateNowNotification_completionHandler___block_invoke_227;
      v17[3] = &unk_27893C9B0;
      v18 = handlerCopy;
      v19 = buf;
      dispatch_group_notify(v14, queue, v17);

      _Block_object_dispose(buf, 8);
    }

    else
    {
      (*(handlerCopy + 2))(handlerCopy, 0);
    }
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __68__CSAppEntityUpdater_handleDonateNowNotification_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
  if (a2 == 3)
  {
    if (CurrentLoggingLevel >= 4)
    {
      v5 = SKGLogInit();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 32);
        v12 = 138412290;
        v13 = objc_opt_class();
        _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_DEFAULT, "### %@ Exited donate now loop after being asked to cancel", &v12, 0xCu);
      }
    }

    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  else if (CurrentLoggingLevel >= 4)
  {
    v7 = SKGLogInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = objc_opt_class();
      v10 = [*(a1 + 40) count];
      v12 = 138412546;
      v13 = v9;
      v14 = 2048;
      v15 = v10;
      _os_log_impl(&dword_231B25000, v7, OS_LOG_TYPE_DEFAULT, "### %@ Finished DonateNow for all %ld bundles", &v12, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 48));
  v11 = *MEMORY[0x277D85DE8];
}

void __73__CSAppEntityUpdater__handleFullCascadeDonation_withReason_ledger_error___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_5();
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  objc_opt_class();
  v3 = *(*(*v0 + 8) + 40);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_countAppEntitiesFromBundle:(uint8_t *)buf .cold.1(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412802;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  *(buf + 11) = 1024;
  *(buf + 6) = 240;
  _os_log_error_impl(&dword_231B25000, log, OS_LOG_TYPE_ERROR, "### %@ Exceeded timeout for AppEntity count Spotlight query for bundle: %@ (%u seconds)", buf, 0x1Cu);
}

void __50__CSAppEntityUpdater__countAppEntitiesFromBundle___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  v1 = v0;
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 32);
  objc_opt_class();
  v9 = *(v1 + 40);
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_allBundlesApplicableToCascade
{
  *buf = 138412546;
  *(buf + 4) = self;
  *(buf + 6) = 1024;
  *(buf + 14) = 240;
  _os_log_error_impl(&dword_231B25000, log, OS_LOG_TYPE_ERROR, "### %@ Exceeded timeout for applicable bundle identifiers Spotlight query (%u seconds)", buf, 0x12u);
}

- (void)_allExistentSetsNotContainedInSpotlightBundles:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v6 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

@end