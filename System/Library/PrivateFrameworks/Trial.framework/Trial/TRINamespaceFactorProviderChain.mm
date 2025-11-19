@interface TRINamespaceFactorProviderChain
+ (id)factorProviderWithPaths:(id)a3 namespaceName:(id)a4;
+ (id)factorProviderWithPaths:(id)a3 namespaceName:(id)a4 excludingTreatmentLayers:(unint64_t)a5;
- (BOOL)hasAnyTreatmentInLayers:(unint64_t)a3;
- (TRINamespaceFactorProviderChain)initWithNamespaceName:(id)a3 typedProviderChain:(id)a4 paths:(id)a5 excludingTreatmentLayers:(unint64_t)a6;
- (id)_dealiasedFactorLevelForFactorLevel:(id)a3 unaliasedName:(id)a4;
- (id)experimentId;
- (id)factorLevels;
- (id)factorNamesWithObfuscation:(id)a3;
- (id)levelForFactor:(id)a3 outProvider:(id *)a4;
- (id)promotableFactorPackId;
- (id)providerForTreatmentLayer:(unint64_t)a3;
- (id)treatmentId;
- (int)deploymentId;
- (unsigned)namespaceCompatibilityVersion;
- (unsigned)namespaceId;
- (void)cacheFactorLevels;
- (void)computeTreatmentAssetIndexes:(id *)a3 withAssociatedExperimentIds:(id *)a4 andFactorPackAssetIds:(id *)a5 withAssociatedRolloutDeployments:(id *)a6 withExperimentFactorNames:(id *)a7 andRolloutFactorNames:(id *)a8 forFactors:(id)a9 usingFilter:(id)a10;
- (void)dispose;
@end

@implementation TRINamespaceFactorProviderChain

- (id)factorLevels
{
  v40 = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v3 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = [(NSArray *)self->_providerChain reverseObjectEnumerator];
  v27 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v27)
  {
    v26 = *v35;
    do
    {
      v4 = 0;
      do
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v4;
        v5 = *(*(&v34 + 1) + 8 * v4);
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v29 = [v5 factorLevels];
        v6 = [v29 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v6)
        {
          v7 = v6;
          v8 = *v31;
          do
          {
            for (i = 0; i != v7; ++i)
            {
              if (*v31 != v8)
              {
                objc_enumerationMutation(v29);
              }

              v10 = *(*(&v30 + 1) + 8 * i);
              v11 = objc_autoreleasePoolPush();
              v12 = v10;
              aliasMap = self->_aliasMap;
              v14 = [v12 factor];
              v15 = [v14 name];
              v16 = [(NSDictionary *)aliasMap allKeysForObject:v15];

              if (v16 && [v16 count] == 1)
              {
                v17 = [v16 objectAtIndexedSubscript:0];
                v18 = [(TRINamespaceFactorProviderChain *)self _dealiasedFactorLevelForFactorLevel:v12 unaliasedName:v17];

                v12 = v18;
              }

              v19 = [v12 factor];
              v20 = [v19 name];
              [v3 setObject:v12 forKeyedSubscript:v20];

              objc_autoreleasePoolPop(v11);
            }

            v7 = [v29 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v7);
        }

        v4 = v28 + 1;
      }

      while (v28 + 1 != v27);
      v27 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v27);
  }

  v21 = [v3 allValues];

  objc_autoreleasePoolPop(context);
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (void)dispose
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_providerChain;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) dispose];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)factorProviderWithPaths:(id)a3 namespaceName:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[TRINamespaceResolver alloc] initWithPaths:v7];
  v9 = [a1 factorProviderWithPaths:v7 namespaceName:v6 resolver:v8 faultOnMissingInstalledFactors:0];

  return v9;
}

+ (id)factorProviderWithPaths:(id)a3 namespaceName:(id)a4 excludingTreatmentLayers:(unint64_t)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [[TRINamespaceResolver alloc] initWithPaths:v9];
  v11 = [(TRINamespaceResolver *)v10 resolveFactorProviderChainForNamespaceName:v8 faultOnMissingInstalledFactors:0 installedFactorsAccessible:0];
  v12 = [[a1 alloc] initWithNamespaceName:v8 typedProviderChain:v11 paths:v9 excludingTreatmentLayers:a5];

  return v12;
}

