@interface PFServerPosterIdentity
+ (id)configurationIdentityWithProvider:(id)provider identifier:(id)identifier role:(id)role posterUUID:(id)d version:(unint64_t)version supplement:(unint64_t)supplement;
+ (id)debugDescription;
+ (id)descriptorIdentityWithProvider:(id)provider identifier:(id)identifier role:(id)role posterUUID:(id)d version:(unint64_t)version;
+ (id)incomingConfigurationIdentityWithProvider:(id)provider role:(id)role posterUUID:(id)d version:(unint64_t)version supplement:(unint64_t)supplement;
+ (id)staticDescriptorIdentityWithProvider:(id)provider identifier:(id)identifier role:(id)role posterUUID:(id)d version:(unint64_t)version;
+ (id)suggestionDescriptorIdentityWithProvider:(id)provider identifier:(id)identifier role:(id)role posterUUID:(id)d version:(unint64_t)version;
- (BOOL)isEqual:(id)equal;
- (BOOL)isNewerVersionOfIdentity:(id)identity;
- (BOOL)setupPersistenceForPathContainerURL:(id)l error:(id *)error;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)stablePersistenceIdentifier;
- (PFServerPosterIdentity)init;
- (PFServerPosterIdentity)initWithBSXPCCoder:(id)coder;
- (PFServerPosterIdentity)initWithCoder:(id)coder;
- (id)_initWithProvider:(uint64_t)provider type:(void *)type role:(void *)role posterUUID:(uint64_t)d version:(uint64_t)version supplement:(void *)supplement descriptorIdentifier:(char)identifier isIncomingConfiguration:;
- (int64_t)compare:(id)compare;
- (uint64_t)_isRootEqual:(uint64_t)equal;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PFServerPosterIdentity

- (PFServerPosterIdentity)init
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSelector(a2);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [v4 stringWithFormat:@"%@ is not allowed on %@", v5, v7];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v9 = NSStringFromSelector(a2);
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    *buf = 138544642;
    v14 = v9;
    v15 = 2114;
    v16 = v11;
    v17 = 2048;
    selfCopy = self;
    v19 = 2114;
    v20 = @"PFServerPosterIdentity.m";
    v21 = 1024;
    v22 = 107;
    v23 = 2114;
    v24 = v8;
    _os_log_error_impl(&dword_1C269D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
  }

  [v8 UTF8String];
  result = _bs_set_crash_log_message();
  __break(0);
  return result;
}

- (id)_initWithProvider:(uint64_t)provider type:(void *)type role:(void *)role posterUUID:(uint64_t)d version:(uint64_t)version supplement:(void *)supplement descriptorIdentifier:(char)identifier isIncomingConfiguration:
{
  v16 = a2;
  typeCopy = type;
  roleCopy = role;
  supplementCopy = supplement;
  if (self)
  {
    if (!v16)
    {
      [PFServerPosterIdentity _initWithProvider:? type:? role:? posterUUID:? version:? supplement:? descriptorIdentifier:? isIncomingConfiguration:?];
    }

    if (!typeCopy)
    {
      [PFServerPosterIdentity _initWithProvider:? type:? role:? posterUUID:? version:? supplement:? descriptorIdentifier:? isIncomingConfiguration:?];
    }

    if ((provider - 1) >= 4)
    {
      [PFServerPosterIdentity _initWithProvider:? type:? role:? posterUUID:? version:? supplement:? descriptorIdentifier:? isIncomingConfiguration:?];
    }

    v34.receiver = self;
    v34.super_class = PFServerPosterIdentity;
    self = objc_msgSendSuper2(&v34, sel_init);
    if (self)
    {
      v20 = [v16 copy];
      v21 = *(self + 2);
      *(self + 2) = v20;

      *(self + 3) = provider;
      v22 = [typeCopy copy];
      v23 = *(self + 8);
      *(self + 8) = v22;

      v24 = [roleCopy copy];
      v25 = *(self + 4);
      *(self + 4) = v24;

      *(self + 5) = d;
      *(self + 6) = version;
      v26 = [supplementCopy copy];
      v27 = *(self + 7);
      *(self + 7) = v26;

      *(self + 8) = identifier;
      if ((__disableUniquing & 1) == 0)
      {
        os_unfair_lock_lock(&__allIdentitiesLock);
        v28 = [__allIdentities member:self];
        if (v28)
        {
          os_unfair_lock_unlock(&__allIdentitiesLock);
          v29 = v28;

          self = v29;
        }

        else
        {
          v30 = __allIdentities;
          if (!__allIdentities)
          {
            v31 = [MEMORY[0x1E696AC70] hashTableWithOptions:5];
            v32 = __allIdentities;
            __allIdentities = v31;

            v30 = __allIdentities;
          }

          [v30 addObject:self];
          os_unfair_lock_unlock(&__allIdentitiesLock);
        }
      }
    }
  }

  return self;
}

