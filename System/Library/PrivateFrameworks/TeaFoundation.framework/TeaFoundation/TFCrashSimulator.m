@interface TFCrashSimulator
- (void)triggerSIGBUS;
- (void)triggerSIGILL;
- (void)triggerSIGSEGV;
@end

@implementation TFCrashSimulator

- (void)triggerSIGBUS
{
  if (isInternalBuild_onceToken != -1)
  {
    isInternalBuild_cold_1();
  }

  if (isInternalBuild_internalBuild == 1)
  {
    *dummyfunc = 0;
  }
}

- (void)triggerSIGILL
{
  if (isInternalBuild_onceToken != -1)
  {
    isInternalBuild_cold_1();
  }

  if (isInternalBuild_internalBuild == 1)
  {
    __asm { TLBI            ALLE1 }
  }
}

- (void)triggerSIGSEGV
{
  if (isInternalBuild_onceToken != -1)
  {
    isInternalBuild_cold_1();
  }
}

@end