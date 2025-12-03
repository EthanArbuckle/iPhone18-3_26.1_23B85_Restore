@interface PUPhotoPickerScaledFileSizeEstimator
- (BOOL)wouldResizeAssetUsingResizeDescriptor:(id)descriptor;
- (CGSize)_targetSizeForResizeDescriptor:(id)descriptor;
- (CMPhotoDecompressionContainer)_figContainer;
- (PUPhotoPickerScaledFileSizeEstimator)initWithAsset:(id)asset;
- (id)_assetURL;
- (id)_assetUTI;
- (unint64_t)_assetOriginalSize;
- (unint64_t)_estimatedSizeForResizeDescriptor:(id)descriptor;
- (unint64_t)estimatedSizeForResizeDescriptor:(id)descriptor;
- (void)dealloc;
@end

@implementation PUPhotoPickerScaledFileSizeEstimator

- (unint64_t)_estimatedSizeForResizeDescriptor:(id)descriptor
{
  v19[4] = *MEMORY[0x1E69E9840];
  descriptorCopy = descriptor;
  _assetOriginalSize = 0;
  if ([(PUPhotoPickerScaledFileSizeEstimator *)self _figContainer])
  {
    [(PUPhotoPickerScaledFileSizeEstimator *)self _targetSizeForResizeDescriptor:descriptorCopy];
    if (v5 <= v6)
    {
      v5 = v6;
    }

    v18[0] = *MEMORY[0x1E6991AE0];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
    v19[0] = v7;
    v18[1] = *MEMORY[0x1E69918D0];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1785750887];
    v9 = *MEMORY[0x1E6991978];
    v19[1] = v8;
    v19[2] = &unk_1F2B7EA08;
    v10 = *MEMORY[0x1E6991970];
    v18[2] = v9;
    v18[3] = v10;
    v16 = *MEMORY[0x1E6991B90];
    v17 = &unk_1F2B7EA20;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v19[3] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:4];

    if (CMPhotoDecompressionContainerPredictTranscodedSize())
    {
      _assetOriginalSize = [(PUPhotoPickerScaledFileSizeEstimator *)self _assetOriginalSize];
    }

    _assetOriginalSize2 = _assetOriginalSize;
  }

  else
  {
    _assetOriginalSize2 = [(PUPhotoPickerScaledFileSizeEstimator *)self _assetOriginalSize];
  }

  return _assetOriginalSize2;
}

- (CMPhotoDecompressionContainer)_figContainer
{
  result = self->_figContainer;
  if (!result)
  {
    if (!CMPhotoDecompressionSessionCreate())
    {
      [(PUPhotoPickerScaledFileSizeEstimator *)self _assetURL];
      Container = CMPhotoDecompressionSessionCreateContainer();
      CFRelease(0);
      if (!Container)
      {
        self->_figContainer = 0;
      }
    }

    return self->_figContainer;
  }

  return result;
}

- (CGSize)_targetSizeForResizeDescriptor:(id)descriptor
{
  [descriptor targetSize];
  pixelWidth = v5;
  if (v5 == *MEMORY[0x1E6978E30] && pixelHeight == *(MEMORY[0x1E6978E30] + 8))
  {
    pixelWidth = [(PHAsset *)self->_asset pixelWidth];
    pixelHeight = [(PHAsset *)self->_asset pixelHeight];
  }

  v8 = pixelWidth;
  result.height = pixelHeight;
  result.width = v8;
  return result;
}

- (id)_assetURL
{
  [(PHAsset *)self->_asset fetchPropertySetsIfNeeded];
  asset = self->_asset;

  return [(PHAsset *)asset mainFileURL];
}

- (unint64_t)_assetOriginalSize
{
  [(PHAsset *)self->_asset fetchPropertySetsIfNeeded];
  originalMetadataProperties = [(PHAsset *)self->_asset originalMetadataProperties];
  originalFilesize = [originalMetadataProperties originalFilesize];

  return originalFilesize;
}

- (id)_assetUTI
{
  [(PHAsset *)self->_asset fetchPropertySetsIfNeeded];
  asset = self->_asset;

  return [(PHAsset *)asset uniformTypeIdentifier];
}

- (BOOL)wouldResizeAssetUsingResizeDescriptor:(id)descriptor
{
  [(PUPhotoPickerScaledFileSizeEstimator *)self _targetSizeForResizeDescriptor:descriptor];
  v5 = v4;
  v7 = v6;
  pixelWidth = [(PHAsset *)self->_asset pixelWidth];
  return v7 < [(PHAsset *)self->_asset pixelHeight]|| v5 < pixelWidth;
}

- (unint64_t)estimatedSizeForResizeDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = MEMORY[0x1E69C08F0];
  _assetUTI = [(PUPhotoPickerScaledFileSizeEstimator *)self _assetUTI];
  v7 = [v5 typeWithIdentifier:_assetUTI];

  if (([objc_opt_class() isAssetResizable:self->_asset] & 1) != 0 && ((objc_msgSend(v7, "conformsToType:", *MEMORY[0x1E6982E10]) & 1) != 0 || objc_msgSend(v7, "conformsToType:", *MEMORY[0x1E6982E00]) || -[PUPhotoPickerScaledFileSizeEstimator wouldResizeAssetUsingResizeDescriptor:](self, "wouldResizeAssetUsingResizeDescriptor:", descriptorCopy)))
  {
    _assetOriginalSize = [(PUPhotoPickerScaledFileSizeEstimator *)self _estimatedSizeForResizeDescriptor:descriptorCopy];
  }

  else
  {
    _assetOriginalSize = [(PUPhotoPickerScaledFileSizeEstimator *)self _assetOriginalSize];
  }

  v9 = _assetOriginalSize;

  return v9;
}

- (void)dealloc
{
  figContainer = self->_figContainer;
  if (figContainer)
  {
    CFRelease(figContainer);
  }

  v4.receiver = self;
  v4.super_class = PUPhotoPickerScaledFileSizeEstimator;
  [(PUPhotoPickerScaledFileSizeEstimator *)&v4 dealloc];
}

- (PUPhotoPickerScaledFileSizeEstimator)initWithAsset:(id)asset
{
  assetCopy = asset;
  v9.receiver = self;
  v9.super_class = PUPhotoPickerScaledFileSizeEstimator;
  v6 = [(PUPhotoPickerScaledFileSizeEstimator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_asset, asset);
  }

  return v7;
}

@end