- (void)dealloc
{
  os_unfair_lock_lock(&__allIdentitiesLock);
  v3 = [__allIdentities member:self];
  v4 = v3;
  if (v3 == self || v3 == 0)
  {
    [__allIdentities removeObject:self];
  }

  os_unfair_lock_unlock(&__allIdentitiesLock);

  v6.receiver = self;
  v6.super_class = PFServerPosterIdentity;
  [(PFServerPosterIdentity *)&v6 dealloc];
}

+ (id)staticDescriptorIdentityWithProvider:(id)provider identifier:(id)identifier role:(id)role posterUUID:(id)d version:(unint64_t)version
{
  providerCopy = provider;
  identifierCopy = identifier;
  roleCopy = role;
  dCopy = d;
  v16 = providerCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v16)
  {
    [PFServerPosterIdentity staticDescriptorIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PFServerPosterIdentity staticDescriptorIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:?];
  }

  v17 = identifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v17)
  {
    [PFServerPosterIdentity staticDescriptorIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PFServerPosterIdentity staticDescriptorIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:?];
  }

  v18 = dCopy;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v18)
  {
    [PFServerPosterIdentity staticDescriptorIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PFServerPosterIdentity staticDescriptorIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:?];
  }

  v19 = [[PFServerPosterIdentity alloc] _initWithProvider:v16 type:2 role:roleCopy posterUUID:v18 version:version supplement:0 descriptorIdentifier:v17];

  return v19;
}

+ (id)descriptorIdentityWithProvider:(id)provider identifier:(id)identifier role:(id)role posterUUID:(id)d version:(unint64_t)version
{
  providerCopy = provider;
  identifierCopy = identifier;
  roleCopy = role;
  dCopy = d;
  v16 = providerCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v16)
  {
    [PFServerPosterIdentity descriptorIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PFServerPosterIdentity descriptorIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:?];
  }

  v17 = identifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v17)
  {
    [PFServerPosterIdentity descriptorIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PFServerPosterIdentity descriptorIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:?];
  }

  v18 = dCopy;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v18)
  {
    [PFServerPosterIdentity descriptorIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PFServerPosterIdentity descriptorIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:?];
  }

  v19 = [[PFServerPosterIdentity alloc] _initWithProvider:v16 type:1 role:roleCopy posterUUID:v18 version:version supplement:0 descriptorIdentifier:v17];

  return v19;
}

+ (id)configurationIdentityWithProvider:(id)provider identifier:(id)identifier role:(id)role posterUUID:(id)d version:(unint64_t)version supplement:(unint64_t)supplement
{
  v35 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  identifierCopy = identifier;
  roleCopy = role;
  dCopy = d;
  v18 = providerCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v18)
  {
    [PFServerPosterIdentity configurationIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:? supplement:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PFServerPosterIdentity configurationIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:? supplement:?];
  }

  v19 = identifierCopy;
  if (v19)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [PFServerPosterIdentity configurationIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:? supplement:?];
    }
  }

  v20 = dCopy;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v20)
  {
    [PFServerPosterIdentity configurationIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:? supplement:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PFServerPosterIdentity configurationIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:? supplement:?];
  }

  if (PFPosterRoleIsValid(roleCopy))
  {
    v21 = roleCopy;
  }

  else
  {
    v21 = PFPosterDefaultRoleForBundleIdentifier(v18);
    v22 = PFLogPosterContents();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136446978;
      v28 = "+[PFServerPosterIdentity configurationIdentityWithProvider:identifier:role:posterUUID:version:supplement:]";
      v29 = 2114;
      v30 = roleCopy;
      v31 = 2114;
      v32 = v21;
      v33 = 2114;
      v34 = v18;
      _os_log_error_impl(&dword_1C269D000, v22, OS_LOG_TYPE_ERROR, "[Invalid Role][%{public}s] role %{public}@ was invalid, recovered: %{public}@ for provider: %{public}@", buf, 0x2Au);
    }
  }

  v23 = v21;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v23)
  {
    [PFServerPosterIdentity configurationIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:? supplement:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PFServerPosterIdentity configurationIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:? supplement:?];
  }

  v24 = [[PFServerPosterIdentity alloc] _initWithProvider:v18 type:3 role:v23 posterUUID:v20 version:version supplement:supplement descriptorIdentifier:v19];
  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

