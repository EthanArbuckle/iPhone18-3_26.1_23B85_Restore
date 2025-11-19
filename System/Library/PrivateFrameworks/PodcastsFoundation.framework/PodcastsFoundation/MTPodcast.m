@interface MTPodcast
+ (BOOL)autoDownloadDefaultValue;
+ (BOOL)isRedirectURL:(id)a3;
+ (BOOL)sortOrderAscForShowType:(int64_t)a3;
+ (id)episodeLimitsAllowingAutomaticDownloads;
+ (id)importedShowArtworkURLFor:(id)a3;
+ (id)insertNewPodcastInManagedObjectContext:(id)a3 subscribed:(BOOL)a4 feedUrl:(id)a5 showType:(int64_t)a6 showTypeInFeed:(id)a7 title:(id)a8 author:(id)a9 provider:(id)a10 imageUrl:(id)a11 description:(id)a12 displayType:(id)a13 showSpecificUpsellCopy:(id)a14;
+ (id)podcastUuidForEpisodeUuid:(id)a3 ctx:(id)a4;
+ (id)predicateForAreMediaAPI:(BOOL)a3;
+ (id)predicateForAutoDownloadEnabled;
+ (id)predicateForEntitledShows;
+ (id)predicateForExcludingExplicitBasedOnSetting;
+ (id)predicateForHasBeenSynced:(BOOL)a3;
+ (id)predicateForHiddenPodcastUuids:(id)a3;
+ (id)predicateForIdentifer:(id)a3;
+ (id)predicateForImplicitlyFollowedPodcastsExcludingUUIDs:(id)a3;
+ (id)predicateForImporting:(BOOL)a3;
+ (id)predicateForLastDatePlayedNotInTheFuture;
+ (id)predicateForNonFollowedShowsWithPlayState;
+ (id)predicateForNotImplicitlyFollowedPodcastsWithChannelStoreId:(int64_t)a3;
+ (id)predicateForPaidSubscriptionActive:(BOOL)a3;
+ (id)predicateForPeriodicallyUpdatablePodcasts;
+ (id)predicateForPodcastStoreId:(int64_t)a3;
+ (id)predicateForPodcastWithFeedUrl:(id)a3;
+ (id)predicateForPodcastWithPodcastPID:(int64_t)a3;
+ (id)predicateForPodcastWithTitle:(id)a3;
+ (id)predicateForPodcastsFollowedSince:(id)a3;
+ (id)predicateForPodcastsNeedingRetry:(BOOL)a3;
+ (id)predicateForPodcastsToAutodownload;
+ (id)predicateForWatchLibraryShows;
+ (id)productURLForStoreCollectionId:(int64_t)a3 storeTrackId:(int64_t)a4;
+ (id)propertiesToObserveForDownloadableEpisodes;
+ (id)redirectURLForStoreCollectionId:(int64_t)a3;
+ (id)storeCleanURLForAdamID:(int64_t)a3;
+ (id)userDefaultPropertiesAffectingPredicates;
+ (int64_t)deletePlayedEpisodesDefaultValue;
+ (int64_t)episodeLimitDefaultValue;
+ (int64_t)showTypeFromString:(id)a3;
+ (int64_t)storeCollectionIdForRedirectURL:(id)a3;
+ (unint64_t)totalUnplayedCount;
- (BOOL)currentEpisodeLimitAllowsAutomaticDownloads;
- (BOOL)currentEpisodeLimitIsNextNEpisodes;
- (BOOL)deletePlayedEpisodesResolvedValue;
- (BOOL)isDark;
- (BOOL)isPastAutodownloadOrEpisodeLimitDark;
- (BOOL)isSerialShowTypeInFeed;
- (BOOL)isShareable;
- (BOOL)requestsAreNonAppInitiated;
- (BOOL)shouldBeDeleted;
- (BOOL)shouldBeHiddenFromUpNext;
- (double)calculatedUpdateInterval;
- (double)darkDownloadTimeInterval;
- (id)_episodesNextTo:(double)a3 after:(BOOL)a4 usePlayOrder:(BOOL)a5 sortAsc:(BOOL)a6 sortByEpisodeNumber:(BOOL)a7 filter:(id)a8 limit:(int64_t)a9;
- (id)_fetchRequestForDistinctSeasons;
- (id)_latestOrOldestEpisode:(BOOL)a3 sortDate:(unint64_t)a4 filter:(id)a5;
- (id)bestAvailableStoreCleanURL;
- (id)bestDescription;
- (id)bestFeedURLExcludingRedirectURL:(BOOL)a3;
- (id)currentFeedURL;
- (id)displayURL;
- (id)earliestDateForFeedFetch:(id)a3;
- (id)episodePublishedAfter:(double)a3 filter:(id)a4;
- (id)episodePublishedBefore:(double)a3 filter:(id)a4;
- (id)episodesInLatestSeasonWithLimit:(int64_t)a3;
- (id)episodesInSeasonNumber:(int64_t)a3;
- (id)episodesInSeasonNumber:(int64_t)a3 lowestNumberedEpisodesFirst:(BOOL)a4 filter:(id)a5 limit:(int64_t)a6;
- (id)episodesInSeasonNumber:(int64_t)a3 oldestEpisodesFirst:(BOOL)a4 filter:(id)a5 limit:(int64_t)a6;
- (id)highestNumberedEpisodePublishedBefore:(double)a3 filter:(id)a4;
- (id)highestNumberedPlayedEpisodeWithFilter:(id)a3;
- (id)lowestNumberedEpisodePublishedAfter:(double)a3 filter:(id)a4;
- (id)lowestNumberedEpisodeWithFilter:(id)a3;
- (id)metricsAdditionalData;
- (id)metricsContentIdentifier;
- (id)mostRecentlyPlayedEpisodeWithFilter:(id)a3;
- (id)nextNumberedUnplayedEpisodeAfter:(id)a3 filter:(id)a4;
- (id)oldestEpisodeInLatestSeasonOrShowWithFilter:(id)a3;
- (id)redirectURL;
- (id)seasonNumbers;
- (id)seasonTrailerInSeason:(int64_t)a3;
- (id)shareURL;
- (id)smartPlayEpisode;
- (id)twitterShareURL;
- (id)updatedAtString;
- (int64_t)darkDownloadCountLimit;
- (int64_t)episodeLimitResolvedValue;
- (int64_t)latestSeasonNumber;
- (int64_t)showTypeInFeedResolvedValue;
- (int64_t)syncType;
- (unint64_t)levelForDownloadsOnSubscription;
- (void)applyDefaultFollowedShowSettingsFor:(int64_t)a3;
- (void)applyDefaultUnfollowedShowSettings;
- (void)calculateEpisodicNewEpisodeCountIn:(id)a3;
- (void)calculateNewEpisodeCountIn:(id)a3 serialShowsUseExperimentalRules:(BOOL)a4;
- (void)calculateSerialNewEpisodeCountIn:(id)a3;
- (void)markPlaylistsForUpdate;
- (void)resetGoDarkWithReason:(unint64_t)a3;
- (void)setAuthenticatedDark:(BOOL)a3;
- (void)setFeedUpdateNeedsRetry:(BOOL)a3;
- (void)setFlags:(int64_t)a3;
- (void)setHasBeenSynced:(BOOL)a3;
- (void)setImporting:(BOOL)a3;
- (void)setIsExplicit:(BOOL)a3;
- (void)setIsTransitioningFromImplicit:(BOOL)a3;
- (void)setNeedsArtworkUpdate:(BOOL)a3;
- (void)setPodcastPID:(int64_t)a3;
- (void)suppressEpisodesWithBasisDate:(id)a3;
- (void)updateIsHiddenOrImplicitlyFollowed;
- (void)updateLastImplicitlyFollowedDate;
- (void)updateLastTouchDate;
@end

@implementation MTPodcast

- (BOOL)isPastAutodownloadOrEpisodeLimitDark
{
  v3 = +[PFClientUtil supportsDownloads];
  if (v3)
  {
    v3 = [(MTPodcast *)self subscribed];
    if (v3)
    {
      v3 = [(MTPodcast *)self currentEpisodeLimitAllowsAutomaticDownloads];
      if (v3)
      {
        v4 = [(MTPodcast *)self darkCountLocal];
        if (v4 >= [(MTPodcast *)self darkDownloadCountLimit])
        {
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v6 = v5;
          [(MTPodcast *)self lastTouchDate];
          v8 = v7;
          [(MTPodcast *)self darkDownloadTimeInterval];
          LOBYTE(v3) = v6 > v8 + v9;
        }

        else
        {
          LOBYTE(v3) = 0;
        }
      }
    }
  }

  return v3;
}

- (BOOL)currentEpisodeLimitAllowsAutomaticDownloads
{
  v2 = self;
  v3 = MTPodcastEpisodeLimit.allowsAutomaticDownloads.getter([(MTPodcast *)v2 episodeLimit]);

  return v3 & 1;
}

