@interface SBUIPeriocularController
+ (id)sharedInstance;
- (BOOL)periocularEnabled;
@end

@implementation SBUIPeriocularController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[SBUIPeriocularController sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_5;

  return v3;
}

uint64_t __42__SBUIPeriocularController_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBUIPeriocularController);
  v1 = sharedInstance___sharedInstance_5;
  sharedInstance___sharedInstance_5 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (BOOL)periocularEnabled
{
  v2 = +[SBUIBiometricResource sharedInstance];
  isPeriocularMatchingEnabled = [v2 isPeriocularMatchingEnabled];

  return isPeriocularMatchingEnabled;
}

@end