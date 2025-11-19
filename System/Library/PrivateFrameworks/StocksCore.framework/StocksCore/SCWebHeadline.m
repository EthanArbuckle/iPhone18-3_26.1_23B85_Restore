@interface SCWebHeadline
- (BOOL)canBePurchased;
- (BOOL)disablePrerollAds;
- (BOOL)disableTapToChannel;
- (BOOL)hasGlobalUserFeedback;
- (BOOL)hasVideoStillImage;
- (BOOL)isBlockedExplicitContent;
- (BOOL)isBoundToContext;
- (BOOL)isCoread;
- (BOOL)isDeleted;
- (BOOL)isDraft;
- (BOOL)isExplicitContent;
- (BOOL)isFeatureCandidate;
- (BOOL)isFromBlockedStorefront;
- (BOOL)isFullTrackAvailableToAll;
- (BOOL)isHiddenFromAutoFavorites;
- (BOOL)isHiddenFromFeeds;
- (BOOL)isSponsored;
- (BOOL)isTopStory;
- (BOOL)needsRapidUpdates;
- (BOOL)showMinimalChrome;
- (BOOL)showPublisherLogo;
- (BOOL)usesImageOnTopLayout;
- (CGRect)thumbnailFocalFrame;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)globalCohorts;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)publisherCohorts;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLConversionStats)globalConversionStats;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLConversionStats)publisherConversionStats;
- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLTagMetadata)publisherTagMetadata;
- (FCAssetHandle)videoStillImage;
- (FCCoverArt)coverArt;
- (FCNativeAdProviding)associatedAd;
- (NSArray)allowedStorefrontIDs;
- (NSArray)blockedStorefrontIDs;
- (NSArray)iAdCategories;
- (NSArray)iAdKeywords;
- (NSArray)iAdSectionIDs;
- (NSArray)moreFromPublisherArticleIDs;
- (NSArray)narrators;
- (NSArray)publisherSpecifiedArticleIDs;
- (NSArray)relatedArticleIDs;
- (NSArray)sportsEventIDs;
- (NSArray)surfacedByArticleListIDs;
- (NSArray)topicIDs;
- (NSArray)topics;
- (NSDate)displayDate;
- (NSDate)lastFetchedDate;
- (NSDate)lastModifiedDate;
- (NSString)feedID;
- (NSString)localDraftPath;
- (NSString)nativeAdCampaignData;
- (NSString)primaryAudience;
- (NSString)publisherID;
- (NSString)referencedArticleID;
- (NSString)sourceChannelID;
- (NSString)sourceFeedID;
- (NSString)sponsoredBy;
- (NSString)surfacedByBinID;
- (NSString)surfacedByChannelID;
- (NSString)surfacedBySectionID;
- (NSString)surfacedByTopicID;
- (NSString)titleCompact;
- (NSString)videoCallToActionTitle;
- (NSString)videoType;
- (NSURL)videoCallToActionURL;
- (NSURL)videoURL;
- (SCWebHeadline)initWithURL:(id)a3 title:(id)a4 shortExcerpt:(id)a5 publishDate:(id)a6 sourceName:(id)a7;
- (double)globalScore;
- (double)globalUserFeedback;
- (double)tileProminenceScore;
- (double)videoDuration;
- (id)articleRecirculationConfigJSON;
- (id)endOfArticleTopicIDs;
- (id)surfacedByTagIDs;
- (int64_t)backendArticleVersion;
- (int64_t)minimumNewsVersion;
- (unint64_t)articleContentType;
- (unint64_t)feedHalfLifeMilliseconds;
- (unint64_t)feedOrder;
- (unint64_t)halfLife;
- (unint64_t)order;
- (unint64_t)publishDateMilliseconds;
- (unint64_t)topStoryType;
- (void)addSurfacedByArticleListID:(id)a3;
- (void)allowedStorefrontIDs;
- (void)applyConditionalScore:(double)a3;
- (void)articleContentType;
- (void)articleRecirculationConfigJSON;
- (void)associatedAd;
- (void)backendArticleVersion;
- (void)blockedStorefrontIDs;
- (void)canBePurchased;
- (void)coverArt;
- (void)disablePrerollAds;
- (void)disableTapToChannel;
- (void)displayDate;
- (void)endOfArticleTopicIDs;
- (void)enumerateTopicConversionStatsWithBlock:(id)a3;
- (void)feedHalfLifeMilliseconds;
- (void)feedID;
- (void)feedOrder;
- (void)globalCohorts;
- (void)globalConversionStats;
- (void)globalScore;
- (void)globalUserFeedback;
- (void)halfLife;
- (void)hasGlobalUserFeedback;
- (void)hasVideoStillImage;
- (void)iAdCategories;
- (void)iAdKeywords;
- (void)iAdSectionIDs;
- (void)isBlockedExplicitContent;
- (void)isBoundToContext;
- (void)isCoread;
- (void)isDeleted;
- (void)isDraft;
- (void)isExplicitContent;
- (void)isFeatureCandidate;
- (void)isFromBlockedStorefront;
- (void)isFullTrackAvailableToAll;
- (void)isHiddenFromAutoFavorites;
- (void)isHiddenFromFeeds;
- (void)isSponsored;
- (void)isTopStory;
- (void)lastFetchedDate;
- (void)lastModifiedDate;
- (void)localDraftPath;
- (void)markAsEvergreen;
- (void)minimumNewsVersion;
- (void)moreFromPublisherArticleIDs;
- (void)narrators;
- (void)nativeAdCampaignData;
- (void)needsRapidUpdates;
- (void)order;
- (void)primaryAudience;
- (void)publishDateMilliseconds;
- (void)publisherCohorts;
- (void)publisherConversionStats;
- (void)publisherID;
- (void)publisherSpecifiedArticleIDs;
- (void)publisherTagMetadata;
- (void)referencedArticleID;
- (void)relatedArticleIDs;
- (void)showMinimalChrome;
- (void)showPublisherLogo;
- (void)sourceChannelID;
- (void)sourceFeedID;
- (void)sponsoredBy;
- (void)sportsEventIDs;
- (void)surfacedByArticleListIDs;
- (void)surfacedByBinID;
- (void)surfacedByChannelID;
- (void)surfacedBySectionID;
- (void)surfacedByTagIDs;
- (void)surfacedByTopicID;
- (void)thumbnailFocalFrame;
- (void)tileProminenceScore;
- (void)titleCompact;
- (void)topStoryType;
- (void)topicIDs;
- (void)topics;
- (void)usesImageOnTopLayout;
- (void)videoCallToActionTitle;
- (void)videoCallToActionURL;
- (void)videoDuration;
- (void)videoStillImage;
- (void)videoType;
- (void)videoURL;
@end

