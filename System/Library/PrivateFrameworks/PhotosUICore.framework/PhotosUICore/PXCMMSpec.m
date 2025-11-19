@interface PXCMMSpec
- (CGSize)reviewGridInterItemSpacing;
- (CGSize)reviewGridItemSize;
- (PXCMMSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 activityType:(unint64_t)a5;
- (UIEdgeInsets)composeFooterInsets;
- (UIEdgeInsets)composeFooterMargins;
- (UIEdgeInsets)composeHeaderLabelMargins;
- (UIEdgeInsets)reviewContentInsets;
- (UIEdgeInsets)reviewGridContentInsets;
- (UIEdgeInsets)reviewSafeAreaInsets;
- (double)_reviewSectionHeaderHeightForContentSize:(id)a3;
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

- (double)_reviewSectionHeaderHeightForContentSize:(id)a3
{
  if (UIContentSizeCategoryIsAccessibilityCategory(a3))
  {
    PXScaledValueForTextStyleWithSymbolicTraits();
  }

  return 54.0;
}

- (PXCMMSpec)initWithExtendedTraitCollection:(id)a3 options:(unint64_t)a4 activityType:(unint64_t)a5
{
  v8 = a3;
  v41.receiver = self;
  v41.super_class = PXCMMSpec;
  v9 = [(PXCMMSpec *)&v41 initWithExtendedTraitCollection:v8 options:a4];
  v10 = v9;
  if (v9)
  {
    v9->_activityType = a5;
    v11 = [[PXPhotosDetailsSpec alloc] initWithExtendedTraitCollection:v8 options:a4];
    v12 = [(PXPhotosDetailsSpec *)v11 widgetSpec];
    v13 = [[PXPhotosDetailsHeaderSpec alloc] initWithExtendedTraitCollection:v8 options:a4];
    v14 = [[PXPhotosDetailsAssetsSpec alloc] initWithExtendedTraitCollection:v8 options:a4];
    [v8 safeAreaInsets];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    reviewBackgroundColor = v10->_reviewBackgroundColor;
    v10->_reviewBackgroundColor = v23;

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
      [v12 distanceBetweenTopAndHeaderlessWidgetContentTop];
      v10->_reviewHeaderTopInset = v34 + v10->_reviewHeaderTopInset;
      [v12 distanceBetweenFooterlessWidgetContentBottomAndBottom];
      v10->_reviewFooterBottomInset = v35 + v10->_reviewFooterBottomInset;
      [v12 contentGuideInsets];
      PXEdgeInsetsMax();
    }

    [(PXPhotosDetailsHeaderSpec *)v13 defaultCornerRadius];
    v10->_reviewHeaderCornerRadius = v36;
    [v8 traitCollection];
    [objc_claimAutoreleasedReturnValue() preferredContentSizeCategory];
    [(PXCMMSpec *)v10 _reviewSectionHeaderHeightForContentSize:objc_claimAutoreleasedReturnValue()];
    v10->_reviewSectionHeaderHeight = v37;
    v10->_bubbleStatusIconCornerRadius = 10.0;
    v38 = [MEMORY[0x1E69DC888] systemGroupedBackgroundColor];
    composeRecipientViewBackgroundColor = v10->_composeRecipientViewBackgroundColor;
    v10->_composeRecipientViewBackgroundColor = v38;

    v10->_composeCornerRadius = 5.0;
    PXEdgeInsetsMake();
  }

  return 0;
}

@end