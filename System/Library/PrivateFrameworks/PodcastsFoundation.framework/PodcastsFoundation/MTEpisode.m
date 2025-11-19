@interface MTEpisode
+ (BOOL)exists:(id)a3;
+ (BOOL)isExternalMedia:(id)a3;
+ (BOOL)isPlayhead:(double)a3 resumableForDuration:(double)a4;
+ (double)endOfTrackForDuration:(double)a3;
+ (id)_dateWithOffset:(id)a3 fromDate:(id)a4;
+ (id)_predicateForNotEntitlementState:(int64_t)a3;
+ (id)_predicateForPriceType:(int64_t)a3 forPriceTypeKey:(id)a4 excluding:(BOOL)a5;
+ (id)episodicSortDescriptors:(int64_t)a3;
+ (id)friendlyPubDateStringForEpisode:(id)a3 abbreviated:(BOOL)a4;
+ (id)insertNewEpisodeInManagedObjectContext:(id)a3 canSendNotifications:(BOOL)a4;
+ (id)insertNewEpisodeInManagedObjectContext:(id)a3 title:(id)a4 podcast:(id)a5 pubDate:(id)a6 byteSize:(int64_t)a7 guid:(id)a8 uti:(id)a9 contentId:(int64_t)a10 enclosureUrl:(id)a11 playStateSource:(int)a12 importSource:(int)a13 canSendNotifications:(BOOL)a14;
+ (id)isHLSEpisode;
+ (id)optimizedPredicateForPlayedEpisodePreservation:(BOOL)a3;
+ (id)optimizedPredicatePlaystateForPreservation:(BOOL)a3;
+ (id)optimizedRemovalPredicateForRecentlyPlayed:(BOOL)a3;
+ (id)predicateForAllBookmarkedEpisodes;
+ (id)predicateForAllBookmarksMigrationRecoveredEpisodes;
+ (id)predicateForAllEpisodesOnPodcast:(id)a3 includeNonAudioEpisodes:(BOOL)a4;
+ (id)predicateForAllEpisodesOnPodcastUuid:(id)a3 includeNonAudioEpisodes:(BOOL)a4;
+ (id)predicateForAllEpisodesOnPodcastUuids:(id)a3 includeNonAudioEpisodes:(BOOL)a4;
+ (id)predicateForAllUnbookmarkedEpisodes;
+ (id)predicateForAtLeastPartiallyPlayedInInterval:(double)a3;
+ (id)predicateForAutomaticDownloadsOnShow:(id)a3 deletePlayedEpisodes:(BOOL)a4 episodeLimit:(int64_t)a5 serialNextEpisodesSort:(BOOL)a6 includePlayableWithoutAccount:(BOOL)a7;
+ (id)predicateForAutomaticallyDownloadedEpisodes;
+ (id)predicateForBookmarkedEpisodes;
+ (id)predicateForBookmarkedEpisodesExcludingUUIDs:(id)a3;
+ (id)predicateForBookmarkedEpisodesOnPodcastUuid:(id)a3;
+ (id)predicateForBookmarksMigrationRecoveredEpisodesOnPodcastUuid:(id)a3;
+ (id)predicateForCategoryPageFromYourShows:(id)a3 ctx:(id)a4;
+ (id)predicateForDRMKeyRequired;
+ (id)predicateForDerivedEntitlementStateEntitled;
+ (id)predicateForDerivedEntitlementStateUnentitled;
+ (id)predicateForDownloadBehavior:(int64_t)a3;
+ (id)predicateForDownloadLimitForEpisodeLimit:(int64_t)a3;
+ (id)predicateForDownloaded:(BOOL)a3;
+ (id)predicateForDownloadedEpisodesOnPodcastUuid:(id)a3;
+ (id)predicateForDownloadedFairPlayEpisodes;
+ (id)predicateForEpisodeGuids:(id)a3;
+ (id)predicateForEpisodeStoreTrackId:(int64_t)a3;
+ (id)predicateForEpisodeStoreTrackIds:(id)a3;
+ (id)predicateForEpisodeType:(int64_t)a3;
+ (id)predicateForEpisodeTypeFilter:(int64_t)a3;
+ (id)predicateForEpisodeUuids:(id)a3;
+ (id)predicateForEpisodesDeterminedByLimitSettings:(int64_t)a3;
+ (id)predicateForEpisodesFirstAvailableThisWeek;
+ (id)predicateForEpisodesFromiTunesSyncOnPodcastUuid:(id)a3;
+ (id)predicateForEpisodesImportedAfterDate:(id)a3;
+ (id)predicateForEpisodesInFeedForPodcastUuid:(id)a3;
+ (id)predicateForEpisodesInSearchResults;
+ (id)predicateForEpisodesInStationShow:(id)a3;
+ (id)predicateForEpisodesIsFromiTunesSyncOnPodcastUuid:(id)a3;
+ (id)predicateForEpisodesOnUnplayedTab;
+ (id)predicateForEpisodesOnUnplayedTabOnPodcastUuid:(id)a3 ctx:(id)a4;
+ (id)predicateForEpisodesPlayableWithoutAccount;
+ (id)predicateForEpisodesPriceChangedAfterOffset:(id)a3 fromDate:(id)a4;
+ (id)predicateForEpisodesPriceTypeChangedThisWeek;
+ (id)predicateForEpisodesPublishedAfterOffset:(id)a3 fromDate:(id)a4;
+ (id)predicateForEpisodesPublishedLastTwoWeeks;
+ (id)predicateForEpisodesPublishedLastTwoWeeksWithTodayDate:(id)a3;
+ (id)predicateForEpisodesPublishedThisMonth;
+ (id)predicateForEpisodesPublishedThisMonthWithTodayDate:(id)a3;
+ (id)predicateForEpisodesPublishedThisWeek;
+ (id)predicateForEpisodesPublishedThisWeekWithTodayDate:(id)a3;
+ (id)predicateForEpisodesPublishedToday;
+ (id)predicateForEpisodesRequiringAccount;
+ (id)predicateForEpisodesWhichNeedEntitlementStateUpdate;
+ (id)predicateForEpisodesWhichNeedEntitlementStateUpdateForShowUUID:(id)a3 subscriptionState:(BOOL)a4;
+ (id)predicateForEpisodesWithEpisodeNumbersGreaterThan:(int64_t)a3;
+ (id)predicateForEpisodesWithSeasonAndEpisodeNumbersGreaterThanOrEqualTo:(int64_t)a3 seasonNumber:(int64_t)a4;
+ (id)predicateForEpisodesWithSeasonNumbersOnPodcastUuid:(id)a3;
+ (id)predicateForEpisodesWithUnsatisfiedAvailabilityDate;
+ (id)predicateForEpisodesWithinLevel:(unint64_t)a3;
+ (id)predicateForFeedURLs:(id)a3;
+ (id)predicateForHasAnyVisualPlayState;
+ (id)predicateForHasBeenPlayed;
+ (id)predicateForHasValidPersistentId:(BOOL)a3;
+ (id)predicateForHiddenPodcastForEpisodeUuids:(id)a3;
+ (id)predicateForHidingFuturePlayedTimestamps;
+ (id)predicateForIsBackCatalogItem;
+ (id)predicateForLibraryEpisodesOnPodcastUuid:(id)a3;
+ (id)predicateForLimittedEpisodesOnPodcastUuid:(id)a3 determinedByLimit:(int64_t)a4 deletePlayedEpisodes:(BOOL)a5;
+ (id)predicateForListenNow;
+ (id)predicateForListenNowForPodcastUuid:(id)a3;
+ (id)predicateForListenNowLatestEpisodes;
+ (id)predicateForNewsFromYourShows:(id)a3 ctx:(id)a4;
+ (id)predicateForNonHLS;
+ (id)predicateForOtherEpisodesOnPodcastUuid:(id)a3 baseEpisodesPredicate:(id)a4 deletePlayedEpisodes:(BOOL)a5;
+ (id)predicateForPlayableEpisode:(BOOL)a3;
+ (id)predicateForPlayed:(BOOL)a3;
+ (id)predicateForPlayedDateSetByListening;
+ (id)predicateForPlayedInInterval:(double)a3;
+ (id)predicateForPodcastIsSerial:(BOOL)a3;
+ (id)predicateForPodcastPaidSubscriptionActive:(BOOL)a3;
+ (id)predicateForPreviouslyPlayed;
+ (id)predicateForPreviouslyPlayedHidingFutureTimestamps;
+ (id)predicateForPubDateLimit:(int64_t)a3;
+ (id)predicateForRSSEpisodes;
+ (id)predicateForRecentlyPlayedEpisodesToBeDeletedOnPodcastUuid:(id)a3 deletePlayedEpisodes:(BOOL)a4;
+ (id)predicateForSeasonNumber:(int64_t)a3;
+ (id)predicateForSeasonNumberWithNoEpisodeNumber:(int64_t)a3;
+ (id)predicateForStationEligibleEpisodes;
+ (id)predicateForStoreIdentifier:(id)a3;
+ (id)predicateForSubscriptionOnly;
+ (id)predicateForUnbookmarkedEpisodes;
+ (id)predicateForUserEpisodes;
+ (id)predicateForUserEpisodesOnPodcastUuid:(id)a3 ctx:(id)a4;
+ (id)predicateForUserSetTopLevelEpisodes;
+ (id)predicateForVisuallyPlayed:(BOOL)a3;
+ (id)predicateForWatchBaseEpisodesIncludingOnlyAudio:(BOOL)a3;
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
+ (id)propertyPathForPodcastProperty:(id)a3;
+ (id)relationshipKeyPathsForPrefetchingIsExplicit;
+ (id)seasonSortDescriptors:(int64_t)a3;
+ (id)sortDescriptorsForCalculatingEpisodeLevel;
+ (id)sortDescriptorsForListenNow;
+ (id)sortDescriptorsForModifiedDateUpNextScore;
+ (id)sortDescriptorsForTitle;
+ (id)sortDescriptorsForUpNextScore;
+ (id)userDefaultPropertiesAffectingPredicates;
+ (void)episodeUuidForGUID:(id)a3 feedURL:(id)a4 completion:(id)a5;
- (BOOL)allowsDurationUpdateFromSource:(int)a3;
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
- (void)_setAssetUrl:(id)a3;
- (void)incremementPlayCount;
- (void)markAsBookmarked;
- (void)markAsBookmarkedOnTimestamp:(double)a3;
- (void)markAsUnbookmarked;
- (void)resolveAvailabilityDate;
- (void)setAssetURL:(id)a3;
- (void)setAttributedDescriptionFromHTML:(id)a3;
- (void)setByteSize:(int64_t)a3;
- (void)setCleanedTitle:(id)a3;
- (void)setDownloadError:(int64_t)a3;
- (void)setDuration:(double)a3;
- (void)setEnclosureURL:(id)a3;
- (void)setEntitledDuration:(double)a3;
- (void)setEpisodeLevel:(int64_t)a3;
- (void)setEpisodeNumber:(int64_t)a3;
- (void)setEpisodeType:(id)a3;
- (void)setFreeDuration:(double)a3;
- (void)setImportDate:(double)a3;
- (void)setIsTopLevel:(BOOL)a3;
- (void)setItemDescription:(id)a3;
- (void)setItunesSubtitle:(id)a3;
- (void)setItunesTitle:(id)a3;
- (void)setLastDatePlayed:(double)a3;
- (void)setMetadataIdentifier:(id)a3;
- (void)setPersistentID:(int64_t)a3;
- (void)setPodcast:(id)a3;
- (void)setPodcastUuid:(id)a3;
- (void)setPubDate:(double)a3;
- (void)setSeasonNumber:(int64_t)a3;
- (void)setTrackNum:(int64_t)a3;
- (void)setUti:(id)a3;
- (void)setWebpageURL:(id)a3;
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
  v4 = [a1 predicateForBacklog:1];
  v5 = [a1 predicateForPlayed:{1, v4}];
  v11[1] = v5;
  v6 = [a1 predicateForPlayStateManuallySet:1];
  v11[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v8 = [v3 andPredicateWithSubpredicates:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)predicateForListenNow
{
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %@", @"listenNowEpisode", MEMORY[0x1E695E118]];
  v4 = [a1 predicateForPodcastIsNotHidden];
  v5 = [v3 AND:v4];

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
  v4 = [(MTEpisode *)self itunesTitle];
  v5 = v4;
  if (!v3)
  {
    if (!v4)
    {
      v9 = [(MTEpisode *)self cleanedTitle];
      v10 = v9;
      if (v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = [(MTEpisode *)self title];
      }

      v7 = v11;

      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v4)
  {
LABEL_5:
    v6 = v4;
    goto LABEL_6;
  }

  v6 = [(MTEpisode *)self title];
LABEL_6:
  v7 = v6;
LABEL_7:

  return v7;
}

- (id)numberedTitle
{
  v3 = [(MTEpisode *)self itunesTitle];
  if (v3 && (v4 = v3, v5 = [(MTEpisode *)self episodeNumber], v4, v5 >= 1))
  {
    v6 = [MEMORY[0x1E696AAE8] podcastsFoundationBundle];
    v7 = [v6 localizedStringForKey:@"EPISODE_NUMBER_AND_TITLE_FORMAT" value:&stru_1F548B930 table:0];

    v8 = MEMORY[0x1E696AEC0];
    v9 = [(MTEpisode *)self episodeNumber];
    v10 = [(MTEpisode *)self itunesTitle];
    v11 = [v8 localizedStringWithValidatedFormat:v7 validFormatSpecifiers:@"%1$lld %2$@" error:0, v9, v10];
  }

  else
  {
    v11 = [(MTEpisode *)self bestTitle];
  }

  return v11;
}

- (id)bestSummary
{
  if (os_feature_enabled_use_episode_description_for_summary())
  {
    v3 = [(MTEpisode *)self itemDescription];
    if ([v3 hasHTML])
    {
      [(MTEpisode *)self itemDescriptionWithoutHTML];
    }

    else
    {
      [(MTEpisode *)self itemDescription];
    }
    v4 = ;
  }

  else
  {
    v4 = [(MTEpisode *)self itunesSubtitle];
  }

  return v4;
}

- (NSString)assetURL
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(MTEpisode *)self securityScopedAssetData];
  if (v3)
  {
    v11 = 0;
    v10 = 0;
    v4 = [MEMORY[0x1E695DFF8] URLByResolvingBookmarkData:v3 options:0 relativeToURL:0 bookmarkDataIsStale:&v11 error:&v10];
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
      v7 = [v4 absoluteString];

      goto LABEL_11;
    }
  }

  v7 = [(MTEpisode *)self primitiveValueForKey:@"assetURL"];
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)isExplicit
{
  if (([(MTEpisode *)self explicit]& 1) != 0)
  {
    return 1;
  }

  v4 = [(MTEpisode *)self podcast];
  v5 = [v4 isExplicit];

  return v5;
}

