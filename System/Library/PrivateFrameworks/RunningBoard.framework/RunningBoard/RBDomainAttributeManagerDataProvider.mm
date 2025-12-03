@interface RBDomainAttributeManagerDataProvider
- (BOOL)_checkConflictingAttributes:(uint64_t)attributes error:;
- (RBDomainAttributeManagerDataProvider)initWithDictionary:(id)dictionary;
- (RBDomainAttributeManagerDataProvider)initWithPath:(id)path;
- (RBDomainAttributeTemplate)_templateWithDomain:name:dictionary:errors:;
- (RBDomainAttributeTemplate)_validatedDomainAttributeTemplateFromDomainAttributeTemplate:dependenciesByFullyQualifiedName:errors:;
- (id)_additionalRestrictionsFromDictionary:forDomainAttributeWithDomain:name:errors:;
- (id)_attributeTemplateForItem:(uint64_t)item domain:(uint64_t)domain name:(void *)name errors:;
- (id)_attributeTemplateGroupsFromArray:(uint64_t)array forDomainAttributeWithDomain:(uint64_t)domain name:(NSObject *)name errors:;
- (id)_attributeTemplatesFromArray:forDomainAttributeWithDomain:name:errors:;
- (id)_bundlePropertiesFromDictionary:forDomainAttributeWithDomain:name:errors:;
- (id)_legalClassNames;
- (id)_legalPropertyNamesByClassName;
- (id)_restrictionFromDictionary:(void *)dictionary forDomainAttributeWithDomain:(void *)domain name:(void *)name errors:;
- (id)_templatesByDomainWithErrors:(uint64_t)errors;
- (id)_templatesWithDomain:(void *)domain fromDictionary:(void *)dictionary errors:;
- (id)_templatesWithDomain:(void *)domain fromFilename:(void *)filename dirpath:(void *)dirpath errors:;
- (id)_validatedAttributeTemplateFromAttributeTemplate:(void *)template domainAttributeTemplate:(void *)attributeTemplate dependenciesByFullyQualifiedName:(void *)name errors:;
- (id)_validatedTemplatesByDomainWithErrors:(id)errors;
- (id)templatesByDomain;
- (id)validDomains;
- (id)validationErrors;
- (uint64_t)_isPropertyLegalForClassName:(uint64_t)name propertyName:(uint64_t)propertyName value:(uint64_t)value error:;
- (void)_configureTemplate:(uint64_t)template fromInfo:(uint64_t)info forDomain:(void *)domain name:(char)name allowRestrictions:(void *)restrictions errors:;
- (void)_isAttributeClassNameLegal:(void *)result;
- (void)_preAttributeTemplateFromAttributeTemplate:(void *)template domainAttributeTemplate:(void *)attributeTemplate generateDependenciesByFullyQualifiedName:;
- (void)_preDomainAttributeTemplateFromDomainAttributeTemplate:(void *)template generateDependenciesByFullyQualifiedName:;
- (void)_templatesWithDomain:(void *)domain fromFilename:(void *)filename errors:;
@end

@implementation RBDomainAttributeManagerDataProvider

- (RBDomainAttributeManagerDataProvider)initWithPath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = RBDomainAttributeManagerDataProvider;
  v5 = [(RBDomainAttributeManagerDataProvider *)&v9 init];
  if (v5)
  {
    v6 = [pathCopy copy];
    path = v5->_path;
    v5->_path = v6;
  }

  return v5;
}

- (RBDomainAttributeManagerDataProvider)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = RBDomainAttributeManagerDataProvider;
  v6 = [(RBDomainAttributeManagerDataProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_rawTemplates, dictionary);
  }

  return v7;
}

- (id)validationErrors
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(RBDomainAttributeManagerDataProvider *)self _validatedTemplatesByDomainWithErrors:array];

  return array;
}

- (id)validDomains
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(RBDomainAttributeManagerDataProvider *)self _templatesByDomainWithErrors:array];
  allKeys = [v4 allKeys];

  return allKeys;
}

void __78__RBDomainAttributeManagerDataProvider__validatedTemplatesByDomainWithErrors___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __78__RBDomainAttributeManagerDataProvider__validatedTemplatesByDomainWithErrors___block_invoke_2;
  v5[3] = &unk_279B33F68;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a3 enumerateKeysAndObjectsUsingBlock:v5];
}

void __78__RBDomainAttributeManagerDataProvider__validatedTemplatesByDomainWithErrors___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEB38];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionary];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __78__RBDomainAttributeManagerDataProvider__validatedTemplatesByDomainWithErrors___block_invoke_4;
  v14 = &unk_279B33FB8;
  v9 = *(a1 + 40);
  v15 = *(a1 + 32);
  v16 = v9;
  v17 = *(a1 + 48);
  v18 = v8;
  v10 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:&v11];

  [*(a1 + 56) setObject:v10 forKeyedSubscript:{v7, v11, v12, v13, v14, v15}];
}

void __78__RBDomainAttributeManagerDataProvider__validatedTemplatesByDomainWithErrors___block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = [RBDomainAttributeManagerDataProvider _validatedDomainAttributeTemplateFromDomainAttributeTemplate:dependenciesByFullyQualifiedName:errors:];
  if (v6)
  {
    [*(a1 + 56) setObject:v6 forKeyedSubscript:v7];
  }
}

void __69__RBDomainAttributeManagerDataProvider__templatesByDomainWithErrors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = a2;
  v8 = [(RBDomainAttributeManagerDataProvider *)v5 _templatesWithDomain:v7 fromDictionary:a3 errors:v6];
  [*(a1 + 32) setObject:v8 forKeyedSubscript:v7];
}

void __108__RBDomainAttributeManagerDataProvider__configureTemplate_fromInfo_forDomain_name_allowRestrictions_errors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277CCA470];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"RB Domain template %@ malformed: %@", *(a1 + 32), *(a1 + 40)];
    v39[0] = v8;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v14 = v12;
    v15 = 2;
LABEL_8:
    v16 = [v14 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:v15 userInfo:v13];

    [*(a1 + 48) addObject:v16];
LABEL_9:

    goto LABEL_10;
  }

  if (([v5 isEqualToString:@"Attributes"] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:", @"AttributeGroups") & 1) == 0)
  {
    if ([v5 isEqualToString:@"Restriction"])
    {
      if (*(a1 + 80) != 1)
      {
        v7 = MEMORY[0x277CCA9B8];
        v36 = *MEMORY[0x277CCA470];
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"RB Domain template %@ contains unexpected restriction with key : %@", *(a1 + 32), v5];
        v37 = v8;
        v9 = MEMORY[0x277CBEAC0];
        v10 = &v37;
        v11 = &v36;
LABEL_29:
        v13 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:1];
        v14 = v7;
        v15 = 4;
        goto LABEL_8;
      }
    }

    else
    {
      if ([v5 isEqualToString:@"RequiredTargetBundleProperties"])
      {
        v18 = *(a1 + 32);
        v19 = *(a1 + 56);
        v20 = *(a1 + 64);
        v21 = *(a1 + 48);
        v16 = [RBDomainAttributeManagerDataProvider _bundlePropertiesFromDictionary:forDomainAttributeWithDomain:name:errors:];
        [*(a1 + 72) setTargetBundleProperties:v16];
        goto LABEL_9;
      }

      if (![v5 isEqualToString:@"Selector"])
      {
        if ([v5 isEqualToString:@"RequiredOriginatorEntitlements"])
        {
          if (*(a1 + 80) == 1)
          {
            v16 = [RBEntitlementPredicate predicateForObject:v6 forDomain:*(a1 + 32) attribute:*(a1 + 64) errors:*(a1 + 48)];
            [*(a1 + 72) setOriginatorEntitlements:v16];
            goto LABEL_9;
          }

          v7 = MEMORY[0x277CCA9B8];
          v32 = *MEMORY[0x277CCA470];
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"RB Domain template %@ contains unexpected restriction with key : %@", *(a1 + 32), v5];
          v33 = v8;
          v9 = MEMORY[0x277CBEAC0];
          v10 = &v33;
          v11 = &v32;
        }

        else if ([v5 isEqualToString:@"RequiredTargetEntitlements"])
        {
          if (*(a1 + 80) == 1)
          {
            v16 = [RBEntitlementPredicate predicateForObject:v6 forDomain:*(a1 + 32) attribute:*(a1 + 64) errors:*(a1 + 48)];
            [*(a1 + 72) setTargetEntitlements:v16];
            goto LABEL_9;
          }

          v7 = MEMORY[0x277CCA9B8];
          v30 = *MEMORY[0x277CCA470];
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"RB Domain template %@ contains unexpected restriction with key : %@", *(a1 + 32), v5];
          v31 = v8;
          v9 = MEMORY[0x277CBEAC0];
          v10 = &v31;
          v11 = &v30;
        }

        else if ([v5 isEqualToString:@"AdditionalRestrictions"])
        {
          if (*(a1 + 80) == 1)
          {
            v22 = *(a1 + 32);
            v23 = *(a1 + 56);
            v24 = *(a1 + 64);
            v25 = *(a1 + 48);
            v16 = [RBDomainAttributeManagerDataProvider _additionalRestrictionsFromDictionary:forDomainAttributeWithDomain:name:errors:];
            [*(a1 + 72) setAdditionalRestrictions:v16];
            goto LABEL_9;
          }

          v7 = MEMORY[0x277CCA9B8];
          v28 = *MEMORY[0x277CCA470];
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"RB Domain template %@ contains unexpected restriction with key : %@", *(a1 + 32), v5];
          v29 = v8;
          v9 = MEMORY[0x277CBEAC0];
          v10 = &v29;
          v11 = &v28;
        }

        else
        {
          if ([v5 isEqualToString:@"EndowmentNamespace"])
          {
            goto LABEL_10;
          }

          v7 = MEMORY[0x277CCA9B8];
          v26 = *MEMORY[0x277CCA470];
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"RB Domain template %@ contains unrecognized key: %@", *(a1 + 32), v5];
          v27 = v8;
          v9 = MEMORY[0x277CBEAC0];
          v10 = &v27;
          v11 = &v26;
        }

        goto LABEL_29;
      }

      if (*(a1 + 80))
      {
        v7 = MEMORY[0x277CCA9B8];
        v34 = *MEMORY[0x277CCA470];
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"RB Domain template %@ contains unexpected selector", *(a1 + 32)];
        v35 = v8;
        v9 = MEMORY[0x277CBEAC0];
        v10 = &v35;
        v11 = &v34;
        goto LABEL_29;
      }
    }

    v16 = [(RBDomainAttributeManagerDataProvider *)*(a1 + 56) _restrictionFromDictionary:v6 forDomainAttributeWithDomain:*(a1 + 32) name:*(a1 + 64) errors:*(a1 + 48)];
    [*(a1 + 72) setRestriction:v16];
    goto LABEL_9;
  }

