@interface MTPodcastAndEpisodeProcessor
- (MTPodcastAndEpisodeProcessor)init;
- (id)createEpisodeObserverForPodcastUuid:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5;
- (id)episodeObserverForPodcastUuid:(id)a3;
- (id)episodePredicateForPodcast:(id)a3;
- (id)episodeUuids;
- (id)podcastPredicate;
- (id)podcastUuids;
- (void)addEpisodeObserverForPodcast:(id)a3;
- (void)episodeUuidObserver:(id)a3 resultsChangedForPodcast:(id)a4 withDeletedIds:(id)a5 andInsertIds:(id)a6;
- (void)removeEpisodeObserverForPodcast:(id)a3;
- (void)removeEpisodeObserverForPodcasts:(id)a3;
- (void)stop;
- (void)updateEpisodeObserverForPodcast:(id)a3;
- (void)updateEpisodePredicatesWithDeletedIds:(id)a3 andInsertIds:(id)a4 andUpdatedIds:(id)a5;
@end

@implementation MTPodcastAndEpisodeProcessor

- (MTPodcastAndEpisodeProcessor)init
{
  v6.receiver = self;
  v6.super_class = MTPodcastAndEpisodeProcessor;
  v2 = [(MTBaseProcessor *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    episodeObservers = v2->_episodeObservers;
    v2->_episodeObservers = v3;
  }

  return v2;
}

- (void)stop
{
  v5.receiver = self;
  v5.super_class = MTPodcastAndEpisodeProcessor;
  [(MTBaseProcessor *)&v5 stop];
  v3 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  v4 = [v3 allValues];
  [v4 enumerateObjectsUsingBlock:&__block_literal_global];
}

- (id)podcastPredicate
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"podcastPredicate must be implemented by subclasses" userInfo:0];
  objc_exception_throw(v2);
}

- (id)episodePredicateForPodcast:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"episodePredicateForPodcast must be implemented by subclasses" userInfo:0];
  objc_exception_throw(v4);
}

- (void)updateEpisodePredicatesWithDeletedIds:(id)a3 andInsertIds:(id)a4 andUpdatedIds:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__MTPodcastAndEpisodeProcessor_updateEpisodePredicatesWithDeletedIds_andInsertIds_andUpdatedIds___block_invoke;
  v14[3] = &unk_279A446C8;
  objc_copyWeak(&v18, &location);
  v11 = v8;
  v15 = v11;
  v12 = v10;
  v16 = v12;
  v13 = v9;
  v17 = v13;
  [(MTBaseProcessor *)self enqueueWorkBlock:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __97__MTPodcastAndEpisodeProcessor_updateEpisodePredicatesWithDeletedIds_andInsertIds_andUpdatedIds___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = objc_autoreleasePoolPush();
    [WeakRetained removeEpisodeObserverForPodcasts:*(a1 + 32)];
    objc_autoreleasePoolPop(v3);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v4 = *(a1 + 40);
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        v8 = 0;
        do
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [WeakRetained updateEpisodeObserverForPodcast:*(*(&v19 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v6);
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v9 = *(a1 + 48);
    v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        v13 = 0;
        do
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [WeakRetained addEpisodeObserverForPodcast:{*(*(&v15 + 1) + 8 * v13++), v15}];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v11);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)addEpisodeObserverForPodcast:(id)a3
{
  v10 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(MTPodcastAndEpisodeProcessor *)self episodePredicateForPodcast:v10];
  if (!v5)
  {
    v5 = [MEMORY[0x277CCAC30] falsePredicate];
  }

  v6 = [(MTPodcastAndEpisodeProcessor *)self episodeSortDescriptorsForPodcast:v10];
  v7 = [(MTPodcastAndEpisodeProcessor *)self createEpisodeObserverForPodcastUuid:v10 predicate:v5 sortDescriptors:v6];
  [v7 setIdentifier:v10];
  v8 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  objc_sync_enter(v8);
  v9 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  [v9 setObject:v7 forKeyedSubscript:v10];

  objc_sync_exit(v8);
  [v7 startObserving];

  objc_autoreleasePoolPop(v4);
}

