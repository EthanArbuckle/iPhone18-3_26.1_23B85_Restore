@interface TRINamespaceDescriptor
+ (BOOL)removeDescriptorWithNamespaceName:(id)name fromDirectory:(id)directory;
+ (id)descriptorPathForNamespaceName:(id)name fromDirectory:(id)directory;
+ (id)descriptorsForDirectory:(id)directory filterBlock:(id)block;
+ (id)factorsURLFromPath:(id)path;
+ (id)loadFromFile:(id)file;
+ (id)loadWithNamespaceName:(id)name fromDirectory:(id)directory;
+ (void)enumerateDescriptorsInDirectory:(id)directory block:(id)block;
- (BOOL)_isEqualToNamespaceDescriptor:(id)descriptor;
- (BOOL)_upgradeNCVsArePositiveIntegers:(id)integers;
- (BOOL)_upgradeNCVsIsValid:(id)valid;
- (BOOL)isEqual:(id)equal;
- (BOOL)removeFromDirectory:(id)directory;
- (BOOL)saveToDirectory:(id)directory;
- (BOOL)writeToFile:(id)file;
- (TRINamespaceDescriptor)initWithDictionary:(id)dictionary;
- (TRINamespaceDescriptor)initWithNamespaceName:(id)name downloadNCV:(unsigned int)v optionalParams:(id)params;
- (id)dictionary;
- (unint64_t)hash;
@end

@implementation TRINamespaceDescriptor

+ (id)descriptorPathForNamespaceName:(id)name fromDirectory:(id)directory
{
  v42 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  directoryCopy = directory;
  v7 = objc_autoreleasePoolPush();
  location = 0;
  v8 = [nameCopy triSanitizedPathComponentWithMaxLength:128 addHash:1 error:&location];
  if (v8)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"NamespaceDescriptor.%@.plist", v8];
    v11 = [directoryCopy stringByAppendingPathComponent:v10];

    if (-[NSObject fileExistsAtPath:](defaultManager, "fileExistsAtPath:", v11) || (v12 = [MEMORY[0x277D73B50] namespaceIdFromName:nameCopy], !v12))
    {
      v16 = v11;
LABEL_30:

      goto LABEL_31;
    }

    v13 = v12;
    v35 = 0;
    if ([defaultManager fileExistsAtPath:directoryCopy isDirectory:&v35])
    {
      if ((v35 & 1) == 0)
      {
        v15 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v39 = directoryCopy;
          _os_log_error_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_ERROR, "Tried to look for namespace descriptors at this path, but it is a file and not a directory: %@", buf, 0xCu);
        }

        goto LABEL_29;
      }

      v29 = v11;
      obj = location;
      v14 = [defaultManager contentsOfDirectoryAtPath:directoryCopy error:&obj];
      objc_storeStrong(&location, obj);
      if (!v14)
      {
        v15 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v39 = directoryCopy;
          v40 = 2112;
          v41 = location;
          _os_log_error_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_ERROR, "cannot access files in directory: %@ -- %@", buf, 0x16u);
        }

        v11 = v29;
LABEL_29:

        v16 = 0;
        goto LABEL_30;
      }
    }

    else
    {
      v29 = v11;
      v14 = MEMORY[0x277CBEBF8];
    }

    v28 = v7;
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.Trial.NamespaceDescriptor.%d.", v13];
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.Trial.NamespaceDescriptor.%@.", nameCopy];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v19 = v14;
    v20 = [v19 countByEnumeratingWithState:&v30 objects:v37 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v31;
      v27 = directoryCopy;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v31 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v30 + 1) + 8 * i);
          if ([v24 hasPrefix:v17] & 1) != 0 || (objc_msgSend(v24, "hasPrefix:", nameCopy))
          {
            directoryCopy = v27;
            v16 = [v27 stringByAppendingPathComponent:v24];

            goto LABEL_26;
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v30 objects:v37 count:16];
        directoryCopy = v27;
        if (v21)
        {
          continue;
        }

        break;
      }
    }

    v16 = v29;
LABEL_26:

    v7 = v28;
    v11 = v29;
    goto LABEL_30;
  }

  defaultManager = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v39 = nameCopy;
    v40 = 2112;
    v41 = location;
    _os_log_error_impl(&dword_22EA6B000, defaultManager, OS_LOG_TYPE_ERROR, "could not sanitize namespace %@ -- %@", buf, 0x16u);
  }

  v16 = 0;
