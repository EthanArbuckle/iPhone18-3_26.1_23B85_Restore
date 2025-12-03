@interface SBIdleTimerAggregatedClientConfiguration
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)expirationTimeoutIntervalRangeForPrecedence:(unint64_t)precedence;
- (id)resolvedExpirationTimeoutRange;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)setDisablesTimerWithPrecedence:(unint64_t)precedence;
- (void)setMaxExpirationTimeout:(double)timeout ifLeastForPrecedence:(unint64_t)precedence;
- (void)setMaxExpirationTimeout:(double)timeout withPrecedence:(unint64_t)precedence;
- (void)setMinExpirationTimeout:(double)timeout ifGreatestForPrecedence:(unint64_t)precedence;
- (void)setMinExpirationTimeout:(double)timeout withPrecedence:(unint64_t)precedence;
@end

@implementation SBIdleTimerAggregatedClientConfiguration

- (void)setDisablesTimerWithPrecedence:(unint64_t)precedence
{
  v4 = [[SBIdleTimerConfigurationDisablesTimerSetting alloc] initWithPrecedence:precedence];
  disableTimerSetting = self->_disableTimerSetting;
  self->_disableTimerSetting = v4;
}

- (void)setMinExpirationTimeout:(double)timeout withPrecedence:(unint64_t)precedence
{
  resolvedExpirationTimeoutRange = self->_resolvedExpirationTimeoutRange;
  self->_resolvedExpirationTimeoutRange = 0;

  minExpirationTimeoutSettings = self->_minExpirationTimeoutSettings;
  if (!minExpirationTimeoutSettings)
  {
    v9 = objc_alloc_init(SBIdleTimerTimeoutPrecedenceSettings);
    v10 = self->_minExpirationTimeoutSettings;
    self->_minExpirationTimeoutSettings = v9;

    minExpirationTimeoutSettings = self->_minExpirationTimeoutSettings;
  }

  [(SBIdleTimerTimeoutPrecedenceSettings *)minExpirationTimeoutSettings _setTimeout:precedence withPrecedence:timeout];
}

- (void)setMinExpirationTimeout:(double)timeout ifGreatestForPrecedence:(unint64_t)precedence
{
  resolvedExpirationTimeoutRange = self->_resolvedExpirationTimeoutRange;
  self->_resolvedExpirationTimeoutRange = 0;

  minExpirationTimeoutSettings = self->_minExpirationTimeoutSettings;
  if (minExpirationTimeoutSettings)
  {

    [(SBIdleTimerTimeoutPrecedenceSettings *)minExpirationTimeoutSettings _setTimeout:precedence ifGreatestForPrecedence:timeout];
  }

  else
  {

    [(SBIdleTimerAggregatedClientConfiguration *)self setMinExpirationTimeout:precedence withPrecedence:timeout];
  }
}

- (void)setMaxExpirationTimeout:(double)timeout withPrecedence:(unint64_t)precedence
{
  resolvedExpirationTimeoutRange = self->_resolvedExpirationTimeoutRange;
  self->_resolvedExpirationTimeoutRange = 0;

  maxExpirationTimeoutSettings = self->_maxExpirationTimeoutSettings;
  if (!maxExpirationTimeoutSettings)
  {
    v9 = objc_alloc_init(SBIdleTimerTimeoutPrecedenceSettings);
    v10 = self->_maxExpirationTimeoutSettings;
    self->_maxExpirationTimeoutSettings = v9;

    maxExpirationTimeoutSettings = self->_maxExpirationTimeoutSettings;
  }

  [(SBIdleTimerTimeoutPrecedenceSettings *)maxExpirationTimeoutSettings _setTimeout:precedence withPrecedence:timeout];
}

- (void)setMaxExpirationTimeout:(double)timeout ifLeastForPrecedence:(unint64_t)precedence
{
  resolvedExpirationTimeoutRange = self->_resolvedExpirationTimeoutRange;
  self->_resolvedExpirationTimeoutRange = 0;

  maxExpirationTimeoutSettings = self->_maxExpirationTimeoutSettings;
  if (maxExpirationTimeoutSettings)
  {

    [(SBIdleTimerTimeoutPrecedenceSettings *)maxExpirationTimeoutSettings _setTimeout:precedence ifLeastForPrecedence:timeout];
  }

  else
  {

    [(SBIdleTimerAggregatedClientConfiguration *)self setMaxExpirationTimeout:precedence withPrecedence:timeout];
  }
}

- (id)expirationTimeoutIntervalRangeForPrecedence:(unint64_t)precedence
{
  minExpirationTimeoutSettings = self->_minExpirationTimeoutSettings;
  v6 = 0.0;
  v7 = 0.0;
  if (minExpirationTimeoutSettings)
  {
    [(SBIdleTimerTimeoutPrecedenceSettings *)minExpirationTimeoutSettings _intervalForPrecedence:precedence];
    v7 = v8;
  }

  maxExpirationTimeoutSettings = self->_maxExpirationTimeoutSettings;
  if (maxExpirationTimeoutSettings)
  {
    [(SBIdleTimerTimeoutPrecedenceSettings *)maxExpirationTimeoutSettings _intervalForPrecedence:precedence];
    v6 = v10;
    if ((BSFloatIsZero() & 1) == 0)
    {
      if (BSFloatGreaterThanFloat())
      {
        v7 = v6;
      }
    }
  }

  if (BSFloatIsZero())
  {
    v6 = 1.79769313e308;
  }

  v11 = [[SBIdleTimerTimeoutRange alloc] initWithLowerTimeout:v7 upperTimeout:v6];

  return v11;
}

- (id)resolvedExpirationTimeoutRange
{
  resolvedExpirationTimeoutRange = self->_resolvedExpirationTimeoutRange;
  if (!resolvedExpirationTimeoutRange)
  {
    v4 = [(SBIdleTimerAggregatedClientConfiguration *)self expirationTimeoutIntervalRangeForPrecedence:0];
    v5 = [(SBIdleTimerAggregatedClientConfiguration *)self expirationTimeoutIntervalRangeForPrecedence:1];
    v6 = [(SBIdleTimerAggregatedClientConfiguration *)self expirationTimeoutIntervalRangeForPrecedence:2];
    v7 = [v4 clippedRangeWithFavoredRange:v5];
    v8 = [v7 clippedRangeWithFavoredRange:v6];
    v9 = self->_resolvedExpirationTimeoutRange;
    self->_resolvedExpirationTimeoutRange = v8;

    resolvedExpirationTimeoutRange = self->_resolvedExpirationTimeoutRange;
  }

  return resolvedExpirationTimeoutRange;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIdleTimerAggregatedClientConfiguration *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_disableTimerSetting withName:@"disableTimerSetting" skipIfNil:1];
  v5 = [v3 appendObject:self->_minExpirationTimeoutSettings withName:@"minExpirationTimeoutSettings" skipIfNil:1];
  v6 = [v3 appendObject:self->_maxExpirationTimeoutSettings withName:@"maxExpirationTimeoutSettings" skipIfNil:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIdleTimerAggregatedClientConfiguration *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end