@interface _PXOverriddenAppleMusicStatusProvider
- (_PXOverriddenAppleMusicStatusProvider)init;
- (_PXOverriddenAppleMusicStatusProvider)initWithAppleMusicStatusProvider:(id)a3 overrides:(id)a4;
- (int64_t)statusForCapability:(int64_t)a3;
- (void)requestStatusForCapability:(int64_t)a3 handler:(id)a4;
@end

@implementation _PXOverriddenAppleMusicStatusProvider

- (int64_t)statusForCapability:(int64_t)a3
{
  overrides = self->_overrides;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSDictionary *)overrides objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v7 integerValue];
  }

  else
  {
    v8 = [(PXAppleMusicStatusProvider *)self->_subProvider statusForCapability:a3];
  }

  v9 = v8;

  return v9;
}

- (void)requestStatusForCapability:(int64_t)a3 handler:(id)a4
{
  v9 = a4;
  overrides = self->_overrides;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v8 = [(NSDictionary *)overrides objectForKeyedSubscript:v7];

  if (v8)
  {
    v9[2](v9, [v8 integerValue], 0);
  }

  else
  {
    [(PXAppleMusicStatusProvider *)self->_subProvider requestStatusForCapability:a3 handler:v9];
  }
}

- (_PXOverriddenAppleMusicStatusProvider)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXAppleMusicStatusProvider.m" lineNumber:46 description:{@"%s is not available as initializer", "-[_PXOverriddenAppleMusicStatusProvider init]"}];

  abort();
}

- (_PXOverriddenAppleMusicStatusProvider)initWithAppleMusicStatusProvider:(id)a3 overrides:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = _PXOverriddenAppleMusicStatusProvider;
  v9 = [(_PXOverriddenAppleMusicStatusProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_subProvider, a3);
    v11 = [v8 copy];
    overrides = v10->_overrides;
    v10->_overrides = v11;
  }

  return v10;
}

@end