@interface PXRoundImageView
- (CGSize)currentRequestSize;
- (PXRoundImageView)initWithFrame:(CGRect)a3;
- (void)_updateCorner;
- (void)_updateImageForFaceCropRequestID:(int)a3 image:(id)a4 contentsRect:(CGRect)a5 forceUpdate:(BOOL)a6 error:(id)a7;
- (void)_updateImageIfNeeded;
- (void)layoutSubviews;
- (void)setCurrentRequestID:(int)a3;
- (void)setRepresentedPerson:(id)a3;
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

- (void)setRepresentedPerson:(id)a3
{
  v8 = a3;
  v5 = self->_representedPerson;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(PHPerson *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_representedPerson, a3);
      [(PXRoundImageView *)self setCurrentRequestID:0];
      [(PXRoundImageView *)self setCurrentRequestSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
      [(PXRoundImageView *)self setImage:0];
      [(PXRoundImageView *)self setNeedsLayout];
    }
  }
}

- (void)setCurrentRequestID:(int)a3
{
  currentRequestID = self->_currentRequestID;
  if (currentRequestID != a3)
  {
    if (currentRequestID)
    {
      v6 = +[PXPeopleFaceCropManager sharedManager];
      [v6 cancelRequestForRequestID:self->_currentRequestID];
    }

    self->_currentRequestID = a3;
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

- (void)_updateImageForFaceCropRequestID:(int)a3 image:(id)a4 contentsRect:(CGRect)a5 forceUpdate:(BOOL)a6 error:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v20 = *MEMORY[0x1E69E9840];
  v15 = a4;
  v16 = a7;
  if (a6 || [(PXRoundImageView *)self currentRequestID]== a3)
  {
    if (v15)
    {
      [(PXRoundImageView *)self setImage:v15];
      v17 = [(PXRoundImageView *)self layer];
      [v17 setContentsRect:x, y, width, height];
    }

    else
    {
      if (!v16)
      {
        goto LABEL_6;
      }

      v17 = PLUIGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = 138412290;
        v19 = v16;
        _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_ERROR, "PXPeoplePickerCollectionViewItem: error requesting face crop: %@", &v18, 0xCu);
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
  v7 = [(PXRoundImageView *)self layer];
  [v7 setCornerRadius:v6];
}

- (PXRoundImageView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = PXRoundImageView;
  v3 = [(PXRoundImageView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(PXRoundImageView *)v3 layer];
    [v5 setMasksToBounds:1];
  }

  return v4;
}

@end