LABEL_31:

  objc_autoreleasePoolPop(v7);
  v25 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)loadFromFile:(id)file
{
  v20 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v4 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v17 = fileCopy;
    _os_log_debug_impl(&dword_22EA6B000, v4, OS_LOG_TYPE_DEBUG, "Loading namespace descriptor from path: %@", buf, 0xCu);
  }

  if (!fileCopy)
  {
    v9 = 0;
    goto LABEL_17;
  }

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:fileCopy isDirectory:0];
  v15 = 0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v5 error:&v15];
  v7 = v15;
  v8 = v7;
  if (!v6)
  {
    if (v7)
    {
      domain = [v7 domain];
      if ([domain isEqualToString:*MEMORY[0x277CCA050]])
      {
        code = [v8 code];

        if (code == 260)
        {
LABEL_15:
          v9 = 0;
          goto LABEL_16;
        }
      }

      else
      {
      }
    }

    v12 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v8;
      _os_log_error_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_ERROR, "failed to parse dictionary from file: %@ (%@)", buf, 0x16u);
    }

    goto LABEL_15;
  }

  v9 = [[TRINamespaceDescriptor alloc] initWithDictionary:v6];
LABEL_16:

LABEL_17:
  v13 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)loadWithNamespaceName:(id)name fromDirectory:(id)directory
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [self descriptorPathForNamespaceName:nameCopy fromDirectory:directory];
  v8 = [self loadFromFile:v7];

  if (v8 && ([v8 namespaceName], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(nameCopy, "isEqualToString:", v9), v9, (v10 & 1) == 0))
  {
    v12 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      namespaceName = [v8 namespaceName];
      v16 = 138412546;
      v17 = nameCopy;
      v18 = 2112;
      v19 = namespaceName;
      _os_log_error_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_ERROR, "namespace descriptor loaded from file has unexpected namespace name: %@ != %@", &v16, 0x16u);
    }

    v11 = 0;
  }

  else
  {
    v11 = v8;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (TRINamespaceDescriptor)initWithNamespaceName:(id)name downloadNCV:(unsigned int)v optionalParams:(id)params
{
  v30 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  paramsCopy = params;
  if (!paramsCopy)
  {
    paramsCopy = objc_opt_new();
  }

  v25.receiver = self;
  v25.super_class = TRINamespaceDescriptor;
  v11 = [(TRINamespaceDescriptor *)&v25 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_namespaceName, name);
    factorsURL = [paramsCopy factorsURL];
    factorsURL = v12->_factorsURL;
    v12->_factorsURL = factorsURL;

    appContainer = [paramsCopy appContainer];
    appContainer = v12->_appContainer;
    v12->_appContainer = appContainer;

    v12->_downloadNCV = v;
    upgradeNCVs = [paramsCopy upgradeNCVs];
    if (upgradeNCVs && ![(TRINamespaceDescriptor *)v12 _upgradeNCVsIsValid:upgradeNCVs])
    {
      v20 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v27 = @"Namespace Upgrade Compatibility Versions";
        v28 = 2112;
        v29 = upgradeNCVs;
        _os_log_error_impl(&dword_22EA6B000, v20, OS_LOG_TYPE_ERROR, "%@ %@ is not valid. Setting it to nil", buf, 0x16u);
      }

      upgradeNCVs = v12->_upgradeNCVs;
      v12->_upgradeNCVs = 0;
    }

    else
    {
      v18 = upgradeNCVs;
      upgradeNCVs = v12->_upgradeNCVs;
      v12->_upgradeNCVs = v18;
    }

    v12->_cloudKitContainerId = [paramsCopy cloudKitContainerId];
    resourceAttributionIdentifier = [paramsCopy resourceAttributionIdentifier];
    resourceAttributionIdentifier = v12->_resourceAttributionIdentifier;
    v12->_resourceAttributionIdentifier = resourceAttributionIdentifier;

    v12->_expensiveNetworkingAllowed = [paramsCopy expensiveNetworkingAllowed];
    v12->_enableFetchDuringSetupAssistant = [paramsCopy enableFetchDuringSetupAssistant];
    v12->_purgeabilityLevel = [paramsCopy purgeabilityLevel];
    v12->_availableToRootUser = [paramsCopy availableToRootUser];
    v12->_optedOutOfDefaults = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v12;
}

