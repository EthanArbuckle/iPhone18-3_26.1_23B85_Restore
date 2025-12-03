@interface PRSPosterConfigurationAttributes
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToAttributes:(id)attributes;
- (BOOL)isExtensionIdentifierEqual:(id)equal;
- (BOOL)isIdentifierURLEqual:(id)equal;
- (BOOL)isPosterUUIDEqual:(id)equal;
- (BOOL)isRoleEqual:(id)equal;
- (BOOL)isSupplementalVersionEqual:(id)equal;
- (BOOL)isVersionEqual:(id)equal;
- (NSSet)snapshotURLs;
- (PRSPosterConfigurationAttributes)initWithConfiguration:(id)configuration;
- (PRSPosterConfigurationAttributes)initWithPath:(id)path extensionIdentifier:(id)identifier;
- (PRSPosterConfigurationAttributes)initWithURL:(id)l extensionIdentifier:(id)identifier configurationUUID:(id)d role:(id)role version:(id)version supplementalVersion:(id)supplementalVersion;
- (id)_initWithPath:(id)path extensionIdentifier:(id)identifier posterUUID:(id)d providerURL:(id)l version:(unint64_t)version supplementalVersion:(unint64_t)supplementalVersion fileManager:(id)manager;
@end

@implementation PRSPosterConfigurationAttributes

- (PRSPosterConfigurationAttributes)initWithPath:(id)path extensionIdentifier:(id)identifier
{
  pathCopy = path;
  identifierCopy = identifier;
  v9 = pathCopy;
  NSClassFromString(&cfstr_Pfposterpath.isa);
  if (!v9)
  {
    [PRSPosterConfigurationAttributes initWithPath:a2 extensionIdentifier:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterConfigurationAttributes initWithPath:a2 extensionIdentifier:?];
  }

  v10 = objc_opt_new();
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v11 = [@"PRS_STAGED" stringByAppendingPathComponent:identifierCopy];
  v12 = PFTemporaryDirectory();
  v13 = [v12 stringByAppendingPathComponent:v11];

  v14 = [MEMORY[0x1E695DFF8] fileURLWithPath:v13 isDirectory:1];
  serverIdentity = [v9 serverIdentity];
  version = [serverIdentity version];
  [v9 serverIdentity];
  v17 = identifierCopy;
  v19 = v18 = self;
  v20 = -[PRSPosterConfigurationAttributes _initWithPath:extensionIdentifier:posterUUID:providerURL:version:supplementalVersion:fileManager:](v18, "_initWithPath:extensionIdentifier:posterUUID:providerURL:version:supplementalVersion:fileManager:", v9, v17, uUID, v14, version, [v19 supplement], v10);

  return v20;
}

- (PRSPosterConfigurationAttributes)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _path = [configurationCopy _path];
  v7 = configurationCopy;
  NSClassFromString(&cfstr_Prsposterconfi_1.isa);
  if (!v7)
  {
    [PRSPosterConfigurationAttributes initWithConfiguration:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterConfigurationAttributes initWithConfiguration:a2];
  }

  v8 = _path;
  NSClassFromString(&cfstr_Pfserverposter.isa);
  if (!v8)
  {
    [PRSPosterConfigurationAttributes initWithConfiguration:a2];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PRSPosterConfigurationAttributes initWithConfiguration:a2];
  }

  v9 = objc_opt_class();
  v10 = v8;
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  identity = [v12 identity];
  v14 = objc_opt_new();
  posterUUID = [identity posterUUID];
  provider = [identity provider];
  providerURL = [v12 providerURL];
  v18 = -[PRSPosterConfigurationAttributes _initWithPath:extensionIdentifier:posterUUID:providerURL:version:supplementalVersion:fileManager:](self, "_initWithPath:extensionIdentifier:posterUUID:providerURL:version:supplementalVersion:fileManager:", v10, provider, posterUUID, providerURL, [identity version], objc_msgSend(identity, "supplement"), v14);

  return v18;
}

- (id)_initWithPath:(id)path extensionIdentifier:(id)identifier posterUUID:(id)d providerURL:(id)l version:(unint64_t)version supplementalVersion:(unint64_t)supplementalVersion fileManager:(id)manager
{
  pathCopy = path;
  identifierCopy = identifier;
  dCopy = d;
  lCopy = l;
  managerCopy = manager;
  v29.receiver = self;
  v29.super_class = PRSPosterConfigurationAttributes;
  v18 = [(PRSPosterConfigurationAttributes *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_path, path);
    objc_storeStrong(&v19->_extensionIdentifier, identifier);
    objc_storeStrong(&v19->_posterUUID, d);
    objc_storeStrong(&v19->_providerURL, l);
    v20 = [MEMORY[0x1E695DFF8] pf_posterPathIdentifierURLProviderURL:lCopy type:3 posterUUID:dCopy];
    identifierURL = v19->_identifierURL;
    v19->_identifierURL = v20;

    v19->_version = version;
    v19->_supplementalVersion = supplementalVersion;
    objc_storeStrong(&v19->_fileManager, manager);
    serverIdentity = [pathCopy serverIdentity];
    descriptorIdentifier = [serverIdentity descriptorIdentifier];
    descriptorIdentifier = v19->_descriptorIdentifier;
    v19->_descriptorIdentifier = descriptorIdentifier;
  }

  return v19;
}

