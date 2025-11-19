@interface SOSEntitlement
+ (BOOL)currentProcessHasEntitlement:(id)a3;
@end

@implementation SOSEntitlement

+ (BOOL)currentProcessHasEntitlement:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (v4)
  {
    v5 = v4;
    error = 0;
    v6 = SecTaskCopyValueForEntitlement(v4, v3, &error);
    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v9 = sos_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v14 = v6;
        v15 = 2112;
        v16 = v3;
        v17 = 2112;
        v18 = error;
        _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Unexpected value %@ for %@ entitlement: %@", buf, 0x20u);
      }

      v7 = 0;
    }

    else
    {
      v7 = [v6 BOOLValue];
    }

    CFRelease(v5);
  }

  else
  {
    v8 = sos_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_264323000, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Unexpected NULL value returned from SecTaskCreateFromSelf()", buf, 2u);
    }

    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

@end