@interface WBSHistoryConnectionProxyForTesting
- (WBSHistoryConnectionProxyForTesting)initWithListenerEndpoint:(id)a3;
- (id)_createConnection;
@end

@implementation WBSHistoryConnectionProxyForTesting

- (WBSHistoryConnectionProxyForTesting)initWithListenerEndpoint:(id)a3
{
  objc_storeStrong(&self->_listenerEndpoint, a3);
  v5 = a3;
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