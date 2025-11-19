@interface PXAssetEditOperationManager
@end

@implementation PXAssetEditOperationManager

uint64_t __85__PXAssetEditOperationManager_AdditionalPerformersHook__registerAdditionalPerformers__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  IsToggleDepth = PXAssetEditOperationTypeIsToggleDepth();
  objc_opt_class();
  v4 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && IsToggleDepth)
  {
    v4 = [v2 hasEditableDepth];
  }

  return v4;
}

uint64_t __85__PXAssetEditOperationManager_AdditionalPerformersHook__registerAdditionalPerformers__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  IsVariation = PXAssetEditOperationTypeIsVariation();
  objc_opt_class();
  v4 = 0;
  if ((objc_opt_isKindOfClass() & 1) != 0 && IsVariation)
  {
    v5 = v2;
    [v5 videoCpVisibilityState];
    if ([v5 isPhotoIris])
    {
      v4 = PHVideoComplementVisibilityStateSupportsVariationChanges();
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

@end