@interface RBEntitlementManager
+ (id)_hardCodedEntitlements;
- (NSString)debugDescription;
- (NSString)stateCaptureTitle;
- (RBEntitlementManager)initWithDomainAttributeEntitlements:(id)entitlements;
- (id)allEntitlements;
- (id)captureState;
- (id)entitlementsForProcess:(id)process;
- (uint64_t)_secTask:(CFStringRef)entitlement hasEntitlement:;
- (void)_entitlementsForProcess:(void *)process;
- (void)_removeRestrictedEntitlements:(void *)entitlements forProcess:;
- (void)purgeEntitlementsForProcess:(id)process;
@end

@implementation RBEntitlementManager

- (RBEntitlementManager)initWithDomainAttributeEntitlements:(id)entitlements
{
  entitlementsCopy = entitlements;
  if (!entitlementsCopy)
  {
    [(RBEntitlementManager *)a2 initWithDomainAttributeEntitlements:?];
  }

  v16.receiver = self;
  v16.super_class = RBEntitlementManager;
  v6 = [(RBEntitlementManager *)&v16 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    entitlementsByIdentifier = v7->_entitlementsByIdentifier;
    v7->_entitlementsByIdentifier = strongToWeakObjectsMapTable;

    v10 = +[RBEntitlementManager _hardCodedEntitlements];
    v11 = [entitlementsCopy setByAddingObjectsFromSet:v10];
    availableEntitlements = v7->_availableEntitlements;
    v7->_availableEntitlements = v11;

    v13 = restrictedEntitlementsFromPlist();
    restrictedEntitlements = v7->_restrictedEntitlements;
    v7->_restrictedEntitlements = v13;
  }

  return v7;
}

+ (id)_hardCodedEntitlements
{
  objc_opt_self();
  if (_hardCodedEntitlements_onceToken != -1)
  {
    +[RBEntitlementManager _hardCodedEntitlements];
  }

  v0 = _hardCodedEntitlements_hardCodedEntitlements;

  return v0;
}

- (NSString)debugDescription
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = self->_entitlementsByIdentifier;
  v5 = [(NSMapTable *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [(NSMapTable *)self->_entitlementsByIdentifier objectForKey:v9];
        v11 = [v9 description];
        [v3 appendFormat:@"%@=%@\n\t", v11, v10];
      }

      v6 = [(NSMapTable *)v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v13 = [objc_opt_class() description];
  allObjects = [(NSSet *)self->_availableEntitlements allObjects];
  v15 = [allObjects componentsJoinedByString:{@", \n\t\t"}];
  v16 = [v12 initWithFormat:@"<%@|  availableEntitlements:[\n\t\t%@\n\t] entitlementsByIdentifier:[\n\t%@\n\t\t]>", v13, v15, v3];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)allEntitlements
{
  v2 = [(NSSet *)self->_availableEntitlements copy];

  return v2;
}

- (id)entitlementsForProcess:(id)process
{
  processCopy = process;
  v5 = processCopy;
  if (processCopy && ![processCopy isTerminating])
  {
    os_unfair_lock_lock(&self->_lock);
    entitlementsByIdentifier = self->_entitlementsByIdentifier;
    identifier = [v5 identifier];
    v8 = [(NSMapTable *)entitlementsByIdentifier objectForKey:identifier];

    if (!v8)
    {
      v12 = [RBEntitlements alloc];
      v13 = [(RBEntitlementManager *)self _entitlementsForProcess:v5];
      v8 = [(RBEntitlements *)v12 _initWithEntitlements:v13];

      v14 = self->_entitlementsByIdentifier;
      identifier2 = [v5 identifier];
      [(NSMapTable *)v14 setObject:v8 forKey:identifier2];
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = [RBEntitlements alloc];
    v7 = [MEMORY[0x277CBEB98] set];
    v8 = [(RBEntitlements *)v6 _initWithEntitlements:v7];
  }

  return v8;
}

- (void)purgeEntitlementsForProcess:(id)process
{
  processCopy = process;
  os_unfair_lock_lock(&self->_lock);
  entitlementsByIdentifier = self->_entitlementsByIdentifier;
  identifier = [processCopy identifier];

  [(NSMapTable *)entitlementsByIdentifier removeObjectForKey:identifier];

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)stateCaptureTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)captureState
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(RBEntitlementManager *)self debugDescription];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

