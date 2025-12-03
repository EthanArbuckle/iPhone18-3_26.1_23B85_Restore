@interface RBSEmbeddedAppProcessIdentity
- (BOOL)_matchesIdentity:(id)identity;
- (BOOL)isEqual:(id)equal;
- (RBSEmbeddedAppProcessIdentity)initWithDecodeFromJob:(id)job uuid:(id)uuid;
- (RBSEmbeddedAppProcessIdentity)initWithRBSXPCCoder:(id)coder;
- (id)_initEmbeddedApp:(id)app personaString:(id)string;
- (id)_initEmbeddedAppWithAppInfo:(id)info;
- (id)_initEmbeddedAppWithBundleID:(id)d;
- (id)copyWithPersonaString:(id)string;
- (id)debugDescription;
- (id)encodeForJob;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSEmbeddedAppProcessIdentity

- (id)encodeForJob
{
  empty = xpc_dictionary_create_empty();
  xpc_dictionary_set_int64(empty, "TYPE", 2);
  embeddedApplicationIdentifier = self->_embeddedApplicationIdentifier;
  if (embeddedApplicationIdentifier)
  {
    xpc_dictionary_set_string(empty, "EAI", [(NSString *)embeddedApplicationIdentifier UTF8String]);
  }

  personaString = self->_personaString;
  if (personaString)
  {
    xpc_dictionary_set_string(empty, "PERS", [(NSString *)personaString UTF8String]);
  }

  return empty;
}

- (id)_initEmbeddedAppWithBundleID:(id)d
{
  dCopy = d;
  if (_os_feature_enabled_impl())
  {
    v5 = rbs_general_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [RBSEmbeddedAppProcessIdentity _initEmbeddedAppWithBundleID:];
    }
  }

  v6 = [(RBSEmbeddedAppProcessIdentity *)self _initEmbeddedApp:dCopy personaString:0];

  return v6;
}

- (id)_initEmbeddedApp:(id)app personaString:(id)string
{
  appCopy = app;
  stringCopy = string;
  v19.receiver = self;
  v19.super_class = RBSEmbeddedAppProcessIdentity;
  _init = [(RBSProcessIdentity *)&v19 _init];
  v9 = _init;
  if (_init)
  {
    _init[2] = 0;
    v10 = [stringCopy copy];
    v11 = *(v9 + 8);
    *(v9 + 8) = v10;

    v12 = [appCopy copy];
    v13 = *(v9 + 7);
    *(v9 + 7) = v12;

    v14 = *(v9 + 7);
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"app<%@(%@)>", v14, *(v9 + 8)];
    v16 = *(v9 + 2);
    *(v9 + 2) = v15;

    *(v9 + 3) = [*(v9 + 7) hash];
    v17 = v9;
  }

  return v9;
}

- (id)_initEmbeddedAppWithAppInfo:(id)info
{
  v14 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  bundleID = [infoCopy bundleID];
  if (bundleID)
  {
    personaString = [infoCopy personaString];
    if (!personaString && _os_feature_enabled_impl())
    {
      v7 = rbs_general_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [RBSEmbeddedAppProcessIdentity _initEmbeddedAppWithAppInfo:];
      }
    }

    self = [(RBSEmbeddedAppProcessIdentity *)self _initEmbeddedApp:bundleID personaString:personaString];
    selfCopy = self;
  }

  else
  {
    personaString = rbs_general_log();
    if (os_log_type_enabled(personaString, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [infoCopy description];
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_18E8AD000, personaString, OS_LOG_TYPE_DEFAULT, "_initEmbeddedAppWithAppInfoProvider failed - unable to find bundleID for %{public}@", &v12, 0xCu);
    }

    selfCopy = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)copyWithPersonaString:(id)string
{
  stringCopy = string;
  if (!stringCopy && _os_feature_enabled_impl())
  {
    v5 = rbs_general_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [RBSEmbeddedAppProcessIdentity copyWithPersonaString:];
    }
  }

  v6 = [[RBSEmbeddedAppProcessIdentity alloc] _initEmbeddedApp:self->_embeddedApplicationIdentifier personaString:stringCopy];
  v6[2] = self->super._pid;

  return v6;
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

