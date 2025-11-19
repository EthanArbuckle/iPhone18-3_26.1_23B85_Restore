@interface MTRecencyUtil
+ (double)_lastDatePlayedIfNotFutureDate:(double)a3 podcast:(id)a4;
+ (double)scoreFromModifiedDate:(double)a3;
+ (id)_nextEpisodeForUnplayedPodcast:(id)a3 serial:(BOOL)a4 filter:(id)a5 ctx:(id)a6;
+ (id)_upNextResultForUnfollowedPodcast:(id)a3 filter:(id)a4 ctx:(id)a5;
+ (id)_upNextResultForUnplayedFollowedPodcast:(id)a3 nextEpisodeForUnplayedShow:(id)a4 newestEpisodeWithShowBump:(id)a5 mostRecentlyPlayed:(id)a6 filter:(id)a7 serial:(BOOL)a8 ctx:(id)a9;
+ (id)_upNextScoreWithLastModifiedDate:(double)a3 lastDatePlayed:(double)a4 filter:(id)a5 podcast:(id)a6 ctx:(id)a7;
+ (id)caughtUpNextEpisodeForPodcast:(id)a3 nextEpisodeForUnplayedShow:(id)a4 mostRecentlyPlayedLastDatePlayed:(double)a5 serial:(BOOL)a6 filter:(id)a7;
+ (id)episodesForListenNowWithContext:(id)a3 limit:(int64_t)a4;
+ (id)mostRecentlySavedUnplayedEpisodeForPodcast:(id)a3 filter:(id)a4 ctx:(id)a5;
+ (id)nextEpisodeForPodcast:(id)a3 mostRecentlyPlayed:(id)a4 caughtUpNextEpisode:(id)a5 serial:(BOOL)a6 filter:(id)a7;
+ (id)upNextForPodcastUuid:(id)a3 excludeExplicit:(int64_t)a4 ctx:(id)a5;
+ (void)setCombinedScoreOnScore:(id)a3 total:(double)a4;
+ (void)setModifiedDateValuesOnScore:(id)a3 modifiedDate:(double)a4 modifiedDateWeight:(double)a5 total:(double)a6;
+ (void)setPercentOfEpsFromShowPlayedValuesOnScore:(id)a3 podcast:(id)a4 ctx:(id)a5 percentEpsFromShowPlayedWeight:(double)a6 total:(double)a7;
+ (void)setPercentOfTotalListeningValuesOnScore:(id)a3 podcast:(id)a4 ctx:(id)a5 percentEpsTotalPlayedWeight:(double)a6 total:(double)a7;
+ (void)unsafeUpdateRelatedFieldsIfUpNextChangedForPodcast:(id)a3 upNextResult:(id)a4 ctx:(id)a5;
@end

@implementation MTRecencyUtil

+ (id)upNextForPodcastUuid:(id)a3 excludeExplicit:(int64_t)a4 ctx:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v8 length])
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = __Block_byref_object_copy__10;
    v22 = __Block_byref_object_dispose__10;
    v23 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __58__MTRecencyUtil_upNextForPodcastUuid_excludeExplicit_ctx___block_invoke;
    v12[3] = &unk_1E856B5E0;
    v13 = v9;
    v14 = v8;
    v15 = &v18;
    v16 = a1;
    v17 = a4;
    [v13 performBlockAndWait:v12];
    v10 = v19[5];

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __58__MTRecencyUtil_upNextForPodcastUuid_excludeExplicit_ctx___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) podcastForUuid:*(a1 + 40)];
  if (([v5 hidden] & 1) == 0)
  {
    v2 = [*(a1 + 56) _upNextForPodcast:v5 serial:objc_msgSend(v5 excludeExplicit:"playbackNewestToOldest") ^ 1 ctx:{*(a1 + 64), *(a1 + 32)}];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }
}

