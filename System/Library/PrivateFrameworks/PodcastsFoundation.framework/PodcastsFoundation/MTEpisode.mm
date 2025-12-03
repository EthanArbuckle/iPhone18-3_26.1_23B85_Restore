@interface MTEpisode
+ (BOOL)exists:(id)exists;
+ (BOOL)isExternalMedia:(id)media;
+ (BOOL)isPlayhead:(double)playhead resumableForDuration:(double)duration;
+ (double)endOfTrackForDuration:(double)duration;
+ (id)_dateWithOffset:(id)offset fromDate:(id)date;
+ (id)_predicateForNotEntitlementState:(int64_t)state;
+ (id)_predicateForPriceType:(int64_t)type forPriceTypeKey:(id)key excluding:(BOOL)excluding;
+ (id)episodicSortDescriptors:(int64_t)descriptors;
+ (id)friendlyPubDateStringForEpisode:(id)episode abbreviated:(BOOL)abbreviated;
+ (id)insertNewEpisodeInManagedObjectContext:(id)context canSendNotifications:(BOOL)notifications;
+ (id)insertNewEpisodeInManagedObjectContext:(id)context title:(id)title podcast:(id)podcast pubDate:(id)date byteSize:(int64_t)size guid:(id)guid uti:(id)uti contentId:(int64_t)self0 enclosureUrl:(id)self1 playStateSource:(int)self2 importSource:(int)self3 canSendNotifications:(BOOL)self4;
+ (id)isHLSEpisode;
+ (id)optimizedPredicateForPlayedEpisodePreservation:(BOOL)preservation;
+ (id)optimizedPredicatePlaystateForPreservation:(BOOL)preservation;
+ (id)optimizedRemovalPredicateForRecentlyPlayed:(BOOL)played;
+ (id)predicateForAllBookmarkedEpisodes;
+ (id)predicateForAllBookmarksMigrationRecoveredEpisodes;
+ (id)predicateForAllEpisodesOnPodcast:(id)podcast includeNonAudioEpisodes:(BOOL)episodes;
+ (id)predicateForAllEpisodesOnPodcastUuid:(id)uuid includeNonAudioEpisodes:(BOOL)episodes;
+ (id)predicateForAllEpisodesOnPodcastUuids:(id)uuids includeNonAudioEpisodes:(BOOL)episodes;
+ (id)predicateForAllUnbookmarkedEpisodes;
+ (id)predicateForAtLeastPartiallyPlayedInInterval:(double)interval;
+ (id)predicateForAutomaticDownloadsOnShow:(id)show deletePlayedEpisodes:(BOOL)episodes episodeLimit:(int64_t)limit serialNextEpisodesSort:(BOOL)sort includePlayableWithoutAccount:(BOOL)account;
+ (id)predicateForAutomaticallyDownloadedEpisodes;
+ (id)predicateForBookmarkedEpisodes;
+ (id)predicateForBookmarkedEpisodesExcludingUUIDs:(id)ds;
+ (id)predicateForBookmarkedEpisodesOnPodcastUuid:(id)uuid;
+ (id)predicateForBookmarksMigrationRecoveredEpisodesOnPodcastUuid:(id)uuid;
+ (id)predicateForCategoryPageFromYourShows:(id)shows ctx:(id)ctx;
+ (id)predicateForDRMKeyRequired;
+ (id)predicateForDerivedEntitlementStateEntitled;
+ (id)predicateForDerivedEntitlementStateUnentitled;
+ (id)predicateForDownloadBehavior:(int64_t)behavior;
+ (id)predicateForDownloadLimitForEpisodeLimit:(int64_t)limit;
+ (id)predicateForDownloaded:(BOOL)downloaded;
+ (id)predicateForDownloadedEpisodesOnPodcastUuid:(id)uuid;
+ (id)predicateForDownloadedFairPlayEpisodes;
+ (id)predicateForEpisodeGuids:(id)guids;
+ (id)predicateForEpisodeStoreTrackId:(int64_t)id;
+ (id)predicateForEpisodeStoreTrackIds:(id)ids;
+ (id)predicateForEpisodeType:(int64_t)type;
+ (id)predicateForEpisodeTypeFilter:(int64_t)filter;
+ (id)predicateForEpisodeUuids:(id)uuids;
+ (id)predicateForEpisodesDeterminedByLimitSettings:(int64_t)settings;
+ (id)predicateForEpisodesFirstAvailableThisWeek;
+ (id)predicateForEpisodesFromiTunesSyncOnPodcastUuid:(id)uuid;
+ (id)predicateForEpisodesImportedAfterDate:(id)date;
+ (id)predicateForEpisodesInFeedForPodcastUuid:(id)uuid;
+ (id)predicateForEpisodesInSearchResults;
+ (id)predicateForEpisodesInStationShow:(id)show;
+ (id)predicateForEpisodesIsFromiTunesSyncOnPodcastUuid:(id)uuid;
+ (id)predicateForEpisodesOnUnplayedTab;
+ (id)predicateForEpisodesOnUnplayedTabOnPodcastUuid:(id)uuid ctx:(id)ctx;
+ (id)predicateForEpisodesPlayableWithoutAccount;
+ (id)predicateForEpisodesPriceChangedAfterOffset:(id)offset fromDate:(id)date;
+ (id)predicateForEpisodesPriceTypeChangedThisWeek;
+ (id)predicateForEpisodesPublishedAfterOffset:(id)offset fromDate:(id)date;
+ (id)predicateForEpisodesPublishedLastTwoWeeks;
+ (id)predicateForEpisodesPublishedLastTwoWeeksWithTodayDate:(id)date;
+ (id)predicateForEpisodesPublishedThisMonth;
+ (id)predicateForEpisodesPublishedThisMonthWithTodayDate:(id)date;
+ (id)predicateForEpisodesPublishedThisWeek;
+ (id)predicateForEpisodesPublishedThisWeekWithTodayDate:(id)date;
+ (id)predicateForEpisodesPublishedToday;
+ (id)predicateForEpisodesRequiringAccount;
+ (id)predicateForEpisodesWhichNeedEntitlementStateUpdate;
+ (id)predicateForEpisodesWhichNeedEntitlementStateUpdateForShowUUID:(id)d subscriptionState:(BOOL)state;
+ (id)predicateForEpisodesWithEpisodeNumbersGreaterThan:(int64_t)than;
+ (id)predicateForEpisodesWithSeasonAndEpisodeNumbersGreaterThanOrEqualTo:(int64_t)to seasonNumber:(int64_t)number;
+ (id)predicateForEpisodesWithSeasonNumbersOnPodcastUuid:(id)uuid;
+ (id)predicateForEpisodesWithUnsatisfiedAvailabilityDate;
+ (id)predicateForEpisodesWithinLevel:(unint64_t)level;
+ (id)predicateForFeedURLs:(id)ls;
+ (id)predicateForHasAnyVisualPlayState;
+ (id)predicateForHasBeenPlayed;
+ (id)predicateForHasValidPersistentId:(BOOL)id;
+ (id)predicateForHiddenPodcastForEpisodeUuids:(id)uuids;
+ (id)predicateForHidingFuturePlayedTimestamps;
+ (id)predicateForIsBackCatalogItem;
+ (id)predicateForLibraryEpisodesOnPodcastUuid:(id)uuid;
+ (id)predicateForLimittedEpisodesOnPodcastUuid:(id)uuid determinedByLimit:(int64_t)limit deletePlayedEpisodes:(BOOL)episodes;
+ (id)predicateForListenNow;
+ (id)predicateForListenNowForPodcastUuid:(id)uuid;
+ (id)predicateForListenNowLatestEpisodes;
+ (id)predicateForNewsFromYourShows:(id)shows ctx:(id)ctx;
+ (id)predicateForNonHLS;
+ (id)predicateForOtherEpisodesOnPodcastUuid:(id)uuid baseEpisodesPredicate:(id)predicate deletePlayedEpisodes:(BOOL)episodes;
+ (id)predicateForPlayableEpisode:(BOOL)episode;
+ (id)predicateForPlayed:(BOOL)played;
+ (id)predicateForPlayedDateSetByListening;
+ (id)predicateForPlayedInInterval:(double)interval;
+ (id)predicateForPodcastIsSerial:(BOOL)serial;
+ (id)predicateForPodcastPaidSubscriptionActive:(BOOL)active;
+ (id)predicateForPreviouslyPlayed;
+ (id)predicateForPreviouslyPlayedHidingFutureTimestamps;
+ (id)predicateForPubDateLimit:(int64_t)limit;
+ (id)predicateForRSSEpisodes;
+ (id)predicateForRecentlyPlayedEpisodesToBeDeletedOnPodcastUuid:(id)uuid deletePlayedEpisodes:(BOOL)episodes;
+ (id)predicateForSeasonNumber:(int64_t)number;
+ (id)predicateForSeasonNumberWithNoEpisodeNumber:(int64_t)number;
+ (id)predicateForStationEligibleEpisodes;
+ (id)predicateForStoreIdentifier:(id)identifier;
+ (id)predicateForSubscriptionOnly;
+ (id)predicateForUnbookmarkedEpisodes;
+ (id)predicateForUserEpisodes;
+ (id)predicateForUserEpisodesOnPodcastUuid:(id)uuid ctx:(id)ctx;
+ (id)predicateForUserSetTopLevelEpisodes;
+ (id)predicateForVisuallyPlayed:(BOOL)played;
+ (id)predicateForWatchBaseEpisodesIncludingOnlyAudio:(BOOL)audio;
+ (id)predicateForWatchRecentlyPlayed;
+ (id)propertiesToFetchAssetURL;
+ (id)propertiesToFetchBestTitle;
+ (id)propertiesToFetchIsBackCatalogItem;
+ (id)propertiesToFetchIsExplicit;
+ (id)propertiesToFetchIsPartiallyPlayed;
+ (id)propertiesToFetchIsPartiallyPlayedBackCatalogItem;
+ (id)propertiesToFetchIsPlayed;
+ (id)propertiesToFetchIsPlayheadPartiallyPlayed;
+ (id)propertiesToFetchIsVisuallyPlayed;
+ (id)propertiesToFetchPlaybackProgress;
+ (id)propertiesToFetchTimeRemaining;
+ (id)propertiesToObserveForDownloadableEpisodes;
+ (id)propertyPathForPodcastProperty:(id)property;
+ (id)relationshipKeyPathsForPrefetchingIsExplicit;
+ (id)seasonSortDescriptors:(int64_t)descriptors;
+ (id)sortDescriptorsForCalculatingEpisodeLevel;
+ (id)sortDescriptorsForListenNow;
+ (id)sortDescriptorsForModifiedDateUpNextScore;
+ (id)sortDescriptorsForTitle;
+ (id)sortDescriptorsForUpNextScore;
+ (id)userDefaultPropertiesAffectingPredicates;
+ (void)episodeUuidForGUID:(id)d feedURL:(id)l completion:(id)completion;
- (BOOL)allowsDurationUpdateFromSource:(int)source;
- (BOOL)hasFreeVersion;
- (BOOL)isBackCatalogItem;
- (BOOL)isDownloaded;
- (BOOL)isExplicit;
- (BOOL)isInPodcastDetailsUnplayedTab;
- (BOOL)isInUserEpisodes;
- (BOOL)isMedia;
- (BOOL)isPlayheadResumable;
- (BOOL)isRestricted;
- (BOOL)isShareable;
- (BOOL)isVisuallyPlayed;
- (NSAttributedString)attributedDescriptionFromHTML;
- (NSString)assetURL;
- (double)endOfTrack;
- (double)playbackProgress;
- (double)playbackProgressSanitized;
- (double)timeRemaining;
- (id)bestSummary;
- (id)bestTitle;
- (id)bestUrl;
- (id)displayURL;
- (id)metricsContentIdentifier;
- (id)numberedTitle;
- (id)playURL;
- (id)playedText;
- (id)playedTextForCarplay;
- (id)transcriptProvider;
- (id)transcriptSnippet;
- (int64_t)_resolvedEntitlementState;
- (int64_t)bookmarksSyncType;
- (int64_t)downloadError;
- (int64_t)episodeTypeResolvedValue;
- (int64_t)parsePriceType;
- (void)_setAssetUrl:(id)url;
- (void)incremementPlayCount;
- (void)markAsBookmarked;
- (void)markAsBookmarkedOnTimestamp:(double)timestamp;
- (void)markAsUnbookmarked;
- (void)resolveAvailabilityDate;
- (void)setAssetURL:(id)l;
- (void)setAttributedDescriptionFromHTML:(id)l;
- (void)setByteSize:(int64_t)size;
- (void)setCleanedTitle:(id)title;
- (void)setDownloadError:(int64_t)error;
- (void)setDuration:(double)duration;
- (void)setEnclosureURL:(id)l;
- (void)setEntitledDuration:(double)duration;
- (void)setEpisodeLevel:(int64_t)level;
- (void)setEpisodeNumber:(int64_t)number;
- (void)setEpisodeType:(id)type;
- (void)setFreeDuration:(double)duration;
- (void)setImportDate:(double)date;
- (void)setIsTopLevel:(BOOL)level;
- (void)setItemDescription:(id)description;
- (void)setItunesSubtitle:(id)subtitle;
- (void)setItunesTitle:(id)title;
- (void)setLastDatePlayed:(double)played;
- (void)setMetadataIdentifier:(id)identifier;
- (void)setPersistentID:(int64_t)d;
- (void)setPodcast:(id)podcast;
- (void)setPodcastUuid:(id)uuid;
- (void)setPubDate:(double)date;
- (void)setSeasonNumber:(int64_t)number;
- (void)setTrackNum:(int64_t)num;
- (void)setUti:(id)uti;
- (void)setWebpageURL:(id)l;
- (void)suppressAutomaticDownloadsIfNeeded;
- (void)unsuppressAutomaticDownloadsIfNeeded;
- (void)updateEntitlementState;
- (void)updateListenNowSortingDate;
- (void)updateUPPTimestamp;
@end

@implementation MTEpisode

+ (id)predicateForIsBackCatalogItem
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = [self predicateForBacklog:1];
  v5 = [self predicateForPlayed:{1, v4}];
  v11[1] = v5;
  v6 = [self predicateForPlayStateManuallySet:1];
  v11[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v8 = [v3 andPredicateWithSubpredicates:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)predicateForListenNow
{
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"listenNowEpisode", MEMORY[0x1E695E118]];
  predicateForPodcastIsNotHidden = [self predicateForPodcastIsNotHidden];
  v5 = [v3 AND:predicateForPodcastIsNotHidden];

  return v5;
}

