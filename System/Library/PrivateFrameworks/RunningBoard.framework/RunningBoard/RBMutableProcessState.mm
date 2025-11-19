@interface RBMutableProcessState
- (id)copyWithZone:(_NSZone *)a3;
- (void)addEndowmentInfo:(id)a3;
- (void)addInheritance:(id)a3;
- (void)addLegacyAssertion:(id)a3;
- (void)addPreventIdleSleepIdentifier:(id)a3;
- (void)addRBAssertion:(id)a3;
- (void)addTag:(id)a3;
- (void)removeAllEndowmentInfos;
- (void)removeAllInheritances;
- (void)removeAllPreventIdleSleepIdentifiers;
- (void)removeEndowmentInfo:(id)a3;
- (void)removeInheritance:(id)a3;
- (void)removePreventIdleSleepIdentifier:(id)a3;
- (void)setCarPlayMode:(BOOL)a3;
- (void)setForceRoleManage:(BOOL)a3;
- (void)setIsBeingDebugged:(BOOL)a3;
- (void)setJetsamLenientMode:(BOOL)a3;
- (void)setPreventBaseMemoryLimitReduction:(BOOL)a3;
- (void)setPreventIdleSleep:(BOOL)a3;
- (void)setPreventSuspend:(BOOL)a3;
- (void)setTargetedBySuspendableAssertion:(BOOL)a3;
- (void)setThrottleBestEffortNetworking:(BOOL)a3;
- (void)unionState:(id)a3;
@end

@implementation RBMutableProcessState

- (void)unionState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && v4 != self)
  {
    self->super._flags |= v4->super._flags;
    terminationResistance = self->super._terminationResistance;
    if (terminationResistance <= v4->super._terminationResistance)
    {
      LOBYTE(terminationResistance) = v4->super._terminationResistance;
    }

    self->super._terminationResistance = terminationResistance;
    explicitJetsamBand = self->super._explicitJetsamBand;
    if (explicitJetsamBand <= v4->super._explicitJetsamBand)
    {
      explicitJetsamBand = v4->super._explicitJetsamBand;
    }

    self->super._explicitJetsamBand = explicitJetsamBand;
    memoryLimit = self->super._memoryLimit;
    v9 = v4->super._memoryLimit;
    if (memoryLimit == v9)
    {
      memoryLimitStrength = self->super._memoryLimitStrength;
      if (memoryLimitStrength <= v4->super._memoryLimitStrength)
      {
        LOBYTE(memoryLimitStrength) = v4->super._memoryLimitStrength;
      }

      self->super._memoryLimitStrength = memoryLimitStrength;
    }

    else if (memoryLimit < v9)
    {
      objc_storeStrong(&self->super._memoryLimitCategory, v4->super._memoryLimitCategory);
      self->super._memoryLimitStrength = v5->super._memoryLimitStrength;
      self->super._memoryLimit = v5->super._memoryLimit;
    }

    role = self->super._role;
    if (role <= v5->super._role)
    {
      LOBYTE(role) = v5->super._role;
    }

    self->super._role = role;
    gpuRole = self->super._gpuRole;
    if (gpuRole <= v5->super._gpuRole)
    {
      LOBYTE(gpuRole) = v5->super._gpuRole;
    }

    self->super._gpuRole = gpuRole;
    v13 = self->super._guaranteedRunning || v5->super._guaranteedRunning;
    self->super._guaranteedRunning = v13 & 1;
    coalitionLevel = self->super._coalitionLevel;
    if (coalitionLevel <= v5->super._coalitionLevel)
    {
      coalitionLevel = v5->super._coalitionLevel;
    }

    self->super._coalitionLevel = coalitionLevel;
    legacyFinishTaskReason = v5->super._legacyFinishTaskReason;
    if (legacyFinishTaskReason && self->super._legacyFinishTaskReason - 1 >= legacyFinishTaskReason)
    {
      self->super._legacyFinishTaskReason = legacyFinishTaskReason;
    }

    v16 = v5->super._preventIdleSleepIdentifiers;
    if ([(NSMutableSet *)v16 count])
    {
      preventIdleSleepIdentifiers = self->super._preventIdleSleepIdentifiers;
      if (preventIdleSleepIdentifiers)
      {
        [(NSMutableSet *)preventIdleSleepIdentifiers unionSet:v16];
      }

      else
      {
        v18 = [(NSMutableSet *)v16 mutableCopy];
        v19 = self->super._preventIdleSleepIdentifiers;
        self->super._preventIdleSleepIdentifiers = v18;
      }
    }

    v20 = v5->super._minCPULimitsByRole;
    if ([(NSMutableDictionary *)v20 count])
    {
      if (self->super._minCPULimitsByRole)
      {
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __36__RBMutableProcessState_unionState___block_invoke;
        v47[3] = &unk_279B330F0;
        v47[4] = self;
        [(NSMutableDictionary *)v20 enumerateKeysAndObjectsUsingBlock:v47];
      }

      else
      {
        v21 = [(NSMutableDictionary *)v20 mutableCopy];
        minCPULimitsByRole = self->super._minCPULimitsByRole;
        self->super._minCPULimitsByRole = v21;
      }
    }

    v23 = v5->super._maxCPULimitsByRole;
    if ([(NSMutableDictionary *)v23 count])
    {
      if (self->super._maxCPULimitsByRole)
      {
        v46[0] = MEMORY[0x277D85DD0];
        v46[1] = 3221225472;
        v46[2] = __36__RBMutableProcessState_unionState___block_invoke_2;
        v46[3] = &unk_279B33118;
        v46[4] = self;
        [(NSMutableDictionary *)v23 enumerateKeysAndObjectsUsingBlock:v46];
      }

      else
      {
        v24 = [(NSMutableDictionary *)v23 mutableCopy];
        maxCPULimitsByRole = self->super._maxCPULimitsByRole;
        self->super._maxCPULimitsByRole = v24;
      }
    }

    v26 = v5->super._inheritances;
    if ([(RBInheritanceCollection *)v26 count])
    {
      inheritances = self->super._inheritances;
      if (inheritances)
      {
        [(RBInheritanceCollection *)inheritances unionCollection:v26];
      }

      else
      {
        v28 = [(RBInheritanceCollection *)v26 mutableCopy];
        v29 = self->super._inheritances;
        self->super._inheritances = v28;
      }
    }

    v30 = v5->super._tags;
    if ([(NSMutableSet *)v30 count])
    {
      tags = self->super._tags;
      if (tags)
      {
        [(NSMutableSet *)tags unionSet:v30];
      }

      else
      {
        v32 = [(NSMutableSet *)v30 mutableCopy];
        v33 = self->super._tags;
        self->super._tags = v32;
      }
    }

    v34 = v5->super._legacyAssertions;
    if ([(NSMutableSet *)v34 count])
    {
      legacyAssertions = self->super._legacyAssertions;
      if (legacyAssertions)
      {
        [(NSMutableSet *)legacyAssertions unionSet:v34];
      }

      else
      {
        v36 = [(NSMutableSet *)v34 mutableCopy];
        v37 = self->super._legacyAssertions;
        self->super._legacyAssertions = v36;
      }
    }

    v38 = v5->super._primitiveAssertions;
    if ([(NSMutableSet *)v38 count])
    {
      primitiveAssertions = self->super._primitiveAssertions;
      if (primitiveAssertions)
      {
        [(NSMutableSet *)primitiveAssertions unionSet:v38];
      }

      else
      {
        v40 = [(NSMutableSet *)v38 mutableCopy];
        v41 = self->super._primitiveAssertions;
        self->super._primitiveAssertions = v40;
      }
    }

    v42 = v5->super._endowmentInfos;
    if ([(NSMutableSet *)v42 count])
    {
      endowmentInfos = self->super._endowmentInfos;
      if (endowmentInfos)
      {
        [(NSMutableSet *)endowmentInfos unionSet:v42];
      }

      else
      {
        v44 = [(NSMutableSet *)v42 mutableCopy];
        v45 = self->super._endowmentInfos;
        self->super._endowmentInfos = v44;
      }
    }
  }
}