- (TRINamespaceFactorProviderChain)initWithNamespaceName:(id)a3 typedProviderChain:(id)a4 paths:(id)a5 excludingTreatmentLayers:(unint64_t)a6
{
  v116 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v91 = a4;
  v12 = a5;
  if (!v11)
  {
    v86 = v12;
    v87 = [MEMORY[0x277CCA890] currentHandler];
    [v87 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProviderChain.m" lineNumber:89 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

    v12 = v86;
  }

  v90 = v12;
  if (!v12)
  {
    v88 = [MEMORY[0x277CCA890] currentHandler];
    [v88 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProviderChain.m" lineNumber:90 description:{@"Invalid parameter not satisfying: %@", @"paths"}];
  }

  v109.receiver = self;
  v109.super_class = TRINamespaceFactorProviderChain;
  v13 = [(TRINamespaceFactorProviderChain *)&v109 init];
  v14 = v91;
  v92 = v13;
  if (!v13)
  {
    goto LABEL_84;
  }

  v15 = v13;
  objc_storeStrong(&v13->_namespaceName, a3);
  objc_storeStrong(&v15->_paths, a5);
  v95 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v91, "count")}];
  v16 = [v90 namespaceDescriptorsDefaultDir];
  v97 = [TRINamespaceDescriptor loadWithNamespaceName:v11 fromDirectory:v16];

  v17 = [v91 lastObject];
  if (v17)
  {
    v18 = [v91 lastObject];
    v19 = [v18 provider];
    v20 = v91;
    v21 = [v19 namespaceCompatibilityVersion];
  }

  else
  {
    v20 = v91;
    v21 = 0;
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v22 = v20;
  v23 = [v22 countByEnumeratingWithState:&v105 objects:v115 count:16];
  v89 = v11;
  if (!v23)
  {

    v98 = 0;
    v14 = v91;
    v50 = v92;
    p_rolloutProvider = &v92->_rolloutProvider;
    goto LABEL_46;
  }

  v24 = v23;
  v25 = *v106;
  v93 = &v92->_rolloutProvider;
  v98 = 0;
  do
  {
    for (i = 0; i != v24; ++i)
    {
      if (*v106 != v25)
      {
        objc_enumerationMutation(v22);
      }

      v27 = *(*(&v105 + 1) + 8 * i);
      v28 = [v27 provider];
      v29 = [v28 namespaceCompatibilityVersion];

      v30 = [v27 type];
      if (v29 != v21)
      {
        if (v30 != 2)
        {
          goto LABEL_25;
        }

        v32 = [v97 upgradeNCVs];
        v33 = MEMORY[0x277CCABB0];
        v34 = [v27 provider];
        v35 = [v33 numberWithUnsignedInteger:{objc_msgSend(v34, "namespaceCompatibilityVersion")}];
        v36 = [v32 containsObject:v35];

        if (v36)
        {
          v37 = TRILogCategory_ClientFramework();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            v38 = [v27 logDesc];
            *buf = 138412290;
            v112 = v38;
            _os_log_impl(&dword_22EA6B000, v37, OS_LOG_TYPE_DEFAULT, "Namespace factor provider %@ is upgrade compatible. Keeping it in case there's no factor provider matching the download NCV.", buf, 0xCu);
          }

          v39 = v98;
          v98 = v27;
        }

        else
        {
LABEL_25:
          v39 = TRILogCategory_ClientFramework();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            v40 = [v27 logDesc];
            v41 = [v27 provider];
            v42 = [v41 namespaceCompatibilityVersion];
            *buf = 138412802;
            v112 = v40;
            v113 = 1024;
            *v114 = v21;
            *&v114[4] = 1024;
            *&v114[6] = v42;
            _os_log_impl(&dword_22EA6B000, v39, OS_LOG_TYPE_DEFAULT, "Omitting namespace factor provider %@ due to NCV incompatibility (exp %u, act %u).", buf, 0x18u);
          }
        }

        goto LABEL_34;
      }

      if (v30 <= 3)
      {
        if (v30 == 1)
        {
          p_installedProvider = &v92->_installedProvider;
        }

        else
        {
          p_installedProvider = &v92->_rolloutProvider;
          if (v30 != 2)
          {
            goto LABEL_32;
          }
        }
      }

      else
      {
        p_installedProvider = &v92->_experimentProvider;
        if (v30 != 4)
        {
          p_installedProvider = &v92->_devOverrideProvider;
          if (v30 != 8)
          {
            p_installedProvider = &v92->_factorPackExperimentProvider;
            if (v30 != 32)
            {
              goto LABEL_32;
            }
          }
        }
      }

      v43 = [v27 provider];
      v44 = *p_installedProvider;
      *p_installedProvider = v43;

LABEL_32:
      if (([v27 type] & a6) != 0)
      {
        continue;
      }

      v39 = [v27 provider];
      [(NSArray *)v95 addObject:v39];
LABEL_34:
    }

    v24 = [v22 countByEnumeratingWithState:&v105 objects:v115 count:16];
  }

  while (v24);

  p_rolloutProvider = &v92->_rolloutProvider;
  if (*v93)
  {
    v11 = v89;
    v14 = v91;
  }

  else
  {
    v11 = v89;
    v14 = v91;
    if (v98)
    {
      v46 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v47 = [v98 logDesc];
        *buf = 138412290;
        v112 = v47;
        _os_log_impl(&dword_22EA6B000, v46, OS_LOG_TYPE_DEFAULT, "Didn't find a download-NCV compatible rollout namespace factor provider. Using upgrade-NCV compatible factor provider instead: %@.", buf, 0xCu);

        v14 = v91;
      }

      v48 = [v98 provider];
      v49 = *v93;
      *v93 = v48;

      if ((a6 & 2) == 0)
      {
        [(NSArray *)v95 insertObject:*v93 atIndex:0];
      }
    }
  }

  v50 = v92;
