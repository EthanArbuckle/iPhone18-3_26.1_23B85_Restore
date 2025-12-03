@interface PKIdleTimerAssertion
- (PKIdleTimerAssertion)initWithReason:(id)reason;
- (void)dealloc;
- (void)invalidate;
@end

@implementation PKIdleTimerAssertion

- (PKIdleTimerAssertion)initWithReason:(id)reason
{
  v17 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (reasonCopy)
  {
    v14.receiver = self;
    v14.super_class = PKIdleTimerAssertion;
    self = [(PKIdleTimerAssertion *)&v14 init];
    if (self)
    {
      v6 = PKLogFacilityTypeGetObject();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v16 = reasonCopy;
        _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, "Taking idle timer assertion with reason: %@", buf, 0xCu);
      }

      objc_storeStrong(&self->_reason, reason);
      if (PKRunningInViewService())
      {
        mEMORY[0x1E69A8AB8] = [MEMORY[0x1E69A8AB8] sharedInstance];
        v8 = [mEMORY[0x1E69A8AB8] newAssertionToDisableIdleTimerForReason:self->_reason error:0];
        idleTimerAssertion = self->_idleTimerAssertion;
        self->_idleTimerAssertion = v8;

        if (!self->_idleTimerAssertion)
        {
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            v10 = "Failed to acquire idle timer assertion";
LABEL_11:
            _os_log_impl(&dword_1BD026000, v6, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
            goto LABEL_12;
          }

          goto LABEL_12;
        }
      }

      else
      {
        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        [mEMORY[0x1E69DC668] _setIdleTimerDisabled:1 forReason:self->_reason];
      }
    }

    self = self;
    selfCopy = self;
    goto LABEL_15;
  }

  v6 = PKLogFacilityTypeGetObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v10 = "Missing reason for idle timer assertion";
    goto LABEL_11;
  }

LABEL_12:

  selfCopy = 0;
LABEL_15:

  return selfCopy;
}

- (void)invalidate
{
  v9 = *MEMORY[0x1E69E9840];
  if (atomic_exchange(&self->_invalidated._Value, 1u))
  {
    v3 = PKLogFacilityTypeGetObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      reason = self->_reason;
      v7 = 138412290;
      v8 = reason;
      _os_log_impl(&dword_1BD026000, v3, OS_LOG_TYPE_DEFAULT, "Invalidating idle timer assertion with reason: %@", &v7, 0xCu);
    }

    idleTimerAssertion = self->_idleTimerAssertion;
    if (idleTimerAssertion)
    {
      [(BSInvalidatable *)idleTimerAssertion invalidate];
      mEMORY[0x1E69DC668] = self->_idleTimerAssertion;
      self->_idleTimerAssertion = 0;
    }

    else
    {
      mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
      [mEMORY[0x1E69DC668] _setIdleTimerDisabled:0 forReason:self->_reason];
    }
  }
}

- (void)dealloc
{
  [(PKIdleTimerAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = PKIdleTimerAssertion;
  [(PKIdleTimerAssertion *)&v3 dealloc];
}

@end