@interface PLContextualVideoThumbnailVirtualResource
- (PLContextualVideoThumbnailVirtualResource)initWithAsset:(id)asset thumbnailIdentifier:(id)identifier;
- (int64_t)dataLength;
@end

@implementation PLContextualVideoThumbnailVirtualResource

- (int64_t)dataLength
{
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  fileURL = [(PLVirtualResource *)self fileURL];
  path = [fileURL path];
  v6 = [defaultManager attributesOfItemAtPath:path error:0];
  fileSize = [v6 fileSize];

  return fileSize;
}

- (PLContextualVideoThumbnailVirtualResource)initWithAsset:(id)asset thumbnailIdentifier:(id)identifier
{
  identifierCopy = identifier;
  assetCopy = asset;
  recipeIDForContextualVideoThumbnail = [objc_opt_class() recipeIDForContextualVideoThumbnail];
  v13.receiver = self;
  v13.super_class = PLContextualVideoThumbnailVirtualResource;
  v10 = [(PLVirtualResource *)&v13 initWithAsset:assetCopy resourceType:16 version:3 recipeID:recipeIDForContextualVideoThumbnail];

  if (v10)
  {
    objc_storeStrong(&v10->_thumbnailIdentifier, identifier);
    uniformTypeIdentifierForContextualVideoThumbnail = [objc_opt_class() uniformTypeIdentifierForContextualVideoThumbnail];
    [(PLVirtualResource *)v10 setUniformTypeIdentifier:uniformTypeIdentifierForContextualVideoThumbnail];
  }

  return v10;
}

@end