- (int64_t)darkDownloadCountLimit
{
  v2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v3 = [v2 objectForKey:@"kMTDarkDownloadCountOverride"];

  if (v3)
  {
    v4 = [v2 integerForKey:@"kMTDarkDownloadCountOverride"];
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (double)darkDownloadTimeInterval
{
  v2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v3 = [v2 objectForKey:@"kMTDarkDownloadDurationOverride"];

  if (v3)
  {
    [v2 doubleForKey:@"kMTDarkDownloadDurationOverride"];
    v5 = v4;
  }

  else
  {
    v5 = 1296000.0;
  }

  return v5;
}

- (BOOL)isSerialShowTypeInFeed
{
  v2 = [(MTPodcast *)self showTypeInFeed];
  v3 = [MTPodcast showTypeFromString:v2]== 2;

  return v3;
}

- (int64_t)showTypeInFeedResolvedValue
{
  v2 = [(MTPodcast *)self showTypeInFeed];
  v3 = [MTPodcast showTypeFromString:v2];

  return v3;
}

- (id)bestDescription
{
  v2 = [(MTPodcast *)self itemDescription];
  if ([v2 hasHTML])
  {
    v3 = [v2 stringBySmartlyStrippingHTML];

    v2 = v3;
  }

  return v2;
}

- (id)bestAvailableStoreCleanURL
{
  v3 = [(MTPodcast *)self storeCleanURL];
  v4 = [v3 length];

  if (v4)
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = [(MTPodcast *)self storeCleanURL];
    v7 = [v5 URLWithString:v6];
  }

  else
  {
    if (![MTStoreIdentifier isEmpty:[(MTPodcast *)self storeCollectionId]])
    {
      v8 = [MTPodcast storeCleanURLForAdamID:[(MTPodcast *)self storeCollectionId]];
    }

    v7 = 0;
  }

  return v7;
}

- (id)redirectURL
{
  v2 = [(MTPodcast *)self storeCollectionId];

  return [MTPodcast redirectURLForStoreCollectionId:v2];
}

- (id)smartPlayEpisode
{
  if (([(MTPodcast *)self subscribed]& 1) == 0 && [(MTPodcast *)self isSerialShowTypeInFeed]&& [(MTPodcast *)self latestSeasonNumber]>= 1 && ([(MTPodcast *)self lastDatePlayed], v3 == 0.0) && ([(MTPodcast *)self seasonTrailerInSeason:[(MTPodcast *)self latestSeasonNumber]], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
  }

  else
  {
    v6 = [(MTPodcast *)self nextEpisodeUuid];

    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = [(MTPodcast *)self managedObjectContext];
    v8 = [(MTPodcast *)self nextEpisodeUuid];
    v5 = [v7 episodeForUuid:v8];

    if (!v5)
    {
LABEL_9:
      v9 = objc_opt_new();
      [v9 setExcludeUnentitled:1];
      v5 = [(MTPodcast *)self newestEpisodeWithFilter:v9];
    }
  }

  return v5;
}

+ (id)predicateForPeriodicallyUpdatablePodcasts
{
  v2 = +[MTPodcast predicateForNotImplicitlyFollowedPodcasts];
  v3 = +[IMURLBag sharedInstance];
  v4 = [v3 syncValueForKey:@"podcast-skip-feed-update-interval-seconds"];
  [v4 doubleValue];
  v6 = v5;

  v7 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-v6];
  v8 = [MTPodcast predicateForPodcastsUpdatedBefore:v7];
  v9 = [v8 AND:v2];

  return v9;
}

- (id)metricsContentIdentifier
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([(MTPodcast *)self storeCollectionId])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", -[MTPodcast storeCollectionId](self, "storeCollectionId")];
    [v3 setObject:v4 forKeyedSubscript:@"adamId"];
  }

  v5 = [(MTPodcast *)self currentFeedURL];
  v6 = [v5 absoluteString];

  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"feedUrl"];
  }

  v7 = [(MTPodcast *)self title];
  if (v7)
  {
    [v3 setObject:v7 forKeyedSubscript:@"title"];
  }

  return v3;
}

- (id)metricsAdditionalData
{
  v10[7] = *MEMORY[0x1E69E9840];
  v10[0] = @"subscribed";
  v10[1] = @"updatedDate";
  v10[2] = @"playbackNewestToOldest";
  v10[3] = @"episodeLimit";
  v10[4] = @"darkCount";
  v10[5] = @"deletePlayedEpisodes";
  v10[6] = @"sortAscending";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:7];
  v4 = [(MTPodcast *)self dictionaryWithValuesForKeys:v3];
  v8 = @"settings";
  v9 = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)currentFeedURL
{
  v3 = [(MTPodcast *)self updatedFeedURL];
  v4 = [MTDBUtil isSupportedUrlString:v3];

  if (v4)
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = [(MTPodcast *)self updatedFeedURL];
LABEL_5:
    v9 = v6;
    v10 = [v5 URLWithString:v6];

    goto LABEL_7;
  }

  v7 = [(MTPodcast *)self feedURL];
  v8 = [MTDBUtil isSupportedUrlString:v7];

  if (v8)
  {
    v5 = MEMORY[0x1E695DFF8];
    v6 = [(MTPodcast *)self feedURL];
    goto LABEL_5;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

- (BOOL)deletePlayedEpisodesResolvedValue
{
  if ([(MTPodcast *)self deletePlayedEpisodes]== 0xFFFFFFFFLL)
  {
    v3 = +[MTPodcast deletePlayedEpisodesDefaultValue];
  }

  else
  {
    v3 = [(MTPodcast *)self deletePlayedEpisodes];
  }

  return v3 != 0;
}

+ (int64_t)deletePlayedEpisodesDefaultValue
{
  v2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
  v3 = [v2 integerForKey:@"MTPodcastDeletePlayedEpisodesDefaultKey"];

  return v3;
}

- (void)setPodcastPID:(int64_t)a3
{
  if ([(MTPodcast *)self podcastPID]!= a3)
  {
    [(MTPodcast *)self willChangeValueForKey:@"podcastPID"];
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    [(MTPodcast *)self setPrimitiveValue:v5 forKey:@"podcastPID"];

    [(MTPodcast *)self didChangeValueForKey:@"podcastPID"];
  }
}

- (void)updateLastImplicitlyFollowedDate
{
  v3 = [MEMORY[0x1E695DF00] now];
  [v3 timeIntervalSinceReferenceDate];
  [(MTPodcast *)self setLastImplicitlyFollowedDate:?];
}

- (void)updateIsHiddenOrImplicitlyFollowed
{
  if (([(MTPodcast *)self hidden]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(MTPodcast *)self isImplicitlyFollowed];
  }

  [(MTPodcast *)self setIsHiddenOrImplicitlyFollowed:v3];
}

- (BOOL)isShareable
{
  v2 = [(MTPodcast *)self feedURL];
  v3 = v2 != 0;

  return v3;
}

- (void)setFlags:(int64_t)a3
{
  if ([(MTPodcast *)self flags]!= a3)
  {
    [(MTPodcast *)self willChangeValueForKey:@"flags"];
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    [(MTPodcast *)self setPrimitiveValue:v5 forKey:@"flags"];

    [(MTPodcast *)self didChangeValueForKey:@"flags"];
  }
}

- (void)setIsExplicit:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTPodcast *)self flags];
  if (((((v5 & 0x100) == 0) ^ v3) & 1) == 0)
  {
    v6 = 256;
    if (!v3)
    {
      v6 = 0;
    }

    [(MTPodcast *)self setFlags:v5 & 0xFFFFFFFFFFFFFEFFLL | v6];
  }
}

- (void)setFeedUpdateNeedsRetry:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTPodcast *)self flags];
  if (((((v5 & 0x1000) == 0) ^ v3) & 1) == 0)
  {
    v6 = 4096;
    if (!v3)
    {
      v6 = 0;
    }

    [(MTPodcast *)self setFlags:v5 & 0xFFFFFFFFFFFFEFFFLL | v6];
  }
}

- (void)setHasBeenSynced:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTPodcast *)self flags];
  if (((((v5 & 4) == 0) ^ v3) & 1) == 0)
  {
    v6 = 4;
    if (!v3)
    {
      v6 = 0;
    }

    [(MTPodcast *)self setFlags:v5 & 0xFFFFFFFFFFFFFFFBLL | v6];
  }
}

- (void)setImporting:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTPodcast *)self flags];
  if (((((v5 & 0x20) == 0) ^ v3) & 1) == 0)
  {
    v6 = 32;
    if (!v3)
    {
      v6 = 0;
    }

    [(MTPodcast *)self setFlags:v5 & 0xFFFFFFFFFFFFFFDFLL | v6];
  }
}

