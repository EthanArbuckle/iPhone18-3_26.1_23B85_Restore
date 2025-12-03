@interface XBApplicationLaunchCompatibilityInfo
+ (id)compatibilityInfoForAppInfo:(id)info;
- (BOOL)launchInterfaceExistsForScheme:(id)scheme;
- (NSString)description;
- (XBApplicationLaunchCompatibilityInfo)initWithBundle:(id)bundle;
- (XBApplicationLaunchCompatibilityInfo)initWithCoder:(id)coder;
- (XBApplicationLaunchCompatibilityInfo)initWithXPCDictionary:(id)dictionary;
- (XBLaunchInterface)defaultLaunchInterface;
- (id)launchInterfaceIdentifierForRequest:(id)request;
- (id)launchInterfaceWithIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation XBApplicationLaunchCompatibilityInfo

+ (id)compatibilityInfoForAppInfo:(id)info
{
  infoCopy = info;
  bundleIdentifier = [infoCopy bundleIdentifier];
  v6 = [bundleIdentifier copy];

  v7 = +[XBApplicationDataStore sharedInstance];
  [v7 beginAccessBlockForBundleIdentifier:v6];
  v8 = [v7 _loadCompatibilityInfoForBundleIdentifier:v6];
  bundleURL = [infoCopy bundleURL];
  path = [bundleURL path];

  dataContainerURL = [infoCopy dataContainerURL];
  path2 = [dataContainerURL path];

  bundleContainerURL = [infoCopy bundleContainerURL];

  path3 = [bundleContainerURL path];

  if (v8 && ([v8 bundlePath], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(path, "isEqualToString:", v15), v15, (v16 & 1) != 0))
  {
    v17 = v8;
    v18 = 0;
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x277CF0BB8]) initWithPath:path];
    v17 = [[self alloc] initWithBundle:v19];

    v18 = 1;
  }

  [v17 setSandboxPath:path2];
  [v17 setBundleContainerPath:path3];
  [v17 setDefaultGroupIdentifier:v6];
  if (v18)
  {
    [v7 _persistCompatibilityInfo:v17 forBundleIdentifier:v6];
  }

  [v7 endAccessBlockForBundleIdentifier:v6];

  return v17;
}

- (XBApplicationLaunchCompatibilityInfo)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = XBApplicationLaunchCompatibilityInfo;
  v5 = [(XBApplicationLaunchCompatibilityInfo *)&v18 init];
  if (v5)
  {
    v6 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;

    v8 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
    bundlePath = v5->_bundlePath;
    v5->_bundlePath = v8;

    v10 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
    sandboxPath = v5->_sandboxPath;
    v5->_sandboxPath = v10;

    v12 = BSCreateDeserializedCFValueFromXPCDictionaryWithKey();
    bundleContainerPath = v5->_bundleContainerPath;
    v5->_bundleContainerPath = v12;

    v14 = BSDeserializeArrayOfBSXPCEncodableObjectsFromXPCDictionaryWithKey();
    v15 = [v14 copy];
    launchInterfaces = v5->_launchInterfaces;
    v5->_launchInterfaces = v15;

    v5->_launchesOpaque = xpc_dictionary_get_BOOL(dictionaryCopy, "launchesOpaque");
    v5->_hasKnownBadLaunchImage = xpc_dictionary_get_BOOL(dictionaryCopy, "hasKnownBadLaunchImage");
    v5->_badLaunchImageCandidateCount = xpc_dictionary_get_int64(dictionaryCopy, "BadLaunchImageCandidateCount");
  }

  return v5;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
  BSSerializeCFValueToXPCDictionaryWithKey();
  BSSerializeCFValueToXPCDictionaryWithKey();
  BSSerializeCFValueToXPCDictionaryWithKey();
  BSSerializeCFValueToXPCDictionaryWithKey();
  BSSerializeArrayOfBSXPCEncodableObjectsToXPCDictionaryWithKey();
  xpc_dictionary_set_BOOL(xdict, "launchesOpaque", self->_launchesOpaque);
  xpc_dictionary_set_BOOL(xdict, "hasKnownBadLaunchImage", self->_hasKnownBadLaunchImage);
  xpc_dictionary_set_int64(xdict, "BadLaunchImageCandidateCount", self->_badLaunchImageCandidateCount);
}

- (XBApplicationLaunchCompatibilityInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = XBApplicationLaunchCompatibilityInfo;
  v5 = [(XBApplicationLaunchCompatibilityInfo *)&v33 init];
  if (v5)
  {
    if (([coderCopy allowsKeyedCoding] & 1) == 0)
    {
      [XBApplicationLaunchCompatibilityInfo initWithCoder:];
    }

    v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"bundleIdentifier"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v32];
    v7 = [v6 copy];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v7;

    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"bundlePath"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v9];
    v11 = [v10 copy];
    bundlePath = v5->_bundlePath;
    v5->_bundlePath = v11;

    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"sandboxPath"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v13];
    v15 = [v14 copy];
    sandboxPath = v5->_sandboxPath;
    v5->_sandboxPath = v15;

    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"bundleContainerPath"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:v17];
    v19 = [v18 copy];
    bundleContainerPath = v5->_bundleContainerPath;
    v5->_bundleContainerPath = v19;

    v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"launchInterfaces"];
    v22 = MEMORY[0x277CBEB98];
    v23 = objc_opt_class();
    v24 = [v22 setWithObjects:{v23, objc_opt_class(), 0}];
    v25 = [coderCopy decodeObjectOfClasses:v24 forKey:v21];
    v26 = [v25 copy];
    launchInterfaces = v5->_launchInterfaces;
    v5->_launchInterfaces = v26;

    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"launchesOpaque"];
    v5->_launchesOpaque = [coderCopy decodeBoolForKey:v28];
    v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:"hasKnownBadLaunchImage"];
    v5->_hasKnownBadLaunchImage = [coderCopy decodeBoolForKey:v29];
    v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BadLaunchImageCandidateCount"];
    v5->_badLaunchImageCandidateCount = [coderCopy decodeInt64ForKey:v30];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [XBApplicationLaunchCompatibilityInfo encodeWithCoder:];
  }

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"bundleIdentifier"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:v12];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"bundlePath"];
  [coderCopy encodeObject:self->_bundlePath forKey:v5];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"sandboxPath"];
  [coderCopy encodeObject:self->_sandboxPath forKey:v6];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"bundleContainerPath"];
  [coderCopy encodeObject:self->_bundleContainerPath forKey:v7];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"launchInterfaces"];
  [coderCopy encodeObject:self->_launchInterfaces forKey:v8];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"launchesOpaque"];
  [coderCopy encodeBool:self->_launchesOpaque forKey:v9];
  v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"hasKnownBadLaunchImage"];
  [coderCopy encodeBool:self->_hasKnownBadLaunchImage forKey:v10];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"BadLaunchImageCandidateCount"];
  [coderCopy encodeInt64:self->_badLaunchImageCandidateCount forKey:v11];
}

