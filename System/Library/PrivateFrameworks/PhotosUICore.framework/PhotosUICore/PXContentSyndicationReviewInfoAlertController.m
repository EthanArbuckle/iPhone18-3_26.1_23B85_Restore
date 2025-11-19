@interface PXContentSyndicationReviewInfoAlertController
@end

@implementation PXContentSyndicationReviewInfoAlertController

void ___PXContentSyndicationReviewInfoAlertController_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AAB0];
  v7 = a4;
  v8 = [v6 alloc];
  v9 = MEMORY[0x1E696AEC0];
  v10 = PHAssetSyndicationEligibilityDescription();
  v11 = [v9 stringWithFormat:@"%lu: \t%@\n", a3, v10];
  v14 = *MEMORY[0x1E69DB650];
  v15[0] = v7;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v13 = [v8 initWithString:v11 attributes:v12];

  [*(a1 + 32) appendAttributedString:v13];
}

@end