- (TRINamespaceDescriptor)initWithDictionary:(id)dictionary
{
  v102 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"Namespace Compatibility Version"];
  unsignedIntValue = [v6 unsignedIntValue];

  v84 = [dictionaryCopy objectForKeyedSubscript:@"Namespace Name"];
  if (!v84)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"Namespace Id"];
    if (!v8)
    {
      v9 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_FAULT, "failed to instantiate namespace descriptor: missing namespace", buf, 2u);
      }

      v8 = &unk_28436F998;
    }

    v84 = [MEMORY[0x277D73B50] namespaceNameFromId:{objc_msgSend(v8, "unsignedIntValue")}];
  }

  v10 = [dictionaryCopy objectForKeyedSubscript:@"App Container Id"];
  v83 = v10;
  if (v10)
  {
    v11 = v10;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"App Container Type"];
    if (!v12)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceDescriptor.m" lineNumber:182 description:@"app container id provided but unspecified container type"];
    }

    v85 = +[TRIAppContainer containerWithIdentifier:type:](TRIAppContainer, "containerWithIdentifier:type:", v11, [v12 integerValue]);
  }

  else
  {
    v85 = 0;
  }

  v13 = [dictionaryCopy objectForKeyedSubscript:@"Factor Path"];
  v82 = v13;
  if (v13)
  {
    v14 = v13;
    v15 = v13;
    if ([v13 hasPrefix:@"/"])
    {
      v15 = [TRIStandardPaths resolveHardCodedPath:v14];
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v17 = [defaultManager fileExistsAtPath:v15];

    if (v17)
    {
      if (v15)
      {
LABEL_17:
        v18 = [TRINamespaceDescriptor factorsURLFromPath:v15];
        goto LABEL_28;
      }
    }

    else
    {
      lastPathComponent = [v15 lastPathComponent];
      v20 = objc_alloc(MEMORY[0x277CCACA8]);
      v21 = v15;
      stringByDeletingLastPathComponent = [v15 stringByDeletingLastPathComponent];
      v23 = [v20 initWithFormat:@"%@/Resources", stringByDeletingLastPathComponent];
      v24 = [v23 stringByAppendingPathComponent:lastPathComponent];

      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      LODWORD(v23) = [defaultManager2 fileExistsAtPath:v24];

      if (v23)
      {
        v26 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v97 = v84;
          v98 = 2112;
          v99 = v21;
          v100 = 2112;
          v101 = v24;
          _os_log_impl(&dword_22EA6B000, v26, OS_LOG_TYPE_INFO, "Found invalid factors path for %@: %@. Changing it to be %@", buf, 0x20u);
        }

        v15 = v24;
      }

      else
      {
        v15 = v21;
      }

      if (v15)
      {
        goto LABEL_17;
      }
    }

    v27 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22EA6B000, v27, OS_LOG_TYPE_ERROR, "Unable to derive factors URL without a path.", buf, 2u);
    }
  }

  v18 = 0;
  v15 = 0;
