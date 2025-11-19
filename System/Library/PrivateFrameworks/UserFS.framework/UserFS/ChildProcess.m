@interface ChildProcess
- (ChildProcess)init;
- (id)initForDevice:(id)a3 withConnection:(id)a4;
- (void)dealloc;
@end

@implementation ChildProcess

- (ChildProcess)init
{
  v3.receiver = self;
  v3.super_class = ChildProcess;
  return [(ChildProcess *)&v3 init];
}

- (id)initForDevice:(id)a3 withConnection:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(ChildProcess *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v10->_helper, a4);
    v10->_exited = 0;
    v11 = [NSString stringWithFormat:@"transaction for device %@", v7];
    [v11 UTF8String];
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