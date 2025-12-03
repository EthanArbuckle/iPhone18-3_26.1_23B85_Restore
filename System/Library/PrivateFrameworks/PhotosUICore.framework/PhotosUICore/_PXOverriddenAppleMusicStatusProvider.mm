@interface _PXOverriddenAppleMusicStatusProvider
- (_PXOverriddenAppleMusicStatusProvider)init;
- (_PXOverriddenAppleMusicStatusProvider)initWithAppleMusicStatusProvider:(id)provider overrides:(id)overrides;
- (int64_t)statusForCapability:(int64_t)capability;
- (void)requestStatusForCapability:(int64_t)capability handler:(id)handler;
@end

@implementation _PXOverriddenAppleMusicStatusProvider

- (int64_t)statusForCapability:(int64_t)capability
{
  overrides = self->_overrides;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v7 = [(NSDictionary *)overrides objectForKeyedSubscript:v6];

  if (v7)
  {
    integerValue = [v7 integerValue];
  }

  else
  {
    integerValue = [(PXAppleMusicStatusProvider *)self->_subProvider statusForCapability:capability];
  }

  v9 = integerValue;

  return v9;
}

- (void)requestStatusForCapability:(int64_t)capability handler:(id)handler
{
  handlerCopy = handler;
  overrides = self->_overrides;
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:capability];
  v8 = [(NSDictionary *)overrides objectForKeyedSubscript:v7];

  if (v8)
  {
    handlerCopy[2](handlerCopy, [v8 integerValue], 0);
  }

  else
  {
    [(PXAppleMusicStatusProvider *)self->_subProvider requestStatusForCapability:capability handler:handlerCopy];
  }
}

- (_PXOverriddenAppleMusicStatusProvider)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAppleMusicStatusProvider.m" lineNumber:46 description:{@"%s is not available as initializer", "-[_PXOverriddenAppleMusicStatusProvider init]"}];

  abort();
}

- (_PXOverriddenAppleMusicStatusProvider)initWithAppleMusicStatusProvider:(id)provider overrides:(id)overrides
{
  providerCopy = provider;
  overridesCopy = overrides;
  v14.receiver = self;
  v14.super_class = _PXOverriddenAppleMusicStatusProvider;
  v9 = [(_PXOverriddenAppleMusicStatusProvider *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_subProvider, provider);
    v11 = [overridesCopy copy];
    overrides = v10->_overrides;
    v10->_overrides = v11;
  }

  return v10;
}

@end