LABEL_46:
  if (![(NSArray *)v95 count])
  {
    v51 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = [v22 _pas_mappedArrayWithTransform:&__block_literal_global_5];
      *buf = 138412546;
      v112 = v11;
      v113 = 2112;
      *v114 = v52;
      _os_log_impl(&dword_22EA6B000, v51, OS_LOG_TYPE_DEFAULT, "no factor providers loaded for namespace %@ from directories %@", buf, 0x16u);

      v14 = v91;
    }

    v50 = v92;
  }

  v53 = &v50->_installedProvider;
  if (!v50->_installedProvider)
  {
    goto LABEL_71;
  }

  v94 = p_rolloutProvider;
  v99 = objc_opt_new();
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v96 = &v50->_installedProvider;
  v54 = [*v53 factorLevels];
  v55 = [v54 countByEnumeratingWithState:&v101 objects:v110 count:16];
  if (!v55)
  {
    goto LABEL_62;
  }

  v56 = v55;
  v57 = *v102;
  while (2)
  {
    v58 = 0;
    while (2)
    {
      if (*v102 != v57)
      {
        objc_enumerationMutation(v54);
      }

      v59 = *(*(&v101 + 1) + 8 * v58);
      v60 = [v59 factor];
      if ([v60 hasAlias])
      {
        v61 = [v59 factor];
        v62 = [v61 alias];
        v63 = [v62 isEqual:&stru_28435FC98];

        if ((v63 & 1) == 0)
        {
          v60 = [v59 factor];
          v64 = [v60 alias];
          v65 = [v59 factor];
          v66 = [v65 name];
          [(NSDictionary *)v99 setObject:v64 forKeyedSubscript:v66];

          goto LABEL_59;
        }
      }

      else
      {
LABEL_59:
      }

      if (v56 != ++v58)
      {
        continue;
      }

      break;
    }

    v56 = [v54 countByEnumeratingWithState:&v101 objects:v110 count:16];
    if (v56)
    {
      continue;
    }

    break;
  }

LABEL_62:

  v67 = [(NSDictionary *)v99 allKeys];
  v68 = [v67 count];
  v69 = [(NSDictionary *)v99 allValues];
  v70 = [v69 count];

  if (v68 > v70)
  {
    v71 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22EA6B000, v71, OS_LOG_TYPE_ERROR, "Found multiple factor names sharing a common alias. Every factor name and any corresponding alias should be unique and 1-1 within a given namespace.", buf, 2u);
    }

    v11 = v89;
    v14 = v91;
    v50 = v92;
    v53 = v96;
    goto LABEL_69;
  }

  v72 = [(NSDictionary *)v99 allKeys];
  v73 = [v72 count];
  v74 = [(NSDictionary *)v99 allValues];
  v75 = [v74 count];

  v76 = v73 >= v75;
  v11 = v89;
  v14 = v91;
  v50 = v92;
  v53 = v96;
  if (!v76)
  {
    v71 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_22EA6B000, v71, OS_LOG_TYPE_ERROR, "Found multiple aliases for a given factor name. Every factor name and any corresponding alias should be unique and 1-1 within a given namespace.", buf, 2u);
    }

LABEL_69:
  }

  aliasMap = v50->_aliasMap;
  v50->_aliasMap = v99;

  p_rolloutProvider = v94;