- (void)setIsTransitioningFromImplicit:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTPodcast *)self flags];
  if (((((v5 & 0x10000) == 0) ^ v3) & 1) == 0)
  {
    v6 = 0x10000;
    if (!v3)
    {
      v6 = 0;
    }

    [(MTPodcast *)self setFlags:v5 & 0xFFFFFFFFFFFEFFFFLL | v6];
  }
}

- (void)setAuthenticatedDark:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTPodcast *)self isDark];
  v6 = [(MTPodcast *)self flags];
  if (((((v6 & 0x800) == 0) ^ v3) & 1) == 0)
  {
    v7 = 2048;
    if (!v3)
    {
      v7 = 0;
    }

    [(MTPodcast *)self setFlags:v6 & 0xFFFFFFFFFFFFF7FFLL | v7];
    v8 = [(MTPodcast *)self isDark];
    v9 = [(MTPodcast *)self latestExitFromDarkDownloads];
    if (v9)
    {
      v12 = [PFAnalyticsEvent darkDownloadsChangeWithWasDark:v5 isDark:v8 reason:1 previousExit:v9];
    }

    else
    {
      v10 = [MEMORY[0x1E695DF00] now];
      v12 = [PFAnalyticsEvent darkDownloadsChangeWithWasDark:v5 isDark:v8 reason:1 previousExit:v10];
    }

    v11 = objc_opt_new();
    [v11 sendEvent:v12];
  }
}

- (id)displayURL
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(MTPodcast *)self uuid];
  v4 = v3;
  v5 = @"null";
  if (v3)
  {
    v5 = v3;
  }

  v6 = [v2 stringWithFormat:@"podcasts://show?podcastUuid=%@", v5];

  v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];

  return v7;
}

- (int64_t)episodeLimitResolvedValue
{
  if ([(MTPodcast *)self episodeLimit]== 0xFFFFFFFFLL)
  {

    return +[MTPodcast episodeLimitDefaultValue];
  }

  else
  {
    result = [(MTPodcast *)self episodeLimit];
    if (result == 0x100000001)
    {
      if ([(MTPodcast *)self isSerialShowTypeInFeed]&& !os_feature_enabled_serial_sort_auto_downloads())
      {
        return 0;
      }

      else
      {
        v4 = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
        v5 = [v4 episodeLimitForKey:@"MTPodcastEpisodeLimitDefaultKey"];

        return v5;
      }
    }
  }

  return result;
}

- (id)earliestDateForFeedFetch:(id)a3
{
  v4 = MEMORY[0x1E695DF00];
  v5 = a3;
  [(MTPodcast *)self lastFetchedDate];
  v6 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  [(MTPodcast *)self calculatedUpdateInterval];
  v7 = [v6 dateByAddingTimeInterval:?];
  v8 = [v5 laterDate:v7];

  return v8;
}

- (double)calculatedUpdateInterval
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(MTPodcast *)self consecutiveFeedFetchErrors];
  if (v3 > 5)
  {
    v7 = v3;
    v8 = _MTLogCategoryFeedUpdate();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7 > 0xA)
    {
      if (v9)
      {
        v11 = [(MTPodcast *)self feedURL];
        v13 = 138412546;
        v14 = v11;
        v15 = 2048;
        v16 = [(MTPodcast *)self storeCollectionId];
        _os_log_impl(&dword_1D8CEC000, v8, OS_LOG_TYPE_DEFAULT, "calculatedUpdateInterval for podcast with feedUrl %@ and storeId %lld: 1 week", &v13, 0x16u);
      }

      result = 604800.0;
    }

    else
    {
      if (v9)
      {
        v10 = [(MTPodcast *)self feedURL];
        v13 = 138412546;
        v14 = v10;
        v15 = 2048;
        v16 = [(MTPodcast *)self storeCollectionId];
        _os_log_impl(&dword_1D8CEC000, v8, OS_LOG_TYPE_DEFAULT, "calculatedUpdateInterval for podcast with feedUrl %@ and storeId %lld: 1 day", &v13, 0x16u);
      }

      result = 86400.0;
    }
  }

  else
  {
    v4 = _MTLogCategoryFeedUpdate();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(MTPodcast *)self feedURL];
      v13 = 138412546;
      v14 = v5;
      v15 = 2048;
      v16 = [(MTPodcast *)self storeCollectionId];
      _os_log_impl(&dword_1D8CEC000, v4, OS_LOG_TYPE_DEFAULT, "calculatedUpdateInterval for podcast with feedUrl %@ and storeId %lld: 4 hours", &v13, 0x16u);
    }

    +[MTPodcast defaultUpdateInterval];
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

+ (int64_t)episodeLimitDefaultValue
{
  v2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
  v3 = [v2 episodeLimitForKey:@"MTPodcastEpisodeLimitDefaultKey"];

  return v3;
}

+ (BOOL)autoDownloadDefaultValue
{
  v2 = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
  v3 = [v2 integerForKey:@"MTPodcastAutoDownloadStateDefaultKey"] != 0;

  return v3;
}

+ (int64_t)showTypeFromString:(id)a3
{
  v3 = a3;
  v4 = +[MTPodcast defaultShowType];
  if (v3)
  {
    if ([v3 caseInsensitiveCompare:@"serial"])
    {
      if ([v3 caseInsensitiveCompare:@"episodic"])
      {
        if (![v3 caseInsensitiveCompare:@"oldestToNewest"])
        {
          v4 = 4;
        }
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 2;
    }
  }

  return v4;
}

+ (BOOL)sortOrderAscForShowType:(int64_t)a3
{
  if (a3 == 1)
  {
    return 0;
  }

  if (a3 == 4 || a3 == 2)
  {
    return 1;
  }

  return [MTPodcast defaultShowType:v3]!= 1;
}

+ (id)propertiesToObserveForDownloadableEpisodes
{
  v7[12] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v7[0] = @"flags";
  v7[1] = @"feedURL";
  v7[2] = @"sortOrder";
  v7[3] = @"hidden";
  v7[4] = @"playbackNewestToOldest";
  v7[5] = @"episodeLimit";
  v7[6] = @"nextEpisodeUuid";
  v7[7] = @"deletePlayedEpisodes";
  v7[8] = @"sortAscending";
  v7[9] = @"showTypeSetting";
  v7[10] = @"showTypeInFeed";
  v7[11] = @"episodes";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:12];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)isDark
{
  if ([(MTPodcast *)self isAuthenticatedDark])
  {
    return 1;
  }

  return [(MTPodcast *)self isPastAutodownloadOrEpisodeLimitDark];
}

- (void)resetGoDarkWithReason:(unint64_t)a3
{
  if ([(MTPodcast *)self darkCount]>= 5)
  {
    v5 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
    [v5 markSubscriptionSyncDirty:1 for:{-[MTPodcast syncType](self, "syncType")}];
  }

  if ([(MTPodcast *)self isDark])
  {
    v6 = [(MTPodcast *)self latestExitFromDarkDownloads];
    if (v6)
    {
      v7 = [PFAnalyticsEvent darkDownloadsChangeWithWasDark:1 isDark:0 reason:a3 previousExit:v6];
    }

    else
    {
      v8 = [MEMORY[0x1E695DF00] now];
      v7 = [PFAnalyticsEvent darkDownloadsChangeWithWasDark:1 isDark:0 reason:a3 previousExit:v8];
    }

    v9 = objc_opt_new();
    [v9 sendEvent:v7];

    v10 = [MEMORY[0x1E695DF00] now];
    [(MTPodcast *)self suppressEpisodesWithBasisDate:v10];
    [(MTPodcast *)self setLatestExitFromDarkDownloads:v10];
  }

  [(MTPodcast *)self setDarkCount:0];
  [(MTPodcast *)self setDarkCountLocal:0];

  [(MTPodcast *)self updateLastTouchDate];
}

- (void)updateLastTouchDate
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];

  [(MTPodcast *)self setLastTouchDate:?];
}

