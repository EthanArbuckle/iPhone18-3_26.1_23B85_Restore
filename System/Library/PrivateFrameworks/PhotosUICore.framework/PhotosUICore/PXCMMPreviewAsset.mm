@interface PXCMMPreviewAsset
- (BOOL)isPreviewImageDataAvailable;
- (CGRect)acceptableCropRect;
- (CGRect)bestCropRectForAspectRatio:(double)ratio;
- (CGRect)faceAreaRect;
- (CGRect)preferredCropRect;
- (CGSize)size;
- (NSData)previewImageData;
- (NSString)uuid;
- (PXCMMPreviewAsset)init;
- (PXCMMPreviewAsset)initWithMomentShare:(id)share underlyingAsset:(id)asset;
- (UIImage)previewImage;
- (double)aspectRatio;
- (int64_t)isContentEqualTo:(id)to;
@end

@implementation PXCMMPreviewAsset

- (double)aspectRatio
{
  [(PXCMMPreviewAsset *)self size];
  result = v2 / v3;
  if (v3 <= 0.0)
  {
    return 1.0;
  }

  return result;
}

- (CGSize)size
{
  underlyingAsset = self->_underlyingAsset;
  if (underlyingAsset)
  {
    pixelWidth = [(PHAsset *)underlyingAsset pixelWidth];
    pixelHeight = [(PHAsset *)self->_underlyingAsset pixelHeight];
    v6 = pixelWidth;
  }

  else
  {
    previewImage = [(PXCMMPreviewAsset *)self previewImage];
    [previewImage size];
    v9 = v8;
    v11 = v10;

    v6 = v9;
    pixelHeight = v11;
  }

  result.height = pixelHeight;
  result.width = v6;
  return result;
}

- (CGRect)bestCropRectForAspectRatio:(double)ratio
{
  [(PXCMMPreviewAsset *)self bestCropRectForAspectRatio:0 verticalContentMode:3 cropMode:ratio];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (UIImage)previewImage
{
  if (!self->_cachedImage && [(PXCMMPreviewAsset *)self isPreviewImageDataAvailable])
  {
    previewImageData = [(PXCMMPreviewAsset *)self previewImageData];
    v4 = DCIM_newPLImageWithData();
    cachedImage = self->_cachedImage;
    self->_cachedImage = v4;
  }

  v6 = self->_cachedImage;

  return v6;
}

- (NSData)previewImageData
{
  preview = [(PHMomentShare *)self->_momentShare preview];
  previewImageData = [preview previewImageData];
  firstObject = [previewImageData firstObject];
  v6 = firstObject;
  if (firstObject)
  {
    thumbnailImageData = firstObject;
  }

  else
  {
    preview2 = [(PHMomentShare *)self->_momentShare preview];
    thumbnailImageData = [preview2 thumbnailImageData];
  }

  return thumbnailImageData;
}

- (BOOL)isPreviewImageDataAvailable
{
  preview = [(PHMomentShare *)self->_momentShare preview];
  thumbnailImageData = [preview thumbnailImageData];
  if (thumbnailImageData)
  {
    v5 = 1;
  }

  else
  {
    preview2 = [(PHMomentShare *)self->_momentShare preview];
    previewImageData = [preview2 previewImageData];
    firstObject = [previewImageData firstObject];
    v5 = firstObject != 0;
  }

  return v5;
}

- (int64_t)isContentEqualTo:(id)to
{
  toCopy = to;
  if (toCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    preview = [(PHMomentShare *)self->_momentShare preview];
    momentShare = [toCopy momentShare];
    preview2 = [momentShare preview];
    v8 = [preview isEqual:preview2];

    if (v8)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (CGRect)faceAreaRect
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)acceptableCropRect
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)preferredCropRect
{
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v4 = *(MEMORY[0x1E695F050] + 16);
  v5 = *(MEMORY[0x1E695F050] + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (NSString)uuid
{
  underlyingAsset = [(PXCMMPreviewAsset *)self underlyingAsset];
  uuid = [underlyingAsset uuid];

  return uuid;
}

- (PXCMMPreviewAsset)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXCMMPreviewAsset.m" lineNumber:32 description:{@"%s is not available as initializer", "-[PXCMMPreviewAsset init]"}];

  abort();
}

- (PXCMMPreviewAsset)initWithMomentShare:(id)share underlyingAsset:(id)asset
{
  shareCopy = share;
  assetCopy = asset;
  v12.receiver = self;
  v12.super_class = PXCMMPreviewAsset;
  v9 = [(PXCMMPreviewAsset *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_momentShare, share);
    objc_storeStrong(&v10->_underlyingAsset, asset);
  }

  return v10;
}

@end