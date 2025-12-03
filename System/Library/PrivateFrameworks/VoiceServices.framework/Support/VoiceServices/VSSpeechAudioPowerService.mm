@interface VSSpeechAudioPowerService
+ (id)sharedServices;
- (AFAudioPowerProviding)previousProvider;
- (BOOL)getAveragePower:(float *)power andPeakPower:(float *)peakPower;
- (id)getCurrentAudioPowerProvider;
- (void)didEndAccessPower;
@end

@implementation VSSpeechAudioPowerService

- (AFAudioPowerProviding)previousProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_previousProvider);

  return WeakRetained;
}

- (BOOL)getAveragePower:(float *)power andPeakPower:(float *)peakPower
{
  getCurrentAudioPowerProvider = [(VSSpeechAudioPowerService *)self getCurrentAudioPowerProvider];
  v8 = getCurrentAudioPowerProvider == 0;
  if (!getCurrentAudioPowerProvider)
  {
    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained(&self->_previousProvider);

  if (getCurrentAudioPowerProvider != WeakRetained)
  {
    v10 = objc_loadWeakRetained(&self->_previousProvider);
    [v10 didEndAccessPower];

    [getCurrentAudioPowerProvider willBeginAccessPower];
    objc_storeWeak(&self->_previousProvider, getCurrentAudioPowerProvider);
  }

  if ([getCurrentAudioPowerProvider getAveragePower:power andPeakPower:peakPower])
  {
    v8 = 1;
  }

  else
  {
LABEL_6:
    *power = -120.0;
    *peakPower = -120.0;
  }

  return v8;
}

- (void)didEndAccessPower
{
  WeakRetained = objc_loadWeakRetained(&self->_previousProvider);
  [WeakRetained didEndAccessPower];

  objc_storeWeak(&self->_previousProvider, 0);
}

- (id)getCurrentAudioPowerProvider
{
  v2 = +[VSSpeechTaskQueue mainDeviceQueue];
  currentTask = [v2 currentTask];

  if ([currentTask conformsToProtocol:&unk_2881D6B48])
  {
    v4 = currentTask;
    if ([v4 isSpeaking] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      audioPowerProvider = [v4 audioPowerProvider];
    }

    else
    {
      audioPowerProvider = 0;
    }
  }

  else
  {
    audioPowerProvider = 0;
  }

  return audioPowerProvider;
}

+ (id)sharedServices
{
  if (sharedServices_onceToken != -1)
  {
    dispatch_once(&sharedServices_onceToken, &__block_literal_global_2735);
  }

  v3 = sharedServices___sharedService;

  return v3;
}

uint64_t __43__VSSpeechAudioPowerService_sharedServices__block_invoke()
{
  sharedServices___sharedService = objc_alloc_init(VSSpeechAudioPowerService);

  return MEMORY[0x2821F96F8]();
}

@end