- (PRSPosterConfigurationAttributes)initWithURL:(id)l extensionIdentifier:(id)identifier configurationUUID:(id)d role:(id)role version:(id)version supplementalVersion:(id)supplementalVersion
{
  v91[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  identifierCopy = identifier;
  dCopy = d;
  roleCopy = role;
  versionCopy = version;
  supplementalVersionCopy = supplementalVersion;
  if ([lCopy checkResourceIsReachableAndReturnError:0])
  {
    selfCopy = self;
    v20 = objc_opt_new();
    v21 = *MEMORY[0x1E695DC30];
    v22 = *MEMORY[0x1E695DB78];
    v91[0] = *MEMORY[0x1E695DC30];
    v91[1] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
    v87 = v20;
    v24 = [v20 contentsOfDirectoryAtURL:lCopy includingPropertiesForKeys:v23 options:5 error:0];

    v25 = [v24 count];
    if (![v24 count] || !identifierCopy && v25 > 1)
    {
      selfCopy2 = 0;
      self = selfCopy;
LABEL_75:

      goto LABEL_76;
    }

    v27 = [v24 bs_map:&__block_literal_global_9];
    v85 = v27;
    if (identifierCopy)
    {
      v28 = [v27 indexOfObject:identifierCopy];
      if (v28 == 0x7FFFFFFFFFFFFFFFLL)
      {
        selfCopy2 = 0;
        self = selfCopy;
LABEL_74:

        goto LABEL_75;
      }
    }

    else
    {
      v28 = 0;
    }

    v83 = roleCopy;
    v29 = [v24 objectAtIndexedSubscript:v28];
    v84 = [v85 objectAtIndexedSubscript:v28];
    if (!v29)
    {
      selfCopy2 = 0;
      self = selfCopy;
LABEL_73:

      roleCopy = v83;
      goto LABEL_74;
    }

    v82 = v29;
    v30 = [v29 URLByAppendingPathComponent:@"configurations"];
    if (![v30 checkResourceIsReachableAndReturnError:0])
    {
      selfCopy2 = 0;
      self = selfCopy;
LABEL_72:

      v29 = v82;
      goto LABEL_73;
    }

    v90[0] = v21;
    v90[1] = v22;
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
    v81 = v30;
    v32 = [v87 contentsOfDirectoryAtURL:v30 includingPropertiesForKeys:v31 options:5 error:0];

    v33 = [v32 count];
    if (![v32 count] || !dCopy && v33 > 1)
    {
      v34 = v32;
      selfCopy2 = 0;
      self = selfCopy;
      v30 = v81;
LABEL_71:

      goto LABEL_72;
    }

    v35 = [v32 bs_map:&__block_literal_global_38];
    v80 = v35;
    if (dCopy)
    {
      v36 = v35;
      uUIDString = [dCopy UUIDString];
      v37 = [v36 indexOfObject:uUIDString];

      if (v37 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v34 = v32;
        selfCopy2 = 0;
        self = selfCopy;
        v30 = v81;
LABEL_70:

        goto LABEL_71;
      }
    }

    else
    {
      v37 = 0;
    }

    [v32 objectAtIndexedSubscript:v37];
    v38 = v77 = v32;
    v79 = [v80 objectAtIndexedSubscript:v37];
    v39 = v38;
    if (!v38)
    {
      v34 = v77;
      selfCopy2 = 0;
      self = selfCopy;
      v30 = v81;
LABEL_69:

      goto LABEL_70;
    }

    v76 = v38;
    v40 = [v38 URLByAppendingPathComponent:@"versions"];
    v75 = v40;
    if (![v40 checkResourceIsReachableAndReturnError:0])
    {
      selfCopy2 = 0;
      v34 = v77;
      self = selfCopy;
      v30 = v81;
LABEL_68:

      v39 = v76;
      goto LABEL_69;
    }

    v41 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"1234567890"];
    invertedSet = [v41 invertedSet];

    if (versionCopy)
    {
      stringValue = [versionCopy stringValue];
      v72 = [v76 URLByAppendingPathComponent:?];
      if ([v72 checkResourceIsReachableAndReturnError:0])
      {
        selfCopy2 = 0;
        v34 = v77;
        self = selfCopy;
        v30 = v81;
LABEL_65:

        v47 = v72;
        goto LABEL_66;
      }

      unsignedIntValue = [versionCopy unsignedIntValue];
    }

    else
    {
      v89[0] = v21;
      v89[1] = v22;
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:2];
      v43 = [v87 contentsOfDirectoryAtURL:v40 includingPropertiesForKeys:v42 options:5 error:0];

      if (![v43 count])
      {
        v34 = v77;
        v47 = v43;
        selfCopy2 = 0;
        self = selfCopy;
        v30 = v81;
LABEL_66:

        goto LABEL_67;
      }

      stringValue = v43;
      v69 = [v43 bs_map:&__block_literal_global_47];
      v67 = [v69 sortedArrayUsingComparator:&__block_literal_global_50_0];
      lastObject = [v67 lastObject];
      v45 = lastObject;
      if (lastObject && [lastObject rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v72 = [v75 URLByAppendingPathComponent:v45];
        unsignedIntValue = [v45 integerValue];
      }

      else
      {
        unsignedIntValue = 0;
        v72 = 0;
      }
    }

    if (!v72)
    {
      v34 = v77;
      selfCopy2 = 0;
      self = selfCopy;
      v30 = v81;
LABEL_67:

      goto LABEL_68;
    }

    stringValue = [v72 URLByAppendingPathComponent:@"supplements"];
    unsignedIntValue2 = 0;
    if (![stringValue checkResourceIsReachableAndReturnError:0])
    {
LABEL_54:
      v53 = *MEMORY[0x1E69C5220];
      if (v83)
      {
        v53 = v83;
      }

      v54 = v53;
      v55 = [v76 URLByAppendingPathComponent:*MEMORY[0x1E69C5200]];
      self = selfCopy;
      stringValue2 = v54;
      v66 = v55;
      if ([v55 checkResourceIsReachableAndReturnError:0])
      {
        v56 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v55 options:2 error:0];
        if ([v56 length])
        {
          v64 = v56;
          v57 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v56 encoding:4];
          v58 = v57;
          if (v83 && ![v57 isEqual:v83])
          {
            v34 = v77;
            v61 = v58;
            selfCopy2 = 0;
            v60 = v64;
            goto LABEL_63;
          }

          v56 = v64;
        }

        v54 = stringValue2;
      }

      v34 = v77;
      v59 = [MEMORY[0x1E69C51E0] configurationIdentityWithProvider:v84 identifier:0 role:v54 posterUUID:dCopy version:unsignedIntValue supplement:unsignedIntValue2];
      v65 = [MEMORY[0x1E69C51E8] pathWithProviderURL:v82 identity:v59];
      v60 = v59;
      self = [(PRSPosterConfigurationAttributes *)selfCopy _initWithPath:v65 extensionIdentifier:v84 posterUUID:dCopy providerURL:v82 version:unsignedIntValue supplementalVersion:unsignedIntValue2 fileManager:v87];
      v61 = v65;
      selfCopy2 = self;
LABEL_63:

      goto LABEL_64;
    }

    if (supplementalVersionCopy)
    {
      stringValue2 = [supplementalVersionCopy stringValue];
      v46 = [v76 URLByAppendingPathComponent:?];
      if (![v46 checkResourceIsReachableAndReturnError:0])
      {
        selfCopy2 = 0;
        v66 = v46;
        v34 = v77;
        self = selfCopy;
LABEL_64:
        v30 = v81;

        goto LABEL_65;
      }

      unsignedIntValue2 = [supplementalVersionCopy unsignedIntValue];
    }

    else
    {
      v88[0] = v21;
      v88[1] = v22;
      v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:2];
      v49 = [v87 contentsOfDirectoryAtURL:stringValue includingPropertiesForKeys:v48 options:5 error:0];

      if (![v49 count])
      {
        unsignedIntValue2 = 0;
        goto LABEL_53;
      }

      stringValue2 = v49;
      v46 = [v49 bs_map:&__block_literal_global_55];
      v50 = [v46 sortedArrayUsingComparator:&__block_literal_global_57];
      lastObject2 = [v50 lastObject];
      v52 = lastObject2;
      if (lastObject2 && [lastObject2 rangeOfCharacterFromSet:invertedSet] == 0x7FFFFFFFFFFFFFFFLL)
      {
        unsignedIntValue2 = [v52 integerValue];
      }

      else
      {
        unsignedIntValue2 = 0;
      }
    }

    v49 = stringValue2;
