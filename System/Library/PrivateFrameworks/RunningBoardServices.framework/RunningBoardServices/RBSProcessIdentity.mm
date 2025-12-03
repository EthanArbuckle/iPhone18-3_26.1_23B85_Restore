@interface RBSProcessIdentity
+ (id)decodeFromJob:(id)job uuid:(id)uuid;
+ (id)extensionIdentityForBundleIdentifier:(id)identifier persona:(id)persona instanceUUID:(id)d hostIdentifier:(id)hostIdentifier validationToken:(id)token;
+ (id)extensionIdentityForPlugInKitIdentifier:(id)identifier hostIdentifier:(id)hostIdentifier UUID:(id)d;
+ (id)externalExtensionIdentityForExtensionKitIdentifier:(id)identifier hostIdentifier:(id)hostIdentifier UUID:(id)d;
+ (id)identityForAngelJobLabel:(id)label;
+ (id)identityForApplicationJobLabel:(id)label bundleID:(id)d platform:(int)platform;
+ (id)identityForDaemonJobLabel:(id)label;
+ (id)identityForDextWithServerName:(id)name tagString:(id)string containingAppBundleID:(id)d;
+ (id)identityForEmbeddedApplicationIdentifier:(id)identifier jobLabel:(id)label auid:(unsigned int)auid platform:(int)platform;
+ (id)identityForExtensionIdentity:(id)identity;
+ (id)identityForExtensionIdentity:(id)identity hostIdentifier:(id)identifier;
+ (id)identityForLSApplicationIdentity:(id)identity LSApplicationRecord:(id)record;
+ (id)identityForLSApplicationIdentity:(id)identity LSApplicationRecord:(id)record uuid:(id)uuid;
+ (id)identityForLaunchdJobLabel:(id)label isMultiInstance:(BOOL)instance pid:(int)pid auid:(unsigned int)auid;
+ (id)identityForUnbundledMacApplicationJobLabel:(id)label;
+ (id)identityForUnknownServiceWithJobLabel:(id)label;
+ (id)identityForWrappedInfoProvider:(id)provider uuid:(id)uuid;
+ (id)identityForXPCServiceIdentifier:(id)identifier hostInstance:(id)instance UUID:(id)d persona:(id)persona validationToken:(id)token variant:(int64_t)variant;
+ (id)identityOfCurrentProcess;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToIdentity:(id)identity;
- (BOOL)matchesProcess:(id)process;
- (NSString)debugDescription;
- (RBSProcessIdentity)init;
- (RBSProcessIdentity)initWithDecodeFromJob:(id)job uuid:(id)uuid;
- (RBSProcessIdentity)initWithRBSXPCCoder:(id)coder;
- (id)_init;
- (id)copyWithAuid:(unsigned int)auid;
- (id)encodeForJob;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSProcessIdentity

- (id)_init
{
  v3.receiver = self;
  v3.super_class = RBSProcessIdentity;
  return [(RBSProcessIdentity *)&v3 init];
}

+ (id)identityOfCurrentProcess
{
  v2 = +[RBSConnection sharedInstance];
  identity = [(RBSConnection *)v2 identity];

  return identity;
}

+ (id)identityForApplicationJobLabel:(id)label bundleID:(id)d platform:(int)platform
{
  dCopy = d;
  v6 = [[RBSEmbeddedAppProcessIdentity alloc] _initEmbeddedAppWithBundleID:dCopy];

  return v6;
}

+ (id)identityForUnbundledMacApplicationJobLabel:(id)label
{
  labelCopy = label;
  v4 = [[RBSOSServiceProcessIdentity alloc] _initUnknownOSServiceWithJobLabel:labelCopy];

  return v4;
}

+ (id)identityForEmbeddedApplicationIdentifier:(id)identifier jobLabel:(id)label auid:(unsigned int)auid platform:(int)platform
{
  identifierCopy = identifier;
  v7 = [[RBSEmbeddedAppProcessIdentity alloc] _initEmbeddedAppWithBundleID:identifierCopy];

  return v7;
}

+ (id)identityForWrappedInfoProvider:(id)provider uuid:(id)uuid
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v4 = [provider fetchWrappedInfoWithError:{&v13, uuid}];
  v5 = v13;
  if (v4)
  {
    persistentJobLabel = [v4 persistentJobLabel];

    if (persistentJobLabel)
    {
      persistentJobLabel2 = [v4 persistentJobLabel];
      v8 = [RBSProcessIdentity identityForUnknownServiceWithJobLabel:persistentJobLabel2];
    }

    else
    {
      v8 = [[RBSEmbeddedAppProcessIdentity alloc] _initEmbeddedAppWithAppInfo:v4];
    }
  }

  else
  {
    v9 = rbs_general_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 description];
      *buf = 138543362;
      v15 = v10;
      _os_log_impl(&dword_18E8AD000, v9, OS_LOG_TYPE_DEFAULT, "_initEmbeddedAppWithAppInfoProvider failed due to %{public}@", buf, 0xCu);
    }

    v8 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)identityForLSApplicationIdentity:(id)identity LSApplicationRecord:(id)record
{
  v4 = [RBSIdentityAndRecordInfoProvider _providerWithIdentity:identity record:record];
  v5 = [RBSProcessIdentity identityForWrappedInfoProvider:v4];

  return v5;
}