LABEL_10:

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_restrictionFromDictionary:(void *)dictionary forDomainAttributeWithDomain:(void *)domain name:(void *)name errors:
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a2;
  dictionaryCopy = dictionary;
  domainCopy = domain;
  nameCopy = name;
  v13 = 0;
  if (self && v9)
  {
    v18 = 0;
    v13 = [RBDomainRestriction domainRestrictionForDictionary:v9 withError:&v18];
    v14 = v18;
    if (v14)
    {
      v15 = rbs_general_log();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v20 = dictionaryCopy;
        v21 = 2114;
        v22 = domainCopy;
        v23 = 2114;
        v24 = v14;
        _os_log_error_impl(&dword_262485000, v15, OS_LOG_TYPE_ERROR, "Domain %{public}@ attribute %{public}@ contains restriction that failed to resolve with error: %{public}@", buf, 0x20u);
      }

      [nameCopy addObject:v14];
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v13;
}

void __113__RBDomainAttributeManagerDataProvider__bundlePropertiesFromDictionary_forDomainAttributeWithDomain_name_errors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 56) setObject:v6 forKeyedSubscript:v5];
  }

  else
  {
    v7 = rbs_general_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __113__RBDomainAttributeManagerDataProvider__bundlePropertiesFromDictionary_forDomainAttributeWithDomain_name_errors___block_invoke_cold_1(a1);
    }

    if (*(a1 + 48))
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains bundle property name of wrong type: %@", *(a1 + 32), *(a1 + 40), v5, *MEMORY[0x277CCA470]];
      v14[0] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      v11 = [v8 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:2 userInfo:v10];

      [*(a1 + 48) addObject:v11];
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __119__RBDomainAttributeManagerDataProvider__additionalRestrictionsFromDictionary_forDomainAttributeWithDomain_name_errors___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 56) setObject:v6 forKeyedSubscript:v5];
      goto LABEL_13;
    }

    v13 = rbs_general_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __119__RBDomainAttributeManagerDataProvider__additionalRestrictionsFromDictionary_forDomainAttributeWithDomain_name_errors___block_invoke_cold_2(a1);
    }

    if (*(a1 + 48))
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains entitlement value of wrong type: %@", *(a1 + 32), *(a1 + 40), v6, *MEMORY[0x277CCA470]];
      v18 = v9;
      v10 = MEMORY[0x277CBEAC0];
      v11 = &v18;
      v12 = &v17;
      goto LABEL_12;
    }
  }

  else
  {
    v7 = rbs_general_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __119__RBDomainAttributeManagerDataProvider__additionalRestrictionsFromDictionary_forDomainAttributeWithDomain_name_errors___block_invoke_cold_1(a1);
    }

    if (*(a1 + 48))
    {
      v8 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA470];
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains entitlement name of wrong type: %@", *(a1 + 32), *(a1 + 40), v5];
      v20[0] = v9;
      v10 = MEMORY[0x277CBEAC0];
      v11 = v20;
      v12 = &v19;
LABEL_12:
      v14 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
      v15 = [v8 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:2 userInfo:v14];

      [*(a1 + 48) addObject:v15];
    }
  }

LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
}

void __136__RBDomainAttributeManagerDataProvider__preDomainAttributeTemplateFromDomainAttributeTemplate_generateDependenciesByFullyQualifiedName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 attributes];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __136__RBDomainAttributeManagerDataProvider__preDomainAttributeTemplateFromDomainAttributeTemplate_generateDependenciesByFullyQualifiedName___block_invoke_2;
  v5[3] = &unk_279B34080;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 enumerateObjectsUsingBlock:v5];
}

void __141__RBDomainAttributeManagerDataProvider__validatedDomainAttributeTemplateFromDomainAttributeTemplate_dependenciesByFullyQualifiedName_errors___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(RBAttributeTemplateGroup);
  v5 = [v3 originatorEntitlements];
  [(RBAttributeTemplateGroup *)v4 setOriginatorEntitlements:v5];

  v6 = [v3 targetBundleProperties];
  [(RBAttributeTemplateGroup *)v4 setTargetBundleProperties:v6];

  v7 = [v3 targetEntitlements];
  [(RBAttributeTemplateGroup *)v4 setTargetEntitlements:v7];

  v8 = [v3 additionalRestrictions];
  [(RBAttributeTemplateGroup *)v4 setAdditionalRestrictions:v8];

  v9 = [v3 restriction];
  [(RBAttributeTemplateGroup *)v4 setRestriction:v9];

  v10 = [MEMORY[0x277CBEB18] array];
  v11 = [v3 attributes];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __141__RBDomainAttributeManagerDataProvider__validatedDomainAttributeTemplateFromDomainAttributeTemplate_dependenciesByFullyQualifiedName_errors___block_invoke_2;
  v18[3] = &unk_279B340D0;
  v17 = *(a1 + 32);
  v12 = *(&v17 + 1);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  *&v15 = v13;
  *(&v15 + 1) = v14;
  v19 = v17;
  v20 = v15;
  v21 = v10;
  v16 = v10;
  [v11 enumerateObjectsUsingBlock:v18];

  [(RBAttributeTemplateGroup *)v4 setAttributes:v16];
  [*(a1 + 64) addObject:v4];
}

uint64_t __141__RBDomainAttributeManagerDataProvider__validatedDomainAttributeTemplateFromDomainAttributeTemplate_dependenciesByFullyQualifiedName_errors___block_invoke_2(void **a1, void *a2)
{
  v3 = [(RBDomainAttributeManagerDataProvider *)a1[4] _validatedAttributeTemplateFromAttributeTemplate:a2 domainAttributeTemplate:a1[5] dependenciesByFullyQualifiedName:a1[6] errors:a1[7]];
  if (v3)
  {
    [a1[8] addObject:v3];
  }

  return MEMORY[0x2821F96F8]();
}

uint64_t __56__RBDomainAttributeManagerDataProvider__legalClassNames__block_invoke()
{
  _MergedGlobals_1 = [MEMORY[0x277CBEB98] setWithObjects:{@"RBSAcquisitionCompletionAttribute", @"RBSCPUAccessGrant", @"RBSSuspendableCPUGrant", @"RBSCarPlayModeGrant", @"RBSCoalitionLevelGrant", @"RBSCPUMaximumUsageLimitation", @"RBSCPUMinimumUsageGrant", @"RBSDefineRelativeStartTimeGrant", @"RBSDomainAttribute", @"RBSDebugGrant", @"RBSDurationAttribute", @"RBSGPUAccessGrant", @"RBSJetsamPriorityGrant", @"RBSBaseMemoryGrant", @"RBSLaunchGrant", @"RBSPreserveBaseMemoryGrant", @"RBSPreventIdleSleepGrant", @"RBSPreventResourceUsageInvalidationAttribute", @"RBSResistTerminationGrant", @"RBSRunningReasonAttribute", @"RBSTagAttribute", @"RBSAppNapEnableGrant", @"RBSAppNapInactiveGrant", @"RBSAppNapPreventBackgroundSocketsGrant", @"RBSAppNapPreventDiskThrottleGrant", @"RBSAppNapPreventLowPriorityCPUGrant", @"RBSAppNapPreventSuppressedCPUGrant", @"RBSAppNapPreventTimerThrottleGrant", @"RBSMimicTaskSuspensionAttribute", @"RBSForceRoleManageAttribute", @"RBSEndowmentGrant", @"RBSSubordinateProcessAttribute", @"RBSSavedEndowmentGrant", @"RBSConditionAttribute", @"RBSInvalidateUnderConditionAttribute", @"RBSPersistentAttribute", 0}];

  return MEMORY[0x2821F96F8]();
}

