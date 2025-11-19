@interface SSUIServiceOptionsAssetMetadata
- (SSUIServiceOptionsAssetMetadata)initWithBSXPCCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SSUIServiceOptionsAssetMetadata

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(SSUIServiceOptionsAssetMetadata *)self assetDescription];
  [v4 setAssetDescription:v5];

  return v4;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSUIServiceOptionsAssetMetadata *)self assetDescription];
  [v4 encodeCollection:v5 forKey:@"SSUIServiceMetadataKey"];
}

- (SSUIServiceOptionsAssetMetadata)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSUIServiceOptionsAssetMetadata *)self init];
  v6 = objc_opt_class();
  v7 = [v4 decodeCollectionOfClass:v6 containingClass:objc_opt_class() forKey:@"SSUIServiceMetadataKey"];

  assetDescription = v5->_assetDescription;
  v5->_assetDescription = v7;

  return v5;
}

@end