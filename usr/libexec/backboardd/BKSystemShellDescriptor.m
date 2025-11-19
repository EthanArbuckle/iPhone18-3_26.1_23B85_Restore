@interface BKSystemShellDescriptor
+ (BKSystemShellDescriptor)new;
+ (id)build:(id)a3;
- (BKSystemShellDescriptor)init;
- (BOOL)isEqual:(id)a3;
- (NSString)debugDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)appendDescriptionToStream:(id)a3;
@end

@implementation BKSystemShellDescriptor

- (void)appendDescriptionToStream:(id)a3
{
  v12 = a3;
  pid = self->_pid;
  v5 = BSProcessDescriptionForPID();
  [v12 appendString:v5 withName:0];

  if (([v12 hasSuccinctStyle] & 1) == 0)
  {
    v6 = [v12 appendObject:self->_bundleIdentifier withName:@"bundleIdentifier"];
    v7 = [v12 appendObject:self->_bundlePath withName:@"bundlePath"];
    v8 = [v12 appendObject:self->_jobLabel withName:@"jobLabel"];
    v9 = [v12 appendDouble:@"systemIdleSleepInterval" withName:2 decimalPrecision:self->_systemIdleSleepInterval];
    watchdogType = self->_watchdogType;
    if (watchdogType)
    {
      if (watchdogType == 1)
      {
        v11 = @"shell";
      }

      else
      {
        v11 = [NSString stringWithFormat:@"<unknown:%lX>", self->_watchdogType];
      }
    }

    else
    {
      v11 = @"BackBoard";
    }

    [v12 appendString:v11 withName:@"watchdogType"];
  }
}

- (id)succinctDescription
{
  v3 = +[BSDescriptionStyle succinctStyle];
  v4 = [BSDescriptionStream descriptionForRootObject:self withStyle:v3];

  return v4;
}

- (NSString)debugDescription
{
  v3 = +[BSDescriptionStyle debugStyle];
  v4 = [BSDescriptionStream descriptionForRootObject:self withStyle:v3];

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [BKMutableSystemShellDescriptor alloc];

  return sub_100078790(v4, self);
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [BKSystemShellDescriptor alloc];

  return sub_100078790(v4, self);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5[1];
    bundleIdentifier = self->_bundleIdentifier;
    v12 = BSEqualObjects() && (v8 = v5[2], bundlePath = self->_bundlePath, BSEqualObjects()) && (v10 = v5[3], jobLabel = self->_jobLabel, BSEqualObjects()) && *(v5 + 8) == self->_pid && *(v5 + 5) == self->_systemIdleSleepInterval && v5[6] == self->_watchdogType;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_bundleIdentifier hash];
  v4 = [(NSString *)self->_bundlePath hash]^ v3;
  v5 = v4 ^ [(NSString *)self->_jobLabel hash];
  v6 = [NSNumber numberWithInt:self->_pid];
  v7 = v5 ^ [v6 hash];

  v8 = [NSNumber numberWithDouble:self->_systemIdleSleepInterval];
  v9 = [v8 hash];

  v10 = [NSNumber numberWithInteger:self->_watchdogType];
  v11 = v7 ^ v9 ^ [v10 hash];

  v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
  return v12 ^ (v12 >> 31);
}

- (BKSystemShellDescriptor)init
{
  v4 = [NSString stringWithFormat:@"cannot directly allocate BKSystemShellDescriptor"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = self;
    v15 = 2114;
    v16 = @"BKSystemShellDescriptor.m";
    v17 = 1024;
    v18 = 33;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (BKSystemShellDescriptor)new
{
  v4 = [NSString stringWithFormat:@"cannot directly allocate BKSystemShellDescriptor"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v9 = 138544642;
    v10 = v5;
    v11 = 2114;
    v12 = v7;
    v13 = 2048;
    v14 = a1;
    v15 = 2114;
    v16 = @"BKSystemShellDescriptor.m";
    v17 = 1024;
    v18 = 38;
    v19 = 2114;
    v20 = v4;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v9, 0x3Au);
  }

  [v4 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

+ (id)build:(id)a3
{
  v3 = a3;
  v4 = sub_100078828([BKMutableSystemShellDescriptor alloc]);
  v3[2](v3, v4);

  v5 = [v4 copy];

  return v5;
}

@end