void __70__RBDomainAttributeManagerDataProvider__legalPropertyNamesByClassName__block_invoke()
{
  v91[19] = *MEMORY[0x277D85DE8];
  v90[0] = @"RBSAcquisitionCompletionAttribute";
  v90[1] = @"RBSCoalitionLevelGrant";
  v91[0] = &unk_28751B338;
  v91[1] = &unk_28751B360;
  v90[2] = @"RBSCPUAccessGrant";
  v90[3] = @"RBSSuspendableCPUGrant";
  v91[2] = &unk_28751B388;
  v91[3] = &unk_28751B3B0;
  v90[4] = @"RBSCPUMaximumUsageLimitation";
  v88[0] = @"Duration";
  v49 = [MEMORY[0x277CBEB68] null];
  v87 = v49;
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v87 count:1];
  v89[0] = v48;
  v88[1] = @"Percentage";
  v47 = [MEMORY[0x277CBEB68] null];
  v86 = v47;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v86 count:1];
  v89[1] = v46;
  v89[2] = &unk_28751B508;
  v88[2] = @"Role";
  v88[3] = @"ViolationPolicy";
  v89[3] = &unk_28751B520;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:4];
  v91[4] = v45;
  v90[5] = @"RBSCPUMinimumUsageGrant";
  v84[0] = @"Duration";
  v44 = [MEMORY[0x277CBEB68] null];
  v83 = v44;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v83 count:1];
  v85[0] = v43;
  v84[1] = @"Percentage";
  v42 = [MEMORY[0x277CBEB68] null];
  v82 = v42;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v82 count:1];
  v84[2] = @"Role";
  v85[1] = v41;
  v85[2] = &unk_28751B538;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:v84 count:3];
  v91[5] = v40;
  v90[6] = @"RBSDurationAttribute";
  v81[0] = &unk_28751B550;
  v80[0] = @"EndPolicy";
  v80[1] = @"WarningDuration";
  v39 = [MEMORY[0x277CBEB68] null];
  v79 = v39;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
  v81[1] = v38;
  v80[2] = @"InvalidationDuration";
  v37 = [MEMORY[0x277CBEB68] null];
  v78 = v37;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
  v80[3] = @"StartPolicy";
  v81[2] = v36;
  v81[3] = &unk_28751B568;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v81 forKeys:v80 count:4];
  v91[6] = v35;
  v90[7] = @"RBSDomainAttribute";
  v76[0] = @"Domain";
  v34 = [MEMORY[0x277CBEB68] null];
  v75 = v34;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v75 count:1];
  v77[0] = v33;
  v76[1] = @"Name";
  v32 = [MEMORY[0x277CBEB68] null];
  v74 = v32;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v74 count:1];
  v77[1] = v31;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v77 forKeys:v76 count:2];
  v91[7] = v30;
  v90[8] = @"RBSJetsamPriorityGrant";
  v72 = @"Band";
  v29 = [MEMORY[0x277CBEB68] null];
  v71 = v29;
  v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v71 count:1];
  v73 = v28;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
  v91[8] = v27;
  v90[9] = @"RBSBaseMemoryGrant";
  v69[0] = @"Category";
  v26 = [MEMORY[0x277CBEB68] null];
  v68 = v26;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
  v69[1] = @"Strength";
  v70[0] = v25;
  v70[1] = &unk_28751B580;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
  v91[9] = v24;
  v91[10] = &unk_28751B3D8;
  v90[10] = @"RBSResistTerminationGrant";
  v90[11] = @"RBSRunningReasonAttribute";
  v66 = @"RunningReason";
  v23 = [MEMORY[0x277CBEB68] null];
  v65 = v23;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
  v67 = v22;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];
  v91[11] = v21;
  v90[12] = @"RBSTagAttribute";
  v63 = @"Tag";
  v20 = [MEMORY[0x277CBEB68] null];
  v62 = v20;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
  v64 = v19;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
  v91[12] = v18;
  v91[13] = &unk_28751B400;
  v90[13] = @"RBSAppNapPreventTimerThrottleGrant";
  v90[14] = @"RBSEndowmentGrant";
  v91[14] = &unk_28751B428;
  v90[15] = @"RBSSavedEndowmentGrant";
  v60[0] = @"Namespace";
  v17 = [MEMORY[0x277CBEB68] null];
  v59 = v17;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v59 count:1];
  v60[1] = @"Key";
  v61[0] = v16;
  v15 = [MEMORY[0x277CBEB68] null];
  v58 = v15;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
  v61[1] = v14;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
  v91[15] = v13;
  v91[16] = &unk_28751B450;
  v90[16] = @"RBSGPUAccessGrant";
  v90[17] = @"RBSConditionAttribute";
  v56[0] = @"Condition";
  v12 = [MEMORY[0x277CBEB68] null];
  v55 = v12;
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:&v55 count:1];
  v56[1] = @"Value";
  v57[0] = v0;
  v1 = [MEMORY[0x277CBEB68] null];
  v54 = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
  v57[1] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:2];
  v91[17] = v3;
  v90[18] = @"RBSInvalidateUnderConditionAttribute";
  v52[0] = @"Condition";
  v4 = [MEMORY[0x277CBEB68] null];
  v51 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v51 count:1];
  v52[1] = @"MinValue";
  v53[0] = v5;
  v6 = [MEMORY[0x277CBEB68] null];
  v50 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
  v53[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
  v91[18] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v91 forKeys:v90 count:19];
  v10 = qword_2814AA108;
  qword_2814AA108 = v9;

  v11 = *MEMORY[0x277D85DE8];
}

- (id)_validatedTemplatesByDomainWithErrors:(id)errors
{
  v3 = a2;
  if (errors)
  {
    v4 = [(RBDomainAttributeManagerDataProvider *)errors _templatesByDomainWithErrors:v3];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __78__RBDomainAttributeManagerDataProvider__validatedTemplatesByDomainWithErrors___block_invoke;
    v16[3] = &unk_279B33F90;
    v16[4] = errors;
    v7 = dictionary2;
    v17 = v7;
    [v4 enumerateKeysAndObjectsUsingBlock:v16];
    OUTLINED_FUNCTION_0_2();
    v12[1] = 3221225472;
    v12[2] = __78__RBDomainAttributeManagerDataProvider__validatedTemplatesByDomainWithErrors___block_invoke_3;
    v12[3] = &unk_279B33FE0;
    v12[4] = errors;
    v13 = v7;
    v14 = v3;
    v8 = dictionary;
    v15 = v8;
    v9 = v7;
    [v4 enumerateKeysAndObjectsUsingBlock:v12];
    v10 = v15;
    errors = v8;
  }

  return errors;
}

