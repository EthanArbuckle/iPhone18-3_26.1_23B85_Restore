@interface TRIActiveFactorProvidersParser
- (TRIActiveFactorProvidersParser)initWithPaths:(id)paths;
- (char)_realpathWithFileSystemRepresentation:(const char *)representation buffer:(char *)buffer;
- (id)_deploymentIdForExperiment:(id)experiment fromResolverList:(id)list;
- (id)_experimentIdForNamespace:(id)namespace fromResolverList:(id)list;
- (id)_getFactorPackPathForNamespaceName:(id)name withCandidatePath:(id)path parentId:(id)id deploymentId:(int)deploymentId promotable:(BOOL *)promotable;
- (id)_resolveCounterfactualTreatmentsMap;
- (id)_resolveTreatmentFactorPackSetIdMap;
- (id)_resolverPropertyListWithGlobalRolloutsResolvedPath:(id *)path;
- (id)_resolverPropertyListWithResolvedPath:(id *)path;
- (id)_treatmentIdForExperiment:(id)experiment fromResolverList:(id)list;
- (id)counterfactualFactorsStatesForNamespace:(id)namespace;
- (id)experimentIdentifiersForNamespace:(id)namespace;
- (id)resolvePropertyListFactorProviderChainForNamespaceName:(id)name;
- (id)resolvePropertyListGlobalFactorProviderChainForNamespaceName:(id)name;
- (id)resolveTargetedFactorPackSetForExperimentDeployment:(id)deployment;
- (id)resolveTargetedFactorPackSetForExperimentFactorsState:(id)state;
- (id)resolveTargetedFactorPackSetForRolloutDeployment:(id)deployment;
- (void)_faultOnceWithMessage:(id)message;
- (void)dealloc;
@end

@implementation TRIActiveFactorProvidersParser

uint64_t __41__TRIActiveFactorProvidersParser_dispose__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2[3];
  v3 = a2;
  [v2 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_113];
  [v3[4] enumerateKeysAndObjectsUsingBlock:&__block_literal_global_116];
  v4 = v3[5];

  return [v4 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_119];
}

- (void)dealloc
{
  [(TRIActiveFactorProvidersParser *)self dispose];
  v3.receiver = self;
  v3.super_class = TRIActiveFactorProvidersParser;
  [(TRIActiveFactorProvidersParser *)&v3 dealloc];
}

void __41__TRIActiveFactorProvidersParser_dispose__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 lock];
  [v3 unlock];
}

- (TRIActiveFactorProvidersParser)initWithPaths:(id)paths
{
  pathsCopy = paths;
  v20.receiver = self;
  v20.super_class = TRIActiveFactorProvidersParser;
  v6 = [(TRIActiveFactorProvidersParser *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paths, paths);
    v8 = objc_opt_new();
    v9 = *(v8 + 8);
    *(v8 + 8) = 0;

    v10 = *(v8 + 16);
    *(v8 + 16) = 0;

    *(v8 + 48) = 0;
    v11 = objc_opt_new();
    v12 = *(v8 + 24);
    *(v8 + 24) = v11;

    v13 = objc_opt_new();
    v14 = *(v8 + 32);
    *(v8 + 32) = v13;

    v15 = objc_opt_new();
    v16 = *(v8 + 40);
    *(v8 + 40) = v15;

    v17 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v8];
    lock = v7->_lock;
    v7->_lock = v17;
  }

  return v7;
}

void __41__TRIActiveFactorProvidersParser_dispose__block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 lock];
  [v3 unlock];
}

void __41__TRIActiveFactorProvidersParser_dispose__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = [a3 lock];
  [v3 unlock];
}

