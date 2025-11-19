@interface PXUIImageTile
- (CGRect)_contentsRect;
- (CGSize)_contentSize;
- (UIView)view;
- (void)_performChanges:(id)a3;
- (void)_setAnimationCount:(int64_t)a3;
- (void)_setContentSize:(CGSize)a3;
- (void)_setContentsRect:(CGRect)a3;
- (void)_setDisplayScale:(double)a3;
- (void)_setNeedsUpdate;
- (void)_setSpec:(id)a3;
- (void)_updateIfNeeded;
- (void)_updateImageIfNeeded;
- (void)_updateImageRequesterIfNeeded;
- (void)_updateImageViewIfNeeded;
- (void)becomeReusable;
- (void)didAnimateToGeometry:(PXTileGeometry *)a3 toUserData:(id)a4 withOptions:(id)a5;
- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setDrawsFocusRing:(BOOL)a3;
- (void)setImageRequester:(id)a3;
- (void)willAnimateToGeometry:(PXTileGeometry *)a3 toUserData:(id)a4 withOptions:(id)a5;
@end

@implementation PXUIImageTile

- (CGRect)_contentsRect
{
  x = self->__contentsRect.origin.x;
  y = self->__contentsRect.origin.y;
  width = self->__contentsRect.size.width;
  height = self->__contentsRect.size.height;
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
  v6 = a4;
  v9 = a3;
  if (PXImageRequesterObservationContext != a5)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PXUIImageTile.m" lineNumber:295 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = v9;
  if ((v6 & 4) != 0)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__PXUIImageTile_observable_didChange_context___block_invoke;
    v12[3] = &unk_1E774C648;
    v12[4] = self;
    [(PXUIImageTile *)self _performChanges:v12];
  }
}

- (void)becomeReusable
{
  [(PXUIImageTile *)self setImageRequester:0];
  imageView = self->_imageView;

  [(PXImageUIView *)imageView setHidden:1];
}

- (void)_setDisplayScale:(double)a3
{
  if (self->__displayScale != a3)
  {
    self->__displayScale = a3;
    [(PXUIImageTile *)self _invalidateImageRequester];
  }
}

- (void)_setContentSize:(CGSize)a3
{
  if (a3.width != self->__contentSize.width || a3.height != self->__contentSize.height)
  {
    self->__contentSize = a3;
    [(PXUIImageTile *)self _invalidateImageRequester];
  }
}

- (void)setDrawsFocusRing:(BOOL)a3
{
  if (self->_drawsFocusRing != a3)
  {
    self->_drawsFocusRing = a3;
    imageView = self->_imageView;
    if (imageView)
    {
      [(PXImageUIView *)imageView setDrawsFocusRing:?];
    }
  }
}

- (void)setImageRequester:(id)a3
{
  v5 = a3;
  imageRequester = self->_imageRequester;
  if (imageRequester != v5)
  {
    [(PXImageRequester *)imageRequester unregisterChangeObserver:self context:PXImageRequesterObservationContext];
    objc_storeStrong(&self->_imageRequester, a3);
    [(PXImageRequester *)self->_imageRequester registerChangeObserver:self context:PXImageRequesterObservationContext];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __35__PXUIImageTile_setImageRequester___block_invoke;
    v7[3] = &unk_1E774C648;
    v7[4] = self;
    [(PXUIImageTile *)self _performChanges:v7];
  }
}

uint64_t __35__PXUIImageTile_setImageRequester___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateImageRequester];
  v2 = *(a1 + 32);

  return [v2 _invalidateImage];
}

- (void)didAnimateToGeometry:(PXTileGeometry *)a3 toUserData:(id)a4 withOptions:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__PXUIImageTile_didAnimateToGeometry_toUserData_withOptions___block_invoke;
  v5[3] = &unk_1E774C648;
  v5[4] = self;
  [(PXUIImageTile *)self _performChanges:v5, a4, a5];
}

uint64_t __61__PXUIImageTile_didAnimateToGeometry_toUserData_withOptions___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _animationCount] - 1;

  return [v1 _setAnimationCount:v2];
}

