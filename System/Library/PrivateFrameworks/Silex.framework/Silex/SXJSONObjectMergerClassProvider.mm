@interface SXJSONObjectMergerClassProvider
- (SXJSONObjectMergerClassProvider)initWithObjectClass:(Class)class;
@end

@implementation SXJSONObjectMergerClassProvider

- (SXJSONObjectMergerClassProvider)initWithObjectClass:(Class)class
{
  v7.receiver = self;
  v7.super_class = SXJSONObjectMergerClassProvider;
  v4 = [(SXJSONObjectMergerClassProvider *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_objectClass, class);
  }

  return v5;
}

@end