- (int64_t)episodeTypeResolvedValue
{
  v3 = [(MTEpisode *)self episodeType];
  v4 = [v3 length];

  if (!v4)
  {
    return 0;
  }

  v5 = [(MTEpisode *)self episodeType];
  v6 = [v5 caseInsensitiveCompare:@"trailer"];

  if (!v6)
  {
    return 1;
  }

  v7 = [(MTEpisode *)self episodeType];
  v8 = [v7 caseInsensitiveCompare:@"bonus"] == 0;

  return 2 * v8;
}

- (BOOL)hasFreeVersion
{
  v2 = [(MTEpisode *)self freePriceType];
  v3 = MTEpisodePriceTypeFromPersistentString(v2);

  return (v3 & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

+ (id)predicateForPreviouslyPlayedHidingFutureTimestamps
{
  v3 = [a1 predicateForPreviouslyPlayed];
  v4 = [a1 predicateForHidingFuturePlayedTimestamps];
  v5 = [v3 AND:v4];

  return v5;
}

+ (id)predicateForPreviouslyPlayed
{
  v3 = [a1 predicateForHasBeenPlayed];
  v4 = [a1 predicateForPodcastIsNotHidden];
  v5 = [v3 AND:v4];
  v6 = [a1 predicateForPlayedDateSetByListening];
  v7 = [v5 AND:v6];

  return v7;
}

+ (id)predicateForPlayedDateSetByListening
{
  v3 = [a1 predicateForNotManuallyMarkedAsPlayed];
  v4 = [a1 predicateForListenedAfterMarkedAsPlayed];
  v5 = [v3 OR:v4];

  return v5;
}

+ (id)predicateForHasBeenPlayed
{
  v2 = MEMORY[0x1E696AE18];
  v3 = [MEMORY[0x1E695DF00] distantPast];
  v4 = [v2 predicateWithFormat:@"%K != NULL AND %K > %@", @"lastDatePlayed", @"lastDatePlayed", v3];

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
  v3 = [a1 predicateForEntitledEpisodes];
  v4 = [a1 predicateForSaved:1];
  v5 = [a1 predicateForDownloaded:1 excludeHidden:1];
  v6 = [v4 OR:v5];

  v7 = [a1 predicateForPodcastIsSubscribed:1];
  v8 = [v7 OR:v6];

  v9 = [v3 AND:v8];

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
  v3 = [(MTEpisode *)self podcast];
  v4 = [v3 channel];
  v5 = [v4 subscriptionActive];

  if (v5)
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

+ (id)propertyPathForPodcastProperty:(id)a3
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = @"podcast";
  v9[1] = a3;
  v3 = MEMORY[0x1E695DEC8];
  v4 = a3;
  v5 = [v3 arrayWithObjects:v9 count:2];

  v6 = [v5 componentsJoinedByString:@"."];

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)setPersistentID:(int64_t)a3
{
  if ([(MTEpisode *)self persistentID]!= a3)
  {
    [(MTEpisode *)self willChangeValueForKey:@"persistentID"];
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    [(MTEpisode *)self setPrimitiveValue:v5 forKey:@"persistentID"];

    [(MTEpisode *)self didChangeValueForKey:@"persistentID"];
    if (objc_opt_respondsToSelector())
    {

      [(MTEpisode *)self didChangePersistentID];
    }
  }
}

- (void)setPodcast:(id)a3
{
  v5 = a3;
  [(MTEpisode *)self willChangeValueForKey:@"podcast"];
  [(MTEpisode *)self setPrimitiveValue:v5 forKey:@"podcast"];
  [(MTEpisode *)self didChangeValueForKey:@"podcast"];
  v4 = [v5 uuid];
  [(MTEpisode *)self setPodcastUuid:v4];

  if (([v5 currentEpisodeLimitAllowsAutomaticDownloads] & 1) == 0)
  {
    [(MTEpisode *)self suppressAutomaticDownloadsIfNeeded];
  }

  if (([v5 notifications] & 1) == 0)
  {
    [(MTEpisode *)self setSentNotification:1];
  }
}

- (void)setImportDate:(double)a3
{
  v5 = +[_TtC18PodcastsFoundation17FutureDateChecker lenientSharedInstance];
  [v5 timestampBoundByNow:a3];
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

- (void)setCleanedTitle:(id)a3
{
  v8 = a3;
  v4 = [(MTEpisode *)self cleanedTitle];
  v5 = v8 | v4;

  if (v5)
  {
    v6 = [(MTEpisode *)self cleanedTitle];
    v7 = [v6 isEqualToString:v8];

    if ((v7 & 1) == 0)
    {
      [(MTEpisode *)self willChangeValueForKey:@"cleanedTitle"];
      [(MTEpisode *)self setPrimitiveValue:v8 forKey:@"cleanedTitle"];
      [(MTEpisode *)self didChangeValueForKey:@"cleanedTitle"];
    }
  }
}

- (void)setByteSize:(int64_t)a3
{
  if ([(MTEpisode *)self byteSize]!= a3)
  {
    [(MTEpisode *)self willChangeValueForKey:@"byteSize"];
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    [(MTEpisode *)self setPrimitiveValue:v5 forKey:@"byteSize"];

    [(MTEpisode *)self didChangeValueForKey:@"byteSize"];
  }
}

- (void)setEnclosureURL:(id)a3
{
  v8 = a3;
  v4 = [(MTEpisode *)self enclosureURL];
  v5 = v8 | v4;

  if (v5)
  {
    v6 = [(MTEpisode *)self enclosureURL];
    v7 = [v6 isEqualToString:v8];

    if ((v7 & 1) == 0)
    {
      [(MTEpisode *)self willChangeValueForKey:@"enclosureURL"];
      [(MTEpisode *)self setPrimitiveValue:v8 forKey:@"enclosureURL"];
      [(MTEpisode *)self didChangeValueForKey:@"enclosureURL"];
    }
  }
}

- (void)setPodcastUuid:(id)a3
{
  v4 = a3;
  if (!v4 && ([(MTEpisode *)self isDeleted]& 1) == 0)
  {
    v5 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(MTEpisode(Core) *)self setPodcastUuid:v5];
    }
  }

  [(MTEpisode *)self willChangeValueForKey:@"podcastUuid"];
  [(MTEpisode *)self setPrimitiveValue:v4 forKey:@"podcastUuid"];
  [(MTEpisode *)self didChangeValueForKey:@"podcastUuid"];
}

- (void)setEpisodeLevel:(int64_t)a3
{
  if ([(MTEpisode *)self episodeLevel]!= a3)
  {
    [(MTEpisode *)self willChangeValueForKey:@"episodeLevel"];
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    [(MTEpisode *)self setPrimitiveValue:v5 forKey:@"episodeLevel"];

    [(MTEpisode *)self didChangeValueForKey:@"episodeLevel"];
  }
}

- (void)setItunesTitle:(id)a3
{
  v8 = a3;
  v4 = [(MTEpisode *)self itunesTitle];
  v5 = v8 | v4;

  if (v5)
  {
    v6 = [(MTEpisode *)self itunesTitle];
    v7 = [v6 isEqualToString:v8];

    if ((v7 & 1) == 0)
    {
      [(MTEpisode *)self willChangeValueForKey:@"itunesTitle"];
      [(MTEpisode *)self setPrimitiveValue:v8 forKey:@"itunesTitle"];
      [(MTEpisode *)self didChangeValueForKey:@"itunesTitle"];
    }
  }
}

- (void)setEpisodeType:(id)a3
{
  v8 = a3;
  v4 = [(MTEpisode *)self episodeType];
  v5 = v8 | v4;

  if (v5)
  {
    v6 = [(MTEpisode *)self episodeType];
    v7 = [v6 isEqualToString:v8];

    if ((v7 & 1) == 0)
    {
      [(MTEpisode *)self willChangeValueForKey:@"episodeType"];
      [(MTEpisode *)self setPrimitiveValue:v8 forKey:@"episodeType"];
      [(MTEpisode *)self didChangeValueForKey:@"episodeType"];
    }
  }
}

- (void)setWebpageURL:(id)a3
{
  v8 = a3;
  v4 = [(MTEpisode *)self webpageURL];
  v5 = v8 | v4;

  if (v5)
  {
    v6 = [(MTEpisode *)self webpageURL];
    v7 = [v6 isEqualToString:v8];

    if ((v7 & 1) == 0)
    {
      [(MTEpisode *)self willChangeValueForKey:@"webpageURL"];
      [(MTEpisode *)self setPrimitiveValue:v8 forKey:@"webpageURL"];
      [(MTEpisode *)self didChangeValueForKey:@"webpageURL"];
    }
  }
}

- (void)setEpisodeNumber:(int64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithLongLong:?];
  if (a3)
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

- (void)setSeasonNumber:(int64_t)a3
{
  if ([(MTEpisode *)self seasonNumber]!= a3)
  {
    if (a3)
    {
      v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
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

- (void)setDuration:(double)a3
{
  [(MTEpisode *)self duration];
  if (vabdd_f64(v5, a3) > 2.22044605e-16)
  {
    [(MTEpisode *)self willChangeValueForKey:@"duration"];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [(MTEpisode *)self setPrimitiveValue:v6 forKey:@"duration"];

    [(MTEpisode *)self didChangeValueForKey:@"duration"];
  }
}

- (void)setEntitledDuration:(double)a3
{
  [(MTEpisode *)self entitledDuration];
  if (vabdd_f64(v5, a3) > 2.22044605e-16)
  {
    [(MTEpisode *)self willChangeValueForKey:@"entitledDuration"];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [(MTEpisode *)self setPrimitiveValue:v6 forKey:@"entitledDuration"];

    [(MTEpisode *)self didChangeValueForKey:@"entitledDuration"];
  }
}

- (void)setFreeDuration:(double)a3
{
  [(MTEpisode *)self freeDuration];
  if (vabdd_f64(v5, a3) > 2.22044605e-16)
  {
    [(MTEpisode *)self willChangeValueForKey:@"freeDuration"];
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [(MTEpisode *)self setPrimitiveValue:v6 forKey:@"freeDuration"];

    [(MTEpisode *)self didChangeValueForKey:@"freeDuration"];
  }
}

- (void)setTrackNum:(int64_t)a3
{
  if ([(MTEpisode *)self trackNum]!= a3)
  {
    [(MTEpisode *)self willChangeValueForKey:@"trackNum"];
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    [(MTEpisode *)self setPrimitiveValue:v5 forKey:@"trackNum"];

    [(MTEpisode *)self didChangeValueForKey:@"trackNum"];
  }
}

- (void)setPubDate:(double)a3
{
  [(MTEpisode *)self pubDate];
  if (vabdd_f64(v5, a3) > 2.22044605e-16)
  {
    [(MTEpisode *)self willChangeValueForKey:@"pubDate"];
    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a3];
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [a1 propertiesToFetchIsBackCatalogItem];
  [v3 addObjectsFromArray:v4];

  v5 = [a1 propertiesToFetchIsPlayed];
  [v3 addObjectsFromArray:v5];

  v6 = [v3 copy];

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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [a1 propertiesToFetchIsBackCatalogItem];
  [v3 addObjectsFromArray:v4];

  v5 = [a1 propertiesToFetchIsPlayheadPartiallyPlayed];
  [v3 addObjectsFromArray:v5];

  v6 = [v3 copy];

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
  v3 = [(MTEpisode *)self playState];
  if (!v3)
  {
    return 1.0;
  }

  if (v3 == 2)
  {
    return 0.0;
  }

  if (v3 != 1)
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
  v2 = [(MTEpisode *)self assetURL];
  v3 = v2 != 0;

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

- (void)_setAssetUrl:(id)a3
{
  v4 = a3;
  [(MTEpisode *)self willChangeValueForKey:@"assetURL"];
  [(MTEpisode *)self setPrimitiveValue:v4 forKey:@"assetURL"];

  [(MTEpisode *)self didChangeValueForKey:@"assetURL"];
}

- (id)bestUrl
{
  v3 = [(MTEpisode *)self assetURL];

  if (!v3 || ([(MTEpisode *)self assetURL], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v4 = [(MTEpisode *)self enclosureURL];
  }

  v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];

  return v5;
}

+ (double)endOfTrackForDuration:(double)a3
{
  if (a3 <= 360.0)
  {
    return a3 * 0.9;
  }

  else
  {
    return a3 + -240.0;
  }
}

+ (BOOL)isPlayhead:(double)a3 resumableForDuration:(double)a4
{
  if (a3 < 0.100000001)
  {
    return 0;
  }

  [MTEpisode endOfTrackForDuration:a4];
  return v6 > a3;
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

  v4 = [(MTEpisode *)self podcast];
  v5 = [v4 isShareable];

  return v5;
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
  v3 = [(MTEpisode *)self podcast];
  v4 = [v3 channel];
  v5 = [v4 subscriptionActive];

  if (v5)
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
  v2 = [(MTEpisode *)self priceType];
  v3 = MTEpisodePriceTypeFromPersistentString(v2);

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
  v3 = [(MTEpisode *)self _resolvedEntitlementState];

  [(MTEpisode *)self setEntitlementState:v3];
}

- (id)playURL
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MTEpisode *)self podcastUuid];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"null";
  }

  v7 = [(MTEpisode *)self uuid];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
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
  v4 = [(MTEpisode *)self podcastUuid];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"null";
  }

  v7 = [(MTEpisode *)self uuid];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
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

- (void)setIsTopLevel:(BOOL)a3
{
  v3 = a3;
  v5 = [(MTEpisode *)self flags];
  if ((v5 & 1) != v3)
  {

    [(MTEpisode *)self setFlags:v5 & 0xFFFFFFFFFFFFFFFELL | v3];
  }
}

- (int64_t)downloadError
{
  v2 = [(MTEpisode *)self flags];
  result = 1;
  while ((v2 & (1 << result)) == 0)
  {
    if (++result == 12)
    {
      return 0;
    }
  }

  return result;
}

- (void)setDownloadError:(int64_t)a3
{
  v5 = vand_s8(vand_s8([(MTEpisode *)self flags], -2731), -1365);
  v6 = 1 << a3;
  if (!a3)
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
  v2 = self;
  v3 = [(MTEpisode *)self podcastUuid];
  v4 = [(MTEpisode *)v2 podcast];
  v5 = +[MTEpisode predicateForUserEpisodesOnPodcastUuid:episodeLimit:deletePlayedEpisodes:limitToDownloadBehaviorAutomatic:](MTEpisode, "predicateForUserEpisodesOnPodcastUuid:episodeLimit:deletePlayedEpisodes:limitToDownloadBehaviorAutomatic:", v3, 0, [v4 deletePlayedEpisodesResolvedValue], 0);
  LOBYTE(v2) = [v5 evaluateWithObject:v2];

  return v2;
}

+ (id)friendlyPubDateStringForEpisode:(id)a3 abbreviated:(BOOL)a4
{
  v4 = a4;
  v5 = [a3 valueForKey:@"pubDate"];
  [v5 timeIntervalSinceReferenceDate];
  if (v6 == 0.0)
  {

    v5 = 0;
  }

  else if (v5)
  {
    if (v4)
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

+ (BOOL)exists:(id)a3
{
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = +[MTDB sharedInstance];
  v5 = [v4 mainOrPrivateContext];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __29__MTEpisode_Library__exists___block_invoke;
  v9[3] = &unk_1E856A118;
  v6 = v5;
  v10 = v6;
  v7 = v3;
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

+ (BOOL)isExternalMedia:(id)a3
{
  v3 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = +[MTDB sharedInstance];
  v5 = [v4 mainOrPrivateContext];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __38__MTEpisode_Library__isExternalMedia___block_invoke;
  v9[3] = &unk_1E856A118;
  v6 = v5;
  v10 = v6;
  v7 = v3;
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

- (void)setMetadataIdentifier:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(MTEpisode *)self metadataIdentifier];
    v7 = [(MTEpisode *)self podcast];
    v8 = [v7 feedURL];
    v9 = [(MTEpisode *)self podcast];
    v10 = [v9 updatedFeedURL];
    v11 = [(MTEpisode *)self guid];
    v13 = 138544386;
    v14 = v6;
    v15 = 2114;
    v16 = v4;
    v17 = 2114;
    v18 = v8;
    v19 = 2114;
    v20 = v10;
    v21 = 2114;
    v22 = v11;
    _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_DEFAULT, "Setting metadataIdentifier from %{public}@ to %{public}@, for feedUrl: %{public}@ updatedFeedUrl %{public}@, guid: %{public}@", &v13, 0x34u);
  }

  [(MTEpisode *)self willChangeValueForKey:@"metadataIdentifier"];
  [(MTEpisode *)self setPrimitiveValue:v4 forKey:@"metadataIdentifier"];
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
  v2 = self;
  v3 = [(MTEpisode *)self podcastUuid];
  v4 = [(MTEpisode *)v2 podcast];
  v5 = +[MTEpisode predicateForEpisodesOnUnplayedTabOnPodcastUuid:deletePlayedEpisodes:](MTEpisode, "predicateForEpisodesOnUnplayedTabOnPodcastUuid:deletePlayedEpisodes:", v3, [v4 deletePlayedEpisodesResolvedValue]);
  LOBYTE(v2) = [v5 evaluateWithObject:v2];

  return v2;
}

- (void)setItunesSubtitle:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (v4 || ([(MTEpisode *)self itunesSubtitle], v5 = objc_claimAutoreleasedReturnValue(), v5, v4 = 0, v5))
  {
    if ([v4 hasHTML])
    {
      v6 = [v10 stringBySmartlyStrippingHTML];

      v10 = v6;
    }

    v7 = [(MTEpisode *)self itunesSubtitle];
    v8 = [v10 isEqualToString:v7];

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

- (void)setItemDescription:(id)a3
{
  v12 = a3;
  if (v12 || ([(MTEpisode *)self itemDescription], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = [(MTEpisode *)self itemDescription];
    v6 = [v12 isEqualToString:v5];

    if (v12)
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
    [(MTEpisode *)self setPrimitiveValue:v12 forKey:@"itemDescription"];
    [(MTEpisode *)self didChangeValueForKey:@"itemDescription"];
    v7 = objc_autoreleasePoolPush();
    v8 = [v12 hasHTML];
    objc_autoreleasePoolPop(v7);
    [(MTEpisode *)self willChangeValueForKey:@"itemDescriptionHasHTML"];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:v8];
    [(MTEpisode *)self setPrimitiveValue:v9 forKey:@"itemDescriptionHasHTML"];

    [(MTEpisode *)self didChangeValueForKey:@"itemDescriptionHasHTML"];
    v10 = objc_autoreleasePoolPush();
    if (v8)
    {
      v11 = [v12 stringBySmartlyStrippingHTML];
    }

    else
    {
      v11 = 0;
    }

    [(MTEpisode *)self willChangeValueForKey:@"itemDescriptionWithoutHTML"];
    [(MTEpisode *)self setPrimitiveValue:v11 forKey:@"itemDescriptionWithoutHTML"];
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
      v5 = [v3 verboseDisplayStringWithoutTime];
      v6 = [MEMORY[0x1E696AAE8] podcastsFoundationBundle];
      v7 = [v6 localizedStringForKey:@"EPISODE_LAST_PLAYED_ON_DATE_FORMAT" value:&stru_1F548B930 table:0];

      v8 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v7 validFormatSpecifiers:@"%@" error:0, v5];
    }

    else
    {
      v5 = [MEMORY[0x1E696AAE8] podcastsFoundationBundle];
      v8 = [v5 localizedStringForKey:@"EPISODE_PLAYED_TITLE" value:&stru_1F548B930 table:0];
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
  v4 = [v3 friendlyDisplayString];
  if ([v4 length])
  {
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
    v6 = [v5 isDateInToday:v3];

    if (!v6)
    {
      v12 = [v3 isLessThanWeekOld];
      v13 = [MEMORY[0x1E696AAE8] podcastsFoundationBundle];
      v14 = v13;
      if (v12)
      {
        v15 = @"EPISODE_PLAYED_ON_DAY_FORMAT";
      }

      else
      {
        v15 = @"EPISODE_PLAYED_ON_DATE_FORMAT";
      }

      v8 = [v13 localizedStringForKey:v15 value:&stru_1F548B930 table:0];

      v11 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:v8 validFormatSpecifiers:@"%@" error:0, v4];
      goto LABEL_12;
    }

    v7 = [MEMORY[0x1E696AAE8] podcastsFoundationBundle];
    v8 = v7;
    v9 = @"EPISODE_PLAYED_TODAY";
  }

  else
  {
    v7 = [MEMORY[0x1E696AAE8] podcastsFoundationBundle];
    v8 = v7;
    v9 = @"EPISODE_PLAYED_TITLE";
  }

  v11 = [v7 localizedStringForKey:v9 value:&stru_1F548B930 table:0];
LABEL_12:
  v10 = v11;

LABEL_13:

  return v10;
}

- (void)setUti:(id)a3
{
  v11 = [MTUTIUtil convertUti:a3];
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

- (void)setAssetURL:(id)a3
{
  v8 = a3;
  v4 = [(MTEpisode *)self assetURL];
  v5 = v8 | v4;

  if (v5)
  {
    v6 = [(MTEpisode *)self assetURL];
    v7 = [v6 isEqualToString:v8];

    if ((v7 & 1) == 0)
    {
      [(MTEpisode *)self willChangeValueForKey:@"assetURL"];
      [(MTEpisode *)self setPrimitiveValue:v8 forKey:@"assetURL"];
      [(MTEpisode *)self didChangeValueForKey:@"assetURL"];
      [(MTEpisode *)self suppressAutomaticDownloadsIfNeeded];
      if (!v8)
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
    v3 = [(MTEpisode *)self podcast];
    [v3 lastDatePlayed];
    v5 = v4;

    [(MTEpisode *)self lastDatePlayed];
    v7 = v6;
    v20 = [(MTEpisode *)self podcast];
    [v20 addedDate];
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

      v20 = [(MTEpisode *)self podcast];
      [v20 setModifiedDate:v19];
    }

    else
    {
      v10 = [(MTEpisode *)self podcast];
      [v10 setModifiedDate:v9];
    }
  }
}

- (void)setLastDatePlayed:(double)a3
{
  [(MTEpisode *)self lastDatePlayed];
  if (v5 < a3)
  {
    [(MTEpisode *)self willChangeValueForKey:@"lastDatePlayed"];
    v6 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:a3];
    [(MTEpisode *)self setPrimitiveValue:v6 forKey:@"lastDatePlayed"];

    [(MTEpisode *)self didChangeValueForKey:@"lastDatePlayed"];
    v7 = [(MTEpisode *)self podcast];
    [v7 setLastDatePlayed:a3];

    [(MTEpisode *)self updateListenNowSortingDate];
  }
}

- (id)metricsContentIdentifier
{
  if (+[PFClientUtil isPodcastsApp])
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    if ([(MTEpisode *)self storeTrackId])
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", -[MTEpisode storeTrackId](self, "storeTrackId")];
      [v3 setObject:v4 forKeyedSubscript:@"adamId"];
    }

    v5 = [(MTEpisode *)self guid];

    if (v5)
    {
      v6 = [(MTEpisode *)self guid];
      [v3 setObject:v6 forKeyedSubscript:@"guid"];
    }

    v7 = [(MTEpisode *)self title];

    if (v7)
    {
      v8 = [(MTEpisode *)self title];
      [v3 setObject:v8 forKeyedSubscript:@"title"];
    }

    v9 = [(MTEpisode *)self podcast];
    v10 = [v9 title];

    if (v10)
    {
      v11 = [(MTEpisode *)self podcast];
      v12 = [v11 title];
      [v3 setObject:v12 forKeyedSubscript:@"podcast"];
    }
  }

  else
  {
    v13 = objc_opt_class();
    v3 = NSStringFromClass(v13);
  }

  return v3;
}

