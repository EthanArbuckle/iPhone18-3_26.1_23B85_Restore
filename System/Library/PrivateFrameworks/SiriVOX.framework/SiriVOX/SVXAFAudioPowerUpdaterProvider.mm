@interface SVXAFAudioPowerUpdaterProvider
- (id)createWithProvider:(id)provider queue:(id)queue frequency:(int64_t)frequency delegate:(id)delegate;
@end

@implementation SVXAFAudioPowerUpdaterProvider

- (id)createWithProvider:(id)provider queue:(id)queue frequency:(int64_t)frequency delegate:(id)delegate
{
  v9 = MEMORY[0x277CEF190];
  delegateCopy = delegate;
  queueCopy = queue;
  providerCopy = provider;
  v13 = [[v9 alloc] initWithProvider:providerCopy queue:queueCopy frequency:frequency delegate:delegateCopy];

  return v13;
}

@end