+ (id)sortDescriptorsForListenNow
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"podcast.modifiedDate" ascending:0];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastDatePlayed" ascending:{1, v2}];
  v8[1] = v3;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"episodeLevel" ascending:1];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)bestTitle
{
  v3 = os_feature_enabled_remove_clean_episode_title();
  itunesTitle = [(MTEpisode *)self itunesTitle];
  v5 = itunesTitle;
  if (!v3)
  {
    if (!itunesTitle)
    {
      cleanedTitle = [(MTEpisode *)self cleanedTitle];
      v10 = cleanedTitle;
      if (cleanedTitle)
      {
        title = cleanedTitle;
      }

      else
      {
        title = [(MTEpisode *)self title];
      }

      v7 = title;

      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (itunesTitle)
  {
LABEL_5:
    title2 = itunesTitle;
    goto LABEL_6;
  }

  title2 = [(MTEpisode *)self title];
LABEL_6:
  v7 = title2;
LABEL_7:

  return v7;
}

- (id)numberedTitle
{
  itunesTitle = [(MTEpisode *)self itunesTitle];
  if (itunesTitle && (v4 = itunesTitle, v5 = [(MTEpisode *)self episodeNumber], v4, v5 >= 1))
  {
    podcastsFoundationBundle = [MEMORY[0x1E696AAE8] podcastsFoundationBundle];
    v7 = [podcastsFoundationBundle localizedStringForKey:@"EPISODE_NUMBER_AND_TITLE_FORMAT" value:&stru_1F548B930 table:0];

    v8 = MEMORY[0x1E696AEC0];
    episodeNumber = [(MTEpisode *)self episodeNumber];
    itunesTitle2 = [(MTEpisode *)self itunesTitle];
    bestTitle = [v8 localizedStringWithValidatedFormat:v7 validFormatSpecifiers:@"%1$lld %2$@" error:0, episodeNumber, itunesTitle2];
  }

  else
  {
    bestTitle = [(MTEpisode *)self bestTitle];
  }

  return bestTitle;
}

- (id)bestSummary
{
  if (os_feature_enabled_use_episode_description_for_summary())
  {
    itemDescription = [(MTEpisode *)self itemDescription];
    if ([itemDescription hasHTML])
    {
      [(MTEpisode *)self itemDescriptionWithoutHTML];
    }

    else
    {
      [(MTEpisode *)self itemDescription];
    }
    itunesSubtitle = ;
  }

  else
  {
    itunesSubtitle = [(MTEpisode *)self itunesSubtitle];
  }

  return itunesSubtitle;
}

- (NSString)assetURL
{
  v16 = *MEMORY[0x1E69E9840];
  securityScopedAssetData = [(MTEpisode *)self securityScopedAssetData];
  if (securityScopedAssetData)
  {
    v11 = 0;
    v10 = 0;
    v4 = [MEMORY[0x1E695DFF8] URLByResolvingBookmarkData:securityScopedAssetData options:0 relativeToURL:0 bookmarkDataIsStale:&v11 error:&v10];
    v5 = v10;
    if (v5 || v11 == 1)
    {
      v6 = _MTLogCategoryDatabase();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v13 = v5;
        v14 = 1024;
        v15 = v11;
        _os_log_impl(&dword_1D8CEC000, v6, OS_LOG_TYPE_ERROR, "Error resolving security scoped bookmark data %@.  Data is stale %d", buf, 0x12u);
      }
    }

    if (v4)
    {
      absoluteString = [v4 absoluteString];

      goto LABEL_11;
    }
  }

  absoluteString = [(MTEpisode *)self primitiveValueForKey:@"assetURL"];
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return absoluteString;
}

- (BOOL)isExplicit
{
  if (([(MTEpisode *)self explicit]& 1) != 0)
  {
    return 1;
  }

  podcast = [(MTEpisode *)self podcast];
  isExplicit = [podcast isExplicit];

  return isExplicit;
}

- (int64_t)episodeTypeResolvedValue
{
  episodeType = [(MTEpisode *)self episodeType];
  v4 = [episodeType length];

  if (!v4)
  {
    return 0;
  }

  episodeType2 = [(MTEpisode *)self episodeType];
  v6 = [episodeType2 caseInsensitiveCompare:@"trailer"];

  if (!v6)
  {
    return 1;
  }

  episodeType3 = [(MTEpisode *)self episodeType];
  v8 = [episodeType3 caseInsensitiveCompare:@"bonus"] == 0;

  return 2 * v8;
}

- (BOOL)hasFreeVersion
{
  freePriceType = [(MTEpisode *)self freePriceType];
  v3 = MTEpisodePriceTypeFromPersistentString(freePriceType);

  return (v3 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

+ (id)predicateForPreviouslyPlayedHidingFutureTimestamps
{
  predicateForPreviouslyPlayed = [self predicateForPreviouslyPlayed];
  predicateForHidingFuturePlayedTimestamps = [self predicateForHidingFuturePlayedTimestamps];
  v5 = [predicateForPreviouslyPlayed AND:predicateForHidingFuturePlayedTimestamps];

  return v5;
}

+ (id)predicateForPreviouslyPlayed
{
  predicateForHasBeenPlayed = [self predicateForHasBeenPlayed];
  predicateForPodcastIsNotHidden = [self predicateForPodcastIsNotHidden];
  v5 = [predicateForHasBeenPlayed AND:predicateForPodcastIsNotHidden];
  predicateForPlayedDateSetByListening = [self predicateForPlayedDateSetByListening];
  v7 = [v5 AND:predicateForPlayedDateSetByListening];

  return v7;
}

+ (id)predicateForPlayedDateSetByListening
{
  predicateForNotManuallyMarkedAsPlayed = [self predicateForNotManuallyMarkedAsPlayed];
  predicateForListenedAfterMarkedAsPlayed = [self predicateForListenedAfterMarkedAsPlayed];
  v5 = [predicateForNotManuallyMarkedAsPlayed OR:predicateForListenedAfterMarkedAsPlayed];

  return v5;
}

+ (id)predicateForHasBeenPlayed
{
  v2 = MEMORY[0x1E696AE18];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v4 = [v2 predicateWithFormat:@"%K != NULL AND %K > %@", @"lastDatePlayed", @"lastDatePlayed", distantPast];

  return v4;
}

+ (id)predicateForHidingFuturePlayedTimestamps
{
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:2592000.0];
  v3 = [MEMORY[0x1E696AE18] predicateForDateKey:@"lastDatePlayed" isLessThanDate:v2];
  v4 = [MEMORY[0x1E696AE18] predicateForNilValueForKey:@"lastDatePlayed"];
  v5 = [v3 OR:v4];

  return v5;
}

- (BOOL)isVisuallyPlayed
{
  if ([(MTEpisode *)self isBackCatalogItem])
  {
    return 0;
  }

  return [(MTEpisode *)self isPlayed];
}

- (BOOL)isBackCatalogItem
{
  if ([(MTEpisode *)self playState]|| ![(MTEpisode *)self playStateManuallySet])
  {
    return 0;
  }

  return [(MTEpisode *)self backCatalog];
}

+ (id)predicateForStationEligibleEpisodes
{
  predicateForEntitledEpisodes = [self predicateForEntitledEpisodes];
  v4 = [self predicateForSaved:1];
  v5 = [self predicateForDownloaded:1 excludeHidden:1];
  v6 = [v4 OR:v5];

  v7 = [self predicateForPodcastIsSubscribed:1];
  v8 = [v7 OR:v6];

  v9 = [predicateForEntitledEpisodes AND:v8];

  return v9;
}

+ (id)predicateForDownloadedFairPlayEpisodes
{
  v2 = [MTEpisode predicateForDownloaded:1 excludeHidden:1];
  v3 = +[MTEpisode assetURLIsPackagedMedia];
  v4 = [v2 AND:v3];

  return v4;
}

- (id)transcriptProvider
{
  podcast = [(MTEpisode *)self podcast];
  channel = [podcast channel];
  subscriptionActive = [channel subscriptionActive];

  if (subscriptionActive)
  {
    [(MTEpisode *)self entitledTranscriptProvider];
  }

  else
  {
    [(MTEpisode *)self freeTranscriptProvider];
  }
  v6 = ;

  return v6;
}

+ (id)propertyPathForPodcastProperty:(id)property
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"podcast";
  v9[1] = property;
  v3 = MEMORY[0x1E695DEC8];
  propertyCopy = property;
  v5 = [v3 arrayWithObjects:v9 count:2];

  v6 = [v5 componentsJoinedByString:@"."];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)setPersistentID:(int64_t)d
{
  if ([(MTEpisode *)self persistentID]!= d)
  {
    [(MTEpisode *)self willChangeValueForKey:@"persistentID"];
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
    [(MTEpisode *)self setPrimitiveValue:v5 forKey:@"persistentID"];

    [(MTEpisode *)self didChangeValueForKey:@"persistentID"];
    if (objc_opt_respondsToSelector())
    {

      [(MTEpisode *)self didChangePersistentID];
    }
  }
}

- (void)setPodcast:(id)podcast
{
  podcastCopy = podcast;
  [(MTEpisode *)self willChangeValueForKey:@"podcast"];
  [(MTEpisode *)self setPrimitiveValue:podcastCopy forKey:@"podcast"];
  [(MTEpisode *)self didChangeValueForKey:@"podcast"];
  uuid = [podcastCopy uuid];
  [(MTEpisode *)self setPodcastUuid:uuid];

  if (([podcastCopy currentEpisodeLimitAllowsAutomaticDownloads] & 1) == 0)
  {
    [(MTEpisode *)self suppressAutomaticDownloadsIfNeeded];
  }

  if (([podcastCopy notifications] & 1) == 0)
  {
    [(MTEpisode *)self setSentNotification:1];
  }
}

- (void)setImportDate:(double)date
{
  v5 = +[_TtC18PodcastsFoundation17FutureDateChecker lenientSharedInstance];
  [v5 timestampBoundByNow:date];
  v7 = v6;

  [(MTEpisode *)self importDate];
  if (v8 != v7)
  {
    [(MTEpisode *)self willChangeValueForKey:@"importDate"];
    v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v7];
    [(MTEpisode *)self setPrimitiveValue:v9 forKey:@"importDate"];

    [(MTEpisode *)self didChangeValueForKey:@"importDate"];
  }
}

- (void)setCleanedTitle:(id)title
{
  titleCopy = title;
  cleanedTitle = [(MTEpisode *)self cleanedTitle];
  v5 = titleCopy | cleanedTitle;

  if (v5)
  {
    cleanedTitle2 = [(MTEpisode *)self cleanedTitle];
    v7 = [cleanedTitle2 isEqualToString:titleCopy];

    if ((v7 & 1) == 0)
    {
      [(MTEpisode *)self willChangeValueForKey:@"cleanedTitle"];
      [(MTEpisode *)self setPrimitiveValue:titleCopy forKey:@"cleanedTitle"];
      [(MTEpisode *)self didChangeValueForKey:@"cleanedTitle"];
    }
  }
}

- (void)setByteSize:(int64_t)size
{
  if ([(MTEpisode *)self byteSize]!= size)
  {
    [(MTEpisode *)self willChangeValueForKey:@"byteSize"];
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:size];
    [(MTEpisode *)self setPrimitiveValue:v5 forKey:@"byteSize"];

    [(MTEpisode *)self didChangeValueForKey:@"byteSize"];
  }
}

- (void)setEnclosureURL:(id)l
{
  lCopy = l;
  enclosureURL = [(MTEpisode *)self enclosureURL];
  v5 = lCopy | enclosureURL;

  if (v5)
  {
    enclosureURL2 = [(MTEpisode *)self enclosureURL];
    v7 = [enclosureURL2 isEqualToString:lCopy];

    if ((v7 & 1) == 0)
    {
      [(MTEpisode *)self willChangeValueForKey:@"enclosureURL"];
      [(MTEpisode *)self setPrimitiveValue:lCopy forKey:@"enclosureURL"];
      [(MTEpisode *)self didChangeValueForKey:@"enclosureURL"];
    }
  }
}

- (void)setPodcastUuid:(id)uuid
{
  uuidCopy = uuid;
  if (!uuidCopy && ([(MTEpisode *)self isDeleted]& 1) == 0)
  {
    v5 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(MTEpisode(Core) *)self setPodcastUuid:v5];
    }
  }

  [(MTEpisode *)self willChangeValueForKey:@"podcastUuid"];
  [(MTEpisode *)self setPrimitiveValue:uuidCopy forKey:@"podcastUuid"];
  [(MTEpisode *)self didChangeValueForKey:@"podcastUuid"];
}

- (void)setEpisodeLevel:(int64_t)level
{
  if ([(MTEpisode *)self episodeLevel]!= level)
  {
    [(MTEpisode *)self willChangeValueForKey:@"episodeLevel"];
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:level];
    [(MTEpisode *)self setPrimitiveValue:v5 forKey:@"episodeLevel"];

    [(MTEpisode *)self didChangeValueForKey:@"episodeLevel"];
  }
}

- (void)setItunesTitle:(id)title
{
  titleCopy = title;
  itunesTitle = [(MTEpisode *)self itunesTitle];
  v5 = titleCopy | itunesTitle;

  if (v5)
  {
    itunesTitle2 = [(MTEpisode *)self itunesTitle];
    v7 = [itunesTitle2 isEqualToString:titleCopy];

    if ((v7 & 1) == 0)
    {
      [(MTEpisode *)self willChangeValueForKey:@"itunesTitle"];
      [(MTEpisode *)self setPrimitiveValue:titleCopy forKey:@"itunesTitle"];
      [(MTEpisode *)self didChangeValueForKey:@"itunesTitle"];
    }
  }
}

- (void)setEpisodeType:(id)type
{
  typeCopy = type;
  episodeType = [(MTEpisode *)self episodeType];
  v5 = typeCopy | episodeType;

  if (v5)
  {
    episodeType2 = [(MTEpisode *)self episodeType];
    v7 = [episodeType2 isEqualToString:typeCopy];

    if ((v7 & 1) == 0)
    {
      [(MTEpisode *)self willChangeValueForKey:@"episodeType"];
      [(MTEpisode *)self setPrimitiveValue:typeCopy forKey:@"episodeType"];
      [(MTEpisode *)self didChangeValueForKey:@"episodeType"];
    }
  }
}

