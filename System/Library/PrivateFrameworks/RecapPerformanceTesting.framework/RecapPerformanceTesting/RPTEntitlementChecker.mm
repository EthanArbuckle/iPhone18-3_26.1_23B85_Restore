@interface RPTEntitlementChecker
+ (RPTEntitlementChecker)checkerForCurrentProcess;
- (BOOL)checkWithError:(id *)error;
- (RPTEntitlementChecker)initWithBundleRecord:(id)record;
@end

@implementation RPTEntitlementChecker

+ (RPTEntitlementChecker)checkerForCurrentProcess
{
  bundleRecordForCurrentProcess = [MEMORY[0x277CC1E90] bundleRecordForCurrentProcess];
  if (bundleRecordForCurrentProcess)
  {
    v3 = [[RPTEntitlementChecker alloc] initWithBundleRecord:bundleRecordForCurrentProcess];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (RPTEntitlementChecker)initWithBundleRecord:(id)record
{
  recordCopy = record;
  v9.receiver = self;
  v9.super_class = RPTEntitlementChecker;
  v6 = [(RPTEntitlementChecker *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleRecord, record);
  }

  return v7;
}

- (BOOL)checkWithError:(id *)error
{
  v18[2] = *MEMORY[0x277D85DE8];
  v5 = os_variant_allows_internal_security_policies();
  bundleRecord = [(RPTEntitlementChecker *)self bundleRecord];
  entitlements = [bundleRecord entitlements];

  v8 = [entitlements objectForKey:@"com.apple.private.hid.client.event-dispatch" ofClass:objc_opt_class()];
  v9 = v8;
  if (v8)
  {
    [v8 BOOLValue];
    BSSettingFlagForBool();
  }

  IsYes = BSSettingFlagIsYes();
  if (v5)
  {
    v11 = [entitlements objectForKey:@"com.apple.private.hid.client.event-dispatch.internal" ofClass:objc_opt_class()];
    v12 = v11;
    if (v11)
    {
      [v11 BOOLValue];
      BSSettingFlagForBool();
    }

    if (IsYes)
    {
      IsYes = 1;
      goto LABEL_12;
    }

    IsYes = BSSettingFlagIsYes();
  }

  if (error && (IsYes & 1) == 0)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA470];
    v17[0] = *MEMORY[0x277CCA460];
    v17[1] = v14;
    v18[0] = @"Process is (likely) not entitled to create HID events.";
    v18[1] = @"HID client dispatch entitlement is missing.";
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
    *error = [v13 errorWithDomain:@"com.apple.RecapPerformanceTesting" code:2 userInfo:v15];

    IsYes = 0;
  }

LABEL_12:

  return IsYes;
}

@end