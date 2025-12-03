@interface MTSiriPlistDumper
- (MTSiriPlistDumper)initWithBackgroundTaskManager:(id)manager;
- (id)_childFromPlistAtIndex:(int64_t)index plistArray:(id)array;
- (id)createDiffWithAddedPodcasts:(id)podcasts addedStations:(id)stations removedPodcasts:(id)removedPodcasts removedStations:(id)removedStations;
- (id)subtractDictionary:(id)dictionary fromDictionary:(id)fromDictionary uniqueKey:(id)key;
- (void)dumpPlist;
- (void)writeDiffs:(id)diffs stationItems:(id)items existingPodcastItems:(id)podcastItems existingStationItems:(id)stationItems;
@end

@implementation MTSiriPlistDumper

- (void)dumpPlist
{
  v36[3] = *MEMORY[0x1E69E9840];
  siriDonator = self->_siriDonator;
  if (siriDonator)
  {
    [(SiriDonator *)siriDonator startDonation];
  }

  v4 = objc_opt_new();
  v5 = objc_opt_new();
  v6 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v6 mainOrPrivateContext];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __30__MTSiriPlistDumper_dumpPlist__block_invoke;
  v25[3] = &unk_1E856AFB8;
  v26 = mainOrPrivateContext;
  v8 = v4;
  v27 = v8;
  v9 = v5;
  v28 = v9;
  v22 = v26;
  [v26 performBlockAndWait:v25];
  v35[0] = @"title";
  v35[1] = @"children";
  v36[0] = @"Library";
  v36[1] = v8;
  v35[2] = @"uuid";
  v36[2] = @"Podcasts";
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:3];
  v33[0] = @"title";
  v33[1] = @"children";
  v34[0] = @"Stations";
  v34[1] = v9;
  v33[2] = @"uuid";
  v34[2] = @"Stations";
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:v33 count:3];
  v31[1] = @"children";
  v32[0] = @"Root";
  v30[0] = v24;
  v30[1] = v23;
  v31[0] = @"title";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
  v32[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];

  v12 = +[MTConstants documentsDirectory];
  v13 = [v12 URLByAppendingPathComponent:@"PodcastsDB.plist"];
  path = [v13 path];

  v15 = objc_alloc_init(MEMORY[0x1E696AC08]);
  if ([v15 fileExistsAtPath:path])
  {
    v16 = [v15 contentsAtPath:path];
    if (v16)
    {
      v17 = [MEMORY[0x1E696AE40] propertyListWithData:v16 options:0 format:0 error:0];
      v18 = [(MTSiriPlistDumper *)self _childFromPlistAtIndex:0 plistArray:v17];
      v19 = [(MTSiriPlistDumper *)self _childFromPlistAtIndex:1 plistArray:v17];
    }

    else
    {
      v19 = MEMORY[0x1E695E0F0];
      v18 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v19 = MEMORY[0x1E695E0F0];
    v18 = MEMORY[0x1E695E0F0];
  }

  [(MTSiriPlistDumper *)self writeDiffs:v8 stationItems:v9 existingPodcastItems:v18 existingStationItems:v19];
  [v15 removeItemAtPath:path error:0];
  v29 = v11;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v29 count:1];
  [v20 writeToFile:path atomically:1];

  v21 = *MEMORY[0x1E69E9840];
}

