@interface MTPodcast
@end

@implementation MTPodcast

void __42__MTPodcast_DB_App__updateCursorPosition___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D3DB40];
  v3 = [*(a1 + 32) uuid];
  v4 = [v2 upNextForPodcastUuid:v3 excludeExplicit:0 ctx:*(a1 + 40)];

  v5 = [v4 episodeUuid];
  v6 = [*(a1 + 32) nextEpisodeUuid];
  v7 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) uuid];
    v9 = [v4 episodeUuid];
    [v4 modifiedDate];
    v16 = 138543874;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 2050;
    v21 = v10;
    _os_log_impl(&dword_25E9F0000, v7, OS_LOG_TYPE_DEFAULT, "UpNext result from update cursor position for podcast %{public}@: episodeUuid: %{public}@ at %{public}f", &v16, 0x20u);
  }

  v11 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v4 episodeUuid];
    v16 = 138543618;
    v17 = v6;
    v18 = 2114;
    v19 = v12;
    _os_log_impl(&dword_25E9F0000, v11, OS_LOG_TYPE_DEFAULT, "UpNext result updating podcast nextEpisodeUuid from %{public}@ to %{public}@", &v16, 0x16u);
  }

  if (v6 != v5 && ([v6 isEqualToString:v5] & 1) == 0)
  {
    v13 = [*(a1 + 40) episodeForUuid:v5];
    v14 = [*(a1 + 40) episodeForUuid:v6];
    if ([v14 listenNowEpisode])
    {
      [v14 setListenNowEpisode:0];
      *(*(*(a1 + 48) + 8) + 24) = 1;
    }

    if (v13 && ([v13 listenNowEpisode] & 1) == 0)
    {
      [v13 setListenNowEpisode:1];
      *(*(*(a1 + 48) + 8) + 24) = 1;
      [v4 modifiedDate];
      [*(a1 + 32) setModifiedDate:?];
    }
  }

  if (*(a1 + 56) == 1 && *(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) saveInCurrentBlock];
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __53__MTPodcast_DB_App__podcastUuidForFeedUrlString_ctx___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) podcastForFeedUrl:*(a1 + 40)];
  v2 = [v5 uuid];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __40__MTPodcast_DB_App__hasAtLeastOneSeason__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:*MEMORY[0x277D3DCF8]];
  v3 = MEMORY[0x277D3DAF8];
  v4 = [*(a1 + 32) uuid];
  v5 = [v3 predicateForEpisodesWithSeasonNumbersOnPodcastUuid:v4];
  [v2 setPredicate:v5];

  [v2 setFetchLimit:1];
  v6 = *(a1 + 40);
  v9 = 0;
  v7 = [v6 executeFetchRequest:v2 error:&v9];
  v8 = v9;
  *(*(*(a1 + 48) + 8) + 24) = [v7 count] != 0;

  [v8 logAndThrow:0];
}

void __73__MTPodcast_Library_App__setRemovePlayedDownloadsSetting_forPodcastUuid___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  v2 = [v3 deletePlayedEpisodesResolvedValue];
  [v3 setDeletePlayedEpisodes:*(a1 + 48)];
  if ([v3 deletePlayedEpisodesResolvedValue] && (v2 & 1) == 0)
  {
    [v3 setShowPlacardForRemovePlayedEpisodes:0];
  }
}

void __52__MTPodcast_Library_App__countOfUnplayedRssEpisodes__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"kMTUnplayedRssEpisodesRecursionCount"];
  v5 = [v4 integerValue];

  if (v5 <= 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v5 + 1];
    [v3 setObject:v7 forKeyedSubscript:@"kMTUnplayedRssEpisodesRecursionCount"];

    v8 = [MEMORY[0x277D3DAF8] predicateForRSSEpisodes];
    v9 = MEMORY[0x277D3DAF8];
    v10 = [*(a1 + 32) uuid];
    v11 = [v9 predicateForEpisodesOnPodcastUuid:v10 deletePlayedEpisodes:1];
    v12 = [v8 AND:v11];

    *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 40) countOfObjectsInEntity:*MEMORY[0x277D3DCF8] predicate:v12];
  }

  else
  {
    v6 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_25E9F0000, v6, OS_LOG_TYPE_FAULT, "Hit recursion guard for [MTPodcast countOfUnplayedRssEpisodes]. Short circuiting.", v13, 2u);
    }
  }

  [v3 setObject:&unk_2870B6C38 forKeyedSubscript:@"kMTUnplayedRssEpisodesRecursionCount"];
}

@end