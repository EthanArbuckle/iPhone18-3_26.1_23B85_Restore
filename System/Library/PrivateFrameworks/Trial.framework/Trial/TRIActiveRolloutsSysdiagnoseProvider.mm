@interface TRIActiveRolloutsSysdiagnoseProvider
+ (BOOL)_isFactorRecordFileType:(id)type;
- (TRIActiveRolloutsSysdiagnoseProvider)init;
- (TRIActiveRolloutsSysdiagnoseProvider)initWithNamespaceManagementClient:(id)client;
- (id)sysdiagnoseLinesWithError:(id *)error;
@end

@implementation TRIActiveRolloutsSysdiagnoseProvider

- (TRIActiveRolloutsSysdiagnoseProvider)initWithNamespaceManagementClient:(id)client
{
  clientCopy = client;
  v9.receiver = self;
  v9.super_class = TRIActiveRolloutsSysdiagnoseProvider;
  v6 = [(TRIActiveRolloutsSysdiagnoseProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_namespaceClient, client);
  }

  return v7;
}

- (TRIActiveRolloutsSysdiagnoseProvider)init
{
  v3 = objc_opt_new();
  v4 = [(TRIActiveRolloutsSysdiagnoseProvider *)self initWithNamespaceManagementClient:v3];

  return v4;
}

+ (BOOL)_isFactorRecordFileType:(id)type
{
  typeCopy = type;
  v4 = [typeCopy objectForKey:@"assetReference"];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [typeCopy objectForKey:@"path"];
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v7 = [typeCopy objectForKey:@"type"];
      v5 = [@"file" isEqual:v7];
    }
  }

  return v5;
}

