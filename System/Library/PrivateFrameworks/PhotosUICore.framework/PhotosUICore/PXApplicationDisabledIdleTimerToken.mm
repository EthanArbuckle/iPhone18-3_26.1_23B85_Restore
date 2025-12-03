@interface PXApplicationDisabledIdleTimerToken
- (PXApplicationDisabledIdleTimerToken)init;
- (PXApplicationDisabledIdleTimerToken)initWithReason:(id)reason powerAssertionID:(unsigned int)d;
- (id)description;
@end

@implementation PXApplicationDisabledIdleTimerToken

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  reason = [(PXApplicationDisabledIdleTimerToken *)self reason];
  v6 = [v3 initWithFormat:@"<%@ %p; reason: %@>", v4, self, reason];

  return v6;
}

- (PXApplicationDisabledIdleTimerToken)initWithReason:(id)reason powerAssertionID:(unsigned int)d
{
  reasonCopy = reason;
  v11.receiver = self;
  v11.super_class = PXApplicationDisabledIdleTimerToken;
  v7 = [(PXApplicationDisabledIdleTimerToken *)&v11 init];
  if (v7)
  {
    v8 = [reasonCopy copy];
    reason = v7->_reason;
    v7->_reason = v8;

    v7->_powerAssertionID = d;
  }

  return v7;
}

- (PXApplicationDisabledIdleTimerToken)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXApplicationState.m" lineNumber:357 description:{@"%s is not available as initializer", "-[PXApplicationDisabledIdleTimerToken init]"}];

  abort();
}

@end