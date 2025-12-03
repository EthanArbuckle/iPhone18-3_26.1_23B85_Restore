@interface VIEntitlementManager
+ (BOOL)BOOLForEntitlement:(id)entitlement;
+ (id)arrayForEntitlement:(id)entitlement;
+ (id)valueForEntitlement:(id)entitlement;
@end

@implementation VIEntitlementManager

+ (id)valueForEntitlement:(id)entitlement
{
  v14 = *MEMORY[0x1E69E9840];
  entitlementCopy = entitlement;
  if ([(__CFString *)entitlementCopy length]&& (v4 = SecTaskCreateFromSelf(0)) != 0)
  {
    v5 = v4;
    error = 0;
    v6 = SecTaskCopyValueForEntitlement(v4, entitlementCopy, &error);
    if (error)
    {
      if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
      {
        v7 = +[_TtC12VisualLookUp8VILogger log];
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v11 = entitlementCopy;
          v12 = 2114;
          v13 = error;
          _os_log_impl(&dword_1D9962000, v7, OS_LOG_TYPE_ERROR, "Error reading entitlement %{public}@: %{public}@", buf, 0x16u);
        }
      }

      CFRelease(error);
    }

    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)BOOLForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v4 = [VIEntitlementManager valueForEntitlement:entitlementCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [VIEntitlementManager valueForEntitlement:entitlementCopy];
  }

  else
  {
    v5 = 0;
  }

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

+ (id)arrayForEntitlement:(id)entitlement
{
  entitlementCopy = entitlement;
  v4 = [VIEntitlementManager valueForEntitlement:entitlementCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [VIEntitlementManager valueForEntitlement:entitlementCopy];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v5 copy];

  return v6;
}

@end