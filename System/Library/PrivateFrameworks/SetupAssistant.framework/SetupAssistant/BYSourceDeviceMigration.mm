@interface BYSourceDeviceMigration
+ (id)createDeviceTransferTask:(id)task;
- (void)cancelDeviceTransferTask;
- (void)startDeviceTransferTask;
@end

@implementation BYSourceDeviceMigration

- (void)startDeviceTransferTask
{
  sourceDeviceTransferTask = [(BYSourceDeviceMigration *)self sourceDeviceTransferTask];
  [sourceDeviceTransferTask start];
}

- (void)cancelDeviceTransferTask
{
  sourceDeviceTransferTask = [(BYSourceDeviceMigration *)self sourceDeviceTransferTask];
  [sourceDeviceTransferTask cancel];
}

+ (id)createDeviceTransferTask:(id)task
{
  v3 = MEMORY[0x1E69B1970];
  taskCopy = task;
  v5 = [[v3 alloc] initWithFileTransferSession:taskCopy];

  return v5;
}

@end