+ (id)insertNewEpisodeInManagedObjectContext:(id)a3 title:(id)a4 podcast:(id)a5 pubDate:(id)a6 byteSize:(int64_t)a7 guid:(id)a8 uti:(id)a9 contentId:(int64_t)a10 enclosureUrl:(id)a11 playStateSource:(int)a12 importSource:(int)a13 canSendNotifications:(BOOL)a14
{
  v27 = a4;
  v18 = a6;
  v19 = a8;
  v25 = a9;
  v20 = a11;
  v21 = a5;
  v22 = [MTEpisode insertNewEpisodeInManagedObjectContext:a3 canSendNotifications:a14];
  [v22 setPodcast:v21];

  [v22 setStoreTrackId:a10];
  [v22 setImportSource:a13];
  [v22 setByteSize:a7];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v18 timeIntervalSinceReferenceDate];
    [v22 setPubDate:?];
  }

  [v22 setUti:{v25, a7}];
  if (v19)
  {
    [v22 setGuid:v19];
  }

  if (v27)
  {
    [v22 setTitle:v27];
  }

  if (v20)
  {
    [v22 setEnclosureURL:v20];
  }

  [a1 prepareForPlatform:v22];

  return v22;
}

+ (id)insertNewEpisodeInManagedObjectContext:(id)a3 canSendNotifications:(BOOL)a4
{
  v4 = a4;
  v6 = [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:@"MTEpisode" inManagedObjectContext:a3];
  v7 = [MEMORY[0x1E696AEC0] UUID];
  [v6 setUuid:v7];

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
  [v6 setSentNotification:!v4];
  [a1 prepareForPlatform:v6];

  return v6;
}

