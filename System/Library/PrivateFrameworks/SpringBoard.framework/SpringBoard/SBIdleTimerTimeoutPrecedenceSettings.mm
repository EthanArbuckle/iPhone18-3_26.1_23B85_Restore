@interface SBIdleTimerTimeoutPrecedenceSettings
- (double)_intervalForPrecedence:(unint64_t)precedence;
- (double)greatestTimeout;
- (double)leastTimeout;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
- (unint64_t)highestPrecedence;
- (void)_setTimeout:(double)timeout ifGreatestForPrecedence:(unint64_t)precedence;
- (void)_setTimeout:(double)timeout ifLeastForPrecedence:(unint64_t)precedence;
- (void)_setTimeout:(double)timeout withPrecedence:(unint64_t)precedence;
@end

@implementation SBIdleTimerTimeoutPrecedenceSettings

- (double)_intervalForPrecedence:(unint64_t)precedence
{
  if (precedence <= 2)
  {
    return *(&self->_normalTimeout + precedence);
  }

  return result;
}

- (void)_setTimeout:(double)timeout withPrecedence:(unint64_t)precedence
{
  if (precedence <= 2)
  {
    *(&self->_normalTimeout + precedence) = timeout;
  }
}

- (void)_setTimeout:(double)timeout ifLeastForPrecedence:(unint64_t)precedence
{
  if ((BSFloatIsZero() & 1) == 0 && ((BSFloatIsZero() & 1) != 0 || (BSFloatIsZero() & 1) == 0 && BSFloatLessThanFloat()))
  {

    [(SBIdleTimerTimeoutPrecedenceSettings *)self _setTimeout:precedence withPrecedence:timeout];
  }
}

- (void)_setTimeout:(double)timeout ifGreatestForPrecedence:(unint64_t)precedence
{
  if ((BSFloatIsZero() & 1) == 0 && ((BSFloatIsZero() & 1) != 0 || (BSFloatIsZero() & 1) == 0 && BSFloatGreaterThanFloat()))
  {

    [(SBIdleTimerTimeoutPrecedenceSettings *)self _setTimeout:precedence withPrecedence:timeout];
  }
}

- (unint64_t)highestPrecedence
{
  if (BSFloatIsZero())
  {
    return BSFloatIsZero() ^ 1;
  }

  else
  {
    return 2;
  }
}

- (double)leastTimeout
{
  IsZero = BSFloatIsZero();
  if (IsZero)
  {
    criticalTimeout = 1.79769313e308;
  }

  else
  {
    criticalTimeout = self->_criticalTimeout;
  }

  v5 = IsZero ^ 1;
  if ((BSFloatIsZero() & 1) == 0 && BSFloatLessThanFloat())
  {
    criticalTimeout = self->_highTimeout;
    v5 = 1;
  }

  if ((BSFloatIsZero() & 1) == 0 && BSFloatLessThanFloat())
  {
    return self->_normalTimeout;
  }

  result = 0.0;
  if (!v5)
  {
    return result;
  }

  return criticalTimeout;
}

- (double)greatestTimeout
{
  result = self->_criticalTimeout;
  if (result < self->_highTimeout)
  {
    result = self->_highTimeout;
  }

  if (result < self->_normalTimeout)
  {
    return self->_normalTimeout;
  }

  return result;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBIdleTimerTimeoutPrecedenceSettings *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  if ((BSFloatIsZero() & 1) == 0)
  {
    v4 = [v3 appendTimeInterval:@"normalTimeout" withName:0 decomposeUnits:self->_normalTimeout];
  }

  if ((BSFloatIsZero() & 1) == 0)
  {
    v5 = [v3 appendTimeInterval:@"highTimeout" withName:0 decomposeUnits:self->_highTimeout];
  }

  if ((BSFloatIsZero() & 1) == 0)
  {
    v6 = [v3 appendTimeInterval:@"criticalTimeout" withName:0 decomposeUnits:self->_criticalTimeout];
  }

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBIdleTimerTimeoutPrecedenceSettings *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

@end