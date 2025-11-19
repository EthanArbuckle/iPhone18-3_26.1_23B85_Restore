@interface _SWCServiceDetails
+ (BOOL)auditTokenHasReadAccess:(id *)a3;
+ (BOOL)auditTokenHasWriteAccess:(id *)a3;
+ (BOOL)currentProcessHasReadAccess;
+ (BOOL)currentProcessHasWriteAccess;
+ (BOOL)isDeveloperModeEnabled;
+ (id)_serviceDetailsWithServiceSpecifier:(id)a3 URLComponents:(id)a4 limit:(unint64_t)a5 callerAuditToken:(id *)a6 error:(id *)a7;
+ (id)serviceDetailsWithServiceSpecifier:(id)a3 URLComponents:(id)a4 limit:(unint64_t)a5 auditToken:(id *)a6 error:(id *)a7;
+ (id)serviceDetailsWithServiceSpecifier:(id)a3 URLComponents:(id)a4 limit:(unint64_t)a5 error:(id *)a6;
+ (id)serviceDetailsWithServiceSpecifier:(id)a3 error:(id *)a4;
+ (id)serviceDetailsWithServiceSpecifier:(id)a3 limit:(unint64_t)a4 auditToken:(id *)a5 error:(id *)a6;
+ (id)serviceDetailsWithServiceSpecifier:(id)a3 limit:(unint64_t)a4 error:(id *)a5;
+ (void)setAdditionalServiceDetailsForApplicationIdentifiers:(id)a3 usingContentsOfDictionary:(id)a4 completionHandler:(id)a5;
+ (void)synchronizeWithCompletionHandler:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSNumber)isEnabledByDefault;
- (_SWCServiceDetails)initWithCoder:(id)a3;
- (char)modeOfOperation;
- (id)_initWithServiceSpecifier:(id)a3 fields:(const SWCFields *)a4;
- (id)debugDescription;
- (id)description;
- (id)redactedDescription;
- (unsigned)siteApprovalState;
- (void)encodeWithCoder:(id)a3;
- (void)waitForSiteApprovalWithCompletionHandler:(id)a3;
@end

@implementation _SWCServiceDetails

+ (id)serviceDetailsWithServiceSpecifier:(id)a3 error:(id *)a4
{
  v4 = [a1 _serviceDetailsWithServiceSpecifier:a3 URLComponents:0 limit:-1 callerAuditToken:0 error:a4];

  return v4;
}

+ (id)serviceDetailsWithServiceSpecifier:(id)a3 limit:(unint64_t)a4 error:(id *)a5
{
  v5 = [a1 _serviceDetailsWithServiceSpecifier:a3 URLComponents:0 limit:a4 callerAuditToken:0 error:a5];

  return v5;
}

+ (id)serviceDetailsWithServiceSpecifier:(id)a3 limit:(unint64_t)a4 auditToken:(id *)a5 error:(id *)a6
{
  v6 = [a1 _serviceDetailsWithServiceSpecifier:a3 URLComponents:0 limit:a4 callerAuditToken:a5 error:a6];

  return v6;
}

+ (id)serviceDetailsWithServiceSpecifier:(id)a3 URLComponents:(id)a4 limit:(unint64_t)a5 error:(id *)a6
{
  v6 = [a1 _serviceDetailsWithServiceSpecifier:a3 URLComponents:a4 limit:a5 callerAuditToken:0 error:a6];

  return v6;
}

+ (id)serviceDetailsWithServiceSpecifier:(id)a3 URLComponents:(id)a4 limit:(unint64_t)a5 auditToken:(id *)a6 error:(id *)a7
{
  v7 = [a1 _serviceDetailsWithServiceSpecifier:a3 URLComponents:a4 limit:a5 callerAuditToken:a6 error:a7];

  return v7;
}

- (id)_initWithServiceSpecifier:(id)a3 fields:(const SWCFields *)a4
{
  v7 = a3;
  v13.receiver = self;
  v13.super_class = _SWCServiceDetails;
  v8 = [(_SWCServiceDetails *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_serviceSpecifier, a3);
    if (a4)
    {
      v11 = *a4;
      relativeOrder = a4->relativeOrder;
    }

    else
    {
      relativeOrder = 0;
      v11 = 0;
    }

    *&v9->_fields = v11;
    v9->_fields.relativeOrder = relativeOrder;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_SWCServiceSpecifier *)self->_serviceSpecifier isEqual:v4->_serviceSpecifier];
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(_SWCServiceSpecifier *)self->_serviceSpecifier serviceType];
  v5 = [(_SWCServiceSpecifier *)self->_serviceSpecifier applicationIdentifier];
  v6 = [(_SWCServiceSpecifier *)self->_serviceSpecifier domain];
  v7 = _SWCServiceApprovalStateGetDebugDescription(*&self->_fields & 3);
  v8 = _SWCServiceApprovalStateGetDebugDescription((*&self->_fields >> 2) & 3);
  v9 = [v3 initWithFormat:@"{ s = %@, a = %@, d = %@, ua = %@, sa = %@ }", v4, v5, v6, v7, v8];

  return v9;
}