- (id)_templatesByDomainWithErrors:(uint64_t)errors
{
  v140[1] = *MEMORY[0x277D85DE8];
  v112 = a2;
  if (errors)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v4 = dictionary;
    if (!*(errors + 8))
    {
      v18 = *(errors + 16);
      v113[0] = MEMORY[0x277D85DD0];
      v113[1] = 3221225472;
      v113[2] = __69__RBDomainAttributeManagerDataProvider__templatesByDomainWithErrors___block_invoke;
      v113[3] = &unk_279B34008;
      v114 = dictionary;
      errorsCopy = errors;
      v116 = v112;
      [v18 enumerateKeysAndObjectsUsingBlock:v113];

      v19 = v114;
LABEL_52:

      goto LABEL_53;
    }

    v5 = rbs_general_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(errors + 8);
      *buf = 138543362;
      v129 = v6;
      _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_DEFAULT, "Loading Domain Attributes from: %{public}@", buf, 0xCu);
    }

    stringByDeletingLastPathComponent = [*(errors + 8) stringByDeletingLastPathComponent];
    v8 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:@"domains.plist"];

    v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v8];
    v10 = MEMORY[0x277CCA470];
    v109 = v4;
    v105 = v9;
    v106 = v8;
    if (v9)
    {
      v11 = RBSArrayForKey();
      if (v11)
      {
        v111 = [MEMORY[0x277CBEB98] setWithArray:v11];
        if (v111)
        {
LABEL_20:

          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          errorsCopy2 = errors;
          v28 = *(errors + 8);
          v126 = 0;
          v29 = [defaultManager contentsOfDirectoryAtPath:v28 error:&v126];
          v104 = v126;

          v124 = 0u;
          v125 = 0u;
          v122 = 0u;
          v123 = 0u;
          v30 = v29;
          v31 = [v30 countByEnumeratingWithState:&v122 objects:v134 count:16];
          if (v31)
          {
            v33 = v31;
            v34 = *v123;
            v35 = *v10;
            *&v32 = 138543362;
            v107 = v32;
            do
            {
              v36 = 0;
              v37 = v111;
              do
              {
                if (*v123 != v34)
                {
                  objc_enumerationMutation(v30);
                }

                v38 = *(*(&v122 + 1) + 8 * v36);
                stringByDeletingPathExtension = [v38 stringByDeletingPathExtension];
                if ([v37 containsObject:v38])
                {
                  v52 = [(RBDomainAttributeManagerDataProvider *)errorsCopy2 _templatesWithDomain:stringByDeletingPathExtension fromFilename:v38 errors:v112];
                  [v109 setObject:v52 forKeyedSubscript:stringByDeletingPathExtension];
                }

                else
                {
                  v40 = rbs_general_log();
                  v41 = os_log_type_enabled(v40, OS_LOG_TYPE_FAULT);
                  if (v41)
                  {
                    OUTLINED_FUNCTION_18_1(v41, v42, v43, v44, v45, v46, v47, v48, v100, v101, v102, v104, v105, v106, v107);
                    *(v53 + 212) = v38;
                    _os_log_fault_impl(&dword_262485000, v40, OS_LOG_TYPE_FAULT, "Unknown RunningBoard domain file found: %{public}@", buf, 0xCu);
                  }

                  v49 = MEMORY[0x277CCA9B8];
                  v132 = v35;
                  v100 = stringByDeletingPathExtension;
                  v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ not allowed"];
                  v133 = v50;
                  v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v133 forKeys:&v132 count:1];
                  v52 = [v49 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:4 userInfo:v51];

                  [v112 addObject:v52];
                  v37 = v111;
                }

                ++v36;
              }

              while (v33 != v36);
              v54 = [v30 countByEnumeratingWithState:&v122 objects:v134 count:16];
              v33 = v54;
            }

            while (v54);
          }

          if (os_variant_has_internal_content())
          {
            v55 = [errorsCopy2[1] stringByReplacingOccurrencesOfString:@"System/Library/LifecyclePolicy" withString:@"AppleInternal/LifecyclePolicy"];
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            v121 = v104;
            v57 = [defaultManager2 contentsOfDirectoryAtPath:v55 error:&v121];
            v103 = v121;

            v58 = rbs_general_log();
            v4 = v109;
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              v59 = [v57 count];
              *buf = 134218242;
              v129 = v59;
              v130 = 2114;
              v131 = v55;
              _os_log_impl(&dword_262485000, v58, OS_LOG_TYPE_DEFAULT, "Loading %lu Internal Domains from %{public}@", buf, 0x16u);
            }

            v119 = 0u;
            v120 = 0u;
            v117 = 0u;
            v118 = 0u;
            v30 = v57;
            v60 = [v30 countByEnumeratingWithState:&v117 objects:v127 count:16];
            if (v60)
            {
              v62 = v60;
              v63 = *v118;
              *&v61 = 138543362;
              v108 = v61;
              do
              {
                for (i = 0; i != v62; ++i)
                {
                  if (*v118 != v63)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v65 = *(*(&v117 + 1) + 8 * i);
                  stringByDeletingPathExtension2 = [v65 stringByDeletingPathExtension];
                  v67 = [v109 objectForKeyedSubscript:stringByDeletingPathExtension2];

                  v68 = rbs_general_log();
                  v69 = os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT);
                  if (v67)
                  {
                    if (!v69)
                    {
                      goto LABEL_47;
                    }

                    OUTLINED_FUNCTION_18_1(v69, v70, v71, v72, v73, v74, v75, v76, v100, v101, v103, v104, v105, v106, v108);
                    *(v80 + 212) = stringByDeletingPathExtension2;
                    v78 = v68;
                    v79 = "Replacing domain %{public}@ with internal version";
                  }

                  else
                  {
                    if (!v69)
                    {
                      goto LABEL_47;
                    }

                    OUTLINED_FUNCTION_18_1(v69, v70, v71, v72, v73, v74, v75, v76, v100, v101, v103, v104, v105, v106, v108);
                    *(v77 + 212) = stringByDeletingPathExtension2;
                    v78 = v68;
                    v79 = "Adding internal domain %{public}@";
                  }

                  _os_log_impl(&dword_262485000, v78, OS_LOG_TYPE_DEFAULT, v79, buf, 0xCu);
LABEL_47:

                  v81 = [(RBDomainAttributeManagerDataProvider *)errorsCopy2 _templatesWithDomain:stringByDeletingPathExtension2 fromFilename:v65 dirpath:v55 errors:v112];
                  [v109 setObject:v81 forKeyedSubscript:stringByDeletingPathExtension2];
                }

                v62 = [v30 countByEnumeratingWithState:&v117 objects:v127 count:16];
              }

              while (v62);
            }

            v82 = v103;
          }

          else
          {
            v4 = v109;
            v82 = v104;
          }

          v19 = v111;
          goto LABEL_52;
        }

        v12 = rbs_general_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          OUTLINED_FUNCTION_16_1();
          _os_log_fault_impl(v95, v96, v97, v98, v99, 2u);
        }

        v13 = MEMORY[0x277CCA9B8];
        v139 = *v10;
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Could not create domain set from plist"];
        v140[0] = v14;
        v15 = MEMORY[0x277CBEAC0];
        v16 = v140;
        v17 = &v139;
      }

      else
      {
        v24 = rbs_general_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          OUTLINED_FUNCTION_16_1();
          _os_log_fault_impl(v90, v91, v92, v93, v94, 2u);
        }

        v13 = MEMORY[0x277CCA9B8];
        v137 = *v10;
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domains array missing"];
        v138 = v14;
        v15 = MEMORY[0x277CBEAC0];
        v16 = &v138;
        v17 = &v137;
      }

      v25 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];
      v26 = [v13 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:1 userInfo:v25];

      [v112 addObject:v26];
    }

    else
    {
      v20 = rbs_general_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543362;
        v129 = v8;
        OUTLINED_FUNCTION_16_1();
        _os_log_fault_impl(v85, v86, v87, v88, v89, 0xCu);
      }

      v21 = MEMORY[0x277CCA9B8];
      v135 = *v10;
      v100 = v8;
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domains plist failure: %@"];
      v136 = v22;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v136 forKeys:&v135 count:1];
      v11 = [v21 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:1 userInfo:v23];

      [v112 addObject:v11];
    }

    v111 = 0;
    goto LABEL_20;
  }

  v4 = 0;
LABEL_53:

  v83 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)templatesByDomain
{
  array = [MEMORY[0x277CBEB18] array];
  v4 = [(RBDomainAttributeManagerDataProvider *)self _validatedTemplatesByDomainWithErrors:array];

  return v4;
}

- (void)_preDomainAttributeTemplateFromDomainAttributeTemplate:(void *)template generateDependenciesByFullyQualifiedName:
{
  v5 = a2;
  templateCopy = template;
  if (self)
  {
    attributeGroups = [v5 attributeGroups];
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_31_0();
    v9 = __136__RBDomainAttributeManagerDataProvider__preDomainAttributeTemplateFromDomainAttributeTemplate_generateDependenciesByFullyQualifiedName___block_invoke;
    v10 = &unk_279B340A8;
    selfCopy = self;
    v12 = v5;
    v13 = templateCopy;
    [attributeGroups enumerateObjectsUsingBlock:v8];
  }
}

- (RBDomainAttributeTemplate)_validatedDomainAttributeTemplateFromDomainAttributeTemplate:dependenciesByFullyQualifiedName:errors:
{
  OUTLINED_FUNCTION_11_1();
  v4 = v3;
  v6 = v5;
  v7 = v0;
  v8 = v1;
  if (v4)
  {
    v9 = objc_alloc_init(RBDomainAttributeTemplate);
    [(RBDomainAttributeTemplate *)v6 name];
    objc_claimAutoreleasedReturnValue();
    v10 = OUTLINED_FUNCTION_20_1();
    [(RBDomainAttributeTemplate *)v10 setName:v11];

    [(RBDomainAttributeTemplate *)v6 domain];
    objc_claimAutoreleasedReturnValue();
    v12 = OUTLINED_FUNCTION_20_1();
    [(RBDomainAttributeTemplate *)v12 setDomain:v13];

    [v6 originatorEntitlements];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_18() setOriginatorEntitlements:?];

    [(RBDomainAttributeTemplate *)v6 endowmentNamespace];
    objc_claimAutoreleasedReturnValue();
    v14 = OUTLINED_FUNCTION_20_1();
    [(RBDomainAttributeTemplate *)v14 setEndowmentNamespace:v15];

    [v6 targetBundleProperties];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_18() setTargetBundleProperties:?];

    [v6 targetEntitlements];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_18() setTargetEntitlements:?];

    [v6 additionalRestrictions];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_18() setAdditionalRestrictions:?];

    [v6 restriction];
    objc_claimAutoreleasedReturnValue();
    [OUTLINED_FUNCTION_1_18() setRestriction:?];

    array = [MEMORY[0x277CBEB18] array];
    attributeGroups = [v6 attributeGroups];
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_31_0();
    v21 = __141__RBDomainAttributeManagerDataProvider__validatedDomainAttributeTemplateFromDomainAttributeTemplate_dependenciesByFullyQualifiedName_errors___block_invoke;
    v22 = &unk_279B340F8;
    v23 = v4;
    v24 = v6;
    v25 = v7;
    v26 = v8;
    v27 = array;
    v18 = array;
    [attributeGroups enumerateObjectsUsingBlock:v20];

    [(RBDomainAttributeTemplate *)v9 setAttributeGroups:v18];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_templatesWithDomain:(void *)domain fromFilename:(void *)filename errors:
{
  if (self)
  {
    self = [(RBDomainAttributeManagerDataProvider *)self _templatesWithDomain:a2 fromFilename:domain dirpath:self[1] errors:filename];
    v4 = vars8;
  }

  return self;
}

