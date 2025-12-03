@interface REObservableSingleton
- (id)_init;
@end

@implementation REObservableSingleton

- (id)_init
{
  v6.receiver = self;
  v6.super_class = REObservableSingleton;
  _init = [(RESingleton *)&v6 _init];
  if (_init)
  {
    v3 = objc_opt_new();
    v4 = _init[1];
    _init[1] = v3;
  }

  return _init;
}

@end