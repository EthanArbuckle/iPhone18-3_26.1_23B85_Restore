@interface PLContextualVideoThumbnailVirtualResource
- (PLContextualVideoThumbnailVirtualResource)initWithAsset:(id)a3 thumbnailIdentifier:(id)a4;
- (int64_t)dataLength;
@end

@implementation PLContextualVideoThumbnailVirtualResource

- (int64_t)dataLength
{
  v3 = [MEMORY[0x1E696AC08] defaultManager];
  v4 = [(PLVirtualResource *)self fileURL];
  v5 = [v4 path];
  v6 = [v3 attributesOfItemAtPath:v5 error:0];
  v7 = [v6 fileSize];

  return v7;
}

- (PLContextualVideoThumbnailVirtualResource)initWithAsset:(id)a3 thumbnailIdentifier:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [objc_opt_class() recipeIDForContextualVideoThumbnail];
  v13.receiver = self;
  v13.super_class = PLContextualVideoThumbnailVirtualResource;
  v10 = [(PLVirtualResource *)&v13 initWithAsset:v8 resourceType:16 version:3 recipeID:v9];

  if (v10)
  {
    objc_storeStrong(&v10->_thumbnailIdentifier, a4);
    v11 = [objc_opt_class() uniformTypeIdentifierForContextualVideoThumbnail];
    [(PLVirtualResource *)v10 setUniformTypeIdentifier:v11];
  }

  return v10;
}

@end