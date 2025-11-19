@interface SHEntitlements
- (BOOL)BOOLValueOfEntitlement:(id)a3 fromConnection:(id)a4;
- (BOOL)BOOLValueOfEntitlement:(id)a3 fromSecTask:(__SecTask *)a4;
- (BOOL)entitlementArray:(id)a3 containsEntitlementValue:(id)a4 fromConnection:(id)a5;
- (BOOL)entitlementArray:(id)a3 containsEntitlementValue:(id)a4 fromSecTask:(__SecTask *)a5;
- (BOOL)hasRequiredEntitlements:(id)a3;
- (BOOL)tccBoolValueOfEntitlement:(id)a3 fromConnection:(id)a4;
- (SHEntitlements)init;
- (SHEntitlements)initWithConnection:(id)a3;
- (void)configureEntitlementsForConnection:(id)a3;
- (void)configureEntitlementsForTask:(__SecTask *)a3;
- (void)copyValueOfEntitlement:(id)a3 fromSecTask:(__SecTask *)a4;
@end

@implementation SHEntitlements

- (SHEntitlements)init
{
  v5.receiver = self;
  v5.super_class = SHEntitlements;
  v2 = [(SHEntitlements *)&v5 init];
  if (v2)
  {
    v3 = SecTaskCreateFromSelf(0);
    [(SHEntitlements *)v2 configureEntitlementsForTask:v3];
    CFRelease(v3);
  }

  return v2;
}

- (SHEntitlements)initWithConnection:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SHEntitlements;
  v5 = [(SHEntitlements *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SHEntitlements *)v5 configureEntitlementsForConnection:v4];
  }

  return v6;
}

- (void)configureEntitlementsForTask:(__SecTask *)a3
{
  self->_isEntitledForStorefront = [(SHEntitlements *)self entitlementArray:@"com.apple.private.tcc.allow" containsEntitlementValue:@"kTCCServiceMediaLibrary" fromSecTask:a3];
  self->_isEntitledForMicrophone = [(SHEntitlements *)self entitlementArray:@"com.apple.private.tcc.allow" containsEntitlementValue:@"kTCCServiceMicrophone" fromSecTask:a3];
  self->_isEntitledForInternalClient = [(SHEntitlements *)self BOOLValueOfEntitlement:@"com.apple.private.ShazamKit" fromSecTask:a3];
}

- (void)configureEntitlementsForConnection:(id)a3
{
  v5 = a3;
  self->_isEntitledForStorefront = [(SHEntitlements *)self entitlementArray:@"com.apple.private.tcc.allow" containsEntitlementValue:@"kTCCServiceMediaLibrary" fromConnection:v5];
  v4 = [(SHEntitlements *)self entitlementArray:@"com.apple.private.tcc.allow" containsEntitlementValue:@"kTCCServiceMicrophone" fromConnection:v5]|| [(SHEntitlements *)self tccBoolValueOfEntitlement:@"kTCCServiceMicrophone" fromConnection:v5];
  self->_isEntitledForMicrophone = v4;
  self->_isEntitledForInternalClient = [(SHEntitlements *)self BOOLValueOfEntitlement:@"com.apple.private.ShazamKit" fromConnection:v5];
}

- (BOOL)hasRequiredEntitlements:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  if ([(SHEntitlements *)self isEntitledForStorefront])
  {
    [v5 addObject:@"kTCCServiceMediaLibrary"];
  }

  if ([(SHEntitlements *)self isEntitledForMicrophone])
  {
    [v5 addObject:@"kTCCServiceMicrophone"];
  }

  if ([(SHEntitlements *)self isEntitledForInternalClient])
  {
    [v5 addObject:@"com.apple.private.ShazamKit"];
  }

  v6 = [MEMORY[0x277CBEB98] setWithArray:v4];
  v7 = [v6 isSubsetOfSet:v5];

  return v7;
}

- (BOOL)BOOLValueOfEntitlement:(id)a3 fromConnection:(id)a4
{
  v4 = [a4 valueForEntitlement:a3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)entitlementArray:(id)a3 containsEntitlementValue:(id)a4 fromConnection:(id)a5
{
  v7 = a4;
  v8 = [a5 valueForEntitlement:a3];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 containsObject:v7];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)tccBoolValueOfEntitlement:(id)a3 fromConnection:(id)a4
{
  v5 = a3;
  if (a4)
  {
    [a4 auditToken];
  }

  v6 = tcc_authorization_check_audit_token() == 2;

  return v6;
}

- (void)copyValueOfEntitlement:(id)a3 fromSecTask:(__SecTask *)a4
{
  v11 = *MEMORY[0x277D85DE8];
  error = 0;
  v4 = SecTaskCopyValueForEntitlement(a4, a3, &error);
  if (error)
  {
    v5 = shcore_log_object();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = error;
      _os_log_impl(&dword_231025000, v5, OS_LOG_TYPE_ERROR, "Client does not have entitlement: %@", buf, 0xCu);
    }

    CFRelease(error);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

- (BOOL)BOOLValueOfEntitlement:(id)a3 fromSecTask:(__SecTask *)a4
{
  v4 = [(SHEntitlements *)self copyValueOfEntitlement:a3 fromSecTask:a4];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = CFGetTypeID(v4);
  v7 = v6 == CFBooleanGetTypeID() && CFBooleanGetValue(v5) != 0;
  CFRelease(v5);
  return v7;
}

- (BOOL)entitlementArray:(id)a3 containsEntitlementValue:(id)a4 fromSecTask:(__SecTask *)a5
{
  v8 = a4;
  v9 = [(SHEntitlements *)self copyValueOfEntitlement:a3 fromSecTask:a5];
  if (v9)
  {
    v10 = v9;
    v11 = CFGetTypeID(v9);
    if (v11 == CFArrayGetTypeID())
    {
      v12 = [v10 containsObject:v8];
    }

    else
    {
      v12 = 0;
    }

    CFRelease(v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end