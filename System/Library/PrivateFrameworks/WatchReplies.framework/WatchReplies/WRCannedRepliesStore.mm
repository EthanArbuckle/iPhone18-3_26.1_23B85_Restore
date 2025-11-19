@interface WRCannedRepliesStore
+ (BOOL)supportsEnhancedEditing;
+ (id)supportedLanguages;
- (BOOL)includeSmartReplies;
- (BOOL)usesFormalReplies;
- (WRCannedRepliesStore)initWithCategory:(unint64_t)a3;
- (id)cannedReplies;
- (id)domainAccessor;
- (id)keyForDefaultReply:(id)a3;
- (id)localizedDefaultReply:(id)a3;
- (id)localizedFormalDefaultReply:(id)a3;
- (id)migrateRepliesIfNeeded:(id)a3;
- (id)npsManager;
- (id)repliesForLanguage:(id)a3;
- (void)dealloc;
- (void)handleStoreChange;
- (void)invalidateCachesIfNeededForLanguage:(id)a3;
- (void)loadCannedRepliesIfNeeded;
- (void)localizeDefaultRepliesIfNeeded;
- (void)saveReplies:(id)a3;
- (void)setCannedReplies:(id)a3;
@end

@implementation WRCannedRepliesStore

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = WRCannedRepliesStore;
  [(WRCannedRepliesStore *)&v4 dealloc];
}

+ (BOOL)supportsEnhancedEditing
{
  v2 = [MEMORY[0x277D2BCF8] sharedInstance];
  v3 = [v2 getActivePairedDevice];

  v4 = *MEMORY[0x277CF3440];
  LOBYTE(v2) = BPSDeviceHasCapabilityForString();

  return v2;
}

- (WRCannedRepliesStore)initWithCategory:(unint64_t)a3
{
  v15.receiver = self;
  v15.super_class = WRCannedRepliesStore;
  v4 = [(WRCannedRepliesStore *)&v15 init];
  v5 = v4;
  if (v4)
  {
    v4->_category = a3;
    v6 = [WRReplyStoreInfo infoForCategory:a3];
    info = v5->_info;
    v5->_info = v6;

    v8 = os_log_create("WatchReplies", "CannedReplies");
    log = v5->_log;
    v5->_log = v8;

    v10 = objc_alloc_init(MEMORY[0x277CCAC60]);
    lock = v5->_lock;
    v5->_lock = v10;

    v12 = [(WRReplyStoreInfo *)v5->_info defaultsChangedNotificationName];
    if (v12)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v5, _WRCannedRepliesStore_handleStoreChange, v12, v5, CFNotificationSuspensionBehaviorDeliverImmediately);
    }
  }

  return v5;
}

- (id)domainAccessor
{
  domainAccessor = self->_domainAccessor;
  if (!domainAccessor)
  {
    v4 = [(WRReplyStoreInfo *)self->_info defaultsDomain];
    if (v4)
    {
      v5 = [objc_alloc(MEMORY[0x277D2BA58]) initWithDomain:v4];
      v6 = self->_domainAccessor;
      self->_domainAccessor = v5;

      v7 = [(NPSDomainAccessor *)self->_domainAccessor synchronize];
    }

    domainAccessor = self->_domainAccessor;
  }

  return domainAccessor;
}

- (id)npsManager
{
  npsManager = self->_npsManager;
  if (!npsManager)
  {
    v4 = objc_alloc_init(MEMORY[0x277D2BA60]);
    v5 = self->_npsManager;
    self->_npsManager = v4;

    npsManager = self->_npsManager;
  }

  return npsManager;
}

- (id)repliesForLanguage:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(WRCannedRepliesStore *)self invalidateCachesIfNeededForLanguage:v4];
  v23 = v4;
  [(NSRecursiveLock *)self->_lock lock];
  if (!self->_cachedLocalizedReplies)
  {
    [(WRCannedRepliesStore *)self loadCannedRepliesIfNeeded];
    v7 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{-[NSArray count](self->_cannedReplies, "count")}];
    v8 = [(WRCannedRepliesStore *)self usesFormalReplies];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = self->_cannedReplies;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (!v10)
    {
      goto LABEL_20;
    }

    v11 = *v25;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [v13 defaultReplyKey];

        if (v14)
        {
          v15 = [(WRCannedRepliesStore *)self localizedDefaultReply:v13];
          [v7 addObject:v15];

          if (!v8)
          {
            continue;
          }

          v16 = [(WRCannedRepliesStore *)self localizedFormalDefaultReply:v13];
          [v7 addObject:v16];
        }

        else
        {
          v17 = [v13 defaultReplyText];
          v18 = [v17 isEqualToString:@"SMART_REPLIES_MARKER"];

          if (v18)
          {
            [v13 defaultReplyText];
          }

          else
          {
            [v13 text];
          }
          v16 = ;
          [v7 addObject:v16];
        }
      }

      v10 = [(NSArray *)v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v10)
      {
LABEL_20:

        v19 = [v7 array];
        cachedLocalizedReplies = self->_cachedLocalizedReplies;
        self->_cachedLocalizedReplies = v19;

        v6 = self->_cachedLocalizedReplies;
        goto LABEL_21;
      }
    }
  }

  v5 = self->_log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(WRCannedRepliesStore *)buf repliesForLanguage:v5];
  }

  v6 = self->_cachedLocalizedReplies;
