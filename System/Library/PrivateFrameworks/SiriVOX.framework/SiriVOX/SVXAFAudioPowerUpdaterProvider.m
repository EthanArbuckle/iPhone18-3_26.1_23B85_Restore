@interface SVXAFAudioPowerUpdaterProvider
- (id)createWithProvider:(id)a3 queue:(id)a4 frequency:(int64_t)a5 delegate:(id)a6;
@end

@implementation SVXAFAudioPowerUpdaterProvider

- (id)createWithProvider:(id)a3 queue:(id)a4 frequency:(int64_t)a5 delegate:(id)a6
{
  v9 = MEMORY[0x277CEF190];
  v10 = a6;
  v11 = a4;
  v12 = a3;
  v13 = [[v9 alloc] initWithProvider:v12 queue:v11 frequency:a5 delegate:v10];

  return v13;
}

@end