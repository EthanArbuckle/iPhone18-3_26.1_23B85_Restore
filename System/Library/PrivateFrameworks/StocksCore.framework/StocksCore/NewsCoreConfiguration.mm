@interface NewsCoreConfiguration
- (BOOL)corryBarHideDiscoverMoreInterstitialForNonOnboardedUsers;
- (BOOL)disableThumbnailsForArticleRecirculation;
- (BOOL)terminateAppOnBackgroundAfterJoiningOrLeavingExperiment;
- (FCEmbedProxyConfiguration)embedProxyConfiguration;
- (FCForYouGroupsConfiguration)forYouGroupsConfiguration;
- (FCIAdConfiguration)iAdConfig;
- (FCNewsPersonalizationConfiguration)newsPersonalizationConfiguration;
- (FCNotificationsConfiguration)notificationsConfig;
- (FCPrefetchConfiguration)prefetchConfig;
- (FCPuzzlesConfiguration)puzzlesConfig;
- (FCTopStoriesConfiguration)topStoriesConfig;
- (FCVideoGroupsConfig)forYouVideoGroupsConfig;
- (NSArray)deprecatedSportsTopicTagIds;
- (NSArray)externalAnalyticsConfigurations;
- (NSArray)hiddenFeedIDs;
- (NSArray)mediaSharingBlacklistedChannelIDs;
- (NSArray)onboardingFeedIDs;
- (NSArray)presubscribedFeedIDs;
- (NSArray)topStoriesPublishDates;
- (NSDictionary)articleConfig;
- (NSDictionary)endpointConfigsByEnvironment;
- (NSNumber)currentTreatment;
- (NSString)aiAttributionArticleString;
- (NSString)anfRenderingConfiguration;
- (NSString)articleRecirculationComponentPlacementConfigJSON;
- (NSString)articleRecirculationConfigJSON;
- (NSString)breakingNewsChannelID;
- (NSString)configurableOffersMappingResourceId;
- (NSString)editorialChannelID;
- (NSString)editorialGemsSectionID;
- (NSString)embedConfigurationAssetID;
- (NSString)endOfArticleFeedConfigurationResourceId;
- (NSString)experimentalizableFieldPostfix;
- (NSString)exploreArticleID;
- (NSString)featuredStoriesTagID;
- (NSString)forYouRecordConfigID;
- (NSString)myMagazinesTagID;
- (NSString)personalizationBundleIdMappingResourceId;
- (NSString)personalizationFavorabilityResourceId;
- (NSString)personalizationUrlMappingResourceId;
- (NSString)personalizationWhitelistResourceId;
- (NSString)savedStoriesTagID;
- (NSString)shortcutsTagID;
- (NSString)sportsTopStoriesTagID;
- (NSString)trendingTagID;
- (NSString)userConcernConfigurationResourceId;
- (NSString)webEmbedContentBlockerOverrides;
- (NSString)webEmbedContentBlockers;
- (NSString)widgetConfigID;
- (NTPBDiscoverMoreVideosInfo)shareDiscoverMoreVideosInfo;
- (_TtC10StocksCore21NewsCoreConfiguration)init;
- (double)articleDiversificationSimilarityExpectationEnd;
- (double)articleDiversificationSimilarityExpectationStart;
- (double)articleDiversificationUniquePublisherExpectationSlope;
- (double)articleDiversificationUniquePublisherExpectationYIntercept;
- (double)endOfArticleMinPaidHeadlineRatio;
- (double)interstitialAdLoadDelay;
- (double)minimumTrendingUnseenRatio;
- (id)analyticsEnvelopeContentTypeConfigsForEnvironment:(unint64_t)a3;
- (id)copyWithZone:(void *)a3;
- (int64_t)appConfigRefreshRate;
- (int64_t)articleRecirculationPopularFeedQueryTimeRange;
- (int64_t)autoScrollToTopFeedTimeout;
- (int64_t)corryBarMaxArticleCountForArticleList;
- (int64_t)corryBarMaxArticleCountForSingleArticle;
- (int64_t)endOfArticleExpireArticlesAfter;
- (int64_t)endOfArticleMaxInaccessiblePaidArticleCount;
- (int64_t)expirePinnedArticlesAfter;
- (int64_t)expiredPaidSubscriptionGroupCutoffTime;
- (int64_t)maximumNumberOfExpiredPaidSubscriptionGroups;
- (int64_t)maximumPaidSubscriptionGroupSizeiPad;
- (int64_t)maximumPaidSubscriptionGroupSizeiPhone;
- (int64_t)maximumTimesHeadlineInPaidSubscriptionGroup;
- (int64_t)minimumDistanceBetweenImageOnTopTiles;
- (int64_t)minimumDurationBetweenForYouGroupsWeekday;
- (int64_t)minimumDurationBetweenForYouGroupsWeekend;
- (int64_t)minimumDurationBetweenTrendingGroupsWeekday;
- (int64_t)minimumDurationBetweenTrendingGroupsWeekend;
- (int64_t)newFavoriteNotificationAlertsFrequency;
- (int64_t)notificationArticleCacheTimeout;
- (int64_t)notificationArticleWithRapidUpdatesCacheTimeout;
- (int64_t)notificationEnabledChannelsRefreshFrequency;
- (int64_t)optionalTopStoriesRefreshRate;
- (int64_t)stateRestorationAllowedTimeWindow;
- (int64_t)subscriptionsGracePeriodForTokenVerificationSeconds;
- (int64_t)subscriptionsPlacardGlobalMaximumPerDay;
- (int64_t)subscriptionsPlacardPublisherFrequencyInSeconds;
- (int64_t)trendingTopicsRefreshRate;
- (int64_t)widgetMinimumArticleExposureDurationToBePreseenInMilliseconds;
- (unint64_t)trendingStyle;
- (unsigned)widgetMinimumNumberOfTimesPreseenToBeSeen;
@end