LABEL_28:
  v28 = [dictionaryCopy objectForKeyedSubscript:@"ResourceAttributionBundleIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = v28;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = v28;
      v31 = [v30 objectForKeyedSubscript:@"iOS"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v32 = v31) == 0)
      {
        v33 = [v30 objectForKeyedSubscript:@"default"];

        v32 = v33;
      }

      v29 = v32;
    }

    else
    {
      v29 = 0;
    }
  }

  v34 = [dictionaryCopy objectForKeyedSubscript:@"Namespace Upgrade Compatibility Versions"];
  objc_opt_class();
  v80 = v28;
  v81 = v15;
  if (objc_opt_isKindOfClass())
  {
    selfCopy5 = self;
    v36 = v34;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v72 = v29;
      v74 = v18;
      v76 = unsignedIntValue;
      selfCopy2 = self;
      v37 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v34, "count")}];
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v38 = v34;
      v39 = [v38 countByEnumeratingWithState:&v90 objects:v95 count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v91;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v91 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(&v90 + 1) + 8 * i), "integerValue")}];
            [v37 addObject:v43];
          }

          v40 = [v38 countByEnumeratingWithState:&v90 objects:v95 count:16];
        }

        while (v40);
      }

      v36 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v37];
      selfCopy5 = selfCopy2;
      unsignedIntValue = v76;
      v29 = v72;
      v18 = v74;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = [v34 componentsSeparatedByString:{@", "}];
        if (v44)
        {
          v73 = v29;
          v75 = v18;
          v77 = unsignedIntValue;
          selfCopy3 = self;
          v45 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v44, "count")}];
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v71 = v44;
          v46 = v44;
          v47 = [v46 countByEnumeratingWithState:&v86 objects:v94 count:16];
          if (v47)
          {
            v48 = v47;
            v49 = *v87;
            do
            {
              for (j = 0; j != v48; ++j)
              {
                if (*v87 != v49)
                {
                  objc_enumerationMutation(v46);
                }

                v51 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(*(*(&v86 + 1) + 8 * j), "integerValue")}];
                [v45 addObject:v51];
              }

              v48 = [v46 countByEnumeratingWithState:&v86 objects:v94 count:16];
            }

            while (v48);
          }

          v36 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:v45];
          selfCopy5 = selfCopy3;
          unsignedIntValue = v77;
          v29 = v73;
          v18 = v75;
          v44 = v71;
        }

        else
        {
          selfCopy5 = self;
          v36 = 0;
        }
      }

      else
      {
        selfCopy5 = self;
        v36 = 0;
      }
    }
  }

  v52 = objc_opt_new();
  v53 = v18;
  [v52 setFactorsURL:v18];
  [v52 setAppContainer:v85];
  [v52 setUpgradeNCVs:v36];
  [v52 setResourceAttributionIdentifier:v29];
  v54 = [dictionaryCopy objectForKeyedSubscript:@"CloudKit Container Id"];
  v55 = v54;
  v56 = v29;
  if (v54)
  {
    unsignedIntValue2 = [v54 unsignedIntValue];
  }

  else
  {
    unsignedIntValue2 = 0;
  }

  [v52 setCloudKitContainerId:unsignedIntValue2];
  v58 = [dictionaryCopy objectForKeyedSubscript:@"Expensive Networking Allowed"];

  if (v58)
  {
    v59 = [dictionaryCopy objectForKeyedSubscript:@"Expensive Networking Allowed"];
    [v52 setExpensiveNetworkingAllowed:{objc_msgSend(v59, "BOOLValue")}];
  }

  v60 = [dictionaryCopy objectForKeyedSubscript:@"Enable Fetch During Setup Assistant"];

  if (v60)
  {
    v61 = [dictionaryCopy objectForKeyedSubscript:@"Enable Fetch During Setup Assistant"];
    [v52 setEnableFetchDuringSetupAssistant:{objc_msgSend(v61, "BOOLValue")}];
  }

  v62 = [dictionaryCopy objectForKeyedSubscript:@"Purgeability Level"];

  if (v62)
  {
    v63 = [dictionaryCopy objectForKeyedSubscript:@"Purgeability Level"];
    [v52 setPurgeabilityLevel:{objc_msgSend(v63, "unsignedIntValue")}];
  }

  v64 = [dictionaryCopy objectForKeyedSubscript:@"Available To Root User"];

  if (v64)
  {
    v65 = [dictionaryCopy objectForKeyedSubscript:@"Available To Root User"];
    [v52 setAvailableToRootUser:{objc_msgSend(v65, "BOOLValue")}];
  }

  v66 = [(TRINamespaceDescriptor *)selfCopy5 initWithNamespaceName:v84 downloadNCV:unsignedIntValue optionalParams:v52];
  v67 = v66;
  if (!v82)
  {
    v66->_optedOutOfDefaults = 1;
  }

  v68 = *MEMORY[0x277D85DE8];
  return v67;
}

+ (id)factorsURLFromPath:(id)path
{
  pathCopy = path;
  if (!pathCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceDescriptor.m" lineNumber:320 description:{@"Invalid parameter not satisfying: %@", @"factorsPath"}];
  }

  v7 = [MEMORY[0x277CBEBC0] triParseURLFromString:pathCopy isDirectory:0];
  pathExtension = [v7 pathExtension];
  v9 = [pathExtension isEqualToString:@"bin"];

  if ((v9 & 1) == 0)
  {
    stringByDeletingPathExtension = [pathCopy stringByDeletingPathExtension];
    v11 = [stringByDeletingPathExtension stringByAppendingString:@"_fbs.bin"];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v13 = [defaultManager fileExistsAtPath:v11];

    if (v13)
    {
      v14 = [MEMORY[0x277CBEBC0] triParseURLFromString:v11 isDirectory:0];

      v7 = v14;
    }
  }

  return v7;
}

