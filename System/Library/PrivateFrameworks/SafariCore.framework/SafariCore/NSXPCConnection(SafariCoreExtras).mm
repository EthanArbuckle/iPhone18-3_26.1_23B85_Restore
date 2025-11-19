@interface NSXPCConnection(SafariCoreExtras)
+ (id)safari_applicationRecordForConnectedProcessWithAuditToken:()SafariCoreExtras;
+ (uint64_t)safari_applicationWithAuditToken:()SafariCoreExtras hasApprovedWebCredentialsDomainAssociationForDomain:;
- (id)safari_applicationRecordForConnectedProcess;
- (id)safari_arrayForEntitlement:()SafariCoreExtras;
- (id)safari_arrayForEntitlement:()SafariCoreExtras containingObjectsOfClass:;
- (uint64_t)safari_BOOLForEntitlement:()SafariCoreExtras;
- (uint64_t)safari_hasApprovedWebCredentialsDomainAssociationForDomain:()SafariCoreExtras;
@end

@implementation NSXPCConnection(SafariCoreExtras)

- (id)safari_applicationRecordForConnectedProcess
{
  v1 = MEMORY[0x1E696B0B8];
  [a1 auditToken];
  v2 = [v1 safari_applicationRecordForConnectedProcessWithAuditToken:&v4];

  return v2;
}

+ (id)safari_applicationRecordForConnectedProcessWithAuditToken:()SafariCoreExtras
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a3[1];
  *buf = *a3;
  v15 = v3;
  v13 = 0;
  v4 = [MEMORY[0x1E6963620] bundleRecordForAuditToken:buf error:&v13];
  v5 = v13;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v4;
      goto LABEL_10;
    }

    v7 = WBS_LOG_CHANNEL_PREFIXXPC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      [(NSXPCConnection(SafariCoreExtras) *)v10 safari_applicationRecordForConnectedProcessWithAuditToken:buf, v7];
    }
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXXPC();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v5 safari_privacyPreservingDescription];
      [(NSXPCConnection(SafariCoreExtras) *)v8 safari_applicationRecordForConnectedProcessWithAuditToken:buf, v7];
    }
  }

  v6 = 0;
LABEL_10:

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

+ (uint64_t)safari_applicationWithAuditToken:()SafariCoreExtras hasApprovedWebCredentialsDomainAssociationForDomain:
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3[1];
  *buf = *a3;
  v19 = v6;
  v7 = WBSApplicationIdentifierFromAuditToken(buf);
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69CDB30]);
    v9 = [v8 initWithServiceType:*MEMORY[0x1E69CDB48] applicationIdentifier:v7 domain:v5];
    v17 = 0;
    v10 = [MEMORY[0x1E69CDB28] serviceDetailsWithServiceSpecifier:v9 error:&v17];
    v11 = v17;
    if (v10)
    {
      v12 = [v10 safari_containsObjectPassingTest:&__block_literal_global_33];
    }

    else
    {
      v13 = WBS_LOG_CHANNEL_PREFIXXPC();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v11 safari_privacyPreservingDescription];
        *buf = 138543362;
        *&buf[4] = v14;
        _os_log_impl(&dword_1B8447000, v13, OS_LOG_TYPE_DEFAULT, "Could not load shared web credentials: %{public}@", buf, 0xCu);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v12;
}

- (uint64_t)safari_BOOLForEntitlement:()SafariCoreExtras
{
  v1 = [a1 valueForEntitlement:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)safari_arrayForEntitlement:()SafariCoreExtras
{
  v1 = [a1 valueForEntitlement:?];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  if (isKindOfClass)
  {
    v4 = 0;
  }

  else
  {
    v4 = v1;
  }

  return v3;
}

- (id)safari_arrayForEntitlement:()SafariCoreExtras containingObjectsOfClass:
{
  v5 = [a1 safari_arrayForEntitlement:?];
  if ([v5 count])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __89__NSXPCConnection_SafariCoreExtras__safari_arrayForEntitlement_containingObjectsOfClass___block_invoke;
    v8[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
    v8[4] = a4;
    v6 = [v5 safari_filterObjectsUsingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)safari_hasApprovedWebCredentialsDomainAssociationForDomain:()SafariCoreExtras
{
  v4 = a3;
  v5 = objc_opt_class();
  [a1 auditToken];
  v6 = [v5 safari_applicationWithAuditToken:&v8 hasApprovedWebCredentialsDomainAssociationForDomain:v4];

  return v6;
}

+ (void)safari_applicationRecordForConnectedProcessWithAuditToken:()SafariCoreExtras .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Connected process bundle record has unexpected type: %{public}@.", buf, 0xCu);
}

+ (void)safari_applicationRecordForConnectedProcessWithAuditToken:()SafariCoreExtras .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Could not fetch bundle record for connected process: %{public}@.", buf, 0xCu);
}

@end