+ (id)_upNextResultForUnfollowedPodcast:(id)a3 filter:(id)a4 ctx:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v7 mostRecentlyPlayedEpisodeWithFilter:v8];
  [v10 lastDatePlayed];
  v12 = v11;
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v14 = v13;
  if ([v10 isPlayheadPartiallyPlayed] && v12 > v14 + -7776000.0)
  {
    v15 = objc_alloc_init(MTUpNextResult);
    [(MTUpNextResult *)v15 updateFor:v10];
    [v10 lastDatePlayed];
    [(MTUpNextResult *)v15 setModifiedDate:?];
    [(MTUpNextResult *)v15 modifiedDate];
    [MTRecencyUtil scoreFromModifiedDate:?];
    [(MTUpNextResult *)v15 setModifiedDateScore:?];
    goto LABEL_10;
  }

  if ([v7 savedEpisodesCount] >= 1)
  {
    v16 = [MTRecencyUtil mostRecentlySavedUnplayedEpisodeForPodcast:v7 filter:v8 ctx:v9];
    v17 = v16;
    if (v16)
    {
      [v16 lastBookmarkedDate];
      v19 = v18;
      [v7 lastDatePlayed];
      if (v19 > v20)
      {
        v15 = objc_alloc_init(MTUpNextResult);
        [(MTUpNextResult *)v15 updateFor:v17];
        [v17 lastBookmarkedDate];
        [(MTUpNextResult *)v15 setModifiedDate:?];
        [(MTUpNextResult *)v15 modifiedDate];
        [MTRecencyUtil scoreFromModifiedDate:?];
        [(MTUpNextResult *)v15 setModifiedDateScore:?];

        goto LABEL_10;
      }
    }
  }

  v15 = 0;
LABEL_10:

  return v15;
}

