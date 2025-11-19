@interface PXCMMPreviewAsset
- (BOOL)isPreviewImageDataAvailable;
- (CGRect)acceptableCropRect;
- (CGRect)bestCropRectForAspectRatio:(double)a3;
- (CGRect)faceAreaRect;
- (CGRect)preferredCropRect;
- (CGSize)size;
- (NSData)previewImageData;
- (NSString)uuid;
- (PXCMMPreviewAsset)init;
- (PXCMMPreviewAsset)initWithMomentShare:(id)a3 underlyingAsset:(id)a4;
- (UIImage)previewImage;
- (double)aspectRatio;
- (int64_t)isContentEqualTo:(id)a3;
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
    v4 = [(PHAsset *)underlyingAsset pixelWidth];
    v5 = [(PHAsset *)self->_underlyingAsset pixelHeight];
    v6 = v4;
  }

  else
  {
    v7 = [(PXCMMPreviewAsset *)self previewImage];
    [v7 size];
    v9 = v8;
    v11 = v10;

    v6 = v9;
    v5 = v11;
  }

  result.height = v5;
  result.width = v6;
  return result;
}

- (CGRect)bestCropRectForAspectRatio:(double)a3
{
  [(PXCMMPreviewAsset *)self bestCropRectForAspectRatio:0 verticalContentMode:3 cropMode:a3];
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
    v3 = [(PXCMMPreviewAsset *)self previewImageData];
    v4 = DCIM_newPLImageWithData();
    cachedImage = self->_cachedImage;
    self->_cachedImage = v4;
  }

  v6 = self->_cachedImage;

  return v6;
}

- (NSData)previewImageData
{
  v3 = [(PHMomentShare *)self->_momentShare preview];
  v4 = [v3 previewImageData];
  v5 = [v4 firstObject];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(PHMomentShare *)self->_momentShare preview];
    v7 = [v8 thumbnailImageData];
  }

  return v7;
}

- (BOOL)isPreviewImageDataAvailable
{
  v3 = [(PHMomentShare *)self->_momentShare preview];
  v4 = [v3 thumbnailImageData];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [(PHMomentShare *)self->_momentShare preview];
    v7 = [v6 previewImageData];
    v8 = [v7 firstObject];
    v5 = v8 != 0;
  }

  return v5;
}

- (int64_t)isContentEqualTo:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(PHMomentShare *)self->_momentShare preview];
    v6 = [v4 momentShare];
    v7 = [v6 preview];
    v8 = [v5 isEqual:v7];

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
  v2 = [(PXCMMPreviewAsset *)self underlyingAsset];
  v3 = [v2 uuid];

  return v3;
}

- (PXCMMPreviewAsset)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXCMMPreviewAsset.m" lineNumber:32 description:{@"%s is not available as initializer", "-[PXCMMPreviewAsset init]"}];

  abort();
}

- (PXCMMPreviewAsset)initWithMomentShare:(id)a3 underlyingAsset:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PXCMMPreviewAsset;
  v9 = [(PXCMMPreviewAsset *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_momentShare, a3);
    objc_storeStrong(&v10->_underlyingAsset, a4);
  }

  return v10;
}

@end