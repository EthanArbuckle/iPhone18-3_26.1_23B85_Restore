@interface PXStoryConcreteLayoutSpec
- (CGSize)bufferingIndicatorSize;
- (CGSize)scrubberCurrentAssetSize;
- (CGSize)thumbnailChromeDetailsViewButtonPadding;
- (CGSize)thumbnailChromePadding;
- (CGSize)thumbnailPlayButtonPadding;
- (PXStoryConcreteLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options storyConfigurationOptions:(unint64_t)configurationOptions;
- (UIEdgeInsets)styleSwitcherChromeInset;
- (UIEdgeInsets)styleSwitcherPageControlInset;
- (UIEdgeInsets)styleSwitcherViewportInset;
@end

@implementation PXStoryConcreteLayoutSpec

- (CGSize)bufferingIndicatorSize
{
  width = self->_bufferingIndicatorSize.width;
  height = self->_bufferingIndicatorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)scrubberCurrentAssetSize
{
  width = self->_scrubberCurrentAssetSize.width;
  height = self->_scrubberCurrentAssetSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)styleSwitcherPageControlInset
{
  top = self->_styleSwitcherPageControlInset.top;
  left = self->_styleSwitcherPageControlInset.left;
  bottom = self->_styleSwitcherPageControlInset.bottom;
  right = self->_styleSwitcherPageControlInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)styleSwitcherViewportInset
{
  top = self->_styleSwitcherViewportInset.top;
  left = self->_styleSwitcherViewportInset.left;
  bottom = self->_styleSwitcherViewportInset.bottom;
  right = self->_styleSwitcherViewportInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)styleSwitcherChromeInset
{
  top = self->_styleSwitcherChromeInset.top;
  left = self->_styleSwitcherChromeInset.left;
  bottom = self->_styleSwitcherChromeInset.bottom;
  right = self->_styleSwitcherChromeInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)thumbnailChromeDetailsViewButtonPadding
{
  width = self->_thumbnailChromeDetailsViewButtonPadding.width;
  height = self->_thumbnailChromeDetailsViewButtonPadding.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)thumbnailPlayButtonPadding
{
  width = self->_thumbnailPlayButtonPadding.width;
  height = self->_thumbnailPlayButtonPadding.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)thumbnailChromePadding
{
  width = self->_thumbnailChromePadding.width;
  height = self->_thumbnailChromePadding.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PXStoryConcreteLayoutSpec)initWithExtendedTraitCollection:(id)collection options:(unint64_t)options storyConfigurationOptions:(unint64_t)configurationOptions
{
  v10 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  v9.receiver = self;
  v9.super_class = PXStoryConcreteLayoutSpec;
  if ([(PXStoryConcreteLayoutSpec *)&v9 initWithExtendedTraitCollection:collectionCopy options:options])
  {
    [collectionCopy layoutOrientation];
    [collectionCopy layoutOrientation];
    [collectionCopy contentSizeCategory];
    PXPreferredContentSizeCategoryIsAccessibility();
  }

  return 0;
}

@end