- (void)suppressEpisodesWithBasisDate:(id)a3
{
  v40[4] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695D560] batchUpdateRequestWithEntityName:@"MTEpisode"];
  v6 = MEMORY[0x1E696AB28];
  v7 = [(MTPodcast *)self uuid];
  v8 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:v7];
  v40[0] = v8;
  v9 = [MTEpisode predicateForDownloadBehavior:0];
  v40[1] = v9;
  v29 = v4;
  v10 = [MTEpisode predicateForEpisodesPublishedBeforeDate:v4];
  v40[2] = v10;
  v11 = [MTEpisode predicateForEpisodesWithinLevel:[(MTPodcast *)self levelForDownloadsOnSubscription]];
  v12 = [v11 NOT];
  v40[3] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:4];
  v14 = [v6 andPredicateWithSubpredicates:v13];
  [v5 setPredicate:v14];

  v38 = @"downloadBehavior";
  v39 = &unk_1F54BDE50;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  [v5 setPropertiesToUpdate:v15];

  [v5 setResultType:1];
  v16 = [(MTPodcast *)self managedObjectContext];
  v30 = 0;
  v17 = [v16 executeRequest:v5 error:&v30];
  v18 = v30;

  v19 = [v17 result];

  if (v19)
  {
    v36 = *MEMORY[0x1E695D4D0];
    v20 = [v17 result];
    v37 = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];

    v22 = MEMORY[0x1E695D628];
    v23 = [(MTPodcast *)self managedObjectContext];
    v35 = v23;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    [v22 mergeChangesFromRemoteContextSave:v21 intoContexts:v24];

    v25 = _MTLogCategoryDatabase();
    v26 = v29;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v27 = [v17 result];
      *buf = 138412546;
      v32 = v29;
      v33 = 2112;
      v34 = v27;
      _os_log_impl(&dword_1D8CEC000, v25, OS_LOG_TYPE_INFO, "Batch suppressed episodes because of basis date (%@): %@", buf, 0x16u);
    }
  }

  else
  {
    v21 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v26 = v29;
      v32 = v29;
      v33 = 2112;
      v34 = v18;
      _os_log_impl(&dword_1D8CEC000, v21, OS_LOG_TYPE_ERROR, "Failed to suppressed episodes with basis date. (%@): %@", buf, 0x16u);
    }

    else
    {
      v26 = v29;
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (unint64_t)levelForDownloadsOnSubscription
{
  v2 = [(MTPodcast *)self isSerialShowTypeInFeed];
  v3 = &kMaxSubscribeDownloadForSerialWithSeasons;
  if (!v2)
  {
    v3 = &kMaxSubscribeDownloadForNonSerialShow;
  }

  return *v3;
}

+ (id)insertNewPodcastInManagedObjectContext:(id)a3 subscribed:(BOOL)a4 feedUrl:(id)a5 showType:(int64_t)a6 showTypeInFeed:(id)a7 title:(id)a8 author:(id)a9 provider:(id)a10 imageUrl:(id)a11 description:(id)a12 displayType:(id)a13 showSpecificUpsellCopy:(id)a14
{
  v31 = a4;
  v17 = a3;
  v18 = a5;
  v36 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v34 = a12;
  v23 = a13;
  v24 = a14;
  v25 = [v17 podcastForFeedUrl:v18];
  [v25 setHidden:0];
  v35 = v17;
  if (!v25)
  {
    v25 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"MTPodcast" inManagedObjectContext:v17];
    v26 = [MEMORY[0x1E696AEC0] UUID];
    [v25 setUuid:v26];

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [v25 setAddedDate:?];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [v25 setModifiedDate:?];
    [v25 setUpdateInterval:0];
    [v25 updateLastTouchDate];
    [v25 setFeedURL:v18];
    [v25 setAuthor:v20];
    [v25 setProvider:v21];
    [v25 setImageURL:v22];
    [v25 setTitle:v19];
    [v25 setItemDescription:v34];
    [v25 setSubscribed:v31];
    [v25 setDeletePlayedEpisodes:0xFFFFFFFFLL];
    [v25 setNeedsArtworkUpdate:1];
    [v25 setDisplayType:v23];
    [v25 setShowSpecificUpsellCopy:v24];
    if (v36)
    {
      [v25 setShowTypeInFeed:?];
    }

    if (v31)
    {
      [v25 applyDefaultFollowedShowSettingsFor:a6];
    }

    else
    {
      [v25 applyDefaultUnfollowedShowSettings];
    }

    [v25 setUpdatedDate:0.0];
    [v25 setSortOrder:{objc_msgSend(v17, "nextSortOrderForPodcasts")}];
    [a1 prepareForPlatform:v25];
  }

  v27 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v27 markSubscriptionSyncDirty:1 for:{objc_msgSend(v25, "syncType")}];

  v28 = objc_opt_new();
  v29 = [v25 feedURL];
  [v28 resetVersionForFeedUrl:v29];

  return v25;
}

- (id)seasonNumbers
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__5;
  v14 = __Block_byref_object_dispose__5;
  v15 = [MEMORY[0x1E695DEC8] array];
  v3 = [(MTPodcast *)self managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__MTPodcast_Core__seasonNumbers__block_invoke;
  v7[3] = &unk_1E856A118;
  v7[4] = self;
  v4 = v3;
  v8 = v4;
  v9 = &v10;
  [v4 performBlockAndWait:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);

  return v5;
}

void __32__MTPodcast_Core__seasonNumbers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchRequestForDistinctSeasons];
  v3 = *(a1 + 40);
  v9 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v9];
  v5 = v9;
  [v5 logAndThrow:0];
  v6 = [v4 valueForKey:@"seasonNumber"];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (id)_fetchRequestForDistinctSeasons
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [(MTPodcast *)self uuid];
  v3 = [MTEpisode predicateForEpisodesWithSeasonNumbersOnPodcastUuid:v2];

  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"seasonNumber" ascending:1];
  v5 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"MTEpisode"];
  [v5 setResultType:2];
  v11[0] = @"seasonNumber";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  [v5 setPropertiesToFetch:v6];

  [v5 setReturnsDistinctResults:1];
  [v5 setPredicate:v3];
  v10 = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  [v5 setSortDescriptors:v7];

  v8 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)podcastUuidForEpisodeUuid:(id)a3 ctx:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 length])
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__6;
    v17 = __Block_byref_object_dispose__6;
    v18 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__MTPodcast_PFDB__podcastUuidForEpisodeUuid_ctx___block_invoke;
    v9[3] = &unk_1E856A118;
    v10 = v6;
    v11 = v5;
    v12 = &v13;
    [v10 performBlockAndWait:v9];
    v7 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __49__MTPodcast_PFDB__podcastUuidForEpisodeUuid_ctx___block_invoke(void *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = [MTEpisode predicateForEpisodeUuid:a1[5]];
  v11[0] = @"podcastUuid";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v5 = [v2 objectDictionariesInEntity:@"MTEpisode" predicate:v3 sortDescriptors:MEMORY[0x1E695E0F0] propertiesToFetch:v4 includeObjectId:0];

  v6 = [v5 firstObject];
  v7 = [v6 objectForKeyedSubscript:@"podcastUuid"];
  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setNeedsArtworkUpdate:(BOOL)a3
{
  v3 = a3;
  if ([(MTPodcast *)self needsArtworkUpdate]!= a3)
  {
    v5 = [(MTPodcast *)self flags];
    if ((v5 & 1) != v3)
    {

      [(MTPodcast *)self setFlags:v5 & 0xFFFFFFFFFFFFFFFELL | v3];
    }
  }
}

- (id)seasonTrailerInSeason:(int64_t)a3
{
  v5 = objc_opt_new();
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6;
  v22 = __Block_byref_object_dispose__6;
  v23 = 0;
  v6 = [(MTPodcast *)self managedObjectContext];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__MTPodcast_PFDB__seasonTrailerInSeason___block_invoke;
  v12[3] = &unk_1E856A928;
  v7 = v5;
  v13 = v7;
  v14 = self;
  v16 = &v18;
  v17 = a3;
  v8 = v6;
  v15 = v8;
  [v8 performBlockAndWait:v12];
  v9 = v19[5];
  if (v9)
  {
    v10 = [v9 firstObject];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v18, 8);

  return v10;
}

void __41__MTPodcast_PFDB__seasonTrailerInSeason___block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) predicateForPodcast:*(a1 + 40)];
  v2 = [MTEpisode predicateForEpisodeType:1];
  v3 = [MTEpisode predicateForSeasonNumberWithNoEpisodeNumber:*(a1 + 64)];
  v4 = [v10 AND:v2];
  v5 = [v4 AND:v3];

  v6 = [MTEpisode sortDescriptorsForPubDateAscending:0];
  v7 = [*(a1 + 48) objectsInEntity:@"MTEpisode" predicate:v5 sortDescriptors:v6 returnsObjectsAsFaults:0 limit:1];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)mostRecentlyPlayedEpisodeWithFilter:(id)a3
{
  v4 = a3;
  if ([v4 playStateFilter])
  {
    v5 = [v4 copy];

    [v5 setPlayStateFilter:0];
    v4 = v5;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  objc_initWeak(&location, self);
  v6 = [(MTPodcast *)self managedObjectContext];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__MTPodcast_EpisodeLookup__mostRecentlyPlayedEpisodeWithFilter___block_invoke;
  v11[3] = &unk_1E856A950;
  objc_copyWeak(&v15, &location);
  v7 = v4;
  v12 = v7;
  v8 = v6;
  v13 = v8;
  v14 = &v17;
  [v8 performBlockAndWait:v11];
  v9 = v18[5];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v17, 8);

  return v9;
}

