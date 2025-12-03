@interface MTPodcastAndEpisodeProcessor
- (MTPodcastAndEpisodeProcessor)init;
- (id)createEpisodeObserverForPodcastUuid:(id)uuid predicate:(id)predicate sortDescriptors:(id)descriptors;
- (id)episodeObserverForPodcastUuid:(id)uuid;
- (id)episodePredicateForPodcast:(id)podcast;
- (id)episodeUuids;
- (id)podcastPredicate;
- (id)podcastUuids;
- (void)addEpisodeObserverForPodcast:(id)podcast;
- (void)episodeUuidObserver:(id)observer resultsChangedForPodcast:(id)podcast withDeletedIds:(id)ids andInsertIds:(id)insertIds;
- (void)removeEpisodeObserverForPodcast:(id)podcast;
- (void)removeEpisodeObserverForPodcasts:(id)podcasts;
- (void)stop;
- (void)updateEpisodeObserverForPodcast:(id)podcast;
- (void)updateEpisodePredicatesWithDeletedIds:(id)ids andInsertIds:(id)insertIds andUpdatedIds:(id)updatedIds;
@end

@implementation MTPodcastAndEpisodeProcessor

- (MTPodcastAndEpisodeProcessor)init
{
  v6.receiver = self;
  v6.super_class = MTPodcastAndEpisodeProcessor;
  v2 = [(MTBaseProcessor *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    episodeObservers = v2->_episodeObservers;
    v2->_episodeObservers = dictionary;
  }

  return v2;
}

- (void)stop
{
  v5.receiver = self;
  v5.super_class = MTPodcastAndEpisodeProcessor;
  [(MTBaseProcessor *)&v5 stop];
  episodeObservers = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  allValues = [episodeObservers allValues];
  [allValues enumerateObjectsUsingBlock:&__block_literal_global];
}

- (id)podcastPredicate
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"podcastPredicate must be implemented by subclasses" userInfo:0];
  objc_exception_throw(v2);
}

- (id)episodePredicateForPodcast:(id)podcast
{
  podcastCopy = podcast;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"episodePredicateForPodcast must be implemented by subclasses" userInfo:0];
  objc_exception_throw(v4);
}

- (void)updateEpisodePredicatesWithDeletedIds:(id)ids andInsertIds:(id)insertIds andUpdatedIds:(id)updatedIds
{
  idsCopy = ids;
  insertIdsCopy = insertIds;
  updatedIdsCopy = updatedIds;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__MTPodcastAndEpisodeProcessor_updateEpisodePredicatesWithDeletedIds_andInsertIds_andUpdatedIds___block_invoke;
  v14[3] = &unk_279A446C8;
  objc_copyWeak(&v18, &location);
  v11 = idsCopy;
  v15 = v11;
  v12 = updatedIdsCopy;
  v16 = v12;
  v13 = insertIdsCopy;
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

- (void)addEpisodeObserverForPodcast:(id)podcast
{
  podcastCopy = podcast;
  v4 = objc_autoreleasePoolPush();
  falsePredicate = [(MTPodcastAndEpisodeProcessor *)self episodePredicateForPodcast:podcastCopy];
  if (!falsePredicate)
  {
    falsePredicate = [MEMORY[0x277CCAC30] falsePredicate];
  }

  v6 = [(MTPodcastAndEpisodeProcessor *)self episodeSortDescriptorsForPodcast:podcastCopy];
  v7 = [(MTPodcastAndEpisodeProcessor *)self createEpisodeObserverForPodcastUuid:podcastCopy predicate:falsePredicate sortDescriptors:v6];
  [v7 setIdentifier:podcastCopy];
  episodeObservers = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  objc_sync_enter(episodeObservers);
  episodeObservers2 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  [episodeObservers2 setObject:v7 forKeyedSubscript:podcastCopy];

  objc_sync_exit(episodeObservers);
  [v7 startObserving];

  objc_autoreleasePoolPop(v4);
}

- (void)updateEpisodeObserverForPodcast:(id)podcast
{
  podcastCopy = podcast;
  v4 = objc_autoreleasePoolPush();
  falsePredicate = [(MTPodcastAndEpisodeProcessor *)self episodePredicateForPodcast:podcastCopy];
  if (!falsePredicate)
  {
    falsePredicate = [MEMORY[0x277CCAC30] falsePredicate];
  }

  v6 = [(MTPodcastAndEpisodeProcessor *)self episodeObserverForPodcastUuid:podcastCopy];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_7;
  }

  predicate = [v6 predicate];
  v9 = predicate;
  if (!predicate || ([predicate isEqual:falsePredicate] & 1) == 0)
  {
    [v7 stop];

LABEL_7:
    v9 = [(MTPodcastAndEpisodeProcessor *)self episodeSortDescriptorsForPodcast:podcastCopy];
    v10 = [(MTPodcastAndEpisodeProcessor *)self createEpisodeObserverForPodcastUuid:podcastCopy predicate:falsePredicate sortDescriptors:v9];
    [v10 setIdentifier:podcastCopy];
    episodeObservers = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
    objc_sync_enter(episodeObservers);
    episodeObservers2 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
    [episodeObservers2 setObject:v10 forKeyedSubscript:podcastCopy];

    objc_sync_exit(episodeObservers);
    [v10 startObserving];
  }

  objc_autoreleasePoolPop(v4);
}