@implementation NewsCoreConfiguration

- (NSDictionary)endpointConfigsByEnvironment
{
  v2 = self;
  NewsCoreConfiguration.endpointConfigsByEnvironment.getter();

  v3 = sub_1DACB9114();

  return v3;
}

- (NSString)experimentalizableFieldPostfix
{
  if (*(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_experimentalizableFieldPostfix + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_experimentalizableFieldPostfix);
    v3 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_experimentalizableFieldPostfix + 8);
    sub_1DACB71E4();
    v4 = sub_1DACB92F4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSNumber)currentTreatment
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];

  return v2;
}

- (FCPuzzlesConfiguration)puzzlesConfig
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69B5550]) init];

  return v2;
}

- (_TtC10StocksCore21NewsCoreConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)forYouRecordConfigID
{
  v2 = sub_1DACB92F4();

  return v2;
}

- (FCTopStoriesConfiguration)topStoriesConfig
{
  v2 = self;
  v3 = NewsCoreConfiguration.topStoriesConfig.getter();

  return v3;
}

- (id)analyticsEnvelopeContentTypeConfigsForEnvironment:(unint64_t)a3
{
  v4 = self;
  NewsCoreConfiguration.analyticsEnvelopeContentTypeConfigs(for:)(a3);

  sub_1DAA420F4(0, qword_1EE123DC0, 0x1E696AD98);
  sub_1DAA420F4(0, &qword_1EE126620, 0x1E69B6CE0);
  sub_1DAB685EC();
  v5 = sub_1DACB9114();

  return v5;
}

- (double)endOfArticleMinPaidHeadlineRatio
{
  result = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3864);
  if (*(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3872))
  {
    return 0.25;
  }

  return result;
}

- (int64_t)endOfArticleMaxInaccessiblePaidArticleCount
{
  if (*(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3888))
  {
    return 2;
  }

  else
  {
    return *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3880);
  }
}

- (int64_t)endOfArticleExpireArticlesAfter
{
  if (*(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3904))
  {
    return 2592000;
  }

  else
  {
    return *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3896);
  }
}