LABEL_21:
  [(NSRecursiveLock *)self->_lock unlock];

  v21 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)keyForDefaultReply:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(WRCannedRepliesStore *)self usesFormalReplies];
  [(NSRecursiveLock *)self->_lock lock];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_cannedReplies;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = *v21;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        v11 = [v10 defaultReplyKey];

        if (v11)
        {
          v12 = [(WRCannedRepliesStore *)self localizedDefaultReply:v10];
          v13 = [v12 isEqualToString:v4];

          if (v13)
          {
            v16 = [v10 defaultReplyKey];
            goto LABEL_15;
          }

          if (v5)
          {
            v14 = [(WRCannedRepliesStore *)self localizedFormalDefaultReply:v10];
            v15 = [v14 isEqualToString:v4];

            if (v15)
            {
              v17 = [v10 defaultReplyKey];
              v16 = [v17 stringByAppendingString:@"_FORMAL"];

              goto LABEL_15;
            }
          }
        }
      }

      v7 = [(NSArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_15:

  [(NSRecursiveLock *)self->_lock unlock];
  v18 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)supportedLanguages
{
  v2 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.WatchReplies"];
  v3 = [v2 localizations];

  return v3;
}

- (id)cannedReplies
{
  [(WRCannedRepliesStore *)self invalidateCachesIfNeededForLanguage:0];
  [(WRCannedRepliesStore *)self loadCannedRepliesIfNeeded];
  [(WRCannedRepliesStore *)self localizeDefaultRepliesIfNeeded];
  cannedReplies = self->_cannedReplies;

  return cannedReplies;
}

- (void)setCannedReplies:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [(NSRecursiveLock *)self->_lock lock];
  objc_storeStrong(&self->_cannedReplies, a3);
  v23 = self;
  [(NSRecursiveLock *)self->_lock unlock];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v5, "count")}];
  v24 = +[WRCannedRepliesStore supportsEnhancedEditing];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * v11);
        v13 = [v12 defaultReplyText];
        v14 = [v13 isEqualToString:@"SMART_REPLIES_MARKER"];

        if (v14)
        {
          v15 = [v12 defaultReplyText];
LABEL_10:
          v18 = v15;
          goto LABEL_11;
        }

        v16 = [v12 text];
        v17 = [v16 length];

        if (v17)
        {
          v15 = [v12 text];
          goto LABEL_10;
        }

        v19 = [v12 defaultReplyKey];

        if (v19)
        {
          v18 = [v12 defaultReplyKey];
          if (([(__CFString *)v18 hasSuffix:@"_FORMAL"]& 1) == 0)
          {
            if (!v24)
            {

              v18 = &stru_288224B90;
            }

LABEL_11:
            [v6 addObject:v18];
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v20 = [v7 countByEnumeratingWithState:&v25 objects:v31 count:16];
      v9 = v20;
    }

    while (v20);
  }

  log = v23->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = v6;
    _os_log_impl(&dword_272AC2000, log, OS_LOG_TYPE_DEFAULT, "saving canned replies: %{public}@", buf, 0xCu);
  }

  [(WRCannedRepliesStore *)v23 saveReplies:v6];

  v22 = *MEMORY[0x277D85DE8];
}

- (BOOL)includeSmartReplies
{
  v6 = 0;
  v3 = [(WRCannedRepliesStore *)self domainAccessor];
  v4 = [v3 BOOLForKey:@"IncludeSmartRepliesKey" keyExistsAndHasValidFormat:&v6];

  if ((v6 & 1) == 0)
  {
    return [(WRReplyStoreInfo *)self->_info supportsSmartReplies];
  }

  return v4;
}

- (BOOL)usesFormalReplies
{
  v2 = WRLocalizedCategoryString(@"USES_FORMAL_REPLIES", self->_category, self->_cachedLanguage);
  v3 = [v2 BOOLValue];

  return v3;
}

