@interface TRIRolloutAllocationStatus
- (TRIRolloutAllocationStatus)initWithCoder:(id)a3;
- (TRIRolloutAllocationStatus)initWithRolloutId:(id)a3 deploymentId:(int)a4 rampId:(id)a5 factorPackIds:(id)a6;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIRolloutAllocationStatus

- (TRIRolloutAllocationStatus)initWithRolloutId:(id)a3 deploymentId:(int)a4 rampId:(id)a5 factorPackIds:(id)a6
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  if (v12)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_8:
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"TRIAllocationStatusProvider.m" lineNumber:943 description:{@"Invalid parameter not satisfying: %@", @"deploymentId"}];

    if (v14)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"TRIAllocationStatusProvider.m" lineNumber:942 description:{@"Invalid parameter not satisfying: %@", @"rolloutId"}];

  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v14)
  {
    goto LABEL_4;
  }

LABEL_9:
  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"TRIAllocationStatusProvider.m" lineNumber:944 description:{@"Invalid parameter not satisfying: %@", @"factorPackIds"}];

LABEL_4:
  v21.receiver = self;
  v21.super_class = TRIRolloutAllocationStatus;
  v15 = [(TRIRolloutAllocationStatus *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_rolloutId, a3);
    v16->_deploymentId = a4;
    objc_storeStrong(&v16->_rampId, a5);
    objc_storeStrong(&v16->_factorPackIds, a6);
  }

  return v16;
}

- (TRIRolloutAllocationStatus)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (v5)
  {
    v21 = 0;
    v6 = [(TRIPBMessage *)TRIPersistedRolloutAllocationStatus parseFromData:v5 error:&v21];
    v7 = v21;
    if (v6)
    {
      if ([v6 hasRolloutId] && objc_msgSend(v6, "hasDeploymentId"))
      {
        v15 = 0;
        v16 = &v15;
        v17 = 0x3032000000;
        v18 = __Block_byref_object_copy__7;
        v19 = __Block_byref_object_dispose__7;
        v20 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v6, "namespaceFactorPackArray_Count")}];
        v8 = [v6 namespaceFactorPackArray];
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __44__TRIRolloutAllocationStatus_initWithCoder___block_invoke;
        v14[3] = &unk_27885EFB0;
        v14[4] = &v15;
        [v8 enumerateObjectsUsingBlock:v14];

        if (v16[5])
        {
          v9 = [v6 rolloutId];
          v10 = [v6 deploymentId];
          v11 = [v6 rampId];
          self = [(TRIRolloutAllocationStatus *)self initWithRolloutId:v9 deploymentId:v10 rampId:v11 factorPackIds:v16[5]];

          v12 = self;
        }

        else
        {
          v12 = 0;
        }

        _Block_object_dispose(&v15, 8);

        goto LABEL_10;
      }
    }

    else
    {
      [v4 failWithError:v7];
    }

    v12 = 0;
LABEL_10:

    goto LABEL_11;
  }

  v12 = 0;
LABEL_11:

  return v12;
}

void __44__TRIRolloutAllocationStatus_initWithCoder___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v11 = a2;
  if ([v11 hasNamespace_p] && (objc_msgSend(v11, "hasFactorPack") & 1) != 0)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    v7 = [v11 factorPack];
    v8 = [v11 namespace_p];
    [v6 setObject:v7 forKey:v8];
  }

  else
  {
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    *a4 = 1;
  }
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setRolloutId:self->_rolloutId];
  [v6 setDeploymentId:self->_deploymentId];
  [v6 setRampId:self->_rampId];
  factorPackIds = self->_factorPackIds;
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __46__TRIRolloutAllocationStatus_encodeWithCoder___block_invoke;
  v14 = &unk_27885EA88;
  v8 = v6;
  v15 = v8;
  [(NSDictionary *)factorPackIds enumerateKeysAndObjectsUsingBlock:&v11];
  v9 = [v8 data];
  if (!v9)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"TRIAllocationStatusProvider.m" lineNumber:1012 description:{@"Invalid parameter not satisfying: %@", @"data", v11, v12, v13, v14}];
  }

  [v5 encodeObject:v9 forKey:@"data"];
}

void __46__TRIRolloutAllocationStatus_encodeWithCoder___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = objc_opt_new();
  [v8 setNamespace_p:v6];

  [v8 setFactorPack:v5];
  v7 = [*(a1 + 32) namespaceFactorPackArray];
  [v7 addObject:v8];
}

@end