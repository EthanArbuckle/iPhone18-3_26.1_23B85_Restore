@interface SiriDismissalOptions
- (SiriDismissalOptions)initWithCoder:(id)coder;
- (SiriDismissalOptions)initWithDeactivationOptions:(unint64_t)options animated:(BOOL)animated requestCancellationReason:(int64_t)reason dismissalReason:(int64_t)dismissalReason shouldTurnScreenOff:(BOOL)off;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SiriDismissalOptions

- (SiriDismissalOptions)initWithDeactivationOptions:(unint64_t)options animated:(BOOL)animated requestCancellationReason:(int64_t)reason dismissalReason:(int64_t)dismissalReason shouldTurnScreenOff:(BOOL)off
{
  v13.receiver = self;
  v13.super_class = SiriDismissalOptions;
  result = [(SiriDismissalOptions *)&v13 init];
  if (result)
  {
    result->_animated = animated;
    result->_deactivationOptions = options;
    result->_reason = reason;
    result->_dismissalReason = dismissalReason;
    result->_shouldTurnScreenOff = off;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  deactivationOptions = [(SiriDismissalOptions *)self deactivationOptions];
  [(SiriDismissalOptions *)self animated];
  v5 = NSStringFromBOOL();
  reason = [(SiriDismissalOptions *)self reason];
  v7 = SASDismissalReasonGetName([(SiriDismissalOptions *)self dismissalReason]);
  [(SiriDismissalOptions *)self shouldTurnScreenOff];
  v8 = NSStringFromBOOL();
  v9 = [v3 stringWithFormat:@"deactivationOptions:%lu, animated:%@, request cancellation reason %ld, dismissal reason %@, shouldTurnScreenOff %@", deactivationOptions, v5, reason, v7, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SiriDismissalOptions alloc];
  animated = self->_animated;
  deactivationOptions = self->_deactivationOptions;
  reason = self->_reason;
  dismissalReason = self->_dismissalReason;
  shouldTurnScreenOff = self->_shouldTurnScreenOff;

  return [(SiriDismissalOptions *)v4 initWithDeactivationOptions:deactivationOptions animated:animated requestCancellationReason:reason dismissalReason:dismissalReason shouldTurnScreenOff:shouldTurnScreenOff];
}

- (SiriDismissalOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SiriDismissalOptions;
  v5 = [(SiriDismissalOptions *)&v7 init];
  if (v5)
  {
    v5->_deactivationOptions = [coderCopy decodeIntegerForKey:@"deactivationOptions"];
    v5->_animated = [coderCopy decodeBoolForKey:@"animated"];
    v5->_reason = [coderCopy decodeIntegerForKey:@"requestCancellationReason"];
    v5->_dismissalReason = [coderCopy decodeIntegerForKey:@"dismissalReason"];
    v5->_shouldTurnScreenOff = [coderCopy decodeBoolForKey:@"shouldTurnScreenOff"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[SiriDismissalOptions deactivationOptions](self forKey:{"deactivationOptions"), @"deactivationOptions"}];
  [coderCopy encodeBool:-[SiriDismissalOptions animated](self forKey:{"animated"), @"animated"}];
  [coderCopy encodeInteger:-[SiriDismissalOptions reason](self forKey:{"reason"), @"requestCancellationReason"}];
  [coderCopy encodeInteger:-[SiriDismissalOptions dismissalReason](self forKey:{"dismissalReason"), @"dismissalReason"}];
  [coderCopy encodeBool:-[SiriDismissalOptions shouldTurnScreenOff](self forKey:{"shouldTurnScreenOff"), @"shouldTurnScreenOff"}];
}

@end