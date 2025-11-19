@interface PXStoryChromeButtonSpec
- (CGSize)badgeImageSize;
- (CGSize)defaultImageSize;
- (CGSize)focusedShadowOffset;
- (PXStoryChromeButtonSpec)init;
- (PXStoryChromeButtonSpec)initWithExtendedTraitCollection:(id)a3;
- (UIEdgeInsets)labelPadding;
@end

@implementation PXStoryChromeButtonSpec

- (CGSize)focusedShadowOffset
{
  width = self->_focusedShadowOffset.width;
  height = self->_focusedShadowOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)labelPadding
{
  top = self->_labelPadding.top;
  left = self->_labelPadding.left;
  bottom = self->_labelPadding.bottom;
  right = self->_labelPadding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)badgeImageSize
{
  width = self->_badgeImageSize.width;
  height = self->_badgeImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)defaultImageSize
{
  width = self->_defaultImageSize.width;
  height = self->_defaultImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXStoryChromeButtonSpec)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXStoryChromeButton.m" lineNumber:110 description:{@"%s is not available as initializer", "-[PXStoryChromeButtonSpec init]"}];

  abort();
}

- (PXStoryChromeButtonSpec)initWithExtendedTraitCollection:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXStoryChromeButtonSpec;
  v6 = [(PXStoryChromeButtonSpec *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_extendedTraitCollection, a3);
    [(PXExtendedTraitCollection *)v7->_extendedTraitCollection userInterfaceIdiom];
    [(PXExtendedTraitCollection *)v7->_extendedTraitCollection userInterfaceIdiom];
    [(PXExtendedTraitCollection *)v7->_extendedTraitCollection userInterfaceIdiom];
    [v5 contentSizeCategory];
    PXPreferredContentSizeCategoryIsAccessibility();
  }

  return 0;
}

@end