@implementation SCWebHeadline

- (SCWebHeadline)initWithURL:(id)a3 title:(id)a4 shortExcerpt:(id)a5 publishDate:(id)a6 sourceName:(id)a7
{
  v13 = a3;
  v21 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = SCWebHeadline;
  v17 = [(SCWebHeadline *)&v22 init];
  if (v17)
  {
    v18 = [v13 absoluteString];
    identifier = v17->_identifier;
    v17->_identifier = v18;

    objc_storeStrong(&v17->_contentURL, a3);
    objc_storeStrong(&v17->_title, a4);
    objc_storeStrong(&v17->_shortExcerpt, a5);
    objc_storeStrong(&v17->_publishDate, a6);
    objc_storeStrong(&v17->_sourceName, a7);
  }

  return v17;
}

- (void)enumerateTopicConversionStatsWithBlock:(id)a3
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline enumerateTopicConversionStatsWithBlock:];
  }
}

- (void)addSurfacedByArticleListID:(id)a3
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline addSurfacedByArticleListID:];
  }
}

- (void)applyConditionalScore:(double)a3
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline applyConditionalScore:];
  }
}

- (void)markAsEvergreen
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s method"];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "[SCWebHeadline markAsEvergreen]", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (NSDate)displayDate
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline displayDate];
  }

  return 0;
}

- (BOOL)usesImageOnTopLayout
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline usesImageOnTopLayout];
  }

  return 0;
}

- (unint64_t)topStoryType
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline topStoryType];
  }

  return 0;
}

