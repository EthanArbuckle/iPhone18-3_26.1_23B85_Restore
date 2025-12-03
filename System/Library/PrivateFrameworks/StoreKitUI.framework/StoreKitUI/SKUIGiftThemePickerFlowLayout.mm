@interface SKUIGiftThemePickerFlowLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset;
@end

@implementation SKUIGiftThemePickerFlowLayout

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIGiftThemePickerFlowLayout targetContentOffsetForProposedContentOffset:];
  }

  currentPage = self->_currentPage;
  collectionView = [(SKUIGiftThemePickerFlowLayout *)self collectionView];
  [collectionView frame];
  v7 = v6 * currentPage;

  v8 = 0.0;
  v9 = v7;
  result.y = v8;
  result.x = v9;
  return result;
}

- (void)targetContentOffsetForProposedContentOffset:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIGiftThemePickerFlowLayout targetContentOffsetForProposedContentOffset:]";
}

@end