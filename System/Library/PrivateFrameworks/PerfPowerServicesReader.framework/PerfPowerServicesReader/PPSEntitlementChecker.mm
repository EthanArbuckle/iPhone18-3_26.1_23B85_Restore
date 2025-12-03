@interface PPSEntitlementChecker
+ (BOOL)checkForEntitlement:(id)entitlement;
@end

@implementation PPSEntitlementChecker

+ (BOOL)checkForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v4 = SecTaskCreateFromSelf(0);
  if (v4)
  {
    v5 = v4;
    error = 0;
    v6 = SecTaskCopyValueForEntitlement(v4, entitlementCopy, &error);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      v9 = v8 == CFBooleanGetTypeID() && CFBooleanGetValue(v7) != 0;
      CFRelease(v7);
    }

    else
    {
      v9 = 0;
    }

    if (error)
    {
      v10 = PPSReaderLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(PPSEntitlementChecker *)&error checkForEntitlement:v10];
      }

      CFRelease(error);
    }

    CFRelease(v5);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)checkForEntitlement:(id *)a1 .cold.1(id *a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [*a1 localizedDescription];
  v5 = 136315394;
  v6 = "+[PPSEntitlementChecker checkForEntitlement:]";
  v7 = 2112;
  v8 = v3;
  _os_log_debug_impl(&dword_25E225000, a2, OS_LOG_TYPE_DEBUG, "(%s) Error while checking entitlement: %@", &v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end