@interface PXFileBackedAsset
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFileBackedAsset:(id)asset;
- (BOOL)isFavorite;
- (BOOL)isInCloud;
- (BOOL)representsBurst;
- (CGAffineTransform)transform;
- (CGPoint)positionOffset;
- (CGRect)acceptableCropRect;
- (CGRect)bestCropRectForAspectRatio:(double)ratio;
- (CGRect)faceAreaRect;
- (CGRect)preferredCropRect;
- (CGSize)size;
- (CLLocation)location;
- (NSDate)creationDate;
- (NSString)description;
- (NSString)uuid;
- (PXFileBackedAsset)init;
- (PXFileBackedAsset)initWithDescription:(id)description;
- (PXFileBackedAsset)initWithURL:(id)l previewImage:(id)image;
- (double)aspectRatio;
- (int64_t)mediaType;
- (int64_t)playbackStyle;
- (unint64_t)mediaSubtypes;
- (unsigned)playbackVariation;
- (void)_loadFileMetadataIfNeeded;
@end

@implementation PXFileBackedAsset

- (void)_loadFileMetadataIfNeeded
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_metadata)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v3 = getPFMetadataClass_softClass;
    v11 = getPFMetadataClass_softClass;
    if (!getPFMetadataClass_softClass)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __getPFMetadataClass_block_invoke;
      v7[3] = &unk_1E7BB8720;
      v7[4] = &v8;
      __getPFMetadataClass_block_invoke(v7);
      v3 = v9[3];
    }

    v4 = v3;
    _Block_object_dispose(&v8, 8);
    v5 = [[v3 alloc] initWithImageURL:selfCopy->_url contentType:0 options:13 timeZoneLookup:0 cacheImageSource:0 cacheImageData:0];
    metadata = selfCopy->_metadata;
    selfCopy->_metadata = v5;
  }

  objc_sync_exit(selfCopy);
}

- (CLLocation)location
{
  [(PXFileBackedAsset *)self _loadFileMetadataIfNeeded];
  metadata = self->_metadata;

  return [(PFMetadata *)metadata gpsLocation];
}

- (NSDate)creationDate
{
  [(PXFileBackedAsset *)self _loadFileMetadataIfNeeded];
  metadata = self->_metadata;

  return [(PFMetadata *)metadata creationDate];
}

- (CGRect)bestCropRectForAspectRatio:(double)ratio
{
  [(PXFileBackedAsset *)self size];
  v4 = v3;
  v6 = v5;
  v7 = 0.0;
  v8 = v3 * 0.5 + 0.0;
  v9 = v5 * 0.5 + 0.0;
  PFSizeWithAspectRatioFittingSize();
  v12 = v11;
  v13 = v8 + v11 * -0.5;
  v14 = 0.0;
  if (v4 != 0.0)
  {
    v13 = v13 / v4;
    v14 = v12 / v4;
  }

  v15 = v9 + v10 * -0.5;
  if (v6 != 0.0)
  {
    v15 = v15 / v6;
    v7 = v10 / v6;
  }

  v16 = v15;
  v17 = v7;
  result.size.height = v17;
  result.size.width = v14;
  result.origin.y = v16;
  result.origin.x = v13;
  return result;
}

- (double)aspectRatio
{
  v13 = *MEMORY[0x1E69E9840];
  [(PXFileBackedAsset *)self size];
  if (v3 <= 0.0)
  {
    v4 = PFUIGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(PXFileBackedAsset *)self size];
      v5 = NSStringFromCGSize(v14);
      v9 = 138412546;
      selfCopy = self;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1B3F73000, v4, OS_LOG_TYPE_ERROR, "PXFileBackedAsset %@: Invalid size encountered: %@", &v9, 0x16u);
    }
  }

  [(PXFileBackedAsset *)self size];
  PXSizeGetAspectRatio(v6, v7);
  return result;
}

- (CGPoint)positionOffset
{
  v2 = *MEMORY[0x1E695EFF8];
  v3 = *(MEMORY[0x1E695EFF8] + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGAffineTransform)transform
{
  v3 = MEMORY[0x1E695EFD0];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  *&retstr->a = *MEMORY[0x1E695EFD0];
  *&retstr->c = v4;
  *&retstr->tx = *(v3 + 32);
  return self;
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
  v2 = 0.0;
  v3 = 0.0;
  v4 = 1.0;
  v5 = 1.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)preferredCropRect
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 1.0;
  v5 = 1.0;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGSize)size
{
  [(PXFileBackedAsset *)self _loadFileMetadataIfNeeded];
  metadata = self->_metadata;

  [(PFMetadata *)metadata orientedPixelSize];
  result.height = v5;
  result.width = v4;
  return result;
}