- (id)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = [(_SWCServiceDetails *)self description];
  v6 = [v3 initWithFormat:@"<%@ %p> %@", v4, self, v5];

  return v6;
}

- (id)redactedDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [(_SWCServiceSpecifier *)self->_serviceSpecifier serviceType];
  v5 = [(_SWCServiceSpecifier *)self->_serviceSpecifier SWCApplicationIdentifier];
  v6 = [v5 redactedDescription];
  v7 = [(_SWCServiceSpecifier *)self->_serviceSpecifier SWCDomain];
  v8 = [v7 redactedDescription];
  v9 = _SWCServiceApprovalStateGetDebugDescription(*&self->_fields & 3);
  v10 = _SWCServiceApprovalStateGetDebugDescription((*&self->_fields >> 2) & 3);
  v11 = [v3 initWithFormat:@"{ s = %@, a = %@, d = %@, ua = %@, sa = %@ }", v4, v6, v8, v9, v10];

  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_serviceSpecifier forKey:@"serviceSpecifier"];
  [v4 encodeInt64:*&self->_fields | (self->_fields.relativeOrder << 16) forKey:@"fields"];
}

- (_SWCServiceDetails)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 swc_decodeObjectOfClass:objc_opt_class() forKey:@"serviceSpecifier"];
  v6 = [v4 decodeInt64ForKey:@"fields"];
  v9 = v6;
  v10 = BYTE2(v6);
  v7 = [(_SWCServiceDetails *)self _initWithServiceSpecifier:v5 fields:&v9];

  return v7;
}

- (unsigned)siteApprovalState
{
  fields = self->_fields;
  if ((*&fields & 0x20) != 0)
  {
    return 0;
  }

  else
  {
    return (*&fields >> 2) & 3;
  }
}

- (void)waitForSiteApprovalWithCompletionHandler:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"SWCServiceDetails.mm" lineNumber:239 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];
  }

  if ((*&self->_fields & 0xC) != 0)
  {
    v5[2](v5, self, 0);
  }

  else
  {
    v6 = _SWCGetServerConnection();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __83___SWCServiceDetails_SWCServiceApproval__waitForSiteApprovalWithCompletionHandler___block_invoke;
    v11[3] = &unk_279BBE000;
    v7 = v5;
    v12 = v7;
    v8 = [v6 remoteObjectProxyWithErrorHandler:v11];
    v9 = [(_SWCServiceDetails *)self serviceSpecifier];
    [v8 waitForSiteApprovalWithServiceSpecifier:v9 completionHandler:v7];
  }
}

+ (BOOL)currentProcessHasReadAccess
{
  v3 = _SWCGetAuditTokenForSelf(v6);
  if (v3)
  {
    v5[0] = v6[0];
    v5[1] = v6[1];
    LOBYTE(v3) = [a1 auditTokenHasReadAccess:v5];
  }

  return v3;
}

+ (BOOL)auditTokenHasReadAccess:(id *)a3
{
  v4 = *&a3->var0[4];
  v8 = *a3->var0;
  v9 = v4;
  v5 = _SWCCanAuditTokenConnect(&v8);
  if (v5)
  {
    v6 = *&a3->var0[4];
    v8 = *a3->var0;
    v9 = v6;
    LOBYTE(v5) = _SWCIsAuditTokenEntitled(&v8, 0);
  }

  return v5;
}

+ (BOOL)currentProcessHasWriteAccess
{
  v3 = _SWCGetAuditTokenForSelf(v6);
  if (v3)
  {
    v5[0] = v6[0];
    v5[1] = v6[1];
    LOBYTE(v3) = [a1 auditTokenHasWriteAccess:v5];
  }

  return v3;
}

+ (BOOL)auditTokenHasWriteAccess:(id *)a3
{
  v4 = *&a3->var0[4];
  v8 = *a3->var0;
  v9 = v4;
  v5 = _SWCCanAuditTokenConnect(&v8);
  if (v5)
  {
    v6 = *&a3->var0[4];
    v8 = *a3->var0;
    v9 = v6;
    LOBYTE(v5) = _SWCIsAuditTokenEntitled(&v8, 1);
  }

  return v5;
}

