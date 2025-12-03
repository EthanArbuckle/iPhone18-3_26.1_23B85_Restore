@interface RBProcessState
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToProcessStateIgnoringIdentity:(id)identity;
- (BOOL)isEqualToProcessStateIgnoringInheritances:(id)inheritances;
- (RBInheritanceCollection)inheritances;
- (RBProcessState)init;
- (RBProcessState)initWithIdentity:(id)identity;
- (id)_initWithProcessState:(id *)state;
- (id)clientStateForProcess:(id)process;
- (id)debugDescription;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (uint64_t)_isEqualToProcessStateIgnoringIdentityAndInheritances:(uint64_t)inheritances;
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
  percentage = [v4 percentage];

  return percentage;
}

- (unint64_t)effectiveMaxCPUDuration
{
  maxCPULimitsByRole = self->_maxCPULimitsByRole;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_role];
  v4 = [(NSMutableDictionary *)maxCPULimitsByRole objectForKeyedSubscript:v3];
  duration = [v4 duration];

  return duration;
}

- (unint64_t)effectiveMinCPUPercentage
{
  minCPULimitsByRole = self->_minCPULimitsByRole;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_role];
  v4 = [(NSMutableDictionary *)minCPULimitsByRole objectForKeyedSubscript:v3];
  percentage = [v4 percentage];

  return percentage;
}

- (unint64_t)effectiveMinCPUDuration
{
  minCPULimitsByRole = self->_minCPULimitsByRole;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_role];
  v4 = [(NSMutableDictionary *)minCPULimitsByRole objectForKeyedSubscript:v3];
  duration = [v4 duration];

  return duration;
}

- (unint64_t)effectiveMaxCPUUsageViolationPolicy
{
  maxCPULimitsByRole = self->_maxCPULimitsByRole;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_role];
  v4 = [(NSMutableDictionary *)maxCPULimitsByRole objectForKeyedSubscript:v3];
  violationPolicy = [v4 violationPolicy];

  return violationPolicy;
}

- (RBProcessState)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBProcessState.m" lineNumber:239 description:@"-init is not allowed on RBProcessState"];

  return 0;
}

