@interface PLMediaMetadataVirtualResource
- (PLMediaMetadataVirtualResource)initWithAsset:(id)asset resourceType:(unsigned int)type version:(unsigned int)version recipeID:(unsigned int)d dataLength:(unint64_t)length;
@end

@implementation PLMediaMetadataVirtualResource

- (PLMediaMetadataVirtualResource)initWithAsset:(id)asset resourceType:(unsigned int)type version:(unsigned int)version recipeID:(unsigned int)d dataLength:(unint64_t)length
{
  v11.receiver = self;
  v11.super_class = PLMediaMetadataVirtualResource;
  v8 = [(PLVirtualResource *)&v11 initWithAsset:asset resourceType:*&type version:*&version recipeID:*&d];
  if (v8)
  {
    v9 = +[PLUniformTypeIdentifier plistUniformTypeIdentifier];
    [(PLVirtualResource *)v8 setUniformTypeIdentifier:v9];

    v8->_dataLength = length;
  }

  return v8;
}

@end