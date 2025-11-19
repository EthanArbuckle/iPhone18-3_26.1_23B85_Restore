@interface SBRebootRecipe
- (void)handleVolumeDecrease;
- (void)handleVolumeIncrease;
@end

@implementation SBRebootRecipe

- (void)handleVolumeIncrease
{
  v3 = [[SBRebootContext alloc] initWithReason:@"TestRecipe"];
  [(SBRebootContext *)v3 setDark:1];
  v2 = [SBApp restartManager];
  [v2 rebootWithContext:v3];
}

- (void)handleVolumeDecrease
{
  v2 = [SBApp restartManager];
  [v2 rebootForReason:@"TestRecipe"];
}

@end