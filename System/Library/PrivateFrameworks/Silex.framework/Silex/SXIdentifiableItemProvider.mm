@interface SXIdentifiableItemProvider
- (SXIdentifiableItemProvider)initWithObject:(id)object identifier:(id)identifier;
@end

@implementation SXIdentifiableItemProvider

- (SXIdentifiableItemProvider)initWithObject:(id)object identifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = SXIdentifiableItemProvider;
  v8 = [(SXIdentifiableItemProvider *)&v11 initWithObject:object];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
  }

  return v9;
}

@end