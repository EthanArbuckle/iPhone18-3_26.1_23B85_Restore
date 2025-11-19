@interface RMModelAssetReference
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToAssetReference:(id)a3;
- (RMModelAssetReference)initWithIdentifier:(id)a3 assetTypes:(id)a4;
@end

@implementation RMModelAssetReference

- (RMModelAssetReference)initWithIdentifier:(id)a3 assetTypes:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = RMModelAssetReference;
  v8 = [(RMModelAssetReference *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    assetTypes = v8->_assetTypes;
    v8->_assetTypes = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMModelAssetReference *)self isEqualToAssetReference:v4];
  }

  return v5;
}

- (BOOL)isEqualToAssetReference:(id)a3
{
  v4 = a3;
  v5 = [(RMModelAssetReference *)self identifier];
  v6 = [v4 identifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(RMModelAssetReference *)self assetTypes];
    v8 = [v4 assetTypes];
    v9 = [v7 isEqualToArray:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end