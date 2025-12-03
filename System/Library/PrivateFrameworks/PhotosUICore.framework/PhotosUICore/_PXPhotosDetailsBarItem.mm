@interface _PXPhotosDetailsBarItem
- (NSString)description;
- (_PXPhotosDetailsBarItem)initWithIdentifier:(id)identifier;
@end

@implementation _PXPhotosDetailsBarItem

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = _PXPhotosDetailsBarItem;
  v4 = [(_PXPhotosDetailsBarItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@ identifier:%@>", v4, self->_identifier];

  return v5;
}

- (_PXPhotosDetailsBarItem)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = _PXPhotosDetailsBarItem;
  v6 = [(_PXPhotosDetailsBarItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
  }

  return v7;
}

@end