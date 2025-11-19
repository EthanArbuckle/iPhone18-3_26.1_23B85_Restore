@interface RBSProcessIdentity
+ (id)decodeFromJob:(id)a3 uuid:(id)a4;
+ (id)extensionIdentityForBundleIdentifier:(id)a3 persona:(id)a4 instanceUUID:(id)a5 hostIdentifier:(id)a6 validationToken:(id)a7;
+ (id)extensionIdentityForPlugInKitIdentifier:(id)a3 hostIdentifier:(id)a4 UUID:(id)a5;
+ (id)externalExtensionIdentityForExtensionKitIdentifier:(id)a3 hostIdentifier:(id)a4 UUID:(id)a5;
+ (id)identityForAngelJobLabel:(id)a3;
+ (id)identityForApplicationJobLabel:(id)a3 bundleID:(id)a4 platform:(int)a5;
+ (id)identityForDaemonJobLabel:(id)a3;
+ (id)identityForDextWithServerName:(id)a3 tagString:(id)a4 containingAppBundleID:(id)a5;
+ (id)identityForEmbeddedApplicationIdentifier:(id)a3 jobLabel:(id)a4 auid:(unsigned int)a5 platform:(int)a6;
+ (id)identityForExtensionIdentity:(id)a3;
+ (id)identityForExtensionIdentity:(id)a3 hostIdentifier:(id)a4;
+ (id)identityForLSApplicationIdentity:(id)a3 LSApplicationRecord:(id)a4;
+ (id)identityForLSApplicationIdentity:(id)a3 LSApplicationRecord:(id)a4 uuid:(id)a5;
+ (id)identityForLaunchdJobLabel:(id)a3 isMultiInstance:(BOOL)a4 pid:(int)a5 auid:(unsigned int)a6;
+ (id)identityForUnbundledMacApplicationJobLabel:(id)a3;
+ (id)identityForUnknownServiceWithJobLabel:(id)a3;
+ (id)identityForWrappedInfoProvider:(id)a3 uuid:(id)a4;
+ (id)identityForXPCServiceIdentifier:(id)a3 hostInstance:(id)a4 UUID:(id)a5 persona:(id)a6 validationToken:(id)a7 variant:(int64_t)a8;
+ (id)identityOfCurrentProcess;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToIdentity:(id)a3;
- (BOOL)matchesProcess:(id)a3;
- (NSString)debugDescription;
- (RBSProcessIdentity)init;
- (RBSProcessIdentity)initWithDecodeFromJob:(id)a3 uuid:(id)a4;
- (RBSProcessIdentity)initWithRBSXPCCoder:(id)a3;
- (id)_init;
- (id)copyWithAuid:(unsigned int)a3;
- (id)encodeForJob;
- (void)encodeWithRBSXPCCoder:(id)a3;
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
  v3 = [(RBSConnection *)v2 identity];

  return v3;
}

+ (id)identityForApplicationJobLabel:(id)a3 bundleID:(id)a4 platform:(int)a5
{
  v5 = a4;
  v6 = [[RBSEmbeddedAppProcessIdentity alloc] _initEmbeddedAppWithBundleID:v5];

  return v6;
}

+ (id)identityForUnbundledMacApplicationJobLabel:(id)a3
{
  v3 = a3;
  v4 = [[RBSOSServiceProcessIdentity alloc] _initUnknownOSServiceWithJobLabel:v3];

  return v4;
}

+ (id)identityForEmbeddedApplicationIdentifier:(id)a3 jobLabel:(id)a4 auid:(unsigned int)a5 platform:(int)a6
{
  v6 = a3;
  v7 = [[RBSEmbeddedAppProcessIdentity alloc] _initEmbeddedAppWithBundleID:v6];

  return v7;
}