+ (id)_upNextResultForUnplayedFollowedPodcast:(id)a3 nextEpisodeForUnplayedShow:(id)a4 newestEpisodeWithShowBump:(id)a5 mostRecentlyPlayed:(id)a6 filter:(id)a7 serial:(BOOL)a8 ctx:(id)a9
{
  v9 = a8;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  if (v15)
  {
    v17 = a9;
    v18 = a7;
    v19 = a6;
    v20 = objc_alloc_init(MTUpNextResult);
    [(MTUpNextResult *)v20 updateFor:v15];
    [v14 lastDatePlayed];
    if (v21 == 0.0)
    {
      if (v9)
      {
        [v14 addedDate];
        v23 = v22;
      }

      else
      {
        [v16 pubDate];
        v23 = v26;
        [v14 addedDate];
        if (v23 < v27)
        {
          v23 = v27;
        }
      }
    }

    else if (v9)
    {
      [v15 pubDate];
      v23 = v24;
      [v14 lastDatePlayed];
      if (v23 >= v25)
      {
        v23 = v25;
      }
    }

    else
    {
      [v14 lastDatePlayed];
      [MTRecencyUtil _lastDatePlayedIfNotFutureDate:v14 podcast:?];
      v29 = v28;
      v23 = v28 + 259200.0;
      [v15 pubDate];
      if (v30 <= v23)
      {
        [v15 pubDate];
        if (v31 >= v29)
        {
          v23 = v31;
        }

        else
        {
          v23 = v29;
        }
      }
    }

    [(MTUpNextResult *)v20 setModifiedDate:v23];
    [(MTUpNextResult *)v20 modifiedDate];
    v33 = v32;
    [v19 lastDatePlayed];
    v35 = v34;

    v36 = [MTRecencyUtil _upNextScoreWithLastModifiedDate:v18 lastDatePlayed:v14 filter:v17 podcast:v33 ctx:v35];

    [(MTUpNextResult *)v20 setUpNextScore:v36];
    [(MTUpNextResult *)v20 modifiedDate];
    [MTRecencyUtil scoreFromModifiedDate:?];
    [(MTUpNextResult *)v20 setModifiedDateScore:?];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (double)scoreFromModifiedDate:(double)a3
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v5 = v4 + -7776000.0;
  v6 = a3 - (v4 + -7776000.0);
  if (v6 >= 0.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  return v7 / (v8 - v5);
}

+ (id)caughtUpNextEpisodeForPodcast:(id)a3 nextEpisodeForUnplayedShow:(id)a4 mostRecentlyPlayedLastDatePlayed:(double)a5 serial:(BOOL)a6 filter:(id)a7
{
  v8 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = v13;
  if (v8)
  {
    v15 = [v13 filterExcludingPlayed];
    v16 = [v11 lowestNumberedEpisodePublishedAfter:v15 filter:a5];
  }

  else if (v12 && ([v12 isVisuallyPlayed] & 1) == 0)
  {
    v16 = v12;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)nextEpisodeForPodcast:(id)a3 mostRecentlyPlayed:(id)a4 caughtUpNextEpisode:(id)a5 serial:(BOOL)a6 filter:(id)a7
{
  v8 = a6;
  v11 = a5;
  v12 = v11;
  if (v8)
  {
    v13 = [a3 nextNumberedUnplayedEpisodeAfter:a4 filter:a7];
  }

  else
  {
    v13 = v11;
  }

  v14 = v13;

  return v14;
}

+ (void)unsafeUpdateRelatedFieldsIfUpNextChangedForPodcast:(id)a3 upNextResult:(id)a4 ctx:(id)a5
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 podcastForUuid:v7];
  [v8 modifiedDate];
  [v10 setModifiedDate:?];
  v11 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v10 nextEpisodeUuid];
    v13 = [v8 episodeUuid];
    *buf = 138543618;
    v40 = v12;
    v41 = 2114;
    v42 = v13;
    _os_log_impl(&dword_1D8CEC000, v11, OS_LOG_TYPE_DEFAULT, "UpNext result updating podcast nextEpisodeUuid from %{public}@ to %{public}@", buf, 0x16u);
  }

  v14 = [v10 nextEpisodeUuid];
  v15 = [v8 episodeUuid];
  v16 = v15;
  if (v14 == v15)
  {

    goto LABEL_8;
  }

  v17 = [v10 nextEpisodeUuid];
  v18 = [v8 episodeUuid];
  v19 = [v17 isEqualToString:v18];

  if ((v19 & 1) == 0)
  {
    v20 = [v8 episodeUuid];

    if (v20)
    {
      v21 = [v8 episodeUuid];
      v14 = [v9 episodeForUuid:v21];

      [v14 setListenNowEpisode:1];
      [v8 modifiedDateScore];
      [v14 setModifiedDateScore:?];
LABEL_8:
    }
  }

  v22 = [MTEpisode predicateForListenNowForPodcastUuid:v7];
  v23 = [v8 episodeUuid];
  v24 = [MTEpisode predicateForEpisodeUuid:v23];
  v25 = [v24 NOT];
  v26 = [v22 AND:v25];

  v27 = [v9 objectsInEntity:@"MTEpisode" predicate:v26 sortDescriptors:0 returnsObjectsAsFaults:0 limit:0];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v28 = [v27 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v35;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v35 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v34 + 1) + 8 * i);
        [v32 setListenNowEpisode:0];
        [v32 setModifiedDateScore:0.0];
      }

      v29 = [v27 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v29);
  }

  v33 = *MEMORY[0x1E69E9840];
}

+ (id)mostRecentlySavedUnplayedEpisodeForPodcast:(id)a3 filter:(id)a4 ctx:(id)a5
{
  v7 = a5;
  v8 = a3;
  v9 = [a4 predicateForPodcast:v8];
  v10 = [MTEpisode predicateForVisuallyPlayed:0];
  v11 = [v9 AND:v10];
  v12 = [v8 uuid];

  v13 = [MTEpisode predicateForBookmarkedEpisodesOnPodcastUuid:v12];
  v14 = [v11 AND:v13];

  v15 = [MTEpisode sortDescriptorsForLastBookmarkedDateAscending:0];
  v16 = [v7 objectsInEntity:@"MTEpisode" predicate:v14 sortDescriptors:v15 returnsObjectsAsFaults:0 limit:1];

  v17 = [v16 firstObject];

  return v17;
}

