@interface RBProcessState
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToProcessStateIgnoringIdentity:(id)a3;
- (BOOL)isEqualToProcessStateIgnoringInheritances:(id)a3;
- (RBInheritanceCollection)inheritances;
- (RBProcessState)init;
- (RBProcessState)initWithIdentity:(id)a3;
- (id)_initWithProcessState:(id *)a1;
- (id)clientStateForProcess:(id)a3;
- (id)debugDescription;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (uint64_t)_isEqualToProcessStateIgnoringIdentityAndInheritances:(uint64_t)a1;
- (unint64_t)effectiveMaxCPUDuration;
- (unint64_t)effectiveMaxCPUPercentage;
- (unint64_t)effectiveMaxCPUUsageViolationPolicy;
- (unint64_t)effectiveMinCPUDuration;
- (unint64_t)effectiveMinCPUPercentage;
@end

@implementation RBProcessState

- (RBInheritanceCollection)inheritances
{
  v2 = [(RBInheritanceCollection *)self->_inheritances copy];

  return v2;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  role = self->_role;
  v6 = NSStringFromRBSRole();
  v7 = [v3 initWithFormat:@"<%@| role:%@>", v4, v6];

  return v7;
}

- (unint64_t)effectiveMaxCPUPercentage
{
  maxCPULimitsByRole = self->_maxCPULimitsByRole;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_role];
  v4 = [(NSMutableDictionary *)maxCPULimitsByRole objectForKeyedSubscript:v3];
  v5 = [v4 percentage];

  return v5;
}

- (unint64_t)effectiveMaxCPUDuration
{
  maxCPULimitsByRole = self->_maxCPULimitsByRole;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_role];
  v4 = [(NSMutableDictionary *)maxCPULimitsByRole objectForKeyedSubscript:v3];
  v5 = [v4 duration];

  return v5;
}

- (unint64_t)effectiveMinCPUPercentage
{
  minCPULimitsByRole = self->_minCPULimitsByRole;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_role];
  v4 = [(NSMutableDictionary *)minCPULimitsByRole objectForKeyedSubscript:v3];
  v5 = [v4 percentage];

  return v5;
}

- (unint64_t)effectiveMinCPUDuration
{
  minCPULimitsByRole = self->_minCPULimitsByRole;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_role];
  v4 = [(NSMutableDictionary *)minCPULimitsByRole objectForKeyedSubscript:v3];
  v5 = [v4 duration];

  return v5;
}

- (unint64_t)effectiveMaxCPUUsageViolationPolicy
{
  maxCPULimitsByRole = self->_maxCPULimitsByRole;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_role];
  v4 = [(NSMutableDictionary *)maxCPULimitsByRole objectForKeyedSubscript:v3];
  v5 = [v4 violationPolicy];

  return v5;
}

- (RBProcessState)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBProcessState.m" lineNumber:239 description:@"-init is not allowed on RBProcessState"];

  return 0;
}

- (RBProcessState)initWithIdentity:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(RBProcessState *)a2 initWithIdentity:?];
  }

  v10.receiver = self;
  v10.super_class = RBProcessState;
  v6 = [(RBProcessState *)&v10 init];
  if (v6)
  {
    v7 = [v5 copy];
    identity = v6->_identity;
    v6->_identity = v7;

    *&v6->_role = 257;
    v6->_terminationResistance = 20;
    objc_storeStrong(&v6->_memoryLimitCategory, *MEMORY[0x277D47078]);
    v6->_memoryLimitStrength = 0;
    v6->_memoryLimit = 0;
    v6->_coalitionLevel = 0;
  }

  return v6;
}

