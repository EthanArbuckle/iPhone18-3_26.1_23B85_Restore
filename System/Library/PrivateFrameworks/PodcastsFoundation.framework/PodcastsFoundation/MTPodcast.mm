@interface MTPodcast
+ (BOOL)autoDownloadDefaultValue;
+ (BOOL)isRedirectURL:(id)l;
+ (BOOL)sortOrderAscForShowType:(int64_t)type;
+ (id)episodeLimitsAllowingAutomaticDownloads;
+ (id)importedShowArtworkURLFor:(id)for;
+ (id)insertNewPodcastInManagedObjectContext:(id)context subscribed:(BOOL)subscribed feedUrl:(id)url showType:(int64_t)type showTypeInFeed:(id)feed title:(id)title author:(id)author provider:(id)self0 imageUrl:(id)self1 description:(id)self2 displayType:(id)self3 showSpecificUpsellCopy:(id)self4;
+ (id)podcastUuidForEpisodeUuid:(id)uuid ctx:(id)ctx;
+ (id)predicateForAreMediaAPI:(BOOL)i;
+ (id)predicateForAutoDownloadEnabled;
+ (id)predicateForEntitledShows;
+ (id)predicateForExcludingExplicitBasedOnSetting;
+ (id)predicateForHasBeenSynced:(BOOL)synced;
+ (id)predicateForHiddenPodcastUuids:(id)uuids;
+ (id)predicateForIdentifer:(id)identifer;
+ (id)predicateForImplicitlyFollowedPodcastsExcludingUUIDs:(id)ds;
+ (id)predicateForImporting:(BOOL)importing;
+ (id)predicateForLastDatePlayedNotInTheFuture;
+ (id)predicateForNonFollowedShowsWithPlayState;
+ (id)predicateForNotImplicitlyFollowedPodcastsWithChannelStoreId:(int64_t)id;
+ (id)predicateForPaidSubscriptionActive:(BOOL)active;
+ (id)predicateForPeriodicallyUpdatablePodcasts;
+ (id)predicateForPodcastStoreId:(int64_t)id;
+ (id)predicateForPodcastWithFeedUrl:(id)url;
+ (id)predicateForPodcastWithPodcastPID:(int64_t)d;
+ (id)predicateForPodcastWithTitle:(id)title;
+ (id)predicateForPodcastsFollowedSince:(id)since;
+ (id)predicateForPodcastsNeedingRetry:(BOOL)retry;
+ (id)predicateForPodcastsToAutodownload;
+ (id)predicateForWatchLibraryShows;
+ (id)productURLForStoreCollectionId:(int64_t)id storeTrackId:(int64_t)trackId;
+ (id)propertiesToObserveForDownloadableEpisodes;
+ (id)redirectURLForStoreCollectionId:(int64_t)id;
+ (id)storeCleanURLForAdamID:(int64_t)d;
+ (id)userDefaultPropertiesAffectingPredicates;
+ (int64_t)deletePlayedEpisodesDefaultValue;
+ (int64_t)episodeLimitDefaultValue;
+ (int64_t)showTypeFromString:(id)string;
+ (int64_t)storeCollectionIdForRedirectURL:(id)l;
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
- (id)_episodesNextTo:(double)to after:(BOOL)after usePlayOrder:(BOOL)order sortAsc:(BOOL)asc sortByEpisodeNumber:(BOOL)number filter:(id)filter limit:(int64_t)limit;
- (id)_fetchRequestForDistinctSeasons;
- (id)_latestOrOldestEpisode:(BOOL)episode sortDate:(unint64_t)date filter:(id)filter;
- (id)bestAvailableStoreCleanURL;
- (id)bestDescription;
- (id)bestFeedURLExcludingRedirectURL:(BOOL)l;
- (id)currentFeedURL;
- (id)displayURL;
- (id)earliestDateForFeedFetch:(id)fetch;
- (id)episodePublishedAfter:(double)after filter:(id)filter;
- (id)episodePublishedBefore:(double)before filter:(id)filter;
- (id)episodesInLatestSeasonWithLimit:(int64_t)limit;
- (id)episodesInSeasonNumber:(int64_t)number;
- (id)episodesInSeasonNumber:(int64_t)number lowestNumberedEpisodesFirst:(BOOL)first filter:(id)filter limit:(int64_t)limit;
- (id)episodesInSeasonNumber:(int64_t)number oldestEpisodesFirst:(BOOL)first filter:(id)filter limit:(int64_t)limit;
- (id)highestNumberedEpisodePublishedBefore:(double)before filter:(id)filter;
- (id)highestNumberedPlayedEpisodeWithFilter:(id)filter;
- (id)lowestNumberedEpisodePublishedAfter:(double)after filter:(id)filter;
- (id)lowestNumberedEpisodeWithFilter:(id)filter;
- (id)metricsAdditionalData;
- (id)metricsContentIdentifier;
- (id)mostRecentlyPlayedEpisodeWithFilter:(id)filter;
- (id)nextNumberedUnplayedEpisodeAfter:(id)after filter:(id)filter;
- (id)oldestEpisodeInLatestSeasonOrShowWithFilter:(id)filter;
- (id)redirectURL;
- (id)seasonNumbers;
- (id)seasonTrailerInSeason:(int64_t)season;
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
- (void)applyDefaultFollowedShowSettingsFor:(int64_t)for;
- (void)applyDefaultUnfollowedShowSettings;
- (void)calculateEpisodicNewEpisodeCountIn:(id)in;
- (void)calculateNewEpisodeCountIn:(id)in serialShowsUseExperimentalRules:(BOOL)rules;
- (void)calculateSerialNewEpisodeCountIn:(id)in;
- (void)markPlaylistsForUpdate;
- (void)resetGoDarkWithReason:(unint64_t)reason;
- (void)setAuthenticatedDark:(BOOL)dark;
- (void)setFeedUpdateNeedsRetry:(BOOL)retry;
- (void)setFlags:(int64_t)flags;
- (void)setHasBeenSynced:(BOOL)synced;
- (void)setImporting:(BOOL)importing;
- (void)setIsExplicit:(BOOL)explicit;
- (void)setIsTransitioningFromImplicit:(BOOL)implicit;
- (void)setNeedsArtworkUpdate:(BOOL)update;
- (void)setPodcastPID:(int64_t)d;
- (void)suppressEpisodesWithBasisDate:(id)date;
- (void)updateIsHiddenOrImplicitlyFollowed;
- (void)updateLastImplicitlyFollowedDate;
- (void)updateLastTouchDate;
@end

@implementation MTPodcast

