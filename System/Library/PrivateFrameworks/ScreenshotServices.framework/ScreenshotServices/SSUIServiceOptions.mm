@interface SSUIServiceOptions
- (BOOL)isEqual:(id)equal;
- (SSUIServiceOptions)initWithBSXPCCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SSUIServiceOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setFlashStyle:{-[SSUIServiceOptions flashStyle](self, "flashStyle")}];
  [v4 setSaveLocation:{-[SSUIServiceOptions saveLocation](self, "saveLocation")}];
  assetMetadata = [(SSUIServiceOptions *)self assetMetadata];
  [v4 setAssetMetadata:assetMetadata];

  return v4;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeUInt64:-[SSUIServiceOptions flashStyle](self forKey:{"flashStyle"), @"SSUIServiceFlashStyleKey"}];
  [coderCopy encodeUInt64:-[SSUIServiceOptions saveLocation](self forKey:{"saveLocation"), @"SSUIServiceSaveLocationKey"}];
  assetMetadata = [(SSUIServiceOptions *)self assetMetadata];
  [coderCopy encodeObject:assetMetadata forKey:@"SSUIServiceMetadataKey"];
}

- (SSUIServiceOptions)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SSUIServiceOptions *)self init];
  v5->_flashStyle = [coderCopy decodeUInt64ForKey:@"SSUIServiceFlashStyleKey"];
  v5->_saveLocation = [coderCopy decodeUInt64ForKey:@"SSUIServiceSaveLocationKey"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SSUIServiceMetadataKey"];

  assetMetadata = v5->_assetMetadata;
  v5->_assetMetadata = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = 1;
  if (self != equalCopy)
  {
    flashStyle = [(SSUIServiceOptions *)self flashStyle];
    if (flashStyle != [(SSUIServiceOptions *)equalCopy flashStyle]|| (v6 = [(SSUIServiceOptions *)self saveLocation], v6 != [(SSUIServiceOptions *)equalCopy saveLocation]))
    {
      v7 = 0;
    }
  }

  return v7;
}

@end