- (XBApplicationLaunchCompatibilityInfo)initWithBundle:(id)bundle
{
  v112 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  v109.receiver = self;
  v109.super_class = XBApplicationLaunchCompatibilityInfo;
  v5 = [(XBApplicationLaunchCompatibilityInfo *)&v109 init];
  v85 = v5;
  if (v5)
  {
    v6 = v5;
    bundleIdentifier = [bundleCopy bundleIdentifier];
    v8 = [bundleIdentifier copy];
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = v8;

    bundlePath = [bundleCopy bundlePath];
    v11 = [bundlePath copy];
    bundlePath = v6->_bundlePath;
    v6->_bundlePath = v11;

    infoDictionary = [bundleCopy infoDictionary];
    v14 = [infoDictionary mutableCopy];

    localizedInfoDictionary = [bundleCopy localizedInfoDictionary];
    [v14 addEntriesFromDictionary:localizedInfoDictionary];

    array = [MEMORY[0x277CBEB18] array];
    v17 = [v14 valueForKey:@"UILaunchStoryboardName"];
    if ([v17 length])
    {
      v107 = v17;
      v108 = 0;
      v18 = _XBInterfaceWithNameExistsInBundle(&v107, bundleCopy, &v108);
      v77 = v107;

      if (v18)
      {
        v19 = [XBLaunchInterface alloc];
        v20 = [(XBLaunchInterface *)v19 initWithType:v108 name:v77 identifier:@"__from_UILaunchStoryboardName__" urlSchemes:0 isDefault:1];
        defaultInterface = v85->_defaultInterface;
        v85->_defaultInterface = v20;

        [(NSArray *)array addObject:v85->_defaultInterface];
      }
    }

    else
    {
      v77 = v17;
    }

    v22 = [v14 valueForKey:@"UILaunchScreen"];
    objc_opt_class();
    v78 = v22;
    if (objc_opt_isKindOfClass())
    {
      v23 = v85->_defaultInterface;
      if (v23)
      {
        [(XBLaunchInterface *)v23 set_default:0];
      }

      v24 = [[XBLaunchInterfaceConfiguration alloc] initWithConfigurationDictionary:v22];
      v25 = [[XBLaunchInterface alloc] initWithConfiguration:v24 identifier:@"__from_UILaunchStoryboardName__" urlSchemes:0 isDefault:1];
      v26 = v85->_defaultInterface;
      v85->_defaultInterface = v25;

      [(NSArray *)array addObject:v85->_defaultInterface];
    }

    v27 = [v14 valueForKey:@"UILaunchStoryboards"];
    v28 = v27;
    v91 = array;
    v84 = bundleCopy;
    v75 = v27;
    v76 = v14;
    if (v27)
    {
      v29 = [v27 valueForKey:@"UILaunchStoryboardDefinitions"];
      v83 = [v28 valueForKey:@"UIURLToLaunchStoryboardAssociations"];
      v82 = [v28 valueForKey:@"UIDefaultLaunchStoryboard"];
      v89 = [MEMORY[0x277CBEB58] set];
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      v106 = 0u;
      v30 = v29;
      v31 = [v30 countByEnumeratingWithState:&v103 objects:v111 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v104;
        v86 = v30;
        do
        {
          for (i = 0; i != v32; ++i)
          {
            if (*v104 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v103 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v108 = 0;
              v36 = [v35 valueForKey:@"UILaunchStoryboardFile"];
              v37 = [v35 valueForKey:@"UILaunchStoryboardIdentifier"];
              if ([v89 containsObject:v37])
              {
                v38 = v36;
              }

              else
              {
                v102 = v36;
                v39 = _XBInterfaceWithNameExistsInBundle(&v102, bundleCopy, &v108);
                v38 = v102;

                if (v39)
                {
                  v40 = [v37 isEqualToString:v82];
                  array2 = [MEMORY[0x277CBEB18] array];
                  v99[0] = MEMORY[0x277D85DD0];
                  v99[1] = 3221225472;
                  v99[2] = __55__XBApplicationLaunchCompatibilityInfo_initWithBundle___block_invoke;
                  v99[3] = &unk_279CF9180;
                  v42 = v37;
                  v100 = v42;
                  v43 = array2;
                  v101 = v43;
                  [v83 enumerateKeysAndObjectsUsingBlock:v99];
                  v44 = [XBLaunchInterface alloc];
                  v45 = [(XBLaunchInterface *)v44 initWithType:v108 name:v38 identifier:v42 urlSchemes:v43 isDefault:v40];
                  v46 = v42;
                  v30 = v86;
                  [v89 addObject:v46];
                  [(NSArray *)v91 addObject:v45];
                  if (v40)
                  {
                    v47 = v85;
                    if (v85->_defaultInterface)
                    {
                      v80 = [XBLaunchInterface alloc];
                      type = [(XBLaunchInterface *)v85->_defaultInterface type];
                      name = [(XBLaunchInterface *)v85->_defaultInterface name];
                      identifier = [(XBLaunchInterface *)v85->_defaultInterface identifier];
                      urlSchemes = [(XBLaunchInterface *)v85->_defaultInterface urlSchemes];
                      v81 = [(XBLaunchInterface *)v80 initWithType:type name:name identifier:identifier urlSchemes:urlSchemes isDefault:0];

                      v47 = v85;
                      v51 = [(NSArray *)v91 indexOfObjectIdenticalTo:v85->_defaultInterface];
                      if (v51 == 0x7FFFFFFFFFFFFFFFLL)
                      {
                        [XBApplicationLaunchCompatibilityInfo initWithBundle:];
                      }

                      [(NSArray *)v91 replaceObjectAtIndex:v51 withObject:v81];

                      v30 = v86;
                    }

                    objc_storeStrong(&v47->_defaultInterface, v45);
                  }

                  bundleCopy = v84;
                }
              }
            }
          }

          v32 = [v30 countByEnumeratingWithState:&v103 objects:v111 count:16];
        }

        while (v32);
      }

      v28 = v75;
      v14 = v76;
      array = v91;
    }

    v52 = [v14 valueForKey:@"UILaunchScreens"];
    v53 = v52;
    if (v52)
    {
      v54 = [v52 valueForKey:@"UILaunchScreenDefinitions"];
      v90 = [v53 valueForKey:@"UIURLToLaunchScreenAssociations"];
      v88 = [v53 valueForKey:@"UIDefaultLaunchScreen"];
      v87 = [MEMORY[0x277CBEB58] set];
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v55 = v54;
      v56 = [v55 countByEnumeratingWithState:&v95 objects:v110 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v96;
        do
        {
          for (j = 0; j != v57; ++j)
          {
            if (*v96 != v58)
            {
              objc_enumerationMutation(v55);
            }

            v60 = *(*(&v95 + 1) + 8 * j);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v61 = [v60 valueForKey:@"UILaunchScreenIdentifier"];
              v62 = [v61 isEqualToString:v88];
              array3 = [MEMORY[0x277CBEB18] array];
              v92[0] = MEMORY[0x277D85DD0];
              v92[1] = 3221225472;
              v92[2] = __55__XBApplicationLaunchCompatibilityInfo_initWithBundle___block_invoke_2;
              v92[3] = &unk_279CF9180;
              v64 = v61;
              v93 = v64;
              v65 = array3;
              v94 = v65;
              [v90 enumerateKeysAndObjectsUsingBlock:v92];
              v66 = [[XBLaunchInterfaceConfiguration alloc] initWithConfigurationDictionary:v60];
              v67 = [[XBLaunchInterface alloc] initWithConfiguration:v66 identifier:v64 urlSchemes:v65 isDefault:v62];
              [v87 addObject:v64];
              [(NSArray *)v91 addObject:v67];
              if (v62)
              {
                v68 = v85->_defaultInterface;
                if (v68)
                {
                  [(XBLaunchInterface *)v68 set_default:0];
                }

                objc_storeStrong(&v85->_defaultInterface, v67);
              }
            }
          }

          v57 = [v55 countByEnumeratingWithState:&v95 objects:v110 count:16];
        }

        while (v57);
      }

      bundleCopy = v84;
      v28 = v75;
      v14 = v76;
      array = v91;
    }

    v69 = [v14 valueForKey:*MEMORY[0x277D767A8]];
    v70 = v69;
    if (v69)
    {
      v71 = [v69 isEqualToString:*MEMORY[0x277D767A0]];
    }

    else
    {
      v71 = 1;
    }

    v85->_launchesOpaque = v71;
    launchInterfaces = v85->_launchInterfaces;
    v85->_launchInterfaces = array;
    v73 = array;
  }

  return v85;
}

