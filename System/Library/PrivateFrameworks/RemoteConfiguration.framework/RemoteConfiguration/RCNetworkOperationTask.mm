@interface RCNetworkOperationTask
- (NSData)data;
- (RCNetworkOperationTask)initWithIdentifier:(id)a3;
- (void)receiveData:(id)a3;
@end

@implementation RCNetworkOperationTask

- (RCNetworkOperationTask)initWithIdentifier:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = RCNetworkOperationTask;
  v6 = [(RCNetworkOperationTask *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    v8 = objc_alloc_init(MEMORY[0x277CBEB28]);
    dataStore = v7->_dataStore;
    v7->_dataStore = v8;
  }

  return v7;
}

- (NSData)data
{
  v2 = [(RCNetworkOperationTask *)self dataStore];
  v3 = [v2 copy];

  return v3;
}

- (void)receiveData:(id)a3
{
  v4 = a3;
  v5 = [(RCNetworkOperationTask *)self dataStore];
  [v5 appendData:v4];
}

@end