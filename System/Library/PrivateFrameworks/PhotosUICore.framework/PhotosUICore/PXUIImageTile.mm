@interface PXUIImageTile
- (CGRect)_contentsRect;
- (CGSize)_contentSize;
- (UIView)view;
- (void)_performChanges:(id)changes;
- (void)_setAnimationCount:(int64_t)count;
- (void)_setContentSize:(CGSize)size;
- (void)_setContentsRect:(CGRect)rect;
- (void)_setDisplayScale:(double)scale;
- (void)_setNeedsUpdate;
- (void)_setSpec:(id)spec;
- (void)_updateIfNeeded;
- (void)_updateImageIfNeeded;
- (void)_updateImageRequesterIfNeeded;
- (void)_updateImageViewIfNeeded;
- (void)becomeReusable;
- (void)didAnimateToGeometry:(PXTileGeometry *)geometry toUserData:(id)data withOptions:(id)options;
- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setDrawsFocusRing:(BOOL)ring;
- (void)setImageRequester:(id)requester;
- (void)willAnimateToGeometry:(PXTileGeometry *)geometry toUserData:(id)data withOptions:(id)options;
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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXImageRequesterObservationContext != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXUIImageTile.m" lineNumber:295 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v10 = observableCopy;
  if ((changeCopy & 4) != 0)
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

- (void)_setDisplayScale:(double)scale
{
  if (self->__displayScale != scale)
  {
    self->__displayScale = scale;
    [(PXUIImageTile *)self _invalidateImageRequester];
  }
}

- (void)_setContentSize:(CGSize)size
{
  if (size.width != self->__contentSize.width || size.height != self->__contentSize.height)
  {
    self->__contentSize = size;
    [(PXUIImageTile *)self _invalidateImageRequester];
  }
}

- (void)setDrawsFocusRing:(BOOL)ring
{
  if (self->_drawsFocusRing != ring)
  {
    self->_drawsFocusRing = ring;
    imageView = self->_imageView;
    if (imageView)
    {
      [(PXImageUIView *)imageView setDrawsFocusRing:?];
    }
  }
}

- (void)setImageRequester:(id)requester
{
  requesterCopy = requester;
  imageRequester = self->_imageRequester;
  if (imageRequester != requesterCopy)
  {
    [(PXImageRequester *)imageRequester unregisterChangeObserver:self context:PXImageRequesterObservationContext];
    objc_storeStrong(&self->_imageRequester, requester);
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

- (void)didAnimateToGeometry:(PXTileGeometry *)geometry toUserData:(id)data withOptions:(id)options
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__PXUIImageTile_didAnimateToGeometry_toUserData_withOptions___block_invoke;
  v5[3] = &unk_1E774C648;
  v5[4] = self;
  [(PXUIImageTile *)self _performChanges:v5, data, options];
}

uint64_t __61__PXUIImageTile_didAnimateToGeometry_toUserData_withOptions___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _animationCount] - 1;

  return [v1 _setAnimationCount:v2];
}

- (void)willAnimateToGeometry:(PXTileGeometry *)geometry toUserData:(id)data withOptions:(id)options
{
  optionsCopy = options;
  self->_animationFlags = 0;
  if ([optionsCopy flags])
  {
    self->_animationFlags |= 2uLL;
  }

  else
  {
    view = [(PXUIImageTile *)self view];
    if (([optionsCopy flags] & 2) != 0)
    {
      [view bounds];
      if (geometry->size.width == v10 && geometry->size.height == v9)
      {
        _spec = [(PXUIImageTile *)self _spec];
        overlaySpecs = [_spec overlaySpecs];
        v14 = [overlaySpecs count];

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

- (void)didApplyGeometry:(PXTileGeometry *)geometry withUserData:(id)data
{
  viewSpec = [data viewSpec];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    imageSpec = [viewSpec imageSpec];

    viewSpec = imageSpec;
  }

  [(PXUIImageTile *)self _setSpec:viewSpec];
  if (viewSpec)
  {
    [viewSpec displayScale];
    v9 = v8;
  }

  else
  {
    px_mainScreen = [MEMORY[0x1E69DCEB0] px_mainScreen];
    [px_mainScreen scale];
    v9 = v11;
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v12 = *&geometry->contentSize.height;
  v27 = *&geometry->hidden;
  v28 = v12;
  v13 = *&geometry->contentsRect.size.height;
  v29 = *&geometry->contentsRect.origin.y;
  v30 = v13;
  v14 = *&geometry->transform.c;
  v23 = *&geometry->transform.a;
  v24 = v14;
  v15 = *&geometry->alpha;
  v25 = *&geometry->transform.tx;
  v26 = v15;
  size = geometry->frame.size;
  origin = geometry->frame.origin;
  v20 = size;
  v17 = geometry->size;
  center = geometry->center;
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

- (void)_setContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (!CGRectEqualToRect(self->__contentsRect, rect))
  {
    self->__contentsRect.origin.x = x;
    self->__contentsRect.origin.y = y;
    self->__contentsRect.size.width = width;
    self->__contentsRect.size.height = height;
    view = [(PXUIImageTile *)self view];
    [view setContentsRect:{self->__contentsRect.origin.x, self->__contentsRect.origin.y, self->__contentsRect.size.width, self->__contentsRect.size.height}];
  }
}

- (void)_setSpec:(id)spec
{
  specCopy = spec;
  if (self->__spec != specCopy)
  {
    v6 = specCopy;
    objc_storeStrong(&self->__spec, spec);
    [(PXImageUIView *)self->_imageView setSpec:v6];
    specCopy = v6;
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
    imageRequester = [(PXUIImageTile *)self imageRequester];
    image = [imageRequester image];
    [(PXImageUIView *)self->_imageView setImage:image];
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
    imageRequester = [(PXUIImageTile *)self imageRequester];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __46__PXUIImageTile__updateImageRequesterIfNeeded__block_invoke;
    v16[3] = &unk_1E773D290;
    v16[5] = v10;
    v16[6] = v12;
    v16[7] = v14;
    v16[4] = self;
    [imageRequester performChanges:v16];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXUIImageTile.m" lineNumber:99 description:@"not inside -performChanges: or _updateIfNeeded"];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXUIImageTile.m" lineNumber:87 description:@"update still needed after update pass"];
    }
  }
}

- (void)_performChanges:(id)changes
{
  changesCopy = changes;
  isPerformingChanges = self->_isPerformingChanges;
  self->_isPerformingChanges = 1;
  v6 = changesCopy;
  if (changesCopy)
  {
    changesCopy[2](changesCopy);
    changesCopy = v6;
  }

  self->_isPerformingChanges = isPerformingChanges;
  if (!isPerformingChanges)
  {
    [(PXUIImageTile *)self _updateIfNeeded];
    changesCopy = v6;
  }
}

- (void)_setAnimationCount:(int64_t)count
{
  if (self->__animationCount != count)
  {
    self->__animationCount = count;
    [(PXUIImageTile *)self _invalidateImageView];
  }
}

@end