- (BOOL)isPastAutodownloadOrEpisodeLimitDark
{
  subscribed = +[PFClientUtil supportsDownloads];
  if (subscribed)
  {
    subscribed = [(MTPodcast *)self subscribed];
    if (subscribed)
    {
      subscribed = [(MTPodcast *)self currentEpisodeLimitAllowsAutomaticDownloads];
      if (subscribed)
      {
        darkCountLocal = [(MTPodcast *)self darkCountLocal];
        if (darkCountLocal >= [(MTPodcast *)self darkDownloadCountLimit])
        {
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v6 = v5;
          [(MTPodcast *)self lastTouchDate];
          v8 = v7;
          [(MTPodcast *)self darkDownloadTimeInterval];
          LOBYTE(subscribed) = v6 > v8 + v9;
        }

        else
        {
          LOBYTE(subscribed) = 0;
        }
      }
    }
  }

  return subscribed;
}

- (BOOL)currentEpisodeLimitAllowsAutomaticDownloads
{
  selfCopy = self;
  v3 = MTPodcastEpisodeLimit.allowsAutomaticDownloads.getter([(MTPodcast *)selfCopy episodeLimit]);

  return v3 & 1;
}

- (int64_t)darkDownloadCountLimit
{
  _applePodcastsFoundationSharedUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v3 = [_applePodcastsFoundationSharedUserDefaults objectForKey:@"kMTDarkDownloadCountOverride"];

  if (v3)
  {
    v4 = [_applePodcastsFoundationSharedUserDefaults integerForKey:@"kMTDarkDownloadCountOverride"];
  }

  else
  {
    v4 = 5;
  }

  return v4;
}

- (double)darkDownloadTimeInterval
{
  _applePodcastsFoundationSharedUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSharedUserDefaults];
  v3 = [_applePodcastsFoundationSharedUserDefaults objectForKey:@"kMTDarkDownloadDurationOverride"];

  if (v3)
  {
    [_applePodcastsFoundationSharedUserDefaults doubleForKey:@"kMTDarkDownloadDurationOverride"];
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
  showTypeInFeed = [(MTPodcast *)self showTypeInFeed];
  v3 = [MTPodcast showTypeFromString:showTypeInFeed]== 2;

  return v3;
}

- (int64_t)showTypeInFeedResolvedValue
{
  showTypeInFeed = [(MTPodcast *)self showTypeInFeed];
  v3 = [MTPodcast showTypeFromString:showTypeInFeed];

  return v3;
}

- (id)bestDescription
{
  itemDescription = [(MTPodcast *)self itemDescription];
  if ([itemDescription hasHTML])
  {
    stringBySmartlyStrippingHTML = [itemDescription stringBySmartlyStrippingHTML];

    itemDescription = stringBySmartlyStrippingHTML;
  }

  return itemDescription;
}

