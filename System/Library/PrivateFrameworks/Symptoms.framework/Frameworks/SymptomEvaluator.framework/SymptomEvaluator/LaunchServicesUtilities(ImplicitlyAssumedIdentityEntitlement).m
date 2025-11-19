@interface LaunchServicesUtilities(ImplicitlyAssumedIdentityEntitlement)
@end

@implementation LaunchServicesUtilities(ImplicitlyAssumedIdentityEntitlement)

+ (void)implicitlyAssumedIdentityEntitlementForBundleIdentifier:()ImplicitlyAssumedIdentityEntitlement .cold.1(void *a1)
{
  v2 = domainTrackingLogHandle;
  if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEBUG, "Creating static entitlement lookup cache", v5, 2u);
  }

  v3 = [objc_alloc(MEMORY[0x277D6B418]) initWithPolicy:0 timeToLive:60 size:0.0];
  v4 = implicitlyAssumedIdentityEntitlementForBundleIdentifier__privacyAttributionCache;
  implicitlyAssumedIdentityEntitlementForBundleIdentifier__privacyAttributionCache = v3;

  *a1 = implicitlyAssumedIdentityEntitlementForBundleIdentifier__privacyAttributionCache;
}

@end