void __64__MTPodcast_EpisodeLookup__mostRecentlyPlayedEpisodeWithFilter___block_invoke(uint64_t a1)
{
  v19[3] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [*(a1 + 32) predicateForPodcast:WeakRetained];
  v4 = +[MTEpisode predicateForHasBeenPlayed];
  v5 = [v3 AND:v4];

  v6 = [MTEpisode predicateForExternalType:0];
  v7 = [v5 AND:v6];

  v8 = +[MTEpisode predicateForHidingFuturePlayedTimestamps];
  v9 = [v7 AND:v8];

  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastDatePlayed" ascending:0];
  v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"playState" ascending:{0, v10}];
  v19[1] = v11;
  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"pubDate" ascending:1];
  v19[2] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];

  v14 = [*(a1 + 40) objectsInEntity:@"MTEpisode" predicate:v9 sortDescriptors:v13 returnsObjectsAsFaults:0 limit:1];
  v15 = [v14 firstObject];
  v16 = *(*(a1 + 48) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = *MEMORY[0x1E69E9840];
}

- (id)highestNumberedEpisodePublishedBefore:(double)a3 filter:(id)a4
{
  v4 = [(MTPodcast *)self _episodesNextTo:0 after:0 usePlayOrder:0 sortAsc:1 sortByEpisodeNumber:a4 filter:1 limit:a3];
  v5 = [v4 firstObject];

  return v5;
}

- (id)lowestNumberedEpisodePublishedAfter:(double)a3 filter:(id)a4
{
  v4 = [(MTPodcast *)self _episodesNextTo:1 after:0 usePlayOrder:1 sortAsc:1 sortByEpisodeNumber:a4 filter:1 limit:a3];
  v5 = [v4 firstObject];

  return v5;
}

- (id)episodePublishedBefore:(double)a3 filter:(id)a4
{
  v4 = [(MTPodcast *)self _episodesNextTo:0 after:0 usePlayOrder:1 sortAsc:0 sortByEpisodeNumber:a4 filter:1 limit:a3];
  v5 = [v4 firstObject];

  return v5;
}

- (id)episodePublishedAfter:(double)a3 filter:(id)a4
{
  v4 = [(MTPodcast *)self _episodesNextTo:1 after:0 usePlayOrder:0 sortAsc:0 sortByEpisodeNumber:a4 filter:1 limit:a3];
  v5 = [v4 firstObject];

  return v5;
}

- (id)highestNumberedPlayedEpisodeWithFilter:(id)a3
{
  v4 = a3;
  v5 = [(MTPodcast *)self managedObjectContext];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7;
  v23 = __Block_byref_object_dispose__7;
  v24 = 0;
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __67__MTPodcast_EpisodeLookup__highestNumberedPlayedEpisodeWithFilter___block_invoke;
  v14 = &unk_1E856A978;
  v6 = v4;
  v15 = v6;
  v16 = self;
  v18 = &v19;
  v7 = v5;
  v17 = v7;
  [v7 performBlockAndWait:&v11];
  v8 = v20[5];
  if (v8)
  {
    v9 = [v8 firstObject];
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __67__MTPodcast_EpisodeLookup__highestNumberedPlayedEpisodeWithFilter___block_invoke(uint64_t a1)
{
  v10 = [*(a1 + 32) predicateForPodcast:*(a1 + 40)];
  v2 = [MTEpisode predicateForVisuallyPlayed:1];
  v3 = +[MTEpisode predicateForHasEpisodeNumber];
  v4 = [v10 AND:v2];
  v5 = [v4 AND:v3];

  v6 = [MTEpisode sortDescriptorsForSeasonAndEpisodeNumberAscending:0];
  v7 = [*(a1 + 48) objectsInEntity:@"MTEpisode" predicate:v5 sortDescriptors:v6 returnsObjectsAsFaults:0 limit:1];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)nextNumberedUnplayedEpisodeAfter:(id)a3 filter:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MTPodcast *)self managedObjectContext];
  if ([v6 isVisuallyPlayed] && objc_msgSend(v6, "episodeNumber") && objc_msgSend(v6, "episodeNumber") >= 1)
  {
    v9 = v6;
  }

  else
  {
    v9 = [(MTPodcast *)self highestNumberedPlayedEpisodeWithFilter:v7];
  }

  v10 = v9;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__7;
  v27 = __Block_byref_object_dispose__7;
  v28 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__MTPodcast_EpisodeLookup__nextNumberedUnplayedEpisodeAfter_filter___block_invoke;
  v17[3] = &unk_1E856A9A0;
  v11 = v7;
  v18 = v11;
  v19 = self;
  v12 = v10;
  v20 = v12;
  v22 = &v23;
  v13 = v8;
  v21 = v13;
  [v13 performBlockAndWait:v17];
  v14 = v24[5];
  if (v14)
  {
    v15 = [v14 firstObject];
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v23, 8);

  return v15;
}

void __68__MTPodcast_EpisodeLookup__nextNumberedUnplayedEpisodeAfter_filter___block_invoke(uint64_t a1)
{
  v13 = [*(a1 + 32) predicateForPodcast:*(a1 + 40)];
  v2 = [MTEpisode predicateForEpisodeTypeFilter:5];
  v3 = [v13 AND:v2];
  v4 = [MTEpisode predicateForVisuallyPlayed:0];
  v5 = [v3 AND:v4];

  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = +[MTEpisode predicateForEpisodesWithSeasonAndEpisodeNumbersGreaterThanOrEqualTo:seasonNumber:](MTEpisode, "predicateForEpisodesWithSeasonAndEpisodeNumbersGreaterThanOrEqualTo:seasonNumber:", [v6 episodeNumber], objc_msgSend(*(a1 + 48), "seasonNumber"));
    v8 = [v5 AND:v7];

    v5 = v8;
  }

  v9 = [MTEpisode sortDescriptorsForSeasonAndEpisodeNumberAscending:1];
  v10 = [*(a1 + 56) objectsInEntity:@"MTEpisode" predicate:v5 sortDescriptors:v9 returnsObjectsAsFaults:0 limit:1];
  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (id)oldestEpisodeInLatestSeasonOrShowWithFilter:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  v5 = [(MTPodcast *)self managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__MTPodcast_EpisodeLookup__oldestEpisodeInLatestSeasonOrShowWithFilter___block_invoke;
  v9[3] = &unk_1E856A9C8;
  v9[4] = self;
  v11 = &v12;
  v6 = v4;
  v10 = v6;
  [v5 performBlockAndWait:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __72__MTPodcast_EpisodeLookup__oldestEpisodeInLatestSeasonOrShowWithFilter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) latestSeasonNumber];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v2 < 1)
  {
    v8 = [v3 lowestNumberedEpisodeWithFilter:*(a1 + 40)];
    v10 = *(*(a1 + 48) + 8);
    v9 = *(v10 + 40);
    *(v10 + 40) = v8;
  }

  else
  {
    v12 = [v3 episodesInSeasonNumber:? lowestNumberedEpisodesFirst:? filter:? limit:?];
    v5 = [v12 firstObject];
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v9 = v12;
  }

  return MEMORY[0x1EEE66BB8](v8, v9);
}

- (id)lowestNumberedEpisodeWithFilter:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  v21 = 0;
  objc_initWeak(&location, self);
  v5 = [(MTPodcast *)self managedObjectContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__MTPodcast_EpisodeLookup__lowestNumberedEpisodeWithFilter___block_invoke;
  v10[3] = &unk_1E856A950;
  objc_copyWeak(&v14, &location);
  v6 = v4;
  v11 = v6;
  v7 = v5;
  v12 = v7;
  v13 = &v16;
  [v7 performBlockAndWait:v10];
  v8 = v17[5];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v16, 8);

  return v8;
}

void __60__MTPodcast_EpisodeLookup__lowestNumberedEpisodeWithFilter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [*(a1 + 32) predicateForPodcast:WeakRetained];
  v3 = +[MTEpisode predicateForHidingFuturePlayedTimestamps];
  v4 = [v2 AND:v3];

  v5 = [MTEpisode predicateForExternalType:0];
  v6 = [v4 AND:v5];

  v7 = *(a1 + 40);
  v8 = [MTEpisode sortDescriptorsForEpisodeNumberAscending:1];
  v9 = [v7 objectsInEntity:@"MTEpisode" predicate:v6 sortDescriptors:v8 returnsObjectsAsFaults:0 limit:1];

  v10 = [v9 firstObject];
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

- (id)_latestOrOldestEpisode:(BOOL)a3 sortDate:(unint64_t)a4 filter:(id)a5
{
  v8 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__7;
  v26 = __Block_byref_object_dispose__7;
  v27 = 0;
  objc_initWeak(&location, self);
  v9 = [(MTPodcast *)self managedObjectContext];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__MTPodcast_EpisodeLookup___latestOrOldestEpisode_sortDate_filter___block_invoke;
  v14[3] = &unk_1E856A9F0;
  objc_copyWeak(v19, &location);
  v10 = v8;
  v19[1] = a4;
  v15 = v10;
  v16 = self;
  v20 = a3;
  v11 = v9;
  v17 = v11;
  v18 = &v22;
  [v11 performBlockAndWait:v14];
  v12 = v23[5];

  objc_destroyWeak(v19);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v22, 8);

  return v12;
}

