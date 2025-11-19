@interface _RWIApplicationInfo
- (BOOL)updateFromListing:(id)a3;
- (_RWIApplicationInfo)initWithPID:(int)a3 bundleId:(id)a4 name:(id)a5 isProxy:(BOOL)a6 connection:(id)a7 debuggerAvailability:(unint64_t)a8;
- (id)dictionaryRepresentation;
@end

@implementation _RWIApplicationInfo

- (_RWIApplicationInfo)initWithPID:(int)a3 bundleId:(id)a4 name:(id)a5 isProxy:(BOOL)a6 connection:(id)a7 debuggerAvailability:(unint64_t)a8
{
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v25.receiver = self;
  v25.super_class = _RWIApplicationInfo;
  v17 = [(_RWIApplicationInfo *)&v25 init];
  v18 = v17;
  if (v17)
  {
    v17->_pid = a3;
    v19 = [v14 copy];
    bundleId = v18->_bundleId;
    v18->_bundleId = v19;

    v21 = [v15 copy];
    name = v18->_name;
    v18->_name = v21;

    v18->_proxy = a6;
    v18->_connection = v16;
    v18->_debuggerAvailability = a8;
    v18->_automationAvailability = 2;
    *&v18->_hasRemoteDebugSession = 0;
    v18->_hostApplicationPID = 0;
    v23 = v18;
  }

  return v18;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [(_RWIApplicationInfo *)self identifier];
  [v3 setObject:v4 forKeyedSubscript:@"WIRApplicationIdentifierKey"];

  v5 = [(_RWIApplicationInfo *)self name];
  [v3 setObject:v5 forKeyedSubscript:@"WIRApplicationNameKey"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_debuggerAvailability];
  [v3 setObject:v6 forKeyedSubscript:@"WIRIsApplicationActiveKey"];

  v7 = [(_RWIApplicationInfo *)self bundleId];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_2882B1C88;
  }

  [v3 setObject:v9 forKeyedSubscript:@"WIRApplicationBundleIdentifierKey"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[_RWIApplicationInfo isProxy](self, "isProxy")}];
  [v3 setObject:v10 forKeyedSubscript:@"WIRIsApplicationProxyKey"];

  v11 = RWINSStringFromAutomationAvailability([(_RWIApplicationInfo *)self automationAvailability]);
  [v3 setObject:v11 forKeyedSubscript:@"WIRAutomationAvailabilityKey"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[_RWIApplicationInfo hasUpdatedFromListing](self, "hasUpdatedFromListing")}];
  [v3 setObject:v12 forKeyedSubscript:@"WIRIsApplicationReadyKey"];

  if (self->_hostApplicationPID)
  {
    v13 = [_RWIApplicationInfo identifierForPID:?];
    [v3 setObject:v13 forKeyedSubscript:@"WIRHostApplicationIdentifierKey"];
  }

  v14 = [(_RWIApplicationInfo *)self bundleId];
  v15 = protocolIconDataForBundleIdentifier(v14);

  if (v15)
  {
    [v3 setObject:v15 forKeyedSubscript:@"WIRApplicationIconKey"];
  }

  return v3;
}

- (BOOL)updateFromListing:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"WIRListingKey"];
  v6 = objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = objc_opt_class();
    logUnexpectedType(v23, v6);

    v24 = 0;
    goto LABEL_44;
  }

  v7 = [v4 objectForKeyedSubscript:@"WIRAutomationAvailabilityKey"];
  v8 = objc_opt_class();
  if (v7 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    v25 = objc_opt_class();
    logUnexpectedType(v25, v8);

    v24 = 0;
    goto LABEL_43;
  }

  v42 = self;

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (!v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  v12 = *v44;
  v40 = v5;
  v41 = v4;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v44 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v43 + 1) + 8 * i);
      v15 = objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v26 = objc_opt_class();
        logUnexpectedType(v26, v15);
LABEL_20:

        goto LABEL_21;
      }

      v15 = [v9 objectForKey:v14];
      v16 = objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v27 = objc_opt_class();
        logUnexpectedType(v27, v16);

        v14 = v15;
        goto LABEL_20;
      }

      v17 = [v15 objectForKey:@"WIRConnectionIdentifierKey"];
      v18 = objc_opt_class();
      v19 = v18;
      if (v17)
      {
        if (objc_opt_isKindOfClass())
        {

          v20 = v42;
          p_hasRemoteDebugSession = &v42->_hasRemoteDebugSession;
          hasRemoteDebugSession = v42->_hasRemoteDebugSession;
          if (!hasRemoteDebugSession)
          {
            *p_hasRemoteDebugSession = 1;
          }

          v9 = v17;
          v5 = v40;
          v4 = v41;
          goto LABEL_26;
        }

        v39 = objc_opt_class();
        logUnexpectedType(v39, v19);

LABEL_21:
        v24 = 0;
        v5 = v40;
        v4 = v41;
        goto LABEL_42;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v43 objects:v47 count:16];
    v5 = v40;
    v4 = v41;
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_14:

  v20 = v42;
  p_hasRemoteDebugSession = &v42->_hasRemoteDebugSession;
  hasRemoteDebugSession = v42->_hasRemoteDebugSession;
  v9 = 0;
  if (hasRemoteDebugSession)
  {
    *p_hasRemoteDebugSession = 0;
  }

LABEL_26:
  v28 = [v9 copy];
  debuggerConnectionIdentifier = v20->_debuggerConnectionIdentifier;
  v20->_debuggerConnectionIdentifier = v28;

  automationAvailability = v20->_automationAvailability;
  hasUpdatedFromListing = v20->_hasUpdatedFromListing;
  v32 = 1;
  v20->_hasUpdatedFromListing = 1;
  if (v7)
  {
    if (RWIAutomationAvailabilityFromString(v7, &v20->_automationAvailability))
    {
      v32 = v20->_hasUpdatedFromListing;
      v33 = v20->_automationAvailability;
      goto LABEL_30;
    }

    v36 = RWIDefaultLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [(_RWIApplicationInfo *)v7 updateFromListing:v36];
    }

    v24 = 0;
  }

  else
  {
    v33 = automationAvailability;
LABEL_30:
    v24 = hasUpdatedFromListing != v32 || hasRemoteDebugSession != *p_hasRemoteDebugSession || automationAvailability != v33;
  }

LABEL_42:

LABEL_43:
LABEL_44:

  v37 = *MEMORY[0x277D85DE8];
  return v24;
}

- (void)updateFromListing:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_273C9C000, a2, OS_LOG_TYPE_ERROR, "Could not parse value for WIRAutomationAvailabilityKey: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end