- (id)localizedDefaultReply:(id)a3
{
  v4 = [a3 defaultReplyKey];
  v5 = WRLocalizedCategoryString(v4, self->_category, self->_cachedLanguage);

  return v5;
}

- (id)localizedFormalDefaultReply:(id)a3
{
  v4 = [a3 defaultReplyKey];
  v5 = [v4 stringByAppendingString:@"_FORMAL"];

  v6 = WRLocalizedCategoryString(v5, self->_category, self->_cachedLanguage);

  return v6;
}

- (void)loadCannedRepliesIfNeeded
{
  [(NSRecursiveLock *)self->_lock lock];
  if (!self->_cannedReplies)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v27 = 0;
    v3 = [(WRReplyStoreInfo *)self->_info defaultsKey];
    v4 = [(WRCannedRepliesStore *)self domainAccessor];

    if (!v4 || !v3)
    {
      goto LABEL_14;
    }

    v5 = [(WRCannedRepliesStore *)self domainAccessor];
    v6 = [(WRReplyStoreInfo *)self->_info defaultsKey];
    v7 = [v5 objectForKey:v6];

    v8 = [(WRCannedRepliesStore *)self migrateRepliesIfNeeded:v7];

    v9 = v8 ? [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}] : 0;
    v10 = +[WRCannedRepliesStore supportsEnhancedEditing];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __49__WRCannedRepliesStore_loadCannedRepliesIfNeeded__block_invoke;
    v20[3] = &unk_279E66AA8;
    v20[4] = self;
    v22 = &v24;
    v23 = v10;
    v11 = v9;
    v21 = v11;
    [v8 enumerateObjectsUsingBlock:v20];
    v12 = v21;
    v13 = v11;

    if (!v13)
    {
LABEL_14:
      v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[WRReplyStoreInfo defaultCount](self->_info, "defaultCount")}];
      for (i = 0; i < [(WRReplyStoreInfo *)self->_info defaultCount]; ++i)
      {
        v18 = objc_alloc_init(WRCannedReply);
        v19 = [@"DEFAULT_REPLY_" stringByAppendingFormat:@"%tu", i];
        [(WRCannedReply *)v18 setDefaultReplyKey:v19];

        [v13 addObject:v18];
      }
    }

    if ([objc_opt_class() supportsEnhancedEditing] && -[WRCannedRepliesStore supportsSmartReplies](self, "supportsSmartReplies") && (v25[3] & 1) == 0)
    {
      v14 = objc_alloc_init(WRCannedReply);
      [(WRCannedReply *)v14 setDefaultReplyText:@"SMART_REPLIES_MARKER"];
      [v13 insertObject:v14 atIndex:0];
    }

    v15 = [v13 copy];
    cannedReplies = self->_cannedReplies;
    self->_cannedReplies = v15;

    _Block_object_dispose(&v24, 8);
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

void __49__WRCannedRepliesStore_loadCannedRepliesIfNeeded__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = *(a1 + 32);
  if (![objc_opt_class() isTinker] || (objc_msgSend(*(*(a1 + 32) + 16), "hiddenTinkerReplyKeys"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:", v11), v6, (v7 & 1) == 0))
  {
    v8 = objc_alloc_init(WRCannedReply);
    if ([v11 isEqualToString:@"SMART_REPLIES_MARKER"])
    {
      v9 = *(*(a1 + 48) + 8);
      if (*(v9 + 24))
      {
LABEL_13:

        goto LABEL_14;
      }

      *(v9 + 24) = 1;
      [(WRCannedReply *)v8 setDefaultReplyText:v11];
    }

    else if ([v11 hasPrefix:@"DEFAULT_REPLY_"])
    {
      [(WRCannedReply *)v8 setDefaultReplyKey:v11];
    }

    else if ((*(a1 + 56) & 1) != 0 || ![v11 isEqualToString:&stru_288224B90])
    {
      [(WRCannedReply *)v8 setText:v11];
    }

    else
    {
      v10 = [@"DEFAULT_REPLY_" stringByAppendingFormat:@"%tu", a3];
      [(WRCannedReply *)v8 setDefaultReplyKey:v10];
    }

    [*(a1 + 40) addObject:v8];
    goto LABEL_13;
  }

LABEL_14:
}

- (void)localizeDefaultRepliesIfNeeded
{
  v17 = *MEMORY[0x277D85DE8];
  [(NSRecursiveLock *)self->_lock lock];
  if (!self->_didLocalizeDefaultReplies)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = self->_cannedReplies;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = *v13;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v12 + 1) + 8 * i);
          v8 = [v7 defaultReplyKey];

          if (v8)
          {
            v9 = [v7 defaultReplyKey];
            v10 = WRLocalizedCategoryString(v9, self->_category, self->_cachedLanguage);
            [v7 setDefaultReplyText:v10];
          }
        }

        v4 = [(NSArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v4);
    }

    self->_didLocalizeDefaultReplies = 1;
  }

  [(NSRecursiveLock *)self->_lock unlock];
  v11 = *MEMORY[0x277D85DE8];
}