- (id)bestAvailableStoreCleanURL
{
  storeCleanURL = [(MTPodcast *)self storeCleanURL];
  v4 = [storeCleanURL length];

  if (v4)
  {
    v5 = MEMORY[0x1E695DFF8];
    storeCleanURL2 = [(MTPodcast *)self storeCleanURL];
    v7 = [v5 URLWithString:storeCleanURL2];
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
  storeCollectionId = [(MTPodcast *)self storeCollectionId];

  return [MTPodcast redirectURLForStoreCollectionId:storeCollectionId];
}

- (id)smartPlayEpisode
{
  if (([(MTPodcast *)self subscribed]& 1) == 0 && [(MTPodcast *)self isSerialShowTypeInFeed]&& [(MTPodcast *)self latestSeasonNumber]>= 1 && ([(MTPodcast *)self lastDatePlayed], v3 == 0.0) && ([(MTPodcast *)self seasonTrailerInSeason:[(MTPodcast *)self latestSeasonNumber]], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
  }

  else
  {
    nextEpisodeUuid = [(MTPodcast *)self nextEpisodeUuid];

    if (!nextEpisodeUuid)
    {
      goto LABEL_9;
    }

    managedObjectContext = [(MTPodcast *)self managedObjectContext];
    nextEpisodeUuid2 = [(MTPodcast *)self nextEpisodeUuid];
    v5 = [managedObjectContext episodeForUuid:nextEpisodeUuid2];

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

  currentFeedURL = [(MTPodcast *)self currentFeedURL];
  absoluteString = [currentFeedURL absoluteString];

  if (absoluteString)
  {
    [v3 setObject:absoluteString forKeyedSubscript:@"feedUrl"];
  }

  title = [(MTPodcast *)self title];
  if (title)
  {
    [v3 setObject:title forKeyedSubscript:@"title"];
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
  updatedFeedURL = [(MTPodcast *)self updatedFeedURL];
  v4 = [MTDBUtil isSupportedUrlString:updatedFeedURL];

  if (v4)
  {
    v5 = MEMORY[0x1E695DFF8];
    updatedFeedURL2 = [(MTPodcast *)self updatedFeedURL];
LABEL_5:
    v9 = updatedFeedURL2;
    v10 = [v5 URLWithString:updatedFeedURL2];

    goto LABEL_7;
  }

  feedURL = [(MTPodcast *)self feedURL];
  v8 = [MTDBUtil isSupportedUrlString:feedURL];

  if (v8)
  {
    v5 = MEMORY[0x1E695DFF8];
    updatedFeedURL2 = [(MTPodcast *)self feedURL];
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
    deletePlayedEpisodes = +[MTPodcast deletePlayedEpisodesDefaultValue];
  }

  else
  {
    deletePlayedEpisodes = [(MTPodcast *)self deletePlayedEpisodes];
  }

  return deletePlayedEpisodes != 0;
}

+ (int64_t)deletePlayedEpisodesDefaultValue
{
  _applePodcastsFoundationSettingsUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
  v3 = [_applePodcastsFoundationSettingsUserDefaults integerForKey:@"MTPodcastDeletePlayedEpisodesDefaultKey"];

  return v3;
}

- (void)setPodcastPID:(int64_t)d
{
  if ([(MTPodcast *)self podcastPID]!= d)
  {
    [(MTPodcast *)self willChangeValueForKey:@"podcastPID"];
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
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
    isImplicitlyFollowed = 1;
  }

  else
  {
    isImplicitlyFollowed = [(MTPodcast *)self isImplicitlyFollowed];
  }

  [(MTPodcast *)self setIsHiddenOrImplicitlyFollowed:isImplicitlyFollowed];
}

- (BOOL)isShareable
{
  feedURL = [(MTPodcast *)self feedURL];
  v3 = feedURL != 0;

  return v3;
}

- (void)setFlags:(int64_t)flags
{
  if ([(MTPodcast *)self flags]!= flags)
  {
    [(MTPodcast *)self willChangeValueForKey:@"flags"];
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:flags];
    [(MTPodcast *)self setPrimitiveValue:v5 forKey:@"flags"];

    [(MTPodcast *)self didChangeValueForKey:@"flags"];
  }
}

- (void)setIsExplicit:(BOOL)explicit
{
  explicitCopy = explicit;
  flags = [(MTPodcast *)self flags];
  if (((((flags & 0x100) == 0) ^ explicitCopy) & 1) == 0)
  {
    v6 = 256;
    if (!explicitCopy)
    {
      v6 = 0;
    }

    [(MTPodcast *)self setFlags:flags & 0xFFFFFFFFFFFFFEFFLL | v6];
  }
}

- (void)setFeedUpdateNeedsRetry:(BOOL)retry
{
  retryCopy = retry;
  flags = [(MTPodcast *)self flags];
  if (((((flags & 0x1000) == 0) ^ retryCopy) & 1) == 0)
  {
    v6 = 4096;
    if (!retryCopy)
    {
      v6 = 0;
    }

    [(MTPodcast *)self setFlags:flags & 0xFFFFFFFFFFFFEFFFLL | v6];
  }
}

- (void)setHasBeenSynced:(BOOL)synced
{
  syncedCopy = synced;
  flags = [(MTPodcast *)self flags];
  if (((((flags & 4) == 0) ^ syncedCopy) & 1) == 0)
  {
    v6 = 4;
    if (!syncedCopy)
    {
      v6 = 0;
    }

    [(MTPodcast *)self setFlags:flags & 0xFFFFFFFFFFFFFFFBLL | v6];
  }
}

- (void)setImporting:(BOOL)importing
{
  importingCopy = importing;
  flags = [(MTPodcast *)self flags];
  if (((((flags & 0x20) == 0) ^ importingCopy) & 1) == 0)
  {
    v6 = 32;
    if (!importingCopy)
    {
      v6 = 0;
    }

    [(MTPodcast *)self setFlags:flags & 0xFFFFFFFFFFFFFFDFLL | v6];
  }
}

- (void)setIsTransitioningFromImplicit:(BOOL)implicit
{
  implicitCopy = implicit;
  flags = [(MTPodcast *)self flags];
  if (((((flags & 0x10000) == 0) ^ implicitCopy) & 1) == 0)
  {
    v6 = 0x10000;
    if (!implicitCopy)
    {
      v6 = 0;
    }

    [(MTPodcast *)self setFlags:flags & 0xFFFFFFFFFFFEFFFFLL | v6];
  }
}

- (void)setAuthenticatedDark:(BOOL)dark
{
  darkCopy = dark;
  isDark = [(MTPodcast *)self isDark];
  flags = [(MTPodcast *)self flags];
  if (((((flags & 0x800) == 0) ^ darkCopy) & 1) == 0)
  {
    v7 = 2048;
    if (!darkCopy)
    {
      v7 = 0;
    }

    [(MTPodcast *)self setFlags:flags & 0xFFFFFFFFFFFFF7FFLL | v7];
    isDark2 = [(MTPodcast *)self isDark];
    latestExitFromDarkDownloads = [(MTPodcast *)self latestExitFromDarkDownloads];
    if (latestExitFromDarkDownloads)
    {
      v12 = [PFAnalyticsEvent darkDownloadsChangeWithWasDark:isDark isDark:isDark2 reason:1 previousExit:latestExitFromDarkDownloads];
    }

    else
    {
      v10 = [MEMORY[0x1E695DF00] now];
      v12 = [PFAnalyticsEvent darkDownloadsChangeWithWasDark:isDark isDark:isDark2 reason:1 previousExit:v10];
    }

    v11 = objc_opt_new();
    [v11 sendEvent:v12];
  }
}

- (id)displayURL
{
  v2 = MEMORY[0x1E696AEC0];
  uuid = [(MTPodcast *)self uuid];
  v4 = uuid;
  v5 = @"null";
  if (uuid)
  {
    v5 = uuid;
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
        _applePodcastsFoundationSettingsUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
        v5 = [_applePodcastsFoundationSettingsUserDefaults episodeLimitForKey:@"MTPodcastEpisodeLimitDefaultKey"];

        return v5;
      }
    }
  }

  return result;
}

- (id)earliestDateForFeedFetch:(id)fetch
{
  v4 = MEMORY[0x1E695DF00];
  fetchCopy = fetch;
  [(MTPodcast *)self lastFetchedDate];
  v6 = [v4 dateWithTimeIntervalSinceReferenceDate:?];
  [(MTPodcast *)self calculatedUpdateInterval];
  v7 = [v6 dateByAddingTimeInterval:?];
  v8 = [fetchCopy laterDate:v7];

  return v8;
}

- (double)calculatedUpdateInterval
{
  v17 = *MEMORY[0x1E69E9840];
  consecutiveFeedFetchErrors = [(MTPodcast *)self consecutiveFeedFetchErrors];
  if (consecutiveFeedFetchErrors > 5)
  {
    v7 = consecutiveFeedFetchErrors;
    v8 = _MTLogCategoryFeedUpdate();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7 > 0xA)
    {
      if (v9)
      {
        feedURL = [(MTPodcast *)self feedURL];
        v13 = 138412546;
        v14 = feedURL;
        v15 = 2048;
        storeCollectionId = [(MTPodcast *)self storeCollectionId];
        _os_log_impl(&dword_1D8CEC000, v8, OS_LOG_TYPE_DEFAULT, "calculatedUpdateInterval for podcast with feedUrl %@ and storeId %lld: 1 week", &v13, 0x16u);
      }

      result = 604800.0;
    }

    else
    {
      if (v9)
      {
        feedURL2 = [(MTPodcast *)self feedURL];
        v13 = 138412546;
        v14 = feedURL2;
        v15 = 2048;
        storeCollectionId = [(MTPodcast *)self storeCollectionId];
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
      feedURL3 = [(MTPodcast *)self feedURL];
      v13 = 138412546;
      v14 = feedURL3;
      v15 = 2048;
      storeCollectionId = [(MTPodcast *)self storeCollectionId];
      _os_log_impl(&dword_1D8CEC000, v4, OS_LOG_TYPE_DEFAULT, "calculatedUpdateInterval for podcast with feedUrl %@ and storeId %lld: 4 hours", &v13, 0x16u);
    }

    +[MTPodcast defaultUpdateInterval];
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

+ (int64_t)episodeLimitDefaultValue
{
  _applePodcastsFoundationSettingsUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
  v3 = [_applePodcastsFoundationSettingsUserDefaults episodeLimitForKey:@"MTPodcastEpisodeLimitDefaultKey"];

  return v3;
}

+ (BOOL)autoDownloadDefaultValue
{
  _applePodcastsFoundationSettingsUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
  v3 = [_applePodcastsFoundationSettingsUserDefaults integerForKey:@"MTPodcastAutoDownloadStateDefaultKey"] != 0;

  return v3;
}

+ (int64_t)showTypeFromString:(id)string
{
  stringCopy = string;
  v4 = +[MTPodcast defaultShowType];
  if (stringCopy)
  {
    if ([stringCopy caseInsensitiveCompare:@"serial"])
    {
      if ([stringCopy caseInsensitiveCompare:@"episodic"])
      {
        if (![stringCopy caseInsensitiveCompare:@"oldestToNewest"])
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

+ (BOOL)sortOrderAscForShowType:(int64_t)type
{
  if (type == 1)
  {
    return 0;
  }

  if (type == 4 || type == 2)
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

- (void)resetGoDarkWithReason:(unint64_t)reason
{
  if ([(MTPodcast *)self darkCount]>= 5)
  {
    v5 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
    [v5 markSubscriptionSyncDirty:1 for:{-[MTPodcast syncType](self, "syncType")}];
  }

  if ([(MTPodcast *)self isDark])
  {
    latestExitFromDarkDownloads = [(MTPodcast *)self latestExitFromDarkDownloads];
    if (latestExitFromDarkDownloads)
    {
      v7 = [PFAnalyticsEvent darkDownloadsChangeWithWasDark:1 isDark:0 reason:reason previousExit:latestExitFromDarkDownloads];
    }

    else
    {
      v8 = [MEMORY[0x1E695DF00] now];
      v7 = [PFAnalyticsEvent darkDownloadsChangeWithWasDark:1 isDark:0 reason:reason previousExit:v8];
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

- (void)suppressEpisodesWithBasisDate:(id)date
{
  v40[4] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v5 = [MEMORY[0x1E695D560] batchUpdateRequestWithEntityName:@"MTEpisode"];
  v6 = MEMORY[0x1E696AB28];
  uuid = [(MTPodcast *)self uuid];
  v8 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:uuid];
  v40[0] = v8;
  v9 = [MTEpisode predicateForDownloadBehavior:0];
  v40[1] = v9;
  v29 = dateCopy;
  v10 = [MTEpisode predicateForEpisodesPublishedBeforeDate:dateCopy];
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
  managedObjectContext = [(MTPodcast *)self managedObjectContext];
  v30 = 0;
  v17 = [managedObjectContext executeRequest:v5 error:&v30];
  v18 = v30;

  result = [v17 result];

  if (result)
  {
    v36 = *MEMORY[0x1E695D4D0];
    result2 = [v17 result];
    v37 = result2;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];

    v22 = MEMORY[0x1E695D628];
    managedObjectContext2 = [(MTPodcast *)self managedObjectContext];
    v35 = managedObjectContext2;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
    [v22 mergeChangesFromRemoteContextSave:v21 intoContexts:v24];

    v25 = _MTLogCategoryDatabase();
    v26 = v29;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      result3 = [v17 result];
      *buf = 138412546;
      v32 = v29;
      v33 = 2112;
      v34 = result3;
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
  isSerialShowTypeInFeed = [(MTPodcast *)self isSerialShowTypeInFeed];
  v3 = &kMaxSubscribeDownloadForSerialWithSeasons;
  if (!isSerialShowTypeInFeed)
  {
    v3 = &kMaxSubscribeDownloadForNonSerialShow;
  }

  return *v3;
}

+ (id)insertNewPodcastInManagedObjectContext:(id)context subscribed:(BOOL)subscribed feedUrl:(id)url showType:(int64_t)type showTypeInFeed:(id)feed title:(id)title author:(id)author provider:(id)self0 imageUrl:(id)self1 description:(id)self2 displayType:(id)self3 showSpecificUpsellCopy:(id)self4
{
  subscribedCopy = subscribed;
  contextCopy = context;
  urlCopy = url;
  feedCopy = feed;
  titleCopy = title;
  authorCopy = author;
  providerCopy = provider;
  imageUrlCopy = imageUrl;
  descriptionCopy = description;
  displayTypeCopy = displayType;
  copyCopy = copy;
  v25 = [contextCopy podcastForFeedUrl:urlCopy];
  [v25 setHidden:0];
  v35 = contextCopy;
  if (!v25)
  {
    v25 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"MTPodcast" inManagedObjectContext:contextCopy];
    uUID = [MEMORY[0x1E696AEC0] UUID];
    [v25 setUuid:uUID];

    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [v25 setAddedDate:?];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    [v25 setModifiedDate:?];
    [v25 setUpdateInterval:0];
    [v25 updateLastTouchDate];
    [v25 setFeedURL:urlCopy];
    [v25 setAuthor:authorCopy];
    [v25 setProvider:providerCopy];
    [v25 setImageURL:imageUrlCopy];
    [v25 setTitle:titleCopy];
    [v25 setItemDescription:descriptionCopy];
    [v25 setSubscribed:subscribedCopy];
    [v25 setDeletePlayedEpisodes:0xFFFFFFFFLL];
    [v25 setNeedsArtworkUpdate:1];
    [v25 setDisplayType:displayTypeCopy];
    [v25 setShowSpecificUpsellCopy:copyCopy];
    if (feedCopy)
    {
      [v25 setShowTypeInFeed:?];
    }

    if (subscribedCopy)
    {
      [v25 applyDefaultFollowedShowSettingsFor:type];
    }

    else
    {
      [v25 applyDefaultUnfollowedShowSettings];
    }

    [v25 setUpdatedDate:0.0];
    [v25 setSortOrder:{objc_msgSend(contextCopy, "nextSortOrderForPodcasts")}];
    [self prepareForPlatform:v25];
  }

  v27 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  [v27 markSubscriptionSyncDirty:1 for:{objc_msgSend(v25, "syncType")}];

  v28 = objc_opt_new();
  feedURL = [v25 feedURL];
  [v28 resetVersionForFeedUrl:feedURL];

  return v25;
}

- (id)seasonNumbers
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__5;
  v14 = __Block_byref_object_dispose__5;
  array = [MEMORY[0x1E695DEC8] array];
  managedObjectContext = [(MTPodcast *)self managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __32__MTPodcast_Core__seasonNumbers__block_invoke;
  v7[3] = &unk_1E856A118;
  v7[4] = self;
  v4 = managedObjectContext;
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
  uuid = [(MTPodcast *)self uuid];
  v3 = [MTEpisode predicateForEpisodesWithSeasonNumbersOnPodcastUuid:uuid];

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

+ (id)podcastUuidForEpisodeUuid:(id)uuid ctx:(id)ctx
{
  uuidCopy = uuid;
  ctxCopy = ctx;
  if ([uuidCopy length])
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
    v10 = ctxCopy;
    v11 = uuidCopy;
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

- (void)setNeedsArtworkUpdate:(BOOL)update
{
  updateCopy = update;
  if ([(MTPodcast *)self needsArtworkUpdate]!= update)
  {
    flags = [(MTPodcast *)self flags];
    if ((flags & 1) != updateCopy)
    {

      [(MTPodcast *)self setFlags:flags & 0xFFFFFFFFFFFFFFFELL | updateCopy];
    }
  }
}

- (id)seasonTrailerInSeason:(int64_t)season
{
  v5 = objc_opt_new();
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__6;
  v22 = __Block_byref_object_dispose__6;
  v23 = 0;
  managedObjectContext = [(MTPodcast *)self managedObjectContext];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __41__MTPodcast_PFDB__seasonTrailerInSeason___block_invoke;
  v12[3] = &unk_1E856A928;
  v7 = v5;
  v13 = v7;
  selfCopy = self;
  v16 = &v18;
  seasonCopy = season;
  v8 = managedObjectContext;
  v15 = v8;
  [v8 performBlockAndWait:v12];
  v9 = v19[5];
  if (v9)
  {
    firstObject = [v9 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  _Block_object_dispose(&v18, 8);

  return firstObject;
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

- (id)mostRecentlyPlayedEpisodeWithFilter:(id)filter
{
  filterCopy = filter;
  if ([filterCopy playStateFilter])
  {
    v5 = [filterCopy copy];

    [v5 setPlayStateFilter:0];
    filterCopy = v5;
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  objc_initWeak(&location, self);
  managedObjectContext = [(MTPodcast *)self managedObjectContext];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__MTPodcast_EpisodeLookup__mostRecentlyPlayedEpisodeWithFilter___block_invoke;
  v11[3] = &unk_1E856A950;
  objc_copyWeak(&v15, &location);
  v7 = filterCopy;
  v12 = v7;
  v8 = managedObjectContext;
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

- (id)highestNumberedEpisodePublishedBefore:(double)before filter:(id)filter
{
  v4 = [(MTPodcast *)self _episodesNextTo:0 after:0 usePlayOrder:0 sortAsc:1 sortByEpisodeNumber:filter filter:1 limit:before];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (id)lowestNumberedEpisodePublishedAfter:(double)after filter:(id)filter
{
  v4 = [(MTPodcast *)self _episodesNextTo:1 after:0 usePlayOrder:1 sortAsc:1 sortByEpisodeNumber:filter filter:1 limit:after];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (id)episodePublishedBefore:(double)before filter:(id)filter
{
  v4 = [(MTPodcast *)self _episodesNextTo:0 after:0 usePlayOrder:1 sortAsc:0 sortByEpisodeNumber:filter filter:1 limit:before];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (id)episodePublishedAfter:(double)after filter:(id)filter
{
  v4 = [(MTPodcast *)self _episodesNextTo:1 after:0 usePlayOrder:0 sortAsc:0 sortByEpisodeNumber:filter filter:1 limit:after];
  firstObject = [v4 firstObject];

  return firstObject;
}

- (id)highestNumberedPlayedEpisodeWithFilter:(id)filter
{
  filterCopy = filter;
  managedObjectContext = [(MTPodcast *)self managedObjectContext];
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
  v6 = filterCopy;
  v15 = v6;
  selfCopy = self;
  v18 = &v19;
  v7 = managedObjectContext;
  v17 = v7;
  [v7 performBlockAndWait:&v11];
  v8 = v20[5];
  if (v8)
  {
    firstObject = [v8 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  _Block_object_dispose(&v19, 8);

  return firstObject;
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

- (id)nextNumberedUnplayedEpisodeAfter:(id)after filter:(id)filter
{
  afterCopy = after;
  filterCopy = filter;
  managedObjectContext = [(MTPodcast *)self managedObjectContext];
  if ([afterCopy isVisuallyPlayed] && objc_msgSend(afterCopy, "episodeNumber") && objc_msgSend(afterCopy, "episodeNumber") >= 1)
  {
    v9 = afterCopy;
  }

  else
  {
    v9 = [(MTPodcast *)self highestNumberedPlayedEpisodeWithFilter:filterCopy];
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
  v11 = filterCopy;
  v18 = v11;
  selfCopy = self;
  v12 = v10;
  v20 = v12;
  v22 = &v23;
  v13 = managedObjectContext;
  v21 = v13;
  [v13 performBlockAndWait:v17];
  v14 = v24[5];
  if (v14)
  {
    firstObject = [v14 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  _Block_object_dispose(&v23, 8);

  return firstObject;
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

- (id)oldestEpisodeInLatestSeasonOrShowWithFilter:(id)filter
{
  filterCopy = filter;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__7;
  v16 = __Block_byref_object_dispose__7;
  v17 = 0;
  managedObjectContext = [(MTPodcast *)self managedObjectContext];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __72__MTPodcast_EpisodeLookup__oldestEpisodeInLatestSeasonOrShowWithFilter___block_invoke;
  v9[3] = &unk_1E856A9C8;
  v9[4] = self;
  v11 = &v12;
  v6 = filterCopy;
  v10 = v6;
  [managedObjectContext performBlockAndWait:v9];
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

- (id)lowestNumberedEpisodeWithFilter:(id)filter
{
  filterCopy = filter;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__7;
  v20 = __Block_byref_object_dispose__7;
  v21 = 0;
  objc_initWeak(&location, self);
  managedObjectContext = [(MTPodcast *)self managedObjectContext];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __60__MTPodcast_EpisodeLookup__lowestNumberedEpisodeWithFilter___block_invoke;
  v10[3] = &unk_1E856A950;
  objc_copyWeak(&v14, &location);
  v6 = filterCopy;
  v11 = v6;
  v7 = managedObjectContext;
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

- (id)_latestOrOldestEpisode:(BOOL)episode sortDate:(unint64_t)date filter:(id)filter
{
  filterCopy = filter;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__7;
  v26 = __Block_byref_object_dispose__7;
  v27 = 0;
  objc_initWeak(&location, self);
  managedObjectContext = [(MTPodcast *)self managedObjectContext];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __67__MTPodcast_EpisodeLookup___latestOrOldestEpisode_sortDate_filter___block_invoke;
  v14[3] = &unk_1E856A9F0;
  objc_copyWeak(v19, &location);
  v10 = filterCopy;
  v19[1] = date;
  v15 = v10;
  selfCopy = self;
  episodeCopy = episode;
  v11 = managedObjectContext;
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

- (id)_episodesNextTo:(double)to after:(BOOL)after usePlayOrder:(BOOL)order sortAsc:(BOOL)asc sortByEpisodeNumber:(BOOL)number filter:(id)filter limit:(int64_t)limit
{
  filterCopy = filter;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__7;
  v37 = __Block_byref_object_dispose__7;
  v38 = 0;
  objc_initWeak(&location, self);
  managedObjectContext = [(MTPodcast *)self managedObjectContext];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __104__MTPodcast_EpisodeLookup___episodesNextTo_after_usePlayOrder_sortAsc_sortByEpisodeNumber_filter_limit___block_invoke;
  v22[3] = &unk_1E856AA18;
  objc_copyWeak(v27, &location);
  v27[1] = *&to;
  orderCopy = order;
  afterCopy = after;
  v18 = filterCopy;
  numberCopy = number;
  ascCopy = asc;
  v23 = v18;
  selfCopy = self;
  v26 = &v33;
  v19 = managedObjectContext;
  v25 = v19;
  v27[2] = limit;
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
  managedObjectContext = [(MTPodcast *)self managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__MTPodcast_EpisodeLookup__latestSeasonNumber__block_invoke;
  v7[3] = &unk_1E856A118;
  v7[4] = self;
  v4 = managedObjectContext;
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

- (id)episodesInLatestSeasonWithLimit:(int64_t)limit
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__7;
  v13 = __Block_byref_object_dispose__7;
  v14 = 0;
  managedObjectContext = [(MTPodcast *)self managedObjectContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__MTPodcast_EpisodeLookup__episodesInLatestSeasonWithLimit___block_invoke;
  v8[3] = &unk_1E856A0C8;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = limit;
  [managedObjectContext performBlockAndWait:v8];
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

- (id)episodesInSeasonNumber:(int64_t)number
{
  if (number < 1)
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
    managedObjectContext = [(MTPodcast *)self managedObjectContext];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__MTPodcast_EpisodeLookup__episodesInSeasonNumber___block_invoke;
    v8[3] = &unk_1E856A0C8;
    v8[4] = self;
    v8[5] = &v9;
    v8[6] = number;
    [managedObjectContext performBlockAndWait:v8];
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

- (id)episodesInSeasonNumber:(int64_t)number oldestEpisodesFirst:(BOOL)first filter:(id)filter limit:(int64_t)limit
{
  filterCopy = filter;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__7;
  v28 = __Block_byref_object_dispose__7;
  v29 = 0;
  managedObjectContext = [(MTPodcast *)self managedObjectContext];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__MTPodcast_EpisodeLookup__episodesInSeasonNumber_oldestEpisodesFirst_filter_limit___block_invoke;
  v16[3] = &unk_1E856AA40;
  numberCopy = number;
  v12 = filterCopy;
  v17 = v12;
  selfCopy = self;
  firstCopy = first;
  v20 = &v24;
  v13 = managedObjectContext;
  v19 = v13;
  limitCopy = limit;
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

- (id)episodesInSeasonNumber:(int64_t)number lowestNumberedEpisodesFirst:(BOOL)first filter:(id)filter limit:(int64_t)limit
{
  filterCopy = filter;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__7;
  v28 = __Block_byref_object_dispose__7;
  v29 = 0;
  managedObjectContext = [(MTPodcast *)self managedObjectContext];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __92__MTPodcast_EpisodeLookup__episodesInSeasonNumber_lowestNumberedEpisodesFirst_filter_limit___block_invoke;
  v16[3] = &unk_1E856AA40;
  numberCopy = number;
  v12 = filterCopy;
  v17 = v12;
  selfCopy = self;
  firstCopy = first;
  v20 = &v24;
  v13 = managedObjectContext;
  v19 = v13;
  limitCopy = limit;
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
  mainOrPrivateContext = [v2 mainOrPrivateContext];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MTPodcast_Library__totalUnplayedCount__block_invoke;
  v7[3] = &unk_1E856A4F0;
  v9 = &v10;
  v4 = mainOrPrivateContext;
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
  bestAvailableStoreCleanURL = [(MTPodcast *)self bestAvailableStoreCleanURL];
  v4 = bestAvailableStoreCleanURL;
  if (bestAvailableStoreCleanURL)
  {
    currentFeedURL = bestAvailableStoreCleanURL;
  }

  else
  {
    currentFeedURL = [(MTPodcast *)self currentFeedURL];
  }

  v6 = currentFeedURL;

  return v6;
}

+ (id)storeCleanURLForAdamID:(int64_t)d
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
      v8 = [v6 stringByAppendingFormat:@"/id%lld", d];
      v4 = [MEMORY[0x1E695DFF8] URLWithString:v8];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)productURLForStoreCollectionId:(int64_t)id storeTrackId:(int64_t)trackId
{
  v5 = [MTPodcast storeCleanURLForAdamID:id];
  if ([MTStoreIdentifier isNotEmpty:trackId])
  {
    trackId = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", trackId];
    v7 = [v5 pf_URLByAppendingQueryParameterKey:@"i" value:trackId];
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (id)twitterShareURL
{
  storeCleanURL = [(MTPodcast *)self storeCleanURL];
  if (storeCleanURL)
  {
    v4 = MEMORY[0x1E695DFF8];
    storeShortURL = [(MTPodcast *)self storeShortURL];
    v6 = [v4 URLWithString:storeShortURL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)bestFeedURLExcludingRedirectURL:(BOOL)l
{
  lCopy = l;
  v38 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  redirectURL = [(MTPodcast *)self redirectURL];
  absoluteString = [redirectURL absoluteString];

  if ([(__CFString *)absoluteString length]&& !lCopy)
  {
    [array addObject:absoluteString];
  }

  updatedFeedURL = [(MTPodcast *)self updatedFeedURL];
  v9 = [updatedFeedURL length];

  if (v9)
  {
    updatedFeedURL2 = [(MTPodcast *)self updatedFeedURL];
    [array addObject:updatedFeedURL2];
  }

  feedURL = [(MTPodcast *)self feedURL];
  v12 = [feedURL length];

  if (v12)
  {
    feedURL2 = [(MTPodcast *)self feedURL];
    [array addObject:feedURL2];
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v14 = array;
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
      if (!lCopy || ![*(*(&v31 + 1) + 8 * v18) isEqualToString:{absoluteString, v31}])
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

    if (!lCopy)
    {
      goto LABEL_30;
    }

    if (!v20)
    {
      goto LABEL_30;
    }

    absoluteString2 = [v20 absoluteString];
    v22 = [MTPodcast isRedirectURL:absoluteString2];

    if (!v22)
    {
      goto LABEL_30;
    }

    if (+[PFClientUtil supportsMetrics])
    {
      if (absoluteString)
      {
        v23 = absoluteString;
      }

      else
      {
        v23 = &stru_1F548B930;
      }

      v35[0] = @"firstAttempt";
      v35[1] = @"skippedFeedURL";
      v36[0] = v23;
      absoluteString3 = [v20 absoluteString];
      v25 = absoluteString3;
      if (absoluteString3)
      {
        v26 = absoluteString3;
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

+ (BOOL)isRedirectURL:(id)l
{
  lCopy = l;
  v4 = +[IMURLBag sharedInstance];
  v5 = [v4 syncStringForKey:@"podcast-redirect-url-prefix"];

  if ([v5 length])
  {
    v6 = [lCopy hasPrefix:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)redirectURLForStoreCollectionId:(int64_t)id
{
  if ([MTStoreIdentifier isEmpty:?])
  {
    v4 = 0;
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", id];
    v6 = +[IMURLBag sharedInstance];
    v7 = [v6 syncStringForKey:@"podcast-redirect-url-prefix"];

    v8 = [v7 stringByAppendingString:v5];
    v4 = [MEMORY[0x1E695DFF8] URLWithString:v8];
  }

  return v4;
}

+ (int64_t)storeCollectionIdForRedirectURL:(id)l
{
  lCopy = l;
  if ([self isRedirectURL:lCopy])
  {
    v5 = +[IMURLBag sharedInstance];
    v6 = [v5 syncStringForKey:@"podcast-redirect-url-prefix"];

    v7 = [lCopy stringByReplacingOccurrencesOfString:v6 withString:&stru_1F548B930];
    longLongValue = [v7 longLongValue];
    if ((longLongValue - 0x7FFFFFFFFFFFFFFFLL) >= 2)
    {
      v9 = longLongValue;
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
  podcastsFoundationBundle = [MEMORY[0x1E696AAE8] podcastsFoundationBundle];
  v4 = [podcastsFoundationBundle localizedStringForKey:@"SHOW_UPDATED_AT_FORMAT" value:&stru_1F548B930 table:0];

  v5 = MEMORY[0x1E695DF00];
  [(MTPodcast *)self latestEpisodeAvailabilityTime];
  v6 = [v5 dateWithTimeIntervalSinceReferenceDate:?];
  friendlyDisplayString = [v6 friendlyDisplayString];

  v8 = [MEMORY[0x1E696AEC0] localizedStringWithValidatedFormat:v4 validFormatSpecifiers:@"%@" error:0, friendlyDisplayString];

  return v8;
}

- (BOOL)requestsAreNonAppInitiated
{
  storeCollectionId = [(MTPodcast *)self storeCollectionId];

  return [MTStoreIdentifier isEmpty:storeCollectionId];
}

- (void)markPlaylistsForUpdate
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  playlistSettings = [(MTPodcast *)self playlistSettings];
  v3 = [playlistSettings countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(playlistSettings);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        [v7 setNeedsUpdate:1];
        playlist = [v7 playlist];
        [playlist setNeedsUpdate:1];
      }

      v4 = [playlistSettings countByEnumeratingWithState:&v10 objects:v14 count:16];
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

+ (id)predicateForImplicitlyFollowedPodcastsExcludingUUIDs:(id)ds
{
  dsCopy = ds;
  predicateForImplicitlyFollowedPodcasts = [self predicateForImplicitlyFollowedPodcasts];
  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"!(%K IN %@)", @"uuid", dsCopy];

  v7 = [predicateForImplicitlyFollowedPodcasts AND:dsCopy];

  return v7;
}

+ (id)predicateForNotImplicitlyFollowedPodcastsWithChannelStoreId:(int64_t)id
{
  predicateForNotHiddenNotImplicitlyFollowedPodcasts = [self predicateForNotHiddenNotImplicitlyFollowedPodcasts];
  v5 = MEMORY[0x1E696AE18];
  v6 = [MEMORY[0x1E696AD98] numberWithLongLong:id];
  v7 = [v5 predicateWithFormat:@"%K = %@", @"channelStoreId", v6];
  v8 = [predicateForNotHiddenNotImplicitlyFollowedPodcasts AND:v7];

  return v8;
}

+ (id)predicateForNonFollowedShowsWithPlayState
{
  predicateForNotHiddenPodcasts = [self predicateForNotHiddenPodcasts];
  predicateForNotSubscribedPodcasts = [self predicateForNotSubscribedPodcasts];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SUBQUERY(%K, $episode, $episode.%K != %@ AND ($episode.%K = %@ OR $episode.%K != %@ OR $episode.%K = %@)).@count > 0", @"episodes", @"playState", &unk_1F54BDE68, @"backCatalog", MEMORY[0x1E695E110], @"playState", &unk_1F54BDE80, @"playStateManuallySet", MEMORY[0x1E695E110]];
  v6 = [predicateForNotHiddenPodcasts AND:predicateForNotSubscribedPodcasts];
  v7 = [v6 AND:v5];

  predicateForImplicitlyFollowedPodcasts = [self predicateForImplicitlyFollowedPodcasts];
  v9 = [v7 OR:predicateForImplicitlyFollowedPodcasts];

  return v9;
}

+ (id)predicateForLastDatePlayedNotInTheFuture
{
  v2 = MEMORY[0x1E696AE18];
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = [v2 predicateForDateKey:@"lastDatePlayed" isLessThanOrEqualToDate:v3];

  return v4;
}

+ (id)predicateForHasBeenSynced:(BOOL)synced
{
  if (synced)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  return [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K != NULL) && ((%K & %lld) == %lld)", @"flags", @"flags", 4, v3];
}

+ (id)predicateForPodcastsNeedingRetry:(BOOL)retry
{
  if (retry)
  {
    v3 = @"(%K & %lld) == %lld";
  }

  else
  {
    v3 = @"(%K & %lld) != %lld";
  }

  return [MEMORY[0x1E696AE18] predicateWithFormat:v3, @"flags", 4096, 4096];
}

+ (id)predicateForImporting:(BOOL)importing
{
  if (importing)
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
  episodeLimitsAllowingAutomaticDownloads = [self episodeLimitsAllowingAutomaticDownloads];
  v3 = [episodeLimitsAllowingAutomaticDownloads mutableCopy];

  _applePodcastsFoundationSettingsUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
  v5 = [_applePodcastsFoundationSettingsUserDefaults episodeLimitForKey:@"MTPodcastEpisodeLimitDefaultKey"];

  if ([MTPodcastEpisodeLimitHelper limitAllowsAutomaticDownloads:v5])
  {
    [v3 addObject:&unk_1F54BDE98];
  }

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"episodeLimit", v3];

  return v6;
}

+ (id)predicateForPodcastsFollowedSince:(id)since
{
  v4 = [MEMORY[0x1E696AE18] predicateForDateKey:@"addedDate" isGreaterThanDate:since];
  predicateForSubscribedPodcasts = [self predicateForSubscribedPodcasts];
  v6 = [v4 AND:predicateForSubscribedPodcasts];

  return v6;
}

+ (id)predicateForPodcastWithFeedUrl:(id)url
{
  urlCopy = url;
  if ([urlCopy length])
  {
    urlCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"feedURL", urlCopy];
    urlCopy2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"updatedFeedURL", urlCopy];
    falsePredicate = [urlCopy OR:urlCopy2];

    if ([MTPodcast isRedirectURL:urlCopy])
    {
      v8 = [MTPodcast storeCollectionIdForRedirectURL:urlCopy];
      if (v8 >= 1)
      {
        v9 = [self predicateForPodcastStoreId:v8];
        v10 = [falsePredicate OR:v9];

        falsePredicate = v10;
      }
    }
  }

  else
  {
    falsePredicate = [MEMORY[0x1E696AE18] falsePredicate];
  }

  return falsePredicate;
}

+ (id)predicateForPodcastWithTitle:(id)title
{
  titleCopy = title;
  if ([titleCopy length])
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"title", titleCopy];
  }

  else
  {
    [MEMORY[0x1E696AE18] falsePredicate];
  }
  v4 = ;

  return v4;
}

+ (id)predicateForHiddenPodcastUuids:(id)uuids
{
  v4 = [self predicateForPodcastUuids:uuids];
  predicateForHiddenPodcasts = [self predicateForHiddenPodcasts];
  v6 = [v4 AND:predicateForHiddenPodcasts];

  return v6;
}

+ (id)predicateForIdentifer:(id)identifer
{
  identiferCopy = identifer;
  falsePredicate = [MEMORY[0x1E696AE18] falsePredicate];
  feedUrl = [identiferCopy feedUrl];
  v6 = [feedUrl length];

  if (v6)
  {
    feedUrl2 = [identiferCopy feedUrl];
    v8 = [MTPodcast predicateForPodcastWithFeedUrl:feedUrl2];

    falsePredicate = v8;
  }

  storeIdentifier = [identiferCopy storeIdentifier];
  longLongValue = [storeIdentifier longLongValue];
  if (longLongValue)
  {
    v11 = [MTPodcast predicateForPodcastStoreId:longLongValue];
    v12 = [falsePredicate OR:v11];

    falsePredicate = v12;
  }

  return falsePredicate;
}

+ (id)predicateForPodcastStoreId:(int64_t)id
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:id];
  v5 = [v3 predicateWithFormat:@"%K = %@", @"storeCollectionId", v4];

  return v5;
}

+ (id)predicateForAreMediaAPI:(BOOL)i
{
  if (i)
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

+ (id)predicateForPodcastWithPodcastPID:(int64_t)d
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v5 = [v3 predicateWithFormat:@"%K == %@", @"podcastPID", v4];

  return v5;
}

+ (id)predicateForPaidSubscriptionActive:(BOOL)active
{
  if (active)
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
  v3 = [self predicateForPaidSubscriptionActive:1];
  _predicateForShowsWithPlayableFreeEpisodes = [self _predicateForShowsWithPlayableFreeEpisodes];
  v5 = [v3 OR:_predicateForShowsWithPlayableFreeEpisodes];

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

+ (id)importedShowArtworkURLFor:(id)for
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
  selfCopy = self;
  if ([(MTPodcast *)selfCopy isSerialShowTypeInFeed])
  {
    v3 = sub_1D8FD017C([(MTPodcast *)selfCopy episodeLimit]);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)shouldBeDeleted
{
  selfCopy = self;
  MTPodcast.shouldBeDeleted.getter();
  v4 = v3;

  return v4 & 1;
}

- (void)calculateNewEpisodeCountIn:(id)in serialShowsUseExperimentalRules:(BOOL)rules
{
  v7 = objc_opt_self();
  inCopy = in;
  selfCopy = self;
  showTypeInFeed = [(MTPodcast *)selfCopy showTypeInFeed];
  showTypeFromString_ = [v7 showTypeFromString_];

  v11 = &selRef_calculateSerialNewEpisodeCountIn_;
  if (showTypeFromString_ == 1 || !rules)
  {
    v11 = &selRef_calculateEpisodicNewEpisodeCountIn_;
  }

  [selfCopy *v11];
}

- (void)calculateEpisodicNewEpisodeCountIn:(id)in
{
  inCopy = in;
  selfCopy = self;
  sub_1D8FD98CC();
}

- (void)calculateSerialNewEpisodeCountIn:(id)in
{
  inCopy = in;
  selfCopy = self;
  sub_1D8FDA2FC(inCopy);
}

- (void)applyDefaultFollowedShowSettingsFor:(int64_t)for
{
  selfCopy = self;
  MTPodcast.applyDefaultFollowedShowSettings(for:)(for);
}

- (void)applyDefaultUnfollowedShowSettings
{
  v3 = objc_opt_self();
  selfCopy = self;
  showTypeInFeed = [(MTPodcast *)selfCopy showTypeInFeed];
  showTypeFromString_ = [v3 showTypeFromString_];

  [(MTPodcast *)selfCopy applyDefaultFollowedShowSettingsFor:showTypeFromString_];
  [(MTPodcast *)selfCopy setEpisodeLimit:0x100000000];
  [(MTPodcast *)selfCopy setNotifications:0];
}

- (int64_t)syncType
{
  selfCopy = self;
  displayType = [(MTPodcast *)selfCopy displayType];
  if (displayType)
  {
    v4 = displayType;
    v5 = MTDisplayTypeFromPersistentString(displayType);

    return v5 == 1;
  }

  else
  {

    return 0;
  }
}

- (BOOL)shouldBeHiddenFromUpNext
{
  selfCopy = self;
  v3 = MTPodcast.shouldBeHiddenFromUpNext.getter();

  return v3;
}

@end