void __36__RBMutableProcessState_unionState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 32);
  v6 = a3;
  v7 = a2;
  v9 = [v5 objectForKey:v7];
  v8 = [v6 unionLimit:v9];

  [*(*(a1 + 32) + 32) setObject:v8 forKey:v7];
}

void __36__RBMutableProcessState_unionState___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 24);
  v6 = a3;
  v7 = a2;
  v9 = [v5 objectForKey:v7];
  v8 = [v6 unionLimit:v9];

  [*(*(a1 + 32) + 24) setObject:v8 forKey:v7];
}

- (void)setPreventSuspend:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFFBF | v3;
}

- (void)setIsBeingDebugged:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFFFD | v3;
}

- (void)setJetsamLenientMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFFF7 | v3;
}

- (void)setTargetedBySuspendableAssertion:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFEFF | v3;
}

- (void)addPreventIdleSleepIdentifier:(id)a3
{
  v4 = a3;
  preventIdleSleepIdentifiers = self->super._preventIdleSleepIdentifiers;
  v8 = v4;
  if (!preventIdleSleepIdentifiers)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->super._preventIdleSleepIdentifiers;
    self->super._preventIdleSleepIdentifiers = v6;

    v4 = v8;
    preventIdleSleepIdentifiers = self->super._preventIdleSleepIdentifiers;
  }

  [(NSMutableSet *)preventIdleSleepIdentifiers addObject:v4];
}

- (void)removePreventIdleSleepIdentifier:(id)a3
{
  [(NSMutableSet *)self->super._preventIdleSleepIdentifiers removeObject:a3];
  if (![(NSMutableSet *)self->super._preventIdleSleepIdentifiers count])
  {
    preventIdleSleepIdentifiers = self->super._preventIdleSleepIdentifiers;
    self->super._preventIdleSleepIdentifiers = 0;
  }
}

