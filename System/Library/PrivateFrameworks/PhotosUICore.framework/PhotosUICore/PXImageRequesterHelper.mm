@interface PXImageRequesterHelper
- (CGRect)contentsRect;
- (CGSize)contentSize;
- (void)_updateAssetOrMediaProvider;
- (void)_updateContentsRect;
- (void)_updateImage;
- (void)_updateImageRequester;
- (void)didPublishChanges:(unint64_t)changes;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)setAsset:(id)asset;
- (void)setContentSize:(CGSize)size;
- (void)setContentsRect:(CGRect)rect;
- (void)setImage:(id)image;
- (void)setImageRequester:(id)requester;
- (void)setMediaProvider:(id)provider;
- (void)setScale:(double)scale;
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

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXImageRequesterObserverContext_159971 == context)
  {
    v9 = observableCopy;
    if ((changeCopy & 4) != 0)
    {
      [(PXImageRequesterHelper *)self _updateImage];
      observableCopy = v9;
    }

    if (changeCopy < 0)
    {
      [(PXImageRequesterHelper *)self _updateContentsRect];
      observableCopy = v9;
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
  imageRequester = [(PXImageRequesterHelper *)self imageRequester];
  image = [imageRequester image];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__PXImageRequesterHelper__updateImage__block_invoke;
  v6[3] = &unk_1E773EBC8;
  v7 = image;
  v5 = image;
  [(PXImageRequesterHelper *)self performChanges:v6];
}

- (void)_updateAssetOrMediaProvider
{
  asset = [(PXImageRequesterHelper *)self asset];
  mediaProvider = [(PXImageRequesterHelper *)self mediaProvider];
  v5 = mediaProvider;
  if (asset && mediaProvider)
  {
    imageRequester = [(PXImageRequesterHelper *)self imageRequester];
    if (imageRequester)
    {
      v7 = imageRequester;
      v8 = MEMORY[0x1E69E9820];
      v9 = 3221225472;
      v10 = __53__PXImageRequesterHelper__updateAssetOrMediaProvider__block_invoke;
      v11 = &unk_1E773EBA0;
      v12 = asset;
      v13 = v5;
      [(PXImageRequester *)v7 performChanges:&v8];
      [(PXImageRequesterHelper *)self _updateImageRequester:v8];
    }

    else
    {
      v7 = [[PXImageRequester alloc] initWithMediaProvider:v5 asset:asset];
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

- (void)setImageRequester:(id)requester
{
  requesterCopy = requester;
  imageRequester = self->_imageRequester;
  if (imageRequester != requesterCopy)
  {
    v7 = requesterCopy;
    [(PXImageRequester *)imageRequester unregisterChangeObserver:self context:PXImageRequesterObserverContext_159971];
    objc_storeStrong(&self->_imageRequester, requester);
    [(PXImageRequester *)self->_imageRequester registerChangeObserver:self context:PXImageRequesterObserverContext_159971];
    [(PXImageRequesterHelper *)self _updateImageRequester];
    [(PXImageRequesterHelper *)self _updateImage];
    requesterCopy = v7;
  }
}

- (void)setContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_contentsRect = &self->_contentsRect;
  if (!CGRectEqualToRect(self->_contentsRect, rect))
  {
    p_contentsRect->origin.x = x;
    p_contentsRect->origin.y = y;
    p_contentsRect->size.width = width;
    p_contentsRect->size.height = height;

    [(PXImageRequesterHelper *)self signalChange:8];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  v6 = imageCopy;
  if (self->_image != imageCopy)
  {
    v8 = imageCopy;
    v7 = [(UIImage *)imageCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_image, image);
      [(PXImageRequesterHelper *)self signalChange:32];
      v6 = v8;
    }
  }
}

- (void)setScale:(double)scale
{
  if (self->_scale != scale)
  {
    self->_scale = scale;
    [(PXImageRequesterHelper *)self signalChange:16];
  }
}

- (void)setContentSize:(CGSize)size
{
  if (size.width != self->_contentSize.width || size.height != self->_contentSize.height)
  {
    self->_contentSize = size;
    [(PXImageRequesterHelper *)self signalChange:4];
  }
}

- (void)setMediaProvider:(id)provider
{
  providerCopy = provider;
  if (self->_mediaProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_mediaProvider, provider);
    [(PXImageRequesterHelper *)self signalChange:2];
    providerCopy = v6;
  }
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  if (self->_asset != assetCopy)
  {
    v6 = assetCopy;
    objc_storeStrong(&self->_asset, asset);
    [(PXImageRequesterHelper *)self signalChange:1];
    assetCopy = v6;
  }
}

- (void)didPublishChanges:(unint64_t)changes
{
  changesCopy = changes;
  v5.receiver = self;
  v5.super_class = PXImageRequesterHelper;
  [(PXImageRequesterHelper *)&v5 didPublishChanges:?];
  if ((changesCopy & 3) != 0)
  {
    [(PXImageRequesterHelper *)self _updateAssetOrMediaProvider];
  }

  if ((changesCopy & 0x14) != 0)
  {
    [(PXImageRequesterHelper *)self _updateImageRequester];
  }
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXImageRequesterHelper;
  [(PXImageRequesterHelper *)&v3 performChanges:changes];
}

@end