+ (void)episodeUuidForGUID:(id)a3 feedURL:(id)a4 completion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 length])
  {
    if ([v8 length])
    {
      [MTEpisode predicateForEpisodeGuid:v7 onFeedURL:v8];
    }

    else
    {
      [MTEpisode predicateForEpisodeGuid:v7];
    }
    v10 = ;
    v11 = +[MTDB sharedInstance];
    v12 = [v11 playbackContext];

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __60__MTEpisode_Library__episodeUuidForGUID_feedURL_completion___block_invoke;
    v15[3] = &unk_1E85690E8;
    v16 = v12;
    v17 = v10;
    v18 = v9;
    v13 = v10;
    v14 = v12;
    [v14 performBlock:v15];
  }

  else
  {
    (*(v9 + 2))(v9, 0);
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

- (BOOL)allowsDurationUpdateFromSource:(int)a3
{
  if (!os_feature_enabled_preserve_player_set_duration())
  {
    return 1;
  }

  if (a3 == 6)
  {
    [(MTEpisode *)self playhead];
    if (v7 != 0.0)
    {
      v8 = [(MTEpisode *)self assetURL];
      v6 = v8 == 0;

      return v6;
    }

    return 1;
  }

  if (a3 != 7)
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

+ (id)predicateForDownloadLimitForEpisodeLimit:(int64_t)a3
{
  v11[2] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = [MEMORY[0x1E696AE18] truePredicate];
  }

  else
  {
    v5 = MEMORY[0x1E696AB28];
    v6 = [a1 predicateForPodcastIsSerial:1];
    v11[0] = v6;
    v7 = [a1 predicateForEpisodesDeterminedByLimitSettings:7];
    v11[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    v3 = [v5 orPredicateWithSubpredicates:v8];
  }

  v9 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)predicateForEpisodesDeterminedByLimitSettings:(int64_t)a3
{
  v3 = a3;
  v4 = 0x8000000000000001;
  if (a3 <= 5)
  {
    if (a3 > 3)
    {
      if (a3 == 4)
      {
        v3 = 5;
      }

      else
      {
        v3 = 10;
      }
    }

    else if ((a3 - 1) >= 3)
    {
      if (a3)
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

    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K < %ld", *v16, v3];
    goto LABEL_28;
  }

  if (a3 <= 8)
  {
    v5 = -7;
    v6 = -14;
    if (a3 != 8)
    {
      v6 = 0x8000000000000001;
    }

    if (a3 != 7)
    {
      v5 = v6;
    }

    if (a3 == 6)
    {
      v4 = -1;
    }

    else
    {
      v4 = v5;
    }

    goto LABEL_22;
  }

  if (a3 == 9)
  {
    v4 = -30;
    goto LABEL_22;
  }

  if (a3 == 0x100000000)
  {
LABEL_20:
    v10 = [MEMORY[0x1E696AE18] truePredicate];
    goto LABEL_28;
  }

  if (a3 != 0x100000001)
  {
LABEL_22:
    v11 = [MEMORY[0x1E695DEE8] currentCalendar];
    v12 = [MEMORY[0x1E695DF00] date];
    v13 = [v11 components:28 fromDate:v12];

    [v13 setDay:{objc_msgSend(v13, "day") + v4}];
    v14 = [v11 dateFromComponents:v13];
    v15 = [MEMORY[0x1E696AE18] predicateForDateKey:@"pubDate" isGreaterThanOrEqualToDate:v14];

    goto LABEL_29;
  }

  v8 = [MEMORY[0x1E695E000] _applePodcastsFoundationSettingsUserDefaults];
  v9 = [v8 episodeLimitForKey:@"MTPodcastEpisodeLimitDefaultKey"];

  v10 = [a1 predicateForEpisodesDeterminedByLimitSettings:v9];
LABEL_28:
  v15 = v10;
LABEL_29:

  return v15;
}

+ (id)predicateForLimittedEpisodesOnPodcastUuid:(id)a3 determinedByLimit:(int64_t)a4 deletePlayedEpisodes:(BOOL)a5
{
  v8 = a3;
  v9 = [a1 predicateForEpisodesDeterminedByLimitSettings:a4];
  v10 = [MTEpisode predicateForVisuallyPlayed:0];
  if (!a5)
  {
    v11 = [MTEpisode predicateForVisuallyPlayed:1];
    v12 = [MTEpisode predicateForPlayStateManuallySet:0];
    v13 = [v11 AND:v12];
    v14 = [v10 OR:v13];

    v10 = v14;
  }

  v15 = [v9 AND:v10];
  v16 = [a1 predicateForAllEpisodesOnPodcastUuid:v8];

  v17 = [v15 AND:v16];

  return v17;
}

+ (id)predicateForHiddenPodcastForEpisodeUuids:(id)a3
{
  v4 = [a1 predicateForEpisodeUuids:a3];
  v5 = [a1 predicateForPodcastIsNotHidden];
  v6 = [v5 NOT];
  v7 = [v4 AND:v6];

  return v7;
}

+ (id)predicateForBookmarkedEpisodesOnPodcastUuid:(id)a3
{
  v3 = [a1 predicateForAllEpisodesOnPodcastUuid:a3];
  v4 = MEMORY[0x1E696AE18];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v6 = [v4 predicateWithFormat:@"%K = %@", @"isBookmarked", v5];
  v7 = [v3 AND:v6];

  return v7;
}

+ (id)predicateForDownloadedEpisodesOnPodcastUuid:(id)a3
{
  v4 = [a1 predicateForAllEpisodesOnPodcastUuid:a3];
  v5 = [a1 predicateForDownloaded:1 excludeHidden:1];
  v6 = [v4 AND:v5];

  return v6;
}

+ (id)predicateForAllEpisodesOnPodcastUuid:(id)a3 includeNonAudioEpisodes:(BOOL)a4
{
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K = %@)", @"podcastUuid", a3];
  if (!a4)
  {
    v6 = [MTEpisode predicateForAudio:1];
    v7 = [v5 AND:v6];

    v5 = v7;
  }

  return v5;
}

+ (id)predicateForAllEpisodesOnPodcastUuids:(id)a3 includeNonAudioEpisodes:(BOOL)a4
{
  v5 = MEMORY[0x1E696AE18];
  v6 = [a3 array];
  v7 = [v5 predicateWithFormat:@"%K in %@", @"podcastUuid", v6];

  if (!a4)
  {
    v8 = [MTEpisode predicateForAudio:1];
    v9 = [v7 AND:v8];

    v7 = v9;
  }

  v10 = +[MTEpisode predicateForAllEpisodes];
  v11 = [v7 AND:v10];

  return v11;
}

+ (id)predicateForAllEpisodesOnPodcast:(id)a3 includeNonAudioEpisodes:(BOOL)a4
{
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(%K = %@)", @"podcast", a3];
  if (!a4)
  {
    v6 = [MTEpisode predicateForAudio:1];
    v7 = [v5 AND:v6];

    v5 = v7;
  }

  return v5;
}

+ (id)predicateForLibraryEpisodesOnPodcastUuid:(id)a3
{
  v4 = a3;
  v5 = [a1 predicateForAllBookmarkedEpisodes];
  v6 = [a1 predicateForDownloaded:1 excludeHidden:0];
  v7 = [a1 predicateForAllBookmarksMigrationRecoveredEpisodes];
  v8 = [v5 OR:v6];
  v9 = [v8 OR:v7];

  v10 = [a1 predicateForAllEpisodesOnPodcastUuid:v4];

  v11 = [v9 AND:v10];

  return v11;
}

+ (id)predicateForEpisodesWhichNeedEntitlementStateUpdateForShowUUID:(id)a3 subscriptionState:(BOOL)a4
{
  v4 = a4;
  v6 = [a1 predicateForAllEpisodesOnPodcastUuid:a3 includeNonAudioEpisodes:1];
  v7 = [a1 predicateForDerivedEntitlementStateFree];
  v8 = [a1 _predicateForNotEntitlementState:0];
  v9 = [v7 AND:v8];

  v10 = [a1 predicateForPriceType:2];
  if (v4)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = [a1 _predicateForNotEntitlementState:v11];
  v13 = [v10 AND:v12];

  v14 = [v9 OR:v13];
  v15 = [v6 AND:v14];

  return v15;
}

+ (id)predicateForEpisodesWhichNeedEntitlementStateUpdate
{
  v3 = [a1 predicateForDerivedEntitlementStateFree];
  v4 = [a1 _predicateForNotEntitlementState:0];
  v5 = [v3 AND:v4];

  v6 = [a1 predicateForDerivedEntitlementStateEntitled];
  v7 = [a1 _predicateForNotEntitlementState:1];
  v8 = [v6 AND:v7];

  v9 = [a1 predicateForDerivedEntitlementStateUnentitled];
  v10 = [a1 _predicateForNotEntitlementState:2];
  v11 = [v9 AND:v10];

  v12 = [v5 OR:v8];
  v13 = [v12 OR:v11];

  return v13;
}

+ (id)predicateForDerivedEntitlementStateEntitled
{
  v3 = [a1 predicateForPodcastPaidSubscriptionActive:1];
  v4 = [a1 predicateForPriceType:2];
  v5 = [v3 AND:v4];

  return v5;
}

+ (id)predicateForDerivedEntitlementStateUnentitled
{
  v3 = [a1 predicateForPodcastPaidSubscriptionActive:0];
  v4 = [a1 predicateForPriceType:2];
  v5 = [v3 AND:v4];

  return v5;
}

+ (id)_predicateForNotEntitlementState:(int64_t)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v5 = [v3 predicateWithFormat:@"(%K != %@)", @"entitlementState", v4];

  return v5;
}

+ (id)predicateForEpisodesPlayableWithoutAccount
{
  v2 = MEMORY[0x1E696AB28];
  v3 = [a1 predicateForEpisodesRequiringAccount];
  v4 = [v2 notPredicateWithSubpredicate:v3];

  return v4;
}

+ (id)predicateForEpisodesRequiringAccount
{
  v3 = [a1 predicateForPriceType:3];
  v4 = [a1 predicateForPriceType:2];
  v5 = [v3 OR:v4];

  return v5;
}

+ (id)predicateForPodcastPaidSubscriptionActive:(BOOL)a3
{
  if (a3)
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

+ (id)predicateForDownloadBehavior:(int64_t)a3
{
  v4 = MEMORY[0x1E696AB18];
  v5 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"downloadBehavior"];
  v6 = MEMORY[0x1E696ABC8];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v8 = [v6 expressionForConstantValue:v7];
  v9 = [v4 predicateWithLeftExpression:v5 rightExpression:v8 modifier:0 type:4 options:0];

  return v9;
}

+ (id)predicateForPodcastIsSerial:(BOOL)a3
{
  v3 = @"episodic";
  if (a3)
  {
    v3 = @"serial";
  }

  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"podcast.%K = %@", @"showTypeInFeed", v3];

  return v4;
}