void __55__XBApplicationLaunchCompatibilityInfo_initWithBundle___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 isEqualToString:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v5];
  }
}

void __55__XBApplicationLaunchCompatibilityInfo_initWithBundle___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 isEqualToString:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v5];
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_bundleIdentifier withName:@"bundleIdentifier"];
  v5 = [v3 appendObject:self->_bundlePath withName:@"bundlePath"];
  v6 = [v3 appendObject:self->_sandboxPath withName:@"sandboxPath"];
  v7 = [v3 appendObject:self->_launchInterfaces withName:@"launchInterfaces"];
  v8 = [v3 appendBool:self->_launchesOpaque withName:@"launchesOpaque"];
  build = [v3 build];

  return build;
}

- (XBLaunchInterface)defaultLaunchInterface
{
  defaultInterface = self->_defaultInterface;
  if (!defaultInterface)
  {
    v4 = [(NSArray *)self->_launchInterfaces bs_firstObjectPassingTest:&__block_literal_global_0];
    v5 = self->_defaultInterface;
    self->_defaultInterface = v4;

    defaultInterface = self->_defaultInterface;
  }

  return defaultInterface;
}

- (id)launchInterfaceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    launchInterfaces = self->_launchInterfaces;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __70__XBApplicationLaunchCompatibilityInfo_launchInterfaceWithIdentifier___block_invoke;
    v8[3] = &unk_279CF91C8;
    v9 = identifierCopy;
    v6 = [(NSArray *)launchInterfaces bs_firstObjectPassingTest:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t __70__XBApplicationLaunchCompatibilityInfo_launchInterfaceWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)launchInterfaceIdentifierForRequest:(id)request
{
  requestCopy = request;
  launchInterfaceIdentifier = [requestCopy launchInterfaceIdentifier];
  v6 = [(XBApplicationLaunchCompatibilityInfo *)self launchInterfaceWithIdentifier:launchInterfaceIdentifier];

  identifier = [v6 identifier];
  v8 = [identifier length];

  if (!v8)
  {
    urlSchemeName = [requestCopy urlSchemeName];
    if ([urlSchemeName length])
    {
      launchInterfaces = self->_launchInterfaces;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __76__XBApplicationLaunchCompatibilityInfo_launchInterfaceIdentifierForRequest___block_invoke;
      v17[3] = &unk_279CF91C8;
      v18 = urlSchemeName;
      v11 = [(NSArray *)launchInterfaces bs_firstObjectPassingTest:v17];

      v6 = v11;
    }
  }

  identifier2 = [v6 identifier];
  v13 = [identifier2 length];

  if (!v13)
  {
    defaultLaunchInterface = [(XBApplicationLaunchCompatibilityInfo *)self defaultLaunchInterface];

    v6 = defaultLaunchInterface;
  }

  identifier3 = [v6 identifier];

  return identifier3;
}

uint64_t __76__XBApplicationLaunchCompatibilityInfo_launchInterfaceIdentifierForRequest___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 urlSchemes];
  v4 = [v3 containsObject:*(a1 + 32)];

  return v4;
}

- (BOOL)launchInterfaceExistsForScheme:(id)scheme
{
  schemeCopy = scheme;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  launchInterfaces = self->_launchInterfaces;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __71__XBApplicationLaunchCompatibilityInfo_launchInterfaceExistsForScheme___block_invoke;
  v8[3] = &unk_279CF91F0;
  v6 = schemeCopy;
  v9 = v6;
  v10 = &v11;
  [(NSArray *)launchInterfaces enumerateObjectsUsingBlock:v8];
  LOBYTE(launchInterfaces) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return launchInterfaces;
}

void __71__XBApplicationLaunchCompatibilityInfo_launchInterfaceExistsForScheme___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 urlSchemes];
  v7 = [v6 containsObject:*(a1 + 32)];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)initWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:@"[coder allowsKeyedCoding]" object:? file:? lineNumber:? description:?];
}

- (void)encodeWithCoder:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"[coder allowsKeyedCoding]" object:? file:? lineNumber:? description:?];
}

- (void)initWithBundle:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end