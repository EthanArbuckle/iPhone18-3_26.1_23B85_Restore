@interface BYSourceDeviceMigration
+ (id)createDeviceTransferTask:(id)a3;
- (void)cancelDeviceTransferTask;
- (void)startDeviceTransferTask;
@end

@implementation BYSourceDeviceMigration

- (void)startDeviceTransferTask
{
  v2 = [(BYSourceDeviceMigration *)self sourceDeviceTransferTask];
  [v2 start];
}

- (void)cancelDeviceTransferTask
{
  v2 = [(BYSourceDeviceMigration *)self sourceDeviceTransferTask];
  [v2 cancel];
}

+ (id)createDeviceTransferTask:(id)a3
{
  v3 = MEMORY[0x1E69B1970];
  v4 = a3;
  v5 = [[v3 alloc] initWithFileTransferSession:v4];

  return v5;
}

@end