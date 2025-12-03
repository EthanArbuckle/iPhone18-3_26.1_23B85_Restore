@interface PKStoreKitReviewPromptHelper
- (BOOL)_hasBeenPromptedRecently;
- (BOOL)_hasViewedFrontOfCard;
- (void)requestReviewInScene:(id)scene trigger:(unint64_t)trigger;
- (void)requestReviewInSceneIfEligible:(id)eligible trigger:(unint64_t)trigger;
@end

@implementation PKStoreKitReviewPromptHelper

- (void)requestReviewInScene:(id)scene trigger:(unint64_t)trigger
{
  v10 = *MEMORY[0x1E69E9840];
  sceneCopy = scene;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    triggerCopy = trigger;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Requesting Store Kit review for reason: %lu", &v8, 0xCu);
  }

  v7 = [MEMORY[0x1E695DF00] now];
  PKSetLastReviewPromptDate();

  [MEMORY[0x1E697BAA8] requestReviewInScene:sceneCopy];
}

- (void)requestReviewInSceneIfEligible:(id)eligible trigger:(unint64_t)trigger
{
  v10 = *MEMORY[0x1E69E9840];
  eligibleCopy = eligible;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    triggerCopy = trigger;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Requesting Store Kit review if eligible for reason: %lu", &v8, 0xCu);
  }

  if ([(PKStoreKitReviewPromptHelper *)self isEligibleForReviewPrompt])
  {
    [(PKStoreKitReviewPromptHelper *)self requestReviewInScene:eligibleCopy trigger:trigger];
  }
}

- (BOOL)_hasViewedFrontOfCard
{
  v2 = PKLastViewedFrontOfCardDate();
  v3 = v2;
  if (v2)
  {
    [v2 timeIntervalSinceNow];
    v5 = v4 >= -2592000.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_hasBeenPromptedRecently
{
  v2 = PKLastReviewPromptDate();
  v3 = v2;
  if (v2)
  {
    [v2 timeIntervalSinceNow];
    v5 = v4 >= -604800.0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end