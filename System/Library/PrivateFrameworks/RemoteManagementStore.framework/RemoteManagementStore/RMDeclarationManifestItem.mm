@interface RMDeclarationManifestItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToManifestItem:(id)a3;
- (RMDeclarationManifestItem)initWithCoder:(id)a3;
- (RMDeclarationManifestItem)initWithIdentifier:(id)a3 version:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation RMDeclarationManifestItem

- (RMDeclarationManifestItem)initWithIdentifier:(id)a3 version:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = RMDeclarationManifestItem;
  v8 = [(RMDeclarationManifestItem *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    version = v8->_version;
    v8->_version = v11;
  }

  return v8;
}

- (RMDeclarationManifestItem)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"version"];

  v7 = [(RMDeclarationManifestItem *)self initWithIdentifier:v5 version:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(RMDeclarationManifestItem *)self identifier];
  [v4 encodeObject:v5 forKey:@"identifier"];

  v6 = [(RMDeclarationManifestItem *)self version];
  [v4 encodeObject:v6 forKey:@"version"];
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
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(RMDeclarationManifestItem *)self isEqualToManifestItem:v4];
  }

  return v5;
}

- (BOOL)isEqualToManifestItem:(id)a3
{
  v4 = a3;
  v5 = [(RMDeclarationManifestItem *)self identifier];
  v6 = [v4 identifier];
  if ([v5 isEqualToString:v6])
  {
    v7 = [(RMDeclarationManifestItem *)self version];
    v8 = [v4 version];
    v9 = [v7 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end