- (id)_templatesWithDomain:(void *)domain fromFilename:(void *)filename dirpath:(void *)dirpath errors:
{
  v9 = a2;
  domainCopy = domain;
  dirpathCopy = dirpath;
  if (self)
  {
    v12 = [filename stringByAppendingPathComponent:domainCopy];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v12];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_31_0();
    v19 = __89__RBDomainAttributeManagerDataProvider__templatesWithDomain_fromFilename_dirpath_errors___block_invoke;
    v20 = &unk_279B34058;
    selfCopy = self;
    v22 = v9;
    v23 = dirpathCopy;
    v15 = dictionary;
    v24 = v15;
    v25 = domainCopy;
    [v13 enumerateKeysAndObjectsUsingBlock:v18];
    v16 = v25;
    self = v15;
  }

  return self;
}

- (id)_templatesWithDomain:(void *)domain fromDictionary:(void *)dictionary errors:
{
  v7 = a2;
  dictionaryCopy = dictionary;
  if (self)
  {
    v9 = MEMORY[0x277CBEB38];
    domainCopy = domain;
    dictionary = [v9 dictionary];
    OUTLINED_FUNCTION_0_2();
    v15[1] = 3221225472;
    v15[2] = __83__RBDomainAttributeManagerDataProvider__templatesWithDomain_fromDictionary_errors___block_invoke;
    v15[3] = &unk_279B33888;
    v15[4] = self;
    v16 = v7;
    v17 = dictionaryCopy;
    v12 = dictionary;
    v18 = v12;
    [domainCopy enumerateKeysAndObjectsUsingBlock:v15];

    v13 = v18;
    self = v12;
  }

  return self;
}

- (id)_attributeTemplateForItem:(uint64_t)item domain:(uint64_t)domain name:(void *)name errors:
{
  OUTLINED_FUNCTION_11_1();
  v9 = v8;
  v114 = *MEMORY[0x277D85DE8];
  v11 = v10;
  v12 = v5;
  v93 = v6;
  nameCopy = name;
  if (!v9)
  {
    v30 = 0;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v31 = rbs_general_log();
    v32 = OUTLINED_FUNCTION_27(v31);
    if (v32)
    {
      OUTLINED_FUNCTION_5_6(5.8383e-34, v32, v33, v34, v35, v36, v37, v38, v39, v76, v77, v78, v79, v80, v82, v84, v85, v86, v88, v90, nameCopy, v93);
      v113 = v11;
      OUTLINED_FUNCTION_14_1(&dword_262485000, v61, v62, "Domain %{public}@ attribute %{public}@ contains subattribute template of wrong type: %{public}@");
    }

    v40 = MEMORY[0x277CCA9B8];
    v106 = *MEMORY[0x277CCA470];
    v41 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains subattribute template of wrong type: %@", v12, v93, v11];
    v107 = v41;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v107 forKeys:&v106 count:1];
    v13 = [v40 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:2 userInfo:v42];

    [nameCopy addObject:v13];
    v30 = 0;
    goto LABEL_12;
  }

  v13 = [v11 objectForKeyedSubscript:@"Class"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = rbs_assertion_log();
    v15 = OUTLINED_FUNCTION_27(v14);
    if (v15)
    {
      OUTLINED_FUNCTION_5_6(5.8383e-34, v15, v16, v17, v18, v19, v20, v21, v22, v76, v77, v78, v79, v80, v82, v84, v85, v86, v88, v90, nameCopy, v93);
      v113 = v13;
      OUTLINED_FUNCTION_14_1(&dword_262485000, v63, v64, "Domain %{public}@ attribute %{public}@ contains subattribute with class name of wrong type: %{public}@");
    }

    v23 = MEMORY[0x277CCA9B8];
    v104 = *MEMORY[0x277CCA470];
    v24 = [OUTLINED_FUNCTION_29_1() stringWithFormat:@"Domain %@ attribute %@ contains subattribute with class name of wrong type: %@"];
    v105 = v24;
    v25 = MEMORY[0x277CBEAC0];
    v26 = &v105;
    v27 = &v104;
LABEL_7:
    v28 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
    v29 = [v23 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:2 userInfo:v28];

    [nameCopy addObject:v29];
    v30 = 0;
    goto LABEL_8;
  }

  if (([(RBDomainAttributeManagerDataProvider *)v9 _isAttributeClassNameLegal:v13]& 1) == 0)
  {
    v65 = rbs_assertion_log();
    v66 = OUTLINED_FUNCTION_27(v65);
    if (v66)
    {
      OUTLINED_FUNCTION_5_6(5.8383e-34, v66, v67, v68, v69, v70, v71, v72, v73, v76, v77, v78, v79, v80, v82, v84, v85, v86, v88, v90, nameCopy, v93);
      v113 = v13;
      OUTLINED_FUNCTION_14_1(&dword_262485000, v74, v75, "Domain %{public}@ attribute %{public}@ contains subattribute property with an unsupported class name: %{public}@");
    }

    v23 = MEMORY[0x277CCA9B8];
    v102 = *MEMORY[0x277CCA470];
    v24 = [OUTLINED_FUNCTION_29_1() stringWithFormat:@"Domain %@ attribute %@ contains subattribute property with an unsupported class name: %@"];
    v103 = v24;
    v25 = MEMORY[0x277CBEAC0];
    v26 = &v103;
    v27 = &v102;
    goto LABEL_7;
  }

  v89 = v9;
  v91 = v13;
  [MEMORY[0x277CBEB38] dictionary];
  v83 = v81 = v11;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v45 = v11;
  v46 = [v45 countByEnumeratingWithState:&v95 objects:v101 count:16];
  if (!v46)
  {
    goto LABEL_35;
  }

  v47 = v46;
  v48 = *v96;
  v49 = *MEMORY[0x277CCA470];
  v87 = v12;
  do
  {
    v50 = 0;
    do
    {
      if (*v96 != v48)
      {
        objc_enumerationMutation(v45);
      }

      v51 = *(*(&v95 + 1) + 8 * v50);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v51 isEqualToString:@"Class"])
        {
          goto LABEL_30;
        }

        v52 = [v45 objectForKeyedSubscript:v51];
        v94 = 0;
        v53 = [(RBDomainAttributeManagerDataProvider *)v89 _isPropertyLegalForClassName:v91 propertyName:v51 value:v52 error:&v94];
        v54 = v94;

        if (v53)
        {
          v55 = [v45 objectForKeyedSubscript:v51];
          [v83 setObject:v55 forKeyedSubscript:v51];
        }

        else
        {
          [nameCopy addObject:v54];
        }

        v12 = v87;
      }

      else
      {
        v56 = rbs_assertion_log();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v109 = v12;
          v110 = 2114;
          v111 = v93;
          v112 = 2114;
          v113 = v51;
          _os_log_error_impl(&dword_262485000, v56, OS_LOG_TYPE_ERROR, "Domain %{public}@ attribute %{public}@ contains subattribute property of wrong type: %{public}@", buf, 0x20u);
        }

        v57 = MEMORY[0x277CCA9B8];
        v99 = v49;
        v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains subattribute template of wrong type: %@", v12, v93, v45];
        v100 = v58;
        v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
        v54 = [v57 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:2 userInfo:v59];

        [nameCopy addObject:v54];
      }

LABEL_30:
      ++v50;
    }

    while (v47 != v50);
    v60 = [v45 countByEnumeratingWithState:&v95 objects:v101 count:16];
    v47 = v60;
  }

  while (v60);
LABEL_35:

  v13 = v91;
  v29 = v83;
  v30 = [RBAttributeFactory attributeForClass:v91 andProperties:v83 errors:nameCopy];
  v11 = v81;
LABEL_8:

LABEL_12:
LABEL_13:

  v43 = *MEMORY[0x277D85DE8];

  return v30;
}

