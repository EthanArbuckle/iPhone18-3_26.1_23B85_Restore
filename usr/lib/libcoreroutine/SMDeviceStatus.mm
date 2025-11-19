@interface SMDeviceStatus
@end

@implementation SMDeviceStatus

void __66__SMDeviceStatus_RTCoreDataTransformable__createWithDeviceStatus___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D4AAB8]);
  v9 = [*(a1 + 32) identifier];
  v3 = [*(a1 + 32) batteryRemaining];
  v4 = [*(a1 + 32) cellularStrength];
  v5 = [*(a1 + 32) date];
  v6 = [v2 initWithIdentifier:v9 batteryRemaining:v3 cellularStrength:v4 date:v5 wifiStrength:{objc_msgSend(*(a1 + 32), "wifiStrength")}];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

@end