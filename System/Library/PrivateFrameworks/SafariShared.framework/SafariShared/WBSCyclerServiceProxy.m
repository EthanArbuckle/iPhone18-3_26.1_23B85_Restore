@interface WBSCyclerServiceProxy
- (WBSCyclerServiceProxy)init;
- (id)_cyclerProxy;
- (void)dealloc;
- (void)fetchLastErrorWithReply:(id)a3;
- (void)fetchLogsWithReply:(id)a3;
- (void)fetchStatusWithReply:(id)a3;
- (void)sendRequestToTestSuite:(id)a3 reply:(id)a4;
- (void)setTestTargetEndpoint:(id)a3 reply:(id)a4;
- (void)setValue:(id)a3 forConfigurationKey:(id)a4 reply:(id)a5;
- (void)startCyclingFromBeginning:(BOOL)a3 reply:(id)a4;
- (void)stopCyclingWithReply:(id)a3;
@end

@implementation WBSCyclerServiceProxy

- (WBSCyclerServiceProxy)init
{
  v8.receiver = self;
  v8.super_class = WBSCyclerServiceProxy;
  v2 = [(WBSCyclerServiceProxy *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.internal.safaricyclerd" options:0];
    xpcConnection = v2->_xpcConnection;
    v2->_xpcConnection = v3;

    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3AAB090];
    [(NSXPCConnection *)v2->_xpcConnection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_xpcConnection resume];
    v6 = v2;
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = WBSCyclerServiceProxy;
  [(WBSCyclerServiceProxy *)&v3 dealloc];
}

- (void)setTestTargetEndpoint:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WBSCyclerServiceProxy *)self _cyclerProxy];
  [v8 setTestTargetEndpoint:v7 reply:v6];
}

- (void)setValue:(id)a3 forConfigurationKey:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(WBSCyclerServiceProxy *)self _cyclerProxy];
  [v11 setValue:v10 forConfigurationKey:v9 reply:v8];
}

- (void)startCyclingFromBeginning:(BOOL)a3 reply:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(WBSCyclerServiceProxy *)self _cyclerProxy];
  [v7 startCyclingFromBeginning:v4 reply:v6];
}

- (void)stopCyclingWithReply:(id)a3
{
  v4 = a3;
  v5 = [(WBSCyclerServiceProxy *)self _cyclerProxy];
  [v5 stopCyclingWithReply:v4];
}

- (void)sendRequestToTestSuite:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(WBSCyclerServiceProxy *)self _cyclerProxy];
  [v8 sendRequestToTestSuite:v7 reply:v6];
}

- (void)fetchStatusWithReply:(id)a3
{
  v4 = a3;
  v5 = [(WBSCyclerServiceProxy *)self _cyclerProxy];
  [v5 fetchStatusWithReply:v4];
}

- (void)fetchLogsWithReply:(id)a3
{
  v4 = a3;
  v5 = [(WBSCyclerServiceProxy *)self _cyclerProxy];
  [v5 fetchLogsWithReply:v4];
}

- (void)fetchLastErrorWithReply:(id)a3
{
  v4 = a3;
  v5 = [(WBSCyclerServiceProxy *)self _cyclerProxy];
  [v5 fetchLastErrorWithReply:v4];
}

- (id)_cyclerProxy
{
  p_xpcConnection = &self->_xpcConnection;
  xpcConnection = self->_xpcConnection;
  if (p_xpcConnection[1])
  {
    [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:?];
  }

  else
  {
    [(NSXPCConnection *)xpcConnection remoteObjectProxy];
  }
  v4 = ;

  return v4;
}

@end