+ (id)incomingConfigurationIdentityWithProvider:(id)provider role:(id)role posterUUID:(id)d version:(unint64_t)version supplement:(unint64_t)supplement
{
  providerCopy = provider;
  roleCopy = role;
  dCopy = d;
  v15 = providerCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v15)
  {
    [PFServerPosterIdentity incomingConfigurationIdentityWithProvider:a2 role:? posterUUID:? version:? supplement:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PFServerPosterIdentity incomingConfigurationIdentityWithProvider:a2 role:? posterUUID:? version:? supplement:?];
  }

  v16 = dCopy;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v16)
  {
    [PFServerPosterIdentity incomingConfigurationIdentityWithProvider:a2 role:? posterUUID:? version:? supplement:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PFServerPosterIdentity incomingConfigurationIdentityWithProvider:a2 role:? posterUUID:? version:? supplement:?];
  }

  v17 = [[PFServerPosterIdentity alloc] _initWithProvider:v15 type:3 role:roleCopy posterUUID:v16 version:version supplement:supplement descriptorIdentifier:0 isIncomingConfiguration:1];

  return v17;
}

+ (id)suggestionDescriptorIdentityWithProvider:(id)provider identifier:(id)identifier role:(id)role posterUUID:(id)d version:(unint64_t)version
{
  providerCopy = provider;
  identifierCopy = identifier;
  roleCopy = role;
  dCopy = d;
  v16 = providerCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v16)
  {
    [PFServerPosterIdentity suggestionDescriptorIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PFServerPosterIdentity suggestionDescriptorIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:?];
  }

  v17 = identifierCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v17)
  {
    [PFServerPosterIdentity suggestionDescriptorIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PFServerPosterIdentity suggestionDescriptorIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:?];
  }

  v18 = dCopy;
  NSClassFromString(&cfstr_Nsuuid.isa);
  if (!v18)
  {
    [PFServerPosterIdentity suggestionDescriptorIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PFServerPosterIdentity suggestionDescriptorIdentityWithProvider:a2 identifier:? role:? posterUUID:? version:?];
  }

  v19 = [[PFServerPosterIdentity alloc] _initWithProvider:v16 type:4 role:roleCopy posterUUID:v18 version:version supplement:0 descriptorIdentifier:v17];

  return v19;
}

- (BOOL)isNewerVersionOfIdentity:(id)identity
{
  identityCopy = identity;
  v7 = 0;
  if ([(PFServerPosterIdentity *)self _isRootEqual:identityCopy])
  {
    version = self->_version;
    v6 = identityCopy[5];
    if (version > v6 || version == v6 && self->_supplement > identityCopy[6])
    {
      v7 = 1;
    }
  }

  return v7;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if (!compareCopy)
  {
    [PFServerPosterIdentity compare:a2];
  }

  v6 = compareCopy;
  v7 = [(NSString *)self->_role compare:compareCopy[8]];
  if (v7)
  {
    goto LABEL_4;
  }

  v7 = [(NSString *)self->_provider compare:v6[2]];
  if (v7)
  {
    goto LABEL_4;
  }

  type = self->_type;
  v11 = v6[3];
  if (type == v11)
  {
    v7 = [(NSUUID *)self->_posterUUID compare:v6[4]];
    if (v7)
    {
LABEL_4:
      v8 = v7;
      goto LABEL_5;
    }

    version = self->_version;
    v13 = v6[5];
    if (version == v13)
    {
      supplement = self->_supplement;
      v15 = v6[6];
      v16 = supplement >= v15;
      v17 = supplement == v15;
      v18 = -1;
      if (v16)
      {
        v18 = 1;
      }

      if (v17)
      {
        v8 = 0;
      }

      else
      {
        v8 = v18;
      }
    }

    else if (version < v13)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }
  }

  else if (type < v11)
  {
    v8 = -1;
  }

  else
  {
    v8 = 1;
  }

