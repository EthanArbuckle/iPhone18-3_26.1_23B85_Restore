@interface ChildProcess
- (ChildProcess)init;
- (id)initForDevice:(id)device withConnection:(id)connection;
- (void)dealloc;
@end

@implementation ChildProcess

- (ChildProcess)init
{
  v3.receiver = self;
  v3.super_class = ChildProcess;
  return [(ChildProcess *)&v3 init];
}

- (id)initForDevice:(id)device withConnection:(id)connection
{
  deviceCopy = device;
  connectionCopy = connection;
  v9 = [(ChildProcess *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    objc_storeStrong(&v10->_helper, connection);
    v10->_exited = 0;
    deviceCopy = [NSString stringWithFormat:@"transaction for device %@", deviceCopy];
    [deviceCopy UTF8String];
    v12 = os_transaction_create();
    osTransaction = v10->_osTransaction;
    v10->_osTransaction = v12;
  }

  return v10;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = ChildProcess;
  [(ChildProcess *)&v2 dealloc];
}

@end