- (BOOL)_matchesIdentity:(id)identity
{
  identityCopy = identity;
  embeddedApplicationIdentifier = self->_embeddedApplicationIdentifier;
  embeddedApplicationIdentifier = [identityCopy embeddedApplicationIdentifier];
  v7 = embeddedApplicationIdentifier;
  if (embeddedApplicationIdentifier == embeddedApplicationIdentifier)
  {

    goto LABEL_10;
  }

  if (embeddedApplicationIdentifier)
  {
    v8 = embeddedApplicationIdentifier == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    LOBYTE(v9) = 0;
LABEL_48:

    goto LABEL_49;
  }

  v9 = [(NSString *)embeddedApplicationIdentifier isEqual:embeddedApplicationIdentifier];

  if (v9)
  {
LABEL_10:
    v10 = self->_personaString;
    personaString = [identityCopy personaString];
    v7 = v10;
    v12 = personaString;
    if (v7 | v12)
    {
      v13 = _personalPersonaUniqueStringOverride;
      if (!_personalPersonaUniqueStringOverride)
      {
        if (_personalPersonaString_onceToken != -1)
        {
          [RBSEmbeddedAppProcessIdentity _matchesIdentity:];
        }

        v13 = _personalPersonaString_personalPersonaString;
      }

      v14 = v13;
      v15 = v14;
      if (v7)
      {
        v16 = v14 == v7;
      }

      else
      {
        v16 = 1;
      }

      if (v16)
      {
        v17 = 1;
      }

      else
      {
        if (!v14)
        {
          if (!v12)
          {
            goto LABEL_42;
          }

          v18 = 0;
          LOBYTE(v17) = 0;
          goto LABEL_34;
        }

        v17 = [v7 isEqualToString:v14];
      }

      v18 = 1;
      if (v12 && v15 != v12)
      {
        if (v15)
        {
          v18 = [v12 isEqualToString:v15];
          goto LABEL_28;
        }

        v18 = 0;
LABEL_34:
        if ((v17 & 1) == 0 && (v18 & 1) == 0)
        {
          if (v7 == v12)
          {
LABEL_30:

            goto LABEL_46;
          }

          if (v7 && v12 != 0)
          {
            v20 = [v7 isEqualToString:v12];

            if (v20)
            {
              goto LABEL_46;
            }

            goto LABEL_43;
          }
        }

LABEL_42:

LABEL_43:
        if (_os_feature_enabled_impl())
        {
          LOBYTE(v9) = 0;
LABEL_47:

          goto LABEL_48;
        }

LABEL_46:
        LOBYTE(v9) = 1;
        goto LABEL_47;
      }
    }

    else
    {
      v15 = 0;
      v17 = 1;
      v18 = 1;
    }

LABEL_28:
    if (v17 && (v18 & 1) != 0)
    {
      goto LABEL_30;
    }

    goto LABEL_34;
  }

LABEL_49:

  return v9;
}

- (id)debugDescription
{
  v3 = self->_embeddedApplicationIdentifier;
  auid = [(RBSProcessIdentity *)self auid];
  v5 = self->_personaString;
  v6 = MEMORY[0x1E696AEC0];
  if (auid)
  {
    v7 = @" AUID=";
  }

  else
  {
    v7 = &stru_1F01CD8F0;
  }

  if (auid)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:auid];
  }

  else
  {
    v8 = &stru_1F01CD8F0;
  }

  v9 = @" PERS=";
  if (v5)
  {
    v10 = v5;
  }

  else
  {
    v9 = &stru_1F01CD8F0;
    v10 = &stru_1F01CD8F0;
  }

  v11 = [v6 stringWithFormat:@"<type=%@ identifier=%@%@%@%@%@%@%@>", @"embeddedApplication", v3, &stru_1F01CD8F0, &stru_1F01CD8F0, v7, v8, v9, v10];
  if (auid)
  {
  }

  return v11;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  embeddedApplicationIdentifier = self->_embeddedApplicationIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:embeddedApplicationIdentifier forKey:@"_embeddedApplicationIdentifier"];
  [coderCopy encodeObject:self->_personaString forKey:@"_personaString"];
}

- (RBSEmbeddedAppProcessIdentity)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_embeddedApplicationIdentifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_personaString"];

  if (!v6 && _os_feature_enabled_impl())
  {
    v7 = rbs_general_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [RBSEmbeddedAppProcessIdentity initWithRBSXPCCoder:];
    }
  }

  v8 = [(RBSEmbeddedAppProcessIdentity *)self _initEmbeddedApp:v5 personaString:v6];

  return v8;
}

- (RBSEmbeddedAppProcessIdentity)initWithDecodeFromJob:(id)job uuid:(id)uuid
{
  jobCopy = job;
  uuidCopy = uuid;
  if (uuidCopy)
  {
    v8 = rbs_general_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [RBSEmbeddedAppProcessIdentity initWithDecodeFromJob:uuidCopy uuid:v8];
    }
  }

  string = xpc_dictionary_get_string(jobCopy, "EAI");
  if (string)
  {
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string];
  }

  else
  {
    v10 = 0;
  }

  v11 = xpc_dictionary_get_string(jobCopy, "PERS");
  if (v11)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v11];
    if (v10)
    {
LABEL_10:
      self = [(RBSEmbeddedAppProcessIdentity *)self _initEmbeddedApp:v10 personaString:v12];
      selfCopy = self;
      goto LABEL_15;
    }
  }

  else
  {
    v12 = 0;
    if (v10)
    {
      goto LABEL_10;
    }
  }

  v14 = rbs_general_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [RBSEmbeddedAppProcessIdentity initWithDecodeFromJob:uuid:];
  }

  selfCopy = 0;
LABEL_15:

  return selfCopy;
}

- (void)initWithDecodeFromJob:(uint64_t)a1 uuid:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_18E8AD000, a2, OS_LOG_TYPE_FAULT, "There is no reason an app identity should have a UUID: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end