void __67__MTPodcast_EpisodeLookup___latestOrOldestEpisode_sortDate_filter___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [*(a1 + 32) predicateForPodcast:?];
  v3 = +[MTEpisode predicateForHidingFuturePlayedTimestamps];
  v4 = [v2 AND:v3];

  v5 = [MTEpisode predicateForExternalType:0];
  v6 = [v4 AND:v5];

  v7 = *(a1 + 72);
  v8 = *(a1 + 40);
  v9 = objc_opt_class();
  v10 = *(a1 + 80);
  if (v7)
  {
    [v9 sortDescriptorsForNewestToOldestFirstTimeAvailable:v10];
  }

  else
  {
    [v9 sortDescriptorsForNewestToOldest:v10];
  }
  v11 = ;
  v12 = [*(a1 + 48) objectsInEntity:@"MTEpisode" predicate:v6 sortDescriptors:v11 returnsObjectsAsFaults:0 limit:1];
  v13 = [v12 firstObject];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

- (id)_episodesNextTo:(double)a3 after:(BOOL)a4 usePlayOrder:(BOOL)a5 sortAsc:(BOOL)a6 sortByEpisodeNumber:(BOOL)a7 filter:(id)a8 limit:(int64_t)a9
{
  v16 = a8;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__7;
  v37 = __Block_byref_object_dispose__7;
  v38 = 0;
  objc_initWeak(&location, self);
  v17 = [(MTPodcast *)self managedObjectContext];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __104__MTPodcast_EpisodeLookup___episodesNextTo_after_usePlayOrder_sortAsc_sortByEpisodeNumber_filter_limit___block_invoke;
  v22[3] = &unk_1E856AA18;
  objc_copyWeak(v27, &location);
  v27[1] = *&a3;
  v28 = a5;
  v29 = a4;
  v18 = v16;
  v30 = a7;
  v31 = a6;
  v23 = v18;
  v24 = self;
  v26 = &v33;
  v19 = v17;
  v25 = v19;
  v27[2] = a9;
  [v19 performBlockAndWait:v22];
  v20 = v34[5];

  objc_destroyWeak(v27);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v33, 8);

  return v20;
}

void __104__MTPodcast_EpisodeLookup___episodesNextTo_after_usePlayOrder_sortAsc_sortByEpisodeNumber_filter_limit___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*(a1 + 72)];
  if (*(a1 + 88))
  {
    if ([WeakRetained playbackNewestToOldest] == *(a1 + 89))
    {
LABEL_3:
      v3 = [MEMORY[0x1E696AE18] predicateForDateKey:@"pubDate" isLessThanDate:v2];
      v4 = 1;
      goto LABEL_6;
    }
  }

  else if ((*(a1 + 89) & 1) == 0)
  {
    goto LABEL_3;
  }

  v3 = [MEMORY[0x1E696AE18] predicateForDateKey:@"pubDate" isGreaterThanDate:v2];
  v4 = 0;
LABEL_6:
  v5 = [*(a1 + 32) predicateForPodcast:WeakRetained];
  v6 = [v5 AND:v3];
  v7 = [MTEpisode predicateForExternalType:0];
  v8 = [v6 AND:v7];

  if (*(a1 + 90) == 1)
  {
    v9 = [MTEpisode sortDescriptorsForSeasonAndEpisodeNumberAscending:*(a1 + 91)];
    v10 = +[MTEpisode predicateForHasEpisodeNumber];
    v11 = [v8 AND:v10];

    v8 = v11;
  }

  else
  {
    v12 = *(a1 + 40);
    v9 = [objc_opt_class() sortDescriptorsForNewestToOldest:(v4 | *(a1 + 91)) & 1];
  }

  v13 = [*(a1 + 48) objectsInEntity:@"MTEpisode" predicate:v8 sortDescriptors:v9 returnsObjectsAsFaults:0 limit:*(a1 + 80)];
  v14 = *(*(a1 + 56) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

- (int64_t)latestSeasonNumber
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = [(MTPodcast *)self managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__MTPodcast_EpisodeLookup__latestSeasonNumber__block_invoke;
  v7[3] = &unk_1E856A118;
  v7[4] = self;
  v4 = v3;
  v8 = v4;
  v9 = &v10;
  [v4 performBlockAndWait:v7];
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

void __46__MTPodcast_EpisodeLookup__latestSeasonNumber__block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) uuid];
  v3 = [MTEpisode predicateForEpisodesWithSeasonNumbersOnPodcastUuid:v2];

  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"seasonNumber" ascending:0];
  v5 = *(a1 + 40);
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v7 = [v5 objectsInEntity:@"MTEpisode" predicate:v3 sortDescriptors:v6 returnsObjectsAsFaults:0 limit:1];

  v8 = [v7 firstObject];
  v9 = [v8 valueForKey:@"seasonNumber"];
  *(*(*(a1 + 48) + 8) + 24) = [v9 longLongValue];

  v10 = *MEMORY[0x1E69E9840];
}

- (id)episodesInLatestSeasonWithLimit:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__7;
  v13 = __Block_byref_object_dispose__7;
  v14 = 0;
  v5 = [(MTPodcast *)self managedObjectContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__MTPodcast_EpisodeLookup__episodesInLatestSeasonWithLimit___block_invoke;
  v8[3] = &unk_1E856A0C8;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = a3;
  [v5 performBlockAndWait:v8];
  v6 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __60__MTPodcast_EpisodeLookup__episodesInLatestSeasonWithLimit___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) episodesInSeasonNumber:objc_msgSend(*(a1 + 32) oldestEpisodesFirst:"latestSeasonNumber") excludePlayed:objc_msgSend(*(a1 + 32) excludeExplicit:"sortAscending") episodeTypeFilter:0 limit:{0, 1, *(a1 + 48)}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)episodesInSeasonNumber:(int64_t)a3
{
  if (a3 < 1)
  {
    v6 = 0;
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__7;
    v13 = __Block_byref_object_dispose__7;
    v14 = 0;
    v5 = [(MTPodcast *)self managedObjectContext];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__MTPodcast_EpisodeLookup__episodesInSeasonNumber___block_invoke;
    v8[3] = &unk_1E856A0C8;
    v8[4] = self;
    v8[5] = &v9;
    v8[6] = a3;
    [v5 performBlockAndWait:v8];
    v6 = v10[5];

    _Block_object_dispose(&v9, 8);
  }

  return v6;
}

uint64_t __51__MTPodcast_EpisodeLookup__episodesInSeasonNumber___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) episodesInSeasonNumber:*(a1 + 48) oldestEpisodesFirst:{objc_msgSend(*(a1 + 32), "sortAscending")}];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (id)episodesInSeasonNumber:(int64_t)a3 oldestEpisodesFirst:(BOOL)a4 filter:(id)a5 limit:(int64_t)a6
{
  v10 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__7;
  v28 = __Block_byref_object_dispose__7;
  v29 = 0;
  v11 = [(MTPodcast *)self managedObjectContext];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__MTPodcast_EpisodeLookup__episodesInSeasonNumber_oldestEpisodesFirst_filter_limit___block_invoke;
  v16[3] = &unk_1E856AA40;
  v21 = a3;
  v12 = v10;
  v17 = v12;
  v18 = self;
  v23 = a4;
  v20 = &v24;
  v13 = v11;
  v19 = v13;
  v22 = a6;
  [v13 performBlockAndWait:v16];
  v14 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v14;
}

void __84__MTPodcast_EpisodeLookup__episodesInSeasonNumber_oldestEpisodesFirst_filter_limit___block_invoke(uint64_t a1)
{
  v8 = [MTEpisode predicateForSeasonNumber:*(a1 + 64)];
  v2 = [*(a1 + 32) predicateForPodcast:*(a1 + 40)];
  v3 = [v2 AND:v8];
  v4 = [MTEpisode sortDescriptorsForSeasonsWithOldestEpisodesFirst:*(a1 + 80)];
  v5 = [*(a1 + 48) objectsInEntity:@"MTEpisode" predicate:v3 sortDescriptors:v4 returnsObjectsAsFaults:0 limit:*(a1 + 72)];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)episodesInSeasonNumber:(int64_t)a3 lowestNumberedEpisodesFirst:(BOOL)a4 filter:(id)a5 limit:(int64_t)a6
{
  v10 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__7;
  v28 = __Block_byref_object_dispose__7;
  v29 = 0;
  v11 = [(MTPodcast *)self managedObjectContext];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __92__MTPodcast_EpisodeLookup__episodesInSeasonNumber_lowestNumberedEpisodesFirst_filter_limit___block_invoke;
  v16[3] = &unk_1E856AA40;
  v21 = a3;
  v12 = v10;
  v17 = v12;
  v18 = self;
  v23 = a4;
  v20 = &v24;
  v13 = v11;
  v19 = v13;
  v22 = a6;
  [v13 performBlockAndWait:v16];
  v14 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v14;
}

