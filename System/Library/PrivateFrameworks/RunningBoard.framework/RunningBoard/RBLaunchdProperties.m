@interface RBLaunchdProperties
+ (id)_instanceWithProperties:(id)a3;
+ (id)processIdentityForEndpoint:(id)a3;
+ (id)propertiesForJob:(id)a3;
+ (id)propertiesForLabel:(id)a3 error:(id *)a4;
- (id)_configureDaemonOrAngelWithProperties:(id)a3 path:(id)a4 isAngel:(BOOL)a5;
- (id)_configureXPCServiceWithProperties:(id)a3;
- (id)_initWithProperties:(id)a3;
- (void)_parseAdditionalProperties:(id)a3;
- (void)_parseClientRestriction:(id)a3;
- (void)_parseEndpoints:(id)a3 withAdditionalProperties:(id)a4;
- (void)_parseLASSProperties:(id)a3;
@end

@implementation RBLaunchdProperties

+ (id)_instanceWithProperties:(id)a3
{
  if (a3)
  {
    v3 = a3;
    v4 = [[RBLaunchdProperties alloc] _initWithProperties:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_initWithProperties:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [(RBLaunchdProperties *)&v31 _initWithProperties:buf];
  }

  v5 = v4;
  v30.receiver = self;
  v30.super_class = RBLaunchdProperties;
  v6 = [(RBLaunchdProperties *)&v30 init];
  if (v6)
  {
    v7 = [v5 path];
    v8 = [v5 xpcBundle];
    if (v8)
    {
      v9 = 0;
      v10 = 0;
    }

    else
    {
      v12 = [v7 pathExtension];
      v9 = [v12 isEqualToString:@"plist"];

      v10 = v9 ^ 1;
    }

    v13 = [v5 label];
    p_jobLabel = &v6->_jobLabel;
    jobLabel = v6->_jobLabel;
    v6->_jobLabel = v13;

    [(RBLaunchdProperties *)v6 _parseLASSProperties:v5];
    v15 = [v5 serviceType];
    if (v15 > 3)
    {
      if ((v15 - 5) < 2)
      {
        if ((v8 & 1) == 0)
        {
          v21 = rbs_process_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            [RBLaunchdProperties _initWithProperties:?];
          }
        }

        v22 = [(RBLaunchdProperties *)v6 _configureXPCServiceWithProperties:v5];
        goto LABEL_29;
      }

      if (v15 == 4)
      {
        if (!v6->_specifiedIdentity)
        {
          v28 = rbs_process_log();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            v29 = *p_jobLabel;
            *buf = 138543362;
            *&buf[4] = v29;
            _os_log_impl(&dword_262485000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: RunningBoard doesn't recognize submitted process - treating as a anonymous process", buf, 0xCu);
          }

          p_jobLabel = 0;
          goto LABEL_30;
        }

        if ((v10 & 1) == 0)
        {
          v26 = rbs_process_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            [RBLaunchdProperties _initWithProperties:?];
          }
        }

        v22 = [(RBLaunchdProperties *)v6 _configureAppWithProperties:v5];
        goto LABEL_29;
      }
    }

    else
    {
      if ((v15 - 1) < 2)
      {
        if ((v9 & 1) == 0)
        {
          v16 = rbs_process_log();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
          {
            [RBLaunchdProperties _initWithProperties:?];
          }
        }

        v17 = v6;
        v18 = v5;
        v19 = v7;
        v20 = 0;
LABEL_28:
        v22 = [(RBLaunchdProperties *)v17 _configureDaemonOrAngelWithProperties:v18 path:v19 isAngel:v20];
LABEL_29:
        p_jobLabel = v22;
LABEL_30:

        goto LABEL_31;
      }

      if (v15 == 3)
      {
        if ((v9 & 1) == 0)
        {
          v23 = rbs_process_log();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
          {
            [RBLaunchdProperties _initWithProperties:?];
          }
        }

        if (!v6->_doesOverrideHasBackoff)
        {
          v6->_hasBackoff = 1;
        }

        v17 = v6;
        v18 = v5;
        v19 = v7;
        v20 = 1;
        goto LABEL_28;
      }
    }

    v27 = rbs_process_log();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
    {
      [(RBLaunchdProperties *)&v6->_jobLabel _initWithProperties:v5];
    }

    goto LABEL_30;
  }

  p_jobLabel = 0;