+ (id)identityForLSApplicationIdentity:(id)identity LSApplicationRecord:(id)record uuid:(id)uuid
{
  uuidCopy = uuid;
  v8 = [RBSIdentityAndRecordInfoProvider _providerWithIdentity:identity record:record];
  v9 = [RBSProcessIdentity identityForWrappedInfoProvider:v8 uuid:uuidCopy];

  return v9;
}

+ (id)identityForUnknownServiceWithJobLabel:(id)label
{
  labelCopy = label;
  v4 = [[RBSOSServiceProcessIdentity alloc] _initUnknownOSServiceWithJobLabel:labelCopy];

  return v4;
}

+ (id)identityForDaemonJobLabel:(id)label
{
  labelCopy = label;
  v4 = [[RBSOSServiceProcessIdentity alloc] _initDaemonWithJobLabel:labelCopy pid:0 auid:0];

  return v4;
}

+ (id)identityForAngelJobLabel:(id)label
{
  labelCopy = label;
  v4 = [[RBSOSServiceProcessIdentity alloc] _initAngelWithJobLabel:labelCopy];

  return v4;
}

+ (id)identityForDextWithServerName:(id)name tagString:(id)string containingAppBundleID:(id)d
{
  dCopy = d;
  stringCopy = string;
  nameCopy = name;
  v10 = [[RBSDextProcessIdentity alloc] _initDextWithServerName:nameCopy tagString:stringCopy containingAppBundleID:dCopy];

  return v10;
}

- (RBSProcessIdentity)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBSProcessIdentity.m" lineNumber:251 description:@"-init is not allowed on RBSProcessIdentity"];

  return 0;
}

- (id)copyWithAuid:(unsigned int)auid
{
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v3 = objc_opt_class();
  _os_log_send_and_compose_impl();

  result = _os_crash_msg();
  __break(1u);
  return result;
}

+ (id)identityForLaunchdJobLabel:(id)label isMultiInstance:(BOOL)instance pid:(int)pid auid:(unsigned int)auid
{
  instanceCopy = instance;
  labelCopy = label;
  v9 = labelCopy;
  if (pid || !instanceCopy)
  {
    if (labelCopy)
    {
      v11 = [RBSOSServiceProcessIdentity alloc];
      if (instanceCopy)
      {
        pidCopy = pid;
      }

      else
      {
        pidCopy = 0;
      }

      v13 = [(RBSOSServiceProcessIdentity *)v11 _initDaemonWithJobLabel:v9 pid:pidCopy auid:0];
      goto LABEL_13;
    }

    v10 = rbs_process_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [RBSProcessIdentity identityForLaunchdJobLabel:v10 isMultiInstance:? pid:? auid:?];
    }
  }

  else
  {
    v10 = rbs_process_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[RBSProcessIdentity identityForLaunchdJobLabel:isMultiInstance:pid:auid:];
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

+ (id)identityForXPCServiceIdentifier:(id)identifier hostInstance:(id)instance UUID:(id)d persona:(id)persona validationToken:(id)token variant:(int64_t)variant
{
  identifierCopy = identifier;
  tokenCopy = token;
  personaCopy = persona;
  dCopy = d;
  instanceCopy = instance;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
  {
    +[RBSProcessIdentity identityForXPCServiceIdentifier:hostInstance:UUID:persona:validationToken:variant:];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    +[RBSProcessIdentity identityForXPCServiceIdentifier:hostInstance:UUID:persona:validationToken:variant:];
  }

  v18 = 3;
  if (instanceCopy)
  {
    v18 = 1;
  }

  if (variant <= 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  v20 = [RBSXPCServiceDefinition definitionWithIdentifier:identifierCopy variant:variant scope:v19];
  v21 = [RBSXPCServiceIdentity identityWithDefinition:v20 sessionID:0 host:instanceCopy UUID:dCopy persona:personaCopy validationToken:tokenCopy];

  v22 = [[RBSXPCServiceProcessIdentity alloc] _initWithXPCServiceID:v21 pid:0 auid:0];

  return v22;
}

+ (id)extensionIdentityForPlugInKitIdentifier:(id)identifier hostIdentifier:(id)hostIdentifier UUID:(id)d
{
  identifierCopy = identifier;
  hostIdentifierCopy = hostIdentifier;
  dCopy = d;
  if (!hostIdentifierCopy)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v17 = 0;
  v10 = [RBSProcessHandle handleForIdentifier:hostIdentifierCopy error:&v17];
  v11 = v17;
  if (v10)
  {
    identity = [v10 identity];
    v13 = [RBSProcessInstance instanceWithIdentifier:hostIdentifierCopy identity:identity];

    v11 = v13;
LABEL_5:
    v14 = [RBSProcessIdentity identityForXPCServiceIdentifier:identifierCopy hostInstance:v11 UUID:dCopy variant:2];
    goto LABEL_9;
  }

  v15 = rbs_process_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    +[RBSProcessIdentity extensionIdentityForPlugInKitIdentifier:hostIdentifier:UUID:];
  }

  v14 = 0;
LABEL_9:

  return v14;
}

+ (id)externalExtensionIdentityForExtensionKitIdentifier:(id)identifier hostIdentifier:(id)hostIdentifier UUID:(id)d
{
  identifierCopy = identifier;
  hostIdentifierCopy = hostIdentifier;
  dCopy = d;
  if (!hostIdentifierCopy)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v17 = 0;
  v10 = [RBSProcessHandle handleForIdentifier:hostIdentifierCopy error:&v17];
  v11 = v17;
  if (v10)
  {
    identity = [v10 identity];
    v13 = [RBSProcessInstance instanceWithIdentifier:hostIdentifierCopy identity:identity];

    v11 = v13;
LABEL_5:
    v14 = [RBSProcessIdentity identityForXPCServiceIdentifier:identifierCopy hostInstance:v11 UUID:dCopy variant:3];
    goto LABEL_9;
  }

  v15 = rbs_process_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    +[RBSProcessIdentity extensionIdentityForPlugInKitIdentifier:hostIdentifier:UUID:];
  }

  v14 = 0;
LABEL_9:

  return v14;
}

