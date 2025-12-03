@interface MTTextQuery
- (id)titleForPodcastUuid:(id)uuid;
- (void)runQueryWithText:(id)text;
@end

@implementation MTTextQuery

- (void)runQueryWithText:(id)text
{
  v86[4] = *MEMORY[0x277D85DE8];
  textCopy = text;
  v5 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DCA0] ascending:0];
  v86[0] = v5;
  v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC18] ascending:0];
  v86[1] = v6;
  v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:*MEMORY[0x277D3DC58] ascending:1];
  v86[2] = v7;
  v71 = *MEMORY[0x277D3DCB8];
  v8 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:? ascending:? selector:?];
  v86[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v86 count:4];
  [(MTLibraryQuery *)self setEpisodeSortDescriptors:v9];

  v10 = MEMORY[0x277CBEA60];
  v69 = *MEMORY[0x277D3DEE0];
  v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:? ascending:? selector:?];
  v12 = [v10 arrayWithObject:v11];
  [(MTLibraryQuery *)self setPodcastSortDescriptors:v12];

  sortDescriptorsForCategoriesInSearch = [MEMORY[0x277D3DAD8] sortDescriptorsForCategoriesInSearch];
  selfCopy = self;
  [(MTLibraryQuery *)self setCategorySortDescriptors:sortDescriptorsForCategoriesInSearch];

  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v15 = [textCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v17 = [v15 componentsSeparatedByCharactersInSet:whitespaceCharacterSet];

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  array5 = [MEMORY[0x277CBEB18] array];
  array6 = [MEMORY[0x277CBEB18] array];
  array7 = [MEMORY[0x277CBEB18] array];
  array8 = [MEMORY[0x277CBEB18] array];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  obj = v17;
  v18 = [obj countByEnumeratingWithState:&v81 objects:v85 count:16];
  if (v18)
  {
    v19 = v18;
    v67 = *v82;
    v66 = *MEMORY[0x277D3DE40];
    v20 = *MEMORY[0x277D3DBF8];
    v21 = *MEMORY[0x277D3DBA8];
    v22 = *MEMORY[0x277D3DBC0];
    v23 = *MEMORY[0x277D3DBB0];
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v82 != v67)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v81 + 1) + 8 * i);
        v26 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K contains[cl] %@", v69, v25];
        [array addObject:v26];

        v27 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K contains[cl] %@", v66, v25];
        [array2 addObject:v27];

        v28 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K contains[cl] %@", v71, v25];
        [array3 addObject:v28];

        v29 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K contains[cl] %@", v20, v25];
        [array4 addObject:v29];

        v30 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K contains[cl] %@", v21, v25];
        [array5 addObject:v30];

        v31 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K contains[cl] %@", v22, v25];
        [array6 addObject:v31];

        v32 = [MEMORY[0x277CCAC30] predicateWithFormat:@"%K > %@", v23, &unk_2870B6C08];
        [array7 addObject:v32];

        v33 = [MEMORY[0x277D3DAD8] predicateForLibraryCategoriesMatching:v25];
        [array8 addObject:v33];
      }

      v19 = [obj countByEnumeratingWithState:&v81 objects:v85 count:16];
    }

    while (v19);
  }

  v34 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:array];
  v35 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:array2];
  predicateForNotHiddenNotImplicitlyFollowedPodcasts = [MEMORY[0x277D3DB38] predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  v37 = MEMORY[0x277CCA920];
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:{v34, v35, 0}];
  v72 = [v37 orPredicateWithSubpredicates:v38];

  v39 = MEMORY[0x277CCA920];
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:{predicateForNotHiddenNotImplicitlyFollowedPodcasts, v72, 0}];
  v70 = [v39 andPredicateWithSubpredicates:v40];

  v41 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:array3];

  v42 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:array4];

  v43 = MEMORY[0x277CCA920];
  v44 = [MEMORY[0x277CBEA60] arrayWithObjects:{v41, v42, 0}];
  v45 = [v43 orPredicateWithSubpredicates:v44];

  v46 = MEMORY[0x277D3DAF8];
  v47 = v45;
  predicateForEpisodesInSearchResults = [v46 predicateForEpisodesInSearchResults];

  v48 = MEMORY[0x277CCA920];
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:{predicateForEpisodesInSearchResults, v47, 0}];

  v50 = [v48 andPredicateWithSubpredicates:v49];

  v51 = MEMORY[0x277CCA920];
  v52 = [array5 arrayByAddingObjectsFromArray:array7];
  v53 = [v51 andPredicateWithSubpredicates:v52];

  v54 = MEMORY[0x277CCA920];
  v55 = [array6 arrayByAddingObjectsFromArray:array7];
  v56 = [v54 andPredicateWithSubpredicates:v55];

  v57 = MEMORY[0x277CCA920];
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:{v53, v56, 0}];
  v59 = [v57 orPredicateWithSubpredicates:v58];

  v60 = MEMORY[0x277CCA920];
  v61 = v59;
  v62 = [v60 andPredicateWithSubpredicates:array8];
  [(MTLibraryQuery *)selfCopy runQueryWithPodcastPredicate:v70 episodePredicate:v50 channelPredicate:v61 categoryPredicate:v62];

  v63 = *MEMORY[0x277D85DE8];
}

- (id)titleForPodcastUuid:(id)uuid
{
  uuidCopy = uuid;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__4;
  v18 = __Block_byref_object_dispose__4;
  v19 = 0;
  if (uuidCopy)
  {
    mEMORY[0x277D3DAE8] = [MEMORY[0x277D3DAE8] sharedInstance];
    mainOrPrivateContext = [mEMORY[0x277D3DAE8] mainOrPrivateContext];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __35__MTTextQuery_titleForPodcastUuid___block_invoke;
    v10[3] = &unk_279A44930;
    v6 = mainOrPrivateContext;
    v11 = v6;
    v12 = uuidCopy;
    v13 = &v14;
    [v6 performBlockAndWait:v10];

    v7 = v15[5];
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  _Block_object_dispose(&v14, 8);

  return v8;
}

void __35__MTTextQuery_titleForPodcastUuid___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  v2 = [v5 title];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end