- (BOOL)isTopStory
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isTopStory];
  }

  return 0;
}

- (double)tileProminenceScore
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline tileProminenceScore];
  }

  return 0.0;
}

- (NSString)surfacedByBinID
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline surfacedByBinID];
  }

  return 0;
}

- (NSString)surfacedByTopicID
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline surfacedByTopicID];
  }

  return 0;
}

- (NSString)surfacedByChannelID
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline surfacedByChannelID];
  }

  return 0;
}

- (NSString)surfacedBySectionID
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline surfacedBySectionID];
  }

  return 0;
}

- (id)surfacedByTagIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline surfacedByTagIDs];
  }

  return 0;
}

- (NSString)referencedArticleID
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline referencedArticleID];
  }

  return 0;
}

- (NSString)primaryAudience
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline primaryAudience];
  }

  return 0;
}

- (NSString)titleCompact
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline titleCompact];
  }

  return 0;
}

- (int64_t)backendArticleVersion
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline backendArticleVersion];
  }

  return 0;
}

- (CGRect)thumbnailFocalFrame
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline thumbnailFocalFrame];
  }

  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (NSDate)lastModifiedDate
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline lastModifiedDate];
  }

  return 0;
}

- (NSDate)lastFetchedDate
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline lastFetchedDate];
  }

  return 0;
}

- (NSArray)topics
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline topics];
  }

  return 0;
}

- (NSArray)topicIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline topicIDs];
  }

  return 0;
}

- (id)endOfArticleTopicIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline endOfArticleTopicIDs];
  }

  return 0;
}

- (NSURL)videoURL
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline videoURL];
  }

  return 0;
}

- (double)videoDuration
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline videoDuration];
  }

  return 0.0;
}

- (BOOL)isFeatureCandidate
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isFeatureCandidate];
  }

  return 0;
}

- (BOOL)isSponsored
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isSponsored];
  }

  return 0;
}

- (NSString)sponsoredBy
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline sponsoredBy];
  }

  return 0;
}

- (NSArray)iAdCategories
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline iAdCategories];
  }

  return 0;
}

- (NSArray)iAdKeywords
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline iAdKeywords];
  }

  return 0;
}

- (NSArray)iAdSectionIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline iAdSectionIDs];
  }

  return 0;
}

- (NSArray)blockedStorefrontIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline blockedStorefrontIDs];
  }

  return 0;
}

- (NSArray)allowedStorefrontIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline allowedStorefrontIDs];
  }

  return 0;
}

- (BOOL)isDeleted
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isDeleted];
  }

  return 0;
}

- (BOOL)isDraft
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isDraft];
  }

  return 0;
}

- (NSString)localDraftPath
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline localDraftPath];
  }

  return 0;
}

- (NSArray)relatedArticleIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline relatedArticleIDs];
  }

  return 0;
}

- (NSArray)moreFromPublisherArticleIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline moreFromPublisherArticleIDs];
  }

  return 0;
}

- (int64_t)minimumNewsVersion
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline minimumNewsVersion];
  }

  return 0;
}

- (FCCoverArt)coverArt
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline coverArt];
  }

  return 0;
}

- (NSString)videoCallToActionTitle
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline videoCallToActionTitle];
  }

  return 0;
}

- (NSURL)videoCallToActionURL
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline videoCallToActionURL];
  }

  return 0;
}

- (BOOL)needsRapidUpdates
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline needsRapidUpdates];
  }

  return 0;
}

- (BOOL)showMinimalChrome
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline showMinimalChrome];
  }

  return 0;
}

- (BOOL)isBoundToContext
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isBoundToContext];
  }

  return 0;
}

- (BOOL)isHiddenFromFeeds
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isHiddenFromFeeds];
  }

  return 0;
}

- (NSString)sourceFeedID
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline sourceFeedID];
  }

  return 0;
}

- (NSString)publisherID
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline publisherID];
  }

  return 0;
}

- (double)globalUserFeedback
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline globalUserFeedback];
  }

  return 0.0;
}

- (BOOL)hasGlobalUserFeedback
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline hasGlobalUserFeedback];
  }

  return 0;
}

