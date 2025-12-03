@interface _UICornerMaskingContext
- (_UICornerMaskingContext)initWithProviders:(id)providers;
- (id)mergingWith:(id)with;
@end

@implementation _UICornerMaskingContext

- (_UICornerMaskingContext)initWithProviders:(id)providers
{
  providersCopy = providers;
  v9.receiver = self;
  v9.super_class = _UICornerMaskingContext;
  v6 = [(_UICornerMaskingContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_providers, providers);
  }

  return v7;
}

- (id)mergingWith:(id)with
{
  withCopy = with;
  v5 = [_UICornerMaskingContext alloc];
  v6 = [(_UICornerMaskingProviderMux *)self->_providers mergingWith:withCopy];

  v7 = [(_UICornerMaskingContext *)v5 initWithProviders:v6];

  return v7;
}

@end