@interface PXDisplayAssetImageContentView
- (BOOL)isDisplayingFullQualityContent;
- (id)contentView;
- (void)_updateImageViewContentMode;
- (void)_updateImageViewFilters;
- (void)contentModeDidChange;
- (void)contentsRectDidChange;
- (void)effectivePreferredImageDynamicRangeDidChange;
- (void)imageDidChange;
- (void)imageProgressDidChange;
- (void)imageRequesterDidChange:(unint64_t)change;
- (void)isDisplayingFullQualityContentDidChange;
- (void)placeholderImageFiltersDidChange;
@end

@implementation PXDisplayAssetImageContentView

- (void)imageRequesterDidChange:(unint64_t)change
{
  changeCopy = change;
  v5.receiver = self;
  v5.super_class = PXDisplayAssetImageContentView;
  [(PXDisplayAssetContentView *)&v5 imageRequesterDidChange:?];
  if ((changeCopy & 8) != 0)
  {
    [(PXDisplayAssetImageContentView *)self isDisplayingFullQualityContentDidChange];
  }
}

- (void)_updateImageViewFilters
{
  isDisplayingFullQualityContent = [(PXDisplayAssetImageContentView *)self isDisplayingFullQualityContent];
  if (!isDisplayingFullQualityContent)
  {
    placeholderImageFilters = [(PXDisplayAssetContentView *)self placeholderImageFilters];
    if ([placeholderImageFilters count])
    {

LABEL_7:
      placeholderImageFilters2 = [(PXDisplayAssetContentView *)self placeholderImageFilters];
      layer = [(UIImageView *)self->_imageView layer];
      [layer setFilters:placeholderImageFilters2];

      layer2 = [(UIImageView *)self->_imageView layer];
      [layer2 setShouldRasterize:1];

      layer3 = [(UIImageView *)self->_imageView layer];
      [layer3 setRasterizationScale:0.5];
      goto LABEL_9;
    }
  }

  v5 = +[PXForYouSettings sharedInstance];
  alwaysShowSuggestionRenderingOverlay = [v5 alwaysShowSuggestionRenderingOverlay];

  if (!isDisplayingFullQualityContent)
  {
  }

  if (alwaysShowSuggestionRenderingOverlay)
  {
    goto LABEL_7;
  }

  layer4 = [(UIImageView *)self->_imageView layer];
  [layer4 setFilters:0];

  layer3 = [(UIImageView *)self->_imageView layer];
  [layer3 setShouldRasterize:0];
LABEL_9:
}

- (void)isDisplayingFullQualityContentDidChange
{
  v3.receiver = self;
  v3.super_class = PXDisplayAssetImageContentView;
  [(PXDisplayAssetContentView *)&v3 isDisplayingFullQualityContentDidChange];
  [(PXDisplayAssetImageContentView *)self _updateImageViewFilters];
}

- (BOOL)isDisplayingFullQualityContent
{
  imageRequester = [(PXDisplayAssetContentView *)self imageRequester];
  hasFullQuality = [imageRequester hasFullQuality];

  return hasFullQuality;
}

- (void)contentsRectDidChange
{
  v12.receiver = self;
  v12.super_class = PXDisplayAssetImageContentView;
  [(PXDisplayAssetContentView *)&v12 contentsRectDidChange];
  [(PXDisplayAssetContentView *)self contentsRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  layer = [(UIImageView *)self->_imageView layer];
  [layer setContentsRect:{v4, v6, v8, v10}];
}

- (void)placeholderImageFiltersDidChange
{
  v3.receiver = self;
  v3.super_class = PXDisplayAssetImageContentView;
  [(PXDisplayAssetContentView *)&v3 placeholderImageFiltersDidChange];
  [(PXDisplayAssetImageContentView *)self _updateImageViewFilters];
}

- (void)imageProgressDidChange
{
  v3.receiver = self;
  v3.super_class = PXDisplayAssetImageContentView;
  [(PXDisplayAssetContentView *)&v3 imageProgressDidChange];
  [(PXDisplayAssetContentView *)self invalidateLoadingProgress];
}

- (void)effectivePreferredImageDynamicRangeDidChange
{
  v3.receiver = self;
  v3.super_class = PXDisplayAssetImageContentView;
  [(PXDisplayAssetContentView *)&v3 effectivePreferredImageDynamicRangeDidChange];
  [(PXDisplayAssetImageContentView *)self _updateImageViewPreferredImageDynamicRange];
}

- (void)imageDidChange
{
  v12.receiver = self;
  v12.super_class = PXDisplayAssetImageContentView;
  [(PXDisplayAssetContentView *)&v12 imageDidChange];
  image = [(UIImageView *)self->_imageView image];
  if (image)
  {
    v4 = image;
    imageRequester = [(PXDisplayAssetContentView *)self imageRequester];
    if ([imageRequester hasFullQuality])
    {
      [(PXDisplayAssetContentView *)self placeholderTransitionDuration];
      v7 = v6;

      if (v7 > 0.0)
      {
        v8 = MEMORY[0x1E69DD250];
        imageView = self->_imageView;
        [(PXDisplayAssetContentView *)self placeholderTransitionDuration];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __48__PXDisplayAssetImageContentView_imageDidChange__block_invoke;
        v11[3] = &unk_1E774C648;
        v11[4] = self;
        [v8 transitionWithView:imageView duration:5242880 options:v11 animations:0 completion:?];
        return;
      }
    }

    else
    {
    }
  }

  image2 = [(PXDisplayAssetContentView *)self image];
  [(UIImageView *)self->_imageView setImage:image2];
}

uint64_t __48__PXDisplayAssetImageContentView_imageDidChange__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) image];
  [*(*(a1 + 32) + 680) setImage:v2];

  v3 = *(a1 + 32);

  return [v3 _updateImageViewFilters];
}

- (void)_updateImageViewContentMode
{
  contentMode = [(PXDisplayAssetImageContentView *)self contentMode];
  imageView = self->_imageView;

  [(UIImageView *)imageView setContentMode:contentMode];
}

- (void)contentModeDidChange
{
  v3.receiver = self;
  v3.super_class = PXDisplayAssetImageContentView;
  [(PXDisplayAssetContentView *)&v3 contentModeDidChange];
  [(PXDisplayAssetImageContentView *)self _updateImageViewContentMode];
}

- (id)contentView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    v5 = self->_imageView;
    self->_imageView = v4;

    [(PXDisplayAssetImageContentView *)self _updateImageViewContentMode];
    [(UIImageView *)self->_imageView setClipsToBounds:1];
    [(PXDisplayAssetImageContentView *)self _updateImageViewPreferredImageDynamicRange];
    imageView = self->_imageView;
  }

  return imageView;
}

@end