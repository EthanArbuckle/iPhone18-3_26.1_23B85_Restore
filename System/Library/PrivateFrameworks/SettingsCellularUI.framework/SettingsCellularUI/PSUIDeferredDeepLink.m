@interface PSUIDeferredDeepLink
- (PSUIDeferredDeepLink)initWithSpecifierID:(id)a3 resourceDictionary:(id)a4 completion:(id)a5;
@end

@implementation PSUIDeferredDeepLink

- (PSUIDeferredDeepLink)initWithSpecifierID:(id)a3 resourceDictionary:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = PSUIDeferredDeepLink;
  v11 = [(PSUIDeferredDeepLink *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(PSUIDeferredDeepLink *)v11 setSpecifierID:v8];
    [(PSUIDeferredDeepLink *)v12 setResourceDictionary:v9];
    [(PSUIDeferredDeepLink *)v12 setCompletion:v10];
  }

  return v12;
}

@end