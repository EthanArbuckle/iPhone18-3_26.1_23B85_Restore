@interface PXCMMSpec
- (CGSize)reviewGridInterItemSpacing;
- (CGSize)reviewGridItemSize;
- (PXCMMSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options activityType:(unint64_t)type;
- (UIEdgeInsets)composeFooterInsets;
- (UIEdgeInsets)composeFooterMargins;
- (UIEdgeInsets)composeHeaderLabelMargins;
- (UIEdgeInsets)reviewContentInsets;
- (UIEdgeInsets)reviewGridContentInsets;
- (UIEdgeInsets)reviewSafeAreaInsets;
- (double)_reviewSectionHeaderHeightForContentSize:(id)size;
@end

@implementation PXCMMSpec

- (UIEdgeInsets)composeFooterMargins
{
  top = self->_composeFooterMargins.top;
  left = self->_composeFooterMargins.left;
  bottom = self->_composeFooterMargins.bottom;
  right = self->_composeFooterMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)composeFooterInsets
{
  top = self->_composeFooterInsets.top;
  left = self->_composeFooterInsets.left;
  bottom = self->_composeFooterInsets.bottom;
  right = self->_composeFooterInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)composeHeaderLabelMargins
{
  top = self->_composeHeaderLabelMargins.top;
  left = self->_composeHeaderLabelMargins.left;
  bottom = self->_composeHeaderLabelMargins.bottom;
  right = self->_composeHeaderLabelMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)reviewGridContentInsets
{
  top = self->_reviewGridContentInsets.top;
  left = self->_reviewGridContentInsets.left;
  bottom = self->_reviewGridContentInsets.bottom;
  right = self->_reviewGridContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)reviewSafeAreaInsets
{
  top = self->_reviewSafeAreaInsets.top;
  left = self->_reviewSafeAreaInsets.left;
  bottom = self->_reviewSafeAreaInsets.bottom;
  right = self->_reviewSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)reviewGridItemSize
{
  width = self->_reviewGridItemSize.width;
  height = self->_reviewGridItemSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)reviewGridInterItemSpacing
{
  width = self->_reviewGridInterItemSpacing.width;
  height = self->_reviewGridInterItemSpacing.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)reviewContentInsets
{
  top = self->_reviewContentInsets.top;
  left = self->_reviewContentInsets.left;
  bottom = self->_reviewContentInsets.bottom;
  right = self->_reviewContentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (double)_reviewSectionHeaderHeightForContentSize:(id)size
{
  if (UIContentSizeCategoryIsAccessibilityCategory(size))
  {
    PXScaledValueForTextStyleWithSymbolicTraits();
  }

  return 54.0;
}

- (PXCMMSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options activityType:(unint64_t)type
{
  collectionCopy = collection;
  v41.receiver = self;
  v41.super_class = PXCMMSpec;
  v9 = [(PXCMMSpec *)&v41 initWithExtendedTraitCollection:collectionCopy options:options];
  v10 = v9;
  if (v9)
  {
    v9->_activityType = type;
    v11 = [[PXPhotosDetailsSpec alloc] initWithExtendedTraitCollection:collectionCopy options:options];
    widgetSpec = [(PXPhotosDetailsSpec *)v11 widgetSpec];
    v13 = [[PXPhotosDetailsHeaderSpec alloc] initWithExtendedTraitCollection:collectionCopy options:options];
    v14 = [[PXPhotosDetailsAssetsSpec alloc] initWithExtendedTraitCollection:collectionCopy options:options];
    [collectionCopy safeAreaInsets];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    systemBackgroundColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    reviewBackgroundColor = v10->_reviewBackgroundColor;
    v10->_reviewBackgroundColor = systemBackgroundColor;

    [(PXPhotosDetailsAssetsSpec *)v14 gridContentInsets];
    v10->_reviewGridContentInsets.top = v25;
    v10->_reviewGridContentInsets.left = v26;
    v10->_reviewGridContentInsets.bottom = v27;
    v10->_reviewGridContentInsets.right = v28;
    v10->_reviewSafeAreaInsets.top = v16;
    v10->_reviewSafeAreaInsets.left = v18;
    v10->_reviewSafeAreaInsets.bottom = v20;
    v10->_reviewSafeAreaInsets.right = v22;
    [(PXPhotosDetailsAssetsSpec *)v14 gridInterItemSpacing];
    v10->_reviewGridInterItemSpacing.width = v29;
    v10->_reviewGridInterItemSpacing.height = v30;
    [(PXPhotosDetailsAssetsSpec *)v14 gridItemSize];
    v10->_reviewGridItemSize.width = v31;
    v10->_reviewGridItemSize.height = v32;
    v10->_reviewGridContentMode = [(PXPhotosDetailsAssetsSpec *)v14 gridContentMode];
    v10->_reviewHeaderTopInset = 0.0;
    v10->_reviewBannerHeight = 80.0;
    v10->_reviewFooterBottomInset = 0.0;
    v33 = *(off_1E7721FA8 + 1);
    *&v10->_reviewContentInsets.top = *off_1E7721FA8;
    *&v10->_reviewContentInsets.bottom = v33;
    if ([(PXPhotosDetailsSpec *)v11 shouldInsetAllPhotoDetailsContent])
    {
      [widgetSpec distanceBetweenTopAndHeaderlessWidgetContentTop];
      v10->_reviewHeaderTopInset = v34 + v10->_reviewHeaderTopInset;
      [widgetSpec distanceBetweenFooterlessWidgetContentBottomAndBottom];
      v10->_reviewFooterBottomInset = v35 + v10->_reviewFooterBottomInset;
      [widgetSpec contentGuideInsets];
      PXEdgeInsetsMax();
    }

    [(PXPhotosDetailsHeaderSpec *)v13 defaultCornerRadius];
    v10->_reviewHeaderCornerRadius = v36;
    [collectionCopy traitCollection];
    [objc_claimAutoreleasedReturnValue() preferredContentSizeCategory];
    [(PXCMMSpec *)v10 _reviewSectionHeaderHeightForContentSize:objc_claimAutoreleasedReturnValue()];
    v10->_reviewSectionHeaderHeight = v37;
    v10->_bubbleStatusIconCornerRadius = 10.0;
    systemGroupedBackgroundColor = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    composeRecipientViewBackgroundColor = v10->_composeRecipientViewBackgroundColor;
    v10->_composeRecipientViewBackgroundColor = systemGroupedBackgroundColor;

    v10->_composeCornerRadius = 5.0;
    PXEdgeInsetsMake();
  }

  return 0;
}

@end