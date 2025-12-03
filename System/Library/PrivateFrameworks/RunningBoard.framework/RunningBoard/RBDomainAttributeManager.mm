@interface RBDomainAttributeManager
- (BOOL)areTargetPropertiesValidForContext:(id)context forAttributeWithDomain:(id)domain andName:(id)name;
- (BOOL)containsAttributeWithDomain:(id)domain andName:(id)name;
- (NSString)debugDescription;
- (NSString)stateCaptureTitle;
- (RBDomainAttributeManager)initWithDataProvider:(id)provider;
- (id)additionalRestrictionsForDomain:(id)domain andName:(id)name;
- (id)allEntitlements;
- (id)attributesForDomain:(id)domain andName:(id)name context:(id)context withError:(id *)error;
- (id)endowmentNamespaceForDomain:(id)domain andName:(id)name;
- (id)originatorEntitlementsForDomain:(id)domain andName:(id)name;
- (id)restrictionsForDomain:(id)domain andName:(id)name;
- (id)targetEntitlementsForDomain:(id)domain andName:(id)name;
- (uint64_t)_compareRestrictions:(void *)restrictions withContext:;
- (uint64_t)_compareTargetBundleProperties:(void *)properties withContext:;
- (void)_prepareAttributeTemplates;
@end

@implementation RBDomainAttributeManager

- (RBDomainAttributeManager)initWithDataProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = RBDomainAttributeManager;
  v6 = [(RBDomainAttributeManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataProvider, provider);
    [(RBDomainAttributeManager *)v7 _prepareAttributeTemplates];
  }

  return v7;
}

- (NSString)debugDescription
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  domainAttributeTemplatesByDomain = self->_domainAttributeTemplatesByDomain;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__RBDomainAttributeManager_debugDescription__block_invoke;
  v11[3] = &unk_279B33C90;
  v12 = v3;
  v5 = v3;
  [(NSDictionary *)domainAttributeTemplatesByDomain enumerateKeysAndObjectsUsingBlock:v11];
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = [objc_opt_class() description];
  v8 = [v5 description];
  v9 = [v6 initWithFormat:@"<%@|  domainAttributeTemplatesByDomain:%@>", v7, v8];

  return v9;
}

void __44__RBDomainAttributeManager_debugDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 entriesToStringWithIndent:2 debug:1];
  [v4 appendFormat:@"\n\t%@={\n%@\n\t}", v5, v6];
}

- (id)attributesForDomain:(id)domain andName:(id)name context:(id)context withError:(id *)error
{
  v60[1] = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  nameCopy = name;
  contextCopy = context;
  v13 = [(NSDictionary *)self->_domainAttributeTemplatesByDomain objectForKeyedSubscript:domainCopy];
  v14 = v13;
  if (v13)
  {
    v15 = [v13 objectForKeyedSubscript:nameCopy];
    if (v15)
    {
      array = [MEMORY[0x277CBEB18] array];
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      obj = [v15 attributeGroups];
      v17 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      if (!v17)
      {
        goto LABEL_35;
      }

      v18 = v17;
      v41 = v15;
      v42 = v14;
      v43 = nameCopy;
      v44 = domainCopy;
      v46 = *v52;
      v19 = obj;
      while (1)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v52 != v46)
          {
            objc_enumerationMutation(v19);
          }

          v21 = *(*(&v51 + 1) + 8 * i);
          if (!contextCopy)
          {
            goto LABEL_11;
          }

          targetBundleProperties = [*(*(&v51 + 1) + 8 * i) targetBundleProperties];
          if ([(RBDomainAttributeManager *)self _compareTargetBundleProperties:targetBundleProperties withContext:contextCopy])
          {
            restriction = [v21 restriction];
            v24 = [(RBDomainAttributeManager *)self _compareRestrictions:restriction withContext:contextCopy];

            if (!v24)
            {
              continue;
            }

LABEL_11:
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            targetBundleProperties = [v21 attributes];
            v25 = [targetBundleProperties countByEnumeratingWithState:&v47 objects:v55 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = contextCopy;
              selfCopy = self;
              v29 = *v48;
              do
              {
                for (j = 0; j != v26; ++j)
                {
                  if (*v48 != v29)
                  {
                    objc_enumerationMutation(targetBundleProperties);
                  }

                  v31 = *(*(&v47 + 1) + 8 * j);
                  if (v31)
                  {
                    v32 = [v31 copy];
                    [array addObject:v32];
                  }
                }

                v26 = [targetBundleProperties countByEnumeratingWithState:&v47 objects:v55 count:16];
              }

              while (v26);
              self = selfCopy;
              contextCopy = v27;
              v19 = obj;
            }
          }
        }

        v18 = [v19 countByEnumeratingWithState:&v51 objects:v56 count:16];
        if (!v18)
        {
          nameCopy = v43;
          domainCopy = v44;
          v15 = v41;
          v14 = v42;
          goto LABEL_35;
        }
      }
    }

    if (error)
    {
      v36 = MEMORY[0x277CCA9B8];
      v37 = *MEMORY[0x277D47050];
      v57 = *MEMORY[0x277CCA470];
      v58 = @"Could not find attribute name in domain plist";
      v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      *error = [v36 errorWithDomain:v37 code:2 userInfo:v38];
    }

    obj = rbs_assertion_log();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      [RBDomainAttributeManager attributesForDomain:nameCopy andName:domainCopy context:obj withError:?];
    }

    array = 0;
