@interface MTEpisodeLookupUtil
+ (id)sharedInstance;
- (id)_entityForFetchRequest:(id)a3 context:(id)a4;
- (id)_episodeMatchFromPredicate:(id)a3 context:(id)a4;
- (id)_podcastMatchFromPredicate:(id)a3 context:(id)a4;
- (id)findEpisodeWithRequest:(id)a3;
- (id)findEpisodeWithRequest:(id)a3 context:(id)a4;
- (id)findPodcastWithFeedUrl:(id)a3;
@end

@implementation MTEpisodeLookupUtil

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[MTEpisodeLookupUtil sharedInstance];
  }

  v3 = sharedInstance_instance_0;

  return v3;
}

uint64_t __37__MTEpisodeLookupUtil_sharedInstance__block_invoke()
{
  sharedInstance_instance_0 = objc_alloc_init(MTEpisodeLookupUtil);

  return MEMORY[0x1EEE66BB8]();
}

- (id)findEpisodeWithRequest:(id)a3
{
  v4 = a3;
  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v7 = [(MTEpisodeLookupUtil *)self findEpisodeWithRequest:v4 context:v6];

  return v7;
}

- (id)findEpisodeWithRequest:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 uuid];
  if ([v8 length])
  {
    v9 = [MTEpisode predicateForEpisodeUuid:v8];
    v10 = [(MTEpisodeLookupUtil *)self _episodeMatchFromPredicate:v9];

    if (v10)
    {
      goto LABEL_27;
    }
  }

  v11 = [v6 storeTrackId];
  if ([MTStoreIdentifier isNotEmpty:v11])
  {
    v12 = [MTEpisode predicateForEpisodeStoreTrackId:v11];
    v10 = [(MTEpisodeLookupUtil *)self _episodeMatchFromPredicate:v12 context:v7];

    if (v10)
    {
      goto LABEL_27;
    }
  }

  if ([v6 persistentID])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v6, "persistentID")}];
    v14 = [MTEpisode predicateForPersistentId:v13];

    v10 = [(MTEpisodeLookupUtil *)self _episodeMatchFromPredicate:v14 context:v7];

    if (v10)
    {
      goto LABEL_27;
    }
  }

  v15 = [v6 podcastFeedUrl];
  v16 = [v6 episodeGuid];
  if (![v15 length] || !objc_msgSend(v16, "length"))
  {
    goto LABEL_12;
  }

  v17 = [(MTEpisodeLookupUtil *)self findPodcastWithFeedUrl:v15];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_11;
  }

  v19 = [v17 uuid];
  v20 = [MTEpisode predicateForEpisodeGuid:v16 onPodcastUuid:v19];

  v10 = [(MTEpisodeLookupUtil *)self _episodeMatchFromPredicate:v20];

  if (!v10)
  {
LABEL_11:

LABEL_12:
    v18 = [v6 episodeTitle];
    v21 = [v6 podcastTitle];
    v22 = [v6 streamUrl];
    if ([v21 length] && objc_msgSend(v18, "length"))
    {
      v33 = [MTPodcast predicateForPodcastWithTitle:v21];
      v23 = [(MTEpisodeLookupUtil *)self _podcastMatchFromPredicate:?];
      if (v23)
      {
        v30 = v16;
        v32 = v23;
        v24 = [v23 uuid];
        v25 = [MTEpisode predicateForEpisodeTitle:v18 onPodcastUuid:v24];

        v31 = v25;
        v10 = [(MTEpisodeLookupUtil *)self _episodeMatchFromPredicate:v25];
        if (!v10 || ![v22 length] || (objc_msgSend(v10, "enclosureURL"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isEqualToString:", v22), v26, (v27 & 1) == 0))
        {
          if (v22 || ([v10 enclosureURL], v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
          {

            v10 = 0;
          }
        }

        v16 = v30;

        v23 = v32;
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
  }

LABEL_27:

  return v10;
}

- (id)findPodcastWithFeedUrl:(id)a3
{
  v4 = [MTPodcast predicateForPodcastWithFeedUrl:a3];
  v5 = [(MTEpisodeLookupUtil *)self _podcastMatchFromPredicate:v4];

  return v5;
}

- (id)_podcastMatchFromPredicate:(id)a3 context:(id)a4
{
  v6 = MEMORY[0x1E695D5E0];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithEntityName:@"MTPodcast"];
  [v9 setPredicate:v8];

  [v9 setFetchLimit:1];
  v10 = [(MTEpisodeLookupUtil *)self _entityForFetchRequest:v9 context:v7];

  return v10;
}

- (id)_episodeMatchFromPredicate:(id)a3 context:(id)a4
{
  v6 = MEMORY[0x1E695D5E0];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithEntityName:@"MTEpisode"];
  [v9 setPredicate:v8];

  [v9 setFetchLimit:1];
  v10 = [(MTEpisodeLookupUtil *)self _entityForFetchRequest:v9 context:v7];

  return v10;
}

- (id)_entityForFetchRequest:(id)a3 context:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v7 = +[MTDB sharedInstance];
    v6 = [v7 mainOrPrivateContext];
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__9;
  v33 = __Block_byref_object_dispose__9;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__9;
  v27 = __Block_byref_object_dispose__9;
  v28 = 0;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __54__MTEpisodeLookupUtil__entityForFetchRequest_context___block_invoke;
  v18 = &unk_1E856B5B8;
  v21 = &v23;
  v8 = v6;
  v19 = v8;
  v9 = v5;
  v20 = v9;
  v22 = &v29;
  [v8 performBlockAndWait:&v15];
  if (v30[5])
  {
    v10 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v30[5];
      *buf = 138412290;
      v36 = v11;
      _os_log_impl(&dword_1D8CEC000, v10, OS_LOG_TYPE_DEFAULT, "Error fetching entity: %@", buf, 0xCu);
    }

    v12 = 0;
  }

  else
  {
    v12 = [v24[5] firstObject];
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

void __54__MTEpisodeLookupUtil__entityForFetchRequest_context___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

@end