- (uint64_t)_isEqualToProcessStateIgnoringIdentityAndInheritances:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    if (*(a1 + 120) != *(v3 + 60) || *(a1 + 89) != *(v3 + 89) || *(a1 + 96) != v3[12] || *(a1 + 104) != v3[13] || *(a1 + 112) != *(v3 + 112) || *(a1 + 122) != *(v3 + 122) || *(a1 + 123) != *(v3 + 123) || *(a1 + 128) != v3[16] || *(a1 + 88) != *(v3 + 88) || *(a1 + 80) != v3[10])
    {
      goto LABEL_43;
    }

    v6 = *(a1 + 24);
    v7 = v4[3];
    if (v6 != v7)
    {
      v5 = 0;
      if (!v6 || !v7)
      {
        goto LABEL_44;
      }

      v8 = *(a1 + 24);
      Count = CFDictionaryGetCount(v6);
      if (Count != CFDictionaryGetCount(v7) || ![v8 isEqualToDictionary:v7])
      {
        goto LABEL_43;
      }
    }

    v10 = *(a1 + 32);
    v11 = v4[4];
    if (v10 != v11)
    {
      v5 = 0;
      if (!v10 || !v11)
      {
        goto LABEL_44;
      }

      v12 = v4[4];
      v13 = CFDictionaryGetCount(*(a1 + 32));
      if (v13 != CFDictionaryGetCount(v12) || ![v10 isEqualToDictionary:v12])
      {
        goto LABEL_43;
      }
    }

    v14 = *(a1 + 48);
    v15 = v4[6];
    if (v14 != v15)
    {
      v5 = 0;
      if (!v14 || !v15)
      {
        goto LABEL_44;
      }

      v16 = CFSetGetCount(*(a1 + 48));
      if (v16 != CFSetGetCount(v15) || ![(__CFSet *)v14 isEqualToSet:v15])
      {
        goto LABEL_43;
      }
    }

    v17 = *(a1 + 56);
    v18 = v4[7];
    if (v17 != v18)
    {
      v5 = 0;
      if (!v17 || !v18)
      {
        goto LABEL_44;
      }

      v19 = CFSetGetCount(*(a1 + 56));
      if (v19 != CFSetGetCount(v18) || ![(__CFSet *)v17 isEqualToSet:v18])
      {
        goto LABEL_43;
      }
    }

    v20 = *(a1 + 64);
    v21 = v4[8];
    if (v20 != v21)
    {
      v5 = 0;
      if (!v20 || !v21)
      {
        goto LABEL_44;
      }

      v22 = CFSetGetCount(*(a1 + 64));
      if (v22 != CFSetGetCount(v21) || ![(__CFSet *)v20 isEqualToSet:v21])
      {
        goto LABEL_43;
      }
    }

    v23 = *(a1 + 72);
    v24 = v4[9];
    if (v23 == v24)
    {
      v5 = 1;
      goto LABEL_44;
    }

    v5 = 0;
    if (v23 && v24)
    {
      v25 = CFSetGetCount(v23);
      if (v25 == CFSetGetCount(v24))
      {
        v5 = [(__CFSet *)v23 isEqualToSet:v24];
        goto LABEL_44;
      }

LABEL_43:
      v5 = 0;
    }
  }

LABEL_44:

  return v5;
}

- (BOOL)isEqualToProcessStateIgnoringIdentity:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_7;
  }

  if (![(RBProcessState *)self _isEqualToProcessStateIgnoringIdentityAndInheritances:v4])
  {
    v7 = 0;
    goto LABEL_9;
  }

  inheritances = self->_inheritances;
  v6 = v4->_inheritances;
  if (inheritances == v6)
  {
LABEL_7:
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (inheritances && v6)
    {
      v7 = [(RBInheritanceCollection *)inheritances isEqual:?];
    }
  }

LABEL_9:

  return v7;
}

- (BOOL)isEqualToProcessStateIgnoringInheritances:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else if ([(RBProcessState *)self _isEqualToProcessStateIgnoringIdentityAndInheritances:v4])
  {
    v5 = [(RBSProcessIdentity *)self->_identity isEqualToIdentity:v4->_identity];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)clientStateForProcess:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v6 = [objc_alloc(MEMORY[0x277D46F48]) initWithIdentity:self->_identity];
    goto LABEL_8;
  }

  v6 = [v4 handle];
  if ([v5 isTerminating])
  {
LABEL_8:
    v7 = 1;
    goto LABEL_9;
  }

  if ([v5 isReported])
  {
    if ([(RBProcessState *)self preventSuspend])
    {
      v7 = 4;
    }

    else
    {
      v7 = 3;
    }
  }

  else
  {
    v7 = 2;
  }