LABEL_35:
  }

  else
  {
    if (error)
    {
      v33 = MEMORY[0x277CCA9B8];
      v34 = *MEMORY[0x277D47050];
      v59 = *MEMORY[0x277CCA470];
      v60[0] = @"Could not find plist for domain attribute";
      v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
      *error = [v33 errorWithDomain:v34 code:2 userInfo:v35];
    }

    v15 = rbs_assertion_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [RBDomainAttributeManager attributesForDomain:domainCopy andName:v15 context:? withError:?];
    }

    array = 0;
  }

  v39 = *MEMORY[0x277D85DE8];

  return array;
}

- (uint64_t)_compareTargetBundleProperties:(void *)properties withContext:
{
  v5 = a2;
  propertiesCopy = properties;
  v7 = propertiesCopy;
  if (self)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 1;
    targetProperties = [propertiesCopy targetProperties];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __71__RBDomainAttributeManager__compareTargetBundleProperties_withContext___block_invoke;
    v12[3] = &unk_279B33CF8;
    v9 = targetProperties;
    v13 = v9;
    v15 = &v16;
    v14 = v7;
    [v5 enumerateKeysAndObjectsUsingBlock:v12];
    v10 = *(v17 + 24);

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (id)allEntitlements
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__RBDomainAttributeManager_allEntitlements__block_invoke;
  block[3] = &unk_279B32CB0;
  block[4] = self;
  if (allEntitlements_onceToken != -1)
  {
    dispatch_once(&allEntitlements_onceToken, block);
  }

  return allEntitlements_entitlements;
}

uint64_t __43__RBDomainAttributeManager_allEntitlements__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = allEntitlements_entitlements;
  allEntitlements_entitlements = v2;

  v4 = *(*(a1 + 32) + 8);

  return [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_19];
}

void __43__RBDomainAttributeManager_allEntitlements__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = allEntitlements_entitlements;
  v4 = a3;
  v5 = [v4 originatorEntitlements];
  v6 = [v5 allEntitlements];
  [v3 unionSet:v6];

  v7 = allEntitlements_entitlements;
  v8 = [v4 targetEntitlements];
  v9 = [v8 allEntitlements];
  [v7 unionSet:v9];

  v10 = allEntitlements_entitlements;
  v12 = [v4 restriction];

  v11 = [v12 allEntitlements];
  [v10 unionSet:v11];
}

- (id)originatorEntitlementsForDomain:(id)domain andName:(id)name
{
  domainAttributeTemplatesByDomain = self->_domainAttributeTemplatesByDomain;
  nameCopy = name;
  v7 = [(NSDictionary *)domainAttributeTemplatesByDomain objectForKeyedSubscript:domain];
  v8 = [v7 objectForKeyedSubscript:nameCopy];

  originatorEntitlements = [v8 originatorEntitlements];

  return originatorEntitlements;
}

- (id)targetEntitlementsForDomain:(id)domain andName:(id)name
{
  domainAttributeTemplatesByDomain = self->_domainAttributeTemplatesByDomain;
  nameCopy = name;
  v7 = [(NSDictionary *)domainAttributeTemplatesByDomain objectForKeyedSubscript:domain];
  v8 = [v7 objectForKeyedSubscript:nameCopy];

  targetEntitlements = [v8 targetEntitlements];

  return targetEntitlements;
}

