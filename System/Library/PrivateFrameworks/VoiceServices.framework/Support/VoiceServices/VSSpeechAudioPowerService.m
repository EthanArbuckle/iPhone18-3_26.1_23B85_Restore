@interface VSSpeechAudioPowerService
+ (id)sharedServices;
- (AFAudioPowerProviding)previousProvider;
- (BOOL)getAveragePower:(float *)a3 andPeakPower:(float *)a4;
- (id)getCurrentAudioPowerProvider;
- (void)didEndAccessPower;
@end

@implementation VSSpeechAudioPowerService

- (AFAudioPowerProviding)previousProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_previousProvider);

  return WeakRetained;
}

- (BOOL)getAveragePower:(float *)a3 andPeakPower:(float *)a4
{
  v7 = [(VSSpeechAudioPowerService *)self getCurrentAudioPowerProvider];
  v8 = v7 == 0;
  if (!v7)
  {
    goto LABEL_6;
  }

  WeakRetained = objc_loadWeakRetained(&self->_previousProvider);

  if (v7 != WeakRetained)
  {
    v10 = objc_loadWeakRetained(&self->_previousProvider);
    [v10 didEndAccessPower];

    [v7 willBeginAccessPower];
    objc_storeWeak(&self->_previousProvider, v7);
  }

  if ([v7 getAveragePower:a3 andPeakPower:a4])
  {
    v8 = 1;
  }

  else
  {
LABEL_6:
    *a3 = -120.0;
    *a4 = -120.0;
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
  v3 = [v2 currentTask];

  if ([v3 conformsToProtocol:&unk_2881D6B48])
  {
    v4 = v3;
    if ([v4 isSpeaking] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v5 = [v4 audioPowerProvider];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
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