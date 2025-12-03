@interface PXFileBackedAssetDescription
+ (id)simpleImageDescriptionWithURL:(id)l previewImage:(id)image;
- (PXFileBackedAssetDescription)init;
- (PXFileBackedAssetDescription)initWithURL:(id)l previewImage:(id)image;
- (id)description;
@end

@implementation PXFileBackedAssetDescription

- (id)description
{
  v7.receiver = self;
  v7.super_class = PXFileBackedAssetDescription;
  v3 = [(PXFileBackedAssetDescription *)&v7 description];
  v4 = [(PXFileBackedAssetDescription *)self url];
  v5 = [v3 stringByAppendingFormat:@" - URL: %@", v4];

  return v5;
}

- (PXFileBackedAssetDescription)initWithURL:(id)l previewImage:(id)image
{
  lCopy = l;
  imageCopy = image;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXFileBackedAsset.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v17.receiver = self;
  v17.super_class = PXFileBackedAssetDescription;
  v9 = [(PXFileBackedAssetDescription *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_previewImage, image);
    v11 = [lCopy copy];
    url = v10->_url;
    v10->_url = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    descriptionDictionary = v10->_descriptionDictionary;
    v10->_descriptionDictionary = v13;
  }

  return v10;
}

- (PXFileBackedAssetDescription)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXFileBackedAsset.m" lineNumber:50 description:{@"%s is not available as initializer", "-[PXFileBackedAssetDescription init]"}];

  abort();
}

+ (id)simpleImageDescriptionWithURL:(id)l previewImage:(id)image
{
  imageCopy = image;
  lCopy = l;
  v7 = [[PXFileBackedAssetDescription alloc] initWithURL:lCopy previewImage:imageCopy];

  [(PXFileBackedAssetDescription *)v7 setObject:&unk_1F2BAC8F8 forKeyedSubscript:@"mediaType"];
  [(PXFileBackedAssetDescription *)v7 setObject:&unk_1F2BAC910 forKeyedSubscript:@"mediaSubtypes"];
  [(PXFileBackedAssetDescription *)v7 setObject:&unk_1F2BAC8F8 forKeyedSubscript:@"playbackStyle"];
  [(PXFileBackedAssetDescription *)v7 setObject:&unk_1F2BAC928 forKeyedSubscript:@"playbackVariation"];

  return v7;
}

@end