- (id)additionalRestrictionsForDomain:(id)domain andName:(id)name
{
  domainAttributeTemplatesByDomain = self->_domainAttributeTemplatesByDomain;
  nameCopy = name;
  v7 = [(NSDictionary *)domainAttributeTemplatesByDomain objectForKeyedSubscript:domain];
  v8 = [v7 objectForKeyedSubscript:nameCopy];

  v9 = MEMORY[0x277CBEB98];
  additionalRestrictions = [v8 additionalRestrictions];
  allKeys = [additionalRestrictions allKeys];
  v12 = [v9 setWithArray:allKeys];

  return v12;
}

- (id)restrictionsForDomain:(id)domain andName:(id)name
{
  domainAttributeTemplatesByDomain = self->_domainAttributeTemplatesByDomain;
  nameCopy = name;
  v7 = [(NSDictionary *)domainAttributeTemplatesByDomain objectForKeyedSubscript:domain];
  v8 = [v7 objectForKeyedSubscript:nameCopy];

  restriction = [v8 restriction];

  return restriction;
}

- (id)endowmentNamespaceForDomain:(id)domain andName:(id)name
{
  domainAttributeTemplatesByDomain = self->_domainAttributeTemplatesByDomain;
  nameCopy = name;
  v7 = [(NSDictionary *)domainAttributeTemplatesByDomain objectForKeyedSubscript:domain];
  v8 = [v7 objectForKeyedSubscript:nameCopy];

  endowmentNamespace = [(RBDomainAttributeTemplate *)v8 endowmentNamespace];

  return endowmentNamespace;
}

- (BOOL)areTargetPropertiesValidForContext:(id)context forAttributeWithDomain:(id)domain andName:(id)name
{
  selfCopy = self;
  domainAttributeTemplatesByDomain = self->_domainAttributeTemplatesByDomain;
  nameCopy = name;
  contextCopy = context;
  v11 = [(NSDictionary *)domainAttributeTemplatesByDomain objectForKeyedSubscript:domain];
  v12 = [v11 objectForKeyedSubscript:nameCopy];

  targetBundleProperties = [v12 targetBundleProperties];
  LOBYTE(selfCopy) = [(RBDomainAttributeManager *)selfCopy _compareTargetBundleProperties:targetBundleProperties withContext:contextCopy];

  return selfCopy;
}

- (BOOL)containsAttributeWithDomain:(id)domain andName:(id)name
{
  domainAttributeTemplatesByDomain = self->_domainAttributeTemplatesByDomain;
  nameCopy = name;
  v7 = [(NSDictionary *)domainAttributeTemplatesByDomain objectForKeyedSubscript:domain];
  v8 = [v7 objectForKeyedSubscript:nameCopy];

  return v8 != 0;
}

- (NSString)stateCaptureTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

void __71__RBDomainAttributeManager__compareTargetBundleProperties_withContext___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  if ([v7 isEqualToString:@"SupportsBackgroundContentFetching"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [*(a1 + 32) supportsBackgroundContentFetching];
LABEL_22:
      v11 = v9;
      v12 = [v8 BOOLValue];
      goto LABEL_23;
    }

    v10 = rbs_general_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_58;
    }

LABEL_63:

    goto LABEL_64;
  }

  if ([v7 isEqualToString:@"UsesSocketMonitoring"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [*(a1 + 32) usesSocketMonitoring];
      goto LABEL_22;
    }

    v10 = rbs_general_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_58;
    }

    goto LABEL_63;
  }

  if ([v7 isEqualToString:@"SupportsBackgroundNetworkAuthentication"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [*(a1 + 32) supportsBackgroundNetworkAuthentication];
      goto LABEL_22;
    }

    v10 = rbs_general_log();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_63;
    }