- (void)setWebpageURL:(id)l
{
  lCopy = l;
  webpageURL = [(MTEpisode *)self webpageURL];
  v5 = lCopy | webpageURL;

  if (v5)
  {
    webpageURL2 = [(MTEpisode *)self webpageURL];
    v7 = [webpageURL2 isEqualToString:lCopy];

    if ((v7 & 1) == 0)
    {
      [(MTEpisode *)self willChangeValueForKey:@"webpageURL"];
      [(MTEpisode *)self setPrimitiveValue:lCopy forKey:@"webpageURL"];
      [(MTEpisode *)self didChangeValueForKey:@"webpageURL"];
    }
  }
}

- (void)setEpisodeNumber:(int64_t)number
{
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
  if (number)
  {
    v7 = v5;
  }

  else
  {

    v7 = 0;
  }

  v6 = [(MTEpisode *)self primitiveValueForKey:@"episodeNumber"];
  if (v7 != v6 && ([v7 isEqual:v6] & 1) == 0)
  {
    [(MTEpisode *)self willChangeValueForKey:@"episodeNumber"];
    [(MTEpisode *)self setPrimitiveValue:v7 forKey:@"episodeNumber"];
    [(MTEpisode *)self didChangeValueForKey:@"episodeNumber"];
  }
}

- (void)setSeasonNumber:(int64_t)number
{
  if ([(MTEpisode *)self seasonNumber]!= number)
  {
    if (number)
    {
      v5 = [MEMORY[0x1E696AD98] numberWithLongLong:number];
    }

    else
    {
      v5 = 0;
    }

    [(MTEpisode *)self willChangeValueForKey:@"seasonNumber"];
    [(MTEpisode *)self setPrimitiveValue:v5 forKey:@"seasonNumber"];
    [(MTEpisode *)self didChangeValueForKey:@"seasonNumber"];
  }
}

- (void)setDuration:(double)duration
{
  [(MTEpisode *)self duration];
  if (vabdd_f64(v5, duration) > 2.22044605e-16)
  {
    [(MTEpisode *)self willChangeValueForKey:@"duration"];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
    [(MTEpisode *)self setPrimitiveValue:v6 forKey:@"duration"];

    [(MTEpisode *)self didChangeValueForKey:@"duration"];
  }
}

- (void)setEntitledDuration:(double)duration
{
  [(MTEpisode *)self entitledDuration];
  if (vabdd_f64(v5, duration) > 2.22044605e-16)
  {
    [(MTEpisode *)self willChangeValueForKey:@"entitledDuration"];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
    [(MTEpisode *)self setPrimitiveValue:v6 forKey:@"entitledDuration"];

    [(MTEpisode *)self didChangeValueForKey:@"entitledDuration"];
  }
}

- (void)setFreeDuration:(double)duration
{
  [(MTEpisode *)self freeDuration];
  if (vabdd_f64(v5, duration) > 2.22044605e-16)
  {
    [(MTEpisode *)self willChangeValueForKey:@"freeDuration"];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
    [(MTEpisode *)self setPrimitiveValue:v6 forKey:@"freeDuration"];

    [(MTEpisode *)self didChangeValueForKey:@"freeDuration"];
  }
}

- (void)setTrackNum:(int64_t)num
{
  if ([(MTEpisode *)self trackNum]!= num)
  {
    [(MTEpisode *)self willChangeValueForKey:@"trackNum"];
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:num];
    [(MTEpisode *)self setPrimitiveValue:v5 forKey:@"trackNum"];

    [(MTEpisode *)self didChangeValueForKey:@"trackNum"];
  }
}

- (void)setPubDate:(double)date
{
  [(MTEpisode *)self pubDate];
  if (vabdd_f64(v5, date) > 2.22044605e-16)
  {
    [(MTEpisode *)self willChangeValueForKey:@"pubDate"];
    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:date];
    [(MTEpisode *)self setPrimitiveValue:v6 forKey:@"pubDate"];

    [(MTEpisode *)self didChangeValueForKey:@"pubDate"];
  }
}

+ (id)propertiesToFetchBestTitle
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"itunesTitle";
  v5[1] = @"cleanedTitle";
  v5[2] = @"title";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)propertiesToFetchIsPlayed
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"playState";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)propertiesToFetchIsPartiallyPlayed
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"playState";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)propertiesToFetchIsVisuallyPlayed
{
  array = [MEMORY[0x1E695DF70] array];
  propertiesToFetchIsBackCatalogItem = [self propertiesToFetchIsBackCatalogItem];
  [array addObjectsFromArray:propertiesToFetchIsBackCatalogItem];

  propertiesToFetchIsPlayed = [self propertiesToFetchIsPlayed];
  [array addObjectsFromArray:propertiesToFetchIsPlayed];

  v6 = [array copy];

  return v6;
}

+ (id)propertiesToFetchIsBackCatalogItem
{
  v5[3] = *MEMORY[0x1E69E9840];
  v5[0] = @"playState";
  v5[1] = @"playStateManuallySet";
  v5[2] = @"backCatalog";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:3];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)propertiesToFetchIsPartiallyPlayedBackCatalogItem
{
  array = [MEMORY[0x1E695DF70] array];
  propertiesToFetchIsBackCatalogItem = [self propertiesToFetchIsBackCatalogItem];
  [array addObjectsFromArray:propertiesToFetchIsBackCatalogItem];

  propertiesToFetchIsPlayheadPartiallyPlayed = [self propertiesToFetchIsPlayheadPartiallyPlayed];
  [array addObjectsFromArray:propertiesToFetchIsPlayheadPartiallyPlayed];

  v6 = [array copy];

  return v6;
}

+ (id)propertiesToFetchPlaybackProgress
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"duration";
  v5[1] = @"playhead";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (double)playbackProgress
{
  [(MTEpisode *)self duration];
  v4 = v3;
  result = 0.0;
  if (v4 != 0.0)
  {
    [(MTEpisode *)self playhead];
    v7 = v6;
    [(MTEpisode *)self duration];
    return v7 / v8;
  }

  return result;
}

- (double)playbackProgressSanitized
{
  playState = [(MTEpisode *)self playState];
  if (!playState)
  {
    return 1.0;
  }

  if (playState == 2)
  {
    return 0.0;
  }

  if (playState != 1)
  {
    return -1.0;
  }

  [(MTEpisode *)self duration];
  v5 = v4;
  [(MTEpisode *)self playhead];
  v7 = v6;
  result = 0.5;
  if (v5 > v7)
  {
    [(MTEpisode *)self playhead];
    v10 = v9;
    [(MTEpisode *)self duration];
    v12 = v10 / v11;
    v13 = v12 > 1.0 || v12 < 0.0;
    result = v12;
    if (v13)
    {
      return 0.5;
    }
  }

  return result;
}

+ (id)propertiesToFetchTimeRemaining
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"duration";
  v5[1] = @"playhead";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (double)timeRemaining
{
  [(MTEpisode *)self duration];
  v4 = v3;
  [(MTEpisode *)self playhead];
  return v4 - v5;
}

- (double)endOfTrack
{
  [(MTEpisode *)self duration];

  [MTEpisode endOfTrackForDuration:?];
  return result;
}

- (BOOL)isPlayheadResumable
{
  [(MTEpisode *)self playhead];
  v4 = v3;
  [(MTEpisode *)self duration];

  return [MTEpisode isPlayhead:v4 resumableForDuration:v5];
}

+ (id)propertiesToFetchIsPlayheadPartiallyPlayed
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"playhead";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (BOOL)isDownloaded
{
  assetURL = [(MTEpisode *)self assetURL];
  v3 = assetURL != 0;

  return v3;
}

+ (id)propertiesToFetchAssetURL
{
  v5[2] = *MEMORY[0x1E69E9840];
  v5[0] = @"securityScopedAssetData";
  v5[1] = @"assetURL";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (void)_setAssetUrl:(id)url
{
  urlCopy = url;
  [(MTEpisode *)self willChangeValueForKey:@"assetURL"];
  [(MTEpisode *)self setPrimitiveValue:urlCopy forKey:@"assetURL"];

  [(MTEpisode *)self didChangeValueForKey:@"assetURL"];
}

- (id)bestUrl
{
  assetURL = [(MTEpisode *)self assetURL];

  if (!assetURL || ([(MTEpisode *)self assetURL], (enclosureURL = objc_claimAutoreleasedReturnValue()) == 0))
  {
    enclosureURL = [(MTEpisode *)self enclosureURL];
  }

  v5 = [MEMORY[0x1E695DFF8] URLWithString:enclosureURL];

  return v5;
}

+ (double)endOfTrackForDuration:(double)duration
{
  if (duration <= 360.0)
  {
    return duration * 0.9;
  }

  else
  {
    return duration + -240.0;
  }
}

+ (BOOL)isPlayhead:(double)playhead resumableForDuration:(double)duration
{
  if (playhead < 0.100000001)
  {
    return 0;
  }

  [MTEpisode endOfTrackForDuration:duration];
  return v6 > playhead;
}

+ (id)propertiesToFetchIsExplicit
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = @"explicit";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

+ (id)relationshipKeyPathsForPrefetchingIsExplicit
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7[0] = @"podcast";
  v7[1] = @"flags";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];
  v3 = [v2 componentsJoinedByString:@"."];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)isShareable
{
  if ([(MTEpisode *)self isExternalType])
  {
    return 0;
  }

  podcast = [(MTEpisode *)self podcast];
  isShareable = [podcast isShareable];

  return isShareable;
}

- (void)suppressAutomaticDownloadsIfNeeded
{
  if (![(MTEpisode *)self downloadBehavior])
  {

    [(MTEpisode *)self setDownloadBehavior:1];
  }
}

- (void)unsuppressAutomaticDownloadsIfNeeded
{
  if ([(MTEpisode *)self downloadBehavior]== 1)
  {

    [(MTEpisode *)self setDownloadBehavior:0];
  }
}

- (id)transcriptSnippet
{
  podcast = [(MTEpisode *)self podcast];
  channel = [podcast channel];
  subscriptionActive = [channel subscriptionActive];

  if (subscriptionActive)
  {
    [(MTEpisode *)self entitledTranscriptSnippet];
  }

  else
  {
    [(MTEpisode *)self freeTranscriptSnippet];
  }
  v6 = ;

  return v6;
}

- (int64_t)parsePriceType
{
  priceType = [(MTEpisode *)self priceType];
  v3 = MTEpisodePriceTypeFromPersistentString(priceType);

  return v3;
}

- (int64_t)_resolvedEntitlementState
{
  v3 = +[MTEpisode predicateForDerivedEntitlementStateFree];
  v4 = [v3 evaluateWithObject:self];

  if (v4)
  {
    return 0;
  }

  v6 = +[MTEpisode predicateForDerivedEntitlementStateEntitled];
  v7 = [v6 evaluateWithObject:self];

  if (v7)
  {
    return 1;
  }

  v8 = +[MTEpisode predicateForDerivedEntitlementStateUnentitled];
  v9 = [v8 evaluateWithObject:self];

  if (v9)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)updateEntitlementState
{
  _resolvedEntitlementState = [(MTEpisode *)self _resolvedEntitlementState];

  [(MTEpisode *)self setEntitlementState:_resolvedEntitlementState];
}

- (id)playURL
{
  v3 = MEMORY[0x1E696AEC0];
  podcastUuid = [(MTEpisode *)self podcastUuid];
  v5 = podcastUuid;
  if (podcastUuid)
  {
    v6 = podcastUuid;
  }

  else
  {
    v6 = @"null";
  }

  uuid = [(MTEpisode *)self uuid];
  v8 = uuid;
  if (uuid)
  {
    v9 = uuid;
  }

  else
  {
    v9 = @"null";
  }

  v10 = [v3 stringWithFormat:@"podcasts://play?podcastUuid=%@&episodeUuid=%@", v6, v9];

  v11 = [MEMORY[0x1E695DFF8] URLWithString:v10];

  return v11;
}

- (id)displayURL
{
  v3 = MEMORY[0x1E696AEC0];
  podcastUuid = [(MTEpisode *)self podcastUuid];
  v5 = podcastUuid;
  if (podcastUuid)
  {
    v6 = podcastUuid;
  }

  else
  {
    v6 = @"null";
  }

  uuid = [(MTEpisode *)self uuid];
  v8 = uuid;
  if (uuid)
  {
    v9 = uuid;
  }

  else
  {
    v9 = @"null";
  }

  v10 = [v3 stringWithFormat:@"podcasts://show?podcastUuid=%@&episodeUuid=%@", v6, v9];

  v11 = [MEMORY[0x1E695DFF8] URLWithString:v10];

  return v11;
}

- (BOOL)isMedia
{
  if ([(MTEpisode *)self isAudio])
  {
    return 1;
  }

  return [(MTEpisode *)self isVideo];
}

- (void)setIsTopLevel:(BOOL)level
{
  levelCopy = level;
  flags = [(MTEpisode *)self flags];
  if ((flags & 1) != levelCopy)
  {

    [(MTEpisode *)self setFlags:flags & 0xFFFFFFFFFFFFFFFELL | levelCopy];
  }
}

- (int64_t)downloadError
{
  flags = [(MTEpisode *)self flags];
  result = 1;
  while ((flags & (1 << result)) == 0)
  {
    if (++result == 12)
    {
      return 0;
    }
  }

  return result;
}

- (void)setDownloadError:(int64_t)error
{
  v5 = vand_s8(vand_s8([(MTEpisode *)self flags], -2731), -1365);
  v6 = 1 << error;
  if (!error)
  {
    v6 = 0;
  }

  [(MTEpisode *)self setFlags:*&v5 | v6];
}