- (id)resolvePropertyListFactorProviderChainForNamespaceName:(id)name
{
  v83 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v81 = 0;
  v5 = [(TRIActiveFactorProvidersParser *)self _resolverPropertyListWithResolvedPath:&v81];
  v6 = v5;
  if (!v5)
  {
    v12 = MEMORY[0x277CBEBF8];
    goto LABEL_55;
  }

  v7 = [v5 objectForKeyedSubscript:@"namespaceMap"];
  v8 = [v6 objectForKeyedSubscript:@"rolloutV2Deployments"];
  v9 = [v6 objectForKeyedSubscript:@"experimentDeployments"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_opt_new();
  }

  v13 = v11;

  v14 = [v6 objectForKeyedSubscript:@"experimentTreatments"];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = objc_opt_new();
  }

  v17 = v16;

  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v17 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v45 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = [v45 initWithFormat:@"plplist contains unexpected toplevel content: %@", v81];
    [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v18];
    goto LABEL_53;
  }

  v18 = [v7 objectForKeyedSubscript:nameCopy];
  if (!v18)
  {
LABEL_53:
    v12 = MEMORY[0x277CBEBF8];
    goto LABEL_54;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v48 = objc_alloc(MEMORY[0x277CCACA8]);
    v44 = [v48 initWithFormat:@"plplist contains non-array provider chain: %@", v81];
    [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v44];
    v12 = MEMORY[0x277CBEBF8];
    goto LABEL_65;
  }

  v19 = objc_opt_new();
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  obj = v18;
  v72 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
  if (!v72)
  {
    goto LABEL_51;
  }

  v73 = *v78;
  v74 = v17;
  v66 = v19;
  while (2)
  {
    v20 = 0;
    do
    {
      if (*v78 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v75 = v20;
      v21 = *(*(&v77 + 1) + 8 * v20);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [v21 count] != 2)
      {
        v49 = objc_alloc(MEMORY[0x277CCACA8]);
        v24 = [v49 initWithFormat:@"plplist contains bad provider chain: %@", v81];
        [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v24];
LABEL_64:

        v12 = MEMORY[0x277CBEBF8];
        v44 = v66;
        goto LABEL_65;
      }

      v22 = [v21 objectAtIndexedSubscript:0];
      if ([@"rolloutV2" isEqual:v22])
      {
        v23 = [v21 objectAtIndexedSubscript:1];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v24 = [v21 objectAtIndexedSubscript:1];
          v25 = [v8 objectForKeyedSubscript:v24];
          if (!v25 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v50 = objc_alloc(MEMORY[0x277CCACA8]);
            v51 = [v50 initWithFormat:@"plplist contains bad rollout deployment: %@", v81];
            [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v51];

LABEL_63:
            v17 = v74;
            goto LABEL_64;
          }

          v26 = -[TRIRolloutDeployment initWithRolloutId:deploymentId:]([TRIRolloutDeployment alloc], "initWithRolloutId:deploymentId:", v24, [v25 intValue]);
          v27 = [(TRIActiveFactorProvidersParser *)self resolveTargetedFactorPackSetForRolloutDeployment:v26];
          if (v27)
          {
            v61 = v25;
            v76 = 0;
            v28 = v27;
            rolloutId = [(TRIRolloutDeployment *)v26 rolloutId];
            v69 = v26;
            deploymentId = [(TRIRolloutDeployment *)v26 deploymentId];
            v63 = v28;
            path = [v28 path];
            v57 = [(TRIActiveFactorProvidersParser *)self factorProviderForNamespaceName:nameCopy parentId:rolloutId deploymentId:deploymentId treatmentId:0 fromFactorPackSetWithDir:path resolvedPath:&v76];

            if (v57)
            {
              v30 = [TRITypedFactorProvider alloc];
              v31 = [(TRITypedFactorProvider *)v30 initWithType:2 provider:v57 logDesc:v76];
              [v66 addObject:v31];
            }

            v26 = v69;
            v25 = v61;
            v27 = v63;
          }

          goto LABEL_49;
        }
      }

      else
      {
      }

      v32 = [v21 objectAtIndexedSubscript:0];
      if (([@"experiment" isEqual:v32] & 1) == 0)
      {

LABEL_48:
        v43 = objc_alloc(MEMORY[0x277CCACA8]);
        v24 = [v43 initWithFormat:@"plplist at %@ contains unsupported provider chain element: %@", v81, v21];
        [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v24];
        goto LABEL_49;
      }

      v33 = [v21 objectAtIndexedSubscript:1];
      objc_opt_class();
      v70 = objc_opt_isKindOfClass();

      if ((v70 & 1) == 0)
      {
        goto LABEL_48;
      }

      v24 = [v21 objectAtIndexedSubscript:1];
      [v13 objectForKeyedSubscript:v24];
      v71 = v17 = v74;
      if (!v71 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v52 = objc_alloc(MEMORY[0x277CCACA8]);
        v53 = [v52 initWithFormat:@"plplist contains bad experiment deployment: %@ for map: %@", v81, v13];
        [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v53];

        goto LABEL_64;
      }

      v34 = [v74 objectForKeyedSubscript:v24];
      if (!v34 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v54 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"plplist contains experiment deployment with bad treatment ID: %@", v34];
        [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v54];

        goto LABEL_63;
      }

      v35 = -[TRIExperimentDeployment initWithExperimentId:deploymentId:]([TRIExperimentDeployment alloc], "initWithExperimentId:deploymentId:", v24, [v71 intValue]);
      v36 = [(TRIActiveFactorProvidersParser *)self resolveTargetedFactorPackSetForExperimentDeployment:v35];
      if (v36)
      {
        v76 = 0;
        v58 = v34;
        v37 = v36;
        [(TRIExperimentDeployment *)v35 experimentId];
        v64 = v62 = v35;
        deploymentId2 = [(TRIExperimentDeployment *)v35 deploymentId];
        v60 = v37;
        v39 = v37;
        v34 = v58;
        path2 = [v39 path];
        v40 = [(TRIActiveFactorProvidersParser *)self factorProviderForNamespaceName:nameCopy parentId:v64 deploymentId:deploymentId2 treatmentId:v58 fromFactorPackSetWithDir:path2 resolvedPath:&v76];

        if (v40)
        {
          v41 = [TRITypedFactorProvider alloc];
          v65 = v40;
          v42 = [(TRITypedFactorProvider *)v41 initWithType:32 provider:v40 logDesc:v76];
          [v66 addObject:v42];

          v40 = v65;
        }

        v36 = v60;
        v35 = v62;
      }

LABEL_49:
      v17 = v74;

      v20 = v75 + 1;
    }

    while (v72 != v75 + 1);
    v19 = v66;
    v72 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
    if (v72)
    {
      continue;
    }

    break;
  }

LABEL_51:

  v44 = v19;
  v12 = v44;
LABEL_65:

LABEL_54:
LABEL_55:

  v46 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)resolvePropertyListGlobalFactorProviderChainForNamespaceName:(id)name
{
  v80 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v78 = 0;
  v5 = [(TRIActiveFactorProvidersParser *)self _resolverPropertyListWithGlobalRolloutsResolvedPath:&v78];
  v6 = v5;
  if (!v5)
  {
    v13 = MEMORY[0x277CBEBF8];
    goto LABEL_56;
  }

  v7 = [v5 objectForKeyedSubscript:@"namespaceMap"];
  v8 = [v6 objectForKeyedSubscript:@"namespaceFactorPackMap"];
  v9 = [v6 objectForKeyedSubscript:@"rolloutV2Deployments"];
  v10 = [v6 objectForKeyedSubscript:@"experimentDeployments"];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = objc_opt_new();
  }

  v14 = v12;

  v15 = [v6 objectForKeyedSubscript:@"experimentTreatments"];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = objc_opt_new();
  }

  v18 = v17;

  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v14 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || !v18 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v39 = objc_alloc(MEMORY[0x277CCACA8]);
    v19 = [v39 initWithFormat:@"plplist contains unexpected toplevel content: %@", v78];
    [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v19];
    goto LABEL_54;
  }

  v19 = [v7 objectForKeyedSubscript:nameCopy];
  if (!v19)
  {
LABEL_54:
    v13 = MEMORY[0x277CBEBF8];
    goto LABEL_55;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v42 = objc_alloc(MEMORY[0x277CCACA8]);
    v20 = [v42 initWithFormat:@"plplist contains non-array provider chain: %@", v78];
    [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v20];
    v13 = MEMORY[0x277CBEBF8];
    goto LABEL_67;
  }

  v20 = objc_opt_new();
  v56 = [v8 objectForKeyedSubscript:nameCopy];
  if (!v56)
  {
    goto LABEL_52;
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v19;
  v61 = [obj countByEnumeratingWithState:&v74 objects:v79 count:16];
  if (!v61)
  {
    goto LABEL_51;
  }

  v62 = *v75;
  v63 = v20;
  while (2)
  {
    v21 = 0;
    do
    {
      if (*v75 != v62)
      {
        v22 = v21;
        objc_enumerationMutation(obj);
        v21 = v22;
      }

      v72 = v21;
      v23 = *(*(&v74 + 1) + 8 * v21);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [v23 count] != 2)
      {
        v43 = objc_alloc(MEMORY[0x277CCACA8]);
        v44 = [v43 initWithFormat:@"plplist contains bad provider chain: %@", v78];
        [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v44];
LABEL_65:

        v13 = MEMORY[0x277CBEBF8];
        v20 = v63;
        goto LABEL_66;
      }

      v69 = [v23 objectAtIndexedSubscript:0];
      if ([@"rolloutV2" isEqual:?])
      {
        v64 = [v23 objectAtIndexedSubscript:1];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v70 = [v23 objectAtIndexedSubscript:1];
          v24 = [v9 objectForKeyedSubscript:?];
          v58 = v24;
          if (!v24 || (v25 = v24, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v45 = objc_alloc(MEMORY[0x277CCACA8]);
            v46 = [v45 initWithFormat:@"plplist contains bad rollout deployment: %@", v78];
            [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v46];

            v47 = v58;
LABEL_64:

            v44 = v70;
            goto LABEL_65;
          }

          v26 = -[TRIRolloutDeployment initWithRolloutId:deploymentId:]([TRIRolloutDeployment alloc], "initWithRolloutId:deploymentId:", v70, [v25 intValue]);
          v73 = 0;
          rolloutId = [(TRIRolloutDeployment *)v26 rolloutId];
          v52 = v26;
          v27 = [(TRIActiveFactorProvidersParser *)self globalFactorProviderForNamespaceName:nameCopy parentId:rolloutId deploymentId:[(TRIRolloutDeployment *)v26 deploymentId] treatmentId:0 fromFactorPackId:v56 resolvedPath:&v73];

          if (v27)
          {
            v28 = [TRITypedFactorProvider alloc];
            v66 = v27;
            v29 = [(TRITypedFactorProvider *)v28 initWithType:2 provider:v27 logDesc:v73];
            [v63 addObject:v29];

            v27 = v66;
          }

          v30 = v58;
LABEL_46:

          v37 = v70;
          goto LABEL_49;
        }
      }

      else
      {
      }

      v71 = [v23 objectAtIndexedSubscript:0];
      if ([@"experiment" isEqual:?])
      {
        v67 = [v23 objectAtIndexedSubscript:1];
        objc_opt_class();
        v59 = objc_opt_isKindOfClass();

        if (v59)
        {
          v31 = [v23 objectAtIndexedSubscript:1];
          v68 = [v14 objectForKeyedSubscript:v31];
          v70 = v31;
          if (!v68 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v48 = objc_alloc(MEMORY[0x277CCACA8]);
            v49 = [v48 initWithFormat:@"plplist (global) contains bad experiment deployment: %@ for map: %@", v78, v14];
            [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v49];

            v44 = v70;
            goto LABEL_65;
          }

          v32 = [v18 objectForKeyedSubscript:v31];
          v60 = v32;
          if (!v32 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v50 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"plplist contains experiment deployment with bad treatment ID: %@", v32];
            [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v50];

            v47 = v68;
            goto LABEL_64;
          }

          v33 = -[TRIExperimentDeployment initWithExperimentId:deploymentId:]([TRIExperimentDeployment alloc], "initWithExperimentId:deploymentId:", v70, [v68 intValue]);
          v73 = 0;
          [(TRIExperimentDeployment *)v33 experimentId];
          v53 = v51 = v33;
          v34 = [(TRIActiveFactorProvidersParser *)self globalFactorProviderForNamespaceName:nameCopy parentId:v53 deploymentId:[(TRIExperimentDeployment *)v33 deploymentId] treatmentId:v60 fromFactorPackId:v56 resolvedPath:&v73];

          if (v34)
          {
            v35 = [TRITypedFactorProvider alloc];
            v54 = v34;
            v36 = [(TRITypedFactorProvider *)v35 initWithType:32 provider:v34 logDesc:v73];
            [v63 addObject:v36];

            v34 = v54;
          }

          v30 = v68;
          goto LABEL_46;
        }
      }

      else
      {
      }

      v38 = objc_alloc(MEMORY[0x277CCACA8]);
      v37 = [v38 initWithFormat:@"plplist at %@ contains unsupported provider chain element: %@", v78, v23];
      [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:v37];
LABEL_49:

      v21 = v72 + 1;
      v20 = v63;
    }

    while (v61 != v72 + 1);
    v61 = [obj countByEnumeratingWithState:&v74 objects:v79 count:16];
    if (v61)
    {
      continue;
    }

    break;
  }

LABEL_51:

LABEL_52:
  v13 = v20;
LABEL_66:

LABEL_67:
LABEL_55:

LABEL_56:
  v40 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)resolveTargetedFactorPackSetForRolloutDeployment:(id)deployment
{
  deploymentCopy = deployment;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  lock = self->_lock;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __83__TRIActiveFactorProvidersParser_resolveTargetedFactorPackSetForRolloutDeployment___block_invoke;
  v10[3] = &unk_27885E028;
  v13 = &v15;
  v7 = deploymentCopy;
  v11 = v7;
  selfCopy = self;
  v14 = a2;
  [(_PASLock *)lock runWithLockAcquired:v10];
  v8 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __83__TRIActiveFactorProvidersParser_resolveTargetedFactorPackSetForRolloutDeployment___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3[3] objectForKeyedSubscript:*(a1 + 32)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [*(*(a1 + 40) + 8) namespaceDescriptorsDir];
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = [*(a1 + 32) rolloutId];
    v10 = [v8 initWithFormat:@"v2/rolloutV2/%@/%d/%@", v9, objc_msgSend(*(a1 + 32), "deploymentId"), @"targetedFactorPackSet"];
    v11 = [v7 stringByAppendingPathComponent:v10];

    bzero(v32, 0x400uLL);
    *__error() = 0;
    v12 = [*(a1 + 40) _realpathWithFileSystemRepresentation:objc_msgSend(v11 buffer:{"fileSystemRepresentation"), v32}];
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v12];
      if (!v13)
      {
        v25 = [MEMORY[0x277CCA890] currentHandler];
        [v25 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"TRIActiveFactorProvidersParser.m" lineNumber:375 description:{@"Expression was unexpectedly nil/false: %@", @"[[NSString alloc] initWithUTF8String:expandedPath]"}];
      }

      v14 = [v13 lastPathComponent];
      v15 = TRIValidateFactorPackSetId(v14);
      if (v15)
      {
        v16 = [[TRIReferenceManagedDirReaderLock alloc] initWithDir:v13];
        if (v16)
        {
          v17 = v16;
          v18 = [[TRILockedFactorPackSet alloc] initWithFactorPackSetId:v15 path:v13 lock:v16];
          v19 = *(*(a1 + 48) + 8);
          v20 = *(v19 + 40);
          *(v19 + 40) = v18;

          [v3[3] setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:*(a1 + 32)];
        }
      }
    }

    else
    {
      if (*__error() == 2)
      {
LABEL_13:

        goto LABEL_14;
      }

      v13 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v22 = __error();
        v23 = strerror(*v22);
        v24 = *__error();
        *buf = 138412802;
        v27 = v11;
        v28 = 2080;
        v29 = v23;
        v30 = 1024;
        v31 = v24;
        _os_log_error_impl(&dword_22EA6B000, v13, OS_LOG_TYPE_ERROR, "Unable to resolve rollout deployment %@: %s (%d)", buf, 0x1Cu);
      }
    }

    goto LABEL_13;
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
}

- (id)resolveTargetedFactorPackSetForExperimentDeployment:(id)deployment
{
  deploymentCopy = deployment;
  v6 = deploymentCopy;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy_;
  v19 = __Block_byref_object_dispose_;
  v20 = 0;
  if (deploymentCopy)
  {
    lock = self->_lock;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __86__TRIActiveFactorProvidersParser_resolveTargetedFactorPackSetForExperimentDeployment___block_invoke;
    v10[3] = &unk_27885E028;
    v13 = &v15;
    v11 = deploymentCopy;
    selfCopy = self;
    v14 = a2;
    [(_PASLock *)lock runWithLockAcquired:v10];
    v8 = v16[5];
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __86__TRIActiveFactorProvidersParser_resolveTargetedFactorPackSetForExperimentDeployment___block_invoke(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3[4] objectForKeyedSubscript:*(a1 + 32)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [*(*(a1 + 40) + 8) namespaceDescriptorsDir];
    v8 = objc_alloc(MEMORY[0x277CCACA8]);
    v9 = [*(a1 + 32) experimentId];
    v10 = [v8 initWithFormat:@"v2/experiment/%@/%d/%@", v9, objc_msgSend(*(a1 + 32), "deploymentId"), @"targetedFactorPackSet"];
    v11 = [v7 stringByAppendingPathComponent:v10];

    bzero(v32, 0x400uLL);
    v12 = [*(a1 + 40) _realpathWithFileSystemRepresentation:objc_msgSend(v11 buffer:{"fileSystemRepresentation"), v32}];
    if (v12)
    {
      v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v12];
      if (!v13)
      {
        v25 = [MEMORY[0x277CCA890] currentHandler];
        [v25 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"TRIActiveFactorProvidersParser.m" lineNumber:419 description:{@"Expression was unexpectedly nil/false: %@", @"[[NSString alloc] initWithUTF8String:expandedPath]"}];
      }

      v14 = [v13 lastPathComponent];
      v15 = TRIValidateFactorPackSetId(v14);
      if (v15)
      {
        v16 = [[TRIReferenceManagedDirReaderLock alloc] initWithDir:v13];
        if (v16)
        {
          v17 = v16;
          v18 = [[TRILockedFactorPackSet alloc] initWithFactorPackSetId:v15 path:v13 lock:v16];
          v19 = *(*(a1 + 48) + 8);
          v20 = *(v19 + 40);
          *(v19 + 40) = v18;

          [v3[4] setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:*(a1 + 32)];
        }
      }
    }

    else
    {
      if (*__error() == 2)
      {
LABEL_13:

        goto LABEL_14;
      }

      v13 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v22 = __error();
        v23 = strerror(*v22);
        v24 = *__error();
        *buf = 138412802;
        v27 = v11;
        v28 = 2080;
        v29 = v23;
        v30 = 1024;
        v31 = v24;
        _os_log_error_impl(&dword_22EA6B000, v13, OS_LOG_TYPE_ERROR, "Unable to resolve experiment deployment %@: %s (%d)", buf, 0x1Cu);
      }
    }

    goto LABEL_13;
  }

LABEL_14:

  v21 = *MEMORY[0x277D85DE8];
}

- (id)resolveTargetedFactorPackSetForExperimentFactorsState:(id)state
{
  stateCopy = state;
  v6 = stateCopy;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  if (stateCopy && ([stateCopy treatmentId], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    lock = self->_lock;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __88__TRIActiveFactorProvidersParser_resolveTargetedFactorPackSetForExperimentFactorsState___block_invoke;
    v11[3] = &unk_27885E028;
    v14 = &v16;
    v12 = v6;
    selfCopy = self;
    v15 = a2;
    [(_PASLock *)lock runWithLockAcquired:v11];
    v9 = v17[5];
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __88__TRIActiveFactorProvidersParser_resolveTargetedFactorPackSetForExperimentFactorsState___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3[5] objectForKeyedSubscript:*(a1 + 32)];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = [*(a1 + 40) _resolveTreatmentFactorPackSetIdMap];
    v8 = [*(a1 + 32) treatmentId];
    if (!v8)
    {
      v21 = [MEMORY[0x277CCA890] currentHandler];
      [v21 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"TRIActiveFactorProvidersParser.m" lineNumber:459 description:{@"Expression was unexpectedly nil/false: %@", @"experimentFactorsState.treatmentId"}];
    }

    v9 = [v7 objectForKeyedSubscript:v8];

    if (!v9)
    {
      v12 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v19 = *(a1 + 32);
        *buf = 138412290;
        v26 = v19;
        _os_log_error_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_ERROR, "No FPS ID found trying to resolve factors state %@", buf, 0xCu);
      }

      goto LABEL_17;
    }

    v10 = [*(*(a1 + 40) + 8) namespaceDescriptorsDir];
    v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"v2/factorPackSets/%@", v9];
    v12 = [v10 stringByAppendingPathComponent:v11];

    bzero(buf, 0x400uLL);
    v13 = [*(a1 + 40) _realpathWithFileSystemRepresentation:-[NSObject fileSystemRepresentation](v12 buffer:{"fileSystemRepresentation"), buf}];
    if (v13)
    {
      v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v13];
      if (!v14)
      {
        v22 = [MEMORY[0x277CCA890] currentHandler];
        [v22 handleFailureInMethod:*(a1 + 56) object:*(a1 + 40) file:@"TRIActiveFactorProvidersParser.m" lineNumber:478 description:{@"Expression was unexpectedly nil/false: %@", @"[[NSString alloc] initWithUTF8String:expandedPath]"}];
      }

      v15 = [[TRIReferenceManagedDirReaderLock alloc] initWithDir:v14];
      if (v15)
      {
        v16 = [[TRILockedFactorPackSet alloc] initWithFactorPackSetId:v9 path:v14 lock:v15];
        v17 = *(*(a1 + 48) + 8);
        v18 = *(v17 + 40);
        *(v17 + 40) = v16;

        [v3[5] setObject:*(*(*(a1 + 48) + 8) + 40) forKeyedSubscript:*(a1 + 32)];
      }
    }

    else
    {
      if (*__error() == 2)
      {
LABEL_17:

        goto LABEL_18;
      }

      v14 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v23 = 138412290;
        v24 = v12;
        _os_log_error_impl(&dword_22EA6B000, v14, OS_LOG_TYPE_ERROR, "Unable to resolve factor pack set path %@", v23, 0xCu);
      }
    }

    goto LABEL_17;
  }

LABEL_18:

  v20 = *MEMORY[0x277D85DE8];
}

- (id)counterfactualFactorsStatesForNamespace:(id)namespace
{
  namespaceCopy = namespace;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v6 = [(TRIActiveFactorProvidersParser *)self resolvePropertyListFactorProviderChainForNamespaceName:namespaceCopy];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __74__TRIActiveFactorProvidersParser_counterfactualFactorsStatesForNamespace___block_invoke;
  v22[3] = &unk_27885E050;
  v22[5] = &v23;
  v22[6] = a2;
  v22[4] = self;
  [v6 enumerateObjectsUsingBlock:v22];
  if (v24[5])
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy_;
    v20 = __Block_byref_object_dispose_;
    v21 = 0;
    lock = self->_lock;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __74__TRIActiveFactorProvidersParser_counterfactualFactorsStatesForNamespace___block_invoke_2;
    v15[3] = &unk_27885E078;
    v15[4] = self;
    v15[5] = &v23;
    v15[6] = &v16;
    [(_PASLock *)lock runWithLockAcquired:v15];
    if (v17[5])
    {
      v8 = objc_opt_new();
      v9 = v17[5];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __74__TRIActiveFactorProvidersParser_counterfactualFactorsStatesForNamespace___block_invoke_3;
      v12[3] = &unk_27885DF30;
      v10 = v8;
      v13 = v10;
      v14 = &v23;
      [v9 enumerateObjectsUsingBlock:v12];
    }

    else
    {
      v10 = objc_opt_new();
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v10 = objc_opt_new();
  }

  _Block_object_dispose(&v23, 8);

  return v10;
}

void __74__TRIActiveFactorProvidersParser_counterfactualFactorsStatesForNamespace___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = a2;
  if ([v16 type] == 32)
  {
    v6 = [v16 provider];
    v7 = [v6 experimentId];

    if (v7)
    {
      v8 = [TRIExperimentDeployment alloc];
      v9 = [v16 provider];
      v10 = [v9 experimentId];

      if (!v10)
      {
        v15 = [MEMORY[0x277CCA890] currentHandler];
        [v15 handleFailureInMethod:a1[6] object:a1[4] file:@"TRIActiveFactorProvidersParser.m" lineNumber:586 description:{@"Expression was unexpectedly nil/false: %@", @"factorProvider.provider.experimentId"}];
      }

      v11 = [v16 provider];
      v12 = -[TRIExperimentDeployment initWithExperimentId:deploymentId:](v8, "initWithExperimentId:deploymentId:", v10, [v11 deploymentId]);
      v13 = *(a1[5] + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      *a4 = 1;
    }
  }
}

void __74__TRIActiveFactorProvidersParser_counterfactualFactorsStatesForNamespace___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _resolveCounterfactualTreatmentsMap];
  v3 = [*(*(*(a1 + 40) + 8) + 40) experimentId];
  obj = [v2 objectForKeyedSubscript:v3];

  v4 = obj;
  if (obj)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), obj);
    v4 = obj;
  }
}

void __74__TRIActiveFactorProvidersParser_counterfactualFactorsStatesForNamespace___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [[TRIExperimentFactorsState alloc] initWithDeployment:*(*(*(a1 + 40) + 8) + 40) treatmentId:v4];

  [v3 addObject:v5];
}

- (id)experimentIdentifiersForNamespace:(id)namespace
{
  namespaceCopy = namespace;
  v12 = 0;
  v5 = [(TRIActiveFactorProvidersParser *)self _resolverPropertyListWithResolvedPath:&v12];
  if (!v5)
  {
    v6 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_INFO, "No active factor provider found or it is empty.", v11, 2u);
    }

    goto LABEL_8;
  }

  v6 = [(TRIActiveFactorProvidersParser *)self _experimentIdForNamespace:namespaceCopy fromResolverList:v5];
  if (!v6)
  {
LABEL_8:
    v9 = 0;
    goto LABEL_13;
  }

  v7 = [(TRIActiveFactorProvidersParser *)self _deploymentIdForExperiment:v6 fromResolverList:v5];
  if (v7)
  {
    v8 = [(TRIActiveFactorProvidersParser *)self _treatmentIdForExperiment:v6 fromResolverList:v5];
    if (v8)
    {
      v9 = -[TRIExperimentIdentifiers initWithExperimentId:deploymentId:treatmentId:]([TRIExperimentIdentifiers alloc], "initWithExperimentId:deploymentId:treatmentId:", v6, [v7 intValue], v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_13:

  return v9;
}

- (id)_experimentIdForNamespace:(id)namespace fromResolverList:(id)list
{
  v35 = *MEMORY[0x277D85DE8];
  namespaceCopy = namespace;
  v7 = [list objectForKeyedSubscript:@"namespaceMap"];
  if (!v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:@"plplist contains unexpected toplevel content."];
    v24 = 0;
    goto LABEL_25;
  }

  v8 = [v7 objectForKeyedSubscript:namespaceCopy];
  if (!v8)
  {
    goto LABEL_23;
  }

  v9 = 0x277CBE000uLL;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:@"plplist contains non-array provider chain."];
    goto LABEL_23;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v8;
  v10 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = v10;
  v12 = *v29;
  v25 = namespaceCopy;
  v26 = v8;
  while (2)
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v29 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v28 + 1) + 8 * i);
      v15 = *(v9 + 2656);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || [v14 count] != 2)
      {
        [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:@"plplist contains bad provider chain."];
        v24 = 0;
        goto LABEL_29;
      }

      v16 = [v14 objectAtIndexedSubscript:0];
      if ([@"experiment" isEqual:v16])
      {
        [v14 objectAtIndexedSubscript:1];
        v17 = v12;
        v19 = v18 = v9;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        v9 = v18;
        v12 = v17;

        if (isKindOfClass)
        {
          v24 = [v14 objectAtIndexedSubscript:1];
LABEL_29:

          namespaceCopy = v25;
          v8 = v26;
          goto LABEL_24;
        }
      }

      else
      {
      }
    }

    v11 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    namespaceCopy = v25;
    v8 = v26;
    if (v11)
    {
      continue;
    }

    break;
  }

LABEL_18:

  v21 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v33 = namespaceCopy;
    _os_log_impl(&dword_22EA6B000, v21, OS_LOG_TYPE_INFO, "Active factor provider does not contain experiment for %@:", buf, 0xCu);
  }

LABEL_23:
  v24 = 0;
LABEL_24:

LABEL_25:
  v22 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)_deploymentIdForExperiment:(id)experiment fromResolverList:(id)list
{
  experimentCopy = experiment;
  v7 = [list objectForKeyedSubscript:@"experimentDeployments"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 objectForKeyedSubscript:experimentCopy];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = v8;
    }

    else
    {
      [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:@"plplist contains bad experiment deployment."];
      v9 = 0;
    }
  }

  else
  {
    [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:@"plplist contains unexpected toplevel content."];
    v9 = 0;
  }

  return v9;
}

- (id)_treatmentIdForExperiment:(id)experiment fromResolverList:(id)list
{
  experimentCopy = experiment;
  v7 = [list objectForKeyedSubscript:@"experimentTreatments"];
  if (v7 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v8 = [v7 objectForKeyedSubscript:experimentCopy];
    if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v9 = v8;
    }

    else
    {
      [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:@"plplist contains experiment deployment with bad treatment ID."];
      v9 = 0;
    }
  }

  else
  {
    [(TRIActiveFactorProvidersParser *)self _faultOnceWithMessage:@"plplist contains unexpected toplevel content."];
    v9 = 0;
  }

  return v9;
}

- (id)_resolveTreatmentFactorPackSetIdMap
{
  v3 = objc_opt_new();
  v17 = 0;
  v4 = [(TRIActiveFactorProvidersParser *)self _resolverPropertyListWithResolvedPath:&v17];
  v5 = v4;
  if (!v4)
  {
    v8 = v3;
    goto LABEL_12;
  }

  v6 = [v4 objectForKeyedSubscript:@"treatmentFactorPackSetIds"];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = objc_opt_new();
    if (!v7)
    {
LABEL_8:
      v11 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EA6B000, v11, OS_LOG_TYPE_DEFAULT, "Treatment to FPS mapping not present in plplist", buf, 2u);
      }

      v12 = v3;
      goto LABEL_11;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __69__TRIActiveFactorProvidersParser__resolveTreatmentFactorPackSetIdMap__block_invoke;
  v14[3] = &unk_27885E0A0;
  v14[4] = self;
  v9 = v3;
  v15 = v9;
  [v7 enumerateKeysAndObjectsUsingBlock:v14];
  v10 = v9;

LABEL_11:
LABEL_12:

  return v3;
}

void __69__TRIActiveFactorProvidersParser__resolveTreatmentFactorPackSetIdMap__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = TRIValidateFactorPackSetId(v7);
    if (v8)
    {
      [*(a1 + 40) setObject:v8 forKeyedSubscript:v11];
    }

    else
    {
      *a4 = 1;
    }
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"plplist contains experiment deployment with bad factor pack set ID: %@", v7];
    [v9 _faultOnceWithMessage:v10];

    *a4 = 1;
  }
}

- (id)_resolveCounterfactualTreatmentsMap
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v2 = [(TRIActiveFactorProvidersParser *)self _resolverPropertyListWithResolvedPath:&v11];
  v3 = v2;
  if (!v2)
  {
    v6 = objc_opt_new();
    goto LABEL_12;
  }

  v4 = [v2 objectForKeyedSubscript:@"counterfactualTreatments"];
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_opt_new();
    if (!v5)
    {
LABEL_8:
      v8 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v11;
        _os_log_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_DEFAULT, "Counterfactuals treatments mapping does not exist in plplist: %@", buf, 0xCu);
      }

      v7 = objc_opt_new();
      goto LABEL_11;
    }
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = [v5 mutableCopy];
LABEL_11:
  v6 = v7;

LABEL_12:
  v9 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_resolverPropertyListWithResolvedPath:(id *)path
{
  namespaceDescriptorsDir = [(TRIPaths *)self->_paths namespaceDescriptorsDir];
  v6 = [namespaceDescriptorsDir stringByAppendingPathComponent:@"v2/activeFactorProviders.plplist"];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  lock = self->_lock;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__TRIActiveFactorProvidersParser__resolverPropertyListWithResolvedPath___block_invoke;
  v13[3] = &unk_27885E0C8;
  v8 = v6;
  v14 = v8;
  selfCopy = self;
  v16 = &v17;
  [(_PASLock *)lock runWithLockAcquired:v13];
  v9 = *path;
  *path = v8;
  v10 = v8;

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __72__TRIActiveFactorProvidersParser__resolverPropertyListWithResolvedPath___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[1];
  if (v4)
  {
    goto LABEL_2;
  }

  *__error() = 0;
  if (access([*(a1 + 32) fileSystemRepresentation], 4))
  {
    if (*__error() == 1)
    {
      v6 = *(a1 + 40);
      v7 = objc_alloc(MEMORY[0x277CCACA8]);
      v8 = [*(*(a1 + 40) + 8) namespaceDescriptorsDir];
      v9 = [v7 initWithFormat:@"Cannot access %@ - Please ensure you have set the entitlement <key>com.apple.trial.client</key> to the right value(s)", v8];
      [v6 _faultOnceWithMessage:v9];

      goto LABEL_3;
    }

    if (*__error() == 2)
    {
      v10 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        *buf = 138412290;
        v19 = v11;
        _os_log_impl(&dword_22EA6B000, v10, OS_LOG_TYPE_DEFAULT, "Namespace resolver file not present: %@", buf, 0xCu);
      }

LABEL_16:

      goto LABEL_3;
    }
  }

  v12 = *(a1 + 32);
  v17 = 0;
  v13 = [MEMORY[0x277D425D8] propertyListWithPath:v12 error:&v17];
  v10 = v17;
  v14 = v3[1];
  v3[1] = v13;

  if (!v3[1])
  {
    if ((v3[6] & 1) == 0)
    {
      v15 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 138412546;
        v19 = v16;
        v20 = 2112;
        v21 = v10;
        _os_log_error_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_ERROR, "Error opening namespace resolver file %@: %@", buf, 0x16u);
      }

      *(v3 + 48) = 1;
    }

    goto LABEL_16;
  }

  v4 = v3[1];
LABEL_2:
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
LABEL_3:

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_resolverPropertyListWithGlobalRolloutsResolvedPath:(id *)path
{
  v5 = [(TRIPaths *)self->_paths namespaceDescriptorsDirUsingGlobal:1];
  v6 = [v5 stringByAppendingPathComponent:@"v2/globalActiveFactorProviders.plplist"];

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy_;
  v21 = __Block_byref_object_dispose_;
  v22 = 0;
  lock = self->_lock;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__TRIActiveFactorProvidersParser__resolverPropertyListWithGlobalRolloutsResolvedPath___block_invoke;
  v13[3] = &unk_27885E0C8;
  v8 = v6;
  v14 = v8;
  selfCopy = self;
  v16 = &v17;
  [(_PASLock *)lock runWithLockAcquired:v13];
  v9 = *path;
  *path = v8;
  v10 = v8;

  v11 = v18[5];
  _Block_object_dispose(&v17, 8);

  return v11;
}

void __86__TRIActiveFactorProvidersParser__resolverPropertyListWithGlobalRolloutsResolvedPath___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3[2];
  if (v4)
  {
    goto LABEL_2;
  }

  *__error() = 0;
  if (access([*(a1 + 32) fileSystemRepresentation], 4))
  {
    if (*__error() == 1)
    {
      v6 = *(a1 + 40);
      v7 = objc_alloc(MEMORY[0x277CCACA8]);
      v8 = [*(*(a1 + 40) + 8) namespaceDescriptorsDir];
      v9 = [v7 initWithFormat:@"Cannot access %@ - Please ensure you have set the entitlement <key>com.apple.trial.client</key> to the right value(s)", v8];
      [v6 _faultOnceWithMessage:v9];

      goto LABEL_3;
    }

    if (*__error() == 2)
    {
      v10 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = *(a1 + 32);
        *buf = 138412290;
        v19 = v11;
        _os_log_impl(&dword_22EA6B000, v10, OS_LOG_TYPE_DEFAULT, "Namespace resolver file not present: %@", buf, 0xCu);
      }

LABEL_16:

      goto LABEL_3;
    }
  }

  v12 = *(a1 + 32);
  v17 = 0;
  v13 = [MEMORY[0x277D425D8] propertyListWithPath:v12 error:&v17];
  v10 = v17;
  v14 = v3[2];
  v3[2] = v13;

  if (!v3[2])
  {
    if ((v3[6] & 1) == 0)
    {
      v15 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 32);
        *buf = 138412546;
        v19 = v16;
        v20 = 2112;
        v21 = v10;
        _os_log_error_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_ERROR, "Error opening namespace resolver file %@: %@", buf, 0x16u);
      }

      *(v3 + 48) = 1;
    }

    goto LABEL_16;
  }

  v4 = v3[2];
LABEL_2:
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v4);
LABEL_3:

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_getFactorPackPathForNamespaceName:(id)name withCandidatePath:(id)path parentId:(id)id deploymentId:(int)deploymentId promotable:(BOOL *)promotable
{
  v83 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  pathCopy = path;
  idCopy = id;
  *promotable = 1;
  triStringByResolvingSymlinksInPath = [pathCopy triStringByResolvingSymlinksInPath];
  v17 = triStringByResolvingSymlinksInPath;
  if (triStringByResolvingSymlinksInPath)
  {
    lastPathComponent = [triStringByResolvingSymlinksInPath lastPathComponent];
    v19 = TRIValidateFactorPackId(lastPathComponent);

    if (!v19)
    {
      v41 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v78 = v17;
        v79 = 2112;
        v80 = nameCopy;
        _os_log_error_impl(&dword_22EA6B000, v41, OS_LOG_TYPE_ERROR, "Could not validate factor pack id from %@ for namespace %@", buf, 0x16u);
      }

      v40 = pathCopy;
      goto LABEL_49;
    }

    deploymentIdCopy = deploymentId;
    v69 = nameCopy;
    v20 = [TRINamespaceResolver promotionDirForNamespaceName:nameCopy withPaths:self->_paths];
    v21 = [v20 stringByAppendingPathComponent:@"provisional.pb"];

    v75 = 0;
    v68 = v21;
    v22 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v21 options:0 error:&v75];
    v23 = v75;
    v24 = v23;
    v67 = v22;
    if (v22)
    {
      v74 = v23;
      v25 = [MEMORY[0x277D73BA0] parseFromData:v22 error:&v74];
      v66 = v74;

      if (!v25)
      {
        v46 = TRILogCategory_ClientFramework();
        v42 = v68;
        v45 = v66;
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v78 = v68;
          v79 = 2112;
          v80 = v69;
          v81 = 2112;
          v82 = v66;
          _os_log_error_impl(&dword_22EA6B000, v46, OS_LOG_TYPE_ERROR, "Error parsing provisional file %@ for namespace %@: %@", buf, 0x20u);
        }

        v40 = pathCopy;
        goto LABEL_47;
      }

      v64 = idCopy;
      if (![v25 hasFactorPackId] || (objc_msgSend(v25, "factorPackId"), v63 = v25, v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(v26, "isEqualToString:", v19), v26, v25 = v63, (v27 & 1) == 0))
      {
        v40 = pathCopy;
        idCopy = v64;
        v42 = v68;
        v45 = v66;
LABEL_47:

        v24 = v45;
        goto LABEL_48;
      }

      v76[0] = @"promoted";
      v76[1] = @"legacyPromoted";
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __120__TRIActiveFactorProvidersParser__getFactorPackPathForNamespaceName_withCandidatePath_parentId_deploymentId_promotable___block_invoke;
      v71[3] = &unk_27885E0F0;
      v62 = v69;
      v72 = v62;
      selfCopy = self;
      v29 = [v28 _pas_mappedArrayWithTransform:v71];

      v30 = [TRINamespaceResolver preferredPathForFactorDataWithCandidatePaths:v29];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v32 = v30;
      if (!v32)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"TRIActiveFactorProvidersParser.m" lineNumber:968 description:{@"Expression was unexpectedly nil/false: %@", @"promotedPath"}];
      }

      v33 = [defaultManager fileExistsAtPath:v32];

      v34 = v32;
      if ((v33 & 1) == 0)
      {
        v40 = pathCopy;
        v25 = v63;
        idCopy = v64;
        v42 = v68;
        v45 = v66;
LABEL_46:

        goto LABEL_47;
      }

      triStringByResolvingSymlinksInPath2 = [v32 triStringByResolvingSymlinksInPath];
      v36 = triStringByResolvingSymlinksInPath2;
      v25 = v63;
      if (!triStringByResolvingSymlinksInPath2)
      {
        v48 = TRILogCategory_ClientFramework();
        v45 = v66;
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v78 = v34;
          v79 = 2112;
          v80 = v62;
          v81 = 2112;
          v82 = v66;
          _os_log_error_impl(&dword_22EA6B000, v48, OS_LOG_TYPE_ERROR, "Could not resolve symlink at %@ for namespace %@: %@", buf, 0x20u);
        }

        v40 = pathCopy;
        idCopy = v64;
        v42 = v68;
        goto LABEL_45;
      }

      lastPathComponent2 = [triStringByResolvingSymlinksInPath2 lastPathComponent];
      v38 = TRIValidateFactorPackId(lastPathComponent2);

      v61 = v38;
      if (!v38)
      {
        v49 = TRILogCategory_ClientFramework();
        idCopy = v64;
        v42 = v68;
        v45 = v66;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v78 = v36;
          v79 = 2112;
          v80 = v62;
          _os_log_error_impl(&dword_22EA6B000, v49, OS_LOG_TYPE_ERROR, "Could not validate factor pack id from %@ for namespace %@", buf, 0x16u);
        }

        v50 = pathCopy;
        goto LABEL_44;
      }

      idCopy = v64;
      if ([v38 isEqualToString:v19])
      {
        *promotable = 0;
      }

      else if ([v63 hasAttempts] && objc_msgSend(v63, "attempts") >= 5)
      {
        *promotable = 0;
        if (!+[TRIProcessInfo hostingProcessIsTriald])
        {
          v45 = v66;
          if (+[TRIProcessInfo hostingProcessIsTrialdSystem])
          {
            v50 = v34;
            idCopy = v64;
          }

          else
          {
            idCopy = v64;
            if (![v63 hasRejected] || (objc_msgSend(v63, "rejected") & 1) == 0)
            {
              v60 = v34;
              v53 = [TRIRolloutDeployment deploymentWithRolloutId:v64 deploymentId:deploymentIdCopy];
              v54 = TRILogCategory_ClientFramework();
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412802;
                v78 = v19;
                v79 = 2112;
                v80 = v53;
                v81 = 2112;
                v82 = v62;
                _os_log_error_impl(&dword_22EA6B000, v54, OS_LOG_TYPE_ERROR, "Rejecting factor pack id %@ from rollout deployment %@ for namespace %@", buf, 0x20u);
              }

              v55 = objc_opt_new();
              v70 = v66;
              v56 = [v55 rejectFactorPackId:v19 forNamespaceName:v62 rolloutDeployment:v53 error:&v70];
              v57 = v70;

              v42 = v68;
              if ((v56 & 1) == 0)
              {
                v58 = TRILogCategory_ClientFramework();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v78 = v19;
                  v79 = 2112;
                  v80 = v62;
                  _os_log_error_impl(&dword_22EA6B000, v58, OS_LOG_TYPE_ERROR, "Could not note factor pack id %@ rejected for namespace %@", buf, 0x16u);
                }
              }

              v50 = v60;
              v45 = v57;
              v34 = v60;
              v25 = v63;
              idCopy = v64;
              goto LABEL_44;
            }

            v50 = v34;
          }

          v42 = v68;
LABEL_44:
          v40 = v50;

LABEL_45:
          goto LABEL_46;
        }

        v50 = v34;
        idCopy = v64;
LABEL_43:
        v42 = v68;
        v45 = v66;
        goto LABEL_44;
      }

      v50 = pathCopy;
      goto LABEL_43;
    }

    v42 = v68;
    if (v23)
    {
      domain = [v23 domain];
      if ([domain isEqualToString:*MEMORY[0x277CCA050]])
      {
        code = [v24 code];

        if (code == 260)
        {
LABEL_32:
          v40 = pathCopy;
LABEL_48:

          nameCopy = v69;
LABEL_49:

          goto LABEL_50;
        }
      }

      else
      {
      }
    }

    v47 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v78 = v68;
      v79 = 2112;
      v80 = v69;
      v81 = 2112;
      v82 = v24;
      _os_log_error_impl(&dword_22EA6B000, v47, OS_LOG_TYPE_ERROR, "Error opening provisional file %@ for namespace %@: %@", buf, 0x20u);
    }

    goto LABEL_32;
  }

  v39 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v78 = pathCopy;
    v79 = 2112;
    v80 = nameCopy;
    _os_log_error_impl(&dword_22EA6B000, v39, OS_LOG_TYPE_ERROR, "Could not resolved symlink at %@ for namespace %@", buf, 0x16u);
  }

  v40 = pathCopy;
LABEL_50:

  v51 = *MEMORY[0x277D85DE8];

  return v40;
}

id __120__TRIActiveFactorProvidersParser__getFactorPackPathForNamespaceName_withCandidatePath_parentId_deploymentId_promotable___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 8);
  v4 = a2;
  v5 = [TRINamespaceResolver promotionDirForNamespaceName:v2 withPaths:v3];
  v6 = [v5 stringByAppendingPathComponent:v4];

  return v6;
}

- (void)_faultOnceWithMessage:(id)message
{
  messageCopy = message;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__TRIActiveFactorProvidersParser__faultOnceWithMessage___block_invoke;
  v7[3] = &unk_27885E118;
  v8 = messageCopy;
  v6 = messageCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __56__TRIActiveFactorProvidersParser__faultOnceWithMessage___block_invoke(uint64_t a1, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((a2[48] & 1) == 0)
  {
    v4 = a2;
    v5 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_error_impl(&dword_22EA6B000, v5, OS_LOG_TYPE_ERROR, "%@", &v8, 0xCu);
    }

    a2[48] = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (char)_realpathWithFileSystemRepresentation:(const char *)representation buffer:(char *)buffer
{
  *__error() = 0;

  return realpath_DARWIN_EXTSN(representation, buffer);
}

@end