void __92__MTPodcast_EpisodeLookup__episodesInSeasonNumber_lowestNumberedEpisodesFirst_filter_limit___block_invoke(uint64_t a1)
{
  v8 = [MTEpisode predicateForSeasonNumber:*(a1 + 64)];
  v2 = [*(a1 + 32) predicateForPodcast:*(a1 + 40)];
  v3 = [v2 AND:v8];
  v4 = [MTEpisode sortDescriptorsForEpisodeNumberAscending:*(a1 + 80)];
  v5 = [*(a1 + 48) objectsInEntity:@"MTEpisode" predicate:v3 sortDescriptors:v4 returnsObjectsAsFaults:0 limit:*(a1 + 72)];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

+ (unint64_t)totalUnplayedCount
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = +[MTDB sharedInstance];
  v3 = [v2 mainOrPrivateContext];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MTPodcast_Library__totalUnplayedCount__block_invoke;
  v7[3] = &unk_1E856A4F0;
  v9 = &v10;
  v4 = v3;
  v8 = v4;
  [v4 performBlockAndWait:v7];
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

void __40__MTPodcast_Library__totalUnplayedCount__block_invoke(uint64_t a1)
{
  v2 = +[MTEpisode predicateForEpisodesOnUnplayedTab];
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) countOfObjectsInEntity:@"MTEpisode" predicate:v2];
}

- (id)shareURL
{
  v3 = [(MTPodcast *)self bestAvailableStoreCleanURL];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(MTPodcast *)self currentFeedURL];
  }

  v6 = v5;

  return v6;
}

+ (id)storeCleanURLForAdamID:(int64_t)a3
{
  if ([MTStoreIdentifier isEmpty:?])
  {
    v4 = 0;
  }

  else
  {
    v5 = +[IMURLBag sharedInstance];
    v6 = [v5 syncStringForKey:@"viewPodcast"];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 stringByAppendingFormat:@"/id%lld", a3];
      v4 = [MEMORY[0x1E695DFF8] URLWithString:v8];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)productURLForStoreCollectionId:(int64_t)a3 storeTrackId:(int64_t)a4
{
  v5 = [MTPodcast storeCleanURLForAdamID:a3];
  if ([MTStoreIdentifier isNotEmpty:a4])
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", a4];
    v7 = [v5 pf_URLByAppendingQueryParameterKey:@"i" value:v6];
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (id)twitterShareURL
{
  v3 = [(MTPodcast *)self storeCleanURL];
  if (v3)
  {
    v4 = MEMORY[0x1E695DFF8];
    v5 = [(MTPodcast *)self storeShortURL];
    v6 = [v4 URLWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)bestFeedURLExcludingRedirectURL:(BOOL)a3
{
  v3 = a3;
  v38 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(MTPodcast *)self redirectURL];
  v7 = [v6 absoluteString];

  if ([(__CFString *)v7 length]&& !v3)
  {
    [v5 addObject:v7];
  }

  v8 = [(MTPodcast *)self updatedFeedURL];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [(MTPodcast *)self updatedFeedURL];
    [v5 addObject:v10];
  }

  v11 = [(MTPodcast *)self feedURL];
  v12 = [v11 length];

  if (v12)
  {
    v13 = [(MTPodcast *)self feedURL];
    [v5 addObject:v13];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v32;
LABEL_10:
    v18 = 0;
    while (1)
    {
      if (*v32 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v31 + 1) + 8 * v18);
      if (!v3 || ![*(*(&v31 + 1) + 8 * v18) isEqualToString:{v7, v31}])
      {
        break;
      }

      if (v16 == ++v18)
      {
        v16 = [v14 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v16)
        {
          goto LABEL_10;
        }

        goto LABEL_17;
      }
    }

    v20 = [MEMORY[0x1E695DFF8] URLWithString:{v19, v31}];

    if (!v3)
    {
      goto LABEL_30;
    }

    if (!v20)
    {
      goto LABEL_30;
    }

    v21 = [v20 absoluteString];
    v22 = [MTPodcast isRedirectURL:v21];

    if (!v22)
    {
      goto LABEL_30;
    }

    if (+[PFClientUtil supportsMetrics])
    {
      if (v7)
      {
        v23 = v7;
      }

      else
      {
        v23 = &stru_1F548B930;
      }

      v35[0] = @"firstAttempt";
      v35[1] = @"skippedFeedURL";
      v36[0] = v23;
      v24 = [v20 absoluteString];
      v25 = v24;
      if (v24)
      {
        v26 = v24;
      }

      else
      {
        v26 = &stru_1F548B930;
      }

      v36[1] = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
      [IMMetrics recordUserAction:@"skipping_redirect_url_fallback" dataSource:self withData:v27];
    }

    v28 = 0;
  }

  else
  {
LABEL_17:

    v20 = 0;
LABEL_30:
    v20 = v20;
    v28 = v20;
  }

  v29 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (BOOL)isRedirectURL:(id)a3
{
  v3 = a3;
  v4 = +[IMURLBag sharedInstance];
  v5 = [v4 syncStringForKey:@"podcast-redirect-url-prefix"];

  if ([v5 length])
  {
    v6 = [v3 hasPrefix:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)redirectURLForStoreCollectionId:(int64_t)a3
{
  if ([MTStoreIdentifier isEmpty:?])
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", a3];
    v6 = +[IMURLBag sharedInstance];
    v7 = [v6 syncStringForKey:@"podcast-redirect-url-prefix"];

    v8 = [v7 stringByAppendingString:v5];
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v8];
  }

  return v4;
}

+ (int64_t)storeCollectionIdForRedirectURL:(id)a3
{
  v4 = a3;
  if ([a1 isRedirectURL:v4])
  {
    v5 = +[IMURLBag sharedInstance];
    v6 = [v5 syncStringForKey:@"podcast-redirect-url-prefix"];

    v7 = [v4 stringByReplacingOccurrencesOfString:v6 withString:&stru_1F548B930];
    v8 = [v7 longLongValue];
    if ((v8 - 0x7FFFFFFFFFFFFFFFLL) >= 2)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)updatedAtString
{
  v3 = [MEMORY[0x1E696AAE8] podcastsFoundationBundle];
  v4 = [v3 localizedStringForKey:@"SHOW_UPDATED_AT_FORMAT" value:&stru_1F548B930 table:0];

  v5 = MEMORY[0x1E695DF00];
  [(MTPodcast *)self latestEpisodeAvailabilityTime];
  v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
  v7 = [v6 friendlyDisplayString];

  v8 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:0, v7];

  return v8;
}

- (BOOL)requestsAreNonAppInitiated
{
  v2 = [(MTPodcast *)self storeCollectionId];

  return [MTStoreIdentifier isEmpty:v2];
}

- (void)markPlaylistsForUpdate
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(MTPodcast *)self playlistSettings];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        [v7 setNeedsUpdate:1];
        v8 = [v7 playlist];
        [v8 setNeedsUpdate:1];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (id)episodeLimitsAllowingAutomaticDownloads
{
  if (episodeLimitsAllowingAutomaticDownloads_onceToken != -1)
  {
    +[MTPodcast(NSPredicate) episodeLimitsAllowingAutomaticDownloads];
  }

  v3 = episodeLimitsAllowingAutomaticDownloads_limits;

  return v3;
}

void __65__MTPodcast_NSPredicate__episodeLimitsAllowingAutomaticDownloads__block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFA8] set];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = +[MTPodcastEpisodeLimitHelper allGlobalLimits];
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if (+[MTPodcastEpisodeLimitHelper limitAllowsAutomaticDownloads:](MTPodcastEpisodeLimitHelper, "limitAllowsAutomaticDownloads:", [v6 longLongValue]))
        {
          [v0 addObject:v6];
        }

        objc_storeStrong(&episodeLimitsAllowingAutomaticDownloads_limits, v0);
      }

      v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }

  v7 = *MEMORY[0x1E69E9840];
}

+ (id)userDefaultPropertiesAffectingPredicates
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v7[0] = @"MTPodcastAutoDownloadStateDefaultKey";
  v7[1] = @"MTPodcastEpisodeLimitDefaultKey";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)predicateForImplicitlyFollowedPodcastsExcludingUUIDs:(id)a3
{
  v4 = a3;
  v5 = [a1 predicateForImplicitlyFollowedPodcasts];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"!(%K IN %@)", @"uuid", v4];

  v7 = [v5 AND:v6];

  return v7;
}