+ (id)propertiesToObserveForDownloadableEpisodes
{
  v7[19] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v7[0] = @"uuid";
  v7[1] = @"podcastUuid";
  v7[2] = @"pubDate";
  v7[3] = @"flags";
  v7[4] = @"explicit";
  v7[5] = @"backCatalog";
  v7[6] = @"playState";
  v7[7] = @"userEpisode";
  v7[8] = @"listenNowEpisode";
  v7[9] = @"episodeNumber";
  v7[10] = @"seasonNumber";
  v7[11] = @"entitlementState";
  v7[12] = @"isHidden";
  v7[13] = @"isBookmarked";
  v7[14] = @"lastDatePlayed";
  v7[15] = @"episodeLevel";
  v7[16] = @"episodeShowTypeSpecificLevel";
  v7[17] = @"lastBookmarkedDate";
  v7[18] = @"downloadBehavior";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:19];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (BOOL)isInUserEpisodes
{
  selfCopy = self;
  podcastUuid = [(MTEpisode *)self podcastUuid];
  podcast = [(MTEpisode *)selfCopy podcast];
  v5 = +[MTEpisode predicateForUserEpisodesOnPodcastUuid:episodeLimit:deletePlayedEpisodes:limitToDownloadBehaviorAutomatic:](MTEpisode, "predicateForUserEpisodesOnPodcastUuid:episodeLimit:deletePlayedEpisodes:limitToDownloadBehaviorAutomatic:", podcastUuid, 0, [podcast deletePlayedEpisodesResolvedValue], 0);
  LOBYTE(selfCopy) = [v5 evaluateWithObject:selfCopy];

  return selfCopy;
}

+ (id)friendlyPubDateStringForEpisode:(id)episode abbreviated:(BOOL)abbreviated
{
  abbreviatedCopy = abbreviated;
  v5 = [episode valueForKey:@"pubDate"];
  [v5 timeIntervalSinceReferenceDate];
  if (v6 == 0.0)
  {

    v5 = 0;
  }

  else if (v5)
  {
    if (abbreviatedCopy)
    {
      [v5 abbreviatedFriendlyDisplayString];
    }

    else
    {
      [v5 friendlyDisplayString];
    }
    v7 = ;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:

  return v7;
}

uint64_t __64__MTEpisode_Library__timeRemainingStringForEpisode_abbreviated___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) timeRemaining];
  *(*(*(a1 + 40) + 8) + 24) = v3;
  return result;
}

+ (BOOL)exists:(id)exists
{
  existsCopy = exists;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v4 mainOrPrivateContext];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__MTEpisode_Library__exists___block_invoke;
  v9[3] = &unk_1E856A118;
  v6 = mainOrPrivateContext;
  v10 = v6;
  v7 = existsCopy;
  v11 = v7;
  v12 = &v13;
  [v6 performBlockAndWait:v9];
  LOBYTE(v4) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v4;
}

void __29__MTEpisode_Library__exists___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) episodeForUuid:*(a1 + 40)];
  v2 = [v3 podcast];
  if (v3 && ([v2 hidden] & 1) == 0)
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

+ (BOOL)isExternalMedia:(id)media
{
  mediaCopy = media;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v4 mainOrPrivateContext];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__MTEpisode_Library__isExternalMedia___block_invoke;
  v9[3] = &unk_1E856A118;
  v6 = mainOrPrivateContext;
  v10 = v6;
  v7 = mediaCopy;
  v11 = v7;
  v12 = &v13;
  [v6 performBlockAndWait:v9];
  LOBYTE(v4) = *(v14 + 24);

  _Block_object_dispose(&v13, 8);
  return v4;
}

void __38__MTEpisode_Library__isExternalMedia___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) episodeForUuid:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v2 isExternalType];
}

- (void)setMetadataIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    metadataIdentifier = [(MTEpisode *)self metadataIdentifier];
    podcast = [(MTEpisode *)self podcast];
    feedURL = [podcast feedURL];
    podcast2 = [(MTEpisode *)self podcast];
    updatedFeedURL = [podcast2 updatedFeedURL];
    guid = [(MTEpisode *)self guid];
    v13 = 138544386;
    v14 = metadataIdentifier;
    v15 = 2114;
    v16 = identifierCopy;
    v17 = 2114;
    v18 = feedURL;
    v19 = 2114;
    v20 = updatedFeedURL;
    v21 = 2114;
    v22 = guid;
    _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_DEFAULT, "Setting metadataIdentifier from %{public}@ to %{public}@, for feedUrl: %{public}@ updatedFeedUrl %{public}@, guid: %{public}@", &v13, 0x34u);
  }

  [(MTEpisode *)self willChangeValueForKey:@"metadataIdentifier"];
  [(MTEpisode *)self setPrimitiveValue:identifierCopy forKey:@"metadataIdentifier"];
  [(MTEpisode *)self didChangeValueForKey:@"metadataIdentifier"];

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)isRestricted
{
  if (+[PFRestrictionsController isExplicitContentAllowed])
  {
    return 0;
  }

  return [(MTEpisode *)self isExplicit];
}

- (BOOL)isInPodcastDetailsUnplayedTab
{
  selfCopy = self;
  podcastUuid = [(MTEpisode *)self podcastUuid];
  podcast = [(MTEpisode *)selfCopy podcast];
  v5 = +[MTEpisode predicateForEpisodesOnUnplayedTabOnPodcastUuid:deletePlayedEpisodes:](MTEpisode, "predicateForEpisodesOnUnplayedTabOnPodcastUuid:deletePlayedEpisodes:", podcastUuid, [podcast deletePlayedEpisodesResolvedValue]);
  LOBYTE(selfCopy) = [v5 evaluateWithObject:selfCopy];

  return selfCopy;
}

- (void)setItunesSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  v10 = subtitleCopy;
  if (subtitleCopy || ([(MTEpisode *)self itunesSubtitle], v5 = objc_claimAutoreleasedReturnValue(), v5, subtitleCopy = 0, v5))
  {
    if ([subtitleCopy hasHTML])
    {
      stringBySmartlyStrippingHTML = [v10 stringBySmartlyStrippingHTML];

      v10 = stringBySmartlyStrippingHTML;
    }

    itunesSubtitle = [(MTEpisode *)self itunesSubtitle];
    v8 = [v10 isEqualToString:itunesSubtitle];

    if ((v8 & 1) == 0)
    {
      [(MTEpisode *)self willChangeValueForKey:@"itunesSubtitle"];
      [(MTEpisode *)self setPrimitiveValue:v10 forKey:@"itunesSubtitle"];
      [(MTEpisode *)self didChangeValueForKey:@"itunesSubtitle"];
    }

    v9 = v10;
  }

  else
  {
    v9 = 0;
  }
}

- (void)setItemDescription:(id)description
{
  descriptionCopy = description;
  if (descriptionCopy || ([(MTEpisode *)self itemDescription], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    itemDescription = [(MTEpisode *)self itemDescription];
    v6 = [descriptionCopy isEqualToString:itemDescription];

    if (descriptionCopy)
    {
      if (v6)
      {
        goto LABEL_11;
      }
    }

    else
    {

      if (v6)
      {
        goto LABEL_11;
      }
    }

    [(MTEpisode *)self willChangeValueForKey:@"itemDescription"];
    [(MTEpisode *)self setPrimitiveValue:descriptionCopy forKey:@"itemDescription"];
    [(MTEpisode *)self didChangeValueForKey:@"itemDescription"];
    v7 = objc_autoreleasePoolPush();
    hasHTML = [descriptionCopy hasHTML];
    objc_autoreleasePoolPop(v7);
    [(MTEpisode *)self willChangeValueForKey:@"itemDescriptionHasHTML"];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:hasHTML];
    [(MTEpisode *)self setPrimitiveValue:v9 forKey:@"itemDescriptionHasHTML"];

    [(MTEpisode *)self didChangeValueForKey:@"itemDescriptionHasHTML"];
    v10 = objc_autoreleasePoolPush();
    if (hasHTML)
    {
      stringBySmartlyStrippingHTML = [descriptionCopy stringBySmartlyStrippingHTML];
    }

    else
    {
      stringBySmartlyStrippingHTML = 0;
    }

    [(MTEpisode *)self willChangeValueForKey:@"itemDescriptionWithoutHTML"];
    [(MTEpisode *)self setPrimitiveValue:stringBySmartlyStrippingHTML forKey:@"itemDescriptionWithoutHTML"];
    [(MTEpisode *)self didChangeValueForKey:@"itemDescriptionWithoutHTML"];

    objc_autoreleasePoolPop(v10);
    [(MTEpisode *)self setAttributedDescriptionFromHTML:0];
  }

LABEL_11:
}

- (id)playedText
{
  if ([(MTEpisode *)self isVisuallyPlayed])
  {
    v3 = [(MTEpisode *)self valueForKey:@"lastDatePlayed"];
    v4 = v3;
    if (v3)
    {
      verboseDisplayStringWithoutTime = [v3 verboseDisplayStringWithoutTime];
      podcastsFoundationBundle = [MEMORY[0x1E696AAE8] podcastsFoundationBundle];
      v7 = [podcastsFoundationBundle localizedStringForKey:@"EPISODE_LAST_PLAYED_ON_DATE_FORMAT" value:&stru_1F548B930 table:0];

      v8 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, verboseDisplayStringWithoutTime];
    }

    else
    {
      verboseDisplayStringWithoutTime = [MEMORY[0x1E696AAE8] podcastsFoundationBundle];
      v8 = [verboseDisplayStringWithoutTime localizedStringForKey:@"EPISODE_PLAYED_TITLE" value:&stru_1F548B930 table:0];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)playedTextForCarplay
{
  if (![(MTEpisode *)self isVisuallyPlayed])
  {
    v10 = 0;
    goto LABEL_13;
  }

  v3 = [(MTEpisode *)self valueForKey:@"lastDatePlayed"];
  friendlyDisplayString = [v3 friendlyDisplayString];
  if ([friendlyDisplayString length])
  {
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v6 = [currentCalendar isDateInToday:v3];

    if (!v6)
    {
      isLessThanWeekOld = [v3 isLessThanWeekOld];
      podcastsFoundationBundle = [MEMORY[0x1E696AAE8] podcastsFoundationBundle];
      v14 = podcastsFoundationBundle;
      if (isLessThanWeekOld)
      {
        v15 = @"EPISODE_PLAYED_ON_DAY_FORMAT";
      }

      else
      {
        v15 = @"EPISODE_PLAYED_ON_DATE_FORMAT";
      }

      v8 = [podcastsFoundationBundle localizedStringForKey:v15 value:&stru_1F548B930 table:0];

      v11 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, friendlyDisplayString];
      goto LABEL_12;
    }

    podcastsFoundationBundle2 = [MEMORY[0x1E696AAE8] podcastsFoundationBundle];
    v8 = podcastsFoundationBundle2;
    v9 = @"EPISODE_PLAYED_TODAY";
  }

  else
  {
    podcastsFoundationBundle2 = [MEMORY[0x1E696AAE8] podcastsFoundationBundle];
    v8 = podcastsFoundationBundle2;
    v9 = @"EPISODE_PLAYED_TITLE";
  }

  v11 = [podcastsFoundationBundle2 localizedStringForKey:v9 value:&stru_1F548B930 table:0];
LABEL_12:
  v10 = v11;

LABEL_13:

  return v10;
}

- (void)setUti:(id)uti
{
  v11 = [MTUTIUtil convertUti:uti];
  v4 = [(MTEpisode *)self uti];
  if (v4 | v11)
  {
    v5 = v4;
    v6 = [(MTEpisode *)self uti];
    v7 = [v6 isEqualToString:v11];

    if ((v7 & 1) == 0)
    {
      [(MTEpisode *)self willChangeValueForKey:@"uti"];
      [(MTEpisode *)self setPrimitiveValue:v11 forKey:@"uti"];
      [(MTEpisode *)self didChangeValueForKey:@"uti"];
    }
  }

  v8 = [MTUTIUtil isAudio:?];
  if (v8 != [(MTEpisode *)self isAudio])
  {
    [(MTEpisode *)self setAudio:v8];
  }

  v9 = [MTUTIUtil isVideo:v11];
  if (v9 != [(MTEpisode *)self isVideo])
  {
    [(MTEpisode *)self setVideo:v9];
  }

  v10 = v9 || v8;
  if (v10 == [(MTEpisode *)self isExternalType])
  {
    [(MTEpisode *)self setExternalType:!v10];
  }
}

- (void)setAssetURL:(id)l
{
  lCopy = l;
  assetURL = [(MTEpisode *)self assetURL];
  v5 = lCopy | assetURL;

  if (v5)
  {
    assetURL2 = [(MTEpisode *)self assetURL];
    v7 = [assetURL2 isEqualToString:lCopy];

    if ((v7 & 1) == 0)
    {
      [(MTEpisode *)self willChangeValueForKey:@"assetURL"];
      [(MTEpisode *)self setPrimitiveValue:lCopy forKey:@"assetURL"];
      [(MTEpisode *)self didChangeValueForKey:@"assetURL"];
      [(MTEpisode *)self suppressAutomaticDownloadsIfNeeded];
      if (!lCopy)
      {
        [(MTEpisode *)self setDownloadDate:0.0];
        [(MTEpisode *)self setIsFromITunesSync:0];
      }
    }
  }
}

- (void)incremementPlayCount
{
  v3 = [(MTEpisode *)self playCount]+ 1;

  [(MTEpisode *)self setPlayCount:v3];
}

- (void)updateListenNowSortingDate
{
  if ([(MTEpisode *)self listenNowEpisode])
  {
    podcast = [(MTEpisode *)self podcast];
    [podcast lastDatePlayed];
    v5 = v4;

    [(MTEpisode *)self lastDatePlayed];
    v7 = v6;
    podcast2 = [(MTEpisode *)self podcast];
    [podcast2 addedDate];
    v9 = v8;
    if (v5 > 0.0 || v7 > 0.0)
    {

      [(MTEpisode *)self pubDate];
      if (v9 < v11)
      {
        v9 = v11;
      }

      v12 = +[_TtC18PodcastsFoundation17FutureDateChecker sharedInstance];
      v13 = [v12 isFutureWithTimestamp:v5];

      if (v9 >= v5)
      {
        v14 = v9;
      }

      else
      {
        v14 = v5;
      }

      if (v13)
      {
        v15 = v9;
      }

      else
      {
        v15 = v14;
      }

      v16 = +[_TtC18PodcastsFoundation17FutureDateChecker sharedInstance];
      v17 = [v16 isFutureWithTimestamp:v7];

      if (v15 >= v7)
      {
        v18 = v15;
      }

      else
      {
        v18 = v7;
      }

      if (v17)
      {
        v19 = v15;
      }

      else
      {
        v19 = v18;
      }

      podcast2 = [(MTEpisode *)self podcast];
      [podcast2 setModifiedDate:v19];
    }

    else
    {
      podcast3 = [(MTEpisode *)self podcast];
      [podcast3 setModifiedDate:v9];
    }
  }
}