- (void)willAnimateToGeometry:(PXTileGeometry *)a3 toUserData:(id)a4 withOptions:(id)a5
{
  v7 = a5;
  self->_animationFlags = 0;
  if ([v7 flags])
  {
    self->_animationFlags |= 2uLL;
  }

  else
  {
    v8 = [(PXUIImageTile *)self view];
    if (([v7 flags] & 2) != 0)
    {
      [v8 bounds];
      if (a3->size.width == v10 && a3->size.height == v9)
      {
        v12 = [(PXUIImageTile *)self _spec];
        v13 = [v12 overlaySpecs];
        v14 = [v13 count];

        if (v14)
        {
          self->_animationFlags |= 1uLL;
        }
      }
    }
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__PXUIImageTile_willAnimateToGeometry_toUserData_withOptions___block_invoke;
  v15[3] = &unk_1E774C648;
  v15[4] = self;
  [(PXUIImageTile *)self _performChanges:v15];
}

uint64_t __62__PXUIImageTile_willAnimateToGeometry_toUserData_withOptions___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _animationCount] + 1;

  return [v1 _setAnimationCount:v2];
}

- (void)didApplyGeometry:(PXTileGeometry *)a3 withUserData:(id)a4
{
  v6 = [a4 viewSpec];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 imageSpec];

    v6 = v7;
  }

  [(PXUIImageTile *)self _setSpec:v6];
  if (v6)
  {
    [v6 displayScale];
    v9 = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [v10 scale];
    v9 = v11;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v12 = *&a3->contentSize.height;
  v27 = *&a3->hidden;
  v28 = v12;
  v13 = *&a3->contentsRect.size.height;
  v29 = *&a3->contentsRect.origin.y;
  v30 = v13;
  v14 = *&a3->transform.c;
  v23 = *&a3->transform.a;
  v24 = v14;
  v15 = *&a3->alpha;
  v25 = *&a3->transform.tx;
  v26 = v15;
  size = a3->frame.size;
  origin = a3->frame.origin;
  v20 = size;
  v17 = a3->size;
  center = a3->center;
  v18[2] = __47__PXUIImageTile_didApplyGeometry_withUserData___block_invoke;
  v18[3] = &unk_1E773D2B8;
  v18[4] = self;
  v22 = v17;
  v31 = v9;
  [(PXUIImageTile *)self _performChanges:v18];
}

uint64_t __47__PXUIImageTile_didApplyGeometry_withUserData___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setContentSize:{*(a1 + 176), *(a1 + 184)}];
  [*(a1 + 32) _setDisplayScale:*(a1 + 232)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 192);
  v4 = *(a1 + 200);
  v5 = *(a1 + 208);
  v6 = *(a1 + 216);

  return [v2 _setContentsRect:{v3, v4, v5, v6}];
}

- (void)_setContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (!CGRectEqualToRect(self->__contentsRect, a3))
  {
    self->__contentsRect.origin.x = x;
    self->__contentsRect.origin.y = y;
    self->__contentsRect.size.width = width;
    self->__contentsRect.size.height = height;
    v8 = [(PXUIImageTile *)self view];
    [v8 setContentsRect:{self->__contentsRect.origin.x, self->__contentsRect.origin.y, self->__contentsRect.size.width, self->__contentsRect.size.height}];
  }
}

- (void)_setSpec:(id)a3
{
  v5 = a3;
  if (self->__spec != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->__spec, a3);
    [(PXImageUIView *)self->_imageView setSpec:v6];
    v5 = v6;
  }
}

- (UIView)view
{
  imageView = self->_imageView;
  if (!imageView)
  {
    v4 = objc_alloc_init(PXImageUIView);
    v5 = self->_imageView;
    self->_imageView = v4;

    [(PXImageUIView *)self->_imageView setContentMode:2];
    [(PXImageUIView *)self->_imageView setClipsToBounds:0];
    [(PXImageUIView *)self->_imageView setDrawsFocusRing:[(PXUIImageTile *)self drawsFocusRing]];
    [(PXImageUIView *)self->_imageView setSpec:self->__spec];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __21__PXUIImageTile_view__block_invoke;
    v7[3] = &unk_1E774C648;
    v7[4] = self;
    [(PXUIImageTile *)self _performChanges:v7];
    imageView = self->_imageView;
  }

  return imageView;
}