LABEL_31:

  v24 = *MEMORY[0x277D85DE8];
  return p_jobLabel;
}

+ (id)propertiesForJob:(id)a3
{
  v4 = a3;
  v10 = 0;
  v5 = [MEMORY[0x277CEBF18] propertiesForJob:v4 error:&v10];
  v6 = v10;
  if (v5)
  {
    v7 = [a1 _instanceWithProperties:v5];
  }

  else
  {
    v8 = rbs_general_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[RBLaunchdProperties propertiesForJob:];
    }

    v7 = 0;
  }

  return v7;
}

+ (id)propertiesForLabel:(id)a3 error:(id *)a4
{
  v23[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CEBF28];
  v6 = MEMORY[0x277CEBF20];
  v7 = a3;
  v8 = [v6 currentDomain];
  v9 = [v5 copyJobWithLabel:v7 domain:v8];

  if (v9)
  {
    v10 = [RBLaunchdProperties propertiesForJob:v9];
    v11 = v10;
    if (a4 && !v10)
    {
      v12 = MEMORY[0x277CCA9B8];
      v13 = *MEMORY[0x277D47098];
      v20 = *MEMORY[0x277CCA470];
      v21 = @"Launchd did not have information on this label";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v15 = [v12 errorWithDomain:v13 code:4 userInfo:v14];
LABEL_7:
      *a4 = v15;
    }
  }

  else
  {
    if (a4)
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D47098];
      v22 = *MEMORY[0x277CCA470];
      v23[0] = @"Could not find launchd job for label";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v15 = [v16 errorWithDomain:v17 code:4 userInfo:v14];
      v11 = 0;
      goto LABEL_7;
    }

    v11 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)processIdentityForEndpoint:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15[0] = 0;
  v15[1] = 0;
  if (xpc_endpoint_get_bs_job_handle())
  {
    v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v15];
    v6 = [MEMORY[0x277CEBF28] copyJobWithHandle:v5];
    if (v6)
    {
      v7 = [a1 propertiesForJob:v6];
      v8 = v7;
      if (v7)
      {
        v9 = [v7 specifiedIdentity];
        v10 = v9;
        if (v9)
        {
          v11 = v9;
          v10 = v11;
        }

        else
        {
          v11 = [v8 resolvedIdentity];
        }

        v12 = v11;
      }

      else
      {
        v10 = rbs_general_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          +[RBLaunchdProperties processIdentityForEndpoint:];
        }

        v12 = 0;
      }
    }

    else
    {
      v8 = rbs_general_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        +[RBLaunchdProperties processIdentityForEndpoint:];
      }

      v12 = 0;
    }
  }

  else
  {
    v5 = rbs_general_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[RBLaunchdProperties processIdentityForEndpoint:];
    }

    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)_configureXPCServiceWithProperties:(id)a3
{
  self->_hostPid = [a3 hostPID];
  self->_type = 3;
  return self;
}

