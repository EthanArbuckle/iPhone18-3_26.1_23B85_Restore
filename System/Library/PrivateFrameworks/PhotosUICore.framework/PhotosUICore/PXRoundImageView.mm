@interface PXRoundImageView
- (CGSize)currentRequestSize;
- (PXRoundImageView)initWithFrame:(CGRect)frame;
- (void)_updateCorner;
- (void)_updateImageForFaceCropRequestID:(int)d image:(id)image contentsRect:(CGRect)rect forceUpdate:(BOOL)update error:(id)error;
- (void)_updateImageIfNeeded;
- (void)layoutSubviews;
- (void)setCurrentRequestID:(int)d;
- (void)setRepresentedPerson:(id)person;
@end

@implementation PXRoundImageView

- (CGSize)currentRequestSize
{
  width = self->_currentRequestSize.width;
  height = self->_currentRequestSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PXRoundImageView;
  [(PXRoundImageView *)&v3 layoutSubviews];
  [(PXRoundImageView *)self _updateCorner];
  [(PXRoundImageView *)self _updateImageIfNeeded];
}

- (void)setRepresentedPerson:(id)person
{
  personCopy = person;
  v5 = self->_representedPerson;
  v6 = v5;
  if (v5 == personCopy)
  {
  }

  else
  {
    v7 = [(PHPerson *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_representedPerson, person);
      [(PXRoundImageView *)self setCurrentRequestID:0];
      [(PXRoundImageView *)self setCurrentRequestSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      [(PXRoundImageView *)self setImage:0];
      [(PXRoundImageView *)self setNeedsLayout];
    }
  }
}

- (void)setCurrentRequestID:(int)d
{
  currentRequestID = self->_currentRequestID;
  if (currentRequestID != d)
  {
    if (currentRequestID)
    {
      v6 = +[PXPeopleFaceCropManager sharedManager];
      [v6 cancelRequestForRequestID:self->_currentRequestID];
    }

    self->_currentRequestID = d;
  }
}

- (void)_updateImageIfNeeded
{
  [(PXRoundImageView *)self image];
  objc_claimAutoreleasedReturnValue();
  [(PXRoundImageView *)self representedPerson];
  objc_claimAutoreleasedReturnValue();
  [(PXRoundImageView *)self bounds];
  PXPixelSizeAreaIsZero();
}

void __40__PXRoundImageView__updateImageIfNeeded__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v5 objectForKeyedSubscript:@"PXPeopleErrorKey"];
  objc_claimAutoreleasedReturnValue();
  [v5 objectForKeyedSubscript:@"PXPeopleContentsRectKey"];
  [objc_claimAutoreleasedReturnValue() CGRectValue];
  PXRectIdenticalToRect();
}

void __40__PXRoundImageView__updateImageIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _updateImageForFaceCropRequestID:*(*(*(a1 + 48) + 8) + 24) image:*(a1 + 32) contentsRect:*(a1 + 96) forceUpdate:*(a1 + 40) error:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
}

- (void)_updateImageForFaceCropRequestID:(int)d image:(id)image contentsRect:(CGRect)rect forceUpdate:(BOOL)update error:(id)error
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v20 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  errorCopy = error;
  if (update || [(PXRoundImageView *)self currentRequestID]== d)
  {
    if (imageCopy)
    {
      [(PXRoundImageView *)self setImage:imageCopy];
      layer = [(PXRoundImageView *)self layer];
      [layer setContentsRect:x, y, width, height];
    }

    else
    {
      if (!errorCopy)
      {
        goto LABEL_6;
      }

      layer = PLUIGetLog();
      if (os_log_type_enabled(layer, OS_LOG_TYPE_ERROR))
      {
        v18 = 138412290;
        v19 = errorCopy;
        _os_log_impl(&dword_1A3C1C000, layer, OS_LOG_TYPE_ERROR, "PXPeoplePickerCollectionViewItem: error requesting face crop: %@", &v18, 0xCu);
      }
    }
  }

LABEL_6:
}

- (void)_updateCorner
{
  [(PXRoundImageView *)self bounds];
  if (v3 >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5 * 0.5;
  layer = [(PXRoundImageView *)self layer];
  [layer setCornerRadius:v6];
}

- (PXRoundImageView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = PXRoundImageView;
  v3 = [(PXRoundImageView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    layer = [(PXRoundImageView *)v3 layer];
    [layer setMasksToBounds:1];
  }

  return v4;
}

@end