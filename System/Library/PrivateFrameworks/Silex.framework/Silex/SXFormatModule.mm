@interface SXFormatModule
- (SXFormatModule)initWithResolver:(id)resolver;
- (id)createViewController;
@end

@implementation SXFormatModule

- (SXFormatModule)initWithResolver:(id)resolver
{
  resolverCopy = resolver;
  v9.receiver = self;
  v9.super_class = SXFormatModule;
  v6 = [(SXFormatModule *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resolver, resolver);
  }

  return v7;
}

- (id)createViewController
{
  resolver = [(SXFormatModule *)self resolver];
  v3 = [resolver resolveClass:objc_opt_class()];

  return v3;
}

@end