- (NSNumber)isEnabledByDefault
{
  if ((*&self->_fields >> 6) - 1 >= 2)
  {
    if (!(*&self->_fields >> 6))
    {
      return 0;
    }

    v2 = MEMORY[0x277CBEC28];
  }

  else
  {
    v2 = MEMORY[0x277CBEC38];
  }

  if ([(_SWCServiceDetails *)self isSystemApplication])
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (char)modeOfOperation
{
  v2 = [(_SWCServiceSpecifier *)self->_serviceSpecifier SWCDomain];
  v3 = [v2 modeOfOperation];

  return v3;
}

+ (void)setAdditionalServiceDetailsForApplicationIdentifiers:(id)a3 usingContentsOfDictionary:(id)a4 completionHandler:(id)a5
{
  v38 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v26 = a5;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:a1 file:@"SWCServiceDetails.mm" lineNumber:397 description:{@"Invalid parameter not satisfying: %@", @"applicationIdentifiers != nil"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  v25 = [MEMORY[0x277CCA890] currentHandler];
  [v25 handleFailureInMethod:a2 object:a1 file:@"SWCServiceDetails.mm" lineNumber:398 description:{@"Invalid parameter not satisfying: %@", @"jsonDataByDomainName != nil"}];

LABEL_3:
  v11 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v35 = 0u;
  v36 = 0u;
  v34 = 0u;
  v33 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v13)
  {
    v14 = *v34;
    do
    {
      v15 = 0;
      do
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = [[_SWCApplicationIdentifier alloc] initWithString:*(*(&v33 + 1) + 8 * v15)];
        if (v16)
        {
          [v11 addObject:v16];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

  v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __136___SWCServiceDetails_Synchronization__setAdditionalServiceDetailsForApplicationIdentifiers_usingContentsOfDictionary_completionHandler___block_invoke;
  v31[3] = &unk_279BBE028;
  v18 = v17;
  v32 = v18;
  [v10 enumerateKeysAndObjectsUsingBlock:v31];
  v19 = _SWCGetServerConnection();
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __136___SWCServiceDetails_Synchronization__setAdditionalServiceDetailsForApplicationIdentifiers_usingContentsOfDictionary_completionHandler___block_invoke_2;
  v29[3] = &unk_279BBE000;
  v20 = v26;
  v30 = v20;
  v21 = [v19 remoteObjectProxyWithErrorHandler:v29];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __136___SWCServiceDetails_Synchronization__setAdditionalServiceDetailsForApplicationIdentifiers_usingContentsOfDictionary_completionHandler___block_invoke_3;
  v27[3] = &unk_279BBE050;
  v22 = v20;
  v28 = v22;
  [v21 setAdditionalServiceDetailsForApplicationIdentifiers:v11 usingContentsOfDictionary:v18 completionHandler:v27];

  v23 = *MEMORY[0x277D85DE8];
}

+ (void)synchronizeWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = _SWCGetServerConnection();
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72___SWCServiceDetails_Synchronization__synchronizeWithCompletionHandler___block_invoke;
  v10[3] = &unk_279BBE000;
  v5 = v3;
  v11 = v5;
  v6 = [v4 remoteObjectProxyWithErrorHandler:v10];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __72___SWCServiceDetails_Synchronization__synchronizeWithCompletionHandler___block_invoke_2;
  v8[3] = &unk_279BBE050;
  v7 = v5;
  v9 = v7;
  [v6 addAllAppsWithCompletionHandler:v8];
}

+ (BOOL)isDeveloperModeEnabled
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v2 = _SWCGetServerConnection();
  v3 = [v2 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_6];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59___SWCServiceDetails_DeveloperMode__isDeveloperModeEnabled__block_invoke_2;
  v6[3] = &unk_279BBE098;
  v6[4] = &v7;
  [v3 getDeveloperModeEnabledWithCompletionHandler:v6];
  v4 = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v4;
}

+ (id)_serviceDetailsWithServiceSpecifier:(id)a3 URLComponents:(id)a4 limit:(unint64_t)a5 callerAuditToken:(id *)a6 error:(id *)a7
{
  v11 = a3;
  v12 = a4;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  if (a6)
  {
    a6 = [MEMORY[0x277CCAE60] valueWithBytes:a6 objCType:"{?=[8I]}"];
  }

  v13 = _SWCGetServerConnection();
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __110___SWCServiceDetails_Private___serviceDetailsWithServiceSpecifier_URLComponents_limit_callerAuditToken_error___block_invoke;
  v20[3] = &unk_279BBDE70;
  v20[4] = &v21;
  v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v20];
  v15 = [v12 URL];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __110___SWCServiceDetails_Private___serviceDetailsWithServiceSpecifier_URLComponents_limit_callerAuditToken_error___block_invoke_2;
  v19[3] = &unk_279BBE0E0;
  v19[4] = &v27;
  v19[5] = &v21;
  [v14 getDetailsWithServiceSpecifier:v11 URL:v15 limit:a5 callerAuditToken:a6 completionHandler:v19];

  v16 = v28[5];
  if (a7 && !v16)
  {
    *a7 = v22[5];
    v16 = v28[5];
  }

  v17 = v16;

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v17;
}

@end