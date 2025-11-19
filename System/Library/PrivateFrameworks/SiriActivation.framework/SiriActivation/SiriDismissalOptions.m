@interface SiriDismissalOptions
- (SiriDismissalOptions)initWithCoder:(id)a3;
- (SiriDismissalOptions)initWithDeactivationOptions:(unint64_t)a3 animated:(BOOL)a4 requestCancellationReason:(int64_t)a5 dismissalReason:(int64_t)a6 shouldTurnScreenOff:(BOOL)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SiriDismissalOptions

- (SiriDismissalOptions)initWithDeactivationOptions:(unint64_t)a3 animated:(BOOL)a4 requestCancellationReason:(int64_t)a5 dismissalReason:(int64_t)a6 shouldTurnScreenOff:(BOOL)a7
{
  v13.receiver = self;
  v13.super_class = SiriDismissalOptions;
  result = [(SiriDismissalOptions *)&v13 init];
  if (result)
  {
    result->_animated = a4;
    result->_deactivationOptions = a3;
    result->_reason = a5;
    result->_dismissalReason = a6;
    result->_shouldTurnScreenOff = a7;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(SiriDismissalOptions *)self deactivationOptions];
  [(SiriDismissalOptions *)self animated];
  v5 = NSStringFromBOOL();
  v6 = [(SiriDismissalOptions *)self reason];
  v7 = SASDismissalReasonGetName([(SiriDismissalOptions *)self dismissalReason]);
  [(SiriDismissalOptions *)self shouldTurnScreenOff];
  v8 = NSStringFromBOOL();
  v9 = [v3 stringWithFormat:@"deactivationOptions:%lu, animated:%@, request cancellation reason %ld, dismissal reason %@, shouldTurnScreenOff %@", v4, v5, v6, v7, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SiriDismissalOptions alloc];
  animated = self->_animated;
  deactivationOptions = self->_deactivationOptions;
  reason = self->_reason;
  dismissalReason = self->_dismissalReason;
  shouldTurnScreenOff = self->_shouldTurnScreenOff;

  return [(SiriDismissalOptions *)v4 initWithDeactivationOptions:deactivationOptions animated:animated requestCancellationReason:reason dismissalReason:dismissalReason shouldTurnScreenOff:shouldTurnScreenOff];
}

- (SiriDismissalOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SiriDismissalOptions;
  v5 = [(SiriDismissalOptions *)&v7 init];
  if (v5)
  {
    v5->_deactivationOptions = [v4 decodeIntegerForKey:@"deactivationOptions"];
    v5->_animated = [v4 decodeBoolForKey:@"animated"];
    v5->_reason = [v4 decodeIntegerForKey:@"requestCancellationReason"];
    v5->_dismissalReason = [v4 decodeIntegerForKey:@"dismissalReason"];
    v5->_shouldTurnScreenOff = [v4 decodeBoolForKey:@"shouldTurnScreenOff"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[SiriDismissalOptions deactivationOptions](self forKey:{"deactivationOptions"), @"deactivationOptions"}];
  [v4 encodeBool:-[SiriDismissalOptions animated](self forKey:{"animated"), @"animated"}];
  [v4 encodeInteger:-[SiriDismissalOptions reason](self forKey:{"reason"), @"requestCancellationReason"}];
  [v4 encodeInteger:-[SiriDismissalOptions dismissalReason](self forKey:{"dismissalReason"), @"dismissalReason"}];
  [v4 encodeBool:-[SiriDismissalOptions shouldTurnScreenOff](self forKey:{"shouldTurnScreenOff"), @"shouldTurnScreenOff"}];
}

@end