LABEL_53:

    goto LABEL_54;
  }

  selfCopy2 = 0;
LABEL_76:

  v62 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PRSPosterConfigurationAttributes *)self isEqualToAttributes:v5];
  }

  return v6;
}

- (BOOL)isEqualToAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = attributesCopy;
  if (attributesCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = attributesCopy && [(PRSPosterConfigurationAttributes *)self isExtensionIdentifierEqual:attributesCopy]&& [(PRSPosterConfigurationAttributes *)self isRoleEqual:v5]&& [(PRSPosterConfigurationAttributes *)self isPosterUUIDEqual:v5]&& [(PRSPosterConfigurationAttributes *)self isIdentifierURLEqual:v5]&& [(PRSPosterConfigurationAttributes *)self isVersionEqual:v5]&& [(PRSPosterConfigurationAttributes *)self isSupplementalVersionEqual:v5];
  }

  return v6;
}

- (BOOL)isExtensionIdentifierEqual:(id)equal
{
  equalCopy = equal;
  extensionIdentifier = [(PRSPosterConfigurationAttributes *)self extensionIdentifier];
  extensionIdentifier2 = [equalCopy extensionIdentifier];

  LOBYTE(equalCopy) = BSEqualObjects();
  return equalCopy;
}

- (BOOL)isRoleEqual:(id)equal
{
  equalCopy = equal;
  role = [(PRSPosterConfigurationAttributes *)self role];
  role2 = [equalCopy role];

  LOBYTE(equalCopy) = BSEqualObjects();
  return equalCopy;
}