- (id)dictionary
{
  v29[4] = *MEMORY[0x277D85DE8];
  v28[0] = @"Namespace Name";
  namespaceName = [(TRINamespaceDescriptor *)self namespaceName];
  v29[0] = namespaceName;
  v28[1] = @"Namespace Compatibility Version";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[TRINamespaceDescriptor downloadNCV](self, "downloadNCV")}];
  v29[1] = v4;
  v28[2] = @"CloudKit Container Id";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{-[TRINamespaceDescriptor cloudKitContainerId](self, "cloudKitContainerId")}];
  v29[2] = v5;
  v28[3] = @"Purgeability Level";
  v6 = [MEMORY[0x277CCABB0] numberWithInt:{-[TRINamespaceDescriptor purgeabilityLevel](self, "purgeabilityLevel")}];
  v29[3] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];
  v8 = [v7 mutableCopy];

  factorsURL = [(TRINamespaceDescriptor *)self factorsURL];

  if (factorsURL)
  {
    factorsURL2 = [(TRINamespaceDescriptor *)self factorsURL];
    absoluteString = [factorsURL2 absoluteString];
    [v8 setObject:absoluteString forKeyedSubscript:@"Factor Path"];
  }

  appContainer = [(TRINamespaceDescriptor *)self appContainer];

  if (appContainer)
  {
    appContainer2 = [(TRINamespaceDescriptor *)self appContainer];
    identifier = [appContainer2 identifier];
    [v8 setObject:identifier forKeyedSubscript:@"App Container Id"];

    v15 = MEMORY[0x277CCABB0];
    appContainer3 = [(TRINamespaceDescriptor *)self appContainer];
    v17 = [v15 numberWithInteger:{objc_msgSend(appContainer3, "type")}];
    [v8 setObject:v17 forKeyedSubscript:@"App Container Type"];
  }

  resourceAttributionIdentifier = [(TRINamespaceDescriptor *)self resourceAttributionIdentifier];

  if (resourceAttributionIdentifier)
  {
    resourceAttributionIdentifier2 = [(TRINamespaceDescriptor *)self resourceAttributionIdentifier];
    [v8 setObject:resourceAttributionIdentifier2 forKeyedSubscript:@"ResourceAttributionBundleIdentifier"];
  }

  upgradeNCVs = [(TRINamespaceDescriptor *)self upgradeNCVs];

  if (upgradeNCVs)
  {
    upgradeNCVs2 = [(TRINamespaceDescriptor *)self upgradeNCVs];
    allObjects = [upgradeNCVs2 allObjects];
    [v8 setObject:allObjects forKeyedSubscript:@"Namespace Upgrade Compatibility Versions"];
  }

  if ([(TRINamespaceDescriptor *)self expensiveNetworkingAllowed])
  {
    v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[TRINamespaceDescriptor expensiveNetworkingAllowed](self, "expensiveNetworkingAllowed")}];
    [v8 setObject:v23 forKeyedSubscript:@"Expensive Networking Allowed"];
  }

  if ([(TRINamespaceDescriptor *)self enableFetchDuringSetupAssistant])
  {
    v24 = [MEMORY[0x277CCABB0] numberWithBool:{-[TRINamespaceDescriptor enableFetchDuringSetupAssistant](self, "enableFetchDuringSetupAssistant")}];
    [v8 setObject:v24 forKeyedSubscript:@"Enable Fetch During Setup Assistant"];
  }

  if ([(TRINamespaceDescriptor *)self availableToRootUser])
  {
    v25 = [MEMORY[0x277CCABB0] numberWithBool:{-[TRINamespaceDescriptor availableToRootUser](self, "availableToRootUser")}];
    [v8 setObject:v25 forKeyedSubscript:@"Available To Root User"];
  }

  v26 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)writeToFile:(id)file
{
  v25 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  stringByDeletingLastPathComponent = [fileCopy stringByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v20 = 0;
  v7 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v20];
  v8 = v20;

  if (v7)
  {
    v9 = MEMORY[0x277CCAC58];
    dictionary = [(TRINamespaceDescriptor *)self dictionary];
    v19 = 0;
    v11 = [v9 dataWithPropertyList:dictionary format:100 options:0 error:&v19];
    v12 = v19;

    if (v11)
    {
      v18 = v12;
      v13 = [v11 writeToFile:fileCopy options:268435457 error:&v18];
      v8 = v18;

      if (v13)
      {
        v14 = 1;
        goto LABEL_14;
      }

      v15 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = fileCopy;
        v23 = 2112;
        v24 = v8;
        _os_log_error_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_ERROR, "failed to write namespace descriptor to file: %@ -- %@", buf, 0x16u);
      }

      v12 = v8;
    }

    else
    {
      v15 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v12;
        _os_log_error_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_ERROR, "failed to serialize namespace descriptor -- %@", buf, 0xCu);
      }
    }

    v14 = 0;
    v8 = v12;
    goto LABEL_14;
  }

  v11 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v22 = stringByDeletingLastPathComponent;
    v23 = 2112;
    v24 = v8;
    _os_log_error_impl(&dword_22EA6B000, v11, OS_LOG_TYPE_ERROR, "failed to create directory for namespace descriptor: %@ -- %@", buf, 0x16u);
  }

  v14 = 0;
LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)saveToDirectory:(id)directory
{
  directoryCopy = directory;
  namespaceName = [(TRINamespaceDescriptor *)self namespaceName];
  v6 = [TRINamespaceDescriptor descriptorPathForNamespaceName:namespaceName fromDirectory:directoryCopy];

  if (v6)
  {
    v7 = [(TRINamespaceDescriptor *)self writeToFile:v6];
  }

  else
  {
    v8 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v10 = 0;
      _os_log_error_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_ERROR, "cannot save namespace descriptor: path is nil", v10, 2u);
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)removeFromDirectory:(id)directory
{
  directoryCopy = directory;
  namespaceName = [(TRINamespaceDescriptor *)self namespaceName];
  v6 = [TRINamespaceDescriptor removeDescriptorWithNamespaceName:namespaceName fromDirectory:directoryCopy];

  return v6;
}

- (BOOL)_upgradeNCVsIsValid:(id)valid
{
  v13 = *MEMORY[0x277D85DE8];
  validCopy = valid;
  v5 = [(TRINamespaceDescriptor *)self _upgradeNCVsArePositiveIntegers:validCopy];
  if (!v5)
  {
    v6 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412546;
      v10 = @"Namespace Upgrade Compatibility Versions";
      v11 = 2112;
      v12 = validCopy;
      _os_log_error_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_ERROR, "%@ %@ must consist of positive integers", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)_upgradeNCVsArePositiveIntegers:(id)integers
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  integersCopy = integers;
  v4 = [integersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(integersCopy);
        }

        if ([*(*(&v11 + 1) + 8 * i) intValue] < 1)
        {
          v8 = 0;
          goto LABEL_11;
        }
      }

      v5 = [integersCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 1;
LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)removeDescriptorWithNamespaceName:(id)name fromDirectory:(id)directory
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCAA00];
  directoryCopy = directory;
  nameCopy = name;
  defaultManager = [v5 defaultManager];
  v9 = [TRINamespaceDescriptor descriptorPathForNamespaceName:nameCopy fromDirectory:directoryCopy];

  if (v9)
  {
    v17 = 0;
    if ([defaultManager fileExistsAtPath:v9 isDirectory:&v17])
    {
      if (v17 == 1)
      {
        v10 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v19 = v9;
          _os_log_error_impl(&dword_22EA6B000, v10, OS_LOG_TYPE_ERROR, "expected file not directory at path %@", buf, 0xCu);
        }
      }

      v16 = 0;
      v11 = [defaultManager removeItemAtPath:v9 error:&v16];
      v12 = v16;
      if (v12)
      {
        v13 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v19 = v9;
          v20 = 2112;
          v21 = v12;
          _os_log_error_impl(&dword_22EA6B000, v13, OS_LOG_TYPE_ERROR, "failed to delete file %@ -- %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (id)descriptorsForDirectory:(id)directory filterBlock:(id)block
{
  directoryCopy = directory;
  blockCopy = block;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v7 = objc_opt_class();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__TRINamespaceDescriptor_descriptorsForDirectory_filterBlock___block_invoke;
  v11[3] = &unk_27885E5A0;
  v8 = blockCopy;
  v12 = v8;
  v13 = &v14;
  [v7 enumerateDescriptorsInDirectory:directoryCopy block:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

uint64_t __62__TRINamespaceDescriptor_descriptorsForDirectory_filterBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v14 = v3;
  if (!v4 || (v5 = (*(v4 + 16))(), v6 = v14, v5))
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    if (v8)
    {
      v9 = v8;
      v10 = *(v7 + 40);
      *(v7 + 40) = v9;
    }

    else
    {
      v11 = objc_opt_new();
      v12 = *(*(a1 + 40) + 8);
      v10 = *(v12 + 40);
      *(v12 + 40) = v11;
    }

    v5 = [*(*(*(a1 + 40) + 8) + 40) addObject:v14];
    v6 = v14;
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

+ (void)enumerateDescriptorsInDirectory:(id)directory block:(id)block
{
  v31 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  blockCopy = block;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v25 = 0;
  v8 = [defaultManager contentsOfDirectoryAtPath:directoryCopy error:&v25];
  v9 = v25;
  if (v8)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v19 = v9;
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          v16 = [directoryCopy stringByAppendingPathComponent:v14];
          v17 = [TRINamespaceDescriptor loadFromFile:v16];
          if (v17)
          {
            buf[0] = 0;
            blockCopy[2](blockCopy, v17, buf);
            if (buf[0])
            {

              objc_autoreleasePoolPop(v15);
              goto LABEL_15;
            }
          }

          objc_autoreleasePoolPop(v15);
        }

        v11 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_15:
      v9 = v19;
    }
  }

  else
  {
    obj = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v28 = directoryCopy;
      v29 = 2112;
      v30 = v9;
      _os_log_error_impl(&dword_22EA6B000, obj, OS_LOG_TYPE_ERROR, "failed to read contents of directory %@: %@", buf, 0x16u);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)_isEqualToNamespaceDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  namespaceName = [(TRINamespaceDescriptor *)self namespaceName];
  namespaceName2 = [descriptorCopy namespaceName];
  if ([namespaceName isEqualToString:namespaceName2])
  {
    factorsURL = [(TRINamespaceDescriptor *)self factorsURL];
    factorsURL2 = [descriptorCopy factorsURL];
    if (factorsURL != factorsURL2)
    {
      factorsURL3 = [descriptorCopy factorsURL];
      if (!factorsURL3)
      {
        LOBYTE(v13) = 0;
        goto LABEL_39;
      }

      v10 = factorsURL3;
      factorsURL4 = [(TRINamespaceDescriptor *)self factorsURL];
      factorsURL5 = [descriptorCopy factorsURL];
      if (![factorsURL4 triIsEqual:factorsURL5])
      {
        LOBYTE(v13) = 0;
LABEL_38:

        goto LABEL_39;
      }

      v41 = v10;
      v42 = factorsURL5;
      v43 = factorsURL4;
    }

    appContainer = [(TRINamespaceDescriptor *)self appContainer];
    appContainer2 = [descriptorCopy appContainer];
    if (appContainer == appContainer2)
    {
      v44 = appContainer;
    }

    else
    {
      appContainer3 = [descriptorCopy appContainer];
      if (!appContainer3)
      {
        LOBYTE(v13) = 0;
LABEL_22:

        goto LABEL_37;
      }

      v17 = appContainer3;
      v44 = appContainer;
      appContainer4 = [(TRINamespaceDescriptor *)self appContainer];
      appContainer5 = [descriptorCopy appContainer];
      if (([appContainer4 isEqualToContainer:appContainer5] & 1) == 0)
      {

        LOBYTE(v13) = 0;
        goto LABEL_37;
      }

      v38 = appContainer5;
      v39 = appContainer4;
      v40 = v17;
    }

    downloadNCV = [(TRINamespaceDescriptor *)self downloadNCV];
    if (downloadNCV != [descriptorCopy downloadNCV])
    {
      goto LABEL_33;
    }

    upgradeNCVs = [(TRINamespaceDescriptor *)self upgradeNCVs];
    upgradeNCVs2 = [descriptorCopy upgradeNCVs];
    if (upgradeNCVs == upgradeNCVs2)
    {
      v26 = upgradeNCVs;
    }

    else
    {
      upgradeNCVs3 = [descriptorCopy upgradeNCVs];
      if (!upgradeNCVs3)
      {
LABEL_32:

LABEL_33:
        v32 = 0;
        LOBYTE(v13) = 0;
LABEL_34:
        if (v44 != appContainer2)
        {

          LOBYTE(v13) = v32;
        }

LABEL_37:
        factorsURL5 = v42;
        factorsURL4 = v43;
        v10 = v41;
        if (factorsURL != factorsURL2)
        {
          goto LABEL_38;
        }

LABEL_39:

        goto LABEL_40;
      }

      v37 = upgradeNCVs3;
      upgradeNCVs4 = [(TRINamespaceDescriptor *)self upgradeNCVs];
      upgradeNCVs5 = [descriptorCopy upgradeNCVs];
      v36 = upgradeNCVs4;
      v25 = [upgradeNCVs4 isEqualToSet:upgradeNCVs5];
      v26 = upgradeNCVs;
      if (!v25)
      {
        LOBYTE(v13) = 0;
        goto LABEL_18;
      }
    }

    cloudKitContainerId = [(TRINamespaceDescriptor *)self cloudKitContainerId];
    if (cloudKitContainerId == [descriptorCopy cloudKitContainerId] && (v28 = -[TRINamespaceDescriptor expensiveNetworkingAllowed](self, "expensiveNetworkingAllowed"), v28 == objc_msgSend(descriptorCopy, "expensiveNetworkingAllowed")) && (v29 = -[TRINamespaceDescriptor enableFetchDuringSetupAssistant](self, "enableFetchDuringSetupAssistant"), v29 == objc_msgSend(descriptorCopy, "enableFetchDuringSetupAssistant")) && (v30 = -[TRINamespaceDescriptor purgeabilityLevel](self, "purgeabilityLevel"), v30 == objc_msgSend(descriptorCopy, "purgeabilityLevel")) && (v31 = -[TRINamespaceDescriptor availableToRootUser](self, "availableToRootUser"), v31 == objc_msgSend(descriptorCopy, "availableToRootUser")))
    {
      optedOutOfDefaults = [(TRINamespaceDescriptor *)self optedOutOfDefaults];
      v13 = optedOutOfDefaults ^ [descriptorCopy optedOutOfDefaults] ^ 1;
      v32 = v13;
      if (v26 != upgradeNCVs2)
      {
LABEL_18:

        appContainer = v44;
        if (v44 != appContainer2)
        {
        }

        goto LABEL_22;
      }
    }

    else
    {
      upgradeNCVs = v26;
      if (v26 != upgradeNCVs2)
      {

        goto LABEL_32;
      }

      v32 = 0;
      LOBYTE(v13) = 0;
    }

    goto LABEL_34;
  }

  LOBYTE(v13) = 0;
LABEL_40:

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(TRINamespaceDescriptor *)self _isEqualToNamespaceDescriptor:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  namespaceName = [(TRINamespaceDescriptor *)self namespaceName];
  v4 = [namespaceName hash];

  factorsURL = [(TRINamespaceDescriptor *)self factorsURL];
  if (factorsURL)
  {
    factorsURL2 = [(TRINamespaceDescriptor *)self factorsURL];
    v7 = [factorsURL2 hash];
  }

  else
  {
    v7 = 0;
  }

  appContainer = [(TRINamespaceDescriptor *)self appContainer];
  if (appContainer)
  {
    appContainer2 = [(TRINamespaceDescriptor *)self appContainer];
    v10 = [appContainer2 hash];
  }

  else
  {
    v10 = 0;
  }

  downloadNCV = [(TRINamespaceDescriptor *)self downloadNCV];
  upgradeNCVs = [(TRINamespaceDescriptor *)self upgradeNCVs];
  if (upgradeNCVs)
  {
    upgradeNCVs2 = [(TRINamespaceDescriptor *)self upgradeNCVs];
    v14 = [upgradeNCVs2 hash];
  }

  else
  {
    v14 = 0;
  }

  v15 = 37 * (37 * (v14 + 37 * (37 * (v10 + 37 * (v7 + 37 * v4)) + downloadNCV)) + [(TRINamespaceDescriptor *)self cloudKitContainerId]);
  v16 = 37 * (v15 + [(TRINamespaceDescriptor *)self expensiveNetworkingAllowed]);
  v17 = 37 * (v16 + [(TRINamespaceDescriptor *)self enableFetchDuringSetupAssistant]);
  v18 = 37 * (v17 + [(TRINamespaceDescriptor *)self purgeabilityLevel]);
  v19 = 37 * (v18 + [(TRINamespaceDescriptor *)self availableToRootUser]);
  return v19 + [(TRINamespaceDescriptor *)self optedOutOfDefaults]+ 0x27817226572713DLL;
}

@end