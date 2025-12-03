@interface RMModelAssetReference
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAssetReference:(id)reference;
- (RMModelAssetReference)initWithIdentifier:(id)identifier assetTypes:(id)types;
@end

@implementation RMModelAssetReference

- (RMModelAssetReference)initWithIdentifier:(id)identifier assetTypes:(id)types
{
  identifierCopy = identifier;
  typesCopy = types;
  v14.receiver = self;
  v14.super_class = RMModelAssetReference;
  v8 = [(RMModelAssetReference *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [typesCopy copy];
    assetTypes = v8->_assetTypes;
    v8->_assetTypes = v11;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMModelAssetReference *)self isEqualToAssetReference:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToAssetReference:(id)reference
{
  referenceCopy = reference;
  identifier = [(RMModelAssetReference *)self identifier];
  identifier2 = [referenceCopy identifier];
  if ([identifier isEqualToString:identifier2])
  {
    assetTypes = [(RMModelAssetReference *)self assetTypes];
    assetTypes2 = [referenceCopy assetTypes];
    v9 = [assetTypes isEqualToArray:assetTypes2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end