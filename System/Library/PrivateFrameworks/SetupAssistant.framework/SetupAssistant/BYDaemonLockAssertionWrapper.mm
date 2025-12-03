@interface BYDaemonLockAssertionWrapper
- (BYDaemonLockAssertionWrapper)initWithAssertionRef:(__MKBAssertion *)ref purpose:(id)purpose;
- (void)dealloc;
@end

@implementation BYDaemonLockAssertionWrapper

- (BYDaemonLockAssertionWrapper)initWithAssertionRef:(__MKBAssertion *)ref purpose:(id)purpose
{
  purposeCopy = purpose;
  v10.receiver = self;
  v10.super_class = BYDaemonLockAssertionWrapper;
  v7 = [(BYDaemonLockAssertionWrapper *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(BYDaemonLockAssertionWrapper *)v7 setAssertionRef:ref];
    [(BYDaemonLockAssertionWrapper *)v8 setPurpose:purposeCopy];
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
      purpose = [(BYDaemonLockAssertionWrapper *)self purpose];
      *buf = 138543362;
      v7 = purpose;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Releasing device lock assertion for purpose '%{public}@'", buf, 0xCu);
    }

    CFRelease([(BYDaemonLockAssertionWrapper *)self assertionRef]);
  }

  v5.receiver = self;
  v5.super_class = BYDaemonLockAssertionWrapper;
  [(BYDaemonLockAssertionWrapper *)&v5 dealloc];
}

@end