- (void)_parseLASSProperties:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 instance];
  uuid = self->_uuid;
  self->_uuid = v5;

  self->_multiInstance = self->_uuid != 0;
  v7 = rbs_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    multiInstance = self->_multiInstance;
    v20 = 67109120;
    LODWORD(v21) = multiInstance;
    _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_INFO, "_multiInstance = %d", &v20, 8u);
  }

  v9 = [v4 program];
  executablePath = self->_executablePath;
  self->_executablePath = v9;

  v11 = rbs_general_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = self->_executablePath;
    v20 = 138543362;
    v21 = v12;
    _os_log_impl(&dword_262485000, v11, OS_LOG_TYPE_INFO, "_executablePath = %{public}@", &v20, 0xCu);
  }

  v13 = [v4 additionalProperties];
  v14 = v13;
  if (v13 && MEMORY[0x26672A380](v13) == MEMORY[0x277D86468])
  {
    v18 = rbs_general_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [(RBLaunchdProperties *)self _parseLASSProperties:v14, v18];
    }

    [(RBLaunchdProperties *)self _parseAdditionalProperties:v14];
    v19 = [v4 endpoints];
    v15 = v19;
    if (v19 && MEMORY[0x26672A380](v19) == MEMORY[0x277D86440] && xpc_array_get_count(v15))
    {
      [(RBLaunchdProperties *)self _parseEndpoints:v15 withAdditionalProperties:v14];
    }
  }

  else
  {
    v15 = rbs_general_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      jobLabel = self->_jobLabel;
      v20 = 138412290;
      v21 = jobLabel;
      _os_log_impl(&dword_262485000, v15, OS_LOG_TYPE_INFO, "no additional launch properties found for %@", &v20, 0xCu);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)_parseAdditionalProperties:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v4 = xpc_dictionary_get_value(a3, "RunningBoard");
  v5 = v4;
  if (!v4 || (v6 = MEMORY[0x26672A380](v4), v7 = MEMORY[0x277D86468], v6 != MEMORY[0x277D86468]))
  {
    v8 = rbs_general_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_262485000, v8, OS_LOG_TYPE_INFO, "_parseAdditionalProperties no RBProperties", buf, 2u);
    }

    goto LABEL_46;
  }

  v9 = xpc_dictionary_get_value(v5, "Managed");
  v8 = v9;
  v10 = MEMORY[0x277D86448];
  if (v9)
  {
    if (MEMORY[0x26672A380](v9) == v10)
    {
      self->_doesOverrideManagement = 1;
      if (xpc_BOOL_get_value(v8))
      {
        self->_overrideManageFlags = -1;
      }
    }
  }

  v11 = xpc_dictionary_get_value(v5, "Reported");
  v12 = v11;
  if (v11)
  {
    if (MEMORY[0x26672A380](v11) == v10)
    {
      self->_doesOverrideManagement = 1;
      if (xpc_BOOL_get_value(v12))
      {
        self->_overrideManageFlags |= 2u;
      }
    }
  }

  v58 = v12;
  v13 = xpc_dictionary_get_value(v5, "ExplicitAng");
  v14 = v13;
  if (v13 && MEMORY[0x26672A380](v13) == v10)
  {
    self->_explicitAngelFlag = xpc_BOOL_get_value(v14);
  }

  v57 = v14;
  v15 = xpc_dictionary_get_value(v5, "UnderlyingAssertion");
  v16 = v15;
  v17 = MEMORY[0x277D864C0];
  if (v15 && MEMORY[0x26672A380](v15) == v17)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(v16)];
    underlyingAssertion = self->_underlyingAssertion;
    self->_underlyingAssertion = v18;
  }

  v56 = v16;
  v20 = xpc_dictionary_get_value(v5, "VariableEUID");
  v21 = v20;
  if (v20 && MEMORY[0x26672A380](v20) == v10)
  {
    self->_variableEUID = xpc_BOOL_get_value(v21);
  }

  v55 = v21;
  v22 = xpc_dictionary_get_value(v5, "Backoff");
  v23 = v22;
  if (v22 && MEMORY[0x26672A380](v22) == v10)
  {
    self->_doesOverrideHasBackoff = 1;
    self->_hasBackoff = xpc_BOOL_get_value(v23);
  }

  v24 = xpc_dictionary_get_value(v5, "RunningBoardLaunchedIdentity");
  v25 = v24;
  v26 = MEMORY[0x277D86458];
  if (v24)
  {
    if (MEMORY[0x26672A380](v24) == v26)
    {
      v30 = MEMORY[0x277CBEA90];
      bytes_ptr = xpc_data_get_bytes_ptr(v25);
      v28 = [v30 dataWithBytes:bytes_ptr length:{xpc_data_get_length(v25), v55, v56, v57, v58}];
      v29 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v28 error:0];
    }

    else
    {
      if (MEMORY[0x26672A380](v25) != v7)
      {
        goto LABEL_31;
      }

      v27 = MEMORY[0x277D46F60];
      v28 = [(RBLaunchdProperties *)self uuid:v21];
      v29 = [v27 decodeFromJob:v25 uuid:v28];
    }

    specifiedIdentity = self->_specifiedIdentity;
    self->_specifiedIdentity = v29;
  }