- (NSString)uuid
{
  fileBackedUUID = self->_fileBackedUUID;
  if (!fileBackedUUID)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v6 = self->_fileBackedUUID;
    self->_fileBackedUUID = uUIDString;

    fileBackedUUID = self->_fileBackedUUID;
  }

  return fileBackedUUID;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PXFileBackedAsset *)self isEqualToFileBackedAsset:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToFileBackedAsset:(id)asset
{
  assetCopy = asset;
  v5 = [(PXFileBackedAsset *)self url];
  v6 = [assetCopy url];

  LOBYTE(assetCopy) = [v5 isEqual:v6];
  return assetCopy;
}

- (BOOL)isInCloud
{
  v2 = [(PXFileBackedAssetDescription *)self->_description objectForKeyedSubscript:@"isInCloud"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)representsBurst
{
  v2 = [(PXFileBackedAssetDescription *)self->_description objectForKeyedSubscript:@"representsBurst"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isFavorite
{
  v2 = [(PXFileBackedAssetDescription *)self->_description objectForKeyedSubscript:@"favorite"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (unsigned)playbackVariation
{
  v2 = [(PXFileBackedAssetDescription *)self->_description objectForKeyedSubscript:@"playbackVariation"];
  v3 = v2;
  if (v2)
  {
    shortValue = [v2 shortValue];
  }

  else
  {
    shortValue = 0;
  }

  return shortValue;
}

- (int64_t)playbackStyle
{
  v2 = [(PXFileBackedAssetDescription *)self->_description objectForKeyedSubscript:@"playbackStyle"];
  v3 = v2;
  if (v2)
  {
    shortValue = [v2 shortValue];
  }

  else
  {
    shortValue = 1;
  }

  return shortValue;
}

- (unint64_t)mediaSubtypes
{
  v2 = [(PXFileBackedAssetDescription *)self->_description objectForKeyedSubscript:@"mediaSubtypes"];
  v3 = v2;
  if (v2)
  {
    shortValue = [v2 shortValue];
  }

  else
  {
    shortValue = 0;
  }

  return shortValue;
}

- (int64_t)mediaType
{
  v2 = [(PXFileBackedAssetDescription *)self->_description objectForKeyedSubscript:@"mediaType"];
  v3 = v2;
  if (v2)
  {
    shortValue = [v2 shortValue];
  }

  else
  {
    shortValue = 1;
  }

  return shortValue;
}

- (NSString)description
{
  v8.receiver = self;
  v8.super_class = PXFileBackedAsset;
  v3 = [(PXFileBackedAsset *)&v8 description];
  v4 = [(PXFileBackedAsset *)self url];
  previewImage = [(PXFileBackedAsset *)self previewImage];
  v6 = [v3 stringByAppendingFormat:@" - URL: %@, PreviewImage: %@", v4, previewImage];

  return v6;
}

- (PXFileBackedAsset)initWithURL:(id)l previewImage:(id)image
{
  lCopy = l;
  imageCopy = image;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFileBackedAsset.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v9 = [PXFileBackedAssetDescription simpleImageDescriptionWithURL:lCopy previewImage:imageCopy];
  v10 = [(PXFileBackedAsset *)self initWithDescription:v9];

  return v10;
}

- (PXFileBackedAsset)initWithDescription:(id)description
{
  descriptionCopy = description;
  v18.receiver = self;
  v18.super_class = PXFileBackedAsset;
  v6 = [(PXFileBackedAsset *)&v18 init];
  if (v6)
  {
    v7 = [descriptionCopy url];
    v8 = [v7 copy];
    url = v6->_url;
    v6->_url = v8;

    previewImage = [descriptionCopy previewImage];
    previewImage = v6->_previewImage;
    v6->_previewImage = previewImage;

    v12 = MEMORY[0x1E6982C40];
    pathExtension = [(NSURL *)v6->_url pathExtension];
    v14 = [v12 typeWithFilenameExtension:pathExtension];
    identifier = [v14 identifier];
    uniformTypeIdentifier = v6->_uniformTypeIdentifier;
    v6->_uniformTypeIdentifier = identifier;

    objc_storeStrong(&v6->_description, description);
  }

  return v6;
}

- (PXFileBackedAsset)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFileBackedAsset.m" lineNumber:93 description:{@"%s is not available as initializer", "-[PXFileBackedAsset init]"}];

  abort();
}

@end