+ (id)identityForWrappedInfoProvider:(id)a3 uuid:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v4 = [a3 fetchWrappedInfoWithError:{&v13, a4}];
  v5 = v13;
  if (v4)
  {
    v6 = [v4 persistentJobLabel];

    if (v6)
    {
      v7 = [v4 persistentJobLabel];
      v8 = [RBSProcessIdentity identityForUnknownServiceWithJobLabel:v7];
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

+ (id)identityForLSApplicationIdentity:(id)a3 LSApplicationRecord:(id)a4
{
  v4 = [RBSIdentityAndRecordInfoProvider _providerWithIdentity:a3 record:a4];
  v5 = [RBSProcessIdentity identityForWrappedInfoProvider:v4];

  return v5;
}

+ (id)identityForLSApplicationIdentity:(id)a3 LSApplicationRecord:(id)a4 uuid:(id)a5
{
  v7 = a5;
  v8 = [RBSIdentityAndRecordInfoProvider _providerWithIdentity:a3 record:a4];
  v9 = [RBSProcessIdentity identityForWrappedInfoProvider:v8 uuid:v7];

  return v9;
}

+ (id)identityForUnknownServiceWithJobLabel:(id)a3
{
  v3 = a3;
  v4 = [[RBSOSServiceProcessIdentity alloc] _initUnknownOSServiceWithJobLabel:v3];

  return v4;
}

+ (id)identityForDaemonJobLabel:(id)a3
{
  v3 = a3;
  v4 = [[RBSOSServiceProcessIdentity alloc] _initDaemonWithJobLabel:v3 pid:0 auid:0];

  return v4;
}

+ (id)identityForAngelJobLabel:(id)a3
{
  v3 = a3;
  v4 = [[RBSOSServiceProcessIdentity alloc] _initAngelWithJobLabel:v3];

  return v4;
}

+ (id)identityForDextWithServerName:(id)a3 tagString:(id)a4 containingAppBundleID:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[RBSDextProcessIdentity alloc] _initDextWithServerName:v9 tagString:v8 containingAppBundleID:v7];

  return v10;
}

- (RBSProcessIdentity)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBSProcessIdentity.m" lineNumber:251 description:@"-init is not allowed on RBSProcessIdentity"];

  return 0;
}

- (id)copyWithAuid:(unsigned int)a3
{
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v3 = objc_opt_class();
  _os_log_send_and_compose_impl();

  result = _os_crash_msg();
  __break(1u);
  return result;
}

