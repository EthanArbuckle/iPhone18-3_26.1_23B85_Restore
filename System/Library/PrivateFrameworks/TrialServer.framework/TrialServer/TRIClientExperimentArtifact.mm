@interface TRIClientExperimentArtifact
+ (id)allReferencedCKRecordKeys;
+ (id)artifactWithExperiment:(id)a3;
+ (id)parseFromData:(id)a3 error:(id *)a4;
- (BOOL)hasNamespacesAvailableForExperimentWithDatabase:(id)a3;
- (BOOL)hasValidNamespacesWithError:(id *)a3;
- (BOOL)isCompatibleCounterfactual;
- (BOOL)isCompatibleWithNamespaceDescriptorProvider:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isValid;
- (BOOL)saveWithDatabase:(id)a3 paths:(id)a4;
- (TRIClientExperiment)experiment;
- (TRIClientExperimentArtifact)init;
- (TRIClientExperimentArtifact)initWithCoder:(id)a3;
- (TRIClientExperimentArtifact)initWithExperiment:(id)a3;
- (TRIExperimentDeployment)experimentDeployment;
- (id)asPersistedArtifact;
- (id)counterfactualsTreatmentsToFactorPackSetIdsWithActiveTreatmentId:(id)a3;
- (id)data;
- (id)factorPackSetIdForTreatmentId:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIClientExperimentArtifact

- (TRIExperimentDeployment)experimentDeployment
{
  v3 = [(TRIClientExperimentArtifact *)self experimentId];

  if (v3)
  {
    if ([(TRIClientExperimentArtifact *)self hasDeploymentId])
    {
      v4 = [(TRIClientExperimentArtifact *)self deploymentId];
    }

    else
    {
      v4 = 0xFFFFFFFFLL;
    }

    v6 = objc_alloc(MEMORY[0x277D736C0]);
    v7 = [(TRIClientExperimentArtifact *)self experimentId];
    v5 = [v6 initWithExperimentId:v7 deploymentId:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)artifactWithExperiment:(id)a3
{
  v3 = a3;
  v4 = [[TRIClientExperimentArtifact alloc] initWithExperiment:v3];

  return v4;
}

- (TRIClientExperimentArtifact)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"-init is not a valid initializer for the class TRIClientExperimentArtifact" userInfo:0];
  objc_exception_throw(v2);
}

- (TRIClientExperimentArtifact)initWithExperiment:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = TRIClientExperimentArtifact;
  v6 = [(TRIClientExperimentArtifact *)&v10 init];
  if (v6)
  {
    if (!v5)
    {
      v9 = [MEMORY[0x277CCA890] currentHandler];
      [v9 handleFailureInMethod:a2 object:v6 file:@"TRIClientExperimentArtifact.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"experiment"}];
    }

    v7 = [v5 experimentId];
    [(TRIClientExperimentArtifact *)v6 setExperimentId:v7];

    -[TRIClientExperimentArtifact setDeploymentId:](v6, "setDeploymentId:", [v5 deploymentId]);
  }

  return v6;
}

- (TRIClientExperiment)experiment
{
  *&v29[5] = *MEMORY[0x277D85DE8];
  v3 = [(TRIClientExperimentArtifact *)self encodedExperimentDefinition];

  if (v3)
  {
    v4 = MEMORY[0x277D73AD0];
    v5 = [(TRIClientExperimentArtifact *)self encodedExperimentDefinition];
    v25 = 0;
    v6 = [v4 parseFromData:v5 error:&v25];
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
          v22 = [(TRIClientExperimentArtifact *)self experimentId];
          *buf = 138412290;
          v27 = v22;
          _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "experiment definition contains no experiment id.  assume id %@", buf, 0xCu);
        }

        v9 = [(TRIClientExperimentArtifact *)self experimentId];
        [v6 setExperimentId:v9];
      }

      v10 = [(TRIClientExperimentArtifact *)self experimentId];
      v11 = [v6 experimentId];
      v12 = [v10 isEqualToString:v11];

      if (v12)
      {
        if ([v6 hasDeploymentId])
        {
          v13 = [v6 deploymentId];
        }

        else
        {
          v13 = -1;
        }

        if ([(TRIClientExperimentArtifact *)self deploymentId]== v13)
        {
          v15 = v6;
LABEL_26:

          goto LABEL_27;
        }

        v17 = TRILogCategory_Server();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v23 = [(TRIClientExperimentArtifact *)self experimentId];
          v24 = [(TRIClientExperimentArtifact *)self deploymentId];
          *buf = 138412802;
          v27 = v23;
          v28 = 1024;
          *v29 = v24;
          v29[2] = 1024;
          *&v29[3] = v13;
          _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "deployment id mismatch for experiment %@: %d != %d", buf, 0x18u);
        }
      }

      else
      {
        v17 = TRILogCategory_Server();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = [(TRIClientExperimentArtifact *)self experimentId];
          v19 = [v6 experimentId];
          *buf = 138412546;
          v27 = v18;
          v28 = 2112;
          *v29 = v19;
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
    v14 = [(TRIClientExperimentArtifact *)self experimentId];
    *buf = 138412546;
    v27 = v14;
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
  v3 = [(TRIClientExperimentArtifact *)self publicCertificate];
  if (v3)
  {
    v4 = [TRISignatureKey keyFromData:v3];
    if (v4)
    {
      v5 = [(TRIClientExperimentArtifact *)self encodedExperimentDefinitionSignature];
      v6 = [(TRIClientExperimentArtifact *)self encodedExperimentDefinition];
      v7 = [v4 validateBase64Signature:v5 data:v6];
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

- (BOOL)hasValidNamespacesWithError:(id *)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = [(TRIClientExperimentArtifact *)self namespaces];
  if (!v5 || (v6 = v5, -[TRIClientExperimentArtifact namespaces](self, "namespaces"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, v6, !v8))
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v29 = [(TRIClientExperimentArtifact *)self experimentId];
      *buf = 138412290;
      v36 = v29;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "missing namespaces in definition of experiment %@", buf, 0xCu);
    }

    if (!a3)
    {
      goto LABEL_14;
    }

    v15 = MEMORY[0x277CCACA8];
    v16 = [(TRIClientExperimentArtifact *)self experimentId];
    v17 = [v15 stringWithFormat:@"missing namespaces in definition of experiment %@", v16];

    v18 = objc_alloc(MEMORY[0x277CCA9B8]);
    v33 = *MEMORY[0x277CCA450];
    v34 = v17;
    v19 = MEMORY[0x277CBEAC0];
    v20 = &v34;
    v21 = &v33;
    goto LABEL_13;
  }

  v9 = [(TRIClientExperimentArtifact *)self namespaces];
  v10 = [v9 count];
  v11 = [(TRIClientExperimentArtifact *)self namespaceCompatibilityVersions];
  v12 = [v11 count];

  if (v10 != v12)
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v30 = [(TRIClientExperimentArtifact *)self experimentId];
      *buf = 138412290;
      v36 = v30;
      _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "mismatch in namespaces and namespace compatibility versions in definition of experiment %@", buf, 0xCu);
    }

    if (!a3)
    {
      goto LABEL_14;
    }

    v23 = MEMORY[0x277CCACA8];
    v24 = [(TRIClientExperimentArtifact *)self experimentId];
    v17 = [v23 stringWithFormat:@"mismatch in namespaces and namespace compatibility versions in definition of experiment %@", v24];

    v18 = objc_alloc(MEMORY[0x277CCA9B8]);
    v31 = *MEMORY[0x277CCA450];
    v32 = v17;
    v19 = MEMORY[0x277CBEAC0];
    v20 = &v32;
    v21 = &v31;
LABEL_13:
    v25 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:1];
    v26 = [v18 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v25];
    v27 = *a3;
    *a3 = v26;

LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  result = 1;
LABEL_15:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)isCompatibleWithNamespaceDescriptorProvider:(id)a3 error:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  if ([(TRIClientExperimentArtifact *)self experimentType]== 1)
  {
    if ([(TRIClientExperimentArtifact *)self hasValidNamespacesWithError:a4])
    {
      if ([(TRIClientExperimentArtifact *)self deploymentEnvironment])
      {
        v7 = TRILogCategory_Server();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [(TRIClientExperimentArtifact *)self experimentDeployment];
          v9 = [v8 shortDesc];
          v10 = TRIDeploymentEnvironment_EnumDescriptor();
          v11 = [v10 enumNameForValue:{-[TRIClientExperimentArtifact deploymentEnvironment](self, "deploymentEnvironment")}];
          *buf = 138412546;
          v25 = v9;
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
        v15 = [(TRIClientExperimentArtifact *)self namespaces];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __81__TRIClientExperimentArtifact_isCompatibleWithNamespaceDescriptorProvider_error___block_invoke;
        v19[3] = &unk_279DDF5E0;
        v19[4] = self;
        v20 = v6;
        v21 = v13;
        v22 = v14;
        v23 = a4;
        v16 = v14;
        v7 = v13;
        [v15 enumerateObjectsUsingBlock:v19];

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

- (BOOL)saveWithDatabase:(id)a3 paths:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(TRIClientExperimentArtifact *)self experiment];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 experimentId];
    if ([v7 hasDeploymentId])
    {
      v9 = [v7 deploymentId];
      if (v8)
      {
        if (v9 != -1)
        {
          v10 = [objc_alloc(MEMORY[0x277D736C0]) initWithExperimentId:v8 deploymentId:v9];
          v11 = objc_opt_new();
          v12 = [(TRIClientExperimentArtifact *)self namespaces];
          if (v12)
          {
            v13 = v12;
            v14 = [(TRIClientExperimentArtifact *)self namespaceCompatibilityVersions];
            if (v14)
            {
              v15 = v14;
              [(TRIClientExperimentArtifact *)self namespaces];
              v16 = v32 = v11;
              v31 = [v16 count];
              v17 = [(TRIClientExperimentArtifact *)self namespaceCompatibilityVersions];
              v18 = [v17 count];

              v11 = v32;
              if (v31 == v18)
              {
                v19 = [(TRIClientExperimentArtifact *)self namespaces];
                v33[0] = MEMORY[0x277D85DD0];
                v33[1] = 3221225472;
                v33[2] = __54__TRIClientExperimentArtifact_saveWithDatabase_paths___block_invoke;
                v33[3] = &unk_279DDF608;
                v33[4] = self;
                v34 = v32;
                [v19 enumerateObjectsUsingBlock:v33];
              }
            }

            else
            {
            }
          }

          if ([v7 hasStartDate])
          {
            v26 = [v7 startDate];
            v27 = [v26 date];
          }

          else
          {
            v27 = 0;
          }

          if ([v7 hasEndDate])
          {
            v28 = [v7 endDate];
            v29 = [v28 date];
          }

          else
          {
            v29 = 0;
          }

          v20 = [v5 addExperimentWithExperimentDeployment:v10 environment:-[TRIClientExperimentArtifact deploymentEnvironment](self type:"deploymentEnvironment") status:objc_msgSend(v7 startDate:"type") endDate:0 namespaces:v27 artifact:{v29, v11, self}] != 0;

          goto LABEL_17;
        }

LABEL_13:
        v10 = TRILogCategory_Server();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v36 = v8;
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

    else if (v8)
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

  v8 = TRILogCategory_Server();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v30 = [(TRIClientExperimentArtifact *)self experimentId];
    *buf = 138412290;
    v36 = v30;
    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "no client experiment found on artifact for experiment id %@", buf, 0xCu);
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

- (BOOL)hasNamespacesAvailableForExperimentWithDatabase:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"TRIClientExperimentArtifact.m" lineNumber:261 description:{@"Invalid parameter not satisfying: %@", @"database"}];
  }

  v6 = [(TRIClientExperimentArtifact *)self experiment];
  v7 = [(TRIClientExperimentArtifact *)self experimentDeployment];
  v8 = v7;
  if (v6 && v7 && ([v7 hasDeploymentId] & 1) != 0)
  {
    if ([v6 experimentType] == 1)
    {
      v9 = 1;
    }

    else
    {
      if ([v6 hasStartDate])
      {
        v12 = [v6 startDate];
        v13 = [v12 date];
      }

      else
      {
        v13 = 0;
      }

      if ([v6 hasEndDate])
      {
        v14 = [v6 endDate];
        v15 = [v14 date];
      }

      else
      {
        v15 = 0;
      }

      v16 = [(TRIClientExperimentArtifact *)self namespaces];
      v17 = v16;
      if (v16)
      {
        v18 = v16;
      }

      else
      {
        v18 = MEMORY[0x277CBEBF8];
      }

      v9 = [v5 namespacesAreAvailableForExperiment:v8 startDate:v13 endDate:v15 namespaces:v18];
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
  v4 = [(TRIClientExperimentArtifact *)self experimentId];
  [v3 setExperimentId:v4];

  if (([(TRIClientExperimentArtifact *)self deploymentId]& 0x80000000) == 0)
  {
    [v3 setDeploymentId:{-[TRIClientExperimentArtifact deploymentId](self, "deploymentId")}];
  }

  [v3 setCloudKitContainer:{-[TRIClientExperimentArtifact cloudKitContainer](self, "cloudKitContainer")}];
  v5 = [(TRIClientExperimentArtifact *)self teamId];

  if (v5)
  {
    v6 = [(TRIClientExperimentArtifact *)self teamId];
    [v3 setTeamId:v6];
  }

  v7 = [(TRIClientExperimentArtifact *)self encodedExperimentDefinition];

  if (v7)
  {
    v8 = [(TRIClientExperimentArtifact *)self encodedExperimentDefinition];
    [v3 setEncodedExperimentDefinition:v8];
  }

  v9 = [(TRIClientExperimentArtifact *)self encodedExperimentDefinitionSignature];

  if (v9)
  {
    v10 = [(TRIClientExperimentArtifact *)self encodedExperimentDefinitionSignature];
    [v3 setEncodedExperimentDefinitionSignature:v10];
  }

  v11 = [(TRIClientExperimentArtifact *)self publicCertificate];

  if (v11)
  {
    v12 = [(TRIClientExperimentArtifact *)self publicCertificate];
    [v3 setPublicCertificate:v12];
  }

  [v3 setStatus:{-[TRIClientExperimentArtifact experimentState](self, "experimentState")}];
  [v3 setType:{-[TRIClientExperimentArtifact experimentType](self, "experimentType")}];
  [v3 setPriority:{-[TRIClientExperimentArtifact experimentPriority](self, "experimentPriority")}];
  [v3 setInternalBuildOnly:{-[TRIClientExperimentArtifact internalBuildOnly](self, "internalBuildOnly")}];
  v13 = [(TRIClientExperimentArtifact *)self deploymentDate];

  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x277D73B88]);
    v15 = [(TRIClientExperimentArtifact *)self deploymentDate];
    v16 = [v14 initWithDate:v15];
    [v3 setDeploymentDate:v16];
  }

  v17 = [(TRIClientExperimentArtifact *)self namespaces];

  if (v17)
  {
    v18 = [(TRIClientExperimentArtifact *)self namespaces];
    v19 = [v18 mutableCopy];
    [v3 setNamespacesArray:v19];
  }

  v20 = [(TRIClientExperimentArtifact *)self namespaceCompatibilityVersions];

  if (v20)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = [(TRIClientExperimentArtifact *)self namespaceCompatibilityVersions];
    v22 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v30 + 1) + 8 * i);
          v27 = [v3 namespaceCompatibilityVersionsArray];
          [v27 addValue:{objc_msgSend(v26, "unsignedIntValue")}];
        }

        v23 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
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
  v5 = [(TRIClientExperimentArtifact *)self asPersistedArtifact];
  v6 = [v5 data];

  if (!v6)
  {
    v8 = [MEMORY[0x277CCA890] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"TRIClientExperimentArtifact.m" lineNumber:345 description:{@"Invalid parameter not satisfying: %@", @"result"}];
  }

  objc_autoreleasePoolPop(v4);

  return v6;
}

+ (id)parseFromData:(id)a3 error:(id *)a4
{
  v36[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v34 = 0;
  v7 = [(TRIPBMessage *)TRIPersistedExperimentArtifact parseFromData:v5 error:&v34];
  v8 = v34;
  v9 = v8;
  if (v7)
  {
    if ([v7 hasExperimentId])
    {
      v10 = objc_alloc(MEMORY[0x277D736C0]);
      v11 = [v7 experimentId];
      if ([v7 hasDeploymentId])
      {
        v12 = [v7 deploymentId];
      }

      else
      {
        v12 = 0xFFFFFFFFLL;
      }

      v15 = [v10 initWithExperimentId:v11 deploymentId:v12];

      v14 = [TRIClientExperimentArtifact artifactWithExperiment:v15];
      [v14 setCloudKitContainer:{objc_msgSend(v7, "cloudKitContainer")}];
      if ([v7 hasTeamId])
      {
        v19 = [v7 teamId];
        [v14 setTeamId:v19];
      }

      else
      {
        [v14 setTeamId:0];
      }

      if ([v7 hasEncodedExperimentDefinition])
      {
        v20 = [v7 encodedExperimentDefinition];
        [v14 setEncodedExperimentDefinition:v20];
      }

      else
      {
        [v14 setEncodedExperimentDefinition:0];
      }

      if ([v7 hasEncodedExperimentDefinitionSignature])
      {
        v21 = [v7 encodedExperimentDefinitionSignature];
        [v14 setEncodedExperimentDefinitionSignature:v21];
      }

      else
      {
        [v14 setEncodedExperimentDefinitionSignature:0];
      }

      if ([v7 hasPublicCertificate])
      {
        v22 = [v7 publicCertificate];
        [v14 setPublicCertificate:v22];
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
        v23 = [v7 internalBuildOnly];
      }

      else
      {
        v23 = 0;
      }

      [v14 setInternalBuildOnly:v23];
      if ([v7 hasDeploymentDate])
      {
        v24 = [v7 deploymentDate];
        v25 = [v24 date];
        [v14 setDeploymentDate:v25];
      }

      else
      {
        [v14 setDeploymentDate:0];
      }

      if ([v7 namespacesArray_Count])
      {
        v26 = [v7 namespacesArray];
        [v14 setNamespaces:v26];
      }

      else
      {
        [v14 setNamespaces:0];
      }

      [v14 setDeploymentEnvironment:{objc_msgSend(v7, "deploymentEnvironment")}];
      if ([v7 namespaceCompatibilityVersionsArray_Count])
      {
        v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "namespaceCompatibilityVersionsArray_Count")}];
        v28 = [v7 namespaceCompatibilityVersionsArray];
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __51__TRIClientExperimentArtifact_parseFromData_error___block_invoke;
        v32[3] = &unk_279DDF630;
        v33 = v27;
        v29 = v27;
        [v28 enumerateValuesWithBlock:v32];

        [v14 setNamespaceCompatibilityVersions:v29];
      }

      goto LABEL_34;
    }

    if (a4)
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v35 = *MEMORY[0x277CCA450];
      v36[0] = @"TRIPersistedExperimentArtifact has nil experimentId";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v17 = [v16 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v15];
      v18 = *a4;
      *a4 = v17;

      v14 = 0;
      goto LABEL_34;
    }

LABEL_9:
    v14 = 0;
    goto LABEL_35;
  }

  if (!a4)
  {
    goto LABEL_9;
  }

  v13 = v8;
  v14 = 0;
  v15 = *a4;
  *a4 = v13;
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

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIClientExperimentArtifact.m" lineNumber:410 description:@"Do not use NSSecureCoding to persist TRIClientExperimentArtifact to disk. Use protobuf serialization."];
  }

  v5 = [(TRIClientExperimentArtifact *)self data];
  [v7 encodeObject:v5 forKey:@"data"];
}

- (TRIClientExperimentArtifact)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TRIClientExperimentArtifact;
  v5 = [(TRIClientExperimentArtifact *)&v12 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
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
        [v4 failWithError:v11];
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
  v2 = [(TRIClientExperimentArtifact *)self experimentDeployment];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(TRIClientExperimentArtifact *)self experimentDeployment];
        v8 = [(TRIClientExperimentArtifact *)v6 experimentDeployment];
        v9 = v8;
        if (v7 == v8)
        {
        }

        else
        {
          v10 = 0;
          if (!v7 || !v8)
          {
            goto LABEL_52;
          }

          v11 = [v7 isEqualToDeployment:v8];

          if ((v11 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        v12 = [(TRIClientExperimentArtifact *)self deploymentEnvironment];
        if (v12 != [(TRIClientExperimentArtifact *)v6 deploymentEnvironment])
        {
          goto LABEL_36;
        }

        v13 = [(TRIClientExperimentArtifact *)self cloudKitContainer];
        if (v13 != [(TRIClientExperimentArtifact *)v6 cloudKitContainer])
        {
          goto LABEL_36;
        }

        v7 = [(TRIClientExperimentArtifact *)self teamId];
        v14 = [(TRIClientExperimentArtifact *)v6 teamId];
        v9 = v14;
        if (v7 == v14)
        {
        }

        else
        {
          v10 = 0;
          if (!v7 || !v14)
          {
            goto LABEL_52;
          }

          v15 = [v7 isEqualToString:v14];

          if ((v15 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        v7 = [(TRIClientExperimentArtifact *)self encodedExperimentDefinition];
        v16 = [(TRIClientExperimentArtifact *)v6 encodedExperimentDefinition];
        v9 = v16;
        if (v7 == v16)
        {
        }

        else
        {
          v10 = 0;
          if (!v7 || !v16)
          {
            goto LABEL_52;
          }

          v17 = [v7 isEqualToData:v16];

          if ((v17 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        v7 = [(TRIClientExperimentArtifact *)self encodedExperimentDefinitionSignature];
        v18 = [(TRIClientExperimentArtifact *)v6 encodedExperimentDefinitionSignature];
        v9 = v18;
        if (v7 == v18)
        {
        }

        else
        {
          v10 = 0;
          if (!v7 || !v18)
          {
            goto LABEL_52;
          }

          v19 = [v7 isEqualToString:v18];

          if ((v19 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        v7 = [(TRIClientExperimentArtifact *)self publicCertificate];
        v20 = [(TRIClientExperimentArtifact *)v6 publicCertificate];
        v9 = v20;
        if (v7 == v20)
        {
        }

        else
        {
          v10 = 0;
          if (!v7 || !v20)
          {
            goto LABEL_52;
          }

          v21 = [v7 isEqualToData:v20];

          if ((v21 & 1) == 0)
          {
LABEL_36:
            v10 = 0;
LABEL_53:

            goto LABEL_54;
          }
        }

        v7 = [(TRIClientExperimentArtifact *)self experiment];
        v9 = [(TRIClientExperimentArtifact *)v6 experiment];
        v22 = [v7 isEqual:v9];
        if ((v22 & 1) == 0)
        {
          v27 = [(TRIClientExperimentArtifact *)self experiment];
          if (v27)
          {
            v10 = 0;
LABEL_51:

LABEL_52:
            goto LABEL_53;
          }

          v28 = [(TRIClientExperimentArtifact *)v6 experiment];
          if (v28)
          {
            v10 = 0;
LABEL_49:

LABEL_50:
            v27 = 0;
            goto LABEL_51;
          }
        }

        v23 = [(TRIClientExperimentArtifact *)self experimentState];
        if (v23 != [(TRIClientExperimentArtifact *)v6 experimentState]|| (v24 = [(TRIClientExperimentArtifact *)self experimentType], v24 != [(TRIClientExperimentArtifact *)v6 experimentType]) || (v25 = [(TRIClientExperimentArtifact *)self experimentPriority], v25 != [(TRIClientExperimentArtifact *)v6 experimentPriority]) || (v26 = [(TRIClientExperimentArtifact *)self internalBuildOnly], v26 != [(TRIClientExperimentArtifact *)v6 internalBuildOnly]))
        {
LABEL_43:
          v10 = 0;
          if (v22)
          {
            goto LABEL_52;
          }

          goto LABEL_50;
        }

        v30 = [(TRIClientExperimentArtifact *)self deploymentDate];
        v31 = [(TRIClientExperimentArtifact *)v6 deploymentDate];
        v32 = v31;
        if (v30 == v31)
        {
        }

        else
        {
          if (!v30 || !v31)
          {
            goto LABEL_66;
          }

          v33 = [v30 isEqualToDate:v31];

          if ((v33 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        v30 = [(TRIClientExperimentArtifact *)self namespaces];
        v34 = [(TRIClientExperimentArtifact *)v6 namespaces];
        v32 = v34;
        if (v30 == v34)
        {

LABEL_69:
          v36 = [(TRIClientExperimentArtifact *)self namespaceCompatibilityVersions];
          v37 = [(TRIClientExperimentArtifact *)v6 namespaceCompatibilityVersions];
          v38 = v37;
          if (v36 == v37)
          {
            v10 = 1;
          }

          else
          {
            v10 = 0;
            if (v36 && v37)
            {
              v10 = [v36 isEqualToArray:v37];
            }
          }

          if (v22)
          {
            goto LABEL_52;
          }

LABEL_75:
          v28 = 0;
          goto LABEL_49;
        }

        if (v30 && v34)
        {
          v35 = [v30 isEqualToArray:v34];

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
  v3 = [(TRIClientExperimentArtifact *)self experiment];

  if (!v3)
  {
    return 0;
  }

  v4 = [(TRIClientExperimentArtifact *)self experiment];
  v5 = [v4 hasCounterfactualLogging];

  if (!v5)
  {
    return 0;
  }

  v6 = [(TRIClientExperimentArtifact *)self experiment];
  v7 = [v6 counterfactualLogging];
  v8 = [v7 version] == 1;

  return v8;
}

- (id)counterfactualsTreatmentsToFactorPackSetIdsWithActiveTreatmentId:(id)a3
{
  v4 = a3;
  if ([(TRIClientExperimentArtifact *)self isCompatibleCounterfactual]&& v4)
  {
    v5 = objc_opt_new();
    v6 = [(TRIClientExperimentArtifact *)self experiment];
    v7 = [v6 factorPackSetMapping];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __113__TRIClientExperimentArtifact_Counterfactuals__counterfactualsTreatmentsToFactorPackSetIdsWithActiveTreatmentId___block_invoke;
    v10[3] = &unk_279DDF658;
    v8 = v5;
    v11 = v8;
    [v7 enumerateKeysAndObjectsUsingBlock:v10];

    [v8 removeObjectForKey:v4];
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

- (id)factorPackSetIdForTreatmentId:(id)a3
{
  v4 = a3;
  v5 = [(TRIClientExperimentArtifact *)self experiment];
  v6 = [v5 factorPackSetMapping];

  v7 = [v6 valueForKey:v4];

  return v7;
}

@end