+ (id)extensionIdentityForBundleIdentifier:(id)identifier persona:(id)persona instanceUUID:(id)d hostIdentifier:(id)hostIdentifier validationToken:(id)token
{
  identifierCopy = identifier;
  personaCopy = persona;
  dCopy = d;
  hostIdentifierCopy = hostIdentifier;
  tokenCopy = token;
  if (!hostIdentifierCopy)
  {
    v17 = 0;
    goto LABEL_5;
  }

  v23 = 0;
  v16 = [RBSProcessHandle handleForIdentifier:hostIdentifierCopy error:&v23];
  v17 = v23;
  if (v16)
  {
    identity = [v16 identity];
    v19 = [RBSProcessInstance instanceWithIdentifier:hostIdentifierCopy identity:identity];

    v17 = v19;
LABEL_5:
    v20 = [RBSProcessIdentity identityForXPCServiceIdentifier:identifierCopy hostInstance:v17 UUID:dCopy persona:personaCopy validationToken:tokenCopy variant:2];
    goto LABEL_9;
  }

  v21 = rbs_process_log();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    +[RBSProcessIdentity extensionIdentityForPlugInKitIdentifier:hostIdentifier:UUID:];
  }

  v20 = 0;
LABEL_9:

  return v20;
}

- (id)encodeForJob
{
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v2 = objc_opt_class();
  _os_log_send_and_compose_impl();

  result = _os_crash_msg();
  __break(1u);
  return result;
}

- (RBSProcessIdentity)initWithDecodeFromJob:(id)job uuid:(id)uuid
{
  jobCopy = job;
  uuidCopy = uuid;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v7 = objc_opt_class();
  _os_log_send_and_compose_impl();

  result = _os_crash_msg();
  __break(1u);
  return result;
}