- (RBProcessState)initWithIdentity:(id)identity
{
  identityCopy = identity;
  if (!identityCopy)
  {
    [(RBProcessState *)a2 initWithIdentity:?];
  }

  v10.receiver = self;
  v10.super_class = RBProcessState;
  v6 = [(RBProcessState *)&v10 init];
  if (v6)
  {
    v7 = [identityCopy copy];
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

- (uint64_t)_isEqualToProcessStateIgnoringIdentityAndInheritances:(uint64_t)inheritances
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (inheritances && v3)
  {
    if (*(inheritances + 120) != *(v3 + 60) || *(inheritances + 89) != *(v3 + 89) || *(inheritances + 96) != v3[12] || *(inheritances + 104) != v3[13] || *(inheritances + 112) != *(v3 + 112) || *(inheritances + 122) != *(v3 + 122) || *(inheritances + 123) != *(v3 + 123) || *(inheritances + 128) != v3[16] || *(inheritances + 88) != *(v3 + 88) || *(inheritances + 80) != v3[10])
    {
      goto LABEL_43;
    }

    v6 = *(inheritances + 24);
    v7 = v4[3];
    if (v6 != v7)
    {
      v5 = 0;
      if (!v6 || !v7)
      {
        goto LABEL_44;
      }

      v8 = *(inheritances + 24);
      Count = CFDictionaryGetCount(v6);
      if (Count != CFDictionaryGetCount(v7) || ![v8 isEqualToDictionary:v7])
      {
        goto LABEL_43;
      }
    }

    v10 = *(inheritances + 32);
    v11 = v4[4];
    if (v10 != v11)
    {
      v5 = 0;
      if (!v10 || !v11)
      {
        goto LABEL_44;
      }

      v12 = v4[4];
      v13 = CFDictionaryGetCount(*(inheritances + 32));
      if (v13 != CFDictionaryGetCount(v12) || ![v10 isEqualToDictionary:v12])
      {
        goto LABEL_43;
      }
    }

    v14 = *(inheritances + 48);
    v15 = v4[6];
    if (v14 != v15)
    {
      v5 = 0;
      if (!v14 || !v15)
      {
        goto LABEL_44;
      }

      v16 = CFSetGetCount(*(inheritances + 48));
      if (v16 != CFSetGetCount(v15) || ![(__CFSet *)v14 isEqualToSet:v15])
      {
        goto LABEL_43;
      }
    }

    v17 = *(inheritances + 56);
    v18 = v4[7];
    if (v17 != v18)
    {
      v5 = 0;
      if (!v17 || !v18)
      {
        goto LABEL_44;
      }

      v19 = CFSetGetCount(*(inheritances + 56));
      if (v19 != CFSetGetCount(v18) || ![(__CFSet *)v17 isEqualToSet:v18])
      {
        goto LABEL_43;
      }
    }

    v20 = *(inheritances + 64);
    v21 = v4[8];
    if (v20 != v21)
    {
      v5 = 0;
      if (!v20 || !v21)
      {
        goto LABEL_44;
      }

      v22 = CFSetGetCount(*(inheritances + 64));
      if (v22 != CFSetGetCount(v21) || ![(__CFSet *)v20 isEqualToSet:v21])
      {
        goto LABEL_43;
      }
    }

    v23 = *(inheritances + 72);
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

- (BOOL)isEqualToProcessStateIgnoringIdentity:(id)identity
{
  identityCopy = identity;
  if (self == identityCopy)
  {
    goto LABEL_7;
  }

  if (![(RBProcessState *)self _isEqualToProcessStateIgnoringIdentityAndInheritances:identityCopy])
  {
    v7 = 0;
    goto LABEL_9;
  }

  inheritances = self->_inheritances;
  v6 = identityCopy->_inheritances;
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

- (BOOL)isEqualToProcessStateIgnoringInheritances:(id)inheritances
{
  inheritancesCopy = inheritances;
  if (self == inheritancesCopy)
  {
    v5 = 1;
  }

  else if ([(RBProcessState *)self _isEqualToProcessStateIgnoringIdentityAndInheritances:inheritancesCopy])
  {
    v5 = [(RBSProcessIdentity *)self->_identity isEqualToIdentity:inheritancesCopy->_identity];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)clientStateForProcess:(id)process
{
  processCopy = process;
  v5 = processCopy;
  if (!processCopy)
  {
    handle = [objc_alloc(MEMORY[0x277D46F48]) initWithIdentity:self->_identity];
    goto LABEL_8;
  }

  handle = [processCopy handle];
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
  v24 = handle;
  v8 = [MEMORY[0x277D46FA8] stateWithProcess:handle];
  isBeingDebugged = [(RBProcessState *)self isBeingDebugged];
  inheritances = [(RBProcessState *)self inheritances];
  allNamespaces = [inheritances allNamespaces];

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
  if (isBeingDebugged)
  {
    v22 = 3;
  }

  else
  {
    v22 = 1;
  }

  [v8 setDebugState:v22];
  [v8 setTaskState:v7];
  [v8 setEndowmentNamespaces:allNamespaces];
  [v8 setTags:v21];
  [v8 setLegacyAssertions:v20];
  [v8 setPrimitiveAssertions:v19];
  [v8 setEndowmentInfos:v18];

  [v8 setCpuRole:role];

  return v8;
}

- (id)debugDescription
{
  allObjects = [(NSMutableSet *)self->_tags allObjects];
  v4 = [allObjects count];

  allObjects2 = [(NSMutableSet *)self->_legacyAssertions allObjects];
  v6 = [allObjects2 count];

  allObjects3 = [(NSMutableSet *)self->_primitiveAssertions allObjects];
  v8 = [allObjects3 count];

  allObjects4 = [(NSMutableSet *)self->_endowmentInfos allObjects];
  v10 = [allObjects4 count];

  v52 = objc_alloc(MEMORY[0x277CCACA8]);
  v55 = [objc_opt_class() description];
  shortDescription = [(RBSProcessIdentity *)self->_identity shortDescription];
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
    allObjects5 = [(NSMutableSet *)self->_tags allObjects];
    v58 = [allObjects5 componentsJoinedByString:{@", \n\t"}];
    v42 = @"\n\t]";
  }

  else
  {
    v42 = &stru_287507640;
    v58 = &stru_287507640;
  }

  v54 = shortDescription;
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
    allObjects6 = [(NSMutableSet *)self->_legacyAssertions allObjects];
    v21 = [allObjects6 componentsJoinedByString:{@", \n\t"}];
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
    allObjects7 = [(NSMutableSet *)self->_primitiveAssertions allObjects];
    v24 = [allObjects7 componentsJoinedByString:{@", \n\t"}];
    v25 = @"\n\t]";
    if (v10)
    {
LABEL_22:
      allObjects8 = [(NSMutableSet *)self->_endowmentInfos allObjects];
      v27 = [allObjects8 componentsJoinedByString:{@", \n\t"}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![(RBProcessState *)self _isEqualToProcessStateIgnoringIdentityAndInheritances:equalCopy]|| ![(RBSProcessIdentity *)self->_identity isEqualToIdentity:equalCopy->_identity])
  {
    v7 = 0;
    goto LABEL_11;
  }

  inheritances = self->_inheritances;
  v6 = equalCopy->_inheritances;
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

- (id)_initWithProcessState:(id *)state
{
  v3 = a2;
  if (state)
  {
    v22.receiver = state;
    v22.super_class = RBProcessState;
    v4 = objc_msgSendSuper2(&v22, sel_init);
    state = v4;
    if (v4)
    {
      objc_storeStrong(v4 + 1, v3[1]);
      *(state + 60) = *(v3 + 60);
      *(state + 89) = *(v3 + 89);
      state[12] = v3[12];
      objc_storeStrong(state + 13, v3[13]);
      *(state + 112) = *(v3 + 112);
      *(state + 29) = *(v3 + 29);
      *(state + 122) = *(v3 + 122);
      *(state + 123) = *(v3 + 123);
      *(state + 88) = *(v3 + 88);
      state[10] = v3[10];
      state[16] = v3[16];
      v5 = [v3[7] mutableCopy];
      v6 = state[7];
      state[7] = v5;

      v7 = [v3[8] mutableCopy];
      v8 = state[8];
      state[8] = v7;

      v9 = [v3[9] mutableCopy];
      v10 = state[9];
      state[9] = v9;

      v11 = [v3[6] mutableCopy];
      v12 = state[6];
      state[6] = v11;

      v13 = [v3[3] mutableCopy];
      v14 = state[3];
      state[3] = v13;

      v15 = [v3[4] mutableCopy];
      v16 = state[4];
      state[4] = v15;

      v17 = [v3[2] mutableCopy];
      v18 = state[2];
      state[2] = v17;

      v19 = [v3[17] mutableCopy];
      v20 = state[17];
      state[17] = v19;
    }
  }

  return state;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [RBMutableProcessState allocWithZone:zone];

  return [(RBProcessState *)&v4->super.super.isa _initWithProcessState:?];
}

- (void)initWithIdentity:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"RBProcessState.m" lineNumber:244 description:{@"Invalid parameter not satisfying: %@", @"identity"}];
}

@end