@interface SSFeatureEnablerMigrator
+ (void)migrate;
@end

@implementation SSFeatureEnablerMigrator

+ (void)migrate
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = MGCopyAnswer();
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  v3 = CFPreferencesCopyAppValue(@"SBLastSystemVersion", @"com.apple.springboard");
  if (!v3)
  {
    CFPreferencesAppSynchronize(@"com.apple.migration");
    v3 = CFPreferencesCopyAppValue(@"LastSystemVersion", @"com.apple.migration");
  }

  v4 = +[SSLogConfig sharedFeatureEnablerMigrationConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    v6 = shouldLog | 2;
  }

  else
  {
    v6 = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_13;
  }

  *v53 = 138543874;
  *&v53[4] = objc_opt_class();
  *&v53[12] = 2114;
  *&v53[14] = v3;
  *&v53[22] = 2114;
  v54 = v2;
  v8 = *&v53[4];
  LODWORD(v52) = 32;
  v51 = v53;
  v9 = _os_log_send_and_compose_impl();

  if (v9)
  {
    oSLogObject = [MEMORY[0x1E696AEC0] stringWithCString:v9 encoding:{4, v53, v52, *v53, *&v53[16], v54}];
    free(v9);
    SSFileLog(v4, @"%@", v10, v11, v12, v13, v14, v15, oSLogObject);
LABEL_13:
  }

  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    integerValue = [v3 integerValue];
    if (integerValue != [v2 integerValue])
    {
      CFPreferencesSetAppValue(@"com.apple.storeservices.itfe", 0, @"com.apple.itunesstored");
      CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
      v17 = +[SSLogConfig sharedFeatureEnablerMigrationConfig];
      if (!v17)
      {
        v17 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v17 shouldLog];
      if ([v17 shouldLogToDisk])
      {
        v19 = shouldLog2 | 2;
      }

      else
      {
        v19 = shouldLog2;
      }

      oSLogObject2 = [v17 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v19 &= 2u;
      }

      if (v19)
      {
        v21 = objc_opt_class();
        *v53 = 138543362;
        *&v53[4] = v21;
        v22 = v21;
        LODWORD(v52) = 12;
        v51 = v53;
        v23 = _os_log_send_and_compose_impl();

        if (!v23)
        {
LABEL_28:

          mEMORY[0x1E69ADFB8] = [MEMORY[0x1E69ADFB8] sharedConnection];
          [mEMORY[0x1E69ADFB8] removeProfileWithIdentifier:@"com.apple.storeservices-itfe"];

          goto LABEL_29;
        }

        oSLogObject2 = [MEMORY[0x1E696AEC0] stringWithCString:v23 encoding:{4, v53, v52}];
        free(v23);
        SSFileLog(v17, @"%@", v24, v25, v26, v27, v28, v29, oSLogObject2);
      }

      goto LABEL_28;
    }
  }

LABEL_29:
  if (v3)
  {
    CFRelease(v3);
  }

  v31 = +[SSDevice currentDevice];
  productVersion = [v31 productVersion];

  v33 = CFPreferencesCopyAppValue(@"performedMigration11", @"com.apple.storeservices.itfe");
  if (SSIsInternalBuild() && [productVersion isEqualToString:@"11.0"] && !v33)
  {
    v34 = CFPreferencesCopyAppValue(@"features", @"com.apple.storeservices.itfe");
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [v34 mutableCopy];
    }

    else
    {
      v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v36 = v35;
    v37 = MEMORY[0x1E695E118];
    [v35 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"amf"];
    CFPreferencesSetAppValue(@"features", v36, @"com.apple.storeservices.itfe");
    CFPreferencesSetAppValue(@"performedMigration11", v37, @"com.apple.storeservices.itfe");
    CFPreferencesAppSynchronize(@"com.apple.storeservices.itfe");
    v38 = +[SSLogConfig sharedFeatureEnablerMigrationConfig];
    if (!v38)
    {
      v38 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v38 shouldLog];
    if ([v38 shouldLogToDisk])
    {
      v40 = shouldLog3 | 2;
    }

    else
    {
      v40 = shouldLog3;
    }

    oSLogObject3 = [v38 OSLogObject];
    if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v40 &= 2u;
    }

    if (v40)
    {
      v42 = objc_opt_class();
      *v53 = 138543362;
      *&v53[4] = v42;
      v43 = v42;
      LODWORD(v52) = 12;
      v44 = _os_log_send_and_compose_impl();

      if (!v44)
      {
LABEL_48:

        goto LABEL_49;
      }

      oSLogObject3 = [MEMORY[0x1E696AEC0] stringWithCString:v44 encoding:{4, v53, v52}];
      free(v44);
      SSFileLog(v38, @"%@", v45, v46, v47, v48, v49, v50, oSLogObject3);
    }

    goto LABEL_48;
  }

LABEL_49:
}

@end