void __48__RBEntitlementManager__entitlementsForProcess___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([(RBEntitlementManager *)*(a1 + 32) _secTask:v3 hasEntitlement:?])
  {
    [*(a1 + 40) addObject:v3];
  }
}

uint64_t __46__RBEntitlementManager__hardCodedEntitlements__block_invoke()
{
  _hardCodedEntitlements_hardCodedEntitlements = [MEMORY[0x277CBEB98] setWithObjects:{@"com.apple.runningboard.primitiveattribute", @"com.apple.runningboard.endowment-originator", @"com.apple.runningboard.invalidateanyassertion", @"com.apple.runningboard.launchprocess", @"com.apple.runningboard.listallassertions", @"com.apple.runningboard.process-state", @"com.apple.runningboard.statecapture", @"com.apple.runningboard.targetidentities", @"com.apple.runningboard.terminateprocess", @"com.apple.runningboard.terminatemanagedprocesses", @"com.apple.runningboard.performancetest", @"com.apple.runningboard.launch_extensions", @"com.apple.runningboard.launch_dexts", @"com.apple.runningboard.trustedtarget", *MEMORY[0x277D47040], @"com.apple.runningboard.testbinary", @"com.apple.developer.kernel.increased-memory-limit", @"com.apple.private.security.container-required", @"com.apple.backboard.client", @"com.apple.assertiond.background-view-services", @"com.apple.multitasking.newsstandassertions", @"com.apple.assertiond.system-shell", @"com.apple.multitasking.systemappassertions", @"com.apple.multitasking.termination", @"com.apple.multitasking.unlimitedassertions", @"com.apple.multitasking.voipassertions", @"com.apple.assertiond.app-state-monitor", @"com.apple.private.xpc.launchd.app-server", @"com.apple.backboardd.debugapplications", @"com.apple.springboard.debugapplications", 0}];

  return MEMORY[0x2821F96F8]();
}

- (void)_entitlementsForProcess:(void *)process
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (process)
  {
    v4 = [MEMORY[0x277CBEB58] set];
    auditToken = [v3 auditToken];
    v6 = auditToken;
    if (auditToken)
    {
      memset(&buf, 0, sizeof(buf));
      [auditToken realToken];
      token = buf;
      v11 = SecTaskCreateWithAuditToken(0, &token);
      if (v11)
      {
        v13 = v11;
        v14 = process[3];
        v16[0] = MEMORY[0x277D85DD0];
        v16[1] = 3221225472;
        v16[2] = __48__RBEntitlementManager__entitlementsForProcess___block_invoke;
        v16[3] = &unk_279B32FE0;
        v16[4] = process;
        v18 = v11;
        v15 = v4;
        v17 = v15;
        [v14 enumerateObjectsUsingBlock:v16];
        if (([v15 containsObject:@"com.apple.assertiond.app-state-monitor"] & 1) == 0 && (objc_msgSend(v15, "containsObject:", @"com.apple.runningboard.testbinary") & 1) == 0 && (SecTaskGetCodeSignStatus(v13) & 0xC000001) == 0x4000001 && (objc_msgSend(v3, "isTestApp") & 1) == 0)
        {
          [v15 addObject:@"com.apple.assertiond.app-state-monitor"];
        }

        CFRelease(v13);
      }

      else
      {
        v12 = rbs_general_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          token.val[0] = 138543362;
          *&token.val[1] = v3;
          _os_log_error_impl(&dword_262485000, v12, OS_LOG_TYPE_ERROR, "SecTaskCreateWithAuditToken failed for %{public}@", &token, 0xCu);
        }
      }

      [(RBEntitlementManager *)process _removeRestrictedEntitlements:v4 forProcess:v3];
      v8 = v4;
    }

    else
    {
      v7 = rbs_process_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        buf.val[0] = 138543362;
        *&buf.val[1] = v3;
        _os_log_error_impl(&dword_262485000, v7, OS_LOG_TYPE_ERROR, "Unable to load defaults for %{public}@: no audit token", &buf, 0xCu);
      }

      v8 = [MEMORY[0x277CBEB98] set];
    }

    process = v8;
  }

  v9 = *MEMORY[0x277D85DE8];

  return process;
}

