@interface PXPhotoLibraryProcessingProgressRowCell
@end

@implementation PXPhotoLibraryProcessingProgressRowCell

void __66___PXPhotoLibraryProcessingProgressRowCell_updateDisplayedContent__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleBriefDescriptionResultsWithTitle:v6 image:v5];
}

@end