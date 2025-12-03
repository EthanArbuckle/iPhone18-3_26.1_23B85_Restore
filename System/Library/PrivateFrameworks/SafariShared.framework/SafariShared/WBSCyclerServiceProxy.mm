@interface WBSCyclerServiceProxy
- (WBSCyclerServiceProxy)init;
- (id)_cyclerProxy;
- (void)dealloc;
- (void)fetchLastErrorWithReply:(id)reply;
- (void)fetchLogsWithReply:(id)reply;
- (void)fetchStatusWithReply:(id)reply;
- (void)sendRequestToTestSuite:(id)suite reply:(id)reply;
- (void)setTestTargetEndpoint:(id)endpoint reply:(id)reply;
- (void)setValue:(id)value forConfigurationKey:(id)key reply:(id)reply;
- (void)startCyclingFromBeginning:(BOOL)beginning reply:(id)reply;
- (void)stopCyclingWithReply:(id)reply;
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

- (void)setTestTargetEndpoint:(id)endpoint reply:(id)reply
{
  replyCopy = reply;
  endpointCopy = endpoint;
  _cyclerProxy = [(WBSCyclerServiceProxy *)self _cyclerProxy];
  [_cyclerProxy setTestTargetEndpoint:endpointCopy reply:replyCopy];
}

- (void)setValue:(id)value forConfigurationKey:(id)key reply:(id)reply
{
  replyCopy = reply;
  keyCopy = key;
  valueCopy = value;
  _cyclerProxy = [(WBSCyclerServiceProxy *)self _cyclerProxy];
  [_cyclerProxy setValue:valueCopy forConfigurationKey:keyCopy reply:replyCopy];
}

- (void)startCyclingFromBeginning:(BOOL)beginning reply:(id)reply
{
  beginningCopy = beginning;
  replyCopy = reply;
  _cyclerProxy = [(WBSCyclerServiceProxy *)self _cyclerProxy];
  [_cyclerProxy startCyclingFromBeginning:beginningCopy reply:replyCopy];
}

- (void)stopCyclingWithReply:(id)reply
{
  replyCopy = reply;
  _cyclerProxy = [(WBSCyclerServiceProxy *)self _cyclerProxy];
  [_cyclerProxy stopCyclingWithReply:replyCopy];
}

- (void)sendRequestToTestSuite:(id)suite reply:(id)reply
{
  replyCopy = reply;
  suiteCopy = suite;
  _cyclerProxy = [(WBSCyclerServiceProxy *)self _cyclerProxy];
  [_cyclerProxy sendRequestToTestSuite:suiteCopy reply:replyCopy];
}

- (void)fetchStatusWithReply:(id)reply
{
  replyCopy = reply;
  _cyclerProxy = [(WBSCyclerServiceProxy *)self _cyclerProxy];
  [_cyclerProxy fetchStatusWithReply:replyCopy];
}

- (void)fetchLogsWithReply:(id)reply
{
  replyCopy = reply;
  _cyclerProxy = [(WBSCyclerServiceProxy *)self _cyclerProxy];
  [_cyclerProxy fetchLogsWithReply:replyCopy];
}

- (void)fetchLastErrorWithReply:(id)reply
{
  replyCopy = reply;
  _cyclerProxy = [(WBSCyclerServiceProxy *)self _cyclerProxy];
  [_cyclerProxy fetchLastErrorWithReply:replyCopy];
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