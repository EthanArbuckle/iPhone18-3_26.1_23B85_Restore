@interface SSUIServiceOptions
- (BOOL)isEqual:(id)a3;
- (SSUIServiceOptions)initWithBSXPCCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SSUIServiceOptions

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setFlashStyle:{-[SSUIServiceOptions flashStyle](self, "flashStyle")}];
  [v4 setSaveLocation:{-[SSUIServiceOptions saveLocation](self, "saveLocation")}];
  v5 = [(SSUIServiceOptions *)self assetMetadata];
  [v4 setAssetMetadata:v5];

  return v4;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeUInt64:-[SSUIServiceOptions flashStyle](self forKey:{"flashStyle"), @"SSUIServiceFlashStyleKey"}];
  [v4 encodeUInt64:-[SSUIServiceOptions saveLocation](self forKey:{"saveLocation"), @"SSUIServiceSaveLocationKey"}];
  v5 = [(SSUIServiceOptions *)self assetMetadata];
  [v4 encodeObject:v5 forKey:@"SSUIServiceMetadataKey"];
}

- (SSUIServiceOptions)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SSUIServiceOptions *)self init];
  v5->_flashStyle = [v4 decodeUInt64ForKey:@"SSUIServiceFlashStyleKey"];
  v5->_saveLocation = [v4 decodeUInt64ForKey:@"SSUIServiceSaveLocationKey"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SSUIServiceMetadataKey"];

  assetMetadata = v5->_assetMetadata;
  v5->_assetMetadata = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = 1;
  if (self != v4)
  {
    v5 = [(SSUIServiceOptions *)self flashStyle];
    if (v5 != [(SSUIServiceOptions *)v4 flashStyle]|| (v6 = [(SSUIServiceOptions *)self saveLocation], v6 != [(SSUIServiceOptions *)v4 saveLocation]))
    {
      v7 = 0;
    }
  }

  return v7;
}

@end