@interface TRIXPCActivityState
+ (id)xPCActivityStateWithFutureCompletionStatus:(unint64_t)status capabilities:(unint64_t)capabilities;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToXPCActivityState:(id)state;
- (TRIXPCActivityState)initWithFutureCompletionStatus:(unint64_t)status capabilities:(unint64_t)capabilities;
- (id)copyWithReplacementCapabilities:(unint64_t)capabilities;
- (id)copyWithReplacementFutureCompletionStatus:(unint64_t)status;
- (id)description;
@end

@implementation TRIXPCActivityState

- (TRIXPCActivityState)initWithFutureCompletionStatus:(unint64_t)status capabilities:(unint64_t)capabilities
{
  v7.receiver = self;
  v7.super_class = TRIXPCActivityState;
  result = [(TRIXPCActivityState *)&v7 init];
  if (result)
  {
    result->_futureCompletionStatus = status;
    result->_capabilities = capabilities;
  }

  return result;
}

+ (id)xPCActivityStateWithFutureCompletionStatus:(unint64_t)status capabilities:(unint64_t)capabilities
{
  v4 = [[self alloc] initWithFutureCompletionStatus:status capabilities:capabilities];

  return v4;
}

- (id)copyWithReplacementFutureCompletionStatus:(unint64_t)status
{
  v5 = objc_alloc(objc_opt_class());
  capabilities = self->_capabilities;

  return [v5 initWithFutureCompletionStatus:status capabilities:capabilities];
}

- (id)copyWithReplacementCapabilities:(unint64_t)capabilities
{
  v5 = objc_alloc(objc_opt_class());
  futureCompletionStatus = self->_futureCompletionStatus;

  return [v5 initWithFutureCompletionStatus:futureCompletionStatus capabilities:capabilities];
}

- (BOOL)isEqualToXPCActivityState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (stateCopy && (futureCompletionStatus = self->_futureCompletionStatus, futureCompletionStatus == [stateCopy futureCompletionStatus]))
  {
    capabilities = self->_capabilities;
    v8 = capabilities == [v5 capabilities];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIXPCActivityState *)self isEqualToXPCActivityState:v5];
  }

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_futureCompletionStatus];
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_capabilities];
  v6 = [v3 initWithFormat:@"<TRIXPCActivityState | futureCompletionStatus:%@ capabilities:%@>", v4, v5];

  return v6;
}

@end