@interface MTPlaybackQueueFactory
+ (BOOL)_isContinuousPlaybackEnabledForLimit:(int64_t)a3;
+ (id)_episodeToPlayForPodcastUuid:(id)a3 playbackOrder:(int64_t)a4 excludeExplicit:(int64_t)a5 ctx:(id)a6;
+ (id)_latestOrOldestEpisodeForPodcastUuid:(id)a3 restrictToUserEpisodes:(BOOL)a4 excludeExplicit:(int64_t)a5 latest:(BOOL)a6 ctx:(id)a7;
+ (id)_uuidForEpisode:(id)a3;
@end

@implementation MTPlaybackQueueFactory

+ (BOOL)_isContinuousPlaybackEnabledForLimit:(int64_t)a3
{
  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 1;
  }

  if (a3 == 1)
  {
    return 0;
  }

  return MEMORY[0x28219E380](a1, a2);
}

+ (id)_episodeToPlayForPodcastUuid:(id)a3 playbackOrder:(int64_t)a4 excludeExplicit:(int64_t)a5 ctx:(id)a6
{
  v10 = a3;
  v11 = a6;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = 0;
  if (a4 == 2)
  {
    v12 = [a1 _oldestEpisodeForPodcastUuid:v10 restrictToUserEpisodes:1 excludeExplicit:a5 ctx:v11];
    v13 = [v12 uuid];
  }

  else
  {
    if (a4 == 1)
    {
      v12 = [a1 _latestEpisodeForPodcastUuid:v10 restrictToUserEpisodes:0 excludeExplicit:a5 ctx:v11];
      [v12 uuid];
    }

    else
    {
      v12 = [MEMORY[0x277D3DB40] upNextForPodcastUuid:v10 excludeExplicit:a5 ctx:v11];
      [v12 episodeUuid];
    }
    v13 = ;
  }

  v14 = v24[5];
  v24[5] = v13;

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __89__MTPlaybackQueueFactory__episodeToPlayForPodcastUuid_playbackOrder_excludeExplicit_ctx___block_invoke;
  v19[3] = &unk_279A44930;
  v15 = v11;
  v20 = v15;
  v16 = v10;
  v21 = v16;
  v22 = &v23;
  [v15 performBlockAndWait:v19];
  v17 = v24[5];

  _Block_object_dispose(&v23, 8);

  return v17;
}

void __89__MTPlaybackQueueFactory__episodeToPlayForPodcastUuid_playbackOrder_excludeExplicit_ctx___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  if ([v4 hidden])
  {
    v2 = *(*(a1 + 48) + 8);
    v3 = *(v2 + 40);
    *(v2 + 40) = 0;
  }
}

+ (id)_latestOrOldestEpisodeForPodcastUuid:(id)a3 restrictToUserEpisodes:(BOOL)a4 excludeExplicit:(int64_t)a5 latest:(BOOL)a6 ctx:(id)a7
{
  v11 = a3;
  v12 = a7;
  if ([v11 length])
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__0;
    v26 = __Block_byref_object_dispose__0;
    v27 = 0;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __113__MTPlaybackQueueFactory__latestOrOldestEpisodeForPodcastUuid_restrictToUserEpisodes_excludeExplicit_latest_ctx___block_invoke;
    v15[3] = &unk_279A44958;
    v16 = v12;
    v20 = a4;
    v17 = v11;
    v18 = &v22;
    v21 = a6;
    v19 = a5;
    [v16 performBlockAndWait:v15];
    v13 = v23[5];

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void __113__MTPlaybackQueueFactory__latestOrOldestEpisodeForPodcastUuid_restrictToUserEpisodes_excludeExplicit_latest_ctx___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  v3 = *(a1 + 65);
  v4 = *(a1 + 56);
  v8 = v2;
  if (*(a1 + 64) == 1)
  {
    v5 = *(a1 + 56);
    if (*(a1 + 65))
    {
      [v2 newestUserEpisodeExcludingExplicit:v4];
    }

    else
    {
      [v2 oldestUserEpisodeExcludingExplicit:v4];
    }
  }

  else if (*(a1 + 65))
  {
    [v2 newestEpisodeExcludingUuid:0 excludeExplicit:v4];
  }

  else
  {
    [v2 oldestEpisodeExcludingExplicit:v4];
  }
  v6 = ;
  v7 = v6;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v6);
}

+ (id)_uuidForEpisode:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  v4 = [v3 managedObjectContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__MTPlaybackQueueFactory__uuidForEpisode___block_invoke;
  v8[3] = &unk_279A44980;
  v10 = &v11;
  v5 = v3;
  v9 = v5;
  [v4 performBlockAndWait:v8];

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

uint64_t __42__MTPlaybackQueueFactory__uuidForEpisode___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) uuid];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

@end