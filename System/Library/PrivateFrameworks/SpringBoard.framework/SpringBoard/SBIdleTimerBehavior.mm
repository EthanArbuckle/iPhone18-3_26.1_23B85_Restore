@interface SBIdleTimerBehavior
+ (id)autoLockBehavior;
+ (id)behaviorForBehaviorProvider:(id)a3;
+ (id)behaviorWithDuration:(int64_t)a3 mode:(int64_t)a4 warnMode:(int64_t)a5;
+ (id)defaultBehavior;
+ (id)disabledBehavior;
+ (id)lockScreenBehavior;
- (id)_initWithBehaviorProvider:(id)a3;
- (id)_initWithDuration:(int64_t)a3 mode:(int64_t)a4 warnMode:(int64_t)a5;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_appendInnerDescriptionToFormatter:(id)a3;
- (void)appendDescriptionToFormatter:(id)a3;
@end

@implementation SBIdleTimerBehavior

+ (id)autoLockBehavior
{
  v2 = [[a1 alloc] _initWithDuration:16 mode:1 warnMode:2];

  return v2;
}

+ (id)disabledBehavior
{
  v2 = [[a1 alloc] _initWithDuration:18 mode:3 warnMode:1];

  return v2;
}

+ (id)defaultBehavior
{
  v3 = +[SBLockScreenManager sharedInstance];
  if ([v3 isUILocked])
  {

LABEL_4:
    v6 = [a1 lockScreenBehavior];
    goto LABEL_6;
  }

  v4 = +[SBCoverSheetPresentationManager sharedInstance];
  v5 = [v4 isVisible];

  if (v5)
  {
    goto LABEL_4;
  }

  v6 = [a1 autoLockBehavior];
LABEL_6:

  return v6;
}

+ (id)lockScreenBehavior
{
  v3 = +[SBLockScreenManager sharedInstance];
  v4 = [v3 lockScreenEnvironment];
  v5 = [v4 idleTimerController];

  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 requestIdleTimerBehaviorForReason:@"lockScreenIdleTimerDescriptor"];
    v7 = [a1 behaviorForBehaviorProvider:v6];
  }

  else
  {
    v7 = [[a1 alloc] _initWithDuration:1 mode:1 warnMode:2];
  }

  return v7;
}

+ (id)behaviorForBehaviorProvider:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] _initWithBehaviorProvider:v4];

  return v5;
}

+ (id)behaviorWithDuration:(int64_t)a3 mode:(int64_t)a4 warnMode:(int64_t)a5
{
  v5 = [[a1 alloc] _initWithDuration:a3 mode:a4 warnMode:a5];

  return v5;
}

- (id)_initWithDuration:(int64_t)a3 mode:(int64_t)a4 warnMode:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = SBIdleTimerBehavior;
  result = [(SBIdleTimerBehavior *)&v9 init];
  if (result)
  {
    *(result + 2) = a4;
    *(result + 3) = a3;
    *(result + 1) = a5;
  }

  return result;
}

- (id)_initWithBehaviorProvider:(id)a3
{
  v4 = a3;
  v5 = -[SBIdleTimerBehavior _initWithDuration:mode:warnMode:](self, "_initWithDuration:mode:warnMode:", [v4 idleTimerDuration], objc_msgSend(v4, "idleTimerMode"), objc_msgSend(v4, "idleWarnMode"));
  v6 = objc_opt_respondsToSelector();
  v7 = 0;
  v8 = 0;
  if (v6)
  {
    [v4 customIdleWarningTimeout];
  }

  v5[4] = v8;
  if (objc_opt_respondsToSelector())
  {
    [v4 customIdleExpirationTimeout];
    v7 = v9;
  }

  v5[5] = v7;

  return v5;
}

- (id)succinctDescription
{
  v2 = [(SBIdleTimerBehavior *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIdleTimerBehavior *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)_appendInnerDescriptionToFormatter:(id)a3
{
  v9 = a3;
  v4 = NSStringFromIdleTimerDuration();
  [v9 appendString:v4 withName:@"duration"];

  v5 = NSStringFromSBFIdleTimerMode();
  [v9 appendString:v5 withName:@"mode"];

  v6 = NSStringFromIdleWarnMode();
  [v9 appendString:v6 withName:@"warnMode"];

  if ((BSFloatIsZero() & 1) == 0)
  {
    v7 = [v9 appendTimeInterval:@"customIdleExpirationTimeout" withName:0 decomposeUnits:self->_customIdleExpirationTimeout];
  }

  if ((BSFloatIsZero() & 1) == 0)
  {
    v8 = [v9 appendTimeInterval:@"customIdleWarningTimeout" withName:0 decomposeUnits:self->_customIdleWarningTimeout];
  }
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBIdleTimerBehavior *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SBIdleTimerBehavior_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2783A92D8;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SBIdleTimerBehavior_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_2783A92D8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 appendProem:self block:v6];
}

@end