LABEL_5:

  return v8;
}

- (BOOL)setupPersistenceForPathContainerURL:(id)l error:(id *)error
{
  v85 = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  provider = [(PFServerPosterIdentity *)self provider];
  v67 = lCopy;
  v7 = [lCopy URLByAppendingPathComponent:provider];

  v8 = MEMORY[0x1E695DFF8];
  type = [(PFServerPosterIdentity *)self type];
  posterUUID = [(PFServerPosterIdentity *)self posterUUID];
  v11 = [v8 pf_posterPathIdentifierURLProviderURL:v7 type:type posterUUID:posterUUID];

  v12 = MEMORY[0x1E695DFF8];
  type2 = [(PFServerPosterIdentity *)self type];
  posterUUID2 = [(PFServerPosterIdentity *)self posterUUID];
  v15 = [v12 pf_posterPathInstanceURLForProviderURL:v7 type:type2 posterUUID:posterUUID2 version:{-[PFServerPosterIdentity version](self, "version")}];

  v16 = [MEMORY[0x1E695DFF8] pf_roleIdentifierURLForType:-[PFServerPosterIdentity type](self identifierURL:{"type"), v11}];
  v66 = v11;
  v17 = [MEMORY[0x1E695DFF8] pf_descriptorIdentifierURLForType:-[PFServerPosterIdentity type](self identifierURL:{"type"), v11}];
  role = [(PFServerPosterIdentity *)self role];
  if ([v16 checkResourceIsReachableAndReturnError:0])
  {
LABEL_4:
    v64 = role;
    descriptorIdentifier = [(PFServerPosterIdentity *)self descriptorIdentifier];
    if (([v17 checkResourceIsReachableAndReturnError:0] & 1) == 0)
    {
      v24 = v7;
      v25 = v15;
      v19 = descriptorIdentifier;
      v22 = [descriptorIdentifier dataUsingEncoding:4];
      v79 = 0;
      v26 = [v22 writeToURL:v17 options:268435457 error:&v79];
      v27 = v79;
      v28 = v27;
      if ((v26 & 1) == 0)
      {
        v52 = v17;
        v53 = PFLogCommon();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          [PFServerPosterIdentity setupPersistenceForPathContainerURL:error:];
        }

        v15 = v25;
        if (error)
        {
          v54 = v28;
          v44 = 0;
          *error = v28;
        }

        else
        {
          v44 = 0;
        }

        v7 = v24;
        v17 = v52;
        v49 = v66;
        goto LABEL_54;
      }

      v15 = v25;
      v7 = v24;
      descriptorIdentifier = v19;
    }

    v19 = descriptorIdentifier;
    v22 = [MEMORY[0x1E695DFF8] pf_posterPathScratchURLForInstanceURL:v15];
    if (([v22 checkResourceIsReachableAndReturnError:0] & 1) == 0)
    {
      v62 = v17;
      v29 = v7;
      v30 = v15;
      v31 = PFFileProtectionNoneAttributes();
      v78 = 0;
      v32 = [defaultManager createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:v31 error:&v78];
      v28 = v78;

      if ((v32 & 1) == 0)
      {
        v55 = PFLogCommon();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          [PFServerPosterIdentity setupPersistenceForPathContainerURL:error:];
        }

        v15 = v30;
        v49 = v66;
        if (error)
        {
          v56 = v28;
          v44 = 0;
          *error = v28;
        }

        else
        {
          v44 = 0;
        }

        v7 = v29;
        v17 = v62;
        goto LABEL_54;
      }

      v15 = v30;
      v7 = v29;
      v17 = v62;
    }

    v33 = MEMORY[0x1E695DFF8];
    supplement = [(PFServerPosterIdentity *)self supplement];
    v63 = v15;
    v28 = [v33 pf_posterPathSupplementURLForInstanceURL:v15 supplement:supplement];
    if (([v28 checkResourceIsReachableAndReturnError:0] & 1) == 0)
    {
      v35 = v17;
      v36 = PFFileProtectionNoneAttributes();
      v77 = 0;
      v37 = [defaultManager createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:v36 error:&v77];
      v38 = v77;

      if ((v37 & 1) == 0)
      {
        v57 = PFLogCommon();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          [PFServerPosterIdentity setupPersistenceForPathContainerURL:error:];
        }

        v49 = v66;
        if (error)
        {
          v58 = v38;
          v44 = 0;
          *error = v38;
        }

        else
        {
          v44 = 0;
        }

        v15 = v63;
        goto LABEL_53;
      }

      v17 = v35;
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v83[0] = v16;
    v83[1] = v17;
    v35 = v17;
    v83[2] = v28;
    v39 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:3];
    v40 = [v39 countByEnumeratingWithState:&v73 objects:v84 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v74;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v74 != v42)
          {
            objc_enumerationMutation(v39);
          }

          [*(*(&v73 + 1) + 8 * i) pf_setExcludedFromBackup:0 error:0];
        }

        v41 = [v39 countByEnumeratingWithState:&v73 objects:v84 count:16];
      }

      while (v41);
    }

    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v81 = v22;
    v44 = 1;
    v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
    v45 = [v38 countByEnumeratingWithState:&v69 objects:v82 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v70;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v70 != v47)
          {
            objc_enumerationMutation(v38);
          }

          [*(*(&v69 + 1) + 8 * j) pf_setExcludedFromBackup:1 error:0];
        }

        v46 = [v38 countByEnumeratingWithState:&v69 objects:v82 count:16];
      }

      while (v46);
      v44 = 1;
    }

    v15 = v63;
    v49 = v66;