+ (id)predicateForPlayed:(BOOL)a3
{
  if (a3)
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

+ (id)predicateForVisuallyPlayed:(BOOL)a3
{
  if (a3)
  {
    v4 = [a1 predicateForPlayed:1];
    v5 = [a1 predicateForIsBackCatalogItem];
    v6 = [v5 NOT];
    v7 = [v4 AND:v6];
  }

  else
  {
    v4 = [a1 predicateForPlayed:?];
    v5 = [a1 predicateForIsBackCatalogItem];
    v7 = [v4 OR:v5];
  }

  return v7;
}

+ (id)predicateForHasAnyVisualPlayState
{
  v3 = [a1 predicateForNotUnplayed];
  v4 = [a1 predicateForIsBackCatalogItem];
  v5 = [v4 NOT];
  v6 = [v3 AND:v5];

  return v6;
}

+ (id)predicateForEpisodesOnUnplayedTab
{
  v3 = [a1 predicateForUnplayedTabFlag:1];
  v4 = [a1 predicateForPodcastIsNotHiddenNotImplicitlyFollowed];
  v5 = [v3 AND:v4];

  return v5;
}

+ (id)predicateForUserEpisodes
{
  v3 = [a1 predicateForUserEpisode:1];
  v4 = [a1 predicateForPodcastIsNotHiddenNotImplicitlyFollowed];
  v5 = [v3 AND:v4];

  return v5;
}

+ (id)predicateForEpisodesInSearchResults
{
  v3 = [a1 predicateForBookmarkedEpisodes];
  v4 = [a1 predicateForDownloaded:1 excludeHidden:1];
  v5 = [v3 OR:v4];
  v6 = [a1 predicateForPodcastIsSubscribed:1];
  v7 = [v5 OR:v6];

  return v7;
}

+ (id)predicateForBookmarkedEpisodes
{
  v3 = [a1 predicateForAllBookmarkedEpisodes];
  v4 = [a1 predicateForPodcastIsNotHiddenNotImplicitlyFollowed];
  v5 = [v3 AND:v4];

  return v5;
}

+ (id)predicateForUnbookmarkedEpisodes
{
  v3 = [a1 predicateForAllUnbookmarkedEpisodes];
  v4 = [a1 predicateForPodcastIsNotHiddenNotImplicitlyFollowed];
  v5 = [v3 AND:v4];

  return v5;
}

+ (id)predicateForBookmarksMigrationRecoveredEpisodesOnPodcastUuid:(id)a3
{
  v4 = a3;
  v5 = [a1 predicateForAllBookmarksMigrationRecoveredEpisodes];
  v6 = [a1 predicateForAllEpisodesOnPodcastUuid:v4];

  v7 = [v5 AND:v6];

  return v7;
}

+ (id)predicateForAllBookmarksMigrationRecoveredEpisodes
{
  v2 = MEMORY[0x1E696AE18];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v4 = [v2 predicateWithFormat:@"%K = %@", @"isBookmarksMigrationRecoveredEpisode", v3];

  return v4;
}

+ (id)predicateForListenNowForPodcastUuid:(id)a3
{
  v4 = MEMORY[0x1E696AE18];
  v5 = a3;
  v6 = [v4 predicateWithFormat:@"%K = %@", @"listenNowEpisode", MEMORY[0x1E695E118]];
  v7 = [a1 predicateForPodcastIsNotHidden];
  v8 = [v6 AND:v7];
  v9 = [a1 predicateForAllEpisodesOnPodcastUuid:v5];

  v10 = [v8 AND:v9];

  return v10;
}

+ (id)predicateForListenNowLatestEpisodes
{
  v3 = [a1 predicateForFeedDeleted:0];
  v4 = [a1 predicateForPodcastIsNotHiddenNotImplicitlyFollowed];
  v5 = [v3 AND:v4];
  v6 = [a1 predicateForPodcastIsSubscribed:1];
  v7 = [v5 AND:v6];
  v8 = [a1 predicateForEntitledEpisodes];
  v9 = [v7 AND:v8];

  return v9;
}

+ (id)predicateForCategoryPageFromYourShows:(id)a3 ctx:(id)a4
{
  v27[4] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __68__MTEpisode_NSPredicate__predicateForCategoryPageFromYourShows_ctx___block_invoke;
  v24[3] = &unk_1E856A518;
  v25 = v6;
  v26 = v8;
  v9 = v8;
  v10 = v6;
  [v7 enumerateObjectsUsingBlock:v24];

  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"podcast", v9];
  v12 = [a1 predicateForEntitledEpisodes];
  v13 = [a1 predicateForVisuallyPlayed:0];
  v14 = +[MTEpisode predicateForAllBookmarkedEpisodes];
  v15 = [a1 predicateForDownloaded:1 excludeHidden:1];
  v16 = [v14 OR:v15];

  v17 = [a1 predicateForPodcastIsSubscribed:1];
  v18 = [v17 OR:v16];

  v19 = MEMORY[0x1E696AB28];
  v27[0] = v11;
  v27[1] = v12;
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

+ (id)predicateForNewsFromYourShows:(id)a3 ctx:(id)a4
{
  v31[6] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_new();
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __60__MTEpisode_NSPredicate__predicateForNewsFromYourShows_ctx___block_invoke;
  v28[3] = &unk_1E856A518;
  v29 = v6;
  v30 = v8;
  v26 = v8;
  v27 = v6;
  [v7 enumerateObjectsUsingBlock:v28];

  v25 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v25 setDay:-30];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"podcast", v26];
  v10 = [a1 predicateForEpisodeType:0];
  v11 = [a1 predicateForPodcastIsSerial:0];
  v12 = [a1 predicateForEntitledEpisodes];
  v13 = [MEMORY[0x1E695DF00] date];
  v14 = [a1 predicateForEpisodesPublishedAfterOffset:v25 fromDate:v13];

  v15 = +[MTEpisode predicateForAllBookmarkedEpisodes];
  v16 = [a1 predicateForDownloaded:1 excludeHidden:1];
  v17 = [v15 OR:v16];

  v18 = [a1 predicateForPodcastIsSubscribed:1];
  v19 = [v18 OR:v17];

  v20 = MEMORY[0x1E696AB28];
  v31[0] = v9;
  v31[1] = v10;
  v31[2] = v11;
  v31[3] = v12;
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

