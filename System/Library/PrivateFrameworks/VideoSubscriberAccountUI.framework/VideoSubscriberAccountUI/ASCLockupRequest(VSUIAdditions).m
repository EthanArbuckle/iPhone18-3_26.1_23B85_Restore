@interface ASCLockupRequest(VSUIAdditions)
+ (id)tvProviderLockupRequestWithAdamID:()VSUIAdditions;
@end

@implementation ASCLockupRequest(VSUIAdditions)

+ (id)tvProviderLockupRequestWithAdamID:()VSUIAdditions
{
  v3 = MEMORY[0x277CEC258];
  v4 = a3;
  v5 = [[v3 alloc] initWithStringValue:v4];

  v6 = objc_alloc(MEMORY[0x277CEC290]);
  v7 = [v6 initWithID:v5 kind:*MEMORY[0x277CEC230] context:*MEMORY[0x277CEC220]];
  v8 = [v7 lockupRequestWithClientID:@"TVProvider"];

  return v8;
}

@end