- (void)_isAttributeClassNameLegal:(void *)result
{
  if (result)
  {
    v2 = result;
    v3 = a2;
    _legalClassNames = [(RBDomainAttributeManagerDataProvider *)v2 _legalClassNames];
    v5 = [_legalClassNames containsObject:v3];

    return v5;
  }

  return result;
}

- (uint64_t)_isPropertyLegalForClassName:(uint64_t)name propertyName:(uint64_t)propertyName value:(uint64_t)value error:
{
  OUTLINED_FUNCTION_11_1();
  v9 = v8;
  v41[1] = *MEMORY[0x277D85DE8];
  v11 = v10;
  v12 = v5;
  v13 = v6;
  if (!v9)
  {
    value = 0;
    goto LABEL_13;
  }

  _legalPropertyNamesByClassName = [(RBDomainAttributeManagerDataProvider *)v9 _legalPropertyNamesByClassName];
  v15 = [_legalPropertyNamesByClassName objectForKeyedSubscript:v11];
  v16 = [v15 objectForKeyedSubscript:v12];
  v17 = v16;
  if (!v16)
  {
    v21 = rbs_assertion_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v35 = v12;
      v36 = 2114;
      v37 = v11;
      OUTLINED_FUNCTION_11_0(&dword_262485000, v21, v22, "Unknown property %{public}@ of attribute class %{public}@", buf);
    }

    if (!value)
    {
      goto LABEL_12;
    }

    v23 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA470];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown property %@ of attribute class %@", v12, v11];
    v41[0] = v24;
    v25 = MEMORY[0x277CBEAC0];
    v26 = v41;
    v27 = &v40;
LABEL_11:
    v28 = [v25 dictionaryWithObjects:v26 forKeys:v27 count:1];
    *value = [v23 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:3 userInfo:v28];

    value = 0;
    goto LABEL_12;
  }

  if (([v16 containsObject:v13] & 1) == 0 && objc_msgSend(v17, "count") != 1)
  {
    firstObject = [v17 firstObject];
    null = [MEMORY[0x277CBEB68] null];
    v20 = [firstObject isEqual:null];

    if ((v20 & 1) == 0)
    {
      v31 = rbs_assertion_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v35 = v13;
        v36 = 2114;
        v37 = v12;
        v38 = 2114;
        v39 = v11;
        _os_log_error_impl(&dword_262485000, v31, OS_LOG_TYPE_ERROR, "Unknown value %{public}@ for property %{public}@ of attribute class %{public}@", buf, 0x20u);
      }

      if (!value)
      {
        goto LABEL_12;
      }

      v23 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA470];
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown value %@ for property %@ of attribute class %@", v13, v12, v11];
      v33 = v24;
      v25 = MEMORY[0x277CBEAC0];
      v26 = &v33;
      v27 = &v32;
      goto LABEL_11;
    }
  }

  value = 1;
LABEL_12:

LABEL_13:
  v29 = *MEMORY[0x277D85DE8];
  return value;
}

- (id)_attributeTemplatesFromArray:forDomainAttributeWithDomain:name:errors:
{
  OUTLINED_FUNCTION_3_7();
  v62[1] = *MEMORY[0x277D85DE8];
  v5 = v4;
  v6 = v0;
  v7 = v1;
  v8 = v2;
  if (v3)
  {
    array = [MEMORY[0x277CBEB18] array];
    if (v5)
    {
      objc_opt_class();
      if (OUTLINED_FUNCTION_25_1())
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v45 = v5;
        v10 = v5;
        v11 = [v10 countByEnumeratingWithState:&v46 objects:v52 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v47;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v47 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [(RBDomainAttributeManagerDataProvider *)v3 _attributeTemplateForItem:v6 domain:v7 name:v8 errors:?];
              if (v15)
              {
                [array addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v46 objects:v52 count:16];
          }

          while (v12);
        }

        if ([array count])
        {
          v5 = v45;
          goto LABEL_23;
        }

        v28 = rbs_general_log();
        if (OUTLINED_FUNCTION_24(v28))
        {
          OUTLINED_FUNCTION_7_5(5.8382e-34);
          OUTLINED_FUNCTION_19_1();
          _os_log_error_impl(v40, v41, v42, v43, v44, 0x16u);
        }

        v29 = MEMORY[0x277CCA9B8];
        v50 = *MEMORY[0x277CCA470];
        v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains no subattributes", v6, v7];
        v51 = v18;
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
        v25 = [v29 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:1 userInfo:v19];
        v5 = v45;
        goto LABEL_22;
      }

      v22 = rbs_general_log();
      if (OUTLINED_FUNCTION_24(v22))
      {
        v55 = 138543874;
        v56 = v6;
        v57 = 2114;
        v58 = v7;
        v59 = 2114;
        v60 = v5;
        OUTLINED_FUNCTION_19_1();
        _os_log_error_impl(v35, v36, v37, v38, v39, 0x20u);
      }

      v23 = MEMORY[0x277CCA9B8];
      v53 = *MEMORY[0x277CCA470];
      OUTLINED_FUNCTION_30_1();
      v18 = [v24 stringWithFormat:@"Domain %@ attribute %@ contains subattributes data of wrong type: %@"];
      v54 = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      v20 = v23;
      v21 = 2;
    }

    else
    {
      v16 = rbs_general_log();
      if (OUTLINED_FUNCTION_24(v16))
      {
        v55 = 138543618;
        v56 = v6;
        v57 = 2112;
        v58 = v7;
        OUTLINED_FUNCTION_19_1();
        _os_log_error_impl(v30, v31, v32, v33, v34, 0x16u);
      }

      v17 = MEMORY[0x277CCA9B8];
      v61 = *MEMORY[0x277CCA470];
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains no subattributes", v6, v7];
      v62[0] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v61 count:1];
      v20 = v17;
      v21 = 1;
    }

    v25 = [v20 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:v21 userInfo:v19];
LABEL_22:

    [v8 addObject:v25];
    goto LABEL_23;
  }

  array = 0;
LABEL_23:

  v26 = *MEMORY[0x277D85DE8];

  return array;
}

- (void)_configureTemplate:(uint64_t)template fromInfo:(uint64_t)info forDomain:(void *)domain name:(char)name allowRestrictions:(void *)restrictions errors:
{
  OUTLINED_FUNCTION_11_1();
  v13 = v12;
  v15 = v14;
  v16 = v7;
  v17 = v8;
  domainCopy = domain;
  restrictionsCopy = restrictions;
  if (v13)
  {
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_31_0();
    v21 = __108__RBDomainAttributeManagerDataProvider__configureTemplate_fromInfo_forDomain_name_allowRestrictions_errors___block_invoke;
    v22 = &unk_279B34030;
    v23 = v17;
    v24 = v16;
    nameCopy = name;
    v25 = restrictionsCopy;
    v26 = v13;
    v27 = domainCopy;
    v28 = v15;
    [v24 enumerateKeysAndObjectsUsingBlock:v20];
  }
}

