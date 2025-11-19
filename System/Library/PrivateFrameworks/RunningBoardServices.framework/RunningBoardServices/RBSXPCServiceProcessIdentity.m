@interface RBSXPCServiceProcessIdentity
- (BOOL)_matchesIdentity:(id)a3;
- (BOOL)inheritsCoalitionBand;
- (BOOL)isEqualToIdentity:(id)a3;
- (BOOL)isExtension;
- (BOOL)isExternal;
- (BOOL)isMultiInstanceExtension;
- (BOOL)supportsLaunchingDirectly;
- (RBSXPCServiceProcessIdentity)initWithDecodeFromJob:(id)a3 uuid:(id)a4;
- (RBSXPCServiceProcessIdentity)initWithRBSXPCCoder:(id)a3;
- (id)encodeForJob;
- (id)hostIdentifier;
- (id)hostIdentity;
- (id)xpcServiceIdentifier;
- (unsigned)defaultManageFlags;
- (void)encodeForJob;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSXPCServiceProcessIdentity

- (BOOL)isExtension
{
  v2 = [(RBSXPCServiceIdentity *)self->_serviceIdentity definition];
  v3 = [v2 variant] > 1;

  return v3;
}

- (unsigned)defaultManageFlags
{
  v16 = *MEMORY[0x1E69E9840];
  if (defaultManageFlags_onceToken != -1)
  {
    [RBSXPCServiceProcessIdentity defaultManageFlags];
  }

  v3 = defaultManageFlags___xpcserviceUnmanagedSet;
  v4 = [(RBSXPCServiceIdentity *)self->_serviceIdentity definition];
  v5 = [v4 identifier];
  LODWORD(v3) = [v3 containsObject:v5];

  if (v3)
  {
    v6 = rbs_process_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      serviceIdentity = self->_serviceIdentity;
      v14 = 138412290;
      v15 = serviceIdentity;
      _os_log_impl(&dword_18E8AD000, v6, OS_LOG_TYPE_INFO, "Not managing %@", &v14, 0xCu);
    }

    v8 = *MEMORY[0x1E69E9840];
    return 0;
  }

  else
  {
    v10 = [(RBSXPCServiceIdentity *)self->_serviceIdentity host];
    v11 = [v10 identity];
    v12 = [v11 defaultManageFlags];

    v13 = *MEMORY[0x1E69E9840];
    return v12;
  }
}

- (id)hostIdentifier
{
  v2 = [(RBSXPCServiceIdentity *)self->_serviceIdentity host];
  v3 = [v2 identifier];

  return v3;
}

- (id)xpcServiceIdentifier
{
  v2 = [(RBSXPCServiceIdentity *)self->_serviceIdentity definition];
  v3 = [v2 identifier];

  return v3;
}

- (id)encodeForJob
{
  v25 = *MEMORY[0x1E69E9840];
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_int64(empty, "TYPE", 4);
  pid = self->super._pid;
  if (pid)
  {
    xpc_dictionary_set_int64(empty, "p", pid);
  }

  v5 = [(RBSXPCServiceProcessIdentity *)self hostIdentifier];
  v6 = [v5 pid];

  if (v6)
  {
    xpc_dictionary_set_int64(empty, "h", v6);
  }

  v7 = [(RBSXPCServiceProcessIdentity *)self hostIdentity];
  v8 = [v7 uuid];

  if (v8)
  {
    *uuid = 0;
    v24 = 0;
    [v8 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(empty, "hu", uuid);
  }

  v9 = [(RBSXPCServiceIdentity *)self->_serviceIdentity host];
  v10 = [v9 identity];

  if (v10)
  {
    v11 = [v10 encodeForJob];
    if (v11)
    {
      xpc_dictionary_set_value(empty, "H", v11);
    }

    else
    {
      v12 = rbs_process_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [(RBSXPCServiceProcessIdentity *)v10 encodeForJob];
      }
    }
  }

  v13 = [(RBSXPCServiceProcessIdentity *)self xpcServiceIdentifier];
  v14 = [v13 UTF8String];

  if (v14)
  {
    xpc_dictionary_set_string(empty, "i", v14);
  }

  v15 = [(RBSXPCServiceProcessIdentity *)self personaString];
  v16 = [v15 UTF8String];

  if (v16)
  {
    xpc_dictionary_set_string(empty, "o", v16);
  }

  v17 = [(RBSXPCServiceProcessIdentity *)self validationToken];
  v18 = v17;
  if (v17)
  {
    xpc_dictionary_set_data(empty, "v", [v17 bytes], objc_msgSend(v17, "length"));
  }

  v19 = [(RBSXPCServiceIdentity *)self->_serviceIdentity definition];
  v20 = [v19 variant];

  xpc_dictionary_set_int64(empty, "r", v20);
  v21 = *MEMORY[0x1E69E9840];

  return empty;
}

- (id)hostIdentity
{
  v2 = [(RBSXPCServiceIdentity *)self->_serviceIdentity host];
  v3 = [v2 identity];

  return v3;
}

- (BOOL)isExternal
{
  v2 = [(RBSXPCServiceIdentity *)self->_serviceIdentity definition];
  v3 = [v2 variant] == 3;

  return v3;
}

