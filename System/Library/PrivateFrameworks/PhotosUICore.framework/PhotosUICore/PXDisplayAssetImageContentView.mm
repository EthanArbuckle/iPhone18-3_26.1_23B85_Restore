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
- (void)imageRequesterDidChange:(unint64_t)a3;
- (void)isDisplayingFullQualityContentDidChange;
- (void)placeholderImageFiltersDidChange;
@end

@implementation PXDisplayAssetImageContentView

- (void)imageRequesterDidChange:(unint64_t)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PXDisplayAssetImageContentView;
  [(PXDisplayAssetContentView *)&v5 imageRequesterDidChange:?];
  if ((v3 & 8) != 0)
  {
    [(PXDisplayAssetImageContentView *)self isDisplayingFullQualityContentDidChange];
  }
}

- (void)_updateImageViewFilters
{
  v4 = [(PXDisplayAssetImageContentView *)self isDisplayingFullQualityContent];
  if (!v4)
  {
    v2 = [(PXDisplayAssetContentView *)self placeholderImageFilters];
    if ([v2 count])
    {

LABEL_7:
      v7 = [(PXDisplayAssetContentView *)self placeholderImageFilters];
      v8 = [(UIImageView *)self->_imageView layer];
      [v8 setFilters:v7];

      v9 = [(UIImageView *)self->_imageView layer];
      [v9 setShouldRasterize:1];

      v11 = [(UIImageView *)self->_imageView layer];
      [v11 setRasterizationScale:0.5];
      goto LABEL_9;
    }
  }

  v5 = +[PXForYouSettings sharedInstance];
  v6 = [v5 alwaysShowSuggestionRenderingOverlay];

  if (!v4)
  {
  }

  if (v6)
  {
    goto LABEL_7;
  }

  v10 = [(UIImageView *)self->_imageView layer];
  [v10 setFilters:0];

  v11 = [(UIImageView *)self->_imageView layer];
  [v11 setShouldRasterize:0];
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
  v2 = [(PXDisplayAssetContentView *)self imageRequester];
  v3 = [v2 hasFullQuality];

  return v3;
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
  v11 = [(UIImageView *)self->_imageView layer];
  [v11 setContentsRect:{v4, v6, v8, v10}];
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
  v3 = [(UIImageView *)self->_imageView image];
  if (v3)
  {
    v4 = v3;
    v5 = [(PXDisplayAssetContentView *)self imageRequester];
    if ([v5 hasFullQuality])
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

  v10 = [(PXDisplayAssetContentView *)self image];
  [(UIImageView *)self->_imageView setImage:v10];
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
  v3 = [(PXDisplayAssetImageContentView *)self contentMode];
  imageView = self->_imageView;

  [(UIImageView *)imageView setContentMode:v3];
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