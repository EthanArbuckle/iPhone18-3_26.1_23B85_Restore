@interface UICollectionViewListHeaderFooter
@end

@implementation UICollectionViewListHeaderFooter

id __80___UICollectionViewListHeaderFooter__defaultBackgroundViewConfigurationProvider__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if ((v2 - 1) >= 2)
  {
    if (v2 == 3)
    {
      [_UIBackgroundViewConfiguration defaultOutlineParentCellConfigurationForState:a2];
    }

    else
    {
      [_UIBackgroundViewConfiguration defaultPlainListHeaderFooterConfigurationForState:a2];
    }
    v3 = ;
  }

  else
  {
    v3 = [_UIBackgroundViewConfiguration defaultGroupedListHeaderFooterConfigurationForState:a2];
  }

  return v3;
}

void __71___UICollectionViewListHeaderFooter__updateDefaultBackgroundAppearance__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _defaultBackgroundViewConfigurationProvider];
  [*(a1 + 32) _setBackgroundViewConfigurationProvider:v2];
}

uint64_t __70___UICollectionViewListHeaderFooter__resetBackgroundViewConfiguration__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setBackgroundViewConfigurationProvider:0];
  v2 = *(a1 + 32);

  return [v2 _setBackgroundViewConfiguration:0];
}

void __119___UICollectionViewListHeaderFooter_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UIInternalPreference_ForceIOSDeviceInsets_block_invoke___s_category_20) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "Warning once only: Detected a case where constraints ambiguously suggest a size of zero for a _UICollectionViewListHeaderFooter's content view. We're considering the collapse unintentional and using standard size instead. Header/footer: %@", &v4, 0xCu);
  }
}

@end