@interface NSXPCConnection(WeatherDaemon)
- (id)wd_bundleIdentifier;
- (id)wd_codesigningIdentifier;
- (void)wd_codesigningIdentifier;
@end

@implementation NSXPCConnection(WeatherDaemon)

- (id)wd_bundleIdentifier
{
  v34 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  [self auditToken];
  memset(buf, 0, sizeof(buf));
  v2 = MSVBundleIDForAuditToken();
  if (!v2)
  {
    v3 = WDLogForCategory(1uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_1B6020000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to retrieve bundle identifier of the requesting application from the audit_token_t; instead, using bundle identifier.", buf, 0xCu);
    }
  }

  v24 = 0;
  *buf = v25;
  *&buf[16] = v26;
  v4 = [MEMORY[0x1E6963620] bundleRecordForAuditToken:buf error:&v24];
  v5 = v24;
  if (v5)
  {
    v6 = WDLogForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      msv_description = [v5 msv_description];
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = msv_description;
      _os_log_impl(&dword_1B6020000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to retrieve bundle extension record with error: %{public}@.", buf, 0x16u);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_20;
    }

    v6 = v4;
    containingBundleRecord = [v6 containingBundleRecord];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = containingBundleRecord;
    }

    else
    {
      v10 = WDLogForCategory(1uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = objc_opt_class();
        v14 = NSStringFromClass(v13);
        *buf = 138544386;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v6;
        *&buf[22] = 2114;
        *&buf[24] = v12;
        v28 = 2114;
        v29 = containingBundleRecord;
        v30 = 2114;
        v31 = v14;
        _os_log_impl(&dword_1B6020000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting application extension %{public}@ (%{public}@) has a containing bundle which is not an application: %{public}@ (%{public}@).", buf, 0x34u);
      }

      v9 = 0;
    }

    bundleIdentifier = [v9 bundleIdentifier];
    if (bundleIdentifier)
    {
      v16 = WDLogForCategory(1uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v23 = NSStringFromClass(v17);
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        *buf = 138544642;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v6;
        *&buf[22] = 2114;
        *&buf[24] = v23;
        v28 = 2114;
        v29 = bundleIdentifier;
        v30 = 2114;
        v31 = v9;
        v32 = 2114;
        v33 = v19;
        _os_log_impl(&dword_1B6020000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: Client is an application extension: %{public}@ (%{public}@). Using bundle identifier %{public}@ from containing application: %{public}@ (%{public}@).", buf, 0x3Eu);
      }

      v20 = bundleIdentifier;
      v2 = v20;
    }
  }

LABEL_20:
  v21 = v2;

  return v21;
}

- (id)wd_codesigningIdentifier
{
  v1 = *MEMORY[0x1E695E480];
  [self auditToken];
  v2 = SecTaskCreateWithAuditToken(v1, &cf);
  if (v2)
  {
    v3 = v2;
    *cf.val = 0;
    v4 = SecTaskCopySigningIdentifier(v2, &cf);
    if (*cf.val)
    {
      v5 = WDLogForCategory(1uLL);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        [(NSXPCConnection(WeatherDaemon) *)&cf wd_codesigningIdentifier];
      }

      CFRelease(*cf.val);
    }

    CFRelease(v3);
  }

  else
  {
    v6 = WDLogForCategory(1uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(NSXPCConnection(WeatherDaemon) *)v6 wd_codesigningIdentifier];
    }

    v4 = 0;
  }

  return v4;
}

- (void)wd_codesigningIdentifier
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "[NSXPCConnection(WeatherDaemon) wd_codesigningIdentifier]";
  _os_log_error_impl(&dword_1B6020000, log, OS_LOG_TYPE_ERROR, "could not create task ref in %{public}s", &v1, 0xCu);
}

@end