- (BOOL)isMultiInstanceExtension
{
  if (![(RBSXPCServiceProcessIdentity *)self isExtension])
  {
    return 0;
  }

  v3 = [(RBSXPCServiceIdentity *)self->_serviceIdentity uuid];
  v4 = v3 != 0;

  return v4;
}

uint64_t __50__RBSXPCServiceProcessIdentity_defaultManageFlags__block_invoke()
{
  defaultManageFlags___xpcserviceUnmanagedSet = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"com.apple.FileProvider.ArchiveService", @"com.apple.SMBClientProvider.FileProvider", @"com.apple.SafariServices.ContentBlockerLoader", @"com.apple.CallKit.CallDirectory", @"com.apple.AppleMediaServicesUI.SpyglassPurchases", 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)supportsLaunchingDirectly
{
  if (![(RBSXPCServiceProcessIdentity *)self isExtension])
  {
    return 0;
  }

  v3 = [(RBSXPCServiceProcessIdentity *)self hostIdentity];
  v4 = +[RBSProcessHandle currentProcess];
  v5 = [v4 identity];
  v6 = v5;
  if (v3 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (v3 && v5)
    {
      v7 = [v3 isEqual:v5];
    }
  }

  return v7;
}

- (BOOL)inheritsCoalitionBand
{
  serviceIdentity = self->_serviceIdentity;
  if (!serviceIdentity)
  {
    return 0;
  }

  v3 = [(RBSXPCServiceIdentity *)serviceIdentity definition];
  v4 = [v3 variant] == 1 && objc_msgSend(v3, "scope") == 1;

  return v4;
}

- (RBSXPCServiceProcessIdentity)initWithDecodeFromJob:(id)a3 uuid:(id)a4
{
  v6 = a3;
  v7 = a4;
  string = xpc_dictionary_get_string(v6, "i");
  if (string)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    int64 = xpc_dictionary_get_int64(v6, "p");
    v9 = xpc_dictionary_get_int64(v6, "h");
    uuid = xpc_dictionary_get_uuid(v6, "hu");
    if (uuid)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uuid];
    }

    else
    {
      v11 = 0;
    }

    v13 = xpc_dictionary_get_value(v6, "H");
    if (v13)
    {
      v14 = [RBSProcessIdentity decodeFromJob:v13 uuid:v11];
    }

    else
    {
      v14 = 0;
    }

    v26 = xpc_dictionary_get_int64(v6, "e");
    v25 = xpc_dictionary_get_int64(v6, "r");
    v15 = xpc_dictionary_get_string(v6, "o");
    if (v15)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
    }

    else
    {
      v27 = 0;
    }

    length = 0;
    data = xpc_dictionary_get_data(v6, "v", &length);
    v17 = v7;
    if (data)
    {
      v18 = objc_alloc(MEMORY[0x1E695DEF0]);
      data = [v18 initWithBytes:data length:length];
    }

    v19 = 0;
    if (v9)
    {
      v20 = 1;
    }

    else
    {
      v20 = 3;
    }

    if (v9 && v14)
    {
      v21 = [RBSProcessIdentifier identifierWithPid:v9];
      v19 = [RBSProcessInstance instanceWithIdentifier:v21 identity:v14];
    }

    v22 = [RBSXPCServiceDefinition definitionWithIdentifier:v29 variant:v25 scope:v20];
    v7 = v17;
    v23 = [RBSXPCServiceIdentity identityWithDefinition:v22 sessionID:0 host:v19 UUID:v17 persona:v27 validationToken:data];
    self = [(RBSXPCServiceProcessIdentity *)self _initWithXPCServiceID:v23 pid:int64 auid:v26];

    v12 = self;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeObject:self->_serviceIdentity forKey:@"_serviceIdentity"];
  if (self->super._pid >= 1)
  {
    [v4 encodeInt64:? forKey:?];
  }
}

- (RBSXPCServiceProcessIdentity)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_serviceIdentity"];
  v6 = [v4 decodeInt64ForKey:@"_pid"];

  v7 = [(RBSXPCServiceProcessIdentity *)self _initWithXPCServiceID:v5 pid:v6 auid:0];
  return v7;
}

- (BOOL)isEqualToIdentity:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = [(RBSProcessIdentity *)self hash];
    v6 = v5 == [(RBSProcessIdentity *)v4 hash]&& [(RBSXPCServiceProcessIdentity *)self _matchesIdentity:v4];
  }

  return v6;
}

- (BOOL)_matchesIdentity:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_2;
  }

  serviceIdentity = self->_serviceIdentity;
  v9 = v4[7];
  if (serviceIdentity == v9)
  {
    v6 = 1;
    goto LABEL_3;
  }

  if (!serviceIdentity || v9 == 0)
  {
LABEL_2:
    v6 = 0;
  }

  else
  {
    v6 = [(RBSXPCServiceIdentity *)serviceIdentity isEqual:?];
  }

LABEL_3:

  return v6;
}

- (void)encodeForJob
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138412546;
  v5 = a1;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_18E8AD000, log, OS_LOG_TYPE_FAULT, "error encoding host identity for job: %@ of %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end