+ (id)predicateForNotImplicitlyFollowedPodcastsWithChannelStoreId:(int64_t)a3
{
  v4 = [a1 predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  v5 = MEMORY[0x1E696AE18];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v7 = [v5 predicateWithFormat:@"%K = %@", @"channelStoreId", v6];
  v8 = [v4 AND:v7];

  return v8;
}

+ (id)predicateForNonFollowedShowsWithPlayState
{
  v3 = [a1 predicateForNotHiddenPodcasts];
  v4 = [a1 predicateForNotSubscribedPodcasts];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(%K, $episode, $episode.%K != %@ AND ($episode.%K = %@ OR $episode.%K != %@ OR $episode.%K = %@)).@count > 0", @"episodes", @"playState", &unk_1F54BDE68, @"backCatalog", MEMORY[0x1E695E110], @"playState", &unk_1F54BDE80, @"playStateManuallySet", MEMORY[0x1E695E110]];
  v6 = [v3 AND:v4];
  v7 = [v6 AND:v5];

  v8 = [a1 predicateForImplicitlyFollowedPodcasts];
  v9 = [v7 OR:v8];

  return v9;
}

+ (id)predicateForLastDatePlayedNotInTheFuture
{
  v2 = MEMORY[0x1E696AE18];
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = [v2 predicateForDateKey:@"lastDatePlayed" isLessThanOrEqualToDate:v3];

  return v4;
}

+ (id)predicateForHasBeenSynced:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  return [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K != NULL) && ((%K & %lld) == %lld)", @"flags", @"flags", 4, v3];
}

+ (id)predicateForPodcastsNeedingRetry:(BOOL)a3
{
  if (a3)
  {
    v3 = @"(%K & %lld) == %lld";
  }

  else
  {
    v3 = @"(%K & %lld) != %lld";
  }

  return [MEMORY[0x1E696AE18] predicateWithFormat:v3, @"flags", 4096, 4096];
}

+ (id)predicateForImporting:(BOOL)a3
{
  if (a3)
  {
    v3 = @"(%K & %lld) == %lld";
  }

  else
  {
    v3 = @"(%K & %lld) != %lld";
  }

  return [MEMORY[0x1E696AE18] predicateWithFormat:v3, @"flags", 32, 32];
}

+ (id)predicateForAutoDownloadEnabled
{
  v2 = [a1 episodeLimitsAllowingAutomaticDownloads];
  v3 = [v2 mutableCopy];

  v4 = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
  v5 = [v4 episodeLimitForKey:@"MTPodcastEpisodeLimitDefaultKey"];

  if ([MTPodcastEpisodeLimitHelper limitAllowsAutomaticDownloads:v5])
  {
    [v3 addObject:&unk_1F54BDE98];
  }

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"episodeLimit", v3];

  return v6;
}

+ (id)predicateForPodcastsFollowedSince:(id)a3
{
  v4 = [MEMORY[0x1E696AE18] predicateForDateKey:@"addedDate" isGreaterThanDate:a3];
  v5 = [a1 predicateForSubscribedPodcasts];
  v6 = [v4 AND:v5];

  return v6;
}

+ (id)predicateForPodcastWithFeedUrl:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"feedURL", v4];
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"updatedFeedURL", v4];
    v7 = [v5 OR:v6];

    if ([MTPodcast isRedirectURL:v4])
    {
      v8 = [MTPodcast storeCollectionIdForRedirectURL:v4];
      if (v8 >= 1)
      {
        v9 = [a1 predicateForPodcastStoreId:v8];
        v10 = [v7 OR:v9];

        v7 = v10;
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AE18] falsePredicate];
  }

  return v7;
}

+ (id)predicateForPodcastWithTitle:(id)a3
{
  v3 = a3;
  if ([v3 length])
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"title", v3];
  }

  else
  {
    [MEMORY[0x1E696AE18] falsePredicate];
  }
  v4 = ;

  return v4;
}

+ (id)predicateForHiddenPodcastUuids:(id)a3
{
  v4 = [a1 predicateForPodcastUuids:a3];
  v5 = [a1 predicateForHiddenPodcasts];
  v6 = [v4 AND:v5];

  return v6;
}

+ (id)predicateForIdentifer:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AE18] falsePredicate];
  v5 = [v3 feedUrl];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [v3 feedUrl];
    v8 = [MTPodcast predicateForPodcastWithFeedUrl:v7];

    v4 = v8;
  }

  v9 = [v3 storeIdentifier];
  v10 = [v9 longLongValue];
  if (v10)
  {
    v11 = [MTPodcast predicateForPodcastStoreId:v10];
    v12 = [v4 OR:v11];

    v4 = v12;
  }

  return v4;
}

+ (id)predicateForPodcastStoreId:(int64_t)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v5 = [v3 predicateWithFormat:@"%K = %@", @"storeCollectionId", v4];

  return v5;
}

+ (id)predicateForAreMediaAPI:(BOOL)a3
{
  if (a3)
  {
    v3 = @"%K != %@";
  }

  else
  {
    v3 = @"%K = %@";
  }

  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:v3, @"storeCollectionId", &unk_1F54BDEB0];

  return v4;
}

+ (id)predicateForPodcastWithPodcastPID:(int64_t)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v5 = [v3 predicateWithFormat:@"%K == %@", @"podcastPID", v4];

  return v5;
}

+ (id)predicateForPaidSubscriptionActive:(BOOL)a3
{
  if (a3)
  {
    v3 = @"(%K.%K != NULL) && (%K.%K = 1)";
  }

  else
  {
    v3 = @"NOT ((%K.%K != NULL) && (%K.%K = 1))";
  }

  return [MEMORY[0x1E696AE18] predicateWithFormat:v3, @"channel", @"subscriptionActive", @"channel", @"subscriptionActive"];
}

+ (id)predicateForEntitledShows
{
  v3 = [a1 predicateForPaidSubscriptionActive:1];
  v4 = [a1 _predicateForShowsWithPlayableFreeEpisodes];
  v5 = [v3 OR:v4];

  return v5;
}

+ (id)predicateForWatchLibraryShows
{
  v2 = +[MTPodcast predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  v3 = +[MTPodcast predicateForEntitledShows];
  v4 = [v2 AND:v3];

  return v4;
}

+ (id)predicateForPodcastsToAutodownload
{
  v2 = +[MTPodcast predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  v3 = +[MTPodcast predicateForAutoDownloadEnabled];
  v4 = [v2 AND:v3];
  v5 = +[MTPodcast predicateForExcludingExplicitBasedOnSetting];
  v6 = [v4 AND:v5];

  return v6;
}

+ (id)predicateForExcludingExplicitBasedOnSetting
{
  if (+[PFRestrictionsController isExplicitContentAllowed])
  {
    [MEMORY[0x1E696AE18] truePredicate];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K & %lld) == 0", @"flags", 256];
  }
  v2 = ;

  return v2;
}

+ (id)importedShowArtworkURLFor:(id)a3
{
  v3 = sub_1D917820C();
  v5 = v4;
  sub_1D917946C();

  MEMORY[0x1DA7298F0](v3, v5);

  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v6;
}

- (BOOL)currentEpisodeLimitIsNextNEpisodes
{
  v2 = self;
  if ([(MTPodcast *)v2 isSerialShowTypeInFeed])
  {
    v3 = sub_1D8FD017C([(MTPodcast *)v2 episodeLimit]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldBeDeleted
{
  v2 = self;
  MTPodcast.shouldBeDeleted.getter();
  v4 = v3;

  return v4 & 1;
}

- (void)calculateNewEpisodeCountIn:(id)a3 serialShowsUseExperimentalRules:(BOOL)a4
{
  v7 = objc_opt_self();
  v8 = a3;
  v12 = self;
  v9 = [(MTPodcast *)v12 showTypeInFeed];
  v10 = [v7 showTypeFromString_];

  v11 = &selRef_calculateSerialNewEpisodeCountIn_;
  if (v10 == 1 || !a4)
  {
    v11 = &selRef_calculateEpisodicNewEpisodeCountIn_;
  }

  [v12 *v11];
}

- (void)calculateEpisodicNewEpisodeCountIn:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D8FD98CC();
}

- (void)calculateSerialNewEpisodeCountIn:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D8FDA2FC(v4);
}

- (void)applyDefaultFollowedShowSettingsFor:(int64_t)a3
{
  v4 = self;
  MTPodcast.applyDefaultFollowedShowSettings(for:)(a3);
}

- (void)applyDefaultUnfollowedShowSettings
{
  v3 = objc_opt_self();
  v6 = self;
  v4 = [(MTPodcast *)v6 showTypeInFeed];
  v5 = [v3 showTypeFromString_];

  [(MTPodcast *)v6 applyDefaultFollowedShowSettingsFor:v5];
  [(MTPodcast *)v6 setEpisodeLimit:0x100000000];
  [(MTPodcast *)v6 setNotifications:0];
}

- (int64_t)syncType
{
  v2 = self;
  v3 = [(MTPodcast *)v2 displayType];
  if (v3)
  {
    v4 = v3;
    v5 = MTDisplayTypeFromPersistentString(v3);

    return v5 == 1;
  }

  else
  {

    return 0;
  }
}

- (BOOL)shouldBeHiddenFromUpNext
{
  v2 = self;
  v3 = MTPodcast.shouldBeHiddenFromUpNext.getter();

  return v3;
}

@end