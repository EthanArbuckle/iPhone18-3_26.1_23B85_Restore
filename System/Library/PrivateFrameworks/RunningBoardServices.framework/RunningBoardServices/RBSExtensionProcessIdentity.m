@interface RBSExtensionProcessIdentity
+ (id)extensionIdentityFromDataRepresentation:(id)a3;
- (BOOL)_matchesIdentity:(id)a3;
- (BOOL)isEqualToIdentity:(id)a3;
- (BOOL)isMultiInstanceExtension;
- (BOOL)supportsLaunchingDirectly;
- (RBSExtensionProcessIdentity)initWithDecodeFromJob:(id)a3 uuid:(id)a4;
- (RBSExtensionProcessIdentity)initWithRBSXPCCoder:(id)a3;
- (id)encodeForJob;
- (void)encodeWithRBSXPCCoder:(id)a3;
@end

@implementation RBSExtensionProcessIdentity

- (BOOL)isMultiInstanceExtension
{
  v2 = [(RBSExtensionProcessIdentity *)self uuid];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)supportsLaunchingDirectly
{
  v2 = [(RBSExtensionProcessIdentity *)self hostIdentity];
  v3 = +[RBSProcessHandle currentProcess];
  v4 = [v3 identity];
  v5 = v4;
  if (v2 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (v2 && v4)
    {
      v6 = [v2 isEqual:v4];
    }
  }

  return v6;
}

+ (id)extensionIdentityFromDataRepresentation:(id)a3
{
  v3 = a3;
  v4 = NSClassFromString(&cfstr_Exextensionide.isa);
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [v4 identityFromDataRepresentation:v3 error:0];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (id)encodeForJob
{
  v20 = *MEMORY[0x1E69E9840];
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_int64(empty, "TYPE", 8);
  v4 = [(RBSExtensionProcessIdentity *)self hostIdentifier];
  v5 = [v4 pid];

  if (v5)
  {
    xpc_dictionary_set_int64(empty, "h", v5);
  }

  v6 = [(RBSExtensionProcessIdentity *)self hostIdentity];
  v7 = [v6 uuid];

  if (v7)
  {
    *uuid = 0;
    v19 = 0;
    [v7 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(empty, "hu", uuid);
  }

  v8 = [(RBSExtensionProcessIdentity *)self hostIdentity];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 encodeForJob];
    if (v10)
    {
      xpc_dictionary_set_value(empty, "H", v10);
    }

    else
    {
      v11 = rbs_process_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [(RBSXPCServiceProcessIdentity *)v9 encodeForJob];
      }
    }
  }

  v12 = [(RBSExtensionProcessIdentity *)self extensionIdentity];
  v13 = [v12 dataRepresentation];

  if (v13)
  {
    xpc_dictionary_set_data(empty, "i", [v13 bytes], objc_msgSend(v13, "length"));
  }

  v14 = [(RBSExtensionProcessIdentity *)self personaString];
  v15 = [v14 UTF8String];

  if (v15)
  {
    xpc_dictionary_set_string(empty, "o", v15);
  }

  v16 = *MEMORY[0x1E69E9840];

  return empty;
}

- (RBSExtensionProcessIdentity)initWithDecodeFromJob:(id)a3 uuid:(id)a4
{
  v5 = a3;
  length = 0;
  data = xpc_dictionary_get_data(v5, "i", &length);
  if (data)
  {
    v7 = objc_alloc(MEMORY[0x1E695DEF0]);
    data = [v7 initWithBytes:data length:length];
  }

  v8 = [objc_opt_class() extensionIdentityFromDataRepresentation:data];
  if (v8)
  {
    int64 = xpc_dictionary_get_int64(v5, "h");
    uuid = xpc_dictionary_get_uuid(v5, "hu");
    if (uuid)
    {
      uuid = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uuid];
    }

    v11 = xpc_dictionary_get_value(v5, "H");
    if (v11)
    {
      v12 = [RBSProcessIdentity decodeFromJob:v11 uuid:uuid];
    }

    else
    {
      v12 = 0;
    }

    if (int64)
    {
      v14 = [RBSProcessIdentifier identifierWithPid:int64];
    }

    else
    {
      v14 = 0;
    }

    v15 = [(RBSProcessIdentity *)self _init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(v15 + 7, v8);
      objc_storeStrong(v16 + 8, v12);
      objc_storeStrong(v16 + 9, v14);
    }

    self = v16;

    v13 = self;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)encodeWithRBSXPCCoder:(id)a3
{
  v6 = a3;
  v4 = [(RBSExtensionProcessIdentity *)self extensionIdentity];
  v5 = [v4 dataRepresentation];
  [v6 encodeObject:v5 forKey:@"_extensionIdentity"];

  [v6 encodeObject:self->_hostIdentity forKey:@"_hostIdentity"];
  [v6 encodeObject:self->_hostIdentifier forKey:@"_hostIdentifier"];
}

- (RBSExtensionProcessIdentity)initWithRBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_extensionIdentity"];
  v6 = [objc_opt_class() extensionIdentityFromDataRepresentation:v5];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_hostIdentity"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_hostIdentifier"];

  v9 = [(RBSExtensionProcessIdentity *)self _initWithExtensionIdentity:v6 hostIdentity:v7 hostIdentifier:v8 auid:0];
  return v9;
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
    v6 = v5 == [(RBSProcessIdentity *)v4 hash]&& [(RBSExtensionProcessIdentity *)self _matchesIdentity:v4];
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

  extensionIdentity = self->_extensionIdentity;
  v9 = v4[7];
  if (extensionIdentity != v9)
  {
    v10 = !extensionIdentity || v9 == 0;
    if (v10 || ![(RBSExtensionIdentityProtocol *)extensionIdentity isEqual:?])
    {
      goto LABEL_2;
    }
  }

  hostIdentity = self->_hostIdentity;
  v12 = v4[8];
  if (hostIdentity != v12)
  {
    v13 = !hostIdentity || v12 == 0;
    if (v13 || ![(RBSProcessIdentity *)hostIdentity isEqual:?])
    {
      goto LABEL_2;
    }
  }

  hostIdentifier = self->_hostIdentifier;
  v15 = v4[9];
  if (hostIdentifier == v15)
  {
    v6 = 1;
    goto LABEL_3;
  }

  if (hostIdentifier && v15 != 0)
  {
    v6 = [(RBSProcessIdentifier *)hostIdentifier isEqual:?];
  }

  else
  {
LABEL_2:
    v6 = 0;
  }

LABEL_3:

  return v6;
}

@end