@interface RBSExtensionProcessIdentity
+ (id)extensionIdentityFromDataRepresentation:(id)representation;
- (BOOL)_matchesIdentity:(id)identity;
- (BOOL)isEqualToIdentity:(id)identity;
- (BOOL)isMultiInstanceExtension;
- (BOOL)supportsLaunchingDirectly;
- (RBSExtensionProcessIdentity)initWithDecodeFromJob:(id)job uuid:(id)uuid;
- (RBSExtensionProcessIdentity)initWithRBSXPCCoder:(id)coder;
- (id)encodeForJob;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSExtensionProcessIdentity

- (BOOL)isMultiInstanceExtension
{
  uuid = [(RBSExtensionProcessIdentity *)self uuid];
  v3 = uuid != 0;

  return v3;
}

- (BOOL)supportsLaunchingDirectly
{
  hostIdentity = [(RBSExtensionProcessIdentity *)self hostIdentity];
  v3 = +[RBSProcessHandle currentProcess];
  identity = [v3 identity];
  v5 = identity;
  if (hostIdentity == identity)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    if (hostIdentity && identity)
    {
      v6 = [hostIdentity isEqual:identity];
    }
  }

  return v6;
}

+ (id)extensionIdentityFromDataRepresentation:(id)representation
{
  representationCopy = representation;
  v4 = NSClassFromString(&cfstr_Exextensionide.isa);
  if (v4)
  {
    if (objc_opt_respondsToSelector())
    {
      v4 = [v4 identityFromDataRepresentation:representationCopy error:0];
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
  hostIdentifier = [(RBSExtensionProcessIdentity *)self hostIdentifier];
  v5 = [hostIdentifier pid];

  if (v5)
  {
    xpc_dictionary_set_int64(empty, "h", v5);
  }

  hostIdentity = [(RBSExtensionProcessIdentity *)self hostIdentity];
  uuid = [hostIdentity uuid];

  if (uuid)
  {
    *uuid = 0;
    v19 = 0;
    [uuid getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(empty, "hu", uuid);
  }

  hostIdentity2 = [(RBSExtensionProcessIdentity *)self hostIdentity];
  v9 = hostIdentity2;
  if (hostIdentity2)
  {
    encodeForJob = [hostIdentity2 encodeForJob];
    if (encodeForJob)
    {
      xpc_dictionary_set_value(empty, "H", encodeForJob);
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

  extensionIdentity = [(RBSExtensionProcessIdentity *)self extensionIdentity];
  dataRepresentation = [extensionIdentity dataRepresentation];

  if (dataRepresentation)
  {
    xpc_dictionary_set_data(empty, "i", [dataRepresentation bytes], objc_msgSend(dataRepresentation, "length"));
  }

  personaString = [(RBSExtensionProcessIdentity *)self personaString];
  uTF8String = [personaString UTF8String];

  if (uTF8String)
  {
    xpc_dictionary_set_string(empty, "o", uTF8String);
  }

  v16 = *MEMORY[0x1E69E9840];

  return empty;
}

- (RBSExtensionProcessIdentity)initWithDecodeFromJob:(id)job uuid:(id)uuid
{
  jobCopy = job;
  length = 0;
  data = xpc_dictionary_get_data(jobCopy, "i", &length);
  if (data)
  {
    v7 = objc_alloc(MEMORY[0x1E695DEF0]);
    data = [v7 initWithBytes:data length:length];
  }

  v8 = [objc_opt_class() extensionIdentityFromDataRepresentation:data];
  if (v8)
  {
    int64 = xpc_dictionary_get_int64(jobCopy, "h");
    uuid = xpc_dictionary_get_uuid(jobCopy, "hu");
    if (uuid)
    {
      uuid = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uuid];
    }

    v11 = xpc_dictionary_get_value(jobCopy, "H");
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

    _init = [(RBSProcessIdentity *)self _init];
    v16 = _init;
    if (_init)
    {
      objc_storeStrong(_init + 7, v8);
      objc_storeStrong(v16 + 8, v12);
      objc_storeStrong(v16 + 9, v14);
    }

    self = v16;

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
  extensionIdentity = [(RBSExtensionProcessIdentity *)self extensionIdentity];
  dataRepresentation = [extensionIdentity dataRepresentation];
  [coderCopy encodeObject:dataRepresentation forKey:@"_extensionIdentity"];

  [coderCopy encodeObject:self->_hostIdentity forKey:@"_hostIdentity"];
  [coderCopy encodeObject:self->_hostIdentifier forKey:@"_hostIdentifier"];
}

- (RBSExtensionProcessIdentity)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_extensionIdentity"];
  v6 = [objc_opt_class() extensionIdentityFromDataRepresentation:v5];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_hostIdentity"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_hostIdentifier"];

  v9 = [(RBSExtensionProcessIdentity *)self _initWithExtensionIdentity:v6 hostIdentity:v7 hostIdentifier:v8 auid:0];
  return v9;
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
    v6 = v5 == [(RBSProcessIdentity *)identityCopy hash]&& [(RBSExtensionProcessIdentity *)self _matchesIdentity:identityCopy];
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

  extensionIdentity = self->_extensionIdentity;
  v9 = identityCopy[7];
  if (extensionIdentity != v9)
  {
    v10 = !extensionIdentity || v9 == 0;
    if (v10 || ![(RBSExtensionIdentityProtocol *)extensionIdentity isEqual:?])
    {
      goto LABEL_2;
    }
  }

  hostIdentity = self->_hostIdentity;
  v12 = identityCopy[8];
  if (hostIdentity != v12)
  {
    v13 = !hostIdentity || v12 == 0;
    if (v13 || ![(RBSProcessIdentity *)hostIdentity isEqual:?])
    {
      goto LABEL_2;
    }
  }

  hostIdentifier = self->_hostIdentifier;
  v15 = identityCopy[9];
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