LABEL_71:
  if ((a6 & 2) != 0)
  {
    v78 = 0;
  }

  else
  {
    v78 = *p_rolloutProvider;
  }

  objc_storeStrong(p_rolloutProvider, v78);
  if ((a6 & 0x20) != 0)
  {
    factorPackExperimentProvider = 0;
  }

  else
  {
    factorPackExperimentProvider = v50->_factorPackExperimentProvider;
  }

  objc_storeStrong(&v50->_factorPackExperimentProvider, factorPackExperimentProvider);
  if ((a6 & 4) != 0)
  {
    experimentProvider = 0;
  }

  else
  {
    experimentProvider = v50->_experimentProvider;
  }

  objc_storeStrong(&v50->_experimentProvider, experimentProvider);
  if (a6)
  {
    v81 = 0;
  }

  else
  {
    v81 = *v53;
  }

  objc_storeStrong(v53, v81);
  providerChain = v50->_providerChain;
  v50->_providerChain = v95;
  v83 = v95;

LABEL_84:
  v84 = *MEMORY[0x277D85DE8];
  return v92;
}

- (id)experimentId
{
  v2 = [(NSArray *)self->_providerChain firstObject];
  v3 = [v2 experimentId];

  return v3;
}

- (int)deploymentId
{
  v2 = [(NSArray *)self->_providerChain firstObject];
  v3 = [v2 deploymentId];

  return v3;
}

- (id)treatmentId
{
  v2 = [(NSArray *)self->_providerChain firstObject];
  v3 = [v2 treatmentId];

  return v3;
}

