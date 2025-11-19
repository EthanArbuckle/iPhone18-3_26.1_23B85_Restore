@interface BYDaemonLockAssertionWrapper
- (BYDaemonLockAssertionWrapper)initWithAssertionRef:(__MKBAssertion *)a3 purpose:(id)a4;
- (void)dealloc;
@end

@implementation BYDaemonLockAssertionWrapper

- (BYDaemonLockAssertionWrapper)initWithAssertionRef:(__MKBAssertion *)a3 purpose:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = BYDaemonLockAssertionWrapper;
  v7 = [(BYDaemonLockAssertionWrapper *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(BYDaemonLockAssertionWrapper *)v7 setAssertionRef:a3];
    [(BYDaemonLockAssertionWrapper *)v8 setPurpose:v6];
  }

  return v8;
}

- (void)dealloc
{
  if ([(BYDaemonLockAssertionWrapper *)self assertionRef])
  {
    v3 = _BYLoggingFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(BYDaemonLockAssertionWrapper *)self purpose];
      *buf = 138543362;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing device lock assertion for purpose '%{public}@'", buf, 0xCu);
    }

    CFRelease([(BYDaemonLockAssertionWrapper *)self assertionRef]);
  }

  v5.receiver = self;
  v5.super_class = BYDaemonLockAssertionWrapper;
  [(BYDaemonLockAssertionWrapper *)&v5 dealloc];
}

@end