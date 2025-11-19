@interface PXPeopleUISettings
+ (PXPeopleUISettings)sharedInstance;
- (void)setDefaultValues;
@end

@implementation PXPeopleUISettings

- (void)setDefaultValues
{
  v3.receiver = self;
  v3.super_class = PXPeopleUISettings;
  [(PTSettings *)&v3 setDefaultValues];
  [(PXPeopleUISettings *)self setAlwaysShowBanner:0];
  [(PXPeopleUISettings *)self setDebugBannerStyle:0];
  [(PXPeopleUISettings *)self setDebugBannerAttribution:0];
  [(PXPeopleUISettings *)self setIgnoreNegativeSuggestionFeedback:0];
  [(PXPeopleUISettings *)self setNegativeFeedbackWaitPeriodMinutes:1440];
  [(PXPeopleUISettings *)self setIgnoreAttributionFiltering:0];
  [(PXPeopleUISettings *)self setMockProcessingUpdates:0];
  [(PXPeopleUISettings *)self setMockEmptyContentUpdates:0];
  [(PXPeopleUISettings *)self setAlwaysShowMe:0];
  [(PXPeopleUISettings *)self setShowUUIDIfNoName:0];
  [(PXPeopleUISettings *)self setEnableReviewPhotosDemoMode:0];
  [(PXPeopleUISettings *)self setUseReviewPhotosMockDataSource:0];
  [(PXPeopleUISettings *)self setShowReviewPhotosObjectType:0];
  [(PXPeopleUISettings *)self setForceReviewMorePhotosInterimLoading:0];
  [(PXPeopleUISettings *)self setDisplayReviewMorePhotosSuggestionType:0];
  [(PXPeopleUISettings *)self setDisplayReviewMorePhotosDate:0];
  [(PXPeopleUISettings *)self setAlwaysShowBootstrap:0];
  [(PXPeopleUISettings *)self setEnableBootstrapDemoMode:0];
  [(PXPeopleUISettings *)self setUseBootstrapMockDataSource:0];
  [(PXPeopleUISettings *)self setDisplayBootstrapSuggestionType:0];
}

+ (PXPeopleUISettings)sharedInstance
{
  if (sharedInstance_onceToken_196532 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_196532, &__block_literal_global_196533);
  }

  v3 = sharedInstance_sharedInstance_196534;

  return v3;
}

void __36__PXPeopleUISettings_sharedInstance__block_invoke()
{
  v2 = +[PXRootSettings sharedInstance];
  v0 = [v2 peopleUISettings];
  v1 = sharedInstance_sharedInstance_196534;
  sharedInstance_sharedInstance_196534 = v0;
}

@end