LABEL_53:

    v17 = v35;
LABEL_54:

    v59 = v67;
    role = v64;
    goto LABEL_55;
  }

  v19 = [role dataUsingEncoding:4];
  v80 = 0;
  v20 = [v19 writeToURL:v16 options:268435457 error:&v80];
  v21 = v80;
  v22 = v21;
  if (v20)
  {

    goto LABEL_4;
  }

  v50 = PFLogCommon();
  if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
  {
    [PFServerPosterIdentity setupPersistenceForPathContainerURL:error:];
  }

  v49 = v66;
  if (error)
  {
    v51 = v22;
    v44 = 0;
    *error = v22;
  }

  else
  {
    v44 = 0;
  }

  v59 = v67;
LABEL_55:

  v60 = *MEMORY[0x1E69E9840];
  return v44;
}

+ (id)debugDescription
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  os_unfair_lock_lock(&__allIdentitiesLock);
  allObjects = [__allIdentities allObjects];
  v4 = [allObjects sortedArrayUsingSelector:sel_compare_];

  os_unfair_lock_unlock(&__allIdentitiesLock);
  v5 = [MEMORY[0x1E696AD60] stringWithFormat:@"allIdentities = %llu {", objc_msgSend(v4, "count")];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        [v5 appendString:@"\n\t"];
        v12 = [v11 debugDescription];
        [v5 appendString:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [v5 appendString:@"\n}"];
  objc_autoreleasePoolPop(v2);
  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  provider = self->_provider;
  coderCopy = coder;
  [coderCopy encodeObject:provider forKey:@"p"];
  [coderCopy encodeInt64:self->_type forKey:@"t"];
  [coderCopy encodeObject:self->_posterUUID forKey:@"u"];
  [coderCopy encodeInt64:self->_version forKey:@"v"];
  [coderCopy encodeInt64:self->_supplement forKey:@"s"];
  [coderCopy encodeObject:self->_descriptorIdentifier forKey:@"d"];
  [coderCopy encodeObject:self->_role forKey:@"r"];
}

- (PFServerPosterIdentity)initWithBSXPCCoder:(id)coder
{
  v25 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeStringForKey:@"p"];
  v6 = [coderCopy decodeInt64ForKey:@"t"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"u"];
  v8 = [coderCopy decodeInt64ForKey:@"v"];
  v9 = [coderCopy decodeInt64ForKey:@"s"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"r"];

  if (PFPosterRoleIsValid(v11))
  {
    v12 = v11;
    if (!v5)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v12 = PFPosterDefaultRoleForBundleIdentifier(v5);
  v13 = PFLogPosterContents();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v18 = "[PFServerPosterIdentity initWithBSXPCCoder:]";
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = v12;
    v23 = 2114;
    v24 = v5;
    _os_log_error_impl(&dword_1C269D000, v13, OS_LOG_TYPE_ERROR, "[Invalid Role][%{public}s] role %{public}@ was invalid, recovered: %{public}@ for provider: %{public}@", buf, 0x2Au);
  }

  if (v5)
  {
LABEL_7:
    if ((v6 - 1) <= 3 && v7)
    {
      PFPosterRoleIsValid(v12);
    }
  }