+ (id)identityForLaunchdJobLabel:(id)a3 isMultiInstance:(BOOL)a4 pid:(int)a5 auid:(unsigned int)a6
{
  v7 = a4;
  v8 = a3;
  v9 = v8;
  if (a5 || !v7)
  {
    if (v8)
    {
      v11 = [RBSOSServiceProcessIdentity alloc];
      if (v7)
      {
        v12 = a5;
      }

      else
      {
        v12 = 0;
      }

      v13 = [(RBSOSServiceProcessIdentity *)v11 _initDaemonWithJobLabel:v9 pid:v12 auid:0];
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

+ (id)identityForXPCServiceIdentifier:(id)a3 hostInstance:(id)a4 UUID:(id)a5 persona:(id)a6 validationToken:(id)a7 variant:(int64_t)a8
{
  v13 = a3;
  v14 = a7;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v13)
  {
    +[RBSProcessIdentity identityForXPCServiceIdentifier:hostInstance:UUID:persona:validationToken:variant:];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    +[RBSProcessIdentity identityForXPCServiceIdentifier:hostInstance:UUID:persona:validationToken:variant:];
  }

  v18 = 3;
  if (v17)
  {
    v18 = 1;
  }

  if (a8 <= 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  v20 = [RBSXPCServiceDefinition definitionWithIdentifier:v13 variant:a8 scope:v19];
  v21 = [RBSXPCServiceIdentity identityWithDefinition:v20 sessionID:0 host:v17 UUID:v16 persona:v15 validationToken:v14];

  v22 = [[RBSXPCServiceProcessIdentity alloc] _initWithXPCServiceID:v21 pid:0 auid:0];

  return v22;
}

+ (id)extensionIdentityForPlugInKitIdentifier:(id)a3 hostIdentifier:(id)a4 UUID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v17 = 0;
  v10 = [RBSProcessHandle handleForIdentifier:v8 error:&v17];
  v11 = v17;
  if (v10)
  {
    v12 = [v10 identity];
    v13 = [RBSProcessInstance instanceWithIdentifier:v8 identity:v12];

    v11 = v13;
LABEL_5:
    v14 = [RBSProcessIdentity identityForXPCServiceIdentifier:v7 hostInstance:v11 UUID:v9 variant:2];
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

+ (id)externalExtensionIdentityForExtensionKitIdentifier:(id)a3 hostIdentifier:(id)a4 UUID:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (!v8)
  {
    v11 = 0;
    goto LABEL_5;
  }

  v17 = 0;
  v10 = [RBSProcessHandle handleForIdentifier:v8 error:&v17];
  v11 = v17;
  if (v10)
  {
    v12 = [v10 identity];
    v13 = [RBSProcessInstance instanceWithIdentifier:v8 identity:v12];

    v11 = v13;
LABEL_5:
    v14 = [RBSProcessIdentity identityForXPCServiceIdentifier:v7 hostInstance:v11 UUID:v9 variant:3];
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

+ (id)extensionIdentityForBundleIdentifier:(id)a3 persona:(id)a4 instanceUUID:(id)a5 hostIdentifier:(id)a6 validationToken:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!v14)
  {
    v17 = 0;
    goto LABEL_5;
  }

  v23 = 0;
  v16 = [RBSProcessHandle handleForIdentifier:v14 error:&v23];
  v17 = v23;
  if (v16)
  {
    v18 = [v16 identity];
    v19 = [RBSProcessInstance instanceWithIdentifier:v14 identity:v18];

    v17 = v19;
LABEL_5:
    v20 = [RBSProcessIdentity identityForXPCServiceIdentifier:v11 hostInstance:v17 UUID:v13 persona:v12 validationToken:v15 variant:2];
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

- (RBSProcessIdentity)initWithDecodeFromJob:(id)a3 uuid:(id)a4
{
  v5 = a3;
  v6 = a4;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v7 = objc_opt_class();
  _os_log_send_and_compose_impl();

  result = _os_crash_msg();
  __break(1u);
  return result;
}

+ (id)decodeFromJob:(id)a3 uuid:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = xpc_dictionary_get_int64(v5, "TYPE") - 1;
  if (v7 <= 6 && ((0x7Bu >> v7) & 1) != 0 && (isa = off_1E7276250[v7]->isa, objc_opt_class(), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = [[v9 alloc] initWithDecodeFromJob:v5 uuid:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)matchesProcess:(id)a3
{
  v4 = [a3 identity];
  LOBYTE(self) = [(RBSProcessIdentity *)self _matchesIdentity:v4];

  return self;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && [(RBSProcessIdentity *)self isEqualToIdentity:v4];
  }

  return v6;
}

- (BOOL)isEqualToIdentity:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = self->_hash == v4->_hash && self->_pid == v4->_pid && [(RBSProcessIdentity *)self _matchesIdentity:v4];
  }

  return v6;
}

- (NSString)debugDescription
{
  v3 = [(RBSProcessIdentity *)self auid];
  v4 = v3;
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
    if (v3)
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

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v3 = a3;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v4 = objc_opt_class();
  _os_log_send_and_compose_impl();

  _os_crash_msg();
  __break(1u);
}

- (RBSProcessIdentity)initWithRBSXPCCoder:(id)a3
{
  v3 = a3;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v4 = objc_opt_class();
  _os_log_send_and_compose_impl();

  result = _os_crash_msg();
  __break(1u);
  return result;
}

+ (id)identityForExtensionIdentity:(id)a3 hostIdentifier:(id)a4
{
  v7 = a4;
  v8 = a3;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [RBSProcessIdentity(Extension) identityForExtensionIdentity:a2 hostIdentifier:a1];
  }

  v9 = [[RBSExtensionProcessIdentity alloc] _initWithExtensionIdentity:v8 hostIdentity:0 hostIdentifier:v7];

  return v9;
}

+ (id)identityForExtensionIdentity:(id)a3
{
  v5 = a3;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(RBSProcessIdentity(Extension) *)a2 identityForExtensionIdentity:a1];
  }

  v6 = [[RBSExtensionProcessIdentity alloc] _initWithExtensionIdentity:v5 hostIdentity:0 hostIdentifier:0];

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