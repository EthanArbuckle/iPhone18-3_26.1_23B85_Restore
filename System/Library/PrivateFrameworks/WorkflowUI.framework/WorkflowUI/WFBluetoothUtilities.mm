@interface WFBluetoothUtilities
+ (void)fetchBluetoothDevicesWithReceiver:(id)receiver;
@end

@implementation WFBluetoothUtilities

+ (void)fetchBluetoothDevicesWithReceiver:(id)receiver
{
  receiverCopy = receiver;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Shortcuts-%u", getpid()];
  [v4 cStringUsingEncoding:4];
  BTSessionAttachWithQueue();
}

@end