- (void)removeAllPreventIdleSleepIdentifiers
{
  preventIdleSleepIdentifiers = self->super._preventIdleSleepIdentifiers;
  self->super._preventIdleSleepIdentifiers = 0;
  MEMORY[0x2821F96F8]();
}

- (void)setPreventIdleSleep:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFFFB | v3;
}

- (void)setPreventBaseMemoryLimitReduction:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFF7F | v3;
}

- (void)setThrottleBestEffortNetworking:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFFEF | v3;
}

- (void)setForceRoleManage:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFFDF | v3;
}

- (void)setCarPlayMode:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFDFF | v3;
}

- (void)addEndowmentInfo:(id)a3
{
  v4 = a3;
  endowmentInfos = self->super._endowmentInfos;
  v8 = v4;
  if (!endowmentInfos)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->super._endowmentInfos;
    self->super._endowmentInfos = v6;

    v4 = v8;
    endowmentInfos = self->super._endowmentInfos;
  }

  [(NSMutableSet *)endowmentInfos addObject:v4];
}

- (void)removeEndowmentInfo:(id)a3
{
  endowmentInfos = self->super._endowmentInfos;
  v5 = [MEMORY[0x277CBEB98] setWithObject:a3];
  [(NSMutableSet *)endowmentInfos minusSet:v5];

  if (![(NSMutableSet *)self->super._endowmentInfos count])
  {
    v6 = self->super._endowmentInfos;
    self->super._endowmentInfos = 0;
  }
}

- (void)removeAllEndowmentInfos
{
  endowmentInfos = self->super._endowmentInfos;
  self->super._endowmentInfos = 0;
  MEMORY[0x2821F96F8]();
}

- (void)addInheritance:(id)a3
{
  v4 = a3;
  inheritances = self->super._inheritances;
  v13 = v4;
  if (!inheritances)
  {
    v6 = objc_alloc_init(RBMutableInheritanceCollection);
    v7 = self->super._inheritances;
    self->super._inheritances = &v6->super;

    v4 = v13;
    inheritances = self->super._inheritances;
  }

  [(RBInheritanceCollection *)inheritances addInheritance:v4];
  v8 = objc_alloc(MEMORY[0x277D46F20]);
  v9 = [v13 endowmentNamespace];
  v10 = [v13 environment];
  v11 = [v13 encodedEndowment];
  v12 = [v8 _initWithNamespace:v9 environment:v10 encodedEndowment:v11];

  [(RBMutableProcessState *)self addEndowmentInfo:v12];
}

- (void)removeInheritance:(id)a3
{
  inheritances = self->super._inheritances;
  v5 = a3;
  [(RBInheritanceCollection *)inheritances removeInheritance:v5];
  if (![(RBInheritanceCollection *)self->super._inheritances count])
  {
    v6 = self->super._inheritances;
    self->super._inheritances = 0;
  }

  v7 = objc_alloc(MEMORY[0x277D46F20]);
  v8 = [v5 endowmentNamespace];
  v9 = [v5 environment];
  v10 = [v5 encodedEndowment];

  v11 = [v7 _initWithNamespace:v8 environment:v9 encodedEndowment:v10];
  [(RBMutableProcessState *)self removeEndowmentInfo:v11];
}

- (void)removeAllInheritances
{
  inheritances = self->super._inheritances;
  self->super._inheritances = 0;

  [(RBMutableProcessState *)self removeAllEndowmentInfos];
}

- (void)addTag:(id)a3
{
  v4 = a3;
  tags = self->super._tags;
  v8 = v4;
  if (!tags)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->super._tags;
    self->super._tags = v6;

    v4 = v8;
    tags = self->super._tags;
  }

  [(NSMutableSet *)tags addObject:v4];
}

- (void)addLegacyAssertion:(id)a3
{
  v4 = a3;
  legacyAssertions = self->super._legacyAssertions;
  v8 = v4;
  if (!legacyAssertions)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->super._legacyAssertions;
    self->super._legacyAssertions = v6;

    v4 = v8;
    legacyAssertions = self->super._legacyAssertions;
  }

  [(NSMutableSet *)legacyAssertions addObject:v4];
}

- (void)addRBAssertion:(id)a3
{
  v4 = a3;
  primitiveAssertions = self->super._primitiveAssertions;
  v8 = v4;
  if (!primitiveAssertions)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->super._primitiveAssertions;
    self->super._primitiveAssertions = v6;

    v4 = v8;
    primitiveAssertions = self->super._primitiveAssertions;
  }

  [(NSMutableSet *)primitiveAssertions addObject:v4];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [RBProcessState allocWithZone:a3];

  return [(RBProcessState *)&v4->super.isa _initWithProcessState:?];
}

@end