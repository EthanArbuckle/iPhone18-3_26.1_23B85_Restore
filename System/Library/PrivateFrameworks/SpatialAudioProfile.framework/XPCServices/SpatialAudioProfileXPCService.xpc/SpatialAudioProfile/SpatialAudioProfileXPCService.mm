@interface SpatialAudioProfileXPCService
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SpatialAudioProfileXPCService)init;
- (void)_xpcConnectionInvalidated:(id)a3;
@end

@implementation SpatialAudioProfileXPCService

- (SpatialAudioProfileXPCService)init
{
  v8.receiver = self;
  v8.super_class = SpatialAudioProfileXPCService;
  v2 = [(SpatialAudioProfileXPCService *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.SpatialAudioProfileXPCService", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(SpatialAudioProfileClientXPCConnection);
  [(SpatialAudioProfileClientXPCConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  [(SpatialAudioProfileClientXPCConnection *)v6 setXpcCnx:v5];
  [(SpatialAudioProfileClientXPCConnection *)v6 setXpcService:self];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_xpcConnections;
    self->_xpcConnections = v8;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v6];
  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SpatialAudioProfileXPCClientInterface];
  [v5 _setQueue:self->_dispatchQueue];
  v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SpatialAudioProfileXPCServiceInterface];
  [v5 setExportedInterface:v11];

  [v5 setExportedObject:v6];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100001008;
  v13[3] = &unk_1000041A8;
  v13[4] = self;
  v13[5] = v6;
  [v5 setInvalidationHandler:v13];
  [v5 setRemoteObjectInterface:v10];
  [v5 resume];
  if (dword_100008860 <= 30 && (dword_100008860 != -1 || _LogCategory_Initialize()))
  {
    sub_100001BA0(v5);
  }

  return 1;
}

- (void)_xpcConnectionInvalidated:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (dword_100008860 <= 20)
  {
    if (dword_100008860 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_100001BE4(v4);
      v4 = v6;
    }
  }

  [v4 xpcConnectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:v6];
}

@end