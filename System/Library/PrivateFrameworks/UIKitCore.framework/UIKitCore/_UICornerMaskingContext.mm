@interface _UICornerMaskingContext
- (_UICornerMaskingContext)initWithProviders:(id)a3;
- (id)mergingWith:(id)a3;
@end

@implementation _UICornerMaskingContext

- (_UICornerMaskingContext)initWithProviders:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _UICornerMaskingContext;
  v6 = [(_UICornerMaskingContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_providers, a3);
  }

  return v7;
}

- (id)mergingWith:(id)a3
{
  v4 = a3;
  v5 = [_UICornerMaskingContext alloc];
  v6 = [(_UICornerMaskingProviderMux *)self->_providers mergingWith:v4];

  v7 = [(_UICornerMaskingContext *)v5 initWithProviders:v6];

  return v7;
}

@end