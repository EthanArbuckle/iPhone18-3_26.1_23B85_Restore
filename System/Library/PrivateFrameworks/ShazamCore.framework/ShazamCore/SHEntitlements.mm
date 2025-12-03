@interface SHEntitlements
- (BOOL)BOOLValueOfEntitlement:(id)entitlement fromConnection:(id)connection;
- (BOOL)BOOLValueOfEntitlement:(id)entitlement fromSecTask:(__SecTask *)task;
- (BOOL)entitlementArray:(id)array containsEntitlementValue:(id)value fromConnection:(id)connection;
- (BOOL)entitlementArray:(id)array containsEntitlementValue:(id)value fromSecTask:(__SecTask *)task;
- (BOOL)hasRequiredEntitlements:(id)entitlements;
- (BOOL)tccBoolValueOfEntitlement:(id)entitlement fromConnection:(id)connection;
- (SHEntitlements)init;
- (SHEntitlements)initWithConnection:(id)connection;
- (void)configureEntitlementsForConnection:(id)connection;
- (void)configureEntitlementsForTask:(__SecTask *)task;
- (void)copyValueOfEntitlement:(id)entitlement fromSecTask:(__SecTask *)task;
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

- (SHEntitlements)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = SHEntitlements;
  v5 = [(SHEntitlements *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SHEntitlements *)v5 configureEntitlementsForConnection:connectionCopy];
  }

  return v6;
}

- (void)configureEntitlementsForTask:(__SecTask *)task
{
  self->_isEntitledForStorefront = [(SHEntitlements *)self entitlementArray:@"com.apple.private.tcc.allow" containsEntitlementValue:@"kTCCServiceMediaLibrary" fromSecTask:task];
  self->_isEntitledForMicrophone = [(SHEntitlements *)self entitlementArray:@"com.apple.private.tcc.allow" containsEntitlementValue:@"kTCCServiceMicrophone" fromSecTask:task];
  self->_isEntitledForInternalClient = [(SHEntitlements *)self BOOLValueOfEntitlement:@"com.apple.private.ShazamKit" fromSecTask:task];
}

- (void)configureEntitlementsForConnection:(id)connection
{
  connectionCopy = connection;
  self->_isEntitledForStorefront = [(SHEntitlements *)self entitlementArray:@"com.apple.private.tcc.allow" containsEntitlementValue:@"kTCCServiceMediaLibrary" fromConnection:connectionCopy];
  v4 = [(SHEntitlements *)self entitlementArray:@"com.apple.private.tcc.allow" containsEntitlementValue:@"kTCCServiceMicrophone" fromConnection:connectionCopy]|| [(SHEntitlements *)self tccBoolValueOfEntitlement:@"kTCCServiceMicrophone" fromConnection:connectionCopy];
  self->_isEntitledForMicrophone = v4;
  self->_isEntitledForInternalClient = [(SHEntitlements *)self BOOLValueOfEntitlement:@"com.apple.private.ShazamKit" fromConnection:connectionCopy];
}

- (BOOL)hasRequiredEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
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

  v6 = [MEMORY[0x277CBEB98] setWithArray:entitlementsCopy];
  v7 = [v6 isSubsetOfSet:v5];

  return v7;
}

- (BOOL)BOOLValueOfEntitlement:(id)entitlement fromConnection:(id)connection
{
  v4 = [connection valueForEntitlement:entitlement];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v4 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)entitlementArray:(id)array containsEntitlementValue:(id)value fromConnection:(id)connection
{
  valueCopy = value;
  v8 = [connection valueForEntitlement:array];
  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v9 = [v8 containsObject:valueCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)tccBoolValueOfEntitlement:(id)entitlement fromConnection:(id)connection
{
  entitlementCopy = entitlement;
  if (connection)
  {
    [connection auditToken];
  }

  v6 = tcc_authorization_check_audit_token() == 2;

  return v6;
}

- (void)copyValueOfEntitlement:(id)entitlement fromSecTask:(__SecTask *)task
{
  v11 = *MEMORY[0x277D85DE8];
  error = 0;
  v4 = SecTaskCopyValueForEntitlement(task, entitlement, &error);
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

- (BOOL)BOOLValueOfEntitlement:(id)entitlement fromSecTask:(__SecTask *)task
{
  v4 = [(SHEntitlements *)self copyValueOfEntitlement:entitlement fromSecTask:task];
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

- (BOOL)entitlementArray:(id)array containsEntitlementValue:(id)value fromSecTask:(__SecTask *)task
{
  valueCopy = value;
  v9 = [(SHEntitlements *)self copyValueOfEntitlement:array fromSecTask:task];
  if (v9)
  {
    v10 = v9;
    v11 = CFGetTypeID(v9);
    if (v11 == CFArrayGetTypeID())
    {
      v12 = [v10 containsObject:valueCopy];
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