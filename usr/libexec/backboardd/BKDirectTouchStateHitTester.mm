@interface BKDirectTouchStateHitTester
- (void)dealloc;
- (void)invalidate;
@end

@implementation BKDirectTouchStateHitTester

- (void)invalidate
{
  state = self->_state;
  if (state)
  {
    self->_state = 0;

    eventProcessor = self->_eventProcessor;
    self->_eventProcessor = 0;

    displayInfo = self->_displayInfo;
    self->_displayInfo = 0;

    touchDeliveryPolicyServer = self->_touchDeliveryPolicyServer;
    self->_touchDeliveryPolicyServer = 0;
  }
}

- (void)dealloc
{
  if (self->_state)
  {
    v4 = [NSString stringWithFormat:@"must invoke -invalidate"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v11 = v5;
      v12 = 2114;
      v13 = v7;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = @"BKDirectTouchHitTesting.mm";
      v18 = 1024;
      v19 = 70;
      v20 = 2114;
      v21 = v4;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v8 = v4;
    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100004020);
  }

  v9.receiver = self;
  v9.super_class = BKDirectTouchStateHitTester;
  [(BKDirectTouchStateHitTester *)&v9 dealloc];
}

@end