- (void)setLastDatePlayed:(double)played
{
  [(MTEpisode *)self lastDatePlayed];
  if (v5 < played)
  {
    [(MTEpisode *)self willChangeValueForKey:@"lastDatePlayed"];
    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:played];
    [(MTEpisode *)self setPrimitiveValue:v6 forKey:@"lastDatePlayed"];

    [(MTEpisode *)self didChangeValueForKey:@"lastDatePlayed"];
    podcast = [(MTEpisode *)self podcast];
    [podcast setLastDatePlayed:played];

    [(MTEpisode *)self updateListenNowSortingDate];
  }
}

- (id)metricsContentIdentifier
{
  if (+[PFClientUtil isPodcastsApp])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if ([(MTEpisode *)self storeTrackId])
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", -[MTEpisode storeTrackId](self, "storeTrackId")];
      [dictionary setObject:v4 forKeyedSubscript:@"adamId"];
    }

    guid = [(MTEpisode *)self guid];

    if (guid)
    {
      guid2 = [(MTEpisode *)self guid];
      [dictionary setObject:guid2 forKeyedSubscript:@"guid"];
    }

    title = [(MTEpisode *)self title];

    if (title)
    {
      title2 = [(MTEpisode *)self title];
      [dictionary setObject:title2 forKeyedSubscript:@"title"];
    }

    podcast = [(MTEpisode *)self podcast];
    title3 = [podcast title];

    if (title3)
    {
      podcast2 = [(MTEpisode *)self podcast];
      title4 = [podcast2 title];
      [dictionary setObject:title4 forKeyedSubscript:@"podcast"];
    }
  }

  else
  {
    v13 = objc_opt_class();
    dictionary = NSStringFromClass(v13);
  }

  return dictionary;
}

+ (id)insertNewEpisodeInManagedObjectContext:(id)context title:(id)title podcast:(id)podcast pubDate:(id)date byteSize:(int64_t)size guid:(id)guid uti:(id)uti contentId:(int64_t)self0 enclosureUrl:(id)self1 playStateSource:(int)self2 importSource:(int)self3 canSendNotifications:(BOOL)self4
{
  titleCopy = title;
  dateCopy = date;
  guidCopy = guid;
  utiCopy = uti;
  urlCopy = url;
  podcastCopy = podcast;
  v22 = [MTEpisode insertNewEpisodeInManagedObjectContext:context canSendNotifications:notifications];
  [v22 setPodcast:podcastCopy];

  [v22 setStoreTrackId:id];
  [v22 setImportSource:importSource];
  [v22 setByteSize:size];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [dateCopy timeIntervalSinceReferenceDate];
    [v22 setPubDate:?];
  }

  [v22 setUti:{utiCopy, size}];
  if (guidCopy)
  {
    [v22 setGuid:guidCopy];
  }

  if (titleCopy)
  {
    [v22 setTitle:titleCopy];
  }

  if (urlCopy)
  {
    [v22 setEnclosureURL:urlCopy];
  }

  [self prepareForPlatform:v22];

  return v22;
}

+ (id)insertNewEpisodeInManagedObjectContext:(id)context canSendNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  v6 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"MTEpisode" inManagedObjectContext:context];
  uUID = [MEMORY[0x1E696AEC0] UUID];
  [v6 setUuid:uUID];

  [v6 setPlayState:2 manually:0 source:2];
  [v6 setVideo:0];
  [v6 setAudio:0];
  [v6 setExternalType:0];
  [v6 setMetadataTimestamp:0.0];
  [v6 setLastDatePlayed:0.0];
  [v6 setMetadataFirstSyncEligible:1];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  [v6 setImportDate:?];
  [v6 setIsNew:1];
  [v6 setSentNotification:!notificationsCopy];
  [self prepareForPlatform:v6];

  return v6;
}

+ (void)episodeUuidForGUID:(id)d feedURL:(id)l completion:(id)completion
{
  dCopy = d;
  lCopy = l;
  completionCopy = completion;
  if ([dCopy length])
  {
    if ([lCopy length])
    {
      [MTEpisode predicateForEpisodeGuid:dCopy onFeedURL:lCopy];
    }

    else
    {
      [MTEpisode predicateForEpisodeGuid:dCopy];
    }
    v10 = ;
    v11 = +[MTDB sharedInstance];
    playbackContext = [v11 playbackContext];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__MTEpisode_Library__episodeUuidForGUID_feedURL_completion___block_invoke;
    v15[3] = &unk_1E85690E8;
    v16 = playbackContext;
    v17 = v10;
    v18 = completionCopy;
    v13 = v10;
    v14 = playbackContext;
    [v14 performBlock:v15];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __60__MTEpisode_Library__episodeUuidForGUID_feedURL_completion___block_invoke(void *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a1[4];
  v2 = a1[5];
  v9[0] = @"uuid";
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v5 = [v3 objectsInEntity:@"MTEpisode" predicate:v2 propertiesToFetch:v4 limit:1];

  v6 = [v5 firstObject];
  v7 = [v6 uuid];

  (*(a1[6] + 16))();
  v8 = *MEMORY[0x1E69E9840];
}

- (void)updateUPPTimestamp
{
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];

  [(MTEpisode *)self setMetadataTimestamp:?];
}

- (BOOL)allowsDurationUpdateFromSource:(int)source
{
  if (!os_feature_enabled_preserve_player_set_duration())
  {
    return 1;
  }

  if (source == 6)
  {
    [(MTEpisode *)self playhead];
    if (v7 != 0.0)
    {
      assetURL = [(MTEpisode *)self assetURL];
      v6 = assetURL == 0;

      return v6;
    }

    return 1;
  }

  if (source != 7)
  {
    return 1;
  }

  [(MTEpisode *)self playhead];
  return v5 == 0.0;
}

+ (id)userDefaultPropertiesAffectingPredicates
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v7[0] = @"MTPodcastDeletePlayedEpisodesDefaultKey";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)predicateForDownloadLimitForEpisodeLimit:(int64_t)limit
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (limit)
  {
    truePredicate = [MEMORY[0x1E696AE18] truePredicate];
  }

  else
  {
    v5 = MEMORY[0x1E696AB28];
    v6 = [self predicateForPodcastIsSerial:1];
    v11[0] = v6;
    v7 = [self predicateForEpisodesDeterminedByLimitSettings:7];
    v11[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    truePredicate = [v5 orPredicateWithSubpredicates:v8];
  }

  v9 = *MEMORY[0x1E69E9840];

  return truePredicate;
}

+ (id)predicateForEpisodesDeterminedByLimitSettings:(int64_t)settings
{
  settingsCopy = settings;
  v4 = 0x8000000000000001;
  if (settings <= 5)
  {
    if (settings > 3)
    {
      if (settings == 4)
      {
        settingsCopy = 5;
      }

      else
      {
        settingsCopy = 10;
      }
    }

    else if ((settings - 1) >= 3)
    {
      if (settings)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    if (os_feature_enabled_serial_sort_auto_downloads())
    {
      v16 = kEpisodeShowTypeSpecificLevel;
    }

    else
    {
      v16 = kEpisodeLevel;
    }

    settingsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K < %ld", *v16, settingsCopy];
    goto LABEL_28;
  }

  if (settings <= 8)
  {
    v5 = -7;
    v6 = -14;
    if (settings != 8)
    {
      v6 = 0x8000000000000001;
    }

    if (settings != 7)
    {
      v5 = v6;
    }

    if (settings == 6)
    {
      v4 = -1;
    }

    else
    {
      v4 = v5;
    }

    goto LABEL_22;
  }

  if (settings == 9)
  {
    v4 = -30;
    goto LABEL_22;
  }

  if (settings == 0x100000000)
  {
LABEL_20:
    settingsCopy = [MEMORY[0x1E696AE18] truePredicate];
    goto LABEL_28;
  }

  if (settings != 0x100000001)
  {
LABEL_22:
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    date = [MEMORY[0x1E695DF00] date];
    v13 = [currentCalendar components:28 fromDate:date];

    [v13 setDay:{objc_msgSend(v13, "day") + v4}];
    v14 = [currentCalendar dateFromComponents:v13];
    v15 = [MEMORY[0x1E696AE18] predicateForDateKey:@"pubDate" isGreaterThanOrEqualToDate:v14];

    goto LABEL_29;
  }

  _applePodcastsFoundationSettingsUserDefaults = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
  v9 = [_applePodcastsFoundationSettingsUserDefaults episodeLimitForKey:@"MTPodcastEpisodeLimitDefaultKey"];

  settingsCopy = [self predicateForEpisodesDeterminedByLimitSettings:v9];
LABEL_28:
  v15 = settingsCopy;
LABEL_29:

  return v15;
}

+ (id)predicateForLimittedEpisodesOnPodcastUuid:(id)uuid determinedByLimit:(int64_t)limit deletePlayedEpisodes:(BOOL)episodes
{
  uuidCopy = uuid;
  v9 = [self predicateForEpisodesDeterminedByLimitSettings:limit];
  v10 = [MTEpisode predicateForVisuallyPlayed:0];
  if (!episodes)
  {
    v11 = [MTEpisode predicateForVisuallyPlayed:1];
    v12 = [MTEpisode predicateForPlayStateManuallySet:0];
    v13 = [v11 AND:v12];
    v14 = [v10 OR:v13];

    v10 = v14;
  }

  v15 = [v9 AND:v10];
  v16 = [self predicateForAllEpisodesOnPodcastUuid:uuidCopy];

  v17 = [v15 AND:v16];

  return v17;
}

+ (id)predicateForHiddenPodcastForEpisodeUuids:(id)uuids
{
  v4 = [self predicateForEpisodeUuids:uuids];
  predicateForPodcastIsNotHidden = [self predicateForPodcastIsNotHidden];
  v6 = [predicateForPodcastIsNotHidden NOT];
  v7 = [v4 AND:v6];

  return v7;
}

+ (id)predicateForBookmarkedEpisodesOnPodcastUuid:(id)uuid
{
  v3 = [self predicateForAllEpisodesOnPodcastUuid:uuid];
  v4 = MEMORY[0x1E696AE18];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v6 = [v4 predicateWithFormat:@"%K = %@", @"isBookmarked", v5];
  v7 = [v3 AND:v6];

  return v7;
}

+ (id)predicateForDownloadedEpisodesOnPodcastUuid:(id)uuid
{
  v4 = [self predicateForAllEpisodesOnPodcastUuid:uuid];
  v5 = [self predicateForDownloaded:1 excludeHidden:1];
  v6 = [v4 AND:v5];

  return v6;
}

+ (id)predicateForAllEpisodesOnPodcastUuid:(id)uuid includeNonAudioEpisodes:(BOOL)episodes
{
  uuid = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K = %@)", @"podcastUuid", uuid];
  if (!episodes)
  {
    v6 = [MTEpisode predicateForAudio:1];
    v7 = [uuid AND:v6];

    uuid = v7;
  }

  return uuid;
}

+ (id)predicateForAllEpisodesOnPodcastUuids:(id)uuids includeNonAudioEpisodes:(BOOL)episodes
{
  v5 = MEMORY[0x1E696AE18];
  array = [uuids array];
  v7 = [v5 predicateWithFormat:@"%K in %@", @"podcastUuid", array];

  if (!episodes)
  {
    v8 = [MTEpisode predicateForAudio:1];
    v9 = [v7 AND:v8];

    v7 = v9;
  }

  v10 = +[MTEpisode predicateForAllEpisodes];
  v11 = [v7 AND:v10];

  return v11;
}

+ (id)predicateForAllEpisodesOnPodcast:(id)podcast includeNonAudioEpisodes:(BOOL)episodes
{
  podcast = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K = %@)", @"podcast", podcast];
  if (!episodes)
  {
    v6 = [MTEpisode predicateForAudio:1];
    v7 = [podcast AND:v6];

    podcast = v7;
  }

  return podcast;
}

+ (id)predicateForLibraryEpisodesOnPodcastUuid:(id)uuid
{
  uuidCopy = uuid;
  predicateForAllBookmarkedEpisodes = [self predicateForAllBookmarkedEpisodes];
  v6 = [self predicateForDownloaded:1 excludeHidden:0];
  predicateForAllBookmarksMigrationRecoveredEpisodes = [self predicateForAllBookmarksMigrationRecoveredEpisodes];
  v8 = [predicateForAllBookmarkedEpisodes OR:v6];
  v9 = [v8 OR:predicateForAllBookmarksMigrationRecoveredEpisodes];

  v10 = [self predicateForAllEpisodesOnPodcastUuid:uuidCopy];

  v11 = [v9 AND:v10];

  return v11;
}

+ (id)predicateForEpisodesWhichNeedEntitlementStateUpdateForShowUUID:(id)d subscriptionState:(BOOL)state
{
  stateCopy = state;
  v6 = [self predicateForAllEpisodesOnPodcastUuid:d includeNonAudioEpisodes:1];
  predicateForDerivedEntitlementStateFree = [self predicateForDerivedEntitlementStateFree];
  v8 = [self _predicateForNotEntitlementState:0];
  v9 = [predicateForDerivedEntitlementStateFree AND:v8];

  v10 = [self predicateForPriceType:2];
  if (stateCopy)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = [self _predicateForNotEntitlementState:v11];
  v13 = [v10 AND:v12];

  v14 = [v9 OR:v13];
  v15 = [v6 AND:v14];

  return v15;
}

+ (id)predicateForEpisodesWhichNeedEntitlementStateUpdate
{
  predicateForDerivedEntitlementStateFree = [self predicateForDerivedEntitlementStateFree];
  v4 = [self _predicateForNotEntitlementState:0];
  v5 = [predicateForDerivedEntitlementStateFree AND:v4];

  predicateForDerivedEntitlementStateEntitled = [self predicateForDerivedEntitlementStateEntitled];
  v7 = [self _predicateForNotEntitlementState:1];
  v8 = [predicateForDerivedEntitlementStateEntitled AND:v7];

  predicateForDerivedEntitlementStateUnentitled = [self predicateForDerivedEntitlementStateUnentitled];
  v10 = [self _predicateForNotEntitlementState:2];
  v11 = [predicateForDerivedEntitlementStateUnentitled AND:v10];

  v12 = [v5 OR:v8];
  v13 = [v12 OR:v11];

  return v13;
}

+ (id)predicateForDerivedEntitlementStateEntitled
{
  v3 = [self predicateForPodcastPaidSubscriptionActive:1];
  v4 = [self predicateForPriceType:2];
  v5 = [v3 AND:v4];

  return v5;
}

