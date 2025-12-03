@interface RCNetworkOperationTask
- (NSData)data;
- (RCNetworkOperationTask)initWithIdentifier:(id)identifier;
- (void)receiveData:(id)data;
@end

@implementation RCNetworkOperationTask

- (RCNetworkOperationTask)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = RCNetworkOperationTask;
  v6 = [(RCNetworkOperationTask *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    v8 = objc_alloc_init(MEMORY[0x277CBEB28]);
    dataStore = v7->_dataStore;
    v7->_dataStore = v8;
  }

  return v7;
}

- (NSData)data
{
  dataStore = [(RCNetworkOperationTask *)self dataStore];
  v3 = [dataStore copy];

  return v3;
}

- (void)receiveData:(id)data
{
  dataCopy = data;
  dataStore = [(RCNetworkOperationTask *)self dataStore];
  [dataStore appendData:dataCopy];
}

@end