+ (id)predicateForPubDateLimit:(int64_t)a3
{
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      a1 = [a1 predicateForEpisodesPublishedThisMonth];
    }

    else if (a3 == 3)
    {
      a1 = [MEMORY[0x1E696AE18] truePredicate];
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      a1 = [a1 predicateForEpisodesPublishedLastTwoWeeks];
    }
  }

  else
  {
    a1 = [a1 predicateForEpisodesPublishedThisWeek];
  }

  return a1;
}

+ (id)predicateForDownloaded:(BOOL)a3
{
  if (a3)
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
  v2 = [a1 predicateForHLS];
  v3 = [v2 NOT];

  return v3;
}

+ (id)predicateForAtLeastPartiallyPlayedInInterval:(double)a3
{
  v3 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-a3];
  v4 = [v3 dateForBeginningOfHour];

  v5 = [MEMORY[0x1E696AE18] predicateForDateKey:@"lastDatePlayed" isGreaterThanOrEqualToDate:v4];
  v6 = [MEMORY[0x1E696AE18] predicateForDateKey:@"lastUserMarkedAsPlayedDate" isGreaterThanOrEqualToDate:v4];
  v7 = [v5 OR:v6];

  return v7;
}

+ (id)predicateForPlayedInInterval:(double)a3
{
  v4 = [a1 predicateForAtLeastPartiallyPlayedInInterval:a3];
  v5 = [a1 predicateForPlayed:1];
  v6 = [v4 AND:v5];

  return v6;
}

+ (id)predicateForEpisodeUuids:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [a3 allObjects];
  v5 = [v3 predicateWithFormat:@"%K in %@", @"uuid", v4];

  return v5;
}

+ (id)predicateForEpisodeGuids:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [a3 allObjects];
  v5 = [v3 predicateWithFormat:@"%K in %@", @"guid", v4];

  return v5;
}

+ (id)predicateForFeedURLs:(id)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [a3 allObjects];
  v5 = [v3 predicateWithFormat:@"%K.%K in %@", @"podcast", @"feedURL", v4];

  return v5;
}

+ (id)predicateForHasValidPersistentId:(BOOL)a3
{
  if (a3)
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

+ (id)predicateForEpisodesImportedAfterDate:(id)a3
{
  if (a3)
  {
    [MEMORY[0x1E696AE18] predicateForDateKey:@"importDate" isGreaterThanDate:a3];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }
  v3 = ;

  return v3;
}

+ (id)predicateForEpisodeType:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = MEMORY[0x1E696AE18];
    v4 = kEpisodeTypeBonus;
    goto LABEL_7;
  }

  if (a3 == 1)
  {
    v3 = MEMORY[0x1E696AE18];
    v4 = kEpisodeTypeTrailer;
LABEL_7:
    [v3 predicateWithFormat:@"%K ==[c] %@", @"episodeType", *v4, v6, v7, v8];
    goto LABEL_8;
  }

  if (a3)
  {
    goto LABEL_9;
  }

  [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NULL OR (%K !=[c] %@ AND %K !=[c] %@)", @"episodeType", @"episodeType", @"trailer", @"episodeType", @"bonus"];
  a1 = LABEL_8:;
LABEL_9:

  return a1;
}