- (void)invalidateCachesIfNeededForLanguage:(id)a3
{
  obj = a3;
  if (!obj)
  {
    obj = WRDeviceLanguage();
  }

  [(NSRecursiveLock *)self->_lock lock];
  if (([obj isEqualToString:self->_cachedLanguage] & 1) == 0)
  {
    objc_storeStrong(&self->_cachedLanguage, obj);
    cachedLocalizedReplies = self->_cachedLocalizedReplies;
    self->_cachedLocalizedReplies = 0;

    self->_didLocalizeDefaultReplies = 0;
  }

  [(NSRecursiveLock *)self->_lock unlock];
}

- (void)saveReplies:(id)a3
{
  v4 = a3;
  v5 = [(WRCannedRepliesStore *)self domainAccessor];

  if (v5)
  {
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_DEBUG))
    {
      [(WRCannedRepliesStore *)v4 saveReplies:?];
    }

    v7 = [(WRCannedRepliesStore *)self domainAccessor];
    v8 = [(WRReplyStoreInfo *)self->_info defaultsKey];
    [v7 setObject:v4 forKey:v8];

    v9 = [(WRCannedRepliesStore *)self domainAccessor];
    v10 = [v9 synchronize];

    v11 = MEMORY[0x277CBEB98];
    v12 = [(WRReplyStoreInfo *)self->_info defaultsKey];
    v13 = [v11 setWithObjects:{v12, @"WatchRepliesVersion", 0}];

    v14 = [(WRCannedRepliesStore *)self npsManager];
    v15 = [(WRReplyStoreInfo *)self->_info defaultsDomain];
    [v14 synchronizeNanoDomain:v15 keys:v13];

    v16 = [(WRReplyStoreInfo *)self->_info defaultsChangedNotificationName];
    if (v16)
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, v16, 0, 0, 1u);
    }
  }
}

- (id)migrateRepliesIfNeeded:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (self->_didMigrationCheck)
  {
    v6 = v4;
    goto LABEL_59;
  }

  v7 = [(WRCannedRepliesStore *)self domainAccessor];
  v8 = [v7 objectForKey:@"WatchRepliesVersion"];

  if (!v8)
  {
    v9 = [(WRCannedRepliesStore *)self domainAccessor];
    v8 = &unk_288225938;
    [v9 setObject:&unk_288225938 forKey:@"WatchRepliesVersion"];
  }

  v10 = [v8 unsignedIntegerValue];
  v11 = +[WRCannedRepliesStore supportsEnhancedEditing];
  v39 = self;
  if (!v10 || v11)
  {
    if (v10 == 0 && v11)
    {
      if (!v5)
      {
        v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      v18 = [v5 count];
      if (v18 >= [(WRReplyStoreInfo *)self->_info defaultCount])
      {
        v19 = v5;
      }

      else
      {
        v19 = [v5 mutableCopy];
        v20 = [v19 count];
        if (v20 < [(WRReplyStoreInfo *)self->_info defaultCount])
        {
          do
          {
            [v19 addObject:&stru_288224B90];
            v21 = [v19 count];
          }

          while (v21 < [(WRReplyStoreInfo *)self->_info defaultCount]);
        }
      }

      v22 = [v19 mutableCopy];
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __47__WRCannedRepliesStore_migrateRepliesIfNeeded___block_invoke;
      v44[3] = &unk_279E66AD0;
      v23 = v22;
      v45 = v23;
      [v19 enumerateObjectsUsingBlock:v44];
      if ([v23 count])
      {
        v24 = [(WRCannedRepliesStore *)self domainAccessor];
        [v24 setObject:&unk_288225950 forKey:@"WatchRepliesVersion"];

        [(WRCannedRepliesStore *)self saveReplies:v23];
      }

      v12 = v23;

      goto LABEL_34;
    }
  }

  else if ([v5 count])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[WRReplyStoreInfo defaultCount](self->_info, "defaultCount")}];
    if ([(WRReplyStoreInfo *)self->_info defaultCount])
    {
      v13 = 0;
      do
      {
        if (v13 >= [v5 count])
        {
          [v12 addObject:&stru_288224B90];
        }

        else
        {
          v14 = [v5 objectAtIndexedSubscript:v13];
          if (([(__CFString *)v14 isEqualToString:@"SMART_REPLIES_MARKER"]& 1) == 0)
          {
            if ([(__CFString *)v14 hasPrefix:@"DEFAULT_REPLY_"])
            {
              v15 = v12;
              v16 = &stru_288224B90;
            }

            else
            {
              v15 = v12;
              v16 = v14;
            }

            [v15 addObject:v16];
          }

          self = v39;
        }

        ++v13;
      }

      while (v13 < [(WRReplyStoreInfo *)self->_info defaultCount]);
    }

    if ([v12 count])
    {
      v17 = [(WRCannedRepliesStore *)self domainAccessor];
      [v17 setObject:&unk_288225938 forKey:@"WatchRepliesVersion"];

      [(WRCannedRepliesStore *)self saveReplies:v12];
    }

    goto LABEL_34;
  }

  v12 = v5;
