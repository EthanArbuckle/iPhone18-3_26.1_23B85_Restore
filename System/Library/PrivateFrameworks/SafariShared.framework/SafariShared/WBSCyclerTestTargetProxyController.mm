@interface WBSCyclerTestTargetProxyController
- (WBSCyclerTestTargetProxyController)initWithEndpoint:(id)endpoint;
- (void)dealloc;
- (void)setDisconnectionHandler:(id)handler;
@end

@implementation WBSCyclerTestTargetProxyController

- (WBSCyclerTestTargetProxyController)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v11.receiver = self;
  v11.super_class = WBSCyclerTestTargetProxyController;
  v5 = [(WBSCyclerTestTargetProxyController *)&v11 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:endpointCopy];
    xpcConnection = v5->_xpcConnection;
    v5->_xpcConnection = v6;

    v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3AAC658];
    [(NSXPCConnection *)v5->_xpcConnection setRemoteObjectInterface:v8];

    [(NSXPCConnection *)v5->_xpcConnection resume];
    v9 = v5;
  }

  return v5;
}

- (void)dealloc
{
  [(WBSCyclerTestTargetProxyController *)self setDisconnectionHandler:0];
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = WBSCyclerTestTargetProxyController;
  [(WBSCyclerTestTargetProxyController *)&v3 dealloc];
}

- (void)setDisconnectionHandler:(id)handler
{
  xpcConnection = self->_xpcConnection;
  handlerCopy = handler;
  [(NSXPCConnection *)xpcConnection setInterruptionHandler:handlerCopy];
  [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:handlerCopy];
}

@end