+ (id)predicateForDerivedEntitlementStateUnentitled
{
  v3 = [self predicateForPodcastPaidSubscriptionActive:0];
  v4 = [self predicateForPriceType:2];
  v5 = [v3 AND:v4];

  return v5;
}

+ (id)_predicateForNotEntitlementState:(int64_t)state
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:state];
  v5 = [v3 predicateWithFormat:@"(%K != %@)", @"entitlementState", v4];

  return v5;
}

+ (id)predicateForEpisodesPlayableWithoutAccount
{
  v2 = MEMORY[0x1E696AB28];
  predicateForEpisodesRequiringAccount = [self predicateForEpisodesRequiringAccount];
  v4 = [v2 notPredicateWithSubpredicate:predicateForEpisodesRequiringAccount];

  return v4;
}

+ (id)predicateForEpisodesRequiringAccount
{
  v3 = [self predicateForPriceType:3];
  v4 = [self predicateForPriceType:2];
  v5 = [v3 OR:v4];

  return v5;
}

+ (id)predicateForPodcastPaidSubscriptionActive:(BOOL)active
{
  if (active)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.%K != NULL && %K.%K.%K = %@", @"podcast", @"channel", @"podcast", @"channel", @"subscriptionActive", &unk_1F54BDC70];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K.%K == NULL || %K.%K.%K = %@", @"podcast", @"channel", @"podcast", @"channel", @"subscriptionActive", &unk_1F54BDC88];
  }
  v3 = ;

  return v3;
}

+ (id)predicateForSubscriptionOnly
{
  v2 = objc_opt_class();

  return [v2 _predicateForPriceType:2 forPriceTypeKey:@"freePriceType" excluding:0];
}

+ (id)predicateForRSSEpisodes
{
  v2 = MEMORY[0x1E696AE18];
  v3 = NSPersistentStringForMTEpisodePriceType(0);
  v4 = NSPersistentStringForMTEpisodePriceType(1);
  v5 = [v2 predicateWithFormat:@"(%K == %@) || (%K == %@) || (%K == NULL)", @"priceType", v3, @"priceType", v4, @"priceType"];

  return v5;
}

+ (id)predicateForDownloadBehavior:(int64_t)behavior
{
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"downloadBehavior"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:behavior];
  v8 = [v6 expressionForConstantValue:v7];
  v9 = [v4 predicateWithLeftExpression:v5 rightExpression:v8 modifier:0 type:4 options:0];

  return v9;
}

+ (id)predicateForPodcastIsSerial:(BOOL)serial
{
  v3 = @"episodic";
  if (serial)
  {
    v3 = @"serial";
  }

  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"podcast.%K = %@", @"showTypeInFeed", v3];

  return v4;
}

+ (id)predicateForPlayed:(BOOL)played
{
  if (played)
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"playState"];
  v6 = [MEMORY[0x1E696ABC8] expressionForConstantValue:&unk_1F54BDCA0];
  v7 = [v4 predicateWithLeftExpression:v5 rightExpression:v6 modifier:0 type:v3 options:0];

  return v7;
}

+ (id)predicateForAllBookmarkedEpisodes
{
  v2 = MEMORY[0x1E696AE18];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v4 = [v2 predicateWithFormat:@"%K = %@", @"isBookmarked", v3];

  return v4;
}

+ (id)predicateForAllUnbookmarkedEpisodes
{
  v2 = MEMORY[0x1E696AE18];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:0];
  v4 = [v2 predicateWithFormat:@"%K = %@", @"isBookmarked", v3];

  return v4;
}

+ (id)predicateForVisuallyPlayed:(BOOL)played
{
  if (played)
  {
    v4 = [self predicateForPlayed:1];
    predicateForIsBackCatalogItem = [self predicateForIsBackCatalogItem];
    v6 = [predicateForIsBackCatalogItem NOT];
    v7 = [v4 AND:v6];
  }

  else
  {
    v4 = [self predicateForPlayed:?];
    predicateForIsBackCatalogItem = [self predicateForIsBackCatalogItem];
    v7 = [v4 OR:predicateForIsBackCatalogItem];
  }

  return v7;
}

+ (id)predicateForHasAnyVisualPlayState
{
  predicateForNotUnplayed = [self predicateForNotUnplayed];
  predicateForIsBackCatalogItem = [self predicateForIsBackCatalogItem];
  v5 = [predicateForIsBackCatalogItem NOT];
  v6 = [predicateForNotUnplayed AND:v5];

  return v6;
}

+ (id)predicateForEpisodesOnUnplayedTab
{
  v3 = [self predicateForUnplayedTabFlag:1];
  predicateForPodcastIsNotHiddenNotImplicitlyFollowed = [self predicateForPodcastIsNotHiddenNotImplicitlyFollowed];
  v5 = [v3 AND:predicateForPodcastIsNotHiddenNotImplicitlyFollowed];

  return v5;
}

+ (id)predicateForUserEpisodes
{
  v3 = [self predicateForUserEpisode:1];
  predicateForPodcastIsNotHiddenNotImplicitlyFollowed = [self predicateForPodcastIsNotHiddenNotImplicitlyFollowed];
  v5 = [v3 AND:predicateForPodcastIsNotHiddenNotImplicitlyFollowed];

  return v5;
}

+ (id)predicateForEpisodesInSearchResults
{
  predicateForBookmarkedEpisodes = [self predicateForBookmarkedEpisodes];
  v4 = [self predicateForDownloaded:1 excludeHidden:1];
  v5 = [predicateForBookmarkedEpisodes OR:v4];
  v6 = [self predicateForPodcastIsSubscribed:1];
  v7 = [v5 OR:v6];

  return v7;
}

+ (id)predicateForBookmarkedEpisodes
{
  predicateForAllBookmarkedEpisodes = [self predicateForAllBookmarkedEpisodes];
  predicateForPodcastIsNotHiddenNotImplicitlyFollowed = [self predicateForPodcastIsNotHiddenNotImplicitlyFollowed];
  v5 = [predicateForAllBookmarkedEpisodes AND:predicateForPodcastIsNotHiddenNotImplicitlyFollowed];

  return v5;
}

+ (id)predicateForUnbookmarkedEpisodes
{
  predicateForAllUnbookmarkedEpisodes = [self predicateForAllUnbookmarkedEpisodes];
  predicateForPodcastIsNotHiddenNotImplicitlyFollowed = [self predicateForPodcastIsNotHiddenNotImplicitlyFollowed];
  v5 = [predicateForAllUnbookmarkedEpisodes AND:predicateForPodcastIsNotHiddenNotImplicitlyFollowed];

  return v5;
}

+ (id)predicateForBookmarksMigrationRecoveredEpisodesOnPodcastUuid:(id)uuid
{
  uuidCopy = uuid;
  predicateForAllBookmarksMigrationRecoveredEpisodes = [self predicateForAllBookmarksMigrationRecoveredEpisodes];
  v6 = [self predicateForAllEpisodesOnPodcastUuid:uuidCopy];

  v7 = [predicateForAllBookmarksMigrationRecoveredEpisodes AND:v6];

  return v7;
}

+ (id)predicateForAllBookmarksMigrationRecoveredEpisodes
{
  v2 = MEMORY[0x1E696AE18];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v4 = [v2 predicateWithFormat:@"%K = %@", @"isBookmarksMigrationRecoveredEpisode", v3];

  return v4;
}

+ (id)predicateForListenNowForPodcastUuid:(id)uuid
{
  v4 = MEMORY[0x1E696AE18];
  uuidCopy = uuid;
  v6 = [v4 predicateWithFormat:@"%K = %@", @"listenNowEpisode", MEMORY[0x1E695E118]];
  predicateForPodcastIsNotHidden = [self predicateForPodcastIsNotHidden];
  v8 = [v6 AND:predicateForPodcastIsNotHidden];
  v9 = [self predicateForAllEpisodesOnPodcastUuid:uuidCopy];

  v10 = [v8 AND:v9];

  return v10;
}

+ (id)predicateForListenNowLatestEpisodes
{
  v3 = [self predicateForFeedDeleted:0];
  predicateForPodcastIsNotHiddenNotImplicitlyFollowed = [self predicateForPodcastIsNotHiddenNotImplicitlyFollowed];
  v5 = [v3 AND:predicateForPodcastIsNotHiddenNotImplicitlyFollowed];
  v6 = [self predicateForPodcastIsSubscribed:1];
  v7 = [v5 AND:v6];
  predicateForEntitledEpisodes = [self predicateForEntitledEpisodes];
  v9 = [v7 AND:predicateForEntitledEpisodes];

  return v9;
}

+ (id)predicateForCategoryPageFromYourShows:(id)shows ctx:(id)ctx
{
  v27[4] = *MEMORY[0x1E69E9840];
  ctxCopy = ctx;
  showsCopy = shows;
  v8 = objc_opt_new();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __68__MTEpisode_NSPredicate__predicateForCategoryPageFromYourShows_ctx___block_invoke;
  v24[3] = &unk_1E856A518;
  v25 = ctxCopy;
  v26 = v8;
  v9 = v8;
  v10 = ctxCopy;
  [showsCopy enumerateObjectsUsingBlock:v24];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"podcast", v9];
  predicateForEntitledEpisodes = [self predicateForEntitledEpisodes];
  v13 = [self predicateForVisuallyPlayed:0];
  v14 = +[MTEpisode predicateForAllBookmarkedEpisodes];
  v15 = [self predicateForDownloaded:1 excludeHidden:1];
  v16 = [v14 OR:v15];

  v17 = [self predicateForPodcastIsSubscribed:1];
  v18 = [v17 OR:v16];

  v19 = MEMORY[0x1E696AB28];
  v27[0] = v11;
  v27[1] = predicateForEntitledEpisodes;
  v27[2] = v13;
  v27[3] = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:4];
  v21 = [v19 andPredicateWithSubpredicates:v20];

  v22 = *MEMORY[0x1E69E9840];

  return v21;
}

void __68__MTEpisode_NSPredicate__predicateForCategoryPageFromYourShows_ctx___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x1E695DFF8] URLWithString:a2];
  v3 = [*(a1 + 32) persistentStoreCoordinator];
  v4 = [v3 managedObjectIDForURIRepresentation:v5];

  [*(a1 + 40) addObject:v4];
}

+ (id)predicateForNewsFromYourShows:(id)shows ctx:(id)ctx
{
  v31[6] = *MEMORY[0x1E69E9840];
  ctxCopy = ctx;
  showsCopy = shows;
  v8 = objc_opt_new();
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __60__MTEpisode_NSPredicate__predicateForNewsFromYourShows_ctx___block_invoke;
  v28[3] = &unk_1E856A518;
  v29 = ctxCopy;
  v30 = v8;
  v26 = v8;
  v27 = ctxCopy;
  [showsCopy enumerateObjectsUsingBlock:v28];

  v25 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v25 setDay:-30];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"podcast", v26];
  v10 = [self predicateForEpisodeType:0];
  v11 = [self predicateForPodcastIsSerial:0];
  predicateForEntitledEpisodes = [self predicateForEntitledEpisodes];
  date = [MEMORY[0x1E695DF00] date];
  v14 = [self predicateForEpisodesPublishedAfterOffset:v25 fromDate:date];

  v15 = +[MTEpisode predicateForAllBookmarkedEpisodes];
  v16 = [self predicateForDownloaded:1 excludeHidden:1];
  v17 = [v15 OR:v16];

  v18 = [self predicateForPodcastIsSubscribed:1];
  v19 = [v18 OR:v17];

  v20 = MEMORY[0x1E696AB28];
  v31[0] = v9;
  v31[1] = v10;
  v31[2] = v11;
  v31[3] = predicateForEntitledEpisodes;
  v31[4] = v14;
  v31[5] = v19;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:6];
  v22 = [v20 andPredicateWithSubpredicates:v21];

  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

void __60__MTEpisode_NSPredicate__predicateForNewsFromYourShows_ctx___block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x1E695DFF8] URLWithString:a2];
  v3 = [*(a1 + 32) persistentStoreCoordinator];
  v4 = [v3 managedObjectIDForURIRepresentation:v5];

  [*(a1 + 40) addObject:v4];
}

+ (id)predicateForPubDateLimit:(int64_t)limit
{
  if (limit > 1)
  {
    if (limit == 2)
    {
      self = [self predicateForEpisodesPublishedThisMonth];
    }

    else if (limit == 3)
    {
      self = [MEMORY[0x1E696AE18] truePredicate];
    }
  }

  else if (limit)
  {
    if (limit == 1)
    {
      self = [self predicateForEpisodesPublishedLastTwoWeeks];
    }
  }

  else
  {
    self = [self predicateForEpisodesPublishedThisWeek];
  }

  return self;
}

+ (id)predicateForDownloaded:(BOOL)downloaded
{
  if (downloaded)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL AND %K > %@", @"assetURL", @"assetURL", &stru_1F548B930];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = NULL", @"assetURL", v5, v6];
  }
  v3 = ;

  return v3;
}

+ (id)predicateForNonHLS
{
  predicateForHLS = [self predicateForHLS];
  v3 = [predicateForHLS NOT];

  return v3;
}

+ (id)predicateForAtLeastPartiallyPlayedInInterval:(double)interval
{
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-interval];
  dateForBeginningOfHour = [v3 dateForBeginningOfHour];

  v5 = [MEMORY[0x1E696AE18] predicateForDateKey:@"lastDatePlayed" isGreaterThanOrEqualToDate:dateForBeginningOfHour];
  v6 = [MEMORY[0x1E696AE18] predicateForDateKey:@"lastUserMarkedAsPlayedDate" isGreaterThanOrEqualToDate:dateForBeginningOfHour];
  v7 = [v5 OR:v6];

  return v7;
}

+ (id)predicateForPlayedInInterval:(double)interval
{
  v4 = [self predicateForAtLeastPartiallyPlayedInInterval:interval];
  v5 = [self predicateForPlayed:1];
  v6 = [v4 AND:v5];

  return v6;
}

+ (id)predicateForEpisodeUuids:(id)uuids
{
  v3 = MEMORY[0x1E696AE18];
  allObjects = [uuids allObjects];
  v5 = [v3 predicateWithFormat:@"%K in %@", @"uuid", allObjects];

  return v5;
}

+ (id)predicateForEpisodeGuids:(id)guids
{
  v3 = MEMORY[0x1E696AE18];
  allObjects = [guids allObjects];
  v5 = [v3 predicateWithFormat:@"%K in %@", @"guid", allObjects];

  return v5;
}

