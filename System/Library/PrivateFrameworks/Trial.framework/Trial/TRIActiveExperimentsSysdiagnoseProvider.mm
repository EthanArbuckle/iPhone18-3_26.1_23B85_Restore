@interface TRIActiveExperimentsSysdiagnoseProvider
+ (BOOL)_isFactorRecordFileType:(id)type;
- (TRIActiveExperimentsSysdiagnoseProvider)initWithAllocationStatusProvider:(id)provider outputFilename:(id)filename environments:(id)environments;
- (id)sysdiagnoseLinesWithError:(id *)error;
@end

@implementation TRIActiveExperimentsSysdiagnoseProvider

- (id)sysdiagnoseLinesWithError:(id *)error
{
  v95 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:self->_environments];
  v6 = [(TRIAllocationStatusDefaultProvider *)self->_statusProvider activeExperimentInformationWithEnvironments:v5 error:error];
  v7 = v6;
  if (v6)
  {
    if (![v6 count] && -[TRIAllocationStatusDefaultProvider isOptedOutOfExperimentation](self->_statusProvider, "isOptedOutOfExperimentation"))
    {
      v8 = &unk_28436FAF8;
      goto LABEL_51;
    }

    if ([v7 count])
    {
      v60 = v5;
      v8 = objc_opt_new();
      [v8 addObject:@"experiments:"];
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v59 = v7;
      obj = v7;
      v63 = [obj countByEnumeratingWithState:&v87 objects:v94 count:16];
      if (!v63)
      {
        goto LABEL_47;
      }

      v62 = *v88;
      while (1)
      {
        v9 = 0;
        do
        {
          if (*v88 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v66 = v9;
          v10 = *(*(&v87 + 1) + 8 * v9);
          v11 = [v10 objectForKey:@"deploymentId"];
          v12 = objc_alloc(MEMORY[0x277CCACA8]);
          v13 = [v10 objectForKey:@"experiment"];
          v65 = v11;
          intValue = [v11 intValue];
          if (intValue)
          {
            v15 = intValue;
          }

          else
          {
            v15 = 0xFFFFFFFFLL;
          }

          v16 = [v12 initWithFormat:@"    - experiment: %@.%d", v13, v15];
          [v8 addObject:v16];

          v17 = objc_alloc(MEMORY[0x277CCACA8]);
          v18 = [v10 objectForKey:@"treatmentId"];
          v19 = [v17 initWithFormat:@"      treatment : %@", v18];
          [v8 addObject:v19];

          [v8 addObject:@"      namespaces:"];
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v64 = v10;
          v67 = [v10 objectForKey:@"namespaces"];
          v69 = [v67 countByEnumeratingWithState:&v83 objects:v93 count:16];
          if (v69)
          {
            v68 = *v84;
            do
            {
              v20 = 0;
              do
              {
                if (*v84 != v68)
                {
                  objc_enumerationMutation(v67);
                }

                v72 = v20;
                v21 = *(*(&v83 + 1) + 8 * v20);
                context = objc_autoreleasePoolPush();
                v22 = [v21 objectForKey:@"compatibility"];
                v23 = objc_alloc(MEMORY[0x277CCACA8]);
                v24 = [v21 objectForKey:@"name"];
                v70 = v22;
                intValue2 = [v22 intValue];
                if (intValue2)
                {
                  v26 = intValue2;
                }

                else
                {
                  v26 = 0xFFFFFFFFLL;
                }

                v27 = [v23 initWithFormat:@"       - namespace: %@.%d", v24, v26];
                [v8 addObject:v27];

                [v8 addObject:@"         factors:"];
                v81 = 0u;
                v82 = 0u;
                v79 = 0u;
                v80 = 0u;
                v28 = [v21 objectForKey:@"factors"];
                v29 = [v28 countByEnumeratingWithState:&v79 objects:v92 count:16];
                if (v29)
                {
                  v30 = v29;
                  v31 = *v80;
                  do
                  {
                    for (i = 0; i != v30; ++i)
                    {
                      if (*v80 != v31)
                      {
                        objc_enumerationMutation(v28);
                      }

                      v33 = *(*(&v79 + 1) + 8 * i);
                      v34 = objc_autoreleasePoolPush();
                      v35 = objc_alloc(MEMORY[0x277CCACA8]);
                      v36 = [v33 objectForKey:@"name"];
                      v37 = [v35 initWithFormat:@"          - factor: %@", v36];
                      [v8 addObject:v37];

                      v38 = objc_alloc(MEMORY[0x277CCACA8]);
                      v39 = [v33 objectForKey:@"type"];
                      v40 = [v38 initWithFormat:@"            type: %@", v39];
                      [v8 addObject:v40];

                      LODWORD(v39) = [TRIActiveExperimentsSysdiagnoseProvider _isFactorRecordFileType:v33];
                      v41 = objc_alloc(MEMORY[0x277CCACA8]);
                      if (v39)
                      {
                        v42 = [v33 objectForKey:@"assetReference"];
                        v43 = [v41 initWithFormat:@"            assetReference: %@", v42];
                        [v8 addObject:v43];

                        v44 = objc_alloc(MEMORY[0x277CCACA8]);
                        v45 = [v33 objectForKey:@"path"];
                        v46 = [v44 initWithFormat:@"            path: %@", v45];
                        [v8 addObject:v46];

                        [v8 addObject:@"            metadata:"];
                        v47 = [v33 objectForKey:@"metadata"];
                        if (!v47)
                        {
                          goto LABEL_32;
                        }

                        v77[0] = MEMORY[0x277D85DD0];
                        v77[1] = 3221225472;
                        v77[2] = __69__TRIActiveExperimentsSysdiagnoseProvider_sysdiagnoseLinesWithError___block_invoke;
                        v77[3] = &unk_27885EA88;
                        v78 = v8;
                        [v47 enumerateKeysAndObjectsUsingBlock:v77];
                        v48 = v78;
                      }

                      else
                      {
                        v47 = [v33 objectForKey:@"levelValue"];
                        v48 = [v41 initWithFormat:@"            levelValue: %@", v47];
                        [v8 addObject:v48];
                      }

LABEL_32:
                      objc_autoreleasePoolPop(v34);
                    }

                    v30 = [v28 countByEnumeratingWithState:&v79 objects:v92 count:16];
                  }

                  while (v30);
                }

                objc_autoreleasePoolPop(context);
                v20 = v72 + 1;
              }

              while (v72 + 1 != v69);
              v69 = [v67 countByEnumeratingWithState:&v83 objects:v93 count:16];
            }

            while (v69);
          }

          v49 = [v64 objectForKey:@"counterfactualTreatments"];
          if (v49)
          {
            [v8 addObject:@"      counterfactualTreatments:"];
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v50 = v49;
            v51 = [v50 countByEnumeratingWithState:&v73 objects:v91 count:16];
            if (v51)
            {
              v52 = v51;
              v53 = *v74;
              do
              {
                for (j = 0; j != v52; ++j)
                {
                  if (*v74 != v53)
                  {
                    objc_enumerationMutation(v50);
                  }

                  v55 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"       - %@", *(*(&v73 + 1) + 8 * j)];
                  [v8 addObject:v55];
                }

                v52 = [v50 countByEnumeratingWithState:&v73 objects:v91 count:16];
              }

              while (v52);
            }
          }

          v9 = v66 + 1;
        }

        while (v66 + 1 != v63);
        v63 = [obj countByEnumeratingWithState:&v87 objects:v94 count:16];
        if (!v63)
        {
LABEL_47:

          v7 = v59;
          v5 = v60;
          goto LABEL_51;
        }
      }
    }

    v56 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"no experiments", 0}];
  }

  else
  {
    v56 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"unable to get experiment info", 0}];
  }

  v8 = v56;
LABEL_51:

  v57 = *MEMORY[0x277D85DE8];

  return v8;
}

void __69__TRIActiveExperimentsSysdiagnoseProvider_sysdiagnoseLinesWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithFormat:@"              %@: %@", v7, v6];

  [v4 addObject:v8];
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

- (TRIActiveExperimentsSysdiagnoseProvider)initWithAllocationStatusProvider:(id)provider outputFilename:(id)filename environments:(id)environments
{
  providerCopy = provider;
  filenameCopy = filename;
  environmentsCopy = environments;
  v15.receiver = self;
  v15.super_class = TRIActiveExperimentsSysdiagnoseProvider;
  v12 = [(TRIActiveExperimentsSysdiagnoseProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_statusProvider, provider);
    objc_storeStrong(&v13->_filename, filename);
    objc_storeStrong(&v13->_environments, environments);
  }

  return v13;
}

@end