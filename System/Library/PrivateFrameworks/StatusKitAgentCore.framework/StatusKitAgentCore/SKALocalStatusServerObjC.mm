@interface SKALocalStatusServerObjC
- (SKALocalStatusServerObjC)initWithIDSDeviceProvider:(id)provider;
- (void)shutdown;
@end

@implementation SKALocalStatusServerObjC

- (SKALocalStatusServerObjC)initWithIDSDeviceProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = SKALocalStatusServerObjC;
  v5 = [(SKALocalStatusServerObjC *)&v9 init];
  if (v5)
  {
    v6 = [[SKALocalStatusServer alloc] initWithIdsDeviceProvider:providerCopy];
    server = v5->_server;
    v5->_server = v6;
  }

  return v5;
}

- (void)shutdown
{
  [(SKALocalStatusServer *)self->_server objcShutdown];
  server = self->_server;
  self->_server = 0;
}

@end