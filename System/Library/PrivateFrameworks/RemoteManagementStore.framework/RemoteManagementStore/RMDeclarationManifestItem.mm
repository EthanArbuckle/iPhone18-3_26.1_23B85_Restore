@interface RMDeclarationManifestItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToManifestItem:(id)item;
- (RMDeclarationManifestItem)initWithCoder:(id)coder;
- (RMDeclarationManifestItem)initWithIdentifier:(id)identifier version:(id)version;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RMDeclarationManifestItem

- (RMDeclarationManifestItem)initWithIdentifier:(id)identifier version:(id)version
{
  identifierCopy = identifier;
  versionCopy = version;
  v14.receiver = self;
  v14.super_class = RMDeclarationManifestItem;
  v8 = [(RMDeclarationManifestItem *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [versionCopy copy];
    version = v8->_version;
    v8->_version = v11;
  }

  return v8;
}

- (RMDeclarationManifestItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"version"];

  v7 = [(RMDeclarationManifestItem *)self initWithIdentifier:v5 version:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(RMDeclarationManifestItem *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  version = [(RMDeclarationManifestItem *)self version];
  [coderCopy encodeObject:version forKey:@"version"];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMDeclarationManifestItem *)self isEqualToManifestItem:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToManifestItem:(id)item
{
  itemCopy = item;
  identifier = [(RMDeclarationManifestItem *)self identifier];
  identifier2 = [itemCopy identifier];
  if ([identifier isEqualToString:identifier2])
  {
    version = [(RMDeclarationManifestItem *)self version];
    version2 = [itemCopy version];
    v9 = [version isEqualToString:version2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end