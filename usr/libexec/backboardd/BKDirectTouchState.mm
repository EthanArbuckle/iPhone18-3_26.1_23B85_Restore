@interface BKDirectTouchState
- (BKDirectTouchState)init;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)invalidate;
@end

@implementation BKDirectTouchState

- (void)invalidate
{
  v3 = BKLogTouchEvents();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "invalidate: %{public}@", &v7, 0xCu);
  }

  sub_1000804F0(self, 0, 0);
  sub_100080620(self, 0, 0);
  [(BKDirectTouchStateHitTester *)self->_hitTester invalidate];
  hitTester = self->_hitTester;
  self->_hitTester = 0;

  [(BKDirectTouchUpdateEvents *)self->_updateEvents invalidate];
  updateEvents = self->_updateEvents;
  self->_updateEvents = 0;

  [(BSCompoundAssertion *)self->_suppressTouchesAssertion invalidate];
  suppressTouchesAssertion = self->_suppressTouchesAssertion;
  self->_suppressTouchesAssertion = 0;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100082DA0;
  v3[3] = &unk_1000FD128;
  v3[4] = self;
  v3[5] = formatter;
  [formatter appendProem:self block:v3];
}

- (BKDirectTouchState)init
{
  v4 = objc_opt_class();
  if (v4 != objc_opt_class())
  {
    v6 = [NSString stringWithFormat:@"Subclasses not allowed"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v13 = v7;
      v14 = 2114;
      v15 = v9;
      v16 = 2048;
      selfCopy = self;
      v18 = 2114;
      v19 = @"BKDirectTouchState.mm";
      v20 = 1024;
      v21 = 179;
      v22 = 2114;
      v23 = v6;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v10 = v6;
    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100083220);
  }

  v11.receiver = self;
  v11.super_class = BKDirectTouchState;
  return [(BKDirectTouchState *)&v11 init];
}

@end