+ (id)predicateForEpisodeTypeFilter:(int64_t)a3
{
  if (a3 <= 2)
  {
    switch(a3)
    {
      case 0:
        v10 = [MEMORY[0x1E696AE18] truePredicate];
LABEL_18:
        v3 = v10;
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
    v10 = [a1 predicateForEpisodeType:v7];
    goto LABEL_18;
  }

  if (a3 <= 4)
  {
    if (a3 != 3)
    {
      v5 = [a1 predicateForEpisodeType:1];
      v6 = [a1 predicateForEpisodeType:2];
      v3 = [v5 OR:v6];

LABEL_12:
      goto LABEL_19;
    }

    v7 = 2;
    goto LABEL_17;
  }

  if (a3 != 5)
  {
    if (a3 != 6)
    {
      goto LABEL_19;
    }

    v8 = [a1 predicateForEpisodeType:1];
    v9 = [a1 predicateForHasSomeSeasonNumberWithNoEpisodeNumber];
    v5 = [v8 AND:v9];

    v3 = [v5 NOT];
    goto LABEL_12;
  }

  v11 = [a1 predicateForEpisodeType:1];
  v3 = [v11 NOT];

LABEL_19:

  return v3;
}

+ (id)predicateForOtherEpisodesOnPodcastUuid:(id)a3 baseEpisodesPredicate:(id)a4 deletePlayedEpisodes:(BOOL)a5
{
  v8 = MEMORY[0x1E696AB28];
  v9 = a3;
  v10 = [v8 notPredicateWithSubpredicate:a4];
  v11 = [a1 predicateForAllEpisodesOnPodcastUuid:v9];

  v12 = [v11 AND:v10];

  v13 = [a1 predicateForPlayStateManuallySet:1];
  v14 = [a1 predicateForIsFromiTunesSync:1];
  v15 = [v13 OR:v14];

  v16 = [MTEpisode predicateForPlayed:0];
  v17 = [v16 AND:v15];

  if (!a5)
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

+ (id)predicateForRecentlyPlayedEpisodesToBeDeletedOnPodcastUuid:(id)a3 deletePlayedEpisodes:(BOOL)a4
{
  if (a4)
  {
    v5 = [a1 predicateForAllEpisodesOnPodcastUuid:a3];
    v6 = [a1 predicateForRecentlyPlayed];
    v7 = [v5 AND:v6];
    v8 = [a1 predicateForPlayStateManuallySet:0];
    v9 = [v7 AND:v8];
    v10 = [a1 predicateForIsFromiTunesSync:0];
    v11 = [v9 AND:v10];
  }

  else
  {
    v11 = [MEMORY[0x1E696AE18] predicateWithValue:0];
  }

  return v11;
}

+ (id)predicateForEpisodesIsFromiTunesSyncOnPodcastUuid:(id)a3
{
  v4 = [a1 predicateForAllEpisodesOnPodcastUuid:a3];
  v5 = [a1 predicateForIsFromiTunesSync:1];
  v6 = [v4 AND:v5];

  return v6;
}

+ (id)predicateForEpisodesInFeedForPodcastUuid:(id)a3
{
  v4 = [a1 predicateForAllEpisodesOnPodcastUuid:a3];
  v5 = [a1 predicateForFeedDeleted:0];
  v6 = [v4 AND:v5];

  return v6;
}

+ (id)predicateForEpisodesFromiTunesSyncOnPodcastUuid:(id)a3
{
  v4 = [a1 predicateForAllEpisodesOnPodcastUuid:a3];
  v5 = [a1 predicateForIsFromiTunesSync:1];
  v6 = [v4 AND:v5];

  return v6;
}

+ (id)_dateWithOffset:(id)a3 fromDate:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E695DEE8];
  v7 = a4;
  v8 = [v6 alloc];
  v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x1E695D850]];
  v10 = [v9 components:28 fromDate:v7];

  v11 = [v10 day];
  v12 = [v10 month];
  v13 = [v10 year];
  v14 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v14 setDay:v11];
  [v14 setMonth:v12];
  [v14 setYear:v13];
  v15 = [v9 dateFromComponents:v14];
  if (!v5)
  {
    v5 = objc_opt_new();
  }

  v16 = [v9 dateByAddingComponents:v5 toDate:v15 options:0];

  return v16;
}

+ (id)predicateForEpisodesWithUnsatisfiedAvailabilityDate
{
  v2 = [a1 predicateForEpisodesPublishedThisWeek];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != NULL", @"firstTimeAvailableAsPaid"];
  v4 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K > %K", @"pubDate", @"firstTimeAvailableAsPaid"];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %K", @"firstTimeAvailable", @"pubDate"];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %K", @"firstTimeAvailable", @"firstTimeAvailableAsPaid"];
  v7 = [v3 NOT];
  v8 = [v5 AND:v7];

  v9 = [v6 AND:v4];
  v10 = [v9 AND:v3];

  v11 = [v8 OR:v10];
  v12 = [v2 AND:v11];

  return v12;
}

+ (id)predicateForEpisodesPriceChangedAfterOffset:(id)a3 fromDate:(id)a4
{
  v4 = [MTEpisode _dateWithOffset:a3 fromDate:a4];
  v5 = [MEMORY[0x1E696AE18] predicateForDateKey:@"priceTypeChangedDate" isGreaterThanOrEqualToDate:v4];

  return v5;
}

+ (id)predicateForEpisodesPublishedAfterOffset:(id)a3 fromDate:(id)a4
{
  v4 = [MTEpisode _dateWithOffset:a3 fromDate:a4];
  v5 = [MEMORY[0x1E696AE18] predicateForDateKey:@"pubDate" isGreaterThanOrEqualToDate:v4];

  return v5;
}

+ (id)predicateForEpisodesPublishedToday
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [a1 predicateForEpisodesPublishedOnDate:v3];

  return v4;
}

+ (id)predicateForEpisodesPriceTypeChangedThisWeek
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF10]);
  [v3 setWeekOfYear:-1];
  v4 = [MEMORY[0x1E695DF00] date];
  v5 = [a1 predicateForEpisodesPriceChangedAfterOffset:v3 fromDate:v4];

  return v5;
}

+ (id)predicateForEpisodesPublishedThisWeek
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [a1 predicateForEpisodesPublishedThisWeekWithTodayDate:v3];

  return v4;
}

+ (id)predicateForEpisodesPublishedThisWeekWithTodayDate:(id)a3
{
  v4 = MEMORY[0x1E695DF10];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setWeekOfYear:-1];
  v7 = [a1 predicateForEpisodesPublishedAfterOffset:v6 fromDate:v5];

  return v7;
}

+ (id)predicateForEpisodesPublishedLastTwoWeeks
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [a1 predicateForEpisodesPublishedLastTwoWeeksWithTodayDate:v3];

  return v4;
}

+ (id)predicateForEpisodesPublishedLastTwoWeeksWithTodayDate:(id)a3
{
  v4 = MEMORY[0x1E695DF10];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setWeekOfYear:-2];
  v7 = [a1 predicateForEpisodesPublishedAfterOffset:v6 fromDate:v5];

  return v7;
}

+ (id)predicateForEpisodesPublishedThisMonth
{
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [a1 predicateForEpisodesPublishedThisMonthWithTodayDate:v3];

  return v4;
}

+ (id)predicateForEpisodesWithinLevel:(unint64_t)a3
{
  v4 = os_feature_enabled_serial_sort_auto_downloads();
  v5 = kEpisodeShowTypeSpecificLevel;
  if (!v4)
  {
    v5 = kEpisodeLevel;
  }

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K < %ld", *v5, a3];

  return v6;
}

+ (id)predicateForEpisodesPublishedThisMonthWithTodayDate:(id)a3
{
  v4 = MEMORY[0x1E695DF10];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  [v6 setMonth:-1];
  v7 = [a1 predicateForEpisodesPublishedAfterOffset:v6 fromDate:v5];

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

+ (id)predicateForEpisodesInStationShow:(id)a3
{
  v4 = a3;
  v5 = [a1 predicateForStationEligibleEpisodes];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K.%K = %@", @"settings", @"uuid", v4];

  v7 = [v6 AND:v5];

  return v7;
}

+ (id)predicateForUserEpisodesOnPodcastUuid:(id)a3 ctx:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __68__MTEpisode_NSPredicate__predicateForUserEpisodesOnPodcastUuid_ctx___block_invoke;
  v12[3] = &unk_1E856A118;
  v8 = v7;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  v15 = &v16;
  [v8 performBlockAndWait:v12];
  v10 = [a1 predicateForUserEpisodesOnPodcastUuid:v9 episodeLimit:0 deletePlayedEpisodes:*(v17 + 24) limitToDownloadBehaviorAutomatic:0];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __68__MTEpisode_NSPredicate__predicateForUserEpisodesOnPodcastUuid_ctx___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForUuid:*(a1 + 40) entityName:@"MTPodcast"];
  *(*(*(a1 + 48) + 8) + 24) = [v2 deletePlayedEpisodesResolvedValue];
}

+ (id)predicateForEpisodesOnUnplayedTabOnPodcastUuid:(id)a3 ctx:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __77__MTEpisode_NSPredicate__predicateForEpisodesOnUnplayedTabOnPodcastUuid_ctx___block_invoke;
  v12[3] = &unk_1E856A118;
  v8 = v7;
  v13 = v8;
  v9 = v6;
  v14 = v9;
  v15 = &v16;
  [v8 performBlockAndWait:v12];
  v10 = [a1 predicateForEpisodesOnUnplayedTabOnPodcastUuid:v9 deletePlayedEpisodes:*(v17 + 24)];

  _Block_object_dispose(&v16, 8);

  return v10;
}

void __77__MTEpisode_NSPredicate__predicateForEpisodesOnUnplayedTabOnPodcastUuid_ctx___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForUuid:*(a1 + 40) entityName:@"MTPodcast"];
  *(*(*(a1 + 48) + 8) + 24) = [v2 deletePlayedEpisodesResolvedValue];
}

