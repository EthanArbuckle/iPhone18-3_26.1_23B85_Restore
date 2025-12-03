@interface SBIdleTimerBehavior
+ (id)autoLockBehavior;
+ (id)behaviorForBehaviorProvider:(id)provider;
+ (id)behaviorWithDuration:(int64_t)duration mode:(int64_t)mode warnMode:(int64_t)warnMode;
+ (id)defaultBehavior;
+ (id)disabledBehavior;
+ (id)lockScreenBehavior;
- (id)_initWithBehaviorProvider:(id)provider;
- (id)_initWithDuration:(int64_t)duration mode:(int64_t)mode warnMode:(int64_t)warnMode;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (void)_appendInnerDescriptionToFormatter:(id)formatter;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation SBIdleTimerBehavior

+ (id)autoLockBehavior
{
  v2 = [[self alloc] _initWithDuration:16 mode:1 warnMode:2];

  return v2;
}

+ (id)disabledBehavior
{
  v2 = [[self alloc] _initWithDuration:18 mode:3 warnMode:1];

  return v2;
}

+ (id)defaultBehavior
{
  v3 = +[SBLockScreenManager sharedInstance];
  if ([v3 isUILocked])
  {

LABEL_4:
    lockScreenBehavior = [self lockScreenBehavior];
    goto LABEL_6;
  }

  v4 = +[SBCoverSheetPresentationManager sharedInstance];
  isVisible = [v4 isVisible];

  if (isVisible)
  {
    goto LABEL_4;
  }

  lockScreenBehavior = [self autoLockBehavior];
LABEL_6:

  return lockScreenBehavior;
}

+ (id)lockScreenBehavior
{
  v3 = +[SBLockScreenManager sharedInstance];
  lockScreenEnvironment = [v3 lockScreenEnvironment];
  idleTimerController = [lockScreenEnvironment idleTimerController];

  if (objc_opt_respondsToSelector())
  {
    v6 = [idleTimerController requestIdleTimerBehaviorForReason:@"lockScreenIdleTimerDescriptor"];
    v7 = [self behaviorForBehaviorProvider:v6];
  }

  else
  {
    v7 = [[self alloc] _initWithDuration:1 mode:1 warnMode:2];
  }

  return v7;
}

+ (id)behaviorForBehaviorProvider:(id)provider
{
  providerCopy = provider;
  v5 = [[self alloc] _initWithBehaviorProvider:providerCopy];

  return v5;
}

+ (id)behaviorWithDuration:(int64_t)duration mode:(int64_t)mode warnMode:(int64_t)warnMode
{
  v5 = [[self alloc] _initWithDuration:duration mode:mode warnMode:warnMode];

  return v5;
}

- (id)_initWithDuration:(int64_t)duration mode:(int64_t)mode warnMode:(int64_t)warnMode
{
  v9.receiver = self;
  v9.super_class = SBIdleTimerBehavior;
  result = [(SBIdleTimerBehavior *)&v9 init];
  if (result)
  {
    *(result + 2) = mode;
    *(result + 3) = duration;
    *(result + 1) = warnMode;
  }

  return result;
}

- (id)_initWithBehaviorProvider:(id)provider
{
  providerCopy = provider;
  v5 = -[SBIdleTimerBehavior _initWithDuration:mode:warnMode:](self, "_initWithDuration:mode:warnMode:", [providerCopy idleTimerDuration], objc_msgSend(providerCopy, "idleTimerMode"), objc_msgSend(providerCopy, "idleWarnMode"));
  v6 = objc_opt_respondsToSelector();
  v7 = 0;
  v8 = 0;
  if (v6)
  {
    [providerCopy customIdleWarningTimeout];
  }

  v5[4] = v8;
  if (objc_opt_respondsToSelector())
  {
    [providerCopy customIdleExpirationTimeout];
    v7 = v9;
  }

  v5[5] = v7;

  return v5;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIdleTimerBehavior *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIdleTimerBehavior *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (void)_appendInnerDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v4 = NSStringFromIdleTimerDuration();
  [formatterCopy appendString:v4 withName:@"duration"];

  v5 = NSStringFromSBFIdleTimerMode();
  [formatterCopy appendString:v5 withName:@"mode"];

  v6 = NSStringFromIdleWarnMode();
  [formatterCopy appendString:v6 withName:@"warnMode"];

  if ((BSFloatIsZero() & 1) == 0)
  {
    v7 = [formatterCopy appendTimeInterval:@"customIdleExpirationTimeout" withName:0 decomposeUnits:self->_customIdleExpirationTimeout];
  }

  if ((BSFloatIsZero() & 1) == 0)
  {
    v8 = [formatterCopy appendTimeInterval:@"customIdleWarningTimeout" withName:0 decomposeUnits:self->_customIdleWarningTimeout];
  }
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBIdleTimerBehavior *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__SBIdleTimerBehavior_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2783A92D8;
  v10[4] = self;
  v6 = succinctDescriptionBuilder;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__SBIdleTimerBehavior_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_2783A92D8;
  v6[4] = self;
  v7 = formatterCopy;
  v5 = formatterCopy;
  [v5 appendProem:self block:v6];
}

@end