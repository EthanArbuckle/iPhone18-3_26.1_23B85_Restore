@interface BKMutableSystemShellDescriptor
- (void)setBundleIdentifier:(id)a3;
- (void)setBundlePath:(id)a3;
- (void)setJobLabel:(id)a3;
@end

@implementation BKMutableSystemShellDescriptor

- (void)setJobLabel:(id)a3
{
  v15 = a3;
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [v15 classForCoder];
      if (!v7)
      {
        v7 = objc_opt_class();
      }

      v8 = NSStringFromClass(v7);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [NSString stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"jobLabel", v8, v10];

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromSelector(a2);
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138544642;
        v17 = v12;
        v18 = 2114;
        v19 = v14;
        v20 = 2048;
        v21 = self;
        v22 = 2114;
        v23 = @"BKSystemShellDescriptor.m";
        v24 = 1024;
        v25 = 204;
        v26 = 2114;
        v27 = v11;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v11 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x100078090);
    }
  }

  v5 = [v15 copy];
  jobLabel = self->super._jobLabel;
  self->super._jobLabel = v5;
}

- (void)setBundlePath:(id)a3
{
  v15 = a3;
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [v15 classForCoder];
      if (!v7)
      {
        v7 = objc_opt_class();
      }

      v8 = NSStringFromClass(v7);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [NSString stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"bundlePath", v8, v10];

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromSelector(a2);
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138544642;
        v17 = v12;
        v18 = 2114;
        v19 = v14;
        v20 = 2048;
        v21 = self;
        v22 = 2114;
        v23 = @"BKSystemShellDescriptor.m";
        v24 = 1024;
        v25 = 198;
        v26 = 2114;
        v27 = v11;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v11 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x10007828CLL);
    }
  }

  v5 = [v15 copy];
  bundlePath = self->super._bundlePath;
  self->super._bundlePath = v5;
}

- (void)setBundleIdentifier:(id)a3
{
  v15 = a3;
  if (v15)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = [v15 classForCoder];
      if (!v7)
      {
        v7 = objc_opt_class();
      }

      v8 = NSStringFromClass(v7);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = [NSString stringWithFormat:@"Value for '%@' was of unexpected class %@. Expected %@.", @"bundleIdentifier", v8, v10];

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v12 = NSStringFromSelector(a2);
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138544642;
        v17 = v12;
        v18 = 2114;
        v19 = v14;
        v20 = 2048;
        v21 = self;
        v22 = 2114;
        v23 = @"BKSystemShellDescriptor.m";
        v24 = 1024;
        v25 = 192;
        v26 = 2114;
        v27 = v11;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v11 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x100078488);
    }
  }

  v5 = [v15 copy];
  bundleIdentifier = self->super._bundleIdentifier;
  self->super._bundleIdentifier = v5;
}

@end