LABEL_58:
    __71__RBDomainAttributeManager__compareTargetBundleProperties_withContext___block_invoke_cold_3();
    goto LABEL_63;
  }

  if ([v7 isEqualToString:@"SupportsUnboundedTaskCompletion"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [*(a1 + 32) supportsUnboundedTaskCompletion];
      goto LABEL_22;
    }

    v10 = rbs_general_log();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_63;
    }

    goto LABEL_58;
  }

  if ([v7 isEqualToString:@"SupportsBackgroundAudio"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [*(a1 + 32) supportsBackgroundAudio];
      goto LABEL_22;
    }

    v10 = rbs_general_log();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_63;
    }

    goto LABEL_58;
  }

  if ([v7 isEqualToString:@"ContinuousBackgroundMode"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = rbs_general_log();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_63;
      }

      goto LABEL_58;
    }

    v13 = [*(a1 + 32) continuousBackgroundMode];
    if (v13 != [v8 BOOLValue])
    {
      goto LABEL_24;
    }

    v14 = [*(a1 + 40) targetProcess];
    v15 = [v14 isPlatformBinary];
    goto LABEL_31;
  }

  if ([v7 isEqualToString:@"IsExtension"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [*(a1 + 32) isExtension];
      goto LABEL_22;
    }

    v10 = rbs_general_log();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_63;
    }

    goto LABEL_58;
  }

  if (![v7 isEqualToString:@"Platform"])
  {
    if ([v7 isEqualToString:@"NotPlatform"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = [*(a1 + 32) platform];
        if (v17 != [v8 intValue])
        {
          goto LABEL_64;
        }

        goto LABEL_24;
      }

      v10 = rbs_general_log();
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_63;
      }

      goto LABEL_58;
    }

    if (![v7 isEqualToString:@"BundleID"])
    {
      v10 = rbs_general_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        __71__RBDomainAttributeManager__compareTargetBundleProperties_withContext___block_invoke_cold_1(v7, v10);
      }

      goto LABEL_63;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = rbs_general_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        __71__RBDomainAttributeManager__compareTargetBundleProperties_withContext___block_invoke_cold_2();
      }

      goto LABEL_63;
    }

    v18 = [*(a1 + 32) bundleIdentifier];
    if (v18 == v8)
    {

      goto LABEL_64;
    }

    if (!v8 || !v18)
    {

      goto LABEL_24;
    }

    v14 = v18;
    v15 = [v18 isEqual:v8];
LABEL_31:
    v16 = v15;

    if (v16)
    {
      goto LABEL_64;
    }

    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = rbs_general_log();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_63;
    }

    goto LABEL_58;
  }

  v11 = [*(a1 + 32) platform];
  v12 = [v8 intValue];
LABEL_23:
  if (v11 != v12)
  {
LABEL_24:
    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }

LABEL_64:
}

- (void)_prepareAttributeTemplates
{
  if (self)
  {
    v2 = objc_autoreleasePoolPush();
    templatesByDomain = [*(self + 16) templatesByDomain];
    v4 = *(self + 8);
    *(self + 8) = templatesByDomain;

    objc_autoreleasePoolPop(v2);
  }
}

- (uint64_t)_compareRestrictions:(void *)restrictions withContext:
{
  v5 = a2;
  restrictionsCopy = restrictions;
  if (self)
  {
    if (v5)
    {
      self = [v5 allowsContext:restrictionsCopy withError:0];
    }

    else
    {
      self = 1;
    }
  }

  return self;
}

- (void)attributesForDomain:(os_log_t)log andName:context:withError:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_262485000, log, OS_LOG_TYPE_ERROR, "Could not find attribute name %{public}@ in domain plist %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)attributesForDomain:(uint64_t)a1 andName:(NSObject *)a2 context:withError:.cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Could not find plist for domain %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __71__RBDomainAttributeManager__compareTargetBundleProperties_withContext___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_fault_impl(&dword_262485000, a2, OS_LOG_TYPE_FAULT, "Malformed domain plist - %{public}@ unrecognized", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __71__RBDomainAttributeManager__compareTargetBundleProperties_withContext___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0_0();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_16(v0);
  OUTLINED_FUNCTION_1_17(&dword_262485000, v2, v3, "Malformed domain plist - %{public}@ is not of class %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

void __71__RBDomainAttributeManager__compareTargetBundleProperties_withContext___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_0_0();
  v10 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_class();
  v1 = OUTLINED_FUNCTION_0_16(v0);
  OUTLINED_FUNCTION_1_17(&dword_262485000, v2, v3, "Malformed domain plist - %{public}@ is not of class %{public}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end