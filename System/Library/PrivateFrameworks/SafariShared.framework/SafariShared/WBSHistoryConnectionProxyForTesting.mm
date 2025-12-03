@interface WBSHistoryConnectionProxyForTesting
- (WBSHistoryConnectionProxyForTesting)initWithListenerEndpoint:(id)endpoint;
- (id)_createConnection;
@end

@implementation WBSHistoryConnectionProxyForTesting

- (WBSHistoryConnectionProxyForTesting)initWithListenerEndpoint:(id)endpoint
{
  objc_storeStrong(&self->_listenerEndpoint, endpoint);
  endpointCopy = endpoint;
  v8.receiver = self;
  v8.super_class = WBSHistoryConnectionProxyForTesting;
  v6 = [(WBSHistoryConnectionProxy *)&v8 init];

  return v6;
}

- (id)_createConnection
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:self->_listenerEndpoint];

  return v2;
}

@end