@interface PXFileBackedAssetDescription
+ (id)simpleImageDescriptionWithURL:(id)a3 previewImage:(id)a4;
- (PXFileBackedAssetDescription)init;
- (PXFileBackedAssetDescription)initWithURL:(id)a3 previewImage:(id)a4;
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

- (PXFileBackedAssetDescription)initWithURL:(id)a3 previewImage:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXFileBackedAsset.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v17.receiver = self;
  v17.super_class = PXFileBackedAssetDescription;
  v9 = [(PXFileBackedAssetDescription *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_previewImage, a4);
    v11 = [v7 copy];
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
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXFileBackedAsset.m" lineNumber:50 description:{@"%s is not available as initializer", "-[PXFileBackedAssetDescription init]"}];

  abort();
}

+ (id)simpleImageDescriptionWithURL:(id)a3 previewImage:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[PXFileBackedAssetDescription alloc] initWithURL:v6 previewImage:v5];

  [(PXFileBackedAssetDescription *)v7 setObject:&unk_1F2BAC8F8 forKeyedSubscript:@"mediaType"];
  [(PXFileBackedAssetDescription *)v7 setObject:&unk_1F2BAC910 forKeyedSubscript:@"mediaSubtypes"];
  [(PXFileBackedAssetDescription *)v7 setObject:&unk_1F2BAC8F8 forKeyedSubscript:@"playbackStyle"];
  [(PXFileBackedAssetDescription *)v7 setObject:&unk_1F2BAC928 forKeyedSubscript:@"playbackVariation"];

  return v7;
}

@end