- (id)_bundlePropertiesFromDictionary:forDomainAttributeWithDomain:name:errors:
{
  OUTLINED_FUNCTION_3_7();
  v54 = *MEMORY[0x277D85DE8];
  v6 = v5;
  v7 = v0;
  v8 = v1;
  v9 = v2;
  if (v3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if (!v6)
    {
      goto LABEL_10;
    }

    objc_opt_class();
    if (OUTLINED_FUNCTION_25_1())
    {
      OUTLINED_FUNCTION_2_13();
      v40 = v7;
      v43 = v8;
      v46 = v9;
      v11 = dictionary;
      OUTLINED_FUNCTION_26_1(v11, v12, v13, v14, v15, v16, v17, v18, v31, v32, v33, v34, v35, 3221225472, __113__RBDomainAttributeManagerDataProvider__bundlePropertiesFromDictionary_forDomainAttributeWithDomain_name_errors___block_invoke, &unk_279B33888, v40, v43, v46, v48);

      v19 = v41;
LABEL_9:

      goto LABEL_10;
    }

    v20 = rbs_general_log();
    if (OUTLINED_FUNCTION_24(v20))
    {
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_13_1(&dword_262485000, v25, v26, "Domain %{public}@ attribute %{public}@ contains bundle properties of wrong type: %{public}@", v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v42, v45, v48, v50, v52, v53);
    }

    if (v9)
    {
      v51 = *MEMORY[0x277CCA470];
      OUTLINED_FUNCTION_30_1();
      [v21 stringWithFormat:@"Domain %@ attribute %@ contains bundle property of wrong type: %@"];
      objc_claimAutoreleasedReturnValue();
      v22 = [OUTLINED_FUNCTION_6_4() dictionaryWithObjects:? forKeys:? count:?];
      v19 = [OUTLINED_FUNCTION_17_1() errorWithDomain:? code:? userInfo:?];

      [OUTLINED_FUNCTION_15_1() addObject:?];
      goto LABEL_9;
    }
  }

  else
  {
    dictionary = 0;
  }

LABEL_10:

  v23 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (id)_additionalRestrictionsFromDictionary:forDomainAttributeWithDomain:name:errors:
{
  OUTLINED_FUNCTION_3_7();
  v54 = *MEMORY[0x277D85DE8];
  v6 = v5;
  v7 = v0;
  v8 = v1;
  v9 = v2;
  if (v3)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    if (!v6)
    {
      goto LABEL_10;
    }

    objc_opt_class();
    if (OUTLINED_FUNCTION_25_1())
    {
      OUTLINED_FUNCTION_2_13();
      v40 = v7;
      v43 = v8;
      v46 = v9;
      v11 = dictionary;
      OUTLINED_FUNCTION_26_1(v11, v12, v13, v14, v15, v16, v17, v18, v31, v32, v33, v34, v35, 3221225472, __119__RBDomainAttributeManagerDataProvider__additionalRestrictionsFromDictionary_forDomainAttributeWithDomain_name_errors___block_invoke, &unk_279B33888, v40, v43, v46, v48);

      v19 = v41;
LABEL_9:

      goto LABEL_10;
    }

    v20 = rbs_general_log();
    if (OUTLINED_FUNCTION_24(v20))
    {
      OUTLINED_FUNCTION_4_9();
      OUTLINED_FUNCTION_13_1(&dword_262485000, v25, v26, "Domain %{public}@ attribute %{public}@ contains additionalRestrictions of wrong type: %{public}@", v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v42, v45, v48, v50, v52, v53);
    }

    if (v9)
    {
      v51 = *MEMORY[0x277CCA470];
      OUTLINED_FUNCTION_30_1();
      [v21 stringWithFormat:@"Domain %@ attribute %@ contains additionalRestrictions of wrong type: %@"];
      objc_claimAutoreleasedReturnValue();
      v22 = [OUTLINED_FUNCTION_6_4() dictionaryWithObjects:? forKeys:? count:?];
      v19 = [OUTLINED_FUNCTION_17_1() errorWithDomain:? code:? userInfo:?];

      [OUTLINED_FUNCTION_15_1() addObject:?];
      goto LABEL_9;
    }
  }

  else
  {
    dictionary = 0;
  }

LABEL_10:

  v23 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (BOOL)_checkConflictingAttributes:(uint64_t)attributes error:
{
  if (result)
  {
    v4 = [MEMORY[0x277CBEB98] setWithArray:a2];
    v5 = [RBAssertionDescriptorValidator checkConflictingAttributes:v4 error:attributes];

    return v5;
  }

  return result;
}

- (id)_attributeTemplateGroupsFromArray:(uint64_t)array forDomainAttributeWithDomain:(uint64_t)domain name:(NSObject *)name errors:
{
  OUTLINED_FUNCTION_11_1();
  v9 = v8;
  v71[1] = *MEMORY[0x277D85DE8];
  v11 = v10;
  v12 = v5;
  v13 = v6;
  nameCopy = name;
  v49 = v9;
  if (v9)
  {
    array = [MEMORY[0x277CBEB18] array];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v15 = v11;
        v16 = [v15 countByEnumeratingWithState:&v53 objects:v61 count:16];
        if (v16)
        {
          v17 = v16;
          obj = v15;
          v43 = v11;
          v18 = *v54;
          v19 = *MEMORY[0x277CCA470];
          do
          {
            v20 = 0;
            do
            {
              if (*v54 != v18)
              {
                objc_enumerationMutation(obj);
              }

              v21 = *(*(&v53 + 1) + 8 * v20);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v26 = [v21 objectForKeyedSubscript:@"Attributes"];
                name = [RBDomainAttributeManagerDataProvider _attributeTemplatesFromArray:forDomainAttributeWithDomain:name:errors:];

                if (name)
                {
                  v52 = 0;
                  v27 = [(RBDomainAttributeManagerDataProvider *)v49 _checkConflictingAttributes:name error:&v52];
                  v48 = v52;
                  if (!v27)
                  {
                    log = rbs_general_log();
                    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412546;
                      v65 = v12;
                      v66 = 2112;
                      v67 = v48;
                      _os_log_error_impl(&dword_262485000, log, OS_LOG_TYPE_ERROR, "Conflicting attributes found in Domain: %@ with error: %@", buf, 0x16u);
                    }

                    v44 = MEMORY[0x277CCA9B8];
                    v57 = v19;
                    loga = [MEMORY[0x277CCACA8] stringWithFormat:@"Error in Domain %@: %@", v12, v48];
                    v58 = loga;
                    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
                    v45 = [v44 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:5 userInfo:v28];

                    [nameCopy addObject:v45];
                  }

                  v29 = objc_alloc_init(RBAttributeTemplateGroup);
                  [(RBAttributeTemplateGroup *)v29 setAttributes:name];
                  [(RBDomainAttributeManagerDataProvider *)v49 _configureTemplate:v29 fromInfo:v21 forDomain:v12 name:v13 allowRestrictions:0 errors:nameCopy];
                  [array addObject:v29];
                }
              }

              else
              {
                v22 = rbs_general_log();
                if (OUTLINED_FUNCTION_27(v22))
                {
                  *buf = 138543874;
                  v65 = v12;
                  v66 = 2114;
                  v67 = v13;
                  v68 = 2114;
                  v69 = v21;
                  _os_log_error_impl(&dword_262485000, name, OS_LOG_TYPE_ERROR, "Domain %{public}@ attribute %{public}@ contains attribute group of wrong type: %{public}@", buf, 0x20u);
                }

                v23 = MEMORY[0x277CCA9B8];
                v59 = v19;
                v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains attribute group of wrong type: %@", v12, v13, v21];
                v60 = v24;
                v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
                name = [v23 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:2 userInfo:v25];

                [nameCopy addObject:name];
              }

              ++v20;
            }

            while (v17 != v20);
            v30 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
            v17 = v30;
          }

          while (v30);
          v11 = v43;
          v15 = obj;
        }

        goto LABEL_30;
      }

      v37 = rbs_general_log();
      if (OUTLINED_FUNCTION_27(v37))
      {
        OUTLINED_FUNCTION_7_5(5.8383e-34);
        v68 = v42;
        v69 = v11;
        _os_log_error_impl(&dword_262485000, name, OS_LOG_TYPE_ERROR, "Domain %{public}@ attribute %{public}@ contains attribute groups data of wrong type: %{public}@", buf, 0x20u);
      }

      v38 = MEMORY[0x277CCA9B8];
      v62 = *MEMORY[0x277CCA470];
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains attribute groups data of wrong type: %@", v12, v13, v11];
      v63 = v33;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
      v35 = v38;
      v36 = 2;
    }

    else
    {
      v31 = rbs_general_log();
      if (OUTLINED_FUNCTION_27(v31))
      {
        OUTLINED_FUNCTION_7_5(5.8382e-34);
        OUTLINED_FUNCTION_11_0(&dword_262485000, name, v41, "Domain %{public}@ attribute %{public}@ contains no attribute groups", buf);
      }

      v32 = MEMORY[0x277CCA9B8];
      v70 = *MEMORY[0x277CCA470];
      v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute %@ contains no subattributes", v12, v13];
      v71[0] = v33;
      v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:&v70 count:1];
      v35 = v32;
      v36 = 1;
    }

    v15 = [v35 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:v36 userInfo:v34];

    [nameCopy addObject:v15];
LABEL_30:

    goto LABEL_31;
  }

  array = 0;
LABEL_31:

  v39 = *MEMORY[0x277D85DE8];

  return array;
}

- (RBDomainAttributeTemplate)_templateWithDomain:name:dictionary:errors:
{
  OUTLINED_FUNCTION_3_7();
  v42 = *MEMORY[0x277D85DE8];
  v5 = v4;
  v6 = v0;
  v7 = v1;
  v8 = v2;
  if (!v3)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v9 = rbs_general_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v39 = v6;
        v40 = 2114;
        v41 = v7;
        OUTLINED_FUNCTION_11_0(&dword_262485000, v9, v10, "Domain attribute templates for %{public}@ is not a dictionary: %{public}@", buf);
      }

      if (v8)
      {
        v11 = MEMORY[0x277CCA9B8];
        v34 = *MEMORY[0x277CCA470];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain attribute templates for %@ is not a dictionary: %@", v6, v7];
        v35 = v12;
        v13 = MEMORY[0x277CBEAC0];
        v14 = &v35;
        v15 = &v34;
LABEL_12:
        v18 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
        firstObject = [v11 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:2 userInfo:v18];

        [v8 addObject:firstObject];
        v20 = 0;
LABEL_13:

        goto LABEL_15;
      }

      goto LABEL_14;
    }

    v20 = objc_alloc_init(RBDomainAttributeTemplate);
    [(RBDomainAttributeTemplate *)v20 setName:v6];
    [(RBDomainAttributeTemplate *)v20 setDomain:v5];
    [(RBDomainAttributeManagerDataProvider *)v3 _configureTemplate:v20 fromInfo:v7 forDomain:v5 name:v6 allowRestrictions:1 errors:v8];
    v23 = RBSArrayForKey();
    firstObject = [v23 firstObject];

    if (firstObject)
    {
      v25 = rbs_general_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_262485000, v25, OS_LOG_TYPE_FAULT, "Domain attribute specified with legacy array EndowmentNamespace", buf, 2u);
      }

      v26 = MEMORY[0x277CCA9B8];
      v32 = *MEMORY[0x277CCA470];
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain attribute specified with legacy array EndowmentNamespace"];
      v33 = v27;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
      v29 = [v26 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:3 userInfo:v28];

      [v8 addObject:v29];
      v24 = firstObject;
    }

    else
    {
      v24 = RBSStringForKey();
      if (!v24)
      {
        goto LABEL_25;
      }
    }

    [(RBDomainAttributeTemplate *)v20 setEndowmentNamespace:v24];

