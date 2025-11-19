@interface WFBluetoothUtilities
+ (void)fetchBluetoothDevicesWithReceiver:(id)a3;
@end

@implementation WFBluetoothUtilities

+ (void)fetchBluetoothDevicesWithReceiver:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shortcuts-%u", getpid()];
  [v4 cStringUsingEncoding:4];
  BTSessionAttachWithQueue();
}

@end