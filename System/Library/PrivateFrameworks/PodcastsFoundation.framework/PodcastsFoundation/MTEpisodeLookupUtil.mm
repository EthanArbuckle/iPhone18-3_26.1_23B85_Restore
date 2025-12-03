@interface MTEpisodeLookupUtil
+ (id)sharedInstance;
- (id)_entityForFetchRequest:(id)request context:(id)context;
- (id)_episodeMatchFromPredicate:(id)predicate context:(id)context;
- (id)_podcastMatchFromPredicate:(id)predicate context:(id)context;
- (id)findEpisodeWithRequest:(id)request;
- (id)findEpisodeWithRequest:(id)request context:(id)context;
- (id)findPodcastWithFeedUrl:(id)url;
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

- (id)findEpisodeWithRequest:(id)request
{
  requestCopy = request;
  v5 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v5 mainOrPrivateContext];

  v7 = [(MTEpisodeLookupUtil *)self findEpisodeWithRequest:requestCopy context:mainOrPrivateContext];

  return v7;
}

- (id)findEpisodeWithRequest:(id)request context:(id)context
{
  requestCopy = request;
  contextCopy = context;
  uuid = [requestCopy uuid];
  if ([uuid length])
  {
    v9 = [MTEpisode predicateForEpisodeUuid:uuid];
    v10 = [(MTEpisodeLookupUtil *)self _episodeMatchFromPredicate:v9];

    if (v10)
    {
      goto LABEL_27;
    }
  }

  storeTrackId = [requestCopy storeTrackId];
  if ([MTStoreIdentifier isNotEmpty:storeTrackId])
  {
    v12 = [MTEpisode predicateForEpisodeStoreTrackId:storeTrackId];
    v10 = [(MTEpisodeLookupUtil *)self _episodeMatchFromPredicate:v12 context:contextCopy];

    if (v10)
    {
      goto LABEL_27;
    }
  }

  if ([requestCopy persistentID])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(requestCopy, "persistentID")}];
    v14 = [MTEpisode predicateForPersistentId:v13];

    v10 = [(MTEpisodeLookupUtil *)self _episodeMatchFromPredicate:v14 context:contextCopy];

    if (v10)
    {
      goto LABEL_27;
    }
  }

  podcastFeedUrl = [requestCopy podcastFeedUrl];
  episodeGuid = [requestCopy episodeGuid];
  if (![podcastFeedUrl length] || !objc_msgSend(episodeGuid, "length"))
  {
    goto LABEL_12;
  }

  v17 = [(MTEpisodeLookupUtil *)self findPodcastWithFeedUrl:podcastFeedUrl];
  episodeTitle = v17;
  if (!v17)
  {
    goto LABEL_11;
  }

  uuid2 = [v17 uuid];
  v20 = [MTEpisode predicateForEpisodeGuid:episodeGuid onPodcastUuid:uuid2];

  v10 = [(MTEpisodeLookupUtil *)self _episodeMatchFromPredicate:v20];

  if (!v10)
  {
LABEL_11:

LABEL_12:
    episodeTitle = [requestCopy episodeTitle];
    podcastTitle = [requestCopy podcastTitle];
    streamUrl = [requestCopy streamUrl];
    if ([podcastTitle length] && objc_msgSend(episodeTitle, "length"))
    {
      v33 = [MTPodcast predicateForPodcastWithTitle:podcastTitle];
      v23 = [(MTEpisodeLookupUtil *)self _podcastMatchFromPredicate:?];
      if (v23)
      {
        v30 = episodeGuid;
        v32 = v23;
        uuid3 = [v23 uuid];
        v25 = [MTEpisode predicateForEpisodeTitle:episodeTitle onPodcastUuid:uuid3];

        v31 = v25;
        v10 = [(MTEpisodeLookupUtil *)self _episodeMatchFromPredicate:v25];
        if (!v10 || ![streamUrl length] || (objc_msgSend(v10, "enclosureURL"), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isEqualToString:", streamUrl), v26, (v27 & 1) == 0))
        {
          if (streamUrl || ([v10 enclosureURL], v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
          {

            v10 = 0;
          }
        }

        episodeGuid = v30;

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

- (id)findPodcastWithFeedUrl:(id)url
{
  v4 = [MTPodcast predicateForPodcastWithFeedUrl:url];
  v5 = [(MTEpisodeLookupUtil *)self _podcastMatchFromPredicate:v4];

  return v5;
}

- (id)_podcastMatchFromPredicate:(id)predicate context:(id)context
{
  v6 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  predicateCopy = predicate;
  v9 = [[v6 alloc] initWithEntityName:@"MTPodcast"];
  [v9 setPredicate:predicateCopy];

  [v9 setFetchLimit:1];
  v10 = [(MTEpisodeLookupUtil *)self _entityForFetchRequest:v9 context:contextCopy];

  return v10;
}

- (id)_episodeMatchFromPredicate:(id)predicate context:(id)context
{
  v6 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  predicateCopy = predicate;
  v9 = [[v6 alloc] initWithEntityName:@"MTEpisode"];
  [v9 setPredicate:predicateCopy];

  [v9 setFetchLimit:1];
  v10 = [(MTEpisodeLookupUtil *)self _entityForFetchRequest:v9 context:contextCopy];

  return v10;
}

- (id)_entityForFetchRequest:(id)request context:(id)context
{
  v37 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  contextCopy = context;
  if (!contextCopy)
  {
    v7 = +[MTDB sharedInstance];
    contextCopy = [v7 mainOrPrivateContext];
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
  v8 = contextCopy;
  v19 = v8;
  v9 = requestCopy;
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

    firstObject = 0;
  }

  else
  {
    firstObject = [v24[5] firstObject];
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  v13 = *MEMORY[0x1E69E9840];

  return firstObject;
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