@interface MTLibraryQuery
- (MTLibraryQuery)init;
- (void)runQuery;
- (void)runQueryInContext:(id)context;
- (void)runQueryWithPodcastPredicate:(id)predicate episodePredicate:(id)episodePredicate channelPredicate:(id)channelPredicate categoryPredicate:(id)categoryPredicate;
@end

@implementation MTLibraryQuery

- (MTLibraryQuery)init
{
  v6.receiver = self;
  v6.super_class = MTLibraryQuery;
  v2 = [(MTLibraryQuery *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_active = 1;
    v2->_fetchLimit = 0;
    v4 = v2;
  }

  return v3;
}

- (void)runQueryWithPodcastPredicate:(id)predicate episodePredicate:(id)episodePredicate channelPredicate:(id)channelPredicate categoryPredicate:(id)categoryPredicate
{
  categoryPredicateCopy = categoryPredicate;
  channelPredicateCopy = channelPredicate;
  episodePredicateCopy = episodePredicate;
  [(MTLibraryQuery *)self setPodcastPredicate:predicate];
  [(MTLibraryQuery *)self setEpisodePredicate:episodePredicateCopy];

  [(MTLibraryQuery *)self setChannelPredicate:channelPredicateCopy];
  [(MTLibraryQuery *)self setCategoryPredicate:categoryPredicateCopy];

  [(MTLibraryQuery *)self runQuery];
}

- (void)runQuery
{
  mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
  mainOrPrivateContext = [mEMORY[0x277D3DAE8] mainOrPrivateContext];

  [(MTLibraryQuery *)self runQueryInContext:mainOrPrivateContext];
}

- (void)runQueryInContext:(id)context
{
  contextCopy = context;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__4;
  v60 = __Block_byref_object_dispose__4;
  v61 = 0;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__4;
  v54 = __Block_byref_object_dispose__4;
  v55 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__4;
  v48 = __Block_byref_object_dispose__4;
  array = [MEMORY[0x277CBEB18] array];
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__4;
  v42 = __Block_byref_object_dispose__4;
  v43 = 0;
  v4 = self->_episodeSortDescriptors;
  v5 = self->_podcastSortDescriptors;
  v6 = self->_channelSortDescriptors;
  v7 = self->_categorySortDescriptors;
  v8 = self->_podcastPredicate;
  v9 = self->_episodePredicate;
  v10 = self->_channelPredicate;
  v11 = self->_categoryPredicate;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __36__MTLibraryQuery_runQueryInContext___block_invoke;
  v23[3] = &unk_279A44DB0;
  v12 = v8;
  v24 = v12;
  v13 = v5;
  v25 = v13;
  selfCopy = self;
  v34 = &v50;
  v14 = contextCopy;
  v27 = v14;
  v35 = &v44;
  v15 = v9;
  v28 = v15;
  v36 = &v56;
  v16 = v4;
  v29 = v16;
  v17 = v10;
  v30 = v17;
  v18 = v6;
  v31 = v18;
  v19 = v11;
  v32 = v19;
  v37 = &v38;
  v20 = v7;
  v33 = v20;
  [v14 performBlockAndWait:v23];
  action = self->_action;
  if (action)
  {
    action[2](action, v51[5], v57[5], v45[5], v39[5]);
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);
}

uint64_t __36__MTLibraryQuery_runQueryInContext___block_invoke(uint64_t a1)
{
  v42[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_alloc(MEMORY[0x277CBE428]);
    v3 = [v2 initWithEntityName:*MEMORY[0x277D3DD50]];
    [v3 setPredicate:*(a1 + 32)];
    [v3 setResultType:0];
    [v3 setSortDescriptors:*(a1 + 40)];
    [v3 setFetchLimit:{objc_msgSend(*(a1 + 48), "fetchLimit")}];
    v42[0] = *MEMORY[0x277D3DE30];
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:1];
    [v3 setRelationshipKeyPathsForPrefetching:v4];

    [v3 setReturnsObjectsAsFaults:0];
    v5 = *(a1 + 56);
    v40 = 0;
    v6 = [v5 executeFetchRequest:v3 error:&v40];
    v7 = v40;
    v8 = *(*(a1 + 112) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v6;

    v10 = *(*(*(a1 + 112) + 8) + 40);
    if (!v10)
    {
      [v7 logAndThrow:1];
      v10 = *(*(*(a1 + 112) + 8) + 40);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v37;
      do
      {
        v15 = 0;
        do
        {
          if (*v37 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v36 + 1) + 8 * v15) channel];
          v17 = v16;
          if (v16 && [v16 showCount] >= 2 && (objc_msgSend(*(*(*(a1 + 120) + 8) + 40), "containsObject:", v17) & 1) == 0)
          {
            [*(*(*(a1 + 120) + 8) + 40) addObject:v17];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v36 objects:v41 count:16];
      }

      while (v13);
    }
  }

  v18 = *(a1 + 64);
  if (v18)
  {
    v19 = [*(a1 + 56) objectsInEntity:*MEMORY[0x277D3DCF8] predicate:v18 sortDescriptors:*(a1 + 72) returnsObjectsAsFaults:0 limit:{objc_msgSend(*(a1 + 48), "fetchLimit")}];
    v20 = *(*(a1 + 128) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;
  }

  v22 = *(a1 + 80);
  if (v22)
  {
    v23 = *(*(*(a1 + 120) + 8) + 40);
    v24 = [*(a1 + 56) objectsInEntity:*MEMORY[0x277D3DCE8] predicate:v22 sortDescriptors:*(a1 + 88) returnsObjectsAsFaults:0 limit:{objc_msgSend(*(a1 + 48), "fetchLimit")}];
    [v23 addObjectsFromArray:v24];
  }

  if (*(a1 + 96) && os_feature_enabled_categories_in_search())
  {
    v25 = *(a1 + 56);
    v26 = [MEMORY[0x277D3DAD8] entity];
    v27 = [v26 name];
    v28 = [v25 objectsInEntity:v27 predicate:*(a1 + 96) sortDescriptors:*(a1 + 104) returnsObjectsAsFaults:0 limit:{objc_msgSend(*(a1 + 48), "fetchLimit")}];
    v29 = *(*(a1 + 136) + 8);
    v30 = *(v29 + 40);
    *(v29 + 40) = v28;
  }

  else
  {
    v31 = *(*(a1 + 136) + 8);
    v26 = *(v31 + 40);
    *(v31 + 40) = MEMORY[0x277CBEBF8];
  }

  [*(a1 + 48) setPodcastResults:*(*(*(a1 + 112) + 8) + 40)];
  [*(a1 + 48) setEpisodeResults:*(*(*(a1 + 128) + 8) + 40)];
  v32 = *(a1 + 48);
  v33 = [*(*(*(a1 + 120) + 8) + 40) copy];
  [v32 setChannelResults:v33];

  result = [*(a1 + 48) setCategoryResults:*(*(*(a1 + 136) + 8) + 40)];
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

@end