LABEL_34:
  if (v10 <= 1 && self->_category == 1 && (-[WRCannedRepliesStore domainAccessor](self, "domainAccessor"), v25 = objc_claimAutoreleasedReturnValue(), [v25 setObject:&unk_288225968 forKey:@"WatchRepliesVersion"], v25, objc_msgSend(v12, "count")))
  {
    v38 = v8;
    v26 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v27 = v12;
    v28 = [v27 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v41;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v41 != v30)
          {
            objc_enumerationMutation(v27);
          }

          v32 = *(*(&v40 + 1) + 8 * i);
          if ([v32 isEqualToString:{@"SMART_REPLIES_MARKER", v38}] || !objc_msgSend(v32, "hasPrefix:", @"DEFAULT_REPLY_"))
          {
            [v26 addObject:v32];
          }

          else
          {
            v33 = objc_alloc_init(WRCannedReply);
            [(WRCannedReply *)v33 setDefaultReplyKey:v32];
            if ([(WRCannedRepliesStore *)self usesFormalReplies])
            {
              [(WRCannedRepliesStore *)self localizedFormalDefaultReply:v33];
            }

            else
            {
              [(WRCannedRepliesStore *)self localizedDefaultReply:v33];
            }
            v34 = ;
            if (([v34 isEqualToString:v32] & 1) == 0)
            {
              [v26 addObject:v32];
            }

            self = v39;
          }
        }

        v29 = [v27 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v29);
    }

    if ([v26 count])
    {
      v35 = [v26 count];
      if (v35 != [v27 count])
      {
        [(WRCannedRepliesStore *)self saveReplies:v26];
      }
    }

    v8 = v38;
  }

  else
  {
    v26 = v12;
  }

  self->_didMigrationCheck = 1;
  v6 = v26;

LABEL_59:
  v36 = *MEMORY[0x277D85DE8];

  return v6;
}

void __47__WRCannedRepliesStore_migrateRepliesIfNeeded___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  if (![a2 length])
  {
    v5 = [@"DEFAULT_REPLY_" stringByAppendingFormat:@"%tu", a3];
    [*(a1 + 32) setObject:v5 atIndexedSubscript:a3];
  }
}

- (void)handleStoreChange
{
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_272AC2000, log, OS_LOG_TYPE_DEFAULT, "canned replies did change", v11, 2u);
  }

  v4 = [(WRCannedRepliesStore *)self domainAccessor];
  v5 = [v4 synchronize];

  [(NSRecursiveLock *)self->_lock lock];
  cachedLanguage = self->_cachedLanguage;
  self->_cachedLanguage = 0;

  cachedLocalizedReplies = self->_cachedLocalizedReplies;
  self->_cachedLocalizedReplies = 0;

  cannedReplies = self->_cannedReplies;
  self->_cannedReplies = 0;

  self->_didMigrationCheck = 0;
  [(NSRecursiveLock *)self->_lock unlock];
  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = [(WRReplyStoreInfo *)self->_info defaultsChangedNotificationName];
  [v9 postNotificationName:v10 object:self];
}

- (void)repliesForLanguage:(os_log_t)log .cold.1(uint8_t *buf, uint64_t a2, os_log_t log)
{
  *buf = 134349056;
  *(buf + 4) = a2;
  _os_log_debug_impl(&dword_272AC2000, log, OS_LOG_TYPE_DEBUG, "using cached replies: (count: %{public}lu)", buf, 0xCu);
}

- (void)saveReplies:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_272AC2000, a2, OS_LOG_TYPE_DEBUG, "saving canned replies: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end