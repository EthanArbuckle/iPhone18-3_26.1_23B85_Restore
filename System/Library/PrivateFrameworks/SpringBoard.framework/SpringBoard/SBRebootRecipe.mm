@interface SBRebootRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBRebootRecipe

- (void)handleVolumeIncrease
{
  v3 = [[SBRebootContext alloc] initWithReason:@"TestRecipe"];
  [(SBRebootContext *)v3 setDark:1];
  restartManager = [SBApp restartManager];
  [restartManager rebootWithContext:v3];
}

- (void)handleVolumeDecrease
{
  restartManager = [SBApp restartManager];
  [restartManager rebootForReason:@"TestRecipe"];
}

@end