LABEL_25:
    v30 = [v7 objectForKeyedSubscript:@"AttributeGroups"];
    v31 = [(RBDomainAttributeManagerDataProvider *)v3 _attributeTemplateGroupsFromArray:v30 forDomainAttributeWithDomain:v5 name:v6 errors:v8];

    if (v31)
    {
      [OUTLINED_FUNCTION_15_1() setAttributeGroups:?];
    }

    else
    {

      v20 = 0;
    }

    goto LABEL_13;
  }

  v16 = rbs_general_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v39 = v5;
    v40 = 2114;
    v41 = v6;
    OUTLINED_FUNCTION_11_0(&dword_262485000, v16, v17, "Domain %{public}@ attribute name is not a string: %{public}@", buf);
  }

  if (v8)
  {
    v11 = MEMORY[0x277CCA9B8];
    v36 = *MEMORY[0x277CCA470];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain %@ attribute name is not a string: %@", v5, v6];
    v37 = v12;
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v37;
    v15 = &v36;
    goto LABEL_12;
  }

LABEL_14:
  v20 = 0;
LABEL_15:

  v21 = *MEMORY[0x277D85DE8];

  return v20;
}

void __89__RBDomainAttributeManagerDataProvider__templatesWithDomain_fromFilename_dirpath_errors___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  OUTLINED_FUNCTION_23_1();
  v6 = [RBDomainAttributeManagerDataProvider _templateWithDomain:name:dictionary:errors:];
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 56);
    v9 = [(RBDomainAttributeTemplate *)v6 name];
    OUTLINED_FUNCTION_32_0(v9);
  }

  else
  {
    v3 = rbs_general_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 64);
      v13 = 138543618;
      v14 = v2;
      v15 = 2114;
      v16 = v12;
      OUTLINED_FUNCTION_11_0(&dword_262485000, v3, v10, "Error extracting domain attribute template with name %{public}@ from file %{public}@", &v13);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __83__RBDomainAttributeManagerDataProvider__templatesWithDomain_fromDictionary_errors___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  OUTLINED_FUNCTION_23_1();
  v6 = [RBDomainAttributeManagerDataProvider _templateWithDomain:name:dictionary:errors:];
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 56);
    v9 = [(RBDomainAttributeTemplate *)v6 name];
    OUTLINED_FUNCTION_32_0(v9);
  }

  else
  {
    v10 = rbs_general_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 138543362;
      v13 = v2;
      _os_log_error_impl(&dword_262485000, v10, OS_LOG_TYPE_ERROR, "Error extracting domain attribute template with name %{public}@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_preAttributeTemplateFromAttributeTemplate:(void *)template domainAttributeTemplate:(void *)attributeTemplate generateDependenciesByFullyQualifiedName:
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  attributeTemplateCopy = attributeTemplate;
  if (self)
  {
    templateCopy = template;
    domain = [(RBDomainAttributeTemplate *)templateCopy domain];
    name = [(RBDomainAttributeTemplate *)templateCopy name];

    v12 = [domain stringByAppendingPathExtension:name];

    objc_opt_class();
    if (OUTLINED_FUNCTION_25_1())
    {
      v13 = v7;
      domain2 = [v13 domain];
      name2 = [v13 name];
      v16 = [OUTLINED_FUNCTION_15_1() stringByAppendingPathExtension:?];
      if ([v16 isEqualToString:v12])
      {
        v17 = rbs_assertion_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v19 = 138543362;
          v20 = v12;
          _os_log_error_impl(&dword_262485000, v17, OS_LOG_TYPE_ERROR, "Domain attribute %{public}@ attempts to include itself", &v19, 0xCu);
        }
      }

      else
      {
        v17 = [attributeTemplateCopy objectForKeyedSubscript:v12];
        if (!v17)
        {
          v17 = [MEMORY[0x277CBEB58] set];
          [attributeTemplateCopy setObject:v17 forKeyedSubscript:v12];
        }

        [v17 addObject:v16];
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (id)_validatedAttributeTemplateFromAttributeTemplate:(void *)template domainAttributeTemplate:(void *)attributeTemplate dependenciesByFullyQualifiedName:(void *)name errors:
{
  v39[1] = *MEMORY[0x277D85DE8];
  v9 = a2;
  attributeTemplateCopy = attributeTemplate;
  nameCopy = name;
  if (self)
  {
    templateCopy = template;
    domain = [(RBDomainAttributeTemplate *)templateCopy domain];
    name = [(RBDomainAttributeTemplate *)templateCopy name];

    v15 = [OUTLINED_FUNCTION_15_1() stringByAppendingPathExtension:?];

    objc_opt_class();
    if (OUTLINED_FUNCTION_25_1())
    {
      v16 = v9;
      domain2 = [v16 domain];
      name2 = [v16 name];
      v19 = [domain2 stringByAppendingPathExtension:name2];
      if ([v19 isEqualToString:v15])
      {
        v20 = rbs_assertion_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v35 = v15;
          _os_log_error_impl(&dword_262485000, v20, OS_LOG_TYPE_ERROR, "Domain attribute %{public}@ attempts to include itself", buf, 0xCu);
        }

        if (!nameCopy)
        {
          goto LABEL_14;
        }

        v21 = MEMORY[0x277CCA9B8];
        v38 = *MEMORY[0x277CCA470];
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"Domain attribute %@ attempts to include itself", v15];
        v39[0] = v22;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_12_0();
        v23 = [v21 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:3 userInfo:domain2];

        OUTLINED_FUNCTION_24_1();
        v19 = v31;

        [nameCopy addObject:v23];
LABEL_13:

LABEL_14:
        self = 0;
LABEL_17:

        goto LABEL_18;
      }

      v23 = [attributeTemplateCopy objectForKeyedSubscript:v19];
      if ([v23 containsObject:v15])
      {
        v24 = rbs_assertion_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v35 = v15;
          v36 = 2114;
          v37 = v19;
          OUTLINED_FUNCTION_11_0(&dword_262485000, v24, v25, "Detected cycle between domain attributes %{public}@ and %{public}@", buf);
        }

        if (nameCopy)
        {
          v26 = MEMORY[0x277CCA9B8];
          v32 = *MEMORY[0x277CCA470];
          v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Detected cycle between domain attributes %@ and %@", v15, v19];
          v33 = v30;
          [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
          objc_claimAutoreleasedReturnValue();
          OUTLINED_FUNCTION_12_0();
          v27 = [v26 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:3 userInfo:domain2];

          OUTLINED_FUNCTION_24_1();
          v19 = v31;

          [nameCopy addObject:v27];
        }

        goto LABEL_13;
      }
    }

    self = [v9 copy];
    goto LABEL_17;
  }

LABEL_18:

  v28 = *MEMORY[0x277D85DE8];

  return self;
}

- (id)_legalPropertyNamesByClassName
{
  if (self)
  {
    if (qword_2814AA110 != -1)
    {
      dispatch_once(&qword_2814AA110, &__block_literal_global_263);
    }

    self = qword_2814AA108;
    v1 = vars8;
  }

  return self;
}

- (id)_legalClassNames
{
  if (self)
  {
    if (qword_2814AA100 != -1)
    {
      dispatch_once(&qword_2814AA100, &__block_literal_global_25);
    }

    self = _MergedGlobals_1;
    v1 = vars8;
  }

  return self;
}

void __113__RBDomainAttributeManagerDataProvider__bundlePropertiesFromDictionary_forDomainAttributeWithDomain_name_errors___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_22_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_13(&dword_262485000, v1, v2, "Domain %{public}@ attribute %{public}@ contains bundle property name of wrong type: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __119__RBDomainAttributeManagerDataProvider__additionalRestrictionsFromDictionary_forDomainAttributeWithDomain_name_errors___block_invoke_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_22_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_13(&dword_262485000, v1, v2, "Domain %{public}@ attribute %{public}@ contains additional restriction of wrong type: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

void __119__RBDomainAttributeManagerDataProvider__additionalRestrictionsFromDictionary_forDomainAttributeWithDomain_name_errors___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_22_1(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_13(&dword_262485000, v1, v2, "Domain %{public}@ attribute %{public}@ contains dditional restriction value of wrong type: %{public}@");
  v3 = *MEMORY[0x277D85DE8];
}

@end