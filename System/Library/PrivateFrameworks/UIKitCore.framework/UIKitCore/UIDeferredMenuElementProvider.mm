@interface UIDeferredMenuElementProvider
+ (UIDeferredMenuElementProvider)providerWithElementProvider:(id)a3;
- (UIDeferredMenuElementProvider)initWithElementProvider:(id)a3;
@end

@implementation UIDeferredMenuElementProvider

+ (UIDeferredMenuElementProvider)providerWithElementProvider:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithElementProvider:v4];

  return v5;
}

- (UIDeferredMenuElementProvider)initWithElementProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = UIDeferredMenuElementProvider;
  v5 = [(UIDeferredMenuElementProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIDeferredMenuElementProvider *)v5 set_providerBlock:v4];
  }

  return v6;
}

@end