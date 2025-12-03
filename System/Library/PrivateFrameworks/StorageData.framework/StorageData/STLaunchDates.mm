@interface STLaunchDates
+ (id)sharedDates;
- (STLaunchDates)init;
- (id)launchDateForApp:(id)app;
- (void)_writeDatesPref:(id)pref;
- (void)addBiomeDates;
- (void)addSpotlightDates;
- (void)load;
- (void)readDatesPref;
- (void)updateDates:(id)dates;
- (void)writeDatesPref;
@end

@implementation STLaunchDates

+ (id)sharedDates
{
  if (sharedDates_onceToken != -1)
  {
    +[STLaunchDates sharedDates];
  }

  v3 = sharedDates__gSharedDates;

  return v3;
}

uint64_t __28__STLaunchDates_sharedDates__block_invoke()
{
  v0 = objc_alloc_init(STLaunchDates);
  v1 = sharedDates__gSharedDates;
  sharedDates__gSharedDates = v0;

  v2 = sharedDates__gSharedDates;

  return [v2 load];
}

- (STLaunchDates)init
{
  v6.receiver = self;
  v6.super_class = STLaunchDates;
  v2 = [(STLaunchDates *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    launchDatesByApp = v2->_launchDatesByApp;
    v2->_launchDatesByApp = dictionary;
  }

  return v2;
}

- (id)launchDateForApp:(id)app
{
  appCopy = app;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_launchDatesByApp objectForKey:appCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)_writeDatesPref:(id)pref
{
  prefCopy = pref;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_launchDatesByApp copy];
  v7 = dispatch_get_global_queue(9, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__STLaunchDates__writeDatesPref___block_invoke;
  block[3] = &unk_279D1CE88;
  v10 = v6;
  v8 = v6;
  dispatch_async(v7, block);

  objc_sync_exit(selfCopy);
}

uint64_t __33__STLaunchDates__writeDatesPref___block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x277CBF040];
  v2 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(@"LaunchTimes", *(a1 + 32), @"com.apple.settings.storage", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);

  return CFPreferencesSynchronize(@"com.apple.settings.storage", v1, v2);
}

- (void)writeDatesPref
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__writeDatesPref_ object:0];

  [(STLaunchDates *)self performSelector:sel__writeDatesPref_ withObject:0 afterDelay:5.0];
}

- (void)readDatesPref
{
  v3 = CFPreferencesCopyValue(@"LaunchTimes", @"com.apple.settings.storage", *MEMORY[0x277CBF040], *MEMORY[0x277CBF030]);
  [(STLaunchDates *)self updateDates:v3];
}

- (void)updateDates:(id)dates
{
  v27 = *MEMORY[0x277D85DE8];
  datesCopy = dates;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __29__STLaunchDates_updateDates___block_invoke;
  v21[3] = &unk_279D1D570;
  v21[4] = selfCopy;
  v21[5] = &v22;
  [datesCopy enumerateKeysAndObjectsUsingBlock:v21];
  if (*(v23 + 24))
  {
    [(NSMutableDictionary *)selfCopy->_launchDatesByApp allValues];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v6 = v18 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v26 count:16];
    if (v7)
    {
      v8 = 0;
      v9 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if (v8)
          {
            v12 = [v8 laterDate:{v11, v17}];

            v8 = v12;
          }

          else
          {
            v8 = v11;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v17 objects:v26 count:16];
      }

      while (v7);

      if (v8)
      {
        v13 = v8;
        v14 = v13;
LABEL_16:
        latestDate = selfCopy->_latestDate;
        selfCopy->_latestDate = v13;

        [(STLaunchDates *)selfCopy writeDatesPref];
        goto LABEL_17;
      }
    }

    else
    {
    }

    v13 = [MEMORY[0x277CBEAA8] now];
    v14 = 0;
    goto LABEL_16;
  }

LABEL_17:
  _Block_object_dispose(&v22, 8);
  objc_sync_exit(selfCopy);

  v16 = *MEMORY[0x277D85DE8];
}

void __29__STLaunchDates_updateDates___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 8) objectForKey:v9];
  v7 = v6;
  if (!v6 || ([v6 laterDate:v5], v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == v5))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    [*(*(a1 + 32) + 8) setObject:v5 forKey:v9];
  }
}

