@interface VSGenericUpdateEndpoint
+ (id)configuredEndpointWithUpdateHandler:(id)a3 withConnection:(id)a4;
+ (id)remoteUpdateHanderForEndpoint:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (VSGenericUpdateEndpoint)initWithCoder:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation VSGenericUpdateEndpoint

- (VSGenericUpdateEndpoint)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VSGenericUpdateEndpoint;
  v5 = [(VSGenericUpdateEndpoint *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_endpoint"];
    endpoint = v5->_endpoint;
    v5->_endpoint = v6;
  }

  return v5;
}

- (void)invalidate
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  listener = self->_listener;
  self->_listener = 0;

  handler = self->_handler;
  self->_handler = 0;

  endpoint = self->_endpoint;
  self->_endpoint = 0;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  handler = self->_handler;
  if (handler)
  {
    if (self->_queue)
    {
      [v7 _setQueue:?];
    }

    v10 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2881EA260];
    [v8 setExportedInterface:v10];

    v11 = [[VSGenericBlockHolder alloc] initWithBlock:self->_handler];
    [v8 setExportedObject:v11];

    [v8 resume];
    v12 = self->_handler;
    self->_handler = 0;

    endpoint = self->_endpoint;
    self->_endpoint = 0;
  }

  return handler != 0;
}

- (void)dealloc
{
  [(VSGenericUpdateEndpoint *)self invalidate];
  v3.receiver = self;
  v3.super_class = VSGenericUpdateEndpoint;
  [(VSGenericUpdateEndpoint *)&v3 dealloc];
}

+ (id)remoteUpdateHanderForEndpoint:(id)a3
{
  v3 = MEMORY[0x277CCAE80];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v4 endpoint];

  v7 = [v5 initWithListenerEndpoint:v6];
  v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2881EA260];
  [v7 setRemoteObjectInterface:v8];

  [v7 resume];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__VSGenericUpdateEndpoint_remoteUpdateHanderForEndpoint___block_invoke;
  v13[3] = &unk_279E4FA20;
  v14 = v7;
  v9 = v7;
  v10 = MEMORY[0x2743CEF70](v13);
  v11 = MEMORY[0x2743CEF70]();

  return v11;
}

void __57__VSGenericUpdateEndpoint_remoteUpdateHanderForEndpoint___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 remoteObjectProxy];
  [v4 invokeUpdateWithObject:v3];
}

+ (id)configuredEndpointWithUpdateHandler:(id)a3 withConnection:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(VSGenericUpdateEndpoint);
  v8 = [MEMORY[0x277CCAE98] anonymousListener];
  [v8 setDelegate:v7];
  [v8 resume];
  v9 = [v5 _queue];

  [(VSGenericUpdateEndpoint *)v7 setQueue:v9];
  [(VSGenericUpdateEndpoint *)v7 setHandler:v6];

  [(VSGenericUpdateEndpoint *)v7 setListener:v8];
  v10 = [v8 endpoint];
  [(VSGenericUpdateEndpoint *)v7 setEndpoint:v10];

  return v7;
}

@end