+ (id)predicateForStoreIdentifier:(id)a3
{
  v3 = [a3 storeIdentifier];
  if ([MTStoreIdentifier isEmptyNumber:v3])
  {
    [MEMORY[0x1E696AE18] falsePredicate];
  }

  else
  {
    +[MTEpisode predicateForEpisodeStoreTrackId:](MTEpisode, "predicateForEpisodeStoreTrackId:", [v3 longLongValue]);
  }
  v4 = ;

  return v4;
}

+ (id)predicateForEpisodeStoreTrackId:(int64_t)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v5 = [v3 predicateWithFormat:@"%K = %@", @"storeTrackId", v4];

  return v5;
}

+ (id)predicateForEpisodeStoreTrackIds:(id)a3
{
  v3 = [a3 allObjects];
  v4 = [v3 mt_filter:&__block_literal_global_12];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K in %@", @"storeTrackId", v4];

  return v5;
}

+ (id)predicateForSeasonNumber:(int64_t)a3
{
  v3 = MEMORY[0x1E696AE18];
  if (a3 <= 0)
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

+ (id)predicateForEpisodesWithSeasonNumbersOnPodcastUuid:(id)a3
{
  v3 = a3;
  v4 = +[MTEpisode predicateForHasSeasonNumber];
  v5 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:v3];

  v6 = [v5 AND:v4];

  return v6;
}

+ (id)predicateForEpisodesWithEpisodeNumbersGreaterThan:(int64_t)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v5 = [v3 predicateWithFormat:@"%K > %@", @"episodeNumber", v4];

  return v5;
}

+ (id)predicateForEpisodesWithSeasonAndEpisodeNumbersGreaterThanOrEqualTo:(int64_t)a3 seasonNumber:(int64_t)a4
{
  v6 = MEMORY[0x1E696AE18];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  v8 = [v6 predicateWithFormat:@"%K == %@", @"seasonNumber", v7];
  v9 = MEMORY[0x1E696AE18];
  v10 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v11 = [v9 predicateWithFormat:@"%K >= %@", @"episodeNumber", v10];
  v12 = [v8 AND:v11];

  v13 = MEMORY[0x1E696AE18];
  v14 = [MEMORY[0x1E696AD98] numberWithLongLong:a4];
  v15 = [v13 predicateWithFormat:@"%K > %@", @"seasonNumber", v14];

  v16 = [v12 OR:v15];

  return v16;
}

+ (id)predicateForSeasonNumberWithNoEpisodeNumber:(int64_t)a3
{
  v3 = MEMORY[0x1E696AE18];
  v4 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
  v5 = [v3 predicateWithFormat:@"%K == %@ && (%K == 0 || %K == NULL)", @"seasonNumber", v4, @"episodeNumber", @"episodeNumber"];

  return v5;
}

+ (id)predicateForBookmarkedEpisodesExcludingUUIDs:(id)a3
{
  v3 = a3;
  v4 = +[MTEpisode predicateForAllBookmarkedEpisodes];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"!(%K IN %@)", @"uuid", v3];

  v6 = [v4 AND:v5];

  return v6;
}

+ (id)predicateForUserSetTopLevelEpisodes
{
  v3 = [a1 predicateForIsTopLevel];
  v4 = [a1 predicateForPodcastIsNotHiddenNotImplicitlyFollowed];
  v5 = [v3 AND:v4];

  return v5;
}

+ (id)predicateForWatchBaseEpisodesIncludingOnlyAudio:(BOOL)a3
{
  v3 = a3;
  v4 = +[MTEpisode predicateForPodcastIsNotHiddenNotImplicitlyFollowed];
  if (v3)
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
  v3 = [a1 isHLSEpisode];
  v4 = [a1 predicateForDownloaded:1 excludeHidden:1];
  v5 = [v3 AND:v4];

  return v5;
}

+ (id)isHLSEpisode
{
  v11[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AB28];
  v4 = [a1 predicateForPriceType:3];
  v5 = [a1 predicateForPriceType:{2, v4}];
  v11[1] = v5;
  v6 = [a1 assetURLIsPackagedMedia];
  v11[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:3];
  v8 = [v3 orPredicateWithSubpredicates:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)_predicateForPriceType:(int64_t)a3 forPriceTypeKey:(id)a4 excluding:(BOOL)a5
{
  v5 = a5;
  v7 = MEMORY[0x1E696AE18];
  v8 = a4;
  v9 = NSPersistentStringForMTEpisodePriceType(a3);
  v10 = [v7 predicateWithFormat:@"(%K != NULL) && (%K = %@)", v8, v8, v9];

  if (v5)
  {
    v11 = [v10 NOT];

    v10 = v11;
  }

  return v10;
}

+ (id)predicateForAutomaticDownloadsOnShow:(id)a3 deletePlayedEpisodes:(BOOL)a4 episodeLimit:(int64_t)a5 serialNextEpisodesSort:(BOOL)a6 includePlayableWithoutAccount:(BOOL)a7
{
  v53 = a7;
  v62[2] = *MEMORY[0x1E69E9840];
  v54 = a3;
  v9 = [MTEpisode predicateForVisuallyPlayed:0];
  v10 = v9;
  if (!a4)
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
  v16 = [MTEpisode predicateForEpisodesDeterminedByLimitSettings:a5];
  v61[0] = v16;
  v17 = [MTEpisode predicateForDownloadLimitForEpisodeLimit:a5];
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
  v38 = [MTEpisode predicateForPlayableEpisode:v53];
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
  v45 = [MTEpisode predicateForAllEpisodesOnPodcastUuid:v54];

  v55[0] = v45;
  v55[1] = v43;
  v55[2] = v34;
  v46 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:3];
  v47 = [v44 andPredicateWithSubpredicates:v46];

  v48 = *MEMORY[0x1E69E9840];

  return v47;
}

+ (id)predicateForPlayableEpisode:(BOOL)a3
{
  v3 = a3;
  v4 = +[MTEpisode predicateForEntitledEpisodes];
  if (v3)
  {
    v5 = +[MTEpisode predicateForEpisodesPlayableWithoutAccount];
    v6 = [v4 AND:v5];

    v4 = v6;
  }

  return v4;
}

+ (id)optimizedPredicateForPlayedEpisodePreservation:(BOOL)a3
{
  v3 = a3;
  v21[2] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E696AB28];
  v6 = [a1 predicateForPlayed:0];
  v21[0] = v6;
  v7 = [a1 predicateForIsBackCatalogItem];
  v21[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v9 = [v5 orPredicateWithSubpredicates:v8];

  if (v3)
  {
    v10 = MEMORY[0x1E696AB28];
    v20[0] = v9;
    v11 = [a1 predicateForPlayed:1];
    v19[0] = v11;
    v12 = [a1 predicateForPlayStateManuallySet:0];
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

+ (id)optimizedPredicatePlaystateForPreservation:(BOOL)a3
{
  if (a3)
  {
    v4 = [a1 predicateForPlayed:0];
    v5 = [a1 predicateForIsBackCatalogItem];
    v6 = [v4 OR:v5];
  }

  else
  {
    v6 = [MEMORY[0x1E696AE18] truePredicate];
  }

  return v6;
}

+ (id)optimizedRemovalPredicateForRecentlyPlayed:(BOOL)a3
{
  v18[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AB28];
  if (a3)
  {
    v5 = [a1 predicateForPlayed:1];
    v18[0] = v5;
    v6 = [a1 predicateForRecentlyPlayed];
    v18[1] = v6;
    v7 = [a1 predicateForPlayStateManuallySet:0];
    v18[2] = v7;
    v8 = [a1 predicateForIsFromiTunesSync:0];
    v18[3] = v8;
    v9 = MEMORY[0x1E695DEC8];
    v10 = v18;
    v11 = 4;
  }

  else
  {
    v5 = [a1 predicateForDownloadBehavior:4];
    v6 = [a1 predicateForPlayed:{1, v5}];
    v17[1] = v6;
    v7 = [a1 predicateForIsBackCatalogItem];
    v8 = [v7 NOT];
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

+ (id)episodicSortDescriptors:(int64_t)a3
{
  v4 = [MTPodcast sortOrderAscForShowType:a3];

  return [a1 sortDescriptorsForPubDateAscending:v4];
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

+ (id)seasonSortDescriptors:(int64_t)a3
{
  v5 = [MTPodcast sortOrderAscForShowType:?];
  if (a3 == 4)
  {
    [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"seasonNumber" ascending:1 reverseNullOrder:1];
  }

  else
  {
    [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"seasonNumber" ascending:0];
  }
  v6 = ;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v6, 0}];
  v8 = [a1 sortDescriptorsForEpisodeNumberAscending:v5];
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
  v2 = self;
  MTEpisode.resolveAvailabilityDate()();
}

- (void)markAsBookmarked
{
  v2 = self;
  if (([(MTEpisode *)v2 isBookmarked]& 1) == 0)
  {
    sub_1D9176CDC();
    [(MTEpisode *)v2 markAsBookmarkedOnTimestamp:?];
  }
}

- (void)markAsBookmarkedOnTimestamp:(double)a3
{
  v5 = self;
  [(MTEpisode *)v5 setIsBookmarked:1];
  [(MTEpisode *)v5 lastBookmarkedDate];
  if (v4 < a3)
  {
    [(MTEpisode *)v5 setLastBookmarkedDate:a3];
  }
}

- (void)markAsUnbookmarked
{
  v2 = self;
  if ([(MTEpisode *)v2 isBookmarked])
  {
    [(MTEpisode *)v2 setIsBookmarked:0];
  }
}

- (NSAttributedString)attributedDescriptionFromHTML
{
  v2 = self;
  v3 = MTEpisode.attributedDescriptionFromHTML.getter();

  return v3;
}

- (void)setAttributedDescriptionFromHTML:(id)a3
{
  v5 = a3;
  v6 = self;
  MTEpisode.attributedDescriptionFromHTML.setter(a3);
}

- (int64_t)bookmarksSyncType
{
  v2 = self;
  v3 = [(MTEpisode *)v2 priceType];
  if (v3)
  {
    v4 = v3;
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