- (double)interstitialAdLoadDelay
{
  result = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3912);
  if (*(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3920))
  {
    return 1.0;
  }

  return result;
}

- (FCNotificationsConfiguration)notificationsConfig
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69B5400]) init];

  return v2;
}

- (FCEmbedProxyConfiguration)embedProxyConfiguration
{
  v2 = self;
  v3 = NewsCoreConfiguration.embedProxyConfiguration.getter();

  return v3;
}

- (int64_t)appConfigRefreshRate
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)trendingTopicsRefreshRate
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)notificationEnabledChannelsRefreshFrequency
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSArray)presubscribedFeedIDs
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSString)breakingNewsChannelID
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSString)trendingTagID
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSString)featuredStoriesTagID
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSString)savedStoriesTagID
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSString)myMagazinesTagID
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSString)sportsTopStoriesTagID
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSString)shortcutsTagID
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSString)editorialGemsSectionID
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSString)editorialChannelID
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSArray)hiddenFeedIDs
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (FCForYouGroupsConfiguration)forYouGroupsConfiguration
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)minimumDurationBetweenForYouGroupsWeekday
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)minimumDurationBetweenForYouGroupsWeekend
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)minimumDurationBetweenTrendingGroupsWeekday
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)minimumDurationBetweenTrendingGroupsWeekend
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)expiredPaidSubscriptionGroupCutoffTime
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)maximumNumberOfExpiredPaidSubscriptionGroups
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)maximumTimesHeadlineInPaidSubscriptionGroup
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)maximumPaidSubscriptionGroupSizeiPad
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)maximumPaidSubscriptionGroupSizeiPhone
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)optionalTopStoriesRefreshRate
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (double)minimumTrendingUnseenRatio
{
  sub_1DACB9E44();
  __break(1u);
  return result;
}

- (FCVideoGroupsConfig)forYouVideoGroupsConfig
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)minimumDistanceBetweenImageOnTopTiles
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)expirePinnedArticlesAfter
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  NewsCoreConfiguration.copy(with:)(v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v4 = sub_1DACBA154();
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

- (NSString)embedConfigurationAssetID
{
  v2 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration);
  v3 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 8);
  sub_1DACB71E4();
  v4 = sub_1DACB92F4();

  return v4;
}

- (NSArray)mediaSharingBlacklistedChannelIDs
{
  v2 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 16);
  sub_1DACB71E4();
  v3 = sub_1DACB9634();

  return v3;
}

- (NSString)webEmbedContentBlockers
{
  v2 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 24);
  v3 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 32);
  sub_1DACB71E4();
  v4 = sub_1DACB92F4();

  return v4;
}

- (NSString)webEmbedContentBlockerOverrides
{
  v2 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 40);
  v3 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 48);
  sub_1DACB71E4();
  v4 = sub_1DACB92F4();

  return v4;
}

- (NSString)anfRenderingConfiguration
{
  v2 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 56);
  v3 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_newsUIConfiguration + 64);
  sub_1DACB71E4();
  v4 = sub_1DACB92F4();

  return v4;
}

- (NSString)endOfArticleFeedConfigurationResourceId
{
  v2 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 1328);
  v3 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 1336);
  sub_1DACB71E4();
  v4 = sub_1DACB92F4();

  return v4;
}

- (NSString)userConcernConfigurationResourceId
{
  if (*(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4120))
  {
    v2 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4112);
    v3 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4120);
    sub_1DACB71E4();
    v4 = sub_1DACB92F4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)configurableOffersMappingResourceId
{
  if (*(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4184))
  {
    v2 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4176);
  }

  sub_1DACB71E4();
  v3 = sub_1DACB92F4();

  return v3;
}

- (NSString)aiAttributionArticleString
{
  if (*(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4136))
  {
    v2 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4128);
    v3 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 4136);
    sub_1DACB71E4();
    v4 = sub_1DACB92F4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (FCNewsPersonalizationConfiguration)newsPersonalizationConfiguration
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69B53D8]) init];

  return v2;
}