- (void)updateEpisodeObserverForPodcast:(id)a3
{
  v13 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(MTPodcastAndEpisodeProcessor *)self episodePredicateForPodcast:v13];
  if (!v5)
  {
    v5 = [MEMORY[0x277CCAC30] falsePredicate];
  }

  v6 = [(MTPodcastAndEpisodeProcessor *)self episodeObserverForPodcastUuid:v13];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  v8 = [v6 predicate];
  v9 = v8;
  if (!v8 || ([v8 isEqual:v5] & 1) == 0)
  {
    [v7 stop];

LABEL_7:
    v9 = [(MTPodcastAndEpisodeProcessor *)self episodeSortDescriptorsForPodcast:v13];
    v10 = [(MTPodcastAndEpisodeProcessor *)self createEpisodeObserverForPodcastUuid:v13 predicate:v5 sortDescriptors:v9];
    [v10 setIdentifier:v13];
    v11 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
    objc_sync_enter(v11);
    v12 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
    [v12 setObject:v10 forKeyedSubscript:v13];

    objc_sync_exit(v11);
    [v10 startObserving];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)removeEpisodeObserverForPodcast:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  v10 = a3;
  v5 = MEMORY[0x277CBEA60];
  v6 = a3;
  v7 = [v5 arrayWithObjects:&v10 count:1];
  v8 = [v4 setWithArray:{v7, v10, v11}];

  [(MTPodcastAndEpisodeProcessor *)self removeEpisodeObserverForPodcasts:v8];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeEpisodeObserverForPodcasts:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v4 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  objc_sync_enter(v4);
  if ([v15 count])
  {
    v5 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v15;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = *v17;
      do
      {
        v9 = 0;
        do
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * v9);
          v11 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
          v12 = [v11 objectForKeyedSubscript:v10];

          if (v12)
          {
            [v12 stop];
            [v5 addObject:v10];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    v13 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
    [v13 removeObjectsForKeys:v5];
  }

  objc_sync_exit(v4);

  v14 = *MEMORY[0x277D85DE8];
}

- (id)createEpisodeObserverForPodcastUuid:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MTUuidQueryObserver alloc];
  v12 = [(MTBaseQueryObserver *)v11 initWithEntityName:*MEMORY[0x277D3DCF8] predicate:v9 sortDescriptors:v10];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __94__MTPodcastAndEpisodeProcessor_createEpisodeObserverForPodcastUuid_predicate_sortDescriptors___block_invoke;
  v16[3] = &unk_279A44718;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, &from);
  v13 = v8;
  v17 = v13;
  v14 = [(MTUuidQueryObserver *)v12 addResultsChangedHandler:v16];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return v12;
}

void __94__MTPodcastAndEpisodeProcessor_createEpisodeObserverForPodcastUuid_predicate_sortDescriptors___block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __94__MTPodcastAndEpisodeProcessor_createEpisodeObserverForPodcastUuid_predicate_sortDescriptors___block_invoke_2;
  v10[3] = &unk_279A446F0;
  objc_copyWeak(&v14, a1 + 6);
  objc_copyWeak(&v15, a1 + 5);
  v11 = a1[4];
  v8 = v5;
  v12 = v8;
  v9 = v6;
  v13 = v9;
  [WeakRetained enqueueWorkBlock:v10];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
}

void __94__MTPodcastAndEpisodeProcessor_createEpisodeObserverForPodcastUuid_predicate_sortDescriptors___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = objc_loadWeakRetained((a1 + 64));
  [v2 episodeUuidObserver:WeakRetained resultsChangedForPodcast:*(a1 + 32) withDeletedIds:*(a1 + 40) andInsertIds:*(a1 + 48)];
}

- (void)episodeUuidObserver:(id)a3 resultsChangedForPodcast:(id)a4 withDeletedIds:(id)a5 andInsertIds:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = MEMORY[0x277CCACA8];
  v15 = NSStringFromSelector(a2);
  v16 = [v14 stringWithFormat:@"%@ must be implemented by subclasses", v15];

  v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:v16 userInfo:0];
  objc_exception_throw(v17);
}

- (id)episodeObserverForPodcastUuid:(id)a3
{
  v4 = a3;
  v5 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  objc_sync_enter(v5);
  v6 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  v7 = [v6 objectForKeyedSubscript:v4];

  objc_sync_exit(v5);

  return v7;
}

- (id)podcastUuids
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy_;
  v9 = __Block_byref_object_dispose_;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __44__MTPodcastAndEpisodeProcessor_podcastUuids__block_invoke;
  v4[3] = &unk_279A44740;
  v4[4] = &v5;
  [(MTBaseProcessor *)self results:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __44__MTPodcastAndEpisodeProcessor_podcastUuids__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 valueForKey:*MEMORY[0x277D3DF10]];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (id)episodeUuids
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  objc_sync_enter(v3);
  v4 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__MTPodcastAndEpisodeProcessor_episodeUuids__block_invoke;
  v7[3] = &unk_279A44768;
  v7[4] = &v8;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  objc_sync_exit(v3);
  v5 = [v9[5] copy];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __44__MTPodcastAndEpisodeProcessor_episodeUuids__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v4 = [a3 uuids];
  [v3 unionSet:v4];
}

@end