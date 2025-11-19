@interface _WebCoreLocationUpdateThreadingProxy
- (_WebCoreLocationUpdateThreadingProxy)initWithProvider:(id)a3;
- (void)positionChanged:(void *)a3;
@end

@implementation _WebCoreLocationUpdateThreadingProxy

- (_WebCoreLocationUpdateThreadingProxy)initWithProvider:(id)a3
{
  v5.receiver = self;
  v5.super_class = _WebCoreLocationUpdateThreadingProxy;
  result = [(_WebCoreLocationUpdateThreadingProxy *)&v5 init];
  if (result)
  {
    result->_provider = a3;
  }

  return result;
}

- (void)positionChanged:(void *)a3
{
  v3 = [[WebGeolocationPosition alloc] initWithGeolocationPosition:a3];
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