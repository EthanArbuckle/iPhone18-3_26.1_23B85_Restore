@interface UIDeferredMenuElementProvider
+ (UIDeferredMenuElementProvider)providerWithElementProvider:(id)provider;
- (UIDeferredMenuElementProvider)initWithElementProvider:(id)provider;
@end

@implementation UIDeferredMenuElementProvider

+ (UIDeferredMenuElementProvider)providerWithElementProvider:(id)provider
{
  providerCopy = provider;
  v5 = [[self alloc] initWithElementProvider:providerCopy];

  return v5;
}

- (UIDeferredMenuElementProvider)initWithElementProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = UIDeferredMenuElementProvider;
  v5 = [(UIDeferredMenuElementProvider *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(UIDeferredMenuElementProvider *)v5 set_providerBlock:providerCopy];
  }

  return v6;
}

@end