void __30__MTSiriPlistDumper_dumpPlist__block_invoke(id *a1)
{
  v55[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"MTPodcast"];
  v3 = +[MTPodcast predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  [v2 setPredicate:v3];

  v55[0] = @"title";
  v55[1] = @"storeCollectionId";
  v55[2] = @"uuid";
  v55[3] = @"feedURL";
  v55[4] = @"updatedFeedURL";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:5];
  [v2 setPropertiesToFetch:v4];

  v38 = v2;
  [a1[4] executeFetchRequest:v2 error:0];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v47 = 0u;
  v5 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v45;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v44 + 1) + 8 * i);
        v52[0] = @"title";
        v10 = [v9 title];
        v11 = v10;
        if (v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = &stru_1F548B930;
        }

        v53[0] = v12;
        v52[1] = @"storeId";
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", objc_msgSend(v9, "storeCollectionId")];
        v53[1] = v13;
        v52[2] = @"feedUrl";
        v14 = [v9 feedURL];
        v15 = v14;
        if (v14)
        {
          v16 = v14;
        }

        else
        {
          v16 = &stru_1F548B930;
        }

        v53[2] = v16;
        v52[3] = @"uuid";
        v17 = [v9 uuid];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = &stru_1F548B930;
        }

        v53[3] = v19;
        v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:4];

        [a1[5] addObject:v20];
      }

      v6 = [obj countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v6);
  }

  v21 = [objc_alloc(MEMORY[0x1E695D5E0]) initWithEntityName:@"MTPlaylist"];
  v22 = +[MTPlaylist topLevelPlaylistsPredicate];
  [v21 setPredicate:v22];

  v51[0] = @"title";
  v51[1] = @"uuid";
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];
  [v21 setPropertiesToFetch:v23];

  v24 = [a1[4] executeFetchRequest:v21 error:0];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v25 = [v24 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v41;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v40 + 1) + 8 * j);
        v48[0] = @"title";
        v30 = [v29 title];
        v31 = v30;
        if (v30)
        {
          v32 = v30;
        }

        else
        {
          v32 = &stru_1F548B930;
        }

        v48[1] = @"uuid";
        v49[0] = v32;
        v33 = [v29 uuid];
        v34 = v33;
        if (v33)
        {
          v35 = v33;
        }

        else
        {
          v35 = &stru_1F548B930;
        }

        v49[1] = v35;
        v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:v48 count:2];

        [a1[6] addObject:v36];
      }

      v26 = [v24 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v26);
  }

  v37 = *MEMORY[0x1E69E9840];
}

- (MTSiriPlistDumper)initWithBackgroundTaskManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = MTSiriPlistDumper;
  v5 = [(MTSiriPlistDumper *)&v9 init];
  if (v5)
  {
    v6 = [[_TtC18PodcastsFoundation11SiriDonator alloc] initWithBackgroundTaskManager:managerCopy];
    siriDonator = v5->_siriDonator;
    v5->_siriDonator = v6;
  }

  return v5;
}

- (void)writeDiffs:(id)diffs stationItems:(id)items existingPodcastItems:(id)podcastItems existingStationItems:(id)stationItems
{
  v29 = *MEMORY[0x1E69E9840];
  diffsCopy = diffs;
  itemsCopy = items;
  podcastItemsCopy = podcastItems;
  stationItemsCopy = stationItems;
  v12 = +[MTConstants documentsDirectory];
  v13 = [v12 URLByAppendingPathComponent:@"PodcastsDiff.plist"];
  path = [v13 path];

  v15 = objc_opt_new();
  v16 = objc_alloc_init(MEMORY[0x1E696AC08]);
  if ([v16 fileExistsAtPath:path])
  {
    v17 = [v16 contentsAtPath:path];
    if (v17)
    {
      v18 = [MEMORY[0x1E696AE40] propertyListWithData:v17 options:0 format:0 error:0];
      if ([v18 count])
      {
        v19 = [MEMORY[0x1E695DF70] arrayWithArray:v18];

        v15 = v19;
      }
    }
  }

  if ([v15 count] && objc_msgSend(v15, "count") < 0x65)
  {
    v20 = [(MTSiriPlistDumper *)self subtractDictionary:v27 fromDictionary:diffsCopy uniqueKey:@"uuid"];
    v21 = [(MTSiriPlistDumper *)self subtractDictionary:stationItemsCopy fromDictionary:itemsCopy uniqueKey:@"uuid"];
    v22 = [(MTSiriPlistDumper *)self subtractDictionary:diffsCopy fromDictionary:v27 uniqueKey:@"uuid"];
    v23 = [(MTSiriPlistDumper *)self subtractDictionary:itemsCopy fromDictionary:stationItemsCopy uniqueKey:@"uuid"];
    if (![v20 count] && !objc_msgSend(v21, "count") && !objc_msgSend(v22, "count") && !objc_msgSend(v23, "count"))
    {

      goto LABEL_16;
    }

    v24 = [(MTSiriPlistDumper *)self createDiffWithAddedPodcasts:v20 addedStations:v21 removedPodcasts:v22 removedStations:v23];
    [v15 addObject:v24];
  }

  else
  {
    v20 = [(MTSiriPlistDumper *)self createDiffWithAddedPodcasts:diffsCopy addedStations:itemsCopy removedPodcasts:MEMORY[0x1E695E0F0] removedStations:MEMORY[0x1E695E0F0]];
    [v15 removeAllObjects];
    [v15 addObject:v20];
  }

  [v16 removeItemAtPath:path error:0];
  [v15 writeToFile:path atomically:1];
LABEL_16:

  v25 = *MEMORY[0x1E69E9840];
}