- (int64_t)subscriptionsPlacardGlobalMaximumPerDay
{
  result = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3968);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

- (int64_t)subscriptionsPlacardPublisherFrequencyInSeconds
{
  v2 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3960);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    return v2;
  }

LABEL_7:
  __break(1u);
  return self;
}

- (int64_t)subscriptionsGracePeriodForTokenVerificationSeconds
{
  v2 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 3976);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    return v2;
  }

LABEL_7:
  __break(1u);
  return self;
}

- (FCIAdConfiguration)iAdConfig
{
  sub_1DAA420F4(0, &qword_1EE11D0A0, 0x1E69B5340);
  v5[0] = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 1568);
  v6 = *(self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration + 1576);
  sub_1DAAF671C(v5);

  return v3;
}

- (NSArray)deprecatedSportsTopicTagIds
{
  v2 = sub_1DACB9634();

  return v2;
}

- (NSDictionary)articleConfig
{
  v3 = self + OBJC_IVAR____TtC10StocksCore21NewsCoreConfiguration_appConfiguration;
  v4 = type metadata accessor for AppConfiguration(0);
  if (*&v3[*(v4 + 544)])
  {
    v10 = *&v3[*(v4 + 544)];
    sub_1DAA7C3AC(0, &qword_1EE123FE8, MEMORY[0x1E69D6A58], MEMORY[0x1E69E5E28]);
    sub_1DAB68654();
    v5 = self;
    v6 = sub_1DACB91D4();
    if (v6)
    {
      sub_1DAA55EB0(v6);

      goto LABEL_6;
    }
  }

  else
  {
    v7 = self;
  }

  sub_1DAB68448(MEMORY[0x1E69E7CC0]);
LABEL_6:

  v8 = sub_1DACB9114();

  return v8;
}

- (NSArray)onboardingFeedIDs
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)autoScrollToTopFeedTimeout
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (FCPrefetchConfiguration)prefetchConfig
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)newFavoriteNotificationAlertsFrequency
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)notificationArticleCacheTimeout
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)notificationArticleWithRapidUpdatesCacheTimeout
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSString)widgetConfigID
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)widgetMinimumArticleExposureDurationToBePreseenInMilliseconds
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (unsigned)widgetMinimumNumberOfTimesPreseenToBeSeen
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (double)articleDiversificationSimilarityExpectationStart
{
  sub_1DACB9E44();
  __break(1u);
  return result;
}

- (double)articleDiversificationSimilarityExpectationEnd
{
  sub_1DACB9E44();
  __break(1u);
  return result;
}

- (double)articleDiversificationUniquePublisherExpectationSlope
{
  sub_1DACB9E44();
  __break(1u);
  return result;
}

- (double)articleDiversificationUniquePublisherExpectationYIntercept
{
  sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSString)personalizationBundleIdMappingResourceId
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSString)personalizationUrlMappingResourceId
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSString)personalizationWhitelistResourceId
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSString)personalizationFavorabilityResourceId
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)corryBarMaxArticleCountForArticleList
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)corryBarMaxArticleCountForSingleArticle
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (BOOL)corryBarHideDiscoverMoreInterstitialForNonOnboardedUsers
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSString)exploreArticleID
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSArray)externalAnalyticsConfigurations
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)stateRestorationAllowedTimeWindow
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (BOOL)terminateAppOnBackgroundAfterJoiningOrLeavingExperiment
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSArray)topStoriesPublishDates
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSString)articleRecirculationConfigJSON
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (unint64_t)trendingStyle
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NTPBDiscoverMoreVideosInfo)shareDiscoverMoreVideosInfo
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (NSString)articleRecirculationComponentPlacementConfigJSON
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (int64_t)articleRecirculationPopularFeedQueryTimeRange
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

- (BOOL)disableThumbnailsForArticleRecirculation
{
  result = sub_1DACB9E44();
  __break(1u);
  return result;
}

@end