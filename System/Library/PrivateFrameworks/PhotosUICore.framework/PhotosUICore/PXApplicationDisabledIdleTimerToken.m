@interface PXApplicationDisabledIdleTimerToken
- (PXApplicationDisabledIdleTimerToken)init;
- (PXApplicationDisabledIdleTimerToken)initWithReason:(id)a3 powerAssertionID:(unsigned int)a4;
- (id)description;
@end

@implementation PXApplicationDisabledIdleTimerToken

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = [(PXApplicationDisabledIdleTimerToken *)self reason];
  v6 = [v3 initWithFormat:@"<%@ %p; reason: %@>", v4, self, v5];

  return v6;
}

- (PXApplicationDisabledIdleTimerToken)initWithReason:(id)a3 powerAssertionID:(unsigned int)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PXApplicationDisabledIdleTimerToken;
  v7 = [(PXApplicationDisabledIdleTimerToken *)&v11 init];
  if (v7)
  {
    v8 = [v6 copy];
    reason = v7->_reason;
    v7->_reason = v8;

    v7->_powerAssertionID = a4;
  }

  return v7;
}

- (PXApplicationDisabledIdleTimerToken)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXApplicationState.m" lineNumber:357 description:{@"%s is not available as initializer", "-[PXApplicationDisabledIdleTimerToken init]"}];

  abort();
}

@end