- (void)_removeRestrictedEntitlements:(void *)entitlements forProcess:
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  entitlementsCopy = entitlements;
  v7 = entitlementsCopy;
  if (!self)
  {
    goto LABEL_28;
  }

  identity = [entitlementsCopy identity];
  isTestApp = [v7 isTestApp];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (!v10)
  {

    v20 = 0;
    goto LABEL_27;
  }

  v11 = v10;
  v22 = v7;
  v23 = v5;
  v25 = 0;
  v12 = *v27;
  do
  {
    v13 = 0;
    do
    {
      if (*v27 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v26 + 1) + 8 * v13);
      v15 = [*(self + 32) objectForKey:{v14, v22, v23}];
      v16 = v15;
      if (v15 && ([v15 containsObject:identity] & 1) == 0)
      {
        if (!os_variant_has_internal_content() || ([identity hasConsistentLaunchdJob] & 1) != 0 || (objc_msgSend(identity, "isEmbeddedApplication") & 1) != 0)
        {
          if (isTestApp)
          {
            goto LABEL_18;
          }
        }

        else if (isTestApp & 1 | (([identity isXPCService] & 1) == 0))
        {
          goto LABEL_18;
        }

        v17 = rbs_process_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          *buf = 138543618;
          v31 = identity;
          v32 = 2114;
          v33 = v14;
          _os_log_fault_impl(&dword_262485000, v17, OS_LOG_TYPE_FAULT, "RunningBoard: Process %{public}@ does not have permission to have entitlement %{public}@", buf, 0x16u);
        }

        v18 = v25;
        if (!v25)
        {
          v18 = [MEMORY[0x277CBEB58] set];
        }

        v25 = v18;
        [v18 addObject:v14];
      }

LABEL_18:

      ++v13;
    }

    while (v11 != v13);
    v19 = [v9 countByEnumeratingWithState:&v26 objects:v34 count:16];
    v11 = v19;
  }

  while (v19);

  v20 = v25;
  if (v25)
  {
    [v9 minusSet:v25];
  }

  v7 = v22;
  v5 = v23;
LABEL_27:

LABEL_28:
  v21 = *MEMORY[0x277D85DE8];
}

- (uint64_t)_secTask:(CFStringRef)entitlement hasEntitlement:
{
  v14 = *MEMORY[0x277D85DE8];
  if (self)
  {
    error = 0;
    v3 = SecTaskCopyValueForEntitlement(task, entitlement, &error);
    if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      bOOLValue = [v3 BOOLValue];
    }

    else
    {
      bOOLValue = 0;
    }

    v5 = error;
    if (error)
    {
      code = [(__CFError *)error code];
      v7 = rbs_general_log();
      v8 = v7;
      if (code == 3)
      {
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_262485000, v8, OS_LOG_TYPE_INFO, "sectask entitlement check made for not-running process", buf, 2u);
        }
      }

      else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v13 = v5;
        _os_log_error_impl(&dword_262485000, v8, OS_LOG_TYPE_ERROR, "SecTaskCopyValueForEntitlement failed with error %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    bOOLValue = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (void)initWithDomainAttributeEntitlements:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBEntitlementManager.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"entitlements"}];
}

@end