- (id)createDiffWithAddedPodcasts:(id)podcasts addedStations:(id)stations removedPodcasts:(id)removedPodcasts removedStations:(id)removedStations
{
  v25[3] = *MEMORY[0x1E69E9840];
  v24[0] = @"uuid";
  v9 = MEMORY[0x1E696AEC0];
  removedStationsCopy = removedStations;
  removedPodcastsCopy = removedPodcasts;
  stationsCopy = stations;
  podcastsCopy = podcasts;
  uUID = [v9 UUID];
  v25[0] = uUID;
  v24[1] = @"podcasts";
  v22[0] = @"inserted";
  v22[1] = @"deleted";
  v23[0] = podcastsCopy;
  v23[1] = removedPodcastsCopy;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v25[1] = v15;
  v24[2] = @"stations";
  v20[0] = @"inserted";
  v20[1] = @"deleted";
  v21[0] = stationsCopy;
  v21[1] = removedStationsCopy;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:2];
  v25[2] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)subtractDictionary:(id)dictionary fromDictionary:(id)fromDictionary uniqueKey:(id)key
{
  keyCopy = key;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __65__MTSiriPlistDumper_subtractDictionary_fromDictionary_uniqueKey___block_invoke;
  v26[3] = &unk_1E856B3C8;
  v8 = keyCopy;
  v27 = v8;
  fromDictionaryCopy = fromDictionary;
  v10 = [dictionary mt_compactMap:v26];
  v11 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v10];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __65__MTSiriPlistDumper_subtractDictionary_fromDictionary_uniqueKey___block_invoke_2;
  v24[3] = &unk_1E856B3C8;
  v12 = v8;
  v25 = v12;
  v13 = [fromDictionaryCopy mt_compactMap:v24];
  v14 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithArray:v13];
  [v14 minusSet:v11];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __65__MTSiriPlistDumper_subtractDictionary_fromDictionary_uniqueKey___block_invoke_3;
  v21[3] = &unk_1E856B3F0;
  v22 = v12;
  v23 = v14;
  v15 = v14;
  v16 = v12;
  v17 = [fromDictionaryCopy mt_filter:v21];

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  v19 = v18;

  return v18;
}

uint64_t __65__MTSiriPlistDumper_subtractDictionary_fromDictionary_uniqueKey___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKey:*(a1 + 32)];
  v4 = [*(a1 + 40) containsObject:v3];

  return v4;
}

- (id)_childFromPlistAtIndex:(int64_t)index plistArray:(id)array
{
  arrayCopy = array;
  if ([arrayCopy count])
  {
    v6 = [arrayCopy objectAtIndex:0];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 objectForKey:@"children"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 count] > index)
      {
        v8 = [v7 objectAtIndex:index];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 objectForKey:@"children"];
        }

        else
        {
          v9 = MEMORY[0x1E695E0F0];
        }
      }

      else
      {
        v9 = MEMORY[0x1E695E0F0];
      }
    }

    else
    {
      v9 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

@end