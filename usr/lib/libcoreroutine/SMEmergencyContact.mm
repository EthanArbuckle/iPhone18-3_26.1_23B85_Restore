@interface SMEmergencyContact
@end

@implementation SMEmergencyContact

void __75__SMEmergencyContact_RTCoreDataTransformable__createWithEmergenecyContact___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277D4AAC8]);
  v8 = [*(a1 + 32) identifier];
  v3 = [*(a1 + 32) name];
  v4 = [*(a1 + 32) phoneNumber];
  v5 = [v2 initWithIdentifier:v8 name:v3 phoneNumber:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

@end