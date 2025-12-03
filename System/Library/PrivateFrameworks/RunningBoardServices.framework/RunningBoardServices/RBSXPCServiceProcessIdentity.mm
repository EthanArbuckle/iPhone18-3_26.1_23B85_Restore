@interface RBSXPCServiceProcessIdentity
- (BOOL)_matchesIdentity:(id)identity;
- (BOOL)inheritsCoalitionBand;
- (BOOL)isEqualToIdentity:(id)identity;
- (BOOL)isExtension;
- (BOOL)isExternal;
- (BOOL)isMultiInstanceExtension;
- (BOOL)supportsLaunchingDirectly;
- (RBSXPCServiceProcessIdentity)initWithDecodeFromJob:(id)job uuid:(id)uuid;
- (RBSXPCServiceProcessIdentity)initWithRBSXPCCoder:(id)coder;
- (id)encodeForJob;
- (id)hostIdentifier;
- (id)hostIdentity;
- (id)xpcServiceIdentifier;
- (unsigned)defaultManageFlags;
- (void)encodeForJob;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSXPCServiceProcessIdentity

- (BOOL)isExtension
{
  definition = [(RBSXPCServiceIdentity *)self->_serviceIdentity definition];
  v3 = [definition variant] > 1;

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
  definition = [(RBSXPCServiceIdentity *)self->_serviceIdentity definition];
  identifier = [definition identifier];
  LODWORD(v3) = [v3 containsObject:identifier];

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
    host = [(RBSXPCServiceIdentity *)self->_serviceIdentity host];
    identity = [host identity];
    defaultManageFlags = [identity defaultManageFlags];

    v13 = *MEMORY[0x1E69E9840];
    return defaultManageFlags;
  }
}

- (id)hostIdentifier
{
  host = [(RBSXPCServiceIdentity *)self->_serviceIdentity host];
  identifier = [host identifier];

  return identifier;
}

- (id)xpcServiceIdentifier
{
  definition = [(RBSXPCServiceIdentity *)self->_serviceIdentity definition];
  identifier = [definition identifier];

  return identifier;
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

  hostIdentifier = [(RBSXPCServiceProcessIdentity *)self hostIdentifier];
  v6 = [hostIdentifier pid];

  if (v6)
  {
    xpc_dictionary_set_int64(empty, "h", v6);
  }

  hostIdentity = [(RBSXPCServiceProcessIdentity *)self hostIdentity];
  uuid = [hostIdentity uuid];

  if (uuid)
  {
    *uuid = 0;
    v24 = 0;
    [uuid getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(empty, "hu", uuid);
  }

  host = [(RBSXPCServiceIdentity *)self->_serviceIdentity host];
  identity = [host identity];

  if (identity)
  {
    encodeForJob = [identity encodeForJob];
    if (encodeForJob)
    {
      xpc_dictionary_set_value(empty, "H", encodeForJob);
    }

    else
    {
      v12 = rbs_process_log();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [(RBSXPCServiceProcessIdentity *)identity encodeForJob];
      }
    }
  }

  xpcServiceIdentifier = [(RBSXPCServiceProcessIdentity *)self xpcServiceIdentifier];
  uTF8String = [xpcServiceIdentifier UTF8String];

  if (uTF8String)
  {
    xpc_dictionary_set_string(empty, "i", uTF8String);
  }

  personaString = [(RBSXPCServiceProcessIdentity *)self personaString];
  uTF8String2 = [personaString UTF8String];

  if (uTF8String2)
  {
    xpc_dictionary_set_string(empty, "o", uTF8String2);
  }

  validationToken = [(RBSXPCServiceProcessIdentity *)self validationToken];
  v18 = validationToken;
  if (validationToken)
  {
    xpc_dictionary_set_data(empty, "v", [validationToken bytes], objc_msgSend(validationToken, "length"));
  }

  definition = [(RBSXPCServiceIdentity *)self->_serviceIdentity definition];
  variant = [definition variant];

  xpc_dictionary_set_int64(empty, "r", variant);
  v21 = *MEMORY[0x1E69E9840];

  return empty;
}

