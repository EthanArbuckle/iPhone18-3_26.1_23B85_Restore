@interface REObservableSingleton
- (id)_init;
@end

@implementation REObservableSingleton

- (id)_init
{
  v6.receiver = self;
  v6.super_class = REObservableSingleton;
  v2 = [(RESingleton *)&v6 _init];
  if (v2)
  {
    v3 = objc_opt_new();
    v4 = v2[1];
    v2[1] = v3;
  }

  return v2;
}

@end