+ (id)predicateForFeedURLs:(id)ls
{
  v3 = MEMORY[0x1E696AE18];
  allObjects = [ls allObjects];
  v5 = [v3 predicateWithFormat:@"%K.%K in %@", @"podcast", @"feedURL", allObjects];

  return v5;
}

+ (id)predicateForHasValidPersistentId:(BOOL)id
{
  if (id)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL AND (%K > %@ OR %K < %@)", @"persistentID", @"persistentID", &unk_1F54BDC88, @"persistentID", &unk_1F54BDC88];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = NULL OR %K == %@", @"persistentID", @"persistentID", &unk_1F54BDC88, v5, v6];
  }
  v3 = ;

  return v3;
}

+ (id)predicateForEpisodesImportedAfterDate:(id)date
{
  if (date)
  {
    [MEMORY[0x1E696AE18] predicateForDateKey:@"importDate" isGreaterThanDate:date];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v3 = ;

  return v3;
}

+ (id)predicateForEpisodeType:(int64_t)type
{
  if (type == 2)
  {
    v3 = MEMORY[0x1E696AE18];
    v4 = kEpisodeTypeBonus;
    goto LABEL_7;
  }

  if (type == 1)
  {
    v3 = MEMORY[0x1E696AE18];
    v4 = kEpisodeTypeTrailer;
LABEL_7:
    [v3 predicateWithFormat:@"%K ==[c] %@", @"episodeType", *v4, v6, v7, v8];
    goto LABEL_8;
  }

  if (type)
  {
    goto LABEL_9;
  }

  [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NULL OR (%K !=[c] %@ AND %K !=[c] %@)", @"episodeType", @"episodeType", @"trailer", @"episodeType", @"bonus"];
  self = LABEL_8:;
LABEL_9:

  return self;
}

+ (id)predicateForEpisodeTypeFilter:(int64_t)filter
{
  if (filter <= 2)
  {
    switch(filter)
    {
      case 0:
        truePredicate = [MEMORY[0x1E696AE18] truePredicate];
LABEL_18:
        v3 = truePredicate;
        goto LABEL_19;
      case 1:
        v7 = 0;
        break;
      case 2:
        v7 = 1;
        break;
      default:
        goto LABEL_19;
    }

LABEL_17:
    truePredicate = [self predicateForEpisodeType:v7];
    goto LABEL_18;
  }

  if (filter <= 4)
  {
    if (filter != 3)
    {
      v5 = [self predicateForEpisodeType:1];
      v6 = [self predicateForEpisodeType:2];
      v3 = [v5 OR:v6];

LABEL_12:
      goto LABEL_19;
    }

    v7 = 2;
    goto LABEL_17;
  }

  if (filter != 5)
  {
    if (filter != 6)
    {
      goto LABEL_19;
    }

    v8 = [self predicateForEpisodeType:1];
    predicateForHasSomeSeasonNumberWithNoEpisodeNumber = [self predicateForHasSomeSeasonNumberWithNoEpisodeNumber];
    v5 = [v8 AND:predicateForHasSomeSeasonNumberWithNoEpisodeNumber];

    v3 = [v5 NOT];
    goto LABEL_12;
  }

  v11 = [self predicateForEpisodeType:1];
  v3 = [v11 NOT];

LABEL_19:

  return v3;
}

+ (id)predicateForOtherEpisodesOnPodcastUuid:(id)uuid baseEpisodesPredicate:(id)predicate deletePlayedEpisodes:(BOOL)episodes
{
  v8 = MEMORY[0x1E696AB28];
  uuidCopy = uuid;
  v10 = [v8 notPredicateWithSubpredicate:predicate];
  v11 = [self predicateForAllEpisodesOnPodcastUuid:uuidCopy];

  v12 = [v11 AND:v10];

  v13 = [self predicateForPlayStateManuallySet:1];
  v14 = [self predicateForIsFromiTunesSync:1];
  v15 = [v13 OR:v14];

  v16 = [MTEpisode predicateForPlayed:0];
  v17 = [v16 AND:v15];

  if (!episodes)
  {
    v18 = [MTEpisode predicateForPlayed:1];
    v19 = [MTEpisode predicateForPlayStateManuallySet:0];
    v20 = [v18 AND:v19];
    v21 = [v17 OR:v20];

    v17 = v21;
  }

  v22 = [v12 AND:v17];

  return v22;
}

+ (id)predicateForRecentlyPlayedEpisodesToBeDeletedOnPodcastUuid:(id)uuid deletePlayedEpisodes:(BOOL)episodes
{
  if (episodes)
  {
    v5 = [self predicateForAllEpisodesOnPodcastUuid:uuid];
    predicateForRecentlyPlayed = [self predicateForRecentlyPlayed];
    v7 = [v5 AND:predicateForRecentlyPlayed];
    v8 = [self predicateForPlayStateManuallySet:0];
    v9 = [v7 AND:v8];
    v10 = [self predicateForIsFromiTunesSync:0];
    v11 = [v9 AND:v10];
  }

  else
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }

  return v11;
}

+ (id)predicateForEpisodesIsFromiTunesSyncOnPodcastUuid:(id)uuid
{
  v4 = [self predicateForAllEpisodesOnPodcastUuid:uuid];
  v5 = [self predicateForIsFromiTunesSync:1];
  v6 = [v4 AND:v5];

  return v6;
}

+ (id)predicateForEpisodesInFeedForPodcastUuid:(id)uuid
{
  v4 = [self predicateForAllEpisodesOnPodcastUuid:uuid];
  v5 = [self predicateForFeedDeleted:0];
  v6 = [v4 AND:v5];

  return v6;
}

+ (id)predicateForEpisodesFromiTunesSyncOnPodcastUuid:(id)uuid
{
  v4 = [self predicateForAllEpisodesOnPodcastUuid:uuid];
  v5 = [self predicateForIsFromiTunesSync:1];
  v6 = [v4 AND:v5];

  return v6;
}

+ (id)_dateWithOffset:(id)offset fromDate:(id)date
{
  offsetCopy = offset;
  v6 = MEMORY[0x1E695DEE8];
  dateCopy = date;
  v8 = [v6 alloc];
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v10 = [v9 components:28 fromDate:dateCopy];

  v11 = [v10 day];
  month = [v10 month];
  year = [v10 year];
  v14 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v14 setDay:v11];
  [v14 setMonth:month];
  [v14 setYear:year];
  v15 = [v9 dateFromComponents:v14];
  if (!offsetCopy)
  {
    offsetCopy = objc_opt_new();
  }

  v16 = [v9 dateByAddingComponents:offsetCopy toDate:v15 options:0];

  return v16;
}

+ (id)predicateForEpisodesWithUnsatisfiedAvailabilityDate
{
  predicateForEpisodesPublishedThisWeek = [self predicateForEpisodesPublishedThisWeek];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"firstTimeAvailableAsPaid"];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %K", @"pubDate", @"firstTimeAvailableAsPaid"];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %K", @"firstTimeAvailable", @"pubDate"];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %K", @"firstTimeAvailable", @"firstTimeAvailableAsPaid"];
  v7 = [v3 NOT];
  v8 = [v5 AND:v7];

  v9 = [v6 AND:v4];
  v10 = [v9 AND:v3];

  v11 = [v8 OR:v10];
  v12 = [predicateForEpisodesPublishedThisWeek AND:v11];

  return v12;
}

+ (id)predicateForEpisodesPriceChangedAfterOffset:(id)offset fromDate:(id)date
{
  v4 = [MTEpisode _dateWithOffset:offset fromDate:date];
  v5 = [MEMORY[0x1E696AE18] predicateForDateKey:@"priceTypeChangedDate" isGreaterThanOrEqualToDate:v4];

  return v5;
}

+ (id)predicateForEpisodesPublishedAfterOffset:(id)offset fromDate:(id)date
{
  v4 = [MTEpisode _dateWithOffset:offset fromDate:date];
  v5 = [MEMORY[0x1E696AE18] predicateForDateKey:@"pubDate" isGreaterThanOrEqualToDate:v4];

  return v5;
}

+ (id)predicateForEpisodesPublishedToday
{
  date = [MEMORY[0x1E695DF00] date];
  v4 = [self predicateForEpisodesPublishedOnDate:date];

  return v4;
}

+ (id)predicateForEpisodesPriceTypeChangedThisWeek
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v3 setWeekOfYear:-1];
  date = [MEMORY[0x1E695DF00] date];
  v5 = [self predicateForEpisodesPriceChangedAfterOffset:v3 fromDate:date];

  return v5;
}

+ (id)predicateForEpisodesPublishedThisWeek
{
  date = [MEMORY[0x1E695DF00] date];
  v4 = [self predicateForEpisodesPublishedThisWeekWithTodayDate:date];

  return v4;
}

+ (id)predicateForEpisodesPublishedThisWeekWithTodayDate:(id)date
{
  v4 = MEMORY[0x1E695DF10];
  dateCopy = date;
  v6 = objc_alloc_init(v4);
  [v6 setWeekOfYear:-1];
  v7 = [self predicateForEpisodesPublishedAfterOffset:v6 fromDate:dateCopy];

  return v7;
}

+ (id)predicateForEpisodesPublishedLastTwoWeeks
{
  date = [MEMORY[0x1E695DF00] date];
  v4 = [self predicateForEpisodesPublishedLastTwoWeeksWithTodayDate:date];

  return v4;
}

+ (id)predicateForEpisodesPublishedLastTwoWeeksWithTodayDate:(id)date
{
  v4 = MEMORY[0x1E695DF10];
  dateCopy = date;
  v6 = objc_alloc_init(v4);
  [v6 setWeekOfYear:-2];
  v7 = [self predicateForEpisodesPublishedAfterOffset:v6 fromDate:dateCopy];

  return v7;
}

+ (id)predicateForEpisodesPublishedThisMonth
{
  date = [MEMORY[0x1E695DF00] date];
  v4 = [self predicateForEpisodesPublishedThisMonthWithTodayDate:date];

  return v4;
}

+ (id)predicateForEpisodesWithinLevel:(unint64_t)level
{
  v4 = os_feature_enabled_serial_sort_auto_downloads();
  v5 = kEpisodeShowTypeSpecificLevel;
  if (!v4)
  {
    v5 = kEpisodeLevel;
  }

  level = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K < %ld", *v5, level];

  return level;
}

+ (id)predicateForEpisodesPublishedThisMonthWithTodayDate:(id)date
{
  v4 = MEMORY[0x1E695DF10];
  dateCopy = date;
  v6 = objc_alloc_init(v4);
  [v6 setMonth:-1];
  v7 = [self predicateForEpisodesPublishedAfterOffset:v6 fromDate:dateCopy];

  return v7;
}

+ (id)predicateForEpisodesFirstAvailableThisWeek
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v2 setWeekOfYear:-1];
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = [MTEpisode _dateWithOffset:v2 fromDate:v3];

  v5 = [MTEpisode predicateForEpisodesFirstAvailableAfterDate:v4];

  return v5;
}

+ (id)predicateForEpisodesInStationShow:(id)show
{
  showCopy = show;
  predicateForStationEligibleEpisodes = [self predicateForStationEligibleEpisodes];
  showCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K.%K = %@", @"settings", @"uuid", showCopy];

  v7 = [showCopy AND:predicateForStationEligibleEpisodes];

  return v7;
}

+ (id)predicateForUserEpisodesOnPodcastUuid:(id)uuid ctx:(id)ctx
{
  uuidCopy = uuid;
  ctxCopy = ctx;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__MTEpisode_NSPredicate__predicateForUserEpisodesOnPodcastUuid_ctx___block_invoke;
  v12[3] = &unk_1E856A118;
  v8 = ctxCopy;
  v13 = v8;
  v9 = uuidCopy;
  v14 = v9;
  v15 = &v16;
  [v8 performBlockAndWait:v12];
  v10 = [self predicateForUserEpisodesOnPodcastUuid:v9 episodeLimit:0 deletePlayedEpisodes:*(v17 + 24) limitToDownloadBehaviorAutomatic:0];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __68__MTEpisode_NSPredicate__predicateForUserEpisodesOnPodcastUuid_ctx___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForUuid:*(a1 + 40) entityName:@"MTPodcast"];
  *(*(*(a1 + 48) + 8) + 24) = [v2 deletePlayedEpisodesResolvedValue];
}

+ (id)predicateForEpisodesOnUnplayedTabOnPodcastUuid:(id)uuid ctx:(id)ctx
{
  uuidCopy = uuid;
  ctxCopy = ctx;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__MTEpisode_NSPredicate__predicateForEpisodesOnUnplayedTabOnPodcastUuid_ctx___block_invoke;
  v12[3] = &unk_1E856A118;
  v8 = ctxCopy;
  v13 = v8;
  v9 = uuidCopy;
  v14 = v9;
  v15 = &v16;
  [v8 performBlockAndWait:v12];
  v10 = [self predicateForEpisodesOnUnplayedTabOnPodcastUuid:v9 deletePlayedEpisodes:*(v17 + 24)];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __77__MTEpisode_NSPredicate__predicateForEpisodesOnUnplayedTabOnPodcastUuid_ctx___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForUuid:*(a1 + 40) entityName:@"MTPodcast"];
  *(*(*(a1 + 48) + 8) + 24) = [v2 deletePlayedEpisodesResolvedValue];
}

+ (id)predicateForStoreIdentifier:(id)identifier
{
  storeIdentifier = [identifier storeIdentifier];
  if ([MTStoreIdentifier isEmptyNumber:storeIdentifier])
  {
    [MEMORY[0x1E696AE18] falsePredicate];
  }

  else
  {
    +[MTEpisode predicateForEpisodeStoreTrackId:](MTEpisode, "predicateForEpisodeStoreTrackId:", [storeIdentifier longLongValue]);
  }
  v4 = ;

  return v4;
}

+ (id)predicateForEpisodeStoreTrackId:(int64_t)id
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:id];
  v5 = [v3 predicateWithFormat:@"%K = %@", @"storeTrackId", v4];

  return v5;
}

+ (id)predicateForEpisodeStoreTrackIds:(id)ids
{
  allObjects = [ids allObjects];
  v4 = [allObjects mt_filter:&__block_literal_global_12];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"storeTrackId", v4];

  return v5;
}

