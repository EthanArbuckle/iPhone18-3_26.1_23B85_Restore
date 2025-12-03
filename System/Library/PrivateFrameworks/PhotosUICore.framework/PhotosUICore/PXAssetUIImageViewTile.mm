@interface PXAssetUIImageViewTile
- (CGRect)_desiredContentsRect;
- (CGSize)_contentSize;
- (PXAssetUIImageViewTile)init;
- (UIImage)image;
- (UIView)view;
- (void)_setContentSize:(CGSize)size;
- (void)_setDesiredContentsRect:(CGRect)rect;
- (void)_updateContentView;
- (void)_updateImageRequester;
- (void)_updateImageView;
- (void)becomeReusable;
- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)prepareForReuse;
- (void)setCornerRadius:(double)radius;
- (void)setImageRequester:(id)requester;
- (void)setPlaceholderColor:(id)color;
- (void)setShouldAllowFocus:(BOOL)focus;
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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if (PXImageRequesterObserverContext_142430 == context)
  {
    changeCopy = change;
    observableCopy = observable;
    imageRequester = [(PXAssetUIImageViewTile *)self imageRequester];

    if ((changeCopy & 0x84) != 0 && imageRequester == observableCopy)
    {

      [(PXAssetUIImageViewTile *)self imageDidChange];
    }
  }
}

- (void)_updateImageView
{
  imageRequester = [(PXAssetUIImageViewTile *)self imageRequester];
  image = [(PXFocusableUIImageView *)self->_imageView image];
  image2 = [imageRequester image];

  if (image != image2)
  {
    imageView = self->_imageView;
    image3 = [imageRequester image];
    [(PXFocusableUIImageView *)imageView setImage:image3];
  }

  layer = [(PXFocusableUIImageView *)self->_imageView layer];
  if (imageRequester)
  {
    [imageRequester contentsRect];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    [layer contentsRect];
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

    [imageRequester contentsRect];
  }

  else
  {
    v20 = *off_1E77221F8;
    v21 = *(off_1E77221F8 + 1);
    v22 = *(off_1E77221F8 + 2);
    v23 = *(off_1E77221F8 + 3);
  }

  [layer setContentsRect:{v20, v21, v22, v23}];
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
  imageRequester = [(PXAssetUIImageViewTile *)self imageRequester];
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
  [imageRequester performChanges:v20];
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

- (void)_setContentSize:(CGSize)size
{
  if (self->__contentSize.width != size.width || self->__contentSize.height != size.height)
  {
    self->__contentSize = size;
  }
}

- (void)_setDesiredContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectEqualToRect(self->__desiredContentsRect, rect))
  {
    self->__desiredContentsRect.origin.x = x;
    self->__desiredContentsRect.origin.y = y;
    self->__desiredContentsRect.size.width = width;
    self->__desiredContentsRect.size.height = height;
  }
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(PXAssetUIImageViewTile *)self _updateContentView];
  }
}

- (void)setImageRequester:(id)requester
{
  requesterCopy = requester;
  imageRequester = self->_imageRequester;
  if (imageRequester != requesterCopy)
  {
    v7 = requesterCopy;
    [(PXImageRequester *)imageRequester unregisterChangeObserver:self context:PXImageRequesterObserverContext_142430];
    objc_storeStrong(&self->_imageRequester, requester);
    [(PXAssetUIImageViewTile *)self _updateImageRequester];
    [(PXAssetUIImageViewTile *)self _updateImageView];
    [(PXImageRequester *)v7 registerChangeObserver:self context:PXImageRequesterObserverContext_142430];
    requesterCopy = v7;
  }
}

- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data
{
  [(PXAssetUIImageViewTile *)self _setContentSize:geometry->contentSize.width, geometry->contentSize.height];
  [(PXAssetUIImageViewTile *)self _setDesiredContentsRect:geometry->contentsRect.origin.x, geometry->contentsRect.origin.y, geometry->contentsRect.size.width, geometry->contentsRect.size.height];

  [(PXAssetUIImageViewTile *)self _updateImageRequester];
}

- (void)prepareForReuse
{
  [(PXFocusableUIImageView *)self->_imageView setReusable:0];
  view = [(PXAssetUIImageViewTile *)self view];
  [view setHidden:0];
}

- (void)becomeReusable
{
  [(PXFocusableUIImageView *)self->_imageView setReusable:1];
  view = [(PXAssetUIImageViewTile *)self view];
  [view setHidden:1];

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
    layer = [(PXFocusableUIImageView *)self->_imageView layer];
    [layer setAllowsGroupOpacity:0];

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
  placeholderColor = [(PXAssetUIImageViewTile *)self placeholderColor];
  [(PXFocusableUIImageView *)v9 setBackgroundColor:placeholderColor];

  [(PXAssetUIImageViewTile *)self cornerRadius];
  if (v11 == 0.0)
  {
    layer2 = [(PXFocusableUIImageView *)self->_imageView layer];
    [layer2 setCornerRadius:0.0];
  }

  else
  {
    [(PXAssetUIImageViewTile *)self cornerRadius];
    v13 = v12;
    layer3 = [(PXFocusableUIImageView *)self->_imageView layer];
    [layer3 setCornerRadius:v13];

    v15 = *MEMORY[0x1E69796E8];
    layer4 = [(PXFocusableUIImageView *)self->_imageView layer];
    [layer4 setCornerCurve:v15];

    layer2 = [(PXFocusableUIImageView *)self->_imageView layer];
    [layer2 setAllowsGroupOpacity:0];
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

- (void)setShouldAllowFocus:(BOOL)focus
{
  if (self->_shouldAllowFocus != focus)
  {
    self->_shouldAllowFocus = focus;
    if (self->_contentView)
    {
      [(PXAssetUIImageViewTile *)self _updateContentView];
    }
  }
}

- (void)setPlaceholderColor:(id)color
{
  colorCopy = color;
  if (self->_placeholderColor != colorCopy)
  {
    objc_storeStrong(&self->_placeholderColor, color);
    if (self->_contentView)
    {
      [(PXAssetUIImageViewTile *)self _updateContentView];
    }
  }
}

- (UIImage)image
{
  imageRequester = [(PXAssetUIImageViewTile *)self imageRequester];
  image = [imageRequester image];

  return image;
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
    quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    placeholderColor = v2->_placeholderColor;
    v2->_placeholderColor = quaternarySystemFillColor;

    v5 = *(off_1E77221F8 + 1);
    v2->__desiredContentsRect.origin = *off_1E77221F8;
    v2->__desiredContentsRect.size = v5;
    *&v2->_hasPlaceholder = 0;
  }

  return v2;
}

@end