LABEL_10:
  v14 = [(PFServerPosterIdentity *)self _initWithProvider:v5 type:v6 role:v12 posterUUID:v7 version:v8 supplement:v9 descriptorIdentifier:v10];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  provider = self->_provider;
  coderCopy = coder;
  [coderCopy encodeObject:provider forKey:@"p"];
  [coderCopy encodeInt64:self->_type forKey:@"t"];
  [coderCopy encodeObject:self->_posterUUID forKey:@"u"];
  [coderCopy encodeInt64:self->_version forKey:@"v"];
  [coderCopy encodeInt64:self->_supplement forKey:@"s"];
  [coderCopy encodeObject:self->_descriptorIdentifier forKey:@"d"];
  [coderCopy encodeObject:self->_role forKey:@"r"];
}

- (PFServerPosterIdentity)initWithCoder:(id)coder
{
  v25 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"p"];
  v6 = [coderCopy decodeInt64ForKey:@"t"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"u"];
  v8 = [coderCopy decodeInt64ForKey:@"v"];
  v9 = [coderCopy decodeInt64ForKey:@"s"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"d"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"r"];

  if (PFPosterRoleIsValid(v11))
  {
    v12 = v11;
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v12 = PFPosterDefaultRoleForBundleIdentifier(v5);
  v13 = PFLogPosterContents();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136446978;
    v18 = "[PFServerPosterIdentity initWithCoder:]";
    v19 = 2114;
    v20 = v11;
    v21 = 2114;
    v22 = v12;
    v23 = 2114;
    v24 = v5;
    _os_log_error_impl(&dword_1C269D000, v13, OS_LOG_TYPE_ERROR, "[Invalid Role][%{public}s] role %{public}@ was invalid, recovered: %{public}@ for provider: %{public}@", buf, 0x2Au);
  }

  if (v5)
  {
LABEL_7:
    PFPosterRoleIsValid(v12);
  }

LABEL_8:
  v14 = [(PFServerPosterIdentity *)self _initWithProvider:v5 type:v6 role:v12 posterUUID:v7 version:v8 supplement:v9 descriptorIdentifier:v10];

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_provider hash];
  v4 = [(NSUUID *)self->_posterUUID hash]^ v3;
  supplement = self->_supplement;
  v6 = 0xBF58476D1CE4E5B9 * (v4 ^ self->_version ^ ((v4 ^ self->_version) >> 30));
  return [(NSString *)self->_role hash]^ supplement ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31) ^ (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27)));
}

- (NSString)description
{
  descriptorIdentifier = self->_descriptorIdentifier;
  v4 = MEMORY[0x1E696AEC0];
  provider = self->_provider;
  v6 = NSStringFromPFServerPosterType(self->_type);
  v7 = v6;
  version = self->_version;
  if (descriptorIdentifier)
  {
    [v4 stringWithFormat:@"%@:%@:%@(%@)/%@/%llu-%llu", provider, v6, self->_descriptorIdentifier, self->_posterUUID, self->_role, version, self->_supplement];
  }

  else
  {
    [v4 stringWithFormat:@"%@:%@:%@/%@/%llu-%llu", provider, v6, self->_posterUUID, self->_role, version, self->_supplement, v11];
  }
  v9 = ;

  return v9;
}

- (NSString)stablePersistenceIdentifier
{
  descriptorIdentifier = self->_descriptorIdentifier;
  v4 = MEMORY[0x1E696AEC0];
  provider = self->_provider;
  v6 = NSStringFromPFServerPosterType(self->_type);
  v7 = v6;
  version = self->_version;
  if (descriptorIdentifier)
  {
    [v4 stringWithFormat:@"%@_%@_%@(%@)_%@_%llu-%llu", provider, v6, self->_descriptorIdentifier, self->_posterUUID, self->_role, version, self->_supplement];
  }

  else
  {
    [v4 stringWithFormat:@"%@_%@_%@_%@_%llu-%llu", provider, v6, self->_posterUUID, self->_role, version, self->_supplement, v11];
  }
  v9 = ;

  return v9;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(PFServerPosterIdentity *)self description];
  v7 = [v3 stringWithFormat:@"<%@:%p %@>", v5, self, v6];

  return v7;
}