- (id)sysdiagnoseLinesWithError:(id *)error
{
  v103 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v6 = [(TRINamespaceManagementProtocol *)self->_namespaceClient activeRolloutInformation:error];
  v7 = v6;
  if (v6)
  {
    if ([v6 count])
    {
      [array addObject:@"rollouts:"];
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v70 = v7;
      obj = v7;
      v73 = [obj countByEnumeratingWithState:&v96 objects:v102 count:16];
      if (!v73)
      {
        goto LABEL_37;
      }

      v72 = *v97;
      v8 = @"name";
      v9 = 0x277CCA000uLL;
      while (1)
      {
        v10 = 0;
        do
        {
          if (*v97 != v72)
          {
            objc_enumerationMutation(obj);
          }

          v75 = v10;
          v11 = *(*(&v96 + 1) + 8 * v10);
          v12 = [v11 objectForKey:@"deploymentId"];
          v13 = objc_alloc(*(v9 + 3240));
          v14 = [v11 objectForKey:@"rolloutId"];
          v74 = v12;
          intValue = [v12 intValue];
          if (intValue)
          {
            v16 = intValue;
          }

          else
          {
            v16 = 0xFFFFFFFFLL;
          }

          v17 = [v13 initWithFormat:@"    - rollout: %@.%d", v14, v16];
          [array addObject:v17];

          v18 = objc_alloc(*(v9 + 3240));
          v19 = [v11 objectForKey:@"rampId"];
          v20 = [v18 initWithFormat:@"      rampId: %@", v19];
          [array addObject:v20];

          v21 = objc_alloc(*(v9 + 3240));
          v22 = [v11 objectForKey:@"status"];
          v23 = [v21 initWithFormat:@"      status: %@", v22];
          [array addObject:v23];

          v24 = objc_alloc(*(v9 + 3240));
          v25 = [v11 objectForKey:@"activeFactorPackSetId"];
          v26 = [v24 initWithFormat:@"      activeFactorPackSetid: %@", v25];
          [array addObject:v26];

          [array addObject:@"      namespaces:"];
          v27 = [v11 objectForKey:@"namespaces"];
          v92 = 0u;
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v76 = v27;
          v78 = [v76 countByEnumeratingWithState:&v92 objects:v101 count:16];
          if (v78)
          {
            v77 = *v93;
            do
            {
              v28 = 0;
              do
              {
                if (*v93 != v77)
                {
                  objc_enumerationMutation(v76);
                }

                v81 = v28;
                v29 = *(*(&v92 + 1) + 8 * v28);
                context = objc_autoreleasePoolPush();
                v30 = [v29 objectForKey:@"name"];
                v31 = +[TRIStandardPaths sharedPaths];
                v84 = [TRINamespaceFactorProvider factorProviderWithNamespaceName:v30 paths:v31 treatmentLayer:8 faultOnMissingFactors:1 shouldLockFactorDirectory:1];

                v79 = v30;
                v32 = [objc_alloc(*(v9 + 3240)) initWithFormat:@"       - namespace: %@", v30];
                [array addObject:v32];

                v33 = objc_alloc(*(v9 + 3240));
                v34 = [v29 objectForKey:@"ncvs"];
                v35 = [v34 componentsJoinedByString:{@", "}];
                v36 = [v33 initWithFormat:@"         NCVs: [%@]", v35];
                [array addObject:v36];

                v9 = 0x277CCA000uLL;
                v37 = objc_alloc(MEMORY[0x277CCACA8]);
                v38 = [v29 objectForKey:@"factorPackId"];
                v39 = [v37 initWithFormat:@"         factorPackId: %@", v38];
                [array addObject:v39];

                [array addObject:@"         factors:"];
                v40 = [v29 objectForKey:@"factors"];
                v88 = 0u;
                v89 = 0u;
                v90 = 0u;
                v91 = 0u;
                v82 = v40;
                v85 = [v82 countByEnumeratingWithState:&v88 objects:v100 count:16];
                if (v85)
                {
                  v83 = *v89;
                  do
                  {
                    v41 = 0;
                    do
                    {
                      if (*v89 != v83)
                      {
                        objc_enumerationMutation(v82);
                      }

                      v42 = *(*(&v88 + 1) + 8 * v41);
                      v43 = objc_autoreleasePoolPush();
                      v44 = [v42 objectForKey:v8];
                      v45 = [objc_alloc(*(v9 + 3240)) initWithFormat:@"          - factor: %@", v44];
                      [array addObject:v45];

                      v46 = objc_alloc(*(v9 + 3240));
                      [v42 objectForKey:@"type"];
                      v47 = array;
                      v49 = v48 = v9;
                      v50 = [v46 initWithFormat:@"            type: %@", v49];
                      [v47 addObject:v50];

                      v51 = [v84 levelForFactor:v44];
                      if (v51)
                      {
                        v52 = objc_alloc(*(v48 + 3240));
                        object = [v51 object];
                        v54 = [v52 initWithFormat:@"            overrideLevel: %@", object];
                        [v47 addObject:v54];
                        array = v47;
LABEL_28:

                        goto LABEL_29;
                      }

                      v55 = v47;
                      v56 = v8;
                      v57 = [TRIActiveRolloutsSysdiagnoseProvider _isFactorRecordFileType:v42];
                      v58 = objc_alloc(*(v48 + 3240));
                      if (!v57)
                      {
                        object = [v42 objectForKey:@"levelValue"];
                        v54 = [v58 initWithFormat:@"            levelValue: %@", object];
                        array = v55;
                        [v55 addObject:v54];
                        goto LABEL_27;
                      }

                      v59 = [v42 objectForKey:@"assetReference"];
                      v60 = [v58 initWithFormat:@"            assetReference: %@", v59];
                      [v55 addObject:v60];

                      v61 = *(v48 + 3240);
                      array = v55;
                      v62 = [v61 alloc];
                      v63 = [v42 objectForKey:@"path"];
                      v64 = [v62 initWithFormat:@"            path: %@", v63];
                      [v55 addObject:v64];

                      [v55 addObject:@"            metadata:"];
                      object = [v42 objectForKey:@"metadata"];
                      if (object)
                      {
                        v86[0] = MEMORY[0x277D85DD0];
                        v86[1] = 3221225472;
                        v86[2] = __66__TRIActiveRolloutsSysdiagnoseProvider_sysdiagnoseLinesWithError___block_invoke;
                        v86[3] = &unk_27885EA88;
                        v87 = v55;
                        [object enumerateKeysAndObjectsUsingBlock:v86];
                        v54 = v87;
LABEL_27:
                        v8 = v56;
                        goto LABEL_28;
                      }

                      v8 = v56;
LABEL_29:

                      objc_autoreleasePoolPop(v43);
                      ++v41;
                      v9 = 0x277CCA000;
                    }

                    while (v85 != v41);
                    v65 = [v82 countByEnumeratingWithState:&v88 objects:v100 count:16];
                    v85 = v65;
                  }

                  while (v65);
                }

                objc_autoreleasePoolPop(context);
                v28 = v81 + 1;
              }

              while (v81 + 1 != v78);
              v78 = [v76 countByEnumeratingWithState:&v92 objects:v101 count:16];
            }

            while (v78);
          }

          v10 = v75 + 1;
        }

        while (v75 + 1 != v73);
        v73 = [obj countByEnumeratingWithState:&v96 objects:v102 count:16];
        if (!v73)
        {
LABEL_37:

          v66 = array;
          v7 = v70;
          goto LABEL_41;
        }
      }
    }

    v67 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"no rollouts", 0}];
  }

  else
  {
    v67 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"unable to get rollout info", 0}];
  }

  v66 = v67;
LABEL_41:

  v68 = *MEMORY[0x277D85DE8];

  return v66;
}

void __66__TRIActiveRolloutsSysdiagnoseProvider_sysdiagnoseLinesWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:@"              %@: %@", v7, v6];

  [v4 addObject:v8];
}

@end