+ (id)_nextEpisodeForUnplayedPodcast:(id)a3 serial:(BOOL)a4 filter:(id)a5 ctx:(id)a6
{
  v8 = a5;
  v9 = a3;
  v10 = [v8 episodeTypeFilter];
  if (a4)
  {
    [v8 setEpisodeTypeFilter:1];
    [v9 oldestEpisodeInLatestSeasonOrShowWithFilter:v8];
  }

  else
  {
    [v8 setEpisodeTypeFilter:5];
    [v9 newestEpisodeWithFilter:v8];
  }
  v11 = ;

  [v8 setEpisodeTypeFilter:v10];

  return v11;
}

+ (double)_lastDatePlayedIfNotFutureDate:(double)a3 podcast:(id)a4
{
  v5 = a4;
  v6 = +[_TtC18PodcastsFoundation17FutureDateChecker sharedInstance];
  v7 = [v6 isFutureWithTimestamp:a3];

  if (v7)
  {
    [v5 lastDatePlayed];
    if (v8 <= 0.0)
    {
      [v5 addedDate];
    }

    else
    {
      [v5 modifiedDate];
    }

    a3 = v9;
  }

  return a3;
}

+ (void)setModifiedDateValuesOnScore:(id)a3 modifiedDate:(double)a4 modifiedDateWeight:(double)a5 total:(double)a6
{
  v9 = a3;
  [MTRecencyUtil scoreFromModifiedDate:a4];
  [v9 setModifiedDateScore:?];
  [v9 setModifiedWeight:a5 / a6];
}

+ (void)setPercentOfEpsFromShowPlayedValuesOnScore:(id)a3 podcast:(id)a4 ctx:(id)a5 percentEpsFromShowPlayedWeight:(double)a6 total:(double)a7
{
  v33 = a4;
  v11 = a5;
  v12 = a3;
  v13 = [v33 uuid];
  v14 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:v13];
  v15 = +[MTEpisode predicateForHasAnyVisualPlayState];
  v16 = [v14 AND:v15];

  v17 = [v33 uuid];
  v18 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:v17];

  if ([v33 isSerialShowTypeInFeed])
  {
    v19 = [v11 countOfObjectsInEntity:@"MTEpisode" predicate:v16];
    v20 = [v11 countOfObjectsInEntity:@"MTEpisode" predicate:v18];
  }

  else
  {
    v21 = MEMORY[0x1E695DF00];
    [v33 addedDate];
    v22 = [v21 dateWithTimeIntervalSinceReferenceDate:?];
    v23 = [MTEpisode predicateForEpisodesPublishedAfterDate:v22];
    v24 = [v16 AND:v23];

    v25 = MEMORY[0x1E695DF00];
    [v33 addedDate];
    v26 = [v25 dateWithTimeIntervalSinceReferenceDate:?];
    v27 = [MTEpisode predicateForEpisodesPublishedAfterDate:v26];
    v28 = [v18 AND:v27];

    v29 = [MTEpisode sortDescriptorsForPubDateAscending:0];
    v30 = [v11 objectsInEntity:@"MTEpisode" predicate:v28 sortDescriptors:v29 returnsObjectsAsFaults:0 limit:50];

    v20 = [v30 count];
    v31 = [v30 filteredArrayUsingPredicate:v24];
    v19 = [v31 count];

    v11 = v29;
    v18 = v28;
    v16 = v24;
  }

  if (v20)
  {
    v32 = v19 / v20 * 100.0;
  }

  else
  {
    v32 = 0.0;
  }

  [v12 setEpisodesFromShowTotalCount:?];
  [v12 setEpisodesFromShowPlayedCount:v19];
  [v12 setEpisodesFromShowPlayedPercent:v32];
  [v12 setEpisodesFromShowWeight:a6 / a7];
}

