@interface PLMediaMetadataVirtualResource
- (PLMediaMetadataVirtualResource)initWithAsset:(id)a3 resourceType:(unsigned int)a4 version:(unsigned int)a5 recipeID:(unsigned int)a6 dataLength:(unint64_t)a7;
@end

@implementation PLMediaMetadataVirtualResource

- (PLMediaMetadataVirtualResource)initWithAsset:(id)a3 resourceType:(unsigned int)a4 version:(unsigned int)a5 recipeID:(unsigned int)a6 dataLength:(unint64_t)a7
{
  v11.receiver = self;
  v11.super_class = PLMediaMetadataVirtualResource;
  v8 = [(PLVirtualResource *)&v11 initWithAsset:a3 resourceType:*&a4 version:*&a5 recipeID:*&a6];
  if (v8)
  {
    v9 = +[PLUniformTypeIdentifier plistUniformTypeIdentifier];
    [(PLVirtualResource *)v8 setUniformTypeIdentifier:v9];

    v8->_dataLength = a7;
  }

  return v8;
}

@end