- (uint64_t)_isRootEqual:(uint64_t)equal
{
  v3 = a2;
  v4 = v3;
  if (equal)
  {
    if (equal == v3)
    {
      equal = 1;
    }

    else
    {
      v5 = objc_opt_class();
      if (v5 == objc_opt_class() && (*(equal + 24) == 3 || (v7 = *(equal + 56), v8 = v4[7], BSEqualStrings())) && (v9 = *(equal + 16), v10 = v4[2], BSEqualStrings()) && *(equal + 24) == v4[3] && (v11 = *(equal + 32), v12 = v4[4], BSEqualObjects()))
      {
        equal = [*(equal + 64) isEqualToString:v4[8]];
      }

      else
      {
        equal = 0;
      }
    }
  }

  return equal;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [(PFServerPosterIdentity *)self _isRootEqual:equalCopy]&& self->_version == equalCopy[5] && self->_supplement == equalCopy[6] && [(NSString *)self->_role isEqualToString:equalCopy[8]];

  return v5;
}

- (void)_initWithProvider:(char *)a1 type:role:posterUUID:version:supplement:descriptorIdentifier:isIncomingConfiguration:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"PFServerPosterTypeIsValid(type)", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithProvider:(char *)a1 type:role:posterUUID:version:supplement:descriptorIdentifier:isIncomingConfiguration:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"role", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_initWithProvider:(char *)a1 type:role:posterUUID:version:supplement:descriptorIdentifier:isIncomingConfiguration:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"provider", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)staticDescriptorIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)staticDescriptorIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)staticDescriptorIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSUUIDClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)staticDescriptorIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)staticDescriptorIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)staticDescriptorIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)descriptorIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)descriptorIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)descriptorIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSUUIDClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)descriptorIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)descriptorIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)descriptorIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)configurationIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:supplement:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)configurationIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:supplement:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)configurationIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:supplement:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSUUIDClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)configurationIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:supplement:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)configurationIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:supplement:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)configurationIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:supplement:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)configurationIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:supplement:.cold.7(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)incomingConfigurationIdentityWithProvider:(char *)a1 role:posterUUID:version:supplement:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)incomingConfigurationIdentityWithProvider:(char *)a1 role:posterUUID:version:supplement:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSUUIDClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)incomingConfigurationIdentityWithProvider:(char *)a1 role:posterUUID:version:supplement:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)incomingConfigurationIdentityWithProvider:(char *)a1 role:posterUUID:version:supplement:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)suggestionDescriptorIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)suggestionDescriptorIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSStringClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)suggestionDescriptorIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSUUIDClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)suggestionDescriptorIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:.cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)suggestionDescriptorIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:.cold.5(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

+ (void)suggestionDescriptorIdentityWithProvider:(char *)a1 identifier:role:posterUUID:version:.cold.6(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)compare:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_1C269D000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"other", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)setupPersistenceForPathContainerURL:error:.cold.1()
{
  OUTLINED_FUNCTION_5_1();
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_4(&dword_1C269D000, v2, v3, "[%{public}@ setupPersistenceForPathContainerURL:error:]> could not setup role URL: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setupPersistenceForPathContainerURL:error:.cold.2()
{
  OUTLINED_FUNCTION_5_1();
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_4(&dword_1C269D000, v2, v3, "[%{public}@ setupPersistenceForPathContainerURL:error:]> could not setup descriptor URL: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setupPersistenceForPathContainerURL:error:.cold.3()
{
  OUTLINED_FUNCTION_5_1();
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_4(&dword_1C269D000, v2, v3, "[%{public}@ setupPersistenceForPathContainerURL:error:]> could not setup scratch URL: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setupPersistenceForPathContainerURL:error:.cold.4()
{
  OUTLINED_FUNCTION_5_1();
  v10 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_class();
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_4(&dword_1C269D000, v2, v3, "[%{public}@ setupPersistenceForPathContainerURL:error:]> could not setup supplementURL: %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

@end