@interface SSUIServiceOptionsAssetMetadata
- (SSUIServiceOptionsAssetMetadata)initWithBSXPCCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SSUIServiceOptionsAssetMetadata

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  assetDescription = [(SSUIServiceOptionsAssetMetadata *)self assetDescription];
  [v4 setAssetDescription:assetDescription];

  return v4;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  assetDescription = [(SSUIServiceOptionsAssetMetadata *)self assetDescription];
  [coderCopy encodeCollection:assetDescription forKey:@"SSUIServiceMetadataKey"];
}

- (SSUIServiceOptionsAssetMetadata)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SSUIServiceOptionsAssetMetadata *)self init];
  v6 = objc_opt_class();
  v7 = [coderCopy decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"SSUIServiceMetadataKey"];

  assetDescription = v5->_assetDescription;
  v5->_assetDescription = v7;

  return v5;
}

@end