- (id)providerForTreatmentLayer:(unint64_t)a3
{
  if (a3 <= 3)
  {
    if (a3 == 1)
    {
      installedProvider = self->_installedProvider;
      goto LABEL_12;
    }

    if (a3 == 2)
    {
      installedProvider = self->_rolloutProvider;
      goto LABEL_12;
    }
  }

  else
  {
    switch(a3)
    {
      case 4uLL:
        installedProvider = self->_experimentProvider;
        goto LABEL_12;
      case 8uLL:
        installedProvider = self->_devOverrideProvider;
        goto LABEL_12;
      case 0x20uLL:
        installedProvider = self->_factorPackExperimentProvider;
LABEL_12:
        v7 = installedProvider;
        goto LABEL_13;
    }
  }

  v9 = [MEMORY[0x277CCA890] currentHandler];
  [v9 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProviderChain.m" lineNumber:208 description:{@"Bad layer 0x%llx", a3}];

LABEL_13:

  return v7;
}

- (unsigned)namespaceCompatibilityVersion
{
  v2 = [(NSArray *)self->_providerChain lastObject];
  v3 = [v2 namespaceCompatibilityVersion];

  return v3;
}

- (BOOL)hasAnyTreatmentInLayers:(unint64_t)a3
{
  if ((a3 & 1) != 0 && self->_installedProvider || (a3 & 2) != 0 && self->_rolloutProvider || (a3 & 4) != 0 && self->_experimentProvider)
  {
    return 1;
  }

  if ((a3 & 0x20) != 0)
  {
    return self->_factorPackExperimentProvider != 0;
  }

  return 0;
}

- (id)levelForFactor:(id)a3 outProvider:(id *)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = self->_providerChain;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [v12 levelForFactor:{v6, v25}];
        if (v13)
        {
          v20 = v13;
          if (a4)
          {
            objc_storeStrong(a4, v12);
          }

          v21 = v20;
          v16 = v21;
          goto LABEL_28;
        }

        v14 = [(NSDictionary *)self->_aliasMap objectForKeyedSubscript:v6];

        if (v14)
        {
          v15 = [(NSDictionary *)self->_aliasMap objectForKeyedSubscript:v6];
          v16 = [v12 levelForFactor:v15];

          if (v16)
          {
            if (a4)
            {
              objc_storeStrong(a4, v12);
            }

            v21 = 0;
            goto LABEL_28;
          }
        }
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  namespaceName = self->_namespaceName;
  v18 = [(TRIPaths *)self->_paths namespaceDescriptorsDefaultDir];
  v7 = [TRINamespaceDescriptor loadWithNamespaceName:namespaceName fromDirectory:v18];

  if (([(NSArray *)v7 optedOutOfDefaults]& 1) == 0 && [(NSArray *)self->_providerChain count])
  {
    if ((+[TRIProcessInfo hostingProcessIsTriald](TRIProcessInfo, "hostingProcessIsTriald") || +[TRIProcessInfo hostingProcessIsTrialdSystem]) && ![(NSString *)self->_namespaceName hasPrefix:@"TRIAL_", v25])
    {
      v19 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
LABEL_32:
        v24 = self->_namespaceName;
        *buf = 138412546;
        v30 = v24;
        v31 = 2112;
        v32 = v6;
        _os_log_error_impl(&dword_22EA6B000, v19, OS_LOG_TYPE_ERROR, "Namespace %@ does not provide a factor with name %@.  Please check your factor name against your factor definitions on trial.apple.com.", buf, 0x16u);
      }
    }

    else
    {
      v19 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_32;
      }
    }
  }

  v16 = 0;
  if (a4)
  {
    v21 = *a4;
    *a4 = 0;
LABEL_28:
  }

  v22 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)cacheFactorLevels
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = self->_providerChain;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) cacheFactorLevels];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)computeTreatmentAssetIndexes:(id *)a3 withAssociatedExperimentIds:(id *)a4 andFactorPackAssetIds:(id *)a5 withAssociatedRolloutDeployments:(id *)a6 withExperimentFactorNames:(id *)a7 andRolloutFactorNames:(id *)a8 forFactors:(id)a9 usingFilter:(id)a10
{
  v121 = *MEMORY[0x277D85DE8];
  v13 = a9;
  v14 = a10;
  location = a3;
  if (a3)
  {
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_77:
    v66 = [MEMORY[0x277CCA890] currentHandler];
    [v66 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProviderChain.m" lineNumber:284 description:{@"Invalid parameter not satisfying: %@", @"assetIds"}];

    if (v13)
    {
      goto LABEL_4;
    }

    goto LABEL_78;
  }

  v65 = [MEMORY[0x277CCA890] currentHandler];
  [v65 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProviderChain.m" lineNumber:283 description:{@"Invalid parameter not satisfying: %@", @"assetIndexes"}];

  if (!a5)
  {
    goto LABEL_77;
  }

LABEL_3:
  if (v13)
  {
    goto LABEL_4;
  }

LABEL_78:
  v67 = [MEMORY[0x277CCA890] currentHandler];
  [v67 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProviderChain.m" lineNumber:285 description:{@"Invalid parameter not satisfying: %@", @"factorNames"}];

LABEL_4:
  v77 = a5;
  if (!v14)
  {
    v68 = [MEMORY[0x277CCA890] currentHandler];
    [v68 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProviderChain.m" lineNumber:286 description:{@"Invalid parameter not satisfying: %@", @"filterBlock"}];
  }

  v115[0] = MEMORY[0x277D85DD0];
  v115[1] = 3221225472;
  v115[2] = __218__TRINamespaceFactorProviderChain_computeTreatmentAssetIndexes_withAssociatedExperimentIds_andFactorPackAssetIds_withAssociatedRolloutDeployments_withExperimentFactorNames_andRolloutFactorNames_forFactors_usingFilter___block_invoke;
  v115[3] = &unk_27885E660;
  v15 = v14;
  v116 = v15;
  v115[4] = self;
  v16 = MEMORY[0x2318F2490](v115);
  v17 = objc_opt_new();
  v18 = objc_opt_new();
  v19 = objc_opt_new();
  v81 = objc_opt_new();
  v84 = objc_opt_new();
  v20 = objc_opt_new();
  v111[0] = MEMORY[0x277D85DD0];
  v111[1] = 3221225472;
  v111[2] = __218__TRINamespaceFactorProviderChain_computeTreatmentAssetIndexes_withAssociatedExperimentIds_andFactorPackAssetIds_withAssociatedRolloutDeployments_withExperimentFactorNames_andRolloutFactorNames_forFactors_usingFilter___block_invoke_2;
  v111[3] = &unk_27885E688;
  v21 = v16;
  v114 = v21;
  v74 = v19;
  v22 = v19;
  v112 = v22;
  obj = v18;
  v82 = v18;
  v113 = v82;
  v83 = MEMORY[0x2318F2490](v111);
  v107[0] = MEMORY[0x277D85DD0];
  v107[1] = 3221225472;
  v107[2] = __218__TRINamespaceFactorProviderChain_computeTreatmentAssetIndexes_withAssociatedExperimentIds_andFactorPackAssetIds_withAssociatedRolloutDeployments_withExperimentFactorNames_andRolloutFactorNames_forFactors_usingFilter___block_invoke_3;
  v107[3] = &unk_27885E6B0;
  v96 = v21;
  v110 = v96;
  v73 = v22;
  v108 = v73;
  v71 = v20;
  v72 = v20;
  v109 = v72;
  v97 = MEMORY[0x2318F2490](v107);
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v23 = v13;
  v92 = [v23 countByEnumeratingWithState:&v103 objects:v120 count:16];
  if (v92)
  {
    v91 = *v104;
    v24 = 0x27885D000uLL;
    v85 = v23;
    v86 = v17;
    v87 = v15;
    v88 = self;
    do
    {
      v25 = 0;
      do
      {
        if (*v104 != v91)
        {
          objc_enumerationMutation(v23);
        }

        v26 = *(*(&v103 + 1) + 8 * v25);
        v27 = objc_autoreleasePoolPush();
        v102 = 0;
        v28 = [(TRINamespaceFactorProviderChain *)self levelForFactor:v26 outProvider:&v102];
        v95 = v28;
        if (!v28)
        {
          (v96[2])(v96, @"Unknown factor", v26, 9);
          goto LABEL_28;
        }

        v93 = v27;
        if (!v102)
        {
          v61 = v28;
          v62 = [MEMORY[0x277CCA890] currentHandler];
          [v62 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProviderChain.m" lineNumber:370 description:{@"Invalid parameter not satisfying: %@", @"provider"}];

          v28 = v61;
        }

        v29 = [v28 fileOrDirectoryLevelWithIsDir:0];
        v94 = v29;
        if (!v29)
        {
          v31 = v96[2];
LABEL_26:
          v31();
          goto LABEL_27;
        }

        if ((*(v15 + 2))(v15, v26, v29, 0))
        {
          v30 = [(TRINamespaceFactorProviding *)v102 treatmentId];
          if (v30)
          {
          }

          else
          {
            v32 = [(TRINamespaceFactorProviding *)v102 rolloutId];

            if (!v32)
            {
              goto LABEL_27;
            }
          }

          if (([v94 hasAsset] & 1) == 0)
          {
            v31 = v96[2];
            goto LABEL_26;
          }

          v33 = *(v24 + 2376);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if (v102 == self->_factorPackExperimentProvider)
            {
              v34 = v83[2];
            }

            else
            {
              v34 = v97[2];
            }

            if ((v34() & 1) == 0)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v35 = [(TRINamespaceFactorProviding *)v102 treatmentId];

            if (!v35)
            {
              v41 = TRILogCategory_ClientFramework();
              if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
              {
                v60 = [(TRINamespaceFactorProviding *)v102 experimentId];
                *buf = 138412290;
                v119 = v60;
                _os_log_error_impl(&dword_22EA6B000, v41, OS_LOG_TYPE_ERROR, "Provider's treatmentId is unexpectedly nil for experiment %@", buf, 0xCu);
              }

              goto LABEL_27;
            }

            v89 = v25;
            v36 = [v94 asset];
            v37 = [(TRINamespaceFactorProviding *)v102 treatmentId];
            v38 = [v17 objectForKeyedSubscript:v37];
            v39 = v38;
            if (v38)
            {
              v40 = v38;
            }

            else
            {
              v40 = objc_opt_new();
            }

            v42 = v40;

            if ([v36 hasCloudKitIndex])
            {
              v43 = [v94 asset];
              [v42 addIndex:{-[NSObject cloudKitIndex](v43, "cloudKitIndex")}];
            }

            else
            {
              v43 = TRILogCategory_ClientFramework();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v119 = v94;
                _os_log_impl(&dword_22EA6B000, v43, OS_LOG_TYPE_DEFAULT, "Level does not have a cloudKitIndex: %{public}@, this usually implies that the asset is coming from an MA reference", buf, 0xCu);
              }
            }

            v90 = v36;

            v44 = [(TRINamespaceFactorProviding *)v102 treatmentId];
            [v17 setObject:v42 forKeyedSubscript:v44];

            v45 = [(TRINamespaceFactorProviding *)v102 experimentId];

            if (v45)
            {
              v46 = [(TRINamespaceFactorProviding *)v102 experimentId];
              [v82 addObject:v46];
            }

            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            v47 = self->_providerChain;
            v48 = [(NSArray *)v47 countByEnumeratingWithState:&v98 objects:v117 count:16];
            if (v48)
            {
              v49 = v48;
              v50 = *v99;
              do
              {
                for (i = 0; i != v49; ++i)
                {
                  if (*v99 != v50)
                  {
                    objc_enumerationMutation(v47);
                  }

                  v52 = *(*(&v98 + 1) + 8 * i);
                  v53 = *(v24 + 2376);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v54 = [v52 levelForFactor:v26];
                    v55 = v54;
                    if (v54)
                    {
                      v56 = v24;
                      v57 = v42;
                      v58 = [v54 fileOrDirectoryLevelWithIsDir:0];
                      if (v58)
                      {
                        (v97[2])(v97, v52, v26, v58);
                      }

                      else
                      {
                        (v96[2])(v96, @"Not file/directory-typed", v26, 10);
                      }

                      v42 = v57;
                      v24 = v56;
                    }
                  }
                }

                v49 = [(NSArray *)v47 countByEnumeratingWithState:&v98 objects:v117 count:16];
              }

              while (v49);
            }

            v15 = v87;
            self = v88;
            v23 = v85;
            v17 = v86;
            v25 = v89;
          }

          if (v102 == self->_rolloutProvider)
          {
            v59 = v84;
            goto LABEL_65;
          }

          if (v102 == self->_experimentProvider)
          {
            v59 = v81;
LABEL_65:
            [v59 addObject:v26];
          }
        }

LABEL_27:

        v27 = v93;
LABEL_28:

        objc_autoreleasePoolPop(v27);
        ++v25;
      }

      while (v25 != v92);
      v63 = [v23 countByEnumeratingWithState:&v103 objects:v120 count:16];
      v92 = v63;
    }

    while (v63);
  }

  objc_storeStrong(location, v17);
  if (a4)
  {
    objc_storeStrong(a4, obj);
  }

  objc_storeStrong(v77, v74);
  if (a7)
  {
    objc_storeStrong(a7, v81);
  }

  if (a8)
  {
    objc_storeStrong(a8, v84);
  }

  if (a6)
  {
    objc_storeStrong(a6, v71);
  }

  v64 = *MEMORY[0x277D85DE8];
}

void __218__TRINamespaceFactorProviderChain_computeTreatmentAssetIndexes_withAssociatedExperimentIds_andFactorPackAssetIds_withAssociatedRolloutDeployments_withExperimentFactorNames_andRolloutFactorNames_forFactors_usingFilter___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCA9B8];
  v15 = *MEMORY[0x277CCA450];
  v7 = MEMORY[0x277CCACA8];
  v8 = *(a1 + 40);
  v9 = *(*(a1 + 32) + 8);
  v10 = a3;
  v11 = [v7 stringWithFormat:@"%@, with factor %@ in namespace %@.", a2, v10, v9, v15];
  v16[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v13 = [v6 errorWithDomain:@"TRIGeneralErrorDomain" code:a4 userInfo:v12];
  (*(v8 + 16))(v8, v10, 0, v13);

  v14 = *MEMORY[0x277D85DE8];
}

BOOL __218__TRINamespaceFactorProviderChain_computeTreatmentAssetIndexes_withAssociatedExperimentIds_andFactorPackAssetIds_withAssociatedRolloutDeployments_withExperimentFactorNames_andRolloutFactorNames_forFactors_usingFilter___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 factorPackId];
  v11 = v10;
  if (v10)
  {
    v12 = TRIValidateFactorPackId(v10);
    if (v12)
    {
      v13 = [v9 asset];
      v14 = [v13 assetId];
      v15 = TRIValidateAssetId(v14);

      v16 = v15 != 0;
      if (v15)
      {
        v17 = [*(a1 + 32) objectForKeyedSubscript:v12];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = objc_opt_new();
        }

        v20 = v19;

        v21 = [[TRIAssetIdFactorName alloc] initWithAssetId:v15 factorName:v8];
        [v20 addObject:v21];

        [*(a1 + 32) setObject:v20 forKeyedSubscript:v12];
        v22 = [v7 experimentId];

        if (v22)
        {
          v23 = *(a1 + 40);
          v24 = [v7 experimentId];
          [v23 addObject:v24];
        }
      }

      else
      {
        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      (*(*(a1 + 48) + 16))();
      v16 = 0;
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v16 = 0;
  }

  return v16;
}

