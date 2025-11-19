@interface PXAssetUIImageViewTile
- (CGRect)_desiredContentsRect;
- (CGSize)_contentSize;
- (PXAssetUIImageViewTile)init;
- (UIImage)image;
- (UIView)view;
- (void)_setContentSize:(CGSize)a3;
- (void)_setDesiredContentsRect:(CGRect)a3;
- (void)_updateContentView;
- (void)_updateImageRequester;
- (void)_updateImageView;
- (void)becomeReusable;
- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)prepareForReuse;
- (void)setCornerRadius:(double)a3;
- (void)setImageRequester:(id)a3;
- (void)setPlaceholderColor:(id)a3;
- (void)setShouldAllowFocus:(BOOL)a3;
@end

@implementation PXAssetUIImageViewTile

- (CGRect)_desiredContentsRect
{
  x = self->__desiredContentsRect.origin.x;
  y = self->__desiredContentsRect.origin.y;
  width = self->__desiredContentsRect.size.width;
  height = self->__desiredContentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)_contentSize
{
  width = self->__contentSize.width;
  height = self->__contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  if (PXImageRequesterObserverContext_142430 == a5)
  {
    v5 = a4;
    v7 = a3;
    v8 = [(PXAssetUIImageViewTile *)self imageRequester];

    if ((v5 & 0x84) != 0 && v8 == v7)
    {

      [(PXAssetUIImageViewTile *)self imageDidChange];
    }
  }
}

- (void)_updateImageView
{
  v24 = [(PXAssetUIImageViewTile *)self imageRequester];
  v3 = [(PXFocusableUIImageView *)self->_imageView image];
  v4 = [v24 image];

  if (v3 != v4)
  {
    imageView = self->_imageView;
    v6 = [v24 image];
    [(PXFocusableUIImageView *)imageView setImage:v6];
  }

  v7 = [(PXFocusableUIImageView *)self->_imageView layer];
  if (v24)
  {
    [v24 contentsRect];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [v7 contentsRect];
    v27.origin.x = v16;
    v27.origin.y = v17;
    v27.size.width = v18;
    v27.size.height = v19;
    v26.origin.x = v9;
    v26.origin.y = v11;
    v26.size.width = v13;
    v26.size.height = v15;
    if (CGRectEqualToRect(v26, v27))
    {
      goto LABEL_8;
    }

    [v24 contentsRect];
  }

  else
  {
    v20 = *off_1E77221F8;
    v21 = *(off_1E77221F8 + 1);
    v22 = *(off_1E77221F8 + 2);
    v23 = *(off_1E77221F8 + 3);
  }

  [v7 setContentsRect:{v20, v21, v22, v23}];
LABEL_8:
}

- (void)_updateImageRequester
{
  [(PXAssetUIImageViewTile *)self _contentSize];
  v4 = v3;
  v6 = v5;
  [(PXAssetUIImageViewTile *)self _desiredContentsRect];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(PXFocusableUIImageView *)self->_imageView bounds];
  v16 = v15;
  v18 = v17;
  v19 = [(PXAssetUIImageViewTile *)self imageRequester];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __47__PXAssetUIImageViewTile__updateImageRequester__block_invoke;
  v20[3] = &__block_descriptor_96_e35_v16__0___PXMutableImageRequester__8l;
  v20[4] = v4;
  v20[5] = v6;
  v20[6] = v8;
  v20[7] = v10;
  v20[8] = v12;
  v20[9] = v14;
  v20[10] = v16;
  v20[11] = v18;
  [v19 performChanges:v20];
}

void __47__PXAssetUIImageViewTile__updateImageRequester__block_invoke(double *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  [v5 setContentSize:{v3, v4}];
  [v5 setDesiredContentsRect:{a1[6], a1[7], a1[8], a1[9]}];
  [v5 setViewportSize:{a1[10], a1[11]}];
}

- (void)_setContentSize:(CGSize)a3
{
  if (self->__contentSize.width != a3.width || self->__contentSize.height != a3.height)
  {
    self->__contentSize = a3;
  }
}

- (void)_setDesiredContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(self->__desiredContentsRect, a3))
  {
    self->__desiredContentsRect.origin.x = x;
    self->__desiredContentsRect.origin.y = y;
    self->__desiredContentsRect.size.width = width;
    self->__desiredContentsRect.size.height = height;
  }
}

- (void)setCornerRadius:(double)a3
{
  if (self->_cornerRadius != a3)
  {
    self->_cornerRadius = a3;
    [(PXAssetUIImageViewTile *)self _updateContentView];
  }
}

- (void)setImageRequester:(id)a3
{
  v5 = a3;
  imageRequester = self->_imageRequester;
  if (imageRequester != v5)
  {
    v7 = v5;
    [(PXImageRequester *)imageRequester unregisterChangeObserver:self context:PXImageRequesterObserverContext_142430];
    objc_storeStrong(&self->_imageRequester, a3);
    [(PXAssetUIImageViewTile *)self _updateImageRequester];
    [(PXAssetUIImageViewTile *)self _updateImageView];
    [(PXImageRequester *)v7 registerChangeObserver:self context:PXImageRequesterObserverContext_142430];
    v5 = v7;
  }
}

- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4
{
  [(PXAssetUIImageViewTile *)self _setContentSize:a3->contentSize.width, a3->contentSize.height];
  [(PXAssetUIImageViewTile *)self _setDesiredContentsRect:a3->contentsRect.origin.x, a3->contentsRect.origin.y, a3->contentsRect.size.width, a3->contentsRect.size.height];

  [(PXAssetUIImageViewTile *)self _updateImageRequester];
}

- (void)prepareForReuse
{
  [(PXFocusableUIImageView *)self->_imageView setReusable:0];
  v3 = [(PXAssetUIImageViewTile *)self view];
  [v3 setHidden:0];
}

- (void)becomeReusable
{
  [(PXFocusableUIImageView *)self->_imageView setReusable:1];
  v3 = [(PXAssetUIImageViewTile *)self view];
  [v3 setHidden:1];

  [(PXAssetUIImageViewTile *)self setImageRequester:0];
  [(PXAssetUIImageViewTile *)self _setContentSize:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
  v4 = *off_1E77221F8;
  v5 = *(off_1E77221F8 + 1);
  v6 = *(off_1E77221F8 + 2);
  v7 = *(off_1E77221F8 + 3);

  [(PXAssetUIImageViewTile *)self _setDesiredContentsRect:v4, v5, v6, v7];
}

- (void)_updateContentView
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = [PXFocusableUIImageView alloc];
    v5 = [(PXFocusableUIImageView *)v4 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
    v6 = self->_imageView;
    self->_imageView = v5;

    [(PXFocusableUIImageView *)self->_imageView setDrawsFocusRing:1];
    v7 = [(PXFocusableUIImageView *)self->_imageView layer];
    [v7 setAllowsGroupOpacity:0];

    imageView = self->_imageView;
  }

  [(PXFocusableUIImageView *)imageView setOpaque:1];
  [(PXFocusableUIImageView *)self->_imageView setClipsToBounds:1];
  if (self->_hasPlaceholder)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  [(PXFocusableUIImageView *)self->_imageView setContentMode:v8];
  v9 = self->_imageView;
  v10 = [(PXAssetUIImageViewTile *)self placeholderColor];
  [(PXFocusableUIImageView *)v9 setBackgroundColor:v10];

  [(PXAssetUIImageViewTile *)self cornerRadius];
  if (v11 == 0.0)
  {
    v17 = [(PXFocusableUIImageView *)self->_imageView layer];
    [v17 setCornerRadius:0.0];
  }

  else
  {
    [(PXAssetUIImageViewTile *)self cornerRadius];
    v13 = v12;
    v14 = [(PXFocusableUIImageView *)self->_imageView layer];
    [v14 setCornerRadius:v13];

    v15 = *MEMORY[0x1E69796E8];
    v16 = [(PXFocusableUIImageView *)self->_imageView layer];
    [v16 setCornerCurve:v15];

    v17 = [(PXFocusableUIImageView *)self->_imageView layer];
    [v17 setAllowsGroupOpacity:0];
  }

  if (self->_shouldAllowFocus)
  {
    [(PXFocusableUIImageView *)self->_imageView setClipsToBounds:0];
    [(PXFocusableUIImageView *)self->_imageView setUserInteractionEnabled:1];
  }

  [(PXAssetUIImageViewTile *)self _updateImageView];
  v18 = self->_imageView;

  objc_storeStrong(&self->_contentView, v18);
}

- (void)setShouldAllowFocus:(BOOL)a3
{
  if (self->_shouldAllowFocus != a3)
  {
    self->_shouldAllowFocus = a3;
    if (self->_contentView)
    {
      [(PXAssetUIImageViewTile *)self _updateContentView];
    }
  }
}

- (void)setPlaceholderColor:(id)a3
{
  v5 = a3;
  if (self->_placeholderColor != v5)
  {
    objc_storeStrong(&self->_placeholderColor, a3);
    if (self->_contentView)
    {
      [(PXAssetUIImageViewTile *)self _updateContentView];
    }
  }
}

- (UIImage)image
{
  v2 = [(PXAssetUIImageViewTile *)self imageRequester];
  v3 = [v2 image];

  return v3;
}

- (UIView)view
{
  contentView = self->_contentView;
  if (!contentView)
  {
    [(PXAssetUIImageViewTile *)self _updateContentView];
    contentView = self->_contentView;
  }

  return contentView;
}

- (PXAssetUIImageViewTile)init
{
  v7.receiver = self;
  v7.super_class = PXAssetUIImageViewTile;
  v2 = [(PXAssetUIImageViewTile *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    placeholderColor = v2->_placeholderColor;
    v2->_placeholderColor = v3;

    v5 = *(off_1E77221F8 + 1);
    v2->__desiredContentsRect.origin = *off_1E77221F8;
    v2->__desiredContentsRect.size = v5;
    *&v2->_hasPlaceholder = 0;
  }

  return v2;
}

@end