+ (id)decodeFromJob:(id)job uuid:(id)uuid
{
  jobCopy = job;
  uuidCopy = uuid;
  v7 = xpc_dictionary_get_int64(jobCopy, "TYPE") - 1;
  if (v7 <= 6 && ((0x7Bu >> v7) & 1) != 0 && (isa = off_1E7276250[v7]->isa, objc_opt_class(), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = [[v9 alloc] initWithDecodeFromJob:jobCopy uuid:uuidCopy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)matchesProcess:(id)process
{
  identity = [process identity];
  LOBYTE(self) = [(RBSProcessIdentity *)self _matchesIdentity:identity];

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && [(RBSProcessIdentity *)self isEqualToIdentity:equalCopy];
  }

  return v6;
}

- (BOOL)isEqualToIdentity:(id)identity
{
  identityCopy = identity;
  v5 = identityCopy;
  if (identityCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = self->_hash == identityCopy->_hash && self->_pid == identityCopy->_pid && [(RBSProcessIdentity *)self _matchesIdentity:identityCopy];
  }

  return v6;
}

- (NSString)debugDescription
{
  auid = [(RBSProcessIdentity *)self auid];
  v4 = auid;
  v5 = MEMORY[0x1E696AEC0];
  description = self->_description;
  pid = self->_pid;
  if (pid <= 0)
  {
    v8 = &stru_1F01CD8F0;
  }

  else
  {
    v8 = @" pid=";
  }

  if (pid < 1)
  {
    v9 = &stru_1F01CD8F0;
    if (auid)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:pid];
    if (v4)
    {
LABEL_6:
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
      v11 = [v5 stringWithFormat:@"<%@%@%@%@%@>", description, v8, v9, @" AUID=", v10];

      goto LABEL_9;
    }
  }

  v11 = [v5 stringWithFormat:@"<%@%@%@%@%@>", description, v8, v9, &stru_1F01CD8F0, &stru_1F01CD8F0];
LABEL_9:
  if (pid >= 1)
  {
  }

  return v11;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v4 = objc_opt_class();
  _os_log_send_and_compose_impl();

  _os_crash_msg();
  __break(1u);
}

- (RBSProcessIdentity)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v4 = objc_opt_class();
  _os_log_send_and_compose_impl();

  result = _os_crash_msg();
  __break(1u);
  return result;
}

+ (id)identityForExtensionIdentity:(id)identity hostIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identityCopy = identity;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [RBSProcessIdentity(Extension) identityForExtensionIdentity:a2 hostIdentifier:self];
  }

  v9 = [[RBSExtensionProcessIdentity alloc] _initWithExtensionIdentity:identityCopy hostIdentity:0 hostIdentifier:identifierCopy];

  return v9;
}

+ (id)identityForExtensionIdentity:(id)identity
{
  identityCopy = identity;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(RBSProcessIdentity(Extension) *)a2 identityForExtensionIdentity:self];
  }

  v6 = [[RBSExtensionProcessIdentity alloc] _initWithExtensionIdentity:identityCopy hostIdentity:0 hostIdentifier:0];

  return v6;
}

+ (void)identityForLaunchdJobLabel:isMultiInstance:pid:auid:.cold.2()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v3 = 1024;
  v4 = 0;
  _os_log_error_impl(&dword_18E8AD000, v0, OS_LOG_TYPE_ERROR, "invalid pid (0) for multi-instance job: %@, auid: %d", v2, 0x12u);
  v1 = *MEMORY[0x1E69E9840];
}

+ (void)identityForXPCServiceIdentifier:hostInstance:UUID:persona:validationToken:variant:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"object != nil" object:? file:? lineNumber:? description:?];
}

+ (void)identityForXPCServiceIdentifier:hostInstance:UUID:persona:validationToken:variant:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[object isKindOfClass:NSStringClass]" object:? file:? lineNumber:? description:?];
}

+ (void)extensionIdentityForPlugInKitIdentifier:hostIdentifier:UUID:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4(&dword_18E8AD000, v0, v1, "Could not get process handle for host process: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)identityForXPCServiceExecutablePath:pid:auid:host:UUID:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"object != nil" object:? file:? lineNumber:? description:?];
}

+ (void)identityForXPCServiceExecutablePath:pid:auid:host:UUID:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[object isKindOfClass:NSStringClass]" object:? file:? lineNumber:? description:?];
}

+ (void)identityForXPCServiceExecutablePath:(NSObject *)a3 pid:auid:host:UUID:.cold.3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  xpc_strerror();
  OUTLINED_FUNCTION_2();
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_18E8AD000, a3, OS_LOG_TYPE_ERROR, "Error (%{public}s) creating xpc service bundle for %{public}@", v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)identityForXPCServiceExecutablePath:pid:auid:host:UUID:.cold.4()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4(&dword_18E8AD000, v0, v1, "Could not rationalize xpc service at: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)identityForXPCServiceExecutablePath:(void *)a1 pid:(NSObject *)a2 auid:host:UUID:.cold.5(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 lastPathComponent];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_18E8AD000, a2, OS_LOG_TYPE_ERROR, "Couldn't generate XPCService definition for %{public}@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)identityForXPCServiceExecutablePath:pid:auid:host:UUID:.cold.6()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4(&dword_18E8AD000, v0, v1, "The info.plist in %{public}@ does not contain a NSExtension, XPCService, or EXAppExtensionAttributes key", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)identityForXPCServiceExecutablePath:pid:auid:host:UUID:.cold.7()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4(&dword_18E8AD000, v0, v1, "Could not load info.plist into NSDictionary for path %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)identityForXPCServiceExecutablePath:pid:auid:host:UUID:.cold.8()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_4(&dword_18E8AD000, v0, v1, "No bundle ID found for: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end