uint64_t __21__PXUIImageTile_view__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _invalidateImageView];
  v2 = *(a1 + 32);

  return [v2 _invalidateImage];
}

- (void)_updateImageIfNeeded
{
  if (self->_needsUpdateFlags.image)
  {
    self->_needsUpdateFlags.image = 0;
    v5 = [(PXUIImageTile *)self imageRequester];
    v4 = [v5 image];
    [(PXImageUIView *)self->_imageView setImage:v4];
  }
}

- (void)_updateImageRequesterIfNeeded
{
  if (self->_needsUpdateFlags.imageRequester)
  {
    v16[8] = v7;
    v16[9] = v6;
    v16[10] = v5;
    v16[11] = v4;
    v16[14] = v2;
    v16[15] = v3;
    self->_needsUpdateFlags.imageRequester = 0;
    [(PXUIImageTile *)self _contentSize];
    v10 = v9;
    v12 = v11;
    [(PXUIImageTile *)self _displayScale];
    v14 = v13;
    v15 = [(PXUIImageTile *)self imageRequester];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __46__PXUIImageTile__updateImageRequesterIfNeeded__block_invoke;
    v16[3] = &unk_1E773D290;
    v16[5] = v10;
    v16[6] = v12;
    v16[7] = v14;
    v16[4] = self;
    [v15 performChanges:v16];
  }
}

void __46__PXUIImageTile__updateImageRequesterIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v7 = a2;
  [v7 setContentSize:{v3, v4}];
  [v7 setScale:*(a1 + 56)];
  [*(*(a1 + 32) + 16) bounds];
  [v7 setViewportSize:{v5, v6}];
}

- (void)_updateImageViewIfNeeded
{
  if (self->_needsUpdateFlags.imageView)
  {
    self->_needsUpdateFlags.imageView = 0;
    v4 = [(PXUIImageTile *)self _animationCount]> 0;
    imageView = self->_imageView;
    animationFlags = self->_animationFlags;

    [(PXImageUIView *)imageView setAnimating:v4 withFlags:animationFlags];
  }
}

- (void)_setNeedsUpdate
{
  if (!self->_isPerformingChanges && !self->_isPerformingUpdates)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PXUIImageTile.m" lineNumber:99 description:@"not inside -performChanges: or _updateIfNeeded"];
  }
}

- (void)_updateIfNeeded
{
  if ([(PXUIImageTile *)self _needsUpdate])
  {
    isPerformingUpdates = self->_isPerformingUpdates;
    self->_isPerformingUpdates = 1;
    [(PXUIImageTile *)self _updateImageViewIfNeeded];
    [(PXUIImageTile *)self _updateImageRequesterIfNeeded];
    [(PXUIImageTile *)self _updateImageIfNeeded];
    self->_isPerformingUpdates = isPerformingUpdates;
    if ([(PXUIImageTile *)self _needsUpdate])
    {
      v5 = [MEMORY[0x1E696AAA8] currentHandler];
      [v5 handleFailureInMethod:a2 object:self file:@"PXUIImageTile.m" lineNumber:87 description:@"update still needed after update pass"];
    }
  }
}

- (void)_performChanges:(id)a3
{
  v4 = a3;
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  v6 = v4;
  if (v4)
  {
    v4[2](v4);
    v4 = v6;
  }

  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges)
  {
    [(PXUIImageTile *)self _updateIfNeeded];
    v4 = v6;
  }
}

- (void)_setAnimationCount:(int64_t)a3
{
  if (self->__animationCount != a3)
  {
    self->__animationCount = a3;
    [(PXUIImageTile *)self _invalidateImageView];
  }
}

@end