+ (id)predicateForSeasonNumber:(int64_t)number
{
  v3 = MEMORY[0x1E696AE18];
  if (number <= 0)
  {
    v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K = NULL OR %K = 0)", @"seasonNumber", @"seasonNumber"];
  }

  else
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
    v5 = [v3 predicateWithFormat:@"%K = %@", @"seasonNumber", v4];
  }

  return v5;
}

+ (id)predicateForEpisodesWithSeasonNumbersOnPodcastUuid:(id)uuid
{
  uuidCopy = uuid;
  v4 = +[MTEpisode predicateForHasSeasonNumber];
  v5 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:uuidCopy];

  v6 = [v5 AND:v4];

  return v6;
}

+ (id)predicateForEpisodesWithEpisodeNumbersGreaterThan:(int64_t)than
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:than];
  v5 = [v3 predicateWithFormat:@"%K > %@", @"episodeNumber", v4];

  return v5;
}

+ (id)predicateForEpisodesWithSeasonAndEpisodeNumbersGreaterThanOrEqualTo:(int64_t)to seasonNumber:(int64_t)number
{
  v6 = MEMORY[0x1E696AE18];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:number];
  v8 = [v6 predicateWithFormat:@"%K == %@", @"seasonNumber", v7];
  v9 = MEMORY[0x1E696AE18];
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:to];
  v11 = [v9 predicateWithFormat:@"%K >= %@", @"episodeNumber", v10];
  v12 = [v8 AND:v11];

  v13 = MEMORY[0x1E696AE18];
  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:number];
  v15 = [v13 predicateWithFormat:@"%K > %@", @"seasonNumber", v14];

  v16 = [v12 OR:v15];

  return v16;
}

+ (id)predicateForSeasonNumberWithNoEpisodeNumber:(int64_t)number
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:number];
  v5 = [v3 predicateWithFormat:@"%K == %@ && (%K == 0 || %K == NULL)", @"seasonNumber", v4, @"episodeNumber", @"episodeNumber"];

  return v5;
}

+ (id)predicateForBookmarkedEpisodesExcludingUUIDs:(id)ds
{
  dsCopy = ds;
  v4 = +[MTEpisode predicateForAllBookmarkedEpisodes];
  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"!(%K IN %@)", @"uuid", dsCopy];

  v6 = [v4 AND:dsCopy];

  return v6;
}

+ (id)predicateForUserSetTopLevelEpisodes
{
  predicateForIsTopLevel = [self predicateForIsTopLevel];
  predicateForPodcastIsNotHiddenNotImplicitlyFollowed = [self predicateForPodcastIsNotHiddenNotImplicitlyFollowed];
  v5 = [predicateForIsTopLevel AND:predicateForPodcastIsNotHiddenNotImplicitlyFollowed];

  return v5;
}

+ (id)predicateForWatchBaseEpisodesIncludingOnlyAudio:(BOOL)audio
{
  audioCopy = audio;
  v4 = +[MTEpisode predicateForPodcastIsNotHiddenNotImplicitlyFollowed];
  if (audioCopy)
  {
    v5 = [MTEpisode predicateForAudio:1];
    v6 = [v4 AND:v5];

    v4 = v6;
  }

  return v4;
}

+ (id)predicateForWatchRecentlyPlayed
{
  v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-2592000.0];
  v3 = [MEMORY[0x1E696AE18] predicateForDateKey:@"lastDatePlayed" isGreaterThanOrEqualToDate:v2];
  v4 = +[MTEpisode predicateForPreviouslyPlayedHidingFutureTimestamps];
  v5 = [MTEpisode predicateForAudio:1];
  v6 = [v4 AND:v5];
  v7 = [v6 AND:v3];

  return v7;
}

+ (id)predicateForDRMKeyRequired
{
  isHLSEpisode = [self isHLSEpisode];
  v4 = [self predicateForDownloaded:1 excludeHidden:1];
  v5 = [isHLSEpisode AND:v4];

  return v5;
}

+ (id)isHLSEpisode
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = [self predicateForPriceType:3];
  v5 = [self predicateForPriceType:{2, v4}];
  v11[1] = v5;
  assetURLIsPackagedMedia = [self assetURLIsPackagedMedia];
  v11[2] = assetURLIsPackagedMedia;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v8 = [v3 orPredicateWithSubpredicates:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)_predicateForPriceType:(int64_t)type forPriceTypeKey:(id)key excluding:(BOOL)excluding
{
  excludingCopy = excluding;
  v7 = MEMORY[0x1E696AE18];
  keyCopy = key;
  v9 = NSPersistentStringForMTEpisodePriceType(type);
  v10 = [v7 predicateWithFormat:@"(%K != NULL) && (%K = %@)", keyCopy, keyCopy, v9];

  if (excludingCopy)
  {
    v11 = [v10 NOT];

    v10 = v11;
  }

  return v10;
}

+ (id)predicateForAutomaticDownloadsOnShow:(id)show deletePlayedEpisodes:(BOOL)episodes episodeLimit:(int64_t)limit serialNextEpisodesSort:(BOOL)sort includePlayableWithoutAccount:(BOOL)account
{
  accountCopy = account;
  v62[2] = *MEMORY[0x1E69E9840];
  showCopy = show;
  v9 = [MTEpisode predicateForVisuallyPlayed:0];
  v10 = v9;
  if (!episodes)
  {
    v11 = MEMORY[0x1E696AB28];
    v62[0] = v9;
    v12 = [MTEpisode predicateForPlayStateManuallySet:0];
    v62[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
    v14 = [v11 orPredicateWithSubpredicates:v13];

    v10 = v14;
  }

  v52 = v10;
  v15 = MEMORY[0x1E696AB28];
  v16 = [MTEpisode predicateForEpisodesDeterminedByLimitSettings:limit];
  v61[0] = v16;
  v17 = [MTEpisode predicateForDownloadLimitForEpisodeLimit:limit];
  v61[1] = v17;
  v18 = MEMORY[0x1E696AB28];
  v60[0] = v10;
  v19 = +[MTEpisode predicateForIsBackCatalogItem];
  v59[0] = v19;
  v20 = [MTEpisode predicateForPlayStateManuallySet:1];
  v59[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v59 count:2];
  v22 = [v18 andPredicateWithSubpredicates:v21];
  v60[1] = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
  v24 = [v18 orPredicateWithSubpredicates:v23];
  v61[2] = v24;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:3];
  v51 = [v15 andPredicateWithSubpredicates:v25];

  v26 = MEMORY[0x1E696AB28];
  v27 = [MTEpisode predicateForDownloadBehavior:0];
  v58[0] = v27;
  v28 = [MTEpisode predicateForPlayStateManuallySet:1];
  v58[1] = v28;
  v29 = [MTEpisode predicateForPlayed:0];
  v58[2] = v29;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:3];
  v50 = [v26 andPredicateWithSubpredicates:v30];

  v31 = MEMORY[0x1E696AB28];
  v32 = [MTEpisode predicateForIsFromiTunesSync:1];
  v57[0] = v32;
  v57[1] = v51;
  v57[2] = v50;
  v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:3];
  v34 = [v31 orPredicateWithSubpredicates:v33];

  v35 = MEMORY[0x1E696AB28];
  v36 = [MTEpisode predicateForDownloaded:0 excludeHidden:1];
  v56[0] = v36;
  v37 = [MTEpisode predicateForPlayed:0];
  v56[1] = v37;
  v38 = [MTEpisode predicateForPlayableEpisode:accountCopy];
  v56[2] = v38;
  v39 = [MTEpisode predicateForFeedDeleted:0];
  v56[3] = v39;
  v40 = [MTEpisode predicateForDownloadBehavior:0];
  v56[4] = v40;
  v41 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"enclosureURL"];
  v56[5] = v41;
  v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:6];
  v43 = [v35 andPredicateWithSubpredicates:v42];

  v44 = MEMORY[0x1E696AB28];
  v45 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:showCopy];

  v55[0] = v45;
  v55[1] = v43;
  v55[2] = v34;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:3];
  v47 = [v44 andPredicateWithSubpredicates:v46];

  v48 = *MEMORY[0x1E69E9840];

  return v47;
}

+ (id)predicateForPlayableEpisode:(BOOL)episode
{
  episodeCopy = episode;
  v4 = +[MTEpisode predicateForEntitledEpisodes];
  if (episodeCopy)
  {
    v5 = +[MTEpisode predicateForEpisodesPlayableWithoutAccount];
    v6 = [v4 AND:v5];

    v4 = v6;
  }

  return v4;
}

+ (id)optimizedPredicateForPlayedEpisodePreservation:(BOOL)preservation
{
  preservationCopy = preservation;
  v21[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AB28];
  v6 = [self predicateForPlayed:0];
  v21[0] = v6;
  predicateForIsBackCatalogItem = [self predicateForIsBackCatalogItem];
  v21[1] = predicateForIsBackCatalogItem;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v9 = [v5 orPredicateWithSubpredicates:v8];

  if (preservationCopy)
  {
    v10 = MEMORY[0x1E696AB28];
    v20[0] = v9;
    v11 = [self predicateForPlayed:1];
    v19[0] = v11;
    v12 = [self predicateForPlayStateManuallySet:0];
    v19[1] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:2];
    v14 = [v10 orPredicateWithSubpredicates:v13];
    v20[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v16 = [v10 orPredicateWithSubpredicates:v15];

    v9 = v16;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)optimizedPredicatePlaystateForPreservation:(BOOL)preservation
{
  if (preservation)
  {
    v4 = [self predicateForPlayed:0];
    predicateForIsBackCatalogItem = [self predicateForIsBackCatalogItem];
    truePredicate = [v4 OR:predicateForIsBackCatalogItem];
  }

  else
  {
    truePredicate = [MEMORY[0x1E696AE18] truePredicate];
  }

  return truePredicate;
}

+ (id)optimizedRemovalPredicateForRecentlyPlayed:(BOOL)played
{
  v18[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AB28];
  if (played)
  {
    v5 = [self predicateForPlayed:1];
    v18[0] = v5;
    predicateForRecentlyPlayed = [self predicateForRecentlyPlayed];
    v18[1] = predicateForRecentlyPlayed;
    predicateForIsBackCatalogItem = [self predicateForPlayStateManuallySet:0];
    v18[2] = predicateForIsBackCatalogItem;
    v8 = [self predicateForIsFromiTunesSync:0];
    v18[3] = v8;
    v9 = MEMORY[0x1E695DEC8];
    v10 = v18;
    v11 = 4;
  }

  else
  {
    v5 = [self predicateForDownloadBehavior:4];
    predicateForRecentlyPlayed = [self predicateForPlayed:{1, v5}];
    v17[1] = predicateForRecentlyPlayed;
    predicateForIsBackCatalogItem = [self predicateForIsBackCatalogItem];
    v8 = [predicateForIsBackCatalogItem NOT];
    v17[2] = v8;
    v9 = MEMORY[0x1E695DEC8];
    v10 = v17;
    v11 = 3;
  }

  v12 = [v9 arrayWithObjects:v10 count:v11];
  v13 = [v4 andPredicateWithSubpredicates:v12];

  v14 = [v13 NOT];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

+ (id)episodicSortDescriptors:(int64_t)descriptors
{
  v4 = [MTPodcast sortOrderAscForShowType:descriptors];

  return [self sortDescriptorsForPubDateAscending:v4];
}

+ (id)sortDescriptorsForTitle
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:1 selector:sel_localizedStandardCompare_];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastDatePlayed" ascending:{1, v2}];
  v8[1] = v3;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"episodeLevel" ascending:1];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)sortDescriptorsForUpNextScore
{
  v7[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"upNextScore" ascending:0];
  v7[0] = v2;
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"podcast.modifiedDate" ascending:0];
  v7[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)sortDescriptorsForModifiedDateUpNextScore
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"modifiedDateScore" ascending:0];
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)seasonSortDescriptors:(int64_t)descriptors
{
  v5 = [MTPodcast sortOrderAscForShowType:?];
  if (descriptors == 4)
  {
    [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"seasonNumber" ascending:1 reverseNullOrder:1];
  }

  else
  {
    [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"seasonNumber" ascending:0];
  }
  v6 = ;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v6, 0}];
  v8 = [self sortDescriptorsForEpisodeNumberAscending:v5];
  [v7 addObjectsFromArray:v8];

  return v7;
}

+ (id)sortDescriptorsForCalculatingEpisodeLevel
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"pubDate" ascending:0];
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"episodeNumber" ascending:{0, v2}];
  v8[1] = v3;
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"title" ascending:1 selector:sel_localizedStandardCompare_];
  v8[2] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:3];

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)resolveAvailabilityDate
{
  selfCopy = self;
  MTEpisode.resolveAvailabilityDate()();
}

- (void)markAsBookmarked
{
  selfCopy = self;
  if (([(MTEpisode *)selfCopy isBookmarked]& 1) == 0)
  {
    sub_1D9176CDC();
    [(MTEpisode *)selfCopy markAsBookmarkedOnTimestamp:?];
  }
}

- (void)markAsBookmarkedOnTimestamp:(double)timestamp
{
  selfCopy = self;
  [(MTEpisode *)selfCopy setIsBookmarked:1];
  [(MTEpisode *)selfCopy lastBookmarkedDate];
  if (v4 < timestamp)
  {
    [(MTEpisode *)selfCopy setLastBookmarkedDate:timestamp];
  }
}

- (void)markAsUnbookmarked
{
  selfCopy = self;
  if ([(MTEpisode *)selfCopy isBookmarked])
  {
    [(MTEpisode *)selfCopy setIsBookmarked:0];
  }
}

- (NSAttributedString)attributedDescriptionFromHTML
{
  selfCopy = self;
  v3 = MTEpisode.attributedDescriptionFromHTML.getter();

  return v3;
}

- (void)setAttributedDescriptionFromHTML:(id)l
{
  lCopy = l;
  selfCopy = self;
  MTEpisode.attributedDescriptionFromHTML.setter(l);
}

- (int64_t)bookmarksSyncType
{
  selfCopy = self;
  priceType = [(MTEpisode *)selfCopy priceType];
  if (priceType)
  {
    v4 = priceType;
    sub_1D917820C();
  }

  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v6 = MTEpisodePriceTypeFromPersistentString(v5);

  return (v6 - 2) < 3;
}

+ (id)predicateForAutomaticallyDownloadedEpisodes
{
  v2 = _sSo9MTEpisodeC18PodcastsFoundationE43predicateForAutomaticallyDownloadedEpisodesSo11NSPredicateCyFZ_0();

  return v2;
}

@end