@interface PXGenerativeStoryFeatureEligibilityRowCell
@end

@implementation PXGenerativeStoryFeatureEligibilityRowCell

void __69___PXGenerativeStoryFeatureEligibilityRowCell_updateDisplayedContent__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 processingStatus];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69___PXGenerativeStoryFeatureEligibilityRowCell_updateDisplayedContent__block_invoke_2;
  v9[3] = &unk_1E772F4B0;
  objc_copyWeak(&v11, (a1 + 32));
  v8 = v5;
  v10 = v8;
  [PXGenerativeStoryFeatureEligibilityDataSource renderImageWithFeatureAvailability:v7 completionHandler:v9];

  objc_destroyWeak(&v11);
}

void __69___PXGenerativeStoryFeatureEligibilityRowCell_updateDisplayedContent__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [*(a1 + 32) featureEligibilityTitle];
  [WeakRetained _handleResultsWithTitle:v4 image:v3];
}

@end