BOOL __218__TRINamespaceFactorProviderChain_computeTreatmentAssetIndexes_withAssociatedExperimentIds_andFactorPackAssetIds_withAssociatedRolloutDeployments_withExperimentFactorNames_andRolloutFactorNames_forFactors_usingFilter___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = [v7 treatmentId];
  v11 = v10;
  if (v10)
  {
    v12 = TRIValidateFactorPackId(v10);
    if (v12)
    {
      v13 = [v9 asset];
      v14 = [v13 assetId];
      v15 = TRIValidateAssetId(v14);

      v16 = v15 != 0;
      if (v15)
      {
        v17 = [*(a1 + 32) objectForKeyedSubscript:v12];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = objc_opt_new();
        }

        v20 = v19;

        v21 = [[TRIAssetIdFactorName alloc] initWithAssetId:v15 factorName:v8];
        [v20 addObject:v21];

        v29 = v20;
        [*(a1 + 32) setObject:v20 forKeyedSubscript:v12];
        v22 = [v7 experimentId];
        if (v22)
        {
          v23 = v22;
          v24 = [v7 deploymentId];

          if (v24 != -1)
          {
            v25 = [TRIRolloutDeployment alloc];
            v26 = [v7 experimentId];
            v27 = -[TRIRolloutDeployment initWithRolloutId:deploymentId:](v25, "initWithRolloutId:deploymentId:", v26, [v7 deploymentId]);

            [*(a1 + 40) addObject:v27];
          }
        }
      }

      else
      {
        (*(*(a1 + 48) + 16))();
      }
    }

    else
    {
      (*(*(a1 + 48) + 16))();
      v16 = 0;
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v16 = 0;
  }

  return v16;
}

