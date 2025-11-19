@interface TRIXPCActivityState
+ (id)xPCActivityStateWithFutureCompletionStatus:(unint64_t)a3 capabilities:(unint64_t)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToXPCActivityState:(id)a3;
- (TRIXPCActivityState)initWithFutureCompletionStatus:(unint64_t)a3 capabilities:(unint64_t)a4;
- (id)copyWithReplacementCapabilities:(unint64_t)a3;
- (id)copyWithReplacementFutureCompletionStatus:(unint64_t)a3;
- (id)description;
@end

@implementation TRIXPCActivityState

- (TRIXPCActivityState)initWithFutureCompletionStatus:(unint64_t)a3 capabilities:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = TRIXPCActivityState;
  result = [(TRIXPCActivityState *)&v7 init];
  if (result)
  {
    result->_futureCompletionStatus = a3;
    result->_capabilities = a4;
  }

  return result;
}

+ (id)xPCActivityStateWithFutureCompletionStatus:(unint64_t)a3 capabilities:(unint64_t)a4
{
  v4 = [[a1 alloc] initWithFutureCompletionStatus:a3 capabilities:a4];

  return v4;
}

- (id)copyWithReplacementFutureCompletionStatus:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  capabilities = self->_capabilities;

  return [v5 initWithFutureCompletionStatus:a3 capabilities:capabilities];
}

- (id)copyWithReplacementCapabilities:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  futureCompletionStatus = self->_futureCompletionStatus;

  return [v5 initWithFutureCompletionStatus:futureCompletionStatus capabilities:a3];
}

- (BOOL)isEqualToXPCActivityState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && (futureCompletionStatus = self->_futureCompletionStatus, futureCompletionStatus == [v4 futureCompletionStatus]))
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIXPCActivityState *)self isEqualToXPCActivityState:v5];
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