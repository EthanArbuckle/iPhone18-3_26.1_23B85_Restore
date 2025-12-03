@interface TRIClientExperimentArtifact
+ (id)allReferencedCKRecordKeys;
+ (id)artifactWithExperiment:(id)experiment;
+ (id)parseFromData:(id)data error:(id *)error;
- (BOOL)hasNamespacesAvailableForExperimentWithDatabase:(id)database;
- (BOOL)hasValidNamespacesWithError:(id *)error;
- (BOOL)isCompatibleCounterfactual;
- (BOOL)isCompatibleWithNamespaceDescriptorProvider:(id)provider error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)isValid;
- (BOOL)saveWithDatabase:(id)database paths:(id)paths;
- (TRIClientExperiment)experiment;
- (TRIClientExperimentArtifact)init;
- (TRIClientExperimentArtifact)initWithCoder:(id)coder;
- (TRIClientExperimentArtifact)initWithExperiment:(id)experiment;
- (TRIExperimentDeployment)experimentDeployment;
- (id)asPersistedArtifact;
- (id)counterfactualsTreatmentsToFactorPackSetIdsWithActiveTreatmentId:(id)id;
- (id)data;
- (id)factorPackSetIdForTreatmentId:(id)id;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIClientExperimentArtifact

- (TRIExperimentDeployment)experimentDeployment
{
  experimentId = [(TRIClientExperimentArtifact *)self experimentId];

  if (experimentId)
  {
    if ([(TRIClientExperimentArtifact *)self hasDeploymentId])
    {
      deploymentId = [(TRIClientExperimentArtifact *)self deploymentId];
    }

    else
    {
      deploymentId = 0xFFFFFFFFLL;
    }

    v6 = objc_alloc(MEMORY[0x277D736C0]);
    experimentId2 = [(TRIClientExperimentArtifact *)self experimentId];
    v5 = [v6 initWithExperimentId:experimentId2 deploymentId:deploymentId];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)artifactWithExperiment:(id)experiment
{
  experimentCopy = experiment;
  v4 = [[TRIClientExperimentArtifact alloc] initWithExperiment:experimentCopy];

  return v4;
}

- (TRIClientExperimentArtifact)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"-init is not a valid initializer for the class TRIClientExperimentArtifact" userInfo:0];
  objc_exception_throw(v2);
}

- (TRIClientExperimentArtifact)initWithExperiment:(id)experiment
{
  experimentCopy = experiment;
  v10.receiver = self;
  v10.super_class = TRIClientExperimentArtifact;
  v6 = [(TRIClientExperimentArtifact *)&v10 init];
  if (v6)
  {
    if (!experimentCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v6 file:@"TRIClientExperimentArtifact.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"experiment"}];
    }

    experimentId = [experimentCopy experimentId];
    [(TRIClientExperimentArtifact *)v6 setExperimentId:experimentId];

    -[TRIClientExperimentArtifact setDeploymentId:](v6, "setDeploymentId:", [experimentCopy deploymentId]);
  }

  return v6;
}

- (TRIClientExperiment)experiment
{
  *&v29[5] = *MEMORY[0x277D85DE8];
  encodedExperimentDefinition = [(TRIClientExperimentArtifact *)self encodedExperimentDefinition];

  if (encodedExperimentDefinition)
  {
    v4 = MEMORY[0x277D73AD0];
    encodedExperimentDefinition2 = [(TRIClientExperimentArtifact *)self encodedExperimentDefinition];
    v25 = 0;
    v6 = [v4 parseFromData:encodedExperimentDefinition2 error:&v25];
    v7 = v25;

    if (v7 || !v6)
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v7;
        _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "failed to decode experiment: %@", buf, 0xCu);
      }
    }

    else
    {
      if (([v6 hasExperimentId] & 1) == 0)
      {
        v8 = TRILogCategory_Server();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          experimentId = [(TRIClientExperimentArtifact *)self experimentId];
          *buf = 138412290;
          v27 = experimentId;
          _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "experiment definition contains no experiment id.  assume id %@", buf, 0xCu);
        }

        experimentId2 = [(TRIClientExperimentArtifact *)self experimentId];
        [v6 setExperimentId:experimentId2];
      }

      experimentId3 = [(TRIClientExperimentArtifact *)self experimentId];
      experimentId4 = [v6 experimentId];
      v12 = [experimentId3 isEqualToString:experimentId4];

      if (v12)
      {
        if ([v6 hasDeploymentId])
        {
          deploymentId = [v6 deploymentId];
        }

        else
        {
          deploymentId = -1;
        }

        if ([(TRIClientExperimentArtifact *)self deploymentId]== deploymentId)
        {
          v15 = v6;
LABEL_26:

          goto LABEL_27;
        }

        v17 = TRILogCategory_Server();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          experimentId5 = [(TRIClientExperimentArtifact *)self experimentId];
          deploymentId2 = [(TRIClientExperimentArtifact *)self deploymentId];
          *buf = 138412802;
          v27 = experimentId5;
          v28 = 1024;
          *v29 = deploymentId2;
          v29[2] = 1024;
          *&v29[3] = deploymentId;
          _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "deployment id mismatch for experiment %@: %d != %d", buf, 0x18u);
        }
      }

      else
      {
        v17 = TRILogCategory_Server();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          experimentId6 = [(TRIClientExperimentArtifact *)self experimentId];
          experimentId7 = [v6 experimentId];
          *buf = 138412546;
          v27 = experimentId6;
          v28 = 2112;
          *v29 = experimentId7;
          _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "experiment id mismatch: %@ != %@", buf, 0x16u);
        }
      }
    }

    v15 = 0;
    goto LABEL_26;
  }

  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    experimentId8 = [(TRIClientExperimentArtifact *)self experimentId];
    *buf = 138412546;
    v27 = experimentId8;
    v28 = 1024;
    *v29 = [(TRIClientExperimentArtifact *)self experimentType];
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "no experiment definition to decode experimentId: %@ type: %d", buf, 0x12u);
  }

  v15 = 0;
LABEL_27:

  v20 = *MEMORY[0x277D85DE8];

  return v15;
}

id __59__TRIClientExperimentArtifact__convertNamespaceIdsToNames___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = MEMORY[0x277D73B50];
      v5 = [v2 unsignedIntValue];
      v6 = v4;
    }

    else
    {
      v7 = TRILogCategory_Server();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v12 = 138543618;
        *&v12[4] = v2;
        *&v12[12] = 2112;
        *&v12[14] = objc_opt_class();
        v11 = *&v12[14];
        _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "unexpected type for namespace: %{public}@ <%@>", v12, 0x16u);
      }

      v6 = MEMORY[0x277D73B50];
      v5 = 0;
    }

    v3 = [v6 namespaceNameFromId:{v5, *v12, *&v12[16], v13}];
  }

  v8 = v3;

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (BOOL)isValid
{
  publicCertificate = [(TRIClientExperimentArtifact *)self publicCertificate];
  if (publicCertificate)
  {
    v4 = [TRISignatureKey keyFromData:publicCertificate];
    if (v4)
    {
      encodedExperimentDefinitionSignature = [(TRIClientExperimentArtifact *)self encodedExperimentDefinitionSignature];
      encodedExperimentDefinition = [(TRIClientExperimentArtifact *)self encodedExperimentDefinition];
      v7 = [v4 validateBase64Signature:encodedExperimentDefinitionSignature data:encodedExperimentDefinition];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasValidNamespacesWithError:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  namespaces = [(TRIClientExperimentArtifact *)self namespaces];
  if (!namespaces || (v6 = namespaces, -[TRIClientExperimentArtifact namespaces](self, "namespaces"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v6, !v8))
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      experimentId = [(TRIClientExperimentArtifact *)self experimentId];
      *buf = 138412290;
      v36 = experimentId;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "missing namespaces in definition of experiment %@", buf, 0xCu);
    }

    if (!error)
    {
      goto LABEL_14;
    }

    v15 = MEMORY[0x277CCACA8];
    experimentId2 = [(TRIClientExperimentArtifact *)self experimentId];
    v17 = [v15 stringWithFormat:@"missing namespaces in definition of experiment %@", experimentId2];

    v18 = objc_alloc(MEMORY[0x277CCA9B8]);
    v33 = *MEMORY[0x277CCA450];
    v34 = v17;
    v19 = MEMORY[0x277CBEAC0];
    v20 = &v34;
    v21 = &v33;
    goto LABEL_13;
  }

  namespaces2 = [(TRIClientExperimentArtifact *)self namespaces];
  v10 = [namespaces2 count];
  namespaceCompatibilityVersions = [(TRIClientExperimentArtifact *)self namespaceCompatibilityVersions];
  v12 = [namespaceCompatibilityVersions count];

  if (v10 != v12)
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      experimentId3 = [(TRIClientExperimentArtifact *)self experimentId];
      *buf = 138412290;
      v36 = experimentId3;
      _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "mismatch in namespaces and namespace compatibility versions in definition of experiment %@", buf, 0xCu);
    }

    if (!error)
    {
      goto LABEL_14;
    }

    v23 = MEMORY[0x277CCACA8];
    experimentId4 = [(TRIClientExperimentArtifact *)self experimentId];
    v17 = [v23 stringWithFormat:@"mismatch in namespaces and namespace compatibility versions in definition of experiment %@", experimentId4];

    v18 = objc_alloc(MEMORY[0x277CCA9B8]);
    v31 = *MEMORY[0x277CCA450];
    v32 = v17;
    v19 = MEMORY[0x277CBEAC0];
    v20 = &v32;
    v21 = &v31;
LABEL_13:
    v25 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];
    v26 = [v18 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v25];
    v27 = *error;
    *error = v26;

LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  result = 1;
LABEL_15:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isCompatibleWithNamespaceDescriptorProvider:(id)provider error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  providerCopy = provider;
  if ([(TRIClientExperimentArtifact *)self experimentType]== 1)
  {
    if ([(TRIClientExperimentArtifact *)self hasValidNamespacesWithError:error])
    {
      if ([(TRIClientExperimentArtifact *)self deploymentEnvironment])
      {
        v7 = TRILogCategory_Server();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          experimentDeployment = [(TRIClientExperimentArtifact *)self experimentDeployment];
          shortDesc = [experimentDeployment shortDesc];
          v10 = TRIDeploymentEnvironment_EnumDescriptor();
          v11 = [v10 enumNameForValue:{-[TRIClientExperimentArtifact deploymentEnvironment](self, "deploymentEnvironment")}];
          *buf = 138412546;
          v25 = shortDesc;
          v26 = 2112;
          v27 = v11;
          _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "experiment %@ has deployment environment %@; bypassing namespace descriptor checks.", buf, 0x16u);
        }

        v12 = 1;
      }

      else
      {
        v13 = objc_opt_new();
        v14 = objc_opt_new();
        namespaces = [(TRIClientExperimentArtifact *)self namespaces];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __81__TRIClientExperimentArtifact_isCompatibleWithNamespaceDescriptorProvider_error___block_invoke;
        v19[3] = &unk_279DDF5E0;
        v19[4] = self;
        v20 = providerCopy;
        v21 = v13;
        v22 = v14;
        errorCopy = error;
        v16 = v14;
        v7 = v13;
        [namespaces enumerateObjectsUsingBlock:v19];

        v12 = [v16 isEqualToSet:v7];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

void __81__TRIClientExperimentArtifact_isCompatibleWithNamespaceDescriptorProvider_error___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [*(a1 + 32) namespaceCompatibilityVersions];
  v7 = [v6 objectAtIndexedSubscript:a3];
  v8 = [v7 intValue];

  v9 = [*(a1 + 40) descriptorWithNamespaceName:v5];
  v10 = v9;
  if (v9)
  {
    if (v8 == [v9 downloadNCV])
    {
      [*(a1 + 48) addObject:v5];
      goto LABEL_13;
    }

    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v29 = [*(a1 + 32) experimentId];
      *buf = 138413058;
      v33 = v29;
      v34 = 2114;
      v35 = v5;
      v36 = 1024;
      v37 = v8;
      v38 = 1024;
      v39 = [v10 downloadNCV];
      _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "experiment %@ with namespace %{public}@ has compatibility version %u which is incompatible with compatibility version %u found locally", buf, 0x22u);
    }

    if (*(a1 + 64))
    {
      v22 = MEMORY[0x277CCACA8];
      v23 = [*(a1 + 32) experimentId];
      v16 = [v22 stringWithFormat:@"experiment %@ with namespace %@ has compatibility version %u which is incompatible with compatibility version %u found locally", v23, v5, v8, objc_msgSend(v10, "downloadNCV")];

      v17 = objc_alloc(MEMORY[0x277CCA9B8]);
      v30 = *MEMORY[0x277CCA450];
      v31 = v16;
      v18 = MEMORY[0x277CBEAC0];
      v19 = &v31;
      v20 = &v30;
      goto LABEL_12;
    }
  }

  else
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [*(a1 + 32) experimentDeployment];
      v13 = [v12 shortDesc];
      *buf = 138412546;
      v33 = v13;
      v34 = 2114;
      v35 = v5;
      _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Warning: experiment %@ specifies namespace %{public}@, which is not registered with Trial", buf, 0x16u);
    }

    if (*(a1 + 64))
    {
      v14 = MEMORY[0x277CCACA8];
      v15 = [*(a1 + 32) experimentId];
      v16 = [v14 stringWithFormat:@"experiment %@ specifies namespace %@, which is not registered with Trial. Please make sure namespace descriptor for %@ is installed.", v15, v5, v5];

      v17 = objc_alloc(MEMORY[0x277CCA9B8]);
      v40 = *MEMORY[0x277CCA450];
      v41[0] = v16;
      v18 = MEMORY[0x277CBEAC0];
      v19 = v41;
      v20 = &v40;
LABEL_12:
      v24 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:1];
      v25 = [v17 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v24];
      v26 = *(a1 + 64);
      v27 = *v26;
      *v26 = v25;
    }
  }

LABEL_13:
  [*(a1 + 56) addObject:v5];

  v28 = *MEMORY[0x277D85DE8];
}

- (BOOL)saveWithDatabase:(id)database paths:(id)paths
{
  v37 = *MEMORY[0x277D85DE8];
  databaseCopy = database;
  experiment = [(TRIClientExperimentArtifact *)self experiment];
  v7 = experiment;
  if (experiment)
  {
    experimentId = [experiment experimentId];
    if ([v7 hasDeploymentId])
    {
      deploymentId = [v7 deploymentId];
      if (experimentId)
      {
        if (deploymentId != -1)
        {
          v10 = [objc_alloc(MEMORY[0x277D736C0]) initWithExperimentId:experimentId deploymentId:deploymentId];
          v11 = objc_opt_new();
          namespaces = [(TRIClientExperimentArtifact *)self namespaces];
          if (namespaces)
          {
            v13 = namespaces;
            namespaceCompatibilityVersions = [(TRIClientExperimentArtifact *)self namespaceCompatibilityVersions];
            if (namespaceCompatibilityVersions)
            {
              v15 = namespaceCompatibilityVersions;
              [(TRIClientExperimentArtifact *)self namespaces];
              v16 = v32 = v11;
              v31 = [v16 count];
              namespaceCompatibilityVersions2 = [(TRIClientExperimentArtifact *)self namespaceCompatibilityVersions];
              v18 = [namespaceCompatibilityVersions2 count];

              v11 = v32;
              if (v31 == v18)
              {
                namespaces2 = [(TRIClientExperimentArtifact *)self namespaces];
                v33[0] = MEMORY[0x277D85DD0];
                v33[1] = 3221225472;
                v33[2] = __54__TRIClientExperimentArtifact_saveWithDatabase_paths___block_invoke;
                v33[3] = &unk_279DDF608;
                v33[4] = self;
                v34 = v32;
                [namespaces2 enumerateObjectsUsingBlock:v33];
              }
            }

            else
            {
            }
          }

          if ([v7 hasStartDate])
          {
            startDate = [v7 startDate];
            date = [startDate date];
          }

          else
          {
            date = 0;
          }

          if ([v7 hasEndDate])
          {
            endDate = [v7 endDate];
            date2 = [endDate date];
          }

          else
          {
            date2 = 0;
          }

          v20 = [databaseCopy addExperimentWithExperimentDeployment:v10 environment:-[TRIClientExperimentArtifact deploymentEnvironment](self type:"deploymentEnvironment") status:objc_msgSend(v7 startDate:"type") endDate:0 namespaces:date artifact:{date2, v11, self}] != 0;

          goto LABEL_17;
        }

LABEL_13:
        v10 = TRILogCategory_Server();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v36 = experimentId;
          v21 = "can't save experiment id %@ with nil deploymentId";
          v22 = v10;
          v23 = 12;
LABEL_28:
          _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
          goto LABEL_16;
        }

        goto LABEL_16;
      }
    }

    else if (experimentId)
    {
      goto LABEL_13;
    }

    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v21 = "can't save experiment with nil experimentId";
      v22 = v10;
      v23 = 2;
      goto LABEL_28;
    }

LABEL_16:
    v20 = 0;
LABEL_17:

    goto LABEL_18;
  }

  experimentId = TRILogCategory_Server();
  if (os_log_type_enabled(experimentId, OS_LOG_TYPE_ERROR))
  {
    experimentId2 = [(TRIClientExperimentArtifact *)self experimentId];
    *buf = 138412290;
    v36 = experimentId2;
    _os_log_error_impl(&dword_26F567000, experimentId, OS_LOG_TYPE_ERROR, "no client experiment found on artifact for experiment id %@", buf, 0xCu);
  }

  v20 = 0;
LABEL_18:

  v24 = *MEMORY[0x277D85DE8];
  return v20;
}

void __54__TRIClientExperimentArtifact_saveWithDatabase_paths___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 namespaceCompatibilityVersions];
  v8 = [v7 objectAtIndexedSubscript:a3];
  v9 = [v8 unsignedIntValue];

  v10 = [objc_alloc(MEMORY[0x277D73808]) initWithName:v6 compatibilityVersion:v9];
  [*(a1 + 40) addObject:v10];
}

- (BOOL)hasNamespacesAvailableForExperimentWithDatabase:(id)database
{
  databaseCopy = database;
  if (!databaseCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientExperimentArtifact.m" lineNumber:261 description:{@"Invalid parameter not satisfying: %@", @"database"}];
  }

  experiment = [(TRIClientExperimentArtifact *)self experiment];
  experimentDeployment = [(TRIClientExperimentArtifact *)self experimentDeployment];
  v8 = experimentDeployment;
  if (experiment && experimentDeployment && ([experimentDeployment hasDeploymentId] & 1) != 0)
  {
    if ([experiment experimentType] == 1)
    {
      v9 = 1;
    }

    else
    {
      if ([experiment hasStartDate])
      {
        startDate = [experiment startDate];
        date = [startDate date];
      }

      else
      {
        date = 0;
      }

      if ([experiment hasEndDate])
      {
        endDate = [experiment endDate];
        date2 = [endDate date];
      }

      else
      {
        date2 = 0;
      }

      namespaces = [(TRIClientExperimentArtifact *)self namespaces];
      v17 = namespaces;
      if (namespaces)
      {
        v18 = namespaces;
      }

      else
      {
        v18 = MEMORY[0x277CBEBF8];
      }

      v9 = [databaseCopy namespacesAreAvailableForExperiment:v8 startDate:date endDate:date2 namespaces:v18];
    }
  }

  else
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "experiment definition is missing or has no deployment id", buf, 2u);
    }

    v9 = 0;
  }

  return v9;
}

- (id)asPersistedArtifact
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  experimentId = [(TRIClientExperimentArtifact *)self experimentId];
  [v3 setExperimentId:experimentId];

  if (([(TRIClientExperimentArtifact *)self deploymentId]& 0x80000000) == 0)
  {
    [v3 setDeploymentId:{-[TRIClientExperimentArtifact deploymentId](self, "deploymentId")}];
  }

  [v3 setCloudKitContainer:{-[TRIClientExperimentArtifact cloudKitContainer](self, "cloudKitContainer")}];
  teamId = [(TRIClientExperimentArtifact *)self teamId];

  if (teamId)
  {
    teamId2 = [(TRIClientExperimentArtifact *)self teamId];
    [v3 setTeamId:teamId2];
  }

  encodedExperimentDefinition = [(TRIClientExperimentArtifact *)self encodedExperimentDefinition];

  if (encodedExperimentDefinition)
  {
    encodedExperimentDefinition2 = [(TRIClientExperimentArtifact *)self encodedExperimentDefinition];
    [v3 setEncodedExperimentDefinition:encodedExperimentDefinition2];
  }

  encodedExperimentDefinitionSignature = [(TRIClientExperimentArtifact *)self encodedExperimentDefinitionSignature];

  if (encodedExperimentDefinitionSignature)
  {
    encodedExperimentDefinitionSignature2 = [(TRIClientExperimentArtifact *)self encodedExperimentDefinitionSignature];
    [v3 setEncodedExperimentDefinitionSignature:encodedExperimentDefinitionSignature2];
  }

  publicCertificate = [(TRIClientExperimentArtifact *)self publicCertificate];

  if (publicCertificate)
  {
    publicCertificate2 = [(TRIClientExperimentArtifact *)self publicCertificate];
    [v3 setPublicCertificate:publicCertificate2];
  }

  [v3 setStatus:{-[TRIClientExperimentArtifact experimentState](self, "experimentState")}];
  [v3 setType:{-[TRIClientExperimentArtifact experimentType](self, "experimentType")}];
  [v3 setPriority:{-[TRIClientExperimentArtifact experimentPriority](self, "experimentPriority")}];
  [v3 setInternalBuildOnly:{-[TRIClientExperimentArtifact internalBuildOnly](self, "internalBuildOnly")}];
  deploymentDate = [(TRIClientExperimentArtifact *)self deploymentDate];

  if (deploymentDate)
  {
    v14 = objc_alloc(MEMORY[0x277D73B88]);
    deploymentDate2 = [(TRIClientExperimentArtifact *)self deploymentDate];
    v16 = [v14 initWithDate:deploymentDate2];
    [v3 setDeploymentDate:v16];
  }

  namespaces = [(TRIClientExperimentArtifact *)self namespaces];

  if (namespaces)
  {
    namespaces2 = [(TRIClientExperimentArtifact *)self namespaces];
    v19 = [namespaces2 mutableCopy];
    [v3 setNamespacesArray:v19];
  }

  namespaceCompatibilityVersions = [(TRIClientExperimentArtifact *)self namespaceCompatibilityVersions];

  if (namespaceCompatibilityVersions)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    namespaceCompatibilityVersions2 = [(TRIClientExperimentArtifact *)self namespaceCompatibilityVersions];
    v22 = [namespaceCompatibilityVersions2 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v31;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(namespaceCompatibilityVersions2);
          }

          v26 = *(*(&v30 + 1) + 8 * i);
          namespaceCompatibilityVersionsArray = [v3 namespaceCompatibilityVersionsArray];
          [namespaceCompatibilityVersionsArray addValue:{objc_msgSend(v26, "unsignedIntValue")}];
        }

        v23 = [namespaceCompatibilityVersions2 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v23);
    }
  }

  [v3 setDeploymentEnvironment:{-[TRIClientExperimentArtifact deploymentEnvironment](self, "deploymentEnvironment")}];
  v28 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)data
{
  v4 = objc_autoreleasePoolPush();
  asPersistedArtifact = [(TRIClientExperimentArtifact *)self asPersistedArtifact];
  data = [asPersistedArtifact data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientExperimentArtifact.m" lineNumber:345 description:{@"Invalid parameter not satisfying: %@", @"result"}];
  }

  objc_autoreleasePoolPop(v4);

  return data;
}

+ (id)parseFromData:(id)data error:(id *)error
{
  v36[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v6 = objc_autoreleasePoolPush();
  v34 = 0;
  v7 = [(TRIPBMessage *)TRIPersistedExperimentArtifact parseFromData:dataCopy error:&v34];
  v8 = v34;
  v9 = v8;
  if (v7)
  {
    if ([v7 hasExperimentId])
    {
      v10 = objc_alloc(MEMORY[0x277D736C0]);
      experimentId = [v7 experimentId];
      if ([v7 hasDeploymentId])
      {
        deploymentId = [v7 deploymentId];
      }

      else
      {
        deploymentId = 0xFFFFFFFFLL;
      }

      v15 = [v10 initWithExperimentId:experimentId deploymentId:deploymentId];

      v14 = [TRIClientExperimentArtifact artifactWithExperiment:v15];
      [v14 setCloudKitContainer:{objc_msgSend(v7, "cloudKitContainer")}];
      if ([v7 hasTeamId])
      {
        teamId = [v7 teamId];
        [v14 setTeamId:teamId];
      }

      else
      {
        [v14 setTeamId:0];
      }

      if ([v7 hasEncodedExperimentDefinition])
      {
        encodedExperimentDefinition = [v7 encodedExperimentDefinition];
        [v14 setEncodedExperimentDefinition:encodedExperimentDefinition];
      }

      else
      {
        [v14 setEncodedExperimentDefinition:0];
      }

      if ([v7 hasEncodedExperimentDefinitionSignature])
      {
        encodedExperimentDefinitionSignature = [v7 encodedExperimentDefinitionSignature];
        [v14 setEncodedExperimentDefinitionSignature:encodedExperimentDefinitionSignature];
      }

      else
      {
        [v14 setEncodedExperimentDefinitionSignature:0];
      }

      if ([v7 hasPublicCertificate])
      {
        publicCertificate = [v7 publicCertificate];
        [v14 setPublicCertificate:publicCertificate];
      }

      else
      {
        [v14 setPublicCertificate:0];
      }

      [v14 setExperimentState:{objc_msgSend(v7, "status")}];
      [v14 setExperimentType:{objc_msgSend(v7, "type")}];
      [v14 setExperimentPriority:{objc_msgSend(v7, "priority")}];
      if ([v7 hasInternalBuildOnly])
      {
        internalBuildOnly = [v7 internalBuildOnly];
      }

      else
      {
        internalBuildOnly = 0;
      }

      [v14 setInternalBuildOnly:internalBuildOnly];
      if ([v7 hasDeploymentDate])
      {
        deploymentDate = [v7 deploymentDate];
        date = [deploymentDate date];
        [v14 setDeploymentDate:date];
      }

      else
      {
        [v14 setDeploymentDate:0];
      }

      if ([v7 namespacesArray_Count])
      {
        namespacesArray = [v7 namespacesArray];
        [v14 setNamespaces:namespacesArray];
      }

      else
      {
        [v14 setNamespaces:0];
      }

      [v14 setDeploymentEnvironment:{objc_msgSend(v7, "deploymentEnvironment")}];
      if ([v7 namespaceCompatibilityVersionsArray_Count])
      {
        v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "namespaceCompatibilityVersionsArray_Count")}];
        namespaceCompatibilityVersionsArray = [v7 namespaceCompatibilityVersionsArray];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __51__TRIClientExperimentArtifact_parseFromData_error___block_invoke;
        v32[3] = &unk_279DDF630;
        v33 = v27;
        v29 = v27;
        [namespaceCompatibilityVersionsArray enumerateValuesWithBlock:v32];

        [v14 setNamespaceCompatibilityVersions:v29];
      }

      goto LABEL_34;
    }

    if (error)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v35 = *MEMORY[0x277CCA450];
      v36[0] = @"TRIPersistedExperimentArtifact has nil experimentId";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v17 = [v16 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v15];
      v18 = *error;
      *error = v17;

      v14 = 0;
      goto LABEL_34;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_35;
  }

  if (!error)
  {
    goto LABEL_9;
  }

  v13 = v8;
  v14 = 0;
  v15 = *error;
  *error = v13;
LABEL_34:

LABEL_35:
  objc_autoreleasePoolPop(v6);

  v30 = *MEMORY[0x277D85DE8];

  return v14;
}

void __51__TRIClientExperimentArtifact_parseFromData_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInt:a2];
  [v2 addObject:v3];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientExperimentArtifact.m" lineNumber:410 description:@"Do not use NSSecureCoding to persist TRIClientExperimentArtifact to disk. Use protobuf serialization."];
  }

  data = [(TRIClientExperimentArtifact *)self data];
  [coderCopy encodeObject:data forKey:@"data"];
}

- (TRIClientExperimentArtifact)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = TRIClientExperimentArtifact;
  v5 = [(TRIClientExperimentArtifact *)&v12 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    if (v6)
    {
      v11 = 0;
      v7 = [TRIClientExperimentArtifact parseFromData:v6 error:&v11];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        [coderCopy failWithError:v11];
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  experimentDeployment = [(TRIClientExperimentArtifact *)self experimentDeployment];
  v3 = [experimentDeployment hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        experimentDeployment = [(TRIClientExperimentArtifact *)self experimentDeployment];
        experimentDeployment2 = [(TRIClientExperimentArtifact *)v6 experimentDeployment];
        experiment = experimentDeployment2;
        if (experimentDeployment == experimentDeployment2)
        {
        }

        else
        {
          v10 = 0;
          if (!experimentDeployment || !experimentDeployment2)
          {
            goto LABEL_52;
          }

          v11 = [experimentDeployment isEqualToDeployment:experimentDeployment2];

          if ((v11 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        deploymentEnvironment = [(TRIClientExperimentArtifact *)self deploymentEnvironment];
        if (deploymentEnvironment != [(TRIClientExperimentArtifact *)v6 deploymentEnvironment])
        {
          goto LABEL_36;
        }

        cloudKitContainer = [(TRIClientExperimentArtifact *)self cloudKitContainer];
        if (cloudKitContainer != [(TRIClientExperimentArtifact *)v6 cloudKitContainer])
        {
          goto LABEL_36;
        }

        experimentDeployment = [(TRIClientExperimentArtifact *)self teamId];
        teamId = [(TRIClientExperimentArtifact *)v6 teamId];
        experiment = teamId;
        if (experimentDeployment == teamId)
        {
        }

        else
        {
          v10 = 0;
          if (!experimentDeployment || !teamId)
          {
            goto LABEL_52;
          }

          v15 = [experimentDeployment isEqualToString:teamId];

          if ((v15 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        experimentDeployment = [(TRIClientExperimentArtifact *)self encodedExperimentDefinition];
        encodedExperimentDefinition = [(TRIClientExperimentArtifact *)v6 encodedExperimentDefinition];
        experiment = encodedExperimentDefinition;
        if (experimentDeployment == encodedExperimentDefinition)
        {
        }

        else
        {
          v10 = 0;
          if (!experimentDeployment || !encodedExperimentDefinition)
          {
            goto LABEL_52;
          }

          v17 = [experimentDeployment isEqualToData:encodedExperimentDefinition];

          if ((v17 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        experimentDeployment = [(TRIClientExperimentArtifact *)self encodedExperimentDefinitionSignature];
        encodedExperimentDefinitionSignature = [(TRIClientExperimentArtifact *)v6 encodedExperimentDefinitionSignature];
        experiment = encodedExperimentDefinitionSignature;
        if (experimentDeployment == encodedExperimentDefinitionSignature)
        {
        }

        else
        {
          v10 = 0;
          if (!experimentDeployment || !encodedExperimentDefinitionSignature)
          {
            goto LABEL_52;
          }

          v19 = [experimentDeployment isEqualToString:encodedExperimentDefinitionSignature];

          if ((v19 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        experimentDeployment = [(TRIClientExperimentArtifact *)self publicCertificate];
        publicCertificate = [(TRIClientExperimentArtifact *)v6 publicCertificate];
        experiment = publicCertificate;
        if (experimentDeployment == publicCertificate)
        {
        }

        else
        {
          v10 = 0;
          if (!experimentDeployment || !publicCertificate)
          {
            goto LABEL_52;
          }

          v21 = [experimentDeployment isEqualToData:publicCertificate];

          if ((v21 & 1) == 0)
          {
LABEL_36:
            v10 = 0;
LABEL_53:

            goto LABEL_54;
          }
        }

        experimentDeployment = [(TRIClientExperimentArtifact *)self experiment];
        experiment = [(TRIClientExperimentArtifact *)v6 experiment];
        v22 = [experimentDeployment isEqual:experiment];
        if ((v22 & 1) == 0)
        {
          experiment2 = [(TRIClientExperimentArtifact *)self experiment];
          if (experiment2)
          {
            v10 = 0;
LABEL_51:

LABEL_52:
            goto LABEL_53;
          }

          experiment3 = [(TRIClientExperimentArtifact *)v6 experiment];
          if (experiment3)
          {
            v10 = 0;
LABEL_49:

LABEL_50:
            experiment2 = 0;
            goto LABEL_51;
          }
        }

        experimentState = [(TRIClientExperimentArtifact *)self experimentState];
        if (experimentState != [(TRIClientExperimentArtifact *)v6 experimentState]|| (v24 = [(TRIClientExperimentArtifact *)self experimentType], v24 != [(TRIClientExperimentArtifact *)v6 experimentType]) || (v25 = [(TRIClientExperimentArtifact *)self experimentPriority], v25 != [(TRIClientExperimentArtifact *)v6 experimentPriority]) || (v26 = [(TRIClientExperimentArtifact *)self internalBuildOnly], v26 != [(TRIClientExperimentArtifact *)v6 internalBuildOnly]))
        {
LABEL_43:
          v10 = 0;
          if (v22)
          {
            goto LABEL_52;
          }

          goto LABEL_50;
        }

        deploymentDate = [(TRIClientExperimentArtifact *)self deploymentDate];
        deploymentDate2 = [(TRIClientExperimentArtifact *)v6 deploymentDate];
        v32 = deploymentDate2;
        if (deploymentDate == deploymentDate2)
        {
        }

        else
        {
          if (!deploymentDate || !deploymentDate2)
          {
            goto LABEL_66;
          }

          v33 = [deploymentDate isEqualToDate:deploymentDate2];

          if ((v33 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        deploymentDate = [(TRIClientExperimentArtifact *)self namespaces];
        namespaces = [(TRIClientExperimentArtifact *)v6 namespaces];
        v32 = namespaces;
        if (deploymentDate == namespaces)
        {

LABEL_69:
          namespaceCompatibilityVersions = [(TRIClientExperimentArtifact *)self namespaceCompatibilityVersions];
          namespaceCompatibilityVersions2 = [(TRIClientExperimentArtifact *)v6 namespaceCompatibilityVersions];
          v38 = namespaceCompatibilityVersions2;
          if (namespaceCompatibilityVersions == namespaceCompatibilityVersions2)
          {
            v10 = 1;
          }

          else
          {
            v10 = 0;
            if (namespaceCompatibilityVersions && namespaceCompatibilityVersions2)
            {
              v10 = [namespaceCompatibilityVersions isEqualToArray:namespaceCompatibilityVersions2];
            }
          }

          if (v22)
          {
            goto LABEL_52;
          }

LABEL_75:
          experiment3 = 0;
          goto LABEL_49;
        }

        if (deploymentDate && namespaces)
        {
          v35 = [deploymentDate isEqualToArray:namespaces];

          if ((v35 & 1) == 0)
          {
            goto LABEL_43;
          }

          goto LABEL_69;
        }

LABEL_66:

        v10 = 0;
        if (v22)
        {
          goto LABEL_52;
        }

        goto LABEL_75;
      }
    }

    v10 = 0;
  }

LABEL_54:

  return v10;
}

+ (id)allReferencedCKRecordKeys
{
  v12[15] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D738B8];
  v12[0] = *MEMORY[0x277D738E0];
  v12[1] = v2;
  v3 = *MEMORY[0x277D738D0];
  v12[2] = *MEMORY[0x277D738B0];
  v12[3] = v3;
  v4 = *MEMORY[0x277D73928];
  v12[4] = *MEMORY[0x277D738D8];
  v12[5] = v4;
  v5 = *MEMORY[0x277D738F8];
  v12[6] = *MEMORY[0x277D738F0];
  v12[7] = v5;
  v6 = *MEMORY[0x277D73908];
  v12[8] = *MEMORY[0x277D738E8];
  v12[9] = v6;
  v7 = *MEMORY[0x277D73910];
  v12[10] = *MEMORY[0x277D738C8];
  v12[11] = v7;
  v8 = *MEMORY[0x277D738A8];
  v12[12] = *MEMORY[0x277D73918];
  v12[13] = v8;
  v12[14] = *MEMORY[0x277D73900];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:15];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (BOOL)isCompatibleCounterfactual
{
  experiment = [(TRIClientExperimentArtifact *)self experiment];

  if (!experiment)
  {
    return 0;
  }

  experiment2 = [(TRIClientExperimentArtifact *)self experiment];
  hasCounterfactualLogging = [experiment2 hasCounterfactualLogging];

  if (!hasCounterfactualLogging)
  {
    return 0;
  }

  experiment3 = [(TRIClientExperimentArtifact *)self experiment];
  counterfactualLogging = [experiment3 counterfactualLogging];
  v8 = [counterfactualLogging version] == 1;

  return v8;
}

- (id)counterfactualsTreatmentsToFactorPackSetIdsWithActiveTreatmentId:(id)id
{
  idCopy = id;
  if ([(TRIClientExperimentArtifact *)self isCompatibleCounterfactual]&& idCopy)
  {
    v5 = objc_opt_new();
    experiment = [(TRIClientExperimentArtifact *)self experiment];
    factorPackSetMapping = [experiment factorPackSetMapping];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __113__TRIClientExperimentArtifact_Counterfactuals__counterfactualsTreatmentsToFactorPackSetIdsWithActiveTreatmentId___block_invoke;
    v10[3] = &unk_279DDF658;
    v8 = v5;
    v11 = v8;
    [factorPackSetMapping enumerateKeysAndObjectsUsingBlock:v10];

    [v8 removeObjectForKey:idCopy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  return v8;
}

void __113__TRIClientExperimentArtifact_Counterfactuals__counterfactualsTreatmentsToFactorPackSetIdsWithActiveTreatmentId___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TRIValidateFactorPackSetId();
  [*(a1 + 32) setObject:v4 forKeyedSubscript:v3];
}

- (id)factorPackSetIdForTreatmentId:(id)id
{
  idCopy = id;
  experiment = [(TRIClientExperimentArtifact *)self experiment];
  factorPackSetMapping = [experiment factorPackSetMapping];

  v7 = [factorPackSetMapping valueForKey:idCopy];

  return v7;
}

@end