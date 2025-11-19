@interface SBIdleTimerTimeoutRange
- (SBIdleTimerTimeoutRange)initWithLowerTimeout:(double)a3 upperTimeout:(double)a4;
- (id)clippedRangeWithFavoredRange:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (id)succinctDescriptionBuilder;
@end

@implementation SBIdleTimerTimeoutRange

- (SBIdleTimerTimeoutRange)initWithLowerTimeout:(double)a3 upperTimeout:(double)a4
{
  if ((BSFloatLessThanOrEqualToFloat() & 1) == 0)
  {
    [(SBIdleTimerTimeoutRange *)a2 initWithLowerTimeout:a3 upperTimeout:a4];
  }

  v9.receiver = self;
  v9.super_class = SBIdleTimerTimeoutRange;
  result = [(SBIdleTimerTimeoutRange *)&v9 init];
  if (result)
  {
    result->_lowerTimeout = a3;
    result->_upperTimeout = a4;
  }

  return result;
}

- (id)clippedRangeWithFavoredRange:(id)a3
{
  v5 = a3;
  [v5 lowerTimeout];
  v7 = v6;
  [v5 upperTimeout];
  v9 = v8;
  if (!BSFloatLessThanOrEqualToFloat() || !BSFloatLessThanOrEqualToFloat())
  {
    if (BSFloatLessThanOrEqualToFloat() && BSFloatLessThanOrEqualToFloat() && BSFloatLessThanOrEqualToFloat())
    {
      v10 = [SBIdleTimerTimeoutRange alloc];
      lowerTimeout = self->_lowerTimeout;
LABEL_9:
      upperTimeout = v9;
LABEL_19:
      v13 = [(SBIdleTimerTimeoutRange *)v10 initWithLowerTimeout:lowerTimeout upperTimeout:upperTimeout];
      goto LABEL_22;
    }

    if (BSFloatLessThanOrEqualToFloat())
    {
      v10 = [SBIdleTimerTimeoutRange alloc];
      lowerTimeout = v9;
      goto LABEL_9;
    }

    if (BSFloatLessThanOrEqualToFloat() && BSFloatLessThanOrEqualToFloat())
    {
      v13 = v5;
      goto LABEL_22;
    }

    if (BSFloatLessThanOrEqualToFloat() && BSFloatLessThanOrEqualToFloat() && BSFloatLessThanOrEqualToFloat())
    {
      v10 = [SBIdleTimerTimeoutRange alloc];
      upperTimeout = self->_upperTimeout;
      lowerTimeout = v7;
      goto LABEL_19;
    }

    if (BSFloatLessThanOrEqualToFloat())
    {
      v10 = [SBIdleTimerTimeoutRange alloc];
      lowerTimeout = v7;
      upperTimeout = v7;
      goto LABEL_19;
    }

    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"SBIdleTimerAggregatedClientConfiguration.m" lineNumber:383 description:{@"Clipping range: %@ with favored range: %@ was not resolved.", self, v5}];
  }

  v13 = self;
LABEL_22:
  v15 = v13;

  return v15;
}

- (id)succinctDescription
{
  v2 = [(SBIdleTimerTimeoutRange *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)succinctDescriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendTimeInterval:@"lower" withName:0 decomposeUnits:self->_lowerTimeout];
  v5 = [v3 appendTimeInterval:@"upper" withName:0 decomposeUnits:self->_upperTimeout];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBIdleTimerTimeoutRange *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (void)initWithLowerTimeout:(double)a3 upperTimeout:(double)a4 .cold.1(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"SBIdleTimerAggregatedClientConfiguration.m" lineNumber:328 description:{@"lower: %g not less than upper: %g", *&a3, *&a4}];
}

@end