- (void)addSpotlightDates
{
  v30[2] = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v4 = getCSSearchQueryContextClass_softClass;
  v28 = getCSSearchQueryContextClass_softClass;
  if (!getCSSearchQueryContextClass_softClass)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getCSSearchQueryContextClass_block_invoke;
    v23 = &unk_279D1D1B0;
    v24 = &v25;
    __getCSSearchQueryContextClass_block_invoke(&v20);
    v4 = v26[3];
  }

  v5 = v4;
  _Block_object_dispose(&v25, 8);
  v6 = objc_opt_new();
  [v6 setBundleIDs:&unk_287C8E890];
  v30[0] = @"_kMDItemExternalID";
  v30[1] = @"_kMDItemApplicationLastLaunchedDate";
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];
  [v6 setFetchAttributes:v7];

  v29 = *MEMORY[0x277CCA1A0];
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
  [v6 setProtectionClasses:v8];

  [v6 setInternal:1];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v9 = getCSSearchQueryClass_softClass;
  v28 = getCSSearchQueryClass_softClass;
  if (!getCSSearchQueryClass_softClass)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getCSSearchQueryClass_block_invoke;
    v23 = &unk_279D1D1B0;
    v24 = &v25;
    __getCSSearchQueryClass_block_invoke(&v20);
    v9 = v26[3];
  }

  v10 = v9;
  _Block_object_dispose(&v25, 8);
  v11 = [[v9 alloc] initWithQueryString:@"true" context:v6];
  v12 = dispatch_semaphore_create(0);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __34__STLaunchDates_addSpotlightDates__block_invoke;
  v18[3] = &unk_279D1D598;
  v19 = dictionary;
  v13 = dictionary;
  [v11 setFoundItemsHandler:v18];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __34__STLaunchDates_addSpotlightDates__block_invoke_2;
  v16[3] = &unk_279D1D5C0;
  v17 = v12;
  v14 = v12;
  [v11 setCompletionHandler:v16];
  [v11 start];
  dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  [(STLaunchDates *)self updateDates:v13];

  v15 = *MEMORY[0x277D85DE8];
}

void __34__STLaunchDates_addSpotlightDates__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v14 + 1) + 8 * i) attributeSet];
        v9 = [v8 attributeForKey:@"_kMDItemExternalID"];
        v10 = [v8 attributeForKey:@"_kMDItemApplicationLastLaunchedDate"];
        v11 = v10;
        if (v9)
        {
          v12 = v10 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (!v12)
        {
          [*(a1 + 32) setObject:v10 forKey:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)addBiomeDates
{
  appLaunch = [MEMORY[0x277CF1B58] appLaunch];
  [(NSDate *)self->_latestDate timeIntervalSinceReferenceDate];
  v4 = [appLaunch publisherFromStartTime:?];
  v5 = dispatch_semaphore_create(0);
  v6 = [v4 filterWithIsIncluded:&__block_literal_global_23];
  v7 = objc_opt_new();
  v8 = [v6 reduceWithInitial:v7 nextPartialResult:&__block_literal_global_26];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __30__STLaunchDates_addBiomeDates__block_invoke_3;
  v13[3] = &unk_279D1D628;
  v14 = v5;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __30__STLaunchDates_addBiomeDates__block_invoke_4;
  v12[3] = &unk_279D1D650;
  v12[4] = self;
  v9 = v5;
  v10 = [v8 sinkWithCompletion:v13 shouldContinue:v12];

  v11 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v9, v11);
}

uint64_t __30__STLaunchDates_addBiomeDates__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 eventBody];
  v3 = [v2 isStarting];

  return v3;
}

id __30__STLaunchDates_addBiomeDates__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v5 eventBody];
  v7 = [v6 dateInterval];
  v8 = [v7 startDate];
  v9 = [v5 eventBody];

  v10 = [v9 bundleID];
  [v4 setObject:v8 forKeyedSubscript:v10];

  return v4;
}

- (void)load
{
  [(STLaunchDates *)self readDatesPref];

  [(STLaunchDates *)self addSpotlightDates];
}

@end