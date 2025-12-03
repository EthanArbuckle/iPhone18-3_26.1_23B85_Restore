@interface SPRSSEWrapper
+ (id)getSignedDeviceData:(id)data;
@end

@implementation SPRSSEWrapper

+ (id)getSignedDeviceData:(id)data
{
  SSEGetSignedDeviceData();

  return 0;
}

@end