- (BOOL)isPosterUUIDEqual:(id)equal
{
  equalCopy = equal;
  posterUUID = [(PRSPosterConfigurationAttributes *)self posterUUID];
  posterUUID2 = [equalCopy posterUUID];

  LOBYTE(equalCopy) = BSEqualObjects();
  return equalCopy;
}

- (BOOL)isIdentifierURLEqual:(id)equal
{
  equalCopy = equal;
  identifierURL = [(PRSPosterConfigurationAttributes *)self identifierURL];
  uRLByResolvingSymlinksInPath = [identifierURL URLByResolvingSymlinksInPath];

  identifierURL2 = [equalCopy identifierURL];

  uRLByResolvingSymlinksInPath2 = [identifierURL2 URLByResolvingSymlinksInPath];

  LOBYTE(identifierURL2) = BSEqualObjects();
  return identifierURL2;
}

- (BOOL)isVersionEqual:(id)equal
{
  equalCopy = equal;
  version = [(PRSPosterConfigurationAttributes *)self version];
  version2 = [equalCopy version];

  return version == version2;
}

- (BOOL)isSupplementalVersionEqual:(id)equal
{
  equalCopy = equal;
  supplementalVersion = [(PRSPosterConfigurationAttributes *)self supplementalVersion];
  supplementalVersion2 = [equalCopy supplementalVersion];

  return supplementalVersion == supplementalVersion2;
}

- (NSSet)snapshotURLs
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  fileManager = self->_fileManager;
  identifierURL = self->_identifierURL;
  v6 = *MEMORY[0x1E695DB20];
  v28[0] = *MEMORY[0x1E695DB20];
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __48__PRSPosterConfigurationAttributes_snapshotURLs__block_invoke;
  v26[3] = &unk_1E818D1E8;
  v26[4] = self;
  v8 = [(NSFileManager *)fileManager enumeratorAtURL:identifierURL includingPropertiesForKeys:v7 options:20 errorHandler:v26];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    v13 = *MEMORY[0x1E695DB30];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v21 = 0;
        [v15 getResourceValue:&v21 forKey:v6 error:0];
        v16 = v21;
        if ([v16 isEqualToString:v13] && objc_msgSend(v15, "prs_isPosterSnapshot"))
        {
          uRLByStandardizingPath = [v15 URLByStandardizingPath];
          [v3 addObject:uRLByStandardizingPath];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v11);
  }

  v18 = [v3 copy];
  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

uint64_t __48__PRSPosterConfigurationAttributes_snapshotURLs__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = PRSLogPosterContents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __48__PRSPosterConfigurationAttributes_snapshotURLs__block_invoke_cold_1(a1, v4, v5);
  }

  return 1;
}

- (void)initWithPath:(char *)a1 extensionIdentifier:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFPosterPathClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithPath:(char *)a1 extensionIdentifier:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithConfiguration:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PRSPosterConfigurationClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithConfiguration:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PFServerPosterPathClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithConfiguration:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithConfiguration:(char *)a1 .cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_2_0();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0_0();
    OUTLINED_FUNCTION_1_0(&dword_1C26FF000, MEMORY[0x1E69E9C10], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __48__PRSPosterConfigurationAttributes_snapshotURLs__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(*(a1 + 32) + 40);
  v5 = 138543618;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1C26FF000, log, OS_LOG_TYPE_ERROR, "snapshotURLs %{public}@ encountered an error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end