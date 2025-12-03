@interface BKDigitizerTouchStreamClient
- (BKDigitizerTouchStreamClient)init;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)dealloc;
@end

@implementation BKDigitizerTouchStreamClient

- (void)appendDescriptionToFormatter:(id)formatter
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100092D20;
  v3[3] = &unk_1000FD128;
  v3[4] = formatter;
  v3[5] = self;
  [formatter appendProem:self block:v3];
}

- (void)dealloc
{
  if (self && self->_valid)
  {
    v4 = [NSString stringWithFormat:@"dealloc without previous -invalidate"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v10 = v5;
      v11 = 2114;
      v12 = v7;
      v13 = 2048;
      selfCopy = self;
      v15 = 2114;
      v16 = @"BKDigitizerTouchStreamClient.m";
      v17 = 1024;
      v18 = 45;
      v19 = 2114;
      v20 = v4;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100092FF0);
  }

  v8.receiver = self;
  v8.super_class = BKDigitizerTouchStreamClient;
  [(BKDigitizerTouchStreamClient *)&v8 dealloc];
}

- (BKDigitizerTouchStreamClient)init
{
  v6.receiver = self;
  v6.super_class = BKDigitizerTouchStreamClient;
  v2 = [(BKDigitizerTouchStreamClient *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_dispatchMode = 1;
    BSContinuousMachTimeNow();
    v3->_creationTime = v4;
    v3->_valid = 1;
  }

  return v3;
}

@end