+ (void)setPercentOfTotalListeningValuesOnScore:(id)a3 podcast:(id)a4 ctx:(id)a5 percentEpsTotalPlayedWeight:(double)a6 total:(double)a7
{
  v24 = a3;
  v11 = a5;
  v12 = a4;
  v13 = [MTEpisode predicateForVisuallyPlayed:1];
  v14 = +[MTEpisode sortDescriptorsForRecentlyPlayed];
  v15 = [v11 objectsInEntity:@"MTEpisode" predicate:v13 sortDescriptors:v14 returnsObjectsAsFaults:0 limit:100];

  [v24 setAllPlayedEpisodesCount:{objc_msgSend(v15, "count")}];
  v16 = [v12 uuid];

  v17 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:v16];
  v18 = [v15 filteredArrayUsingPredicate:v17];

  [v24 setAllPlayedEpisodesFromThisShowCount:{objc_msgSend(v18, "count")}];
  [v24 allPlayedEpisodesCount];
  v19 = 0.0;
  if (v20 != 0.0)
  {
    [v24 allPlayedEpisodesFromThisShowCount];
    v22 = v21;
    [v24 allPlayedEpisodesCount];
    v19 = v22 / v23 * 100.0;
  }

  [v24 setAllPlayedEpsWeight:a6 / a7];
  [v24 setAllPlayedEpsPercent:v19];
}

+ (void)setCombinedScoreOnScore:(id)a3 total:(double)a4
{
  v16 = a3;
  [v16 modifiedDateScore];
  v6 = v5;
  if (a4 > 0.0)
  {
    [v16 modifiedWeight];
    v8 = v6 * v7;
    [v16 episodesFromShowPlayedPercent];
    v10 = v9;
    [v16 episodesFromShowWeight];
    v12 = v8 + v10 * v11;
    [v16 allPlayedEpsPercent];
    v14 = v13;
    [v16 allPlayedEpsWeight];
    v6 = v12 + v14 * v15;
  }

  [v16 setCombinedScore:v6];
}

+ (id)_upNextScoreWithLastModifiedDate:(double)a3 lastDatePlayed:(double)a4 filter:(id)a5 podcast:(id)a6 ctx:(id)a7
{
  v10 = a6;
  v11 = a7;
  if (os_feature_enabled_prototype_up_next())
  {
    v12 = objc_alloc_init(MTUpNextScorePrototype);
    v13 = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
    [v13 doubleForKey:@"MTUpNextScoreModifiedDateWeight"];
    v15 = v14;

    v16 = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
    [v16 doubleForKey:@"MTUpNextScorePercentEpsFromShowPlayedWeight"];
    v18 = v17;

    v19 = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
    [v19 doubleForKey:@"MTUpNextScorePercentEpsTotalPlayedWeight"];
    v21 = v20;

    [a1 setModifiedDateValuesOnScore:v12 modifiedDate:a3 modifiedDateWeight:v15 total:v15 + v18 + v21];
    [a1 setPercentOfEpsFromShowPlayedValuesOnScore:v12 podcast:v10 ctx:v11 percentEpsFromShowPlayedWeight:v18 total:v15 + v18 + v21];
    [a1 setPercentOfTotalListeningValuesOnScore:v12 podcast:v10 ctx:v11 percentEpsTotalPlayedWeight:v21 total:v15 + v18 + v21];
    [a1 setCombinedScoreOnScore:v12 total:v15 + v18 + v21];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)episodesForListenNowWithContext:(id)a3 limit:(int64_t)a4
{
  v5 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__10;
  v17 = __Block_byref_object_dispose__10;
  v18 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__MTRecencyUtil_episodesForListenNowWithContext_limit___block_invoke;
  v9[3] = &unk_1E856B608;
  v11 = &v13;
  v6 = v5;
  v10 = v6;
  v12 = a4;
  [v6 performBlockAndWait:v9];
  v7 = v14[5];

  _Block_object_dispose(&v13, 8);

  return v7;
}

void __55__MTRecencyUtil_episodesForListenNowWithContext_limit___block_invoke(void *a1)
{
  v2 = a1[4];
  v7 = +[MTEpisode predicateForListenNow];
  v3 = +[MTEpisode sortDescriptorsForListenNow];
  v4 = [v2 objectsInEntity:@"MTEpisode" predicate:v7 sortDescriptors:v3 returnsObjectsAsFaults:0 limit:a1[6]];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end