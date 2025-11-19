@interface SXIdentifiableItemProvider
- (SXIdentifiableItemProvider)initWithObject:(id)a3 identifier:(id)a4;
@end

@implementation SXIdentifiableItemProvider

- (SXIdentifiableItemProvider)initWithObject:(id)a3 identifier:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SXIdentifiableItemProvider;
  v8 = [(SXIdentifiableItemProvider *)&v11 initWithObject:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a4);
  }

  return v9;
}

@end