- (id)hostIdentity
{
  host = [(RBSXPCServiceIdentity *)self->_serviceIdentity host];
  identity = [host identity];

  return identity;
}

- (BOOL)isExternal
{
  definition = [(RBSXPCServiceIdentity *)self->_serviceIdentity definition];
  v3 = [definition variant] == 3;

  return v3;
}

- (BOOL)isMultiInstanceExtension
{
  if (![(RBSXPCServiceProcessIdentity *)self isExtension])
  {
    return 0;
  }

  uuid = [(RBSXPCServiceIdentity *)self->_serviceIdentity uuid];
  v4 = uuid != 0;

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

  hostIdentity = [(RBSXPCServiceProcessIdentity *)self hostIdentity];
  v4 = +[RBSProcessHandle currentProcess];
  identity = [v4 identity];
  v6 = identity;
  if (hostIdentity == identity)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (hostIdentity && identity)
    {
      v7 = [hostIdentity isEqual:identity];
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

  definition = [(RBSXPCServiceIdentity *)serviceIdentity definition];
  v4 = [definition variant] == 1 && objc_msgSend(definition, "scope") == 1;

  return v4;
}

- (RBSXPCServiceProcessIdentity)initWithDecodeFromJob:(id)job uuid:(id)uuid
{
  jobCopy = job;
  uuidCopy = uuid;
  string = xpc_dictionary_get_string(jobCopy, "i");
  if (string)
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
    int64 = xpc_dictionary_get_int64(jobCopy, "p");
    v9 = xpc_dictionary_get_int64(jobCopy, "h");
    uuid = xpc_dictionary_get_uuid(jobCopy, "hu");
    if (uuid)
    {
      v11 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uuid];
    }

    else
    {
      v11 = 0;
    }

    v13 = xpc_dictionary_get_value(jobCopy, "H");
    if (v13)
    {
      v14 = [RBSProcessIdentity decodeFromJob:v13 uuid:v11];
    }

    else
    {
      v14 = 0;
    }

    v26 = xpc_dictionary_get_int64(jobCopy, "e");
    v25 = xpc_dictionary_get_int64(jobCopy, "r");
    v15 = xpc_dictionary_get_string(jobCopy, "o");
    if (v15)
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
    }

    else
    {
      v27 = 0;
    }

    length = 0;
    data = xpc_dictionary_get_data(jobCopy, "v", &length);
    v17 = uuidCopy;
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
    uuidCopy = v17;
    v23 = [RBSXPCServiceIdentity identityWithDefinition:v22 sessionID:0 host:v19 UUID:v17 persona:v27 validationToken:data];
    self = [(RBSXPCServiceProcessIdentity *)self _initWithXPCServiceID:v23 pid:int64 auid:v26];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_serviceIdentity forKey:@"_serviceIdentity"];
  if (self->super._pid >= 1)
  {
    [coderCopy encodeInt64:? forKey:?];
  }
}

- (RBSXPCServiceProcessIdentity)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_serviceIdentity"];
  v6 = [coderCopy decodeInt64ForKey:@"_pid"];

  v7 = [(RBSXPCServiceProcessIdentity *)self _initWithXPCServiceID:v5 pid:v6 auid:0];
  return v7;
}

- (BOOL)isEqualToIdentity:(id)identity
{
  identityCopy = identity;
  if (identityCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = [(RBSProcessIdentity *)self hash];
    v6 = v5 == [(RBSProcessIdentity *)identityCopy hash]&& [(RBSXPCServiceProcessIdentity *)self _matchesIdentity:identityCopy];
  }

  return v6;
}

- (BOOL)_matchesIdentity:(id)identity
{
  identityCopy = identity;
  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_2;
  }

  serviceIdentity = self->_serviceIdentity;
  v9 = identityCopy[7];
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
  selfCopy = self;
  v6 = 2112;
  v7 = a2;
  _os_log_fault_impl(&dword_18E8AD000, log, OS_LOG_TYPE_FAULT, "error encoding host identity for job: %@ of %@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

@end