- (void)removeEpisodeObserverForPodcast:(id)podcast
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  podcastCopy = podcast;
  v5 = MEMORY[0x277CBEA60];
  podcastCopy2 = podcast;
  v7 = [v5 arrayWithObjects:&podcastCopy count:1];
  v8 = [v4 setWithArray:{v7, podcastCopy, v11}];

  [(MTPodcastAndEpisodeProcessor *)self removeEpisodeObserverForPodcasts:v8];
  v9 = *MEMORY[0x277D85DE8];
}

- (void)removeEpisodeObserverForPodcasts:(id)podcasts
{
  v21 = *MEMORY[0x277D85DE8];
  podcastsCopy = podcasts;
  episodeObservers = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  objc_sync_enter(episodeObservers);
  if ([podcastsCopy count])
  {
    v5 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = podcastsCopy;
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
          episodeObservers2 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
          v12 = [episodeObservers2 objectForKeyedSubscript:v10];

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

    episodeObservers3 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
    [episodeObservers3 removeObjectsForKeys:v5];
  }

  objc_sync_exit(episodeObservers);

  v14 = *MEMORY[0x277D85DE8];
}

- (id)createEpisodeObserverForPodcastUuid:(id)uuid predicate:(id)predicate sortDescriptors:(id)descriptors
{
  uuidCopy = uuid;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  v11 = [MTUuidQueryObserver alloc];
  v12 = [(MTBaseQueryObserver *)v11 initWithEntityName:*MEMORY[0x277D3DCF8] predicate:predicateCopy sortDescriptors:descriptorsCopy];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v12);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __94__MTPodcastAndEpisodeProcessor_createEpisodeObserverForPodcastUuid_predicate_sortDescriptors___block_invoke;
  v16[3] = &unk_279A44718;
  objc_copyWeak(&v18, &location);
  objc_copyWeak(&v19, &from);
  v13 = uuidCopy;
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

- (void)episodeUuidObserver:(id)observer resultsChangedForPodcast:(id)podcast withDeletedIds:(id)ids andInsertIds:(id)insertIds
{
  observerCopy = observer;
  podcastCopy = podcast;
  idsCopy = ids;
  insertIdsCopy = insertIds;
  v14 = MEMORY[0x277CCACA8];
  v15 = NSStringFromSelector(a2);
  v16 = [v14 stringWithFormat:@"%@ must be implemented by subclasses", v15];

  v17 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:v16 userInfo:0];
  objc_exception_throw(v17);
}

- (id)episodeObserverForPodcastUuid:(id)uuid
{
  uuidCopy = uuid;
  episodeObservers = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  objc_sync_enter(episodeObservers);
  episodeObservers2 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  v7 = [episodeObservers2 objectForKeyedSubscript:uuidCopy];

  objc_sync_exit(episodeObservers);

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
  episodeObservers = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  objc_sync_enter(episodeObservers);
  episodeObservers2 = [(MTPodcastAndEpisodeProcessor *)self episodeObservers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__MTPodcastAndEpisodeProcessor_episodeUuids__block_invoke;
  v7[3] = &unk_279A44768;
  v7[4] = &v8;
  [episodeObservers2 enumerateKeysAndObjectsUsingBlock:v7];

  objc_sync_exit(episodeObservers);
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