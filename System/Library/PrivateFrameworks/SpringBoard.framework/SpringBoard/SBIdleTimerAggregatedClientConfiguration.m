@interface SBIdleTimerAggregatedClientConfiguration
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)expirationTimeoutIntervalRangeForPrecedence:(unint64_t)a3;
- (id)resolvedExpirationTimeoutRange;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (void)setDisablesTimerWithPrecedence:(unint64_t)a3;
- (void)setMaxExpirationTimeout:(double)a3 ifLeastForPrecedence:(unint64_t)a4;
- (void)setMaxExpirationTimeout:(double)a3 withPrecedence:(unint64_t)a4;
- (void)setMinExpirationTimeout:(double)a3 ifGreatestForPrecedence:(unint64_t)a4;
- (void)setMinExpirationTimeout:(double)a3 withPrecedence:(unint64_t)a4;
@end

@implementation SBIdleTimerAggregatedClientConfiguration

- (void)setDisablesTimerWithPrecedence:(unint64_t)a3
{
  v4 = [[SBIdleTimerConfigurationDisablesTimerSetting alloc] initWithPrecedence:a3];
  disableTimerSetting = self->_disableTimerSetting;
  self->_disableTimerSetting = v4;
}

- (void)setMinExpirationTimeout:(double)a3 withPrecedence:(unint64_t)a4
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

  [(SBIdleTimerTimeoutPrecedenceSettings *)minExpirationTimeoutSettings _setTimeout:a4 withPrecedence:a3];
}

- (void)setMinExpirationTimeout:(double)a3 ifGreatestForPrecedence:(unint64_t)a4
{
  resolvedExpirationTimeoutRange = self->_resolvedExpirationTimeoutRange;
  self->_resolvedExpirationTimeoutRange = 0;

  minExpirationTimeoutSettings = self->_minExpirationTimeoutSettings;
  if (minExpirationTimeoutSettings)
  {

    [(SBIdleTimerTimeoutPrecedenceSettings *)minExpirationTimeoutSettings _setTimeout:a4 ifGreatestForPrecedence:a3];
  }

  else
  {

    [(SBIdleTimerAggregatedClientConfiguration *)self setMinExpirationTimeout:a4 withPrecedence:a3];
  }
}

- (void)setMaxExpirationTimeout:(double)a3 withPrecedence:(unint64_t)a4
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

  [(SBIdleTimerTimeoutPrecedenceSettings *)maxExpirationTimeoutSettings _setTimeout:a4 withPrecedence:a3];
}

- (void)setMaxExpirationTimeout:(double)a3 ifLeastForPrecedence:(unint64_t)a4
{
  resolvedExpirationTimeoutRange = self->_resolvedExpirationTimeoutRange;
  self->_resolvedExpirationTimeoutRange = 0;

  maxExpirationTimeoutSettings = self->_maxExpirationTimeoutSettings;
  if (maxExpirationTimeoutSettings)
  {

    [(SBIdleTimerTimeoutPrecedenceSettings *)maxExpirationTimeoutSettings _setTimeout:a4 ifLeastForPrecedence:a3];
  }

  else
  {

    [(SBIdleTimerAggregatedClientConfiguration *)self setMaxExpirationTimeout:a4 withPrecedence:a3];
  }
}

- (id)expirationTimeoutIntervalRangeForPrecedence:(unint64_t)a3
{
  minExpirationTimeoutSettings = self->_minExpirationTimeoutSettings;
  v6 = 0.0;
  v7 = 0.0;
  if (minExpirationTimeoutSettings)
  {
    [(SBIdleTimerTimeoutPrecedenceSettings *)minExpirationTimeoutSettings _intervalForPrecedence:a3];
    v7 = v8;
  }

  maxExpirationTimeoutSettings = self->_maxExpirationTimeoutSettings;
  if (maxExpirationTimeoutSettings)
  {
    [(SBIdleTimerTimeoutPrecedenceSettings *)maxExpirationTimeoutSettings _intervalForPrecedence:a3];
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
  v2 = [(SBIdleTimerAggregatedClientConfiguration *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_disableTimerSetting withName:@"disableTimerSetting" skipIfNil:1];
  v5 = [v3 appendObject:self->_minExpirationTimeoutSettings withName:@"minExpirationTimeoutSettings" skipIfNil:1];
  v6 = [v3 appendObject:self->_maxExpirationTimeoutSettings withName:@"maxExpirationTimeoutSettings" skipIfNil:1];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIdleTimerAggregatedClientConfiguration *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

@end