- (unint64_t)articleContentType
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline articleContentType];
  }

  return 0;
}

- (unint64_t)halfLife
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline halfLife];
  }

  return 0;
}

- (BOOL)isBlockedExplicitContent
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isBlockedExplicitContent];
  }

  return 0;
}

- (unint64_t)feedOrder
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline feedOrder];
  }

  return 0;
}

- (BOOL)isFromBlockedStorefront
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isFromBlockedStorefront];
  }

  return 0;
}

- (BOOL)isExplicitContent
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isExplicitContent];
  }

  return 0;
}

- (NSString)feedID
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline feedID];
  }

  return 0;
}

- (unint64_t)order
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline order];
  }

  return 0;
}

- (NSString)sourceChannelID
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline sourceChannelID];
  }

  return 0;
}

- (unint64_t)publishDateMilliseconds
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline publishDateMilliseconds];
  }

  return 0;
}

- (unint64_t)feedHalfLifeMilliseconds
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline feedHalfLifeMilliseconds];
  }

  return 0;
}

- (double)globalScore
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline globalScore];
  }

  return 0.0;
}

- (BOOL)canBePurchased
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline canBePurchased];
  }

  return 0;
}

- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)globalCohorts
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline globalCohorts];
  }

  return 0;
}

- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLCohortList)publisherCohorts
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline publisherCohorts];
  }

  return 0;
}

- (id)articleRecirculationConfigJSON
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline articleRecirculationConfigJSON];
  }

  return 0;
}

- (NSArray)publisherSpecifiedArticleIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline publisherSpecifiedArticleIDs];
  }

  return 0;
}

- (FCNativeAdProviding)associatedAd
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline associatedAd];
  }

  return 0;
}

- (BOOL)isHiddenFromAutoFavorites
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isHiddenFromAutoFavorites];
  }

  return 0;
}

- (BOOL)showPublisherLogo
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline showPublisherLogo];
  }

  return 0;
}

- (BOOL)isFullTrackAvailableToAll
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isFullTrackAvailableToAll];
  }

  return 0;
}

- (NSArray)narrators
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline narrators];
  }

  return 0;
}

- (BOOL)disablePrerollAds
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline disablePrerollAds];
  }

  return 0;
}

- (BOOL)disableTapToChannel
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline disableTapToChannel];
  }

  return 0;
}

- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLConversionStats)globalConversionStats
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline globalConversionStats];
  }

  return 0;
}

- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLConversionStats)publisherConversionStats
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline publisherConversionStats];
  }

  return 0;
}

- (COMAPPLEFELDSPARPROTOCOLLIVERPOOLTagMetadata)publisherTagMetadata
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline publisherTagMetadata];
  }

  return 0;
}

- (BOOL)hasVideoStillImage
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline hasVideoStillImage];
  }

  return 0;
}

- (FCAssetHandle)videoStillImage
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline videoStillImage];
  }

  return 0;
}

- (NSString)videoType
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline videoType];
  }

  return 0;
}

- (BOOL)isCoread
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline isCoread];
  }

  return 0;
}

- (NSString)nativeAdCampaignData
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline nativeAdCampaignData];
  }

  return 0;
}

- (NSArray)sportsEventIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline sportsEventIDs];
  }

  return 0;
}

- (NSArray)surfacedByArticleListIDs
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [SCWebHeadline surfacedByArticleListIDs];
  }

  return 0;
}

