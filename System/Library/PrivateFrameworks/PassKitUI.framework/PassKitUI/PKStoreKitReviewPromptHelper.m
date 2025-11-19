@interface PKStoreKitReviewPromptHelper
- (BOOL)_hasBeenPromptedRecently;
- (BOOL)_hasViewedFrontOfCard;
- (void)requestReviewInScene:(id)a3 trigger:(unint64_t)a4;
- (void)requestReviewInSceneIfEligible:(id)a3 trigger:(unint64_t)a4;
@end

@implementation PKStoreKitReviewPromptHelper

- (void)requestReviewInScene:(id)a3 trigger:(unint64_t)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a4;
    _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Requesting Store Kit review for reason: %lu", &v8, 0xCu);
  }

  v7 = [MEMORY[0x1E695DF00] now];
  PKSetLastReviewPromptDate();

  [MEMORY[0x1E697BAA8] requestReviewInScene:v5];
}

- (void)requestReviewInSceneIfEligible:(id)a3 trigger:(unint64_t)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a4;
    _os_log_impl(&dword_1BD026000, v7, OS_LOG_TYPE_DEFAULT, "Requesting Store Kit review if eligible for reason: %lu", &v8, 0xCu);
  }

  if ([(PKStoreKitReviewPromptHelper *)self isEligibleForReviewPrompt])
  {
    [(PKStoreKitReviewPromptHelper *)self requestReviewInScene:v6 trigger:a4];
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