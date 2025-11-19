@interface PXImageRequesterHelper
- (CGRect)contentsRect;
- (CGSize)contentSize;
- (void)_updateAssetOrMediaProvider;
- (void)_updateContentsRect;
- (void)_updateImage;
- (void)_updateImageRequester;
- (void)didPublishChanges:(unint64_t)a3;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)performChanges:(id)a3;
- (void)setAsset:(id)a3;
- (void)setContentSize:(CGSize)a3;
- (void)setContentsRect:(CGRect)a3;
- (void)setImage:(id)a3;
- (void)setImageRequester:(id)a3;
- (void)setMediaProvider:(id)a3;
- (void)setScale:(double)a3;
@end

@implementation PXImageRequesterHelper

- (CGRect)contentsRect
{
  x = self->_contentsRect.origin.x;
  y = self->_contentsRect.origin.y;
  width = self->_contentsRect.size.width;
  height = self->_contentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (PXImageRequesterObserverContext_159971 == a5)
  {
    v9 = v8;
    if ((v6 & 4) != 0)
    {
      [(PXImageRequesterHelper *)self _updateImage];
      v8 = v9;
    }

    if (v6 < 0)
    {
      [(PXImageRequesterHelper *)self _updateContentsRect];
      v8 = v9;
    }
  }
}

- (void)_updateContentsRect
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __45__PXImageRequesterHelper__updateContentsRect__block_invoke;
  v2[3] = &unk_1E773EBC8;
  v2[4] = self;
  [(PXImageRequesterHelper *)self performChanges:v2];
}

void __45__PXImageRequesterHelper__updateContentsRect__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 imageRequester];
  [v4 contentsRect];
  [v3 setContentsRect:?];
}

- (void)_updateImage
{
  v3 = [(PXImageRequesterHelper *)self imageRequester];
  v4 = [v3 image];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__PXImageRequesterHelper__updateImage__block_invoke;
  v6[3] = &unk_1E773EBC8;
  v7 = v4;
  v5 = v4;
  [(PXImageRequesterHelper *)self performChanges:v6];
}

- (void)_updateAssetOrMediaProvider
{
  v3 = [(PXImageRequesterHelper *)self asset];
  v4 = [(PXImageRequesterHelper *)self mediaProvider];
  v5 = v4;
  if (v3 && v4)
  {
    v6 = [(PXImageRequesterHelper *)self imageRequester];
    if (v6)
    {
      v7 = v6;
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __53__PXImageRequesterHelper__updateAssetOrMediaProvider__block_invoke;
      v11 = &unk_1E773EBA0;
      v12 = v3;
      v13 = v5;
      [(PXImageRequester *)v7 performChanges:&v8];
      [(PXImageRequesterHelper *)self _updateImageRequester:v8];
    }

    else
    {
      v7 = [[PXImageRequester alloc] initWithMediaProvider:v5 asset:v3];
      [(PXImageRequesterHelper *)self setImageRequester:v7];
    }
  }

  else
  {
    [(PXImageRequesterHelper *)self setImageRequester:0];
  }
}

void __53__PXImageRequesterHelper__updateAssetOrMediaProvider__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setAsset:v3];
  [v4 setMediaProvider:*(a1 + 40)];
}

- (void)_updateImageRequester
{
  [(PXImageRequesterHelper *)self imageRequester];
  if (objc_claimAutoreleasedReturnValue())
  {
    [(PXImageRequesterHelper *)self asset];
    objc_claimAutoreleasedReturnValue();
    PXSizeIsEmpty();
  }
}

void __47__PXImageRequesterHelper__updateImageRequester__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 136);
  v4 = *(*(a1 + 32) + 144);
  v5 = a2;
  [v5 setContentSize:{v3, v4}];
  [v5 setDesiredContentsRect:{*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64)}];
  [v5 setViewportSize:{*(*(a1 + 32) + 136), *(*(a1 + 32) + 144)}];
  [v5 setScale:*(*(a1 + 32) + 112)];
}

- (void)setImageRequester:(id)a3
{
  v5 = a3;
  imageRequester = self->_imageRequester;
  if (imageRequester != v5)
  {
    v7 = v5;
    [(PXImageRequester *)imageRequester unregisterChangeObserver:self context:PXImageRequesterObserverContext_159971];
    objc_storeStrong(&self->_imageRequester, a3);
    [(PXImageRequester *)self->_imageRequester registerChangeObserver:self context:PXImageRequesterObserverContext_159971];
    [(PXImageRequesterHelper *)self _updateImageRequester];
    [(PXImageRequesterHelper *)self _updateImage];
    v5 = v7;
  }
}

- (void)setContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_contentsRect = &self->_contentsRect;
  if (!CGRectEqualToRect(self->_contentsRect, a3))
  {
    p_contentsRect->origin.x = x;
    p_contentsRect->origin.y = y;
    p_contentsRect->size.width = width;
    p_contentsRect->size.height = height;

    [(PXImageRequesterHelper *)self signalChange:8];
  }
}

- (void)setImage:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_image != v5)
  {
    v8 = v5;
    v7 = [(UIImage *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_image, a3);
      [(PXImageRequesterHelper *)self signalChange:32];
      v6 = v8;
    }
  }
}

- (void)setScale:(double)a3
{
  if (self->_scale != a3)
  {
    self->_scale = a3;
    [(PXImageRequesterHelper *)self signalChange:16];
  }
}

- (void)setContentSize:(CGSize)a3
{
  if (a3.width != self->_contentSize.width || a3.height != self->_contentSize.height)
  {
    self->_contentSize = a3;
    [(PXImageRequesterHelper *)self signalChange:4];
  }
}

- (void)setMediaProvider:(id)a3
{
  v5 = a3;
  if (self->_mediaProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mediaProvider, a3);
    [(PXImageRequesterHelper *)self signalChange:2];
    v5 = v6;
  }
}

- (void)setAsset:(id)a3
{
  v5 = a3;
  if (self->_asset != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_asset, a3);
    [(PXImageRequesterHelper *)self signalChange:1];
    v5 = v6;
  }
}

- (void)didPublishChanges:(unint64_t)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PXImageRequesterHelper;
  [(PXImageRequesterHelper *)&v5 didPublishChanges:?];
  if ((v3 & 3) != 0)
  {
    [(PXImageRequesterHelper *)self _updateAssetOrMediaProvider];
  }

  if ((v3 & 0x14) != 0)
  {
    [(PXImageRequesterHelper *)self _updateImageRequester];
  }
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXImageRequesterHelper;
  [(PXImageRequesterHelper *)&v3 performChanges:a3];
}

@end