- (id)promotableFactorPackId
{
  if (self->_experimentProvider)
  {
    goto LABEL_2;
  }

  rolloutProvider = self->_rolloutProvider;
  if (rolloutProvider)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_2:
      rolloutProvider = 0;
      goto LABEL_3;
    }

    v5 = self->_rolloutProvider;
    rolloutProvider = [(TRINamespaceFactorProviding *)v5 treatmentId];

    if (rolloutProvider)
    {
      if ([(TRINamespaceFactorProviding *)v5 promotable])
      {
        v6 = [(TRINamespaceFactorProviding *)v5 treatmentId];
        rolloutProvider = TRIValidateFactorPackId(v6);

        if (rolloutProvider)
        {
          v7 = rolloutProvider;
        }
      }

      else
      {
        rolloutProvider = 0;
      }
    }
  }

LABEL_3:

  return rolloutProvider;
}

- (id)_dealiasedFactorLevelForFactorLevel:(id)a3 unaliasedName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v7 descriptor];
  v10 = [v9 fields];
  v11 = [v10 count];

  if (v11 != 2)
  {
    v36 = [MEMORY[0x277CCA890] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProviderChain.m" lineNumber:502 description:{@"Shallow copy of aliased TRIFactorLevel needs updating, not implemented to copy all currently available fields"}];
  }

  v12 = [v7 factor];
  v13 = [v12 descriptor];
  v14 = [v13 fields];
  v15 = [v14 count];

  if (v15 != 7)
  {
    v37 = [MEMORY[0x277CCA890] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"TRINamespaceFactorProviderChain.m" lineNumber:503 description:{@"Shallow copy of aliased TRIFactor needs updating, not implemented to copy all currently available fields"}];
  }

  v16 = objc_opt_new();
  v17 = [v7 level];
  [v16 setLevel:v17];

  v18 = [v16 factor];
  [v18 setName:v8];

  v19 = [v7 factor];
  v20 = [v19 id_p];
  v21 = [v16 factor];
  [v21 setId_p:v20];

  v22 = [v7 factor];
  v23 = [v22 type];
  v24 = [v16 factor];
  [v24 setType:v23];

  v25 = [v7 factor];
  v26 = [v25 namespaceId];
  v27 = [v16 factor];
  [v27 setNamespaceId:v26];

  v28 = [v7 factor];
  v29 = [v28 namespaceName];
  v30 = [v16 factor];
  [v30 setNamespaceName:v29];

  v31 = [v7 factor];
  v32 = [v31 metadataKeysArray];
  v33 = [v16 factor];
  [v33 setMetadataKeysArray:v32];

  v34 = [v16 factor];
  [v34 setAlias:0];

  return v16;
}

- (id)factorNamesWithObfuscation:(id)a3
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__TRINamespaceFactorProviderChain_factorNamesWithObfuscation___block_invoke;
  v5[3] = &unk_27885E6D8;
  v5[4] = self;
  v3 = [a3 _pas_mappedArrayWithTransform:v5];

  return v3;
}

id __62__TRINamespaceFactorProviderChain_factorNamesWithObfuscation___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v3];
  if (!v4 || ([*(a1 + 32) levelForFactor:v4], v5 = objc_claimAutoreleasedReturnValue(), v5, v6 = v4, !v5))
  {
    v6 = v3;
  }

  v7 = v6;

  return v7;
}

- (unsigned)namespaceId
{
  v5 = -1;
  v3 = TRINamespace_NamespaceId_EnumDescriptor();
  LODWORD(self) = [v3 getValue:&v5 forEnumTextFormatName:self->_namespaceName];

  if (self)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

@end