- (void)enumerateTopicConversionStatsWithBlock:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s method"];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "[SCWebHeadline enumerateTopicConversionStatsWithBlock:]", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)addSurfacedByArticleListID:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s method"];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "[SCWebHeadline addSurfacedByArticleListID:]", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)applyConditionalScore:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s method"];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "[SCWebHeadline applyConditionalScore:]", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)displayDate
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "displayDate", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)usesImageOnTopLayout
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "usesImageOnTopLayout", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)topStoryType
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "topStoryType", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)isTopStory
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "isTopStory", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)tileProminenceScore
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "tileProminenceScore", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)surfacedByBinID
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "surfacedByBinID", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)surfacedByTopicID
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "surfacedByTopicID", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)surfacedByChannelID
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "surfacedByChannelID", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)surfacedBySectionID
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "surfacedBySectionID", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)surfacedByTagIDs
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "surfacedByTagIDs", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)referencedArticleID
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "referencedArticleID", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)primaryAudience
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "primaryAudience", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)titleCompact
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "titleCompact", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)backendArticleVersion
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "backendArticleVersion", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)thumbnailFocalFrame
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "thumbnailFocalFrame", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)lastModifiedDate
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "lastModifiedDate", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)lastFetchedDate
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "lastFetchedDate", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)topics
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "topics", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)topicIDs
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "topicIDs", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)endOfArticleTopicIDs
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "endOfArticleTopicIDs", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)videoURL
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "videoURL", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)videoDuration
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "videoDuration", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)isFeatureCandidate
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "isFeatureCandidate", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)isSponsored
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "isSponsored", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)sponsoredBy
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sponsoredBy", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)iAdCategories
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "iAdCategories", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)iAdKeywords
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "iAdKeywords", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)iAdSectionIDs
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "iAdSectionIDs", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)blockedStorefrontIDs
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "blockedStorefrontIDs", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)allowedStorefrontIDs
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "allowedStorefrontIDs", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)isDeleted
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "isDeleted", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)isDraft
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "isDraft", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)localDraftPath
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "localDraftPath", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)relatedArticleIDs
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "relatedArticleIDs", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)moreFromPublisherArticleIDs
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "moreFromPublisherArticleIDs", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)minimumNewsVersion
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "minimumNewsVersion", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)coverArt
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "coverArt", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)videoCallToActionTitle
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "videoCallToActionTitle", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)videoCallToActionURL
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "videoCallToActionURL", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)needsRapidUpdates
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "needsRapidUpdates", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)showMinimalChrome
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "showMinimalChrome", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)isBoundToContext
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "isBoundToContext", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)isHiddenFromFeeds
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "isHiddenFromFeeds", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)sourceFeedID
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sourceFeedID", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)publisherID
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "publisherID", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)globalUserFeedback
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "globalUserFeedback", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)hasGlobalUserFeedback
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "hasGlobalUserFeedback", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)articleContentType
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "articleContentType", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)halfLife
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "halfLife", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)isBlockedExplicitContent
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "isBlockedExplicitContent", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)feedOrder
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "feedOrder", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)isFromBlockedStorefront
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "isFromBlockedStorefront", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)isExplicitContent
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "isExplicitContent", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)feedID
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "feedID", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)order
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "order", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)sourceChannelID
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sourceChannelID", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)publishDateMilliseconds
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "publishDateMilliseconds", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)feedHalfLifeMilliseconds
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "feedHalfLifeMilliseconds", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)globalScore
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "globalScore", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)canBePurchased
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "canBePurchased", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)globalCohorts
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "globalCohorts", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)publisherCohorts
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "publisherCohorts", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)articleRecirculationConfigJSON
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "articleRecirculationConfigJSON", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)publisherSpecifiedArticleIDs
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "publisherSpecifiedArticleIDs", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)associatedAd
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "associatedAd", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)isHiddenFromAutoFavorites
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "isHiddenFromAutoFavorites", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)showPublisherLogo
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "showPublisherLogo", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)isFullTrackAvailableToAll
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "isFullTrackAvailableToAll", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)narrators
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "narrators", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)disablePrerollAds
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "disablePrerollAds", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)disableTapToChannel
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "disableTapToChannel", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)globalConversionStats
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "globalConversionStats", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)publisherConversionStats
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "publisherConversionStats", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)publisherTagMetadata
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "publisherTagMetadata", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)hasVideoStillImage
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "hasVideoStillImage", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)videoStillImage
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "videoStillImage", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)videoType
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "videoType", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)isCoread
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "isCoread", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)nativeAdCampaignData
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "nativeAdCampaignData", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)sportsEventIDs
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sportsEventIDs", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)surfacedByArticleListIDs
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"SCWebHeadline does not support the %s property"];
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3(&dword_1DAA3F000, MEMORY[0x1E69E9C10], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "surfacedByArticleListIDs", v7, 2u);

  v6 = *MEMORY[0x1E69E9840];
}

@end