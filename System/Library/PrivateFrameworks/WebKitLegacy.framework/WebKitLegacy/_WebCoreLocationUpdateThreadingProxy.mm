@interface _WebCoreLocationUpdateThreadingProxy
- (_WebCoreLocationUpdateThreadingProxy)initWithProvider:(id)provider;
- (void)positionChanged:(void *)changed;
@end

@implementation _WebCoreLocationUpdateThreadingProxy

- (_WebCoreLocationUpdateThreadingProxy)initWithProvider:(id)provider
{
  v5.receiver = self;
  v5.super_class = _WebCoreLocationUpdateThreadingProxy;
  result = [(_WebCoreLocationUpdateThreadingProxy *)&v5 init];
  if (result)
  {
    result->_provider = provider;
  }

  return result;
}

- (void)positionChanged:(void *)changed
{
  v3 = [[WebGeolocationPosition alloc] initWithGeolocationPosition:changed];
  v4 = v3;
  v6 = v3;
  if (v3)
  {
    v5 = v3;
  }

  WebThreadRun();
  if (v6)
  {
  }

  if (v4)
  {
  }
}

@end