LABEL_31:
  v33 = xpc_dictionary_get_value(v5, "BeforeTranslocationBundlePath");
  v34 = v33;
  if (v33 && MEMORY[0x26672A380](v33) == v17)
  {
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(v34)];
    beforeTranslocationBundlePath = self->_beforeTranslocationBundlePath;
    self->_beforeTranslocationBundlePath = v35;
  }

  v37 = xpc_dictionary_get_value(v5, "HOME");
  v38 = v37;
  if (v37 && MEMORY[0x26672A380](v37) == v17)
  {
    v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(v38)];
    homeDirectory = self->_homeDirectory;
    self->_homeDirectory = v39;
  }

  v41 = xpc_dictionary_get_value(v5, "TMPDIR");
  v42 = v41;
  if (v41 && MEMORY[0x26672A380](v41) == v17)
  {
    v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(v42)];
    tmpDirectory = self->_tmpDirectory;
    self->_tmpDirectory = v43;
  }

  v45 = xpc_dictionary_get_value(v5, "ClientRestriction");
  v46 = v45;
  if (v45 && MEMORY[0x26672A380](v45) == v26)
  {
    [(RBLaunchdProperties *)self _parseClientRestriction:v46];
  }

  v47 = rbs_general_log();
  if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
  {
    doesOverrideManagement = self->_doesOverrideManagement;
    overrideManageFlags = self->_overrideManageFlags;
    variableEUID = self->_variableEUID;
    v51 = self->_underlyingAssertion;
    v52 = self->_specifiedIdentity;
    v53 = self->_beforeTranslocationBundlePath;
    *buf = 67110402;
    v60 = doesOverrideManagement;
    v61 = 1024;
    v62 = overrideManageFlags;
    v63 = 2114;
    v64 = v51;
    v65 = 1024;
    v66 = variableEUID;
    v67 = 2114;
    v68 = v52;
    v69 = 2114;
    v70 = v53;
    _os_log_impl(&dword_262485000, v47, OS_LOG_TYPE_INFO, "_doesOverrideManagement = %d, _overrideManageFlags = %d, _underlyingAssertion = %{public}@, _variableEUID = %d, _specifiedIdenity = %{public}@ _beforeTranslocationBundlePath = %{public}@", buf, 0x32u);
  }

LABEL_46:
  v54 = *MEMORY[0x277D85DE8];
}

- (void)_parseClientRestriction:(id)a3
{
  v15[4] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEA90];
  v5 = a3;
  bytes_ptr = xpc_data_get_bytes_ptr(v5);
  length = xpc_data_get_length(v5);

  v8 = [v4 dataWithBytes:bytes_ptr length:length];
  v9 = MEMORY[0x277CBEB98];
  v15[0] = objc_opt_class();
  v15[1] = objc_opt_class();
  v15[2] = objc_opt_class();
  v15[3] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
  v11 = [v9 setWithArray:v10];

  v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v11 fromData:v8 error:0];
  clientRestriction = self->_clientRestriction;
  self->_clientRestriction = v12;

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_parseEndpoints:(id)a3 withAdditionalProperties:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (xpc_array_get_count(v5))
  {
    xdict = v6;
    v37 = v5;
    v7 = 0;
    v8 = 0;
    v9 = "XPCServiceEndpointName";
    v10 = "XPCServiceEndpointNonLaunching";
    v11 = "XPCServiceEndpointPort";
    do
    {
      v12 = xpc_array_get_dictionary(v5, v7);
      string = xpc_dictionary_get_string(v12, v9);
      v14 = xpc_dictionary_get_BOOL(v12, v10);
      v15 = xpc_dictionary_get_value(v12, v11);
      v16 = v15;
      if (string && v15)
      {
        v17 = v11;
        v18 = v10;
        v19 = v9;
        v20 = objc_alloc(MEMORY[0x277D46ED0]);
        v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
        v22 = [v20 _initWithName:v21 nonLaunching:v14 port:v16];

        if (v8)
        {
          v23 = [v22 name];
          [v8 setObject:v22 forKey:v23];
        }

        else
        {
          v24 = MEMORY[0x277CBEB38];
          v23 = [v22 name];
          v8 = [v24 dictionaryWithObject:v22 forKey:v23];
        }

        v9 = v19;
        v10 = v18;
        v11 = v17;
        v5 = v37;
      }

      ++v7;
    }

    while (xpc_array_get_count(v5) > v7);
    v6 = xdict;
    if (v8)
    {
      v25 = xpc_dictionary_get_dictionary(xdict, "RunningBoard");
      v26 = v25;
      if (v25)
      {
        v27 = MEMORY[0x26672A380](v25);
        v28 = MEMORY[0x277D86468];
        if (v27 == MEMORY[0x277D86468])
        {
          v29 = xpc_dictionary_get_dictionary(v26, "LaunchRequestEndpointIdentifiers");
          v30 = v29;
          if (v29 && MEMORY[0x26672A380](v29) == v28)
          {
            v31 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:xpc_dictionary_get_count(v30)];
            applier[0] = MEMORY[0x277D85DD0];
            applier[1] = 3221225472;
            applier[2] = __64__RBLaunchdProperties__parseEndpoints_withAdditionalProperties___block_invoke;
            applier[3] = &unk_279B33A88;
            v39 = v8;
            v40 = self;
            v32 = v31;
            v41 = v32;
            if (xpc_dictionary_apply(v30, applier) && [v32 count])
            {
              v33 = [v32 copy];
              managedEndpointByLaunchIdentifier = self->_managedEndpointByLaunchIdentifier;
              self->_managedEndpointByLaunchIdentifier = v33;
            }
          }
        }
      }
    }
  }
}

uint64_t __64__RBLaunchdProperties__parseEndpoints_withAdditionalProperties___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (MEMORY[0x26672A380]() != MEMORY[0x277D86448])
  {
    if (MEMORY[0x26672A380](v5) != MEMORY[0x277D864C0])
    {
      v6 = rbs_process_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      goto LABEL_12;
    }

    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    v11 = a1[4];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:xpc_string_get_string_ptr(v5)];
    v6 = [v11 objectForKey:v12];

    if (v6)
    {
      v9 = a1[6];
      if (v10)
      {
        [v9 setObject:v6 forKey:v10];
LABEL_14:
        v13 = 1;
        goto LABEL_15;
      }

LABEL_13:
      v14 = [v6 name];
      [v9 setObject:v6 forKey:v14];

      v10 = 0;
      goto LABEL_14;
    }

    goto LABEL_18;
  }

  if (xpc_BOOL_get_value(v5))
  {
    v7 = a1[4];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:a2];
    v6 = [v7 objectForKey:v8];

    if (v6)
    {
      v9 = a1[6];
      goto LABEL_13;
    }

    v10 = 0;
LABEL_18:
    v13 = 1;
    goto LABEL_16;
  }

  v6 = rbs_process_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
LABEL_19:
    v17 = *(a1[5] + 32);
    v18 = [v5 debugDescription];
    v19 = 138543874;
    v20 = v17;
    v21 = 2080;
    v22 = a2;
    v23 = 2112;
    v24 = v18;
    _os_log_error_impl(&dword_262485000, v6, OS_LOG_TYPE_ERROR, "%{public}@: LaunchRequestEndpointIdentifiers entry (%s) is malformed (expect only true or string mappings) - ignoring %@", &v19, 0x20u);
  }

LABEL_12:
  v10 = 0;
  v13 = 0;
LABEL_15:

LABEL_16:
  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_configureDaemonOrAngelWithProperties:(id)a3 path:(id)a4 isAngel:(BOOL)a5
{
  v6 = a5;
  v49 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (!v10)
  {
    v22 = rbs_general_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [RBLaunchdProperties _configureDaemonOrAngelWithProperties:path:isAngel:];
    }

    goto LABEL_21;
  }

  v11 = [v9 label];
  v12 = [v11 length];

  if (!v12)
  {
    v22 = rbs_general_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [RBLaunchdProperties _configureDaemonOrAngelWithProperties:path:isAngel:];
    }

LABEL_21:

    v23 = 0;
    goto LABEL_70;
  }

  objc_storeStrong(&self->_path, a4);
  explicitAngelFlag = self->_explicitAngelFlag;
  if (explicitAngelFlag || v6)
  {
    self->_type = 4;
    if (self->_overrideManageFlags == 255)
    {
      if (!explicitAngelFlag)
      {
LABEL_31:
        if ([v9 processType] != 256)
        {
          v26 = rbs_general_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
          {
            [RBLaunchdProperties _configureDaemonOrAngelWithProperties:v9 path:? isAngel:?];
          }
        }

        if ([v9 keepAlive])
        {
          v27 = rbs_general_log();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
          {
            [RBLaunchdProperties _configureDaemonOrAngelWithProperties:? path:? isAngel:?];
          }
        }

        if ([v9 runAtLoad])
        {
          v28 = rbs_general_log();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
          {
            [RBLaunchdProperties _configureDaemonOrAngelWithProperties:? path:? isAngel:?];
          }
        }

        if ([v9 enableTransactions])
        {
          v29 = rbs_general_log();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
          {
            [RBLaunchdProperties _configureDaemonOrAngelWithProperties:? path:? isAngel:?];
          }
        }

        if ([v9 enablePressuredExit])
        {
          v30 = rbs_general_log();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
          {
            [RBLaunchdProperties _configureDaemonOrAngelWithProperties:? path:? isAngel:?];
          }
        }

        v14 = [v9 endpoints];
        if (!xpc_array_get_count(v14) || !xpc_array_get_count(v14))
        {
          goto LABEL_69;
        }

        v43 = v10;
        v44 = v9;
        v31 = 0;
        do
        {
          v32 = xpc_array_get_value(v14, v31);
          string = xpc_dictionary_get_string(v32, "XPCServiceEndpointName");
          v34 = rbs_general_log();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            jobLabel = self->_jobLabel;
            if (string)
            {
              v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
              v36 = v5;
            }

            else
            {
              v36 = @"<NO-NAME>";
            }

            *buf = 138543618;
            v46 = jobLabel;
            v47 = 2114;
            v48 = v36;
            _os_log_impl(&dword_262485000, v34, OS_LOG_TYPE_INFO, "Checking angel %{public}@ for mach service with name %{public}@", buf, 0x16u);
            if (string)
            {
            }
          }

          if (!xpc_dictionary_get_BOOL(v32, "XPCServiceEndpointNonLaunching"))
          {
            v37 = rbs_general_log();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
            {
              v38 = self->_jobLabel;
              v39 = @"<NO-NAME>";
              if (string)
              {
                v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
                v39 = v42;
              }

              *buf = 138543618;
              v46 = v38;
              v47 = 2114;
              v48 = v39;
              _os_log_fault_impl(&dword_262485000, v37, OS_LOG_TYPE_FAULT, "Angel %{public}@ has the unsupported launching mach service with name %{public}@", buf, 0x16u);
              if (string)
              {
              }
            }
          }

          ++v31;
        }

        while (xpc_array_get_count(v14) > v31);
        goto LABEL_16;
      }
    }

    else
    {
      v24 = rbs_general_log();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
      {
        [RBLaunchdProperties _configureDaemonOrAngelWithProperties:? path:? isAngel:?];
      }

      self->_overrideManageFlags = -1;
      if (!self->_explicitAngelFlag)
      {
        goto LABEL_31;
      }
    }

    v25 = rbs_general_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      [RBLaunchdProperties _configureDaemonOrAngelWithProperties:? path:? isAngel:?];
    }

    goto LABEL_31;
  }

  self->_type = 2;
  v14 = [v9 endpoints];
  if (!xpc_array_get_count(v14) || !xpc_array_get_count(v14))
  {
    goto LABEL_69;
  }

  v43 = v10;
  v44 = v9;
  v15 = 0;
  do
  {
    v16 = xpc_array_get_value(v14, v15);
    v17 = xpc_dictionary_get_string(v16, "XPCServiceEndpointName");
    if (v17)
    {
      v18 = v17;
      if (!strcmp(v17, "com.apple.frontboard.workspace") || !strcmp(v18, "com.apple.frontboard.systemappservices"))
      {
        v19 = rbs_general_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = self->_jobLabel;
          v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18];
          *buf = 138543618;
          v46 = v20;
          v47 = 2114;
          v48 = v21;
          _os_log_impl(&dword_262485000, v19, OS_LOG_TYPE_DEFAULT, "Found FrontBoard mach service for daemon %{public}@ with name %{public}@", buf, 0x16u);
        }

        if (!self->_doesOverrideManagement)
        {
          self->_doesOverrideManagement = 1;
          self->_overrideManageFlags = 2;
        }
      }
    }

    ++v15;
  }

  while (xpc_array_get_count(v14) > v15);
LABEL_16:
  v10 = v43;
  v9 = v44;
LABEL_69:

  v23 = self;
LABEL_70:

  v40 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)_initWithProperties:(uint64_t *)a1 .cold.1(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_16(&dword_262485000, v1, v2, "%{public}@: RunningBoard legacy process type resolved as %d, new system resolved as an XPC Service");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_initWithProperties:(uint64_t *)a1 .cold.2(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_16(&dword_262485000, v1, v2, "%{public}@: RunningBoard legacy process type resolved as %d, new system resolved as a daemon");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_initWithProperties:(uint64_t *)a1 .cold.3(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_16(&dword_262485000, v1, v2, "%{public}@: RunningBoard legacy process type resolved as %d, new system resolved as an angel");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_initWithProperties:(uint64_t *)a1 .cold.4(uint64_t *a1)
{
  OUTLINED_FUNCTION_8_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_1_16(&dword_262485000, v1, v2, "%{public}@: RunningBoard legacy process type resolved as %d, new system resolved as an app");
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_initWithProperties:(uint64_t *)a1 .cold.5(uint64_t *a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  [a2 serviceType];
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_10_1(&dword_262485000, v3, v4, "%{public}@: Unrecognized launchd process type %d", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_initWithProperties:(uint64_t *)a1 .cold.6(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

+ (void)propertiesForJob:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_262485000, v0, v1, "Launchd didn't have information for job %{public}@, reason: %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

+ (void)processIdentityForEndpoint:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)processIdentityForEndpoint:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)processIdentityForEndpoint:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4(&dword_262485000, v0, v1, "no job for endpoint %@ from looked up handle=%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_parseLASSProperties:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = [a2 NSRepresentation];
  v7 = 138412546;
  v8 = v4;
  v9 = 2112;
  v10 = v5;
  _os_log_debug_impl(&dword_262485000, a3, OS_LOG_TYPE_DEBUG, "additional launch properties for %@: %@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_configureDaemonOrAngelWithProperties:(uint64_t)a1 path:isAngel:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_4_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_5(&dword_262485000, v1, v2, "Explicit ang %{public}@ doesn't explicitly state management", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_configureDaemonOrAngelWithProperties:(uint64_t)a1 path:isAngel:.cold.2(uint64_t a1)
{
  OUTLINED_FUNCTION_4_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_5(&dword_262485000, v1, v2, "Angel %{public}@ is using deprecated flag ExplicitAng - move plist to the correct location and remove this flag", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_configureDaemonOrAngelWithProperties:(uint64_t)a1 path:(void *)a2 isAngel:.cold.3(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  [a2 processType];
  OUTLINED_FUNCTION_7_3();
  OUTLINED_FUNCTION_10_1(&dword_262485000, v3, v4, "Angel %{public}@ is using a ProcessType other than app: %d", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)_configureDaemonOrAngelWithProperties:(uint64_t)a1 path:isAngel:.cold.4(uint64_t a1)
{
  OUTLINED_FUNCTION_4_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_5(&dword_262485000, v1, v2, "Angel %{public}@ has the unsupported key 'KeepAlive'", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_configureDaemonOrAngelWithProperties:(uint64_t)a1 path:isAngel:.cold.5(uint64_t a1)
{
  OUTLINED_FUNCTION_4_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_5(&dword_262485000, v1, v2, "Angel %{public}@ has the unsupported key 'runAtLoad'", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_configureDaemonOrAngelWithProperties:(uint64_t)a1 path:isAngel:.cold.6(uint64_t a1)
{
  OUTLINED_FUNCTION_4_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_5(&dword_262485000, v1, v2, "Angel %{public}@ has the unsupported key 'enableTransactions'", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_configureDaemonOrAngelWithProperties:(uint64_t)a1 path:isAngel:.cold.7(uint64_t a1)
{
  OUTLINED_FUNCTION_4_5(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_5(&dword_262485000, v1, v2, "Angel %{public}@ has the unsupported key 'enablePressuredExit'", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_configureDaemonOrAngelWithProperties:path:isAngel:.cold.8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end