LABEL_9:
  v24 = v6;
  v8 = [MEMORY[0x277D46FA8] stateWithProcess:v6];
  v9 = [(RBProcessState *)self isBeingDebugged];
  v10 = [(RBProcessState *)self inheritances];
  v11 = [v10 allNamespaces];

  if (v5 && [v5 isReported])
  {
    terminationResistance = self->_terminationResistance;
  }

  else
  {
    terminationResistance = 20;
  }

  [v8 setTerminationResistance:terminationResistance];
  tags = self->_tags;
  legacyAssertions = self->_legacyAssertions;
  primitiveAssertions = self->_primitiveAssertions;
  endowmentInfos = self->_endowmentInfos;
  role = self->_role;
  v18 = endowmentInfos;
  v19 = primitiveAssertions;
  v20 = legacyAssertions;
  v21 = tags;
  if (v9)
  {
    v22 = 3;
  }

  else
  {
    v22 = 1;
  }

  [v8 setDebugState:v22];
  [v8 setTaskState:v7];
  [v8 setEndowmentNamespaces:v11];
  [v8 setTags:v21];
  [v8 setLegacyAssertions:v20];
  [v8 setPrimitiveAssertions:v19];
  [v8 setEndowmentInfos:v18];

  [v8 setCpuRole:role];

  return v8;
}

- (id)debugDescription
{
  v3 = [(NSMutableSet *)self->_tags allObjects];
  v4 = [v3 count];

  v5 = [(NSMutableSet *)self->_legacyAssertions allObjects];
  v6 = [v5 count];

  v7 = [(NSMutableSet *)self->_primitiveAssertions allObjects];
  v8 = [v7 count];

  v9 = [(NSMutableSet *)self->_endowmentInfos allObjects];
  v10 = [v9 count];

  v52 = objc_alloc(MEMORY[0x277CCACA8]);
  v55 = [objc_opt_class() description];
  v11 = [(RBSProcessIdentity *)self->_identity shortDescription];
  role = self->_role;
  v13 = NSStringFromRBSRole();
  gpuRole = self->_gpuRole;
  v60 = NSStringFromRBSGPURole();
  explicitJetsamBand_low = LODWORD(self->_explicitJetsamBand);
  coalitionLevel = self->_coalitionLevel;
  memoryLimitCategory = self->_memoryLimitCategory;
  memoryLimitStrength = self->_memoryLimitStrength;
  v59 = NSStringFromRBSMemoryLimitStrength();
  flags = self->_flags;
  if (self->_guaranteedRunning)
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  legacyFinishTaskReason = self->_legacyFinishTaskReason;
  v47 = v16;
  inheritances = self->_inheritances;
  v18 = @" inheritances:";
  if (!inheritances)
  {
    v18 = &stru_287507640;
    inheritances = &stru_287507640;
  }

  v44 = inheritances;
  v45 = v18;
  v19 = @" attributes:[\n\t";
  if (!v4)
  {
    v19 = &stru_287507640;
  }

  v43 = v19;
  v57 = v4;
  v53 = v13;
  if (v4)
  {
    v41 = [(NSMutableSet *)self->_tags allObjects];
    v58 = [v41 componentsJoinedByString:{@", \n\t"}];
    v42 = @"\n\t]";
  }

  else
  {
    v42 = &stru_287507640;
    v58 = &stru_287507640;
  }

  v54 = v11;
  if (v6)
  {
    v20 = @" legacyAssertions:[\n\t";
  }

  else
  {
    v20 = &stru_287507640;
  }

  v56 = v6;
  if (v6)
  {
    v40 = [(NSMutableSet *)self->_legacyAssertions allObjects];
    v21 = [v40 componentsJoinedByString:{@", \n\t"}];
    v22 = @"\n\t]";
  }

  else
  {
    v22 = &stru_287507640;
    v21 = &stru_287507640;
  }

  if (v8)
  {
    v23 = @" primitiveAssertions:[\n\t";
  }

  else
  {
    v23 = &stru_287507640;
  }

  if (v8)
  {
    v39 = [(NSMutableSet *)self->_primitiveAssertions allObjects];
    v24 = [v39 componentsJoinedByString:{@", \n\t"}];
    v25 = @"\n\t]";
    if (v10)
    {
LABEL_22:
      v26 = [(NSMutableSet *)self->_endowmentInfos allObjects];
      v27 = [v26 componentsJoinedByString:{@", \n\t"}];
      v37 = v23;
      v35 = v22;
      v33 = v20;
      v28 = v53;
      v29 = v54;
      v30 = v55;
      v31 = [v52 initWithFormat:@"<%@| identity:%@ role:%@ gpuRole:%@ coalitionLevel:%llu explicitJetsamBand:%d memoryLimit:%@(%@) flags:%hx guaranteedRunning:%@ legacyFinishTaskReason:%lu%@%@%@%@%@%@%@%@%@%@%@%@%@%@>", v55, v54, v53, v60, coalitionLevel, explicitJetsamBand_low, memoryLimitCategory, v59, flags, v47, legacyFinishTaskReason, v45, v44, v43, v58, v42, v33, v21, v35, v37, v24, v25, @" endowments:[\n\t", v27, @"\n\t]"];

      goto LABEL_25;
    }
  }

  else
  {
    v25 = &stru_287507640;
    v24 = &stru_287507640;
    if (v10)
    {
      goto LABEL_22;
    }
  }

  v38 = v23;
  v36 = v22;
  v34 = v20;
  v28 = v53;
  v29 = v54;
  v30 = v55;
  v31 = [v52 initWithFormat:@"<%@| identity:%@ role:%@ gpuRole:%@ coalitionLevel:%llu explicitJetsamBand:%d memoryLimit:%@(%@) flags:%hx guaranteedRunning:%@ legacyFinishTaskReason:%lu%@%@%@%@%@%@%@%@%@%@%@%@%@%@>", v55, v54, v53, v60, coalitionLevel, explicitJetsamBand_low, memoryLimitCategory, v59, flags, v47, legacyFinishTaskReason, v45, v44, v43, v58, v42, v34, v21, v36, v38, v24, v25, &stru_287507640, &stru_287507640, &stru_287507640];
LABEL_25:
  if (v8)
  {
  }

  if (v56)
  {
  }

  if (v57)
  {
  }

  return v31;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![(RBProcessState *)self _isEqualToProcessStateIgnoringIdentityAndInheritances:v4]|| ![(RBSProcessIdentity *)self->_identity isEqualToIdentity:v4->_identity])
  {
    v7 = 0;
    goto LABEL_11;
  }

  inheritances = self->_inheritances;
  v6 = v4->_inheritances;
  if (inheritances == v6)
  {
LABEL_10:
    v7 = 1;
    goto LABEL_11;
  }

  v7 = 0;
  if (inheritances && v6)
  {
    v7 = [(RBInheritanceCollection *)inheritances isEqual:?];
  }

LABEL_11:

  return v7;
}

- (id)_initWithProcessState:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    v22.receiver = a1;
    v22.super_class = RBProcessState;
    v4 = objc_msgSendSuper2(&v22, sel_init);
    a1 = v4;
    if (v4)
    {
      objc_storeStrong(v4 + 1, v3[1]);
      *(a1 + 60) = *(v3 + 60);
      *(a1 + 89) = *(v3 + 89);
      a1[12] = v3[12];
      objc_storeStrong(a1 + 13, v3[13]);
      *(a1 + 112) = *(v3 + 112);
      *(a1 + 29) = *(v3 + 29);
      *(a1 + 122) = *(v3 + 122);
      *(a1 + 123) = *(v3 + 123);
      *(a1 + 88) = *(v3 + 88);
      a1[10] = v3[10];
      a1[16] = v3[16];
      v5 = [v3[7] mutableCopy];
      v6 = a1[7];
      a1[7] = v5;

      v7 = [v3[8] mutableCopy];
      v8 = a1[8];
      a1[8] = v7;

      v9 = [v3[9] mutableCopy];
      v10 = a1[9];
      a1[9] = v9;

      v11 = [v3[6] mutableCopy];
      v12 = a1[6];
      a1[6] = v11;

      v13 = [v3[3] mutableCopy];
      v14 = a1[3];
      a1[3] = v13;

      v15 = [v3[4] mutableCopy];
      v16 = a1[4];
      a1[4] = v15;

      v17 = [v3[2] mutableCopy];
      v18 = a1[2];
      a1[2] = v17;

      v19 = [v3[17] mutableCopy];
      v20 = a1[17];
      a1[17] = v19;
    }
  }

  return a1;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [RBMutableProcessState allocWithZone:a3];

  return [(RBProcessState *)&v4->super.super.isa _initWithProcessState:?];
}

- (void)initWithIdentity:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBProcessState.m" lineNumber:244 description:{@"Invalid parameter not satisfying: %@", @"identity"}];
}

@end