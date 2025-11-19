@interface CSPower
+ (CSPower)sharedInstance;
- (CSPower)init;
- (void)createPowerAssertion:(id)a3;
- (void)releasePowerAssertion;
@end

@implementation CSPower

+ (CSPower)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1003522C0;
  block[3] = &unk_100423460;
  block[4] = a1;
  if (qword_100458980 != -1)
  {
    dispatch_once(&qword_100458980, block);
  }

  v2 = qword_100458978;

  return v2;
}

- (CSPower)init
{
  v5.receiver = self;
  v5.super_class = CSPower;
  v2 = [(CSPower *)&v5 init];
  v3 = v2;
  if (v2)
  {
    if ([(CSPower *)v2 isAssertionActive])
    {
      [(CSPower *)v3 releasePowerAssertion];
    }

    *&v3->_refCount = 0;
    v3->_lock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

- (void)createPowerAssertion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(CSPower *)self isAssertionActive];
  refCount = self->_refCount;
  if (!v5)
  {
    if (refCount)
    {
      if (qword_1004568B8 != -1)
      {
        sub_100352C64();
      }

      v9 = qword_1004568C0;
      if (os_log_type_enabled(qword_1004568C0, OS_LOG_TYPE_FAULT))
      {
        v10 = self->_refCount;
        *buf = 67109120;
        LODWORD(v26[0]) = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_FAULT, "Power assertion ref count should have been 0 but is to %d", buf, 8u);
      }

      self->_refCount = 0;
    }

    v24[0] = @"PreventUserIdleSystemSleep";
    v11 = [NSString stringWithFormat:@"%@(%@)", @"com.apple.anomalydetectiond.PowerAssertion", v4, @"AssertType", @"AssertName"];
    v24[1] = v11;
    v24[2] = &off_10043F408;
    v23[2] = @"TimeoutSeconds";
    v23[3] = @"TimeoutAction";
    v24[3] = @"TimeoutActionRelease";
    v12 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:4];

    self->_assertionID = 0;
    p_assertionID = &self->_assertionID;
    if (IOPMAssertionCreateWithProperties(v12, &self->_assertionID) || !*p_assertionID)
    {
      *p_assertionID = 0;
      if (qword_1004568B8 != -1)
      {
        sub_100352C78();
      }

      v14 = qword_1004568C0;
      if (!os_log_type_enabled(qword_1004568C0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      *buf = 0;
      v15 = "Creating power assertion failed";
      v16 = v14;
      v17 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      ++self->_refCount;
      if (qword_1004568B8 != -1)
      {
        sub_100352C78();
      }

      v18 = qword_1004568C0;
      if (os_log_type_enabled(qword_1004568C0, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v26[0] = v4;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Successfully created new power assertion for %@", buf, 0xCu);
      }

      if (!self->_osTransaction)
      {
        v20 = v4;
        [v4 UTF8String];
        v21 = os_transaction_create();
        osTransaction = self->_osTransaction;
        self->_osTransaction = v21;

        goto LABEL_19;
      }

      if (qword_1004568B8 != -1)
      {
        sub_100352C78();
      }

      v19 = qword_1004568C0;
      if (!os_log_type_enabled(qword_1004568C0, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_19;
      }

      *buf = 0;
      v15 = "os_transaction_object is not nil";
      v16 = v19;
      v17 = OS_LOG_TYPE_FAULT;
    }

    _os_log_impl(&_mh_execute_header, v16, v17, v15, buf, 2u);
LABEL_19:
    os_unfair_lock_unlock(&self->_lock);

    goto LABEL_20;
  }

  self->_refCount = refCount + 1;
  if (qword_1004568B8 != -1)
  {
    sub_100352C64();
  }

  v7 = qword_1004568C0;
  if (os_log_type_enabled(qword_1004568C0, OS_LOG_TYPE_INFO))
  {
    v8 = self->_refCount;
    *buf = 67109378;
    LODWORD(v26[0]) = v8;
    WORD2(v26[0]) = 2112;
    *(v26 + 6) = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Power assertion ref increased to %d for %@", buf, 0x12u);
  }

  os_unfair_lock_unlock(&self->_lock);
LABEL_20:
}

- (void)releasePowerAssertion
{
  os_unfair_lock_lock(&self->_lock);
  if (![(CSPower *)self isAssertionActive])
  {
    if (qword_1004568B8 != -1)
    {
      sub_100352C64();
    }

    v11 = qword_1004568C0;
    if (os_log_type_enabled(qword_1004568C0, OS_LOG_TYPE_ERROR))
    {
      refCount = self->_refCount;
      v17 = 67109120;
      v18 = refCount;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Attempting to release power assertion when there is none, ref count %d", &v17, 8u);
    }

    osTransaction = self->_osTransaction;
    self->_osTransaction = 0;

    p_refCount = &self->_refCount;
    goto LABEL_29;
  }

  p_refCount = &self->_refCount;
  --self->_refCount;
  if (qword_1004568B8 != -1)
  {
    sub_100352C64();
  }

  v4 = qword_1004568C0;
  if (os_log_type_enabled(qword_1004568C0, OS_LOG_TYPE_INFO))
  {
    v5 = *p_refCount;
    v17 = 67109120;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Power assertion ref decreased to %d", &v17, 8u);
  }

  if (*p_refCount <= 0)
  {
    assertionID = self->_assertionID;
    if (!assertionID)
    {
      if (qword_1004568B8 != -1)
      {
        sub_100352C78();
      }

      v14 = qword_1004568C0;
      if (os_log_type_enabled(qword_1004568C0, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_FAULT, "Attempted to release a null power assertion", &v17, 2u);
      }

      goto LABEL_28;
    }

    if (IOPMAssertionRelease(assertionID))
    {
      if (qword_1004568B8 != -1)
      {
        sub_100352C78();
      }

      v7 = qword_1004568C0;
      if (!os_log_type_enabled(qword_1004568C0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      LOWORD(v17) = 0;
      v8 = "Releasing power assertion failed";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (qword_1004568B8 != -1)
      {
        sub_100352C78();
      }

      v15 = qword_1004568C0;
      if (!os_log_type_enabled(qword_1004568C0, OS_LOG_TYPE_INFO))
      {
        goto LABEL_27;
      }

      LOWORD(v17) = 0;
      v8 = "Successfully released power assertion";
      v9 = v15;
      v10 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&_mh_execute_header, v9, v10, v8, &v17, 2u);
LABEL_27:
    self->_assertionID = 0;
LABEL_28:
    v16 = self->_osTransaction;
    self->_osTransaction = 0;

LABEL_29:
    *p_refCount = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end