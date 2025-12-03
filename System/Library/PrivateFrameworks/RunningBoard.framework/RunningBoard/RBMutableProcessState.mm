@interface RBMutableProcessState
- (id)copyWithZone:(_NSZone *)zone;
- (void)addEndowmentInfo:(id)info;
- (void)addInheritance:(id)inheritance;
- (void)addLegacyAssertion:(id)assertion;
- (void)addPreventIdleSleepIdentifier:(id)identifier;
- (void)addRBAssertion:(id)assertion;
- (void)addTag:(id)tag;
- (void)removeAllEndowmentInfos;
- (void)removeAllInheritances;
- (void)removeAllPreventIdleSleepIdentifiers;
- (void)removeEndowmentInfo:(id)info;
- (void)removeInheritance:(id)inheritance;
- (void)removePreventIdleSleepIdentifier:(id)identifier;
- (void)setCarPlayMode:(BOOL)mode;
- (void)setForceRoleManage:(BOOL)manage;
- (void)setIsBeingDebugged:(BOOL)debugged;
- (void)setJetsamLenientMode:(BOOL)mode;
- (void)setPreventBaseMemoryLimitReduction:(BOOL)reduction;
- (void)setPreventIdleSleep:(BOOL)sleep;
- (void)setPreventSuspend:(BOOL)suspend;
- (void)setTargetedBySuspendableAssertion:(BOOL)assertion;
- (void)setThrottleBestEffortNetworking:(BOOL)networking;
- (void)unionState:(id)state;
@end

@implementation RBMutableProcessState

- (void)unionState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (stateCopy && stateCopy != self)
  {
    self->super._flags |= stateCopy->super._flags;
    terminationResistance = self->super._terminationResistance;
    if (terminationResistance <= stateCopy->super._terminationResistance)
    {
      LOBYTE(terminationResistance) = stateCopy->super._terminationResistance;
    }

    self->super._terminationResistance = terminationResistance;
    explicitJetsamBand = self->super._explicitJetsamBand;
    if (explicitJetsamBand <= stateCopy->super._explicitJetsamBand)
    {
      explicitJetsamBand = stateCopy->super._explicitJetsamBand;
    }

    self->super._explicitJetsamBand = explicitJetsamBand;
    memoryLimit = self->super._memoryLimit;
    v9 = stateCopy->super._memoryLimit;
    if (memoryLimit == v9)
    {
      memoryLimitStrength = self->super._memoryLimitStrength;
      if (memoryLimitStrength <= stateCopy->super._memoryLimitStrength)
      {
        LOBYTE(memoryLimitStrength) = stateCopy->super._memoryLimitStrength;
      }

      self->super._memoryLimitStrength = memoryLimitStrength;
    }

    else if (memoryLimit < v9)
    {
      objc_storeStrong(&self->super._memoryLimitCategory, stateCopy->super._memoryLimitCategory);
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

- (void)setPreventSuspend:(BOOL)suspend
{
  if (suspend)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFFBF | v3;
}

- (void)setIsBeingDebugged:(BOOL)debugged
{
  if (debugged)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFFFD | v3;
}

- (void)setJetsamLenientMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFFF7 | v3;
}

- (void)setTargetedBySuspendableAssertion:(BOOL)assertion
{
  if (assertion)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFEFF | v3;
}

- (void)addPreventIdleSleepIdentifier:(id)identifier
{
  identifierCopy = identifier;
  preventIdleSleepIdentifiers = self->super._preventIdleSleepIdentifiers;
  v8 = identifierCopy;
  if (!preventIdleSleepIdentifiers)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->super._preventIdleSleepIdentifiers;
    self->super._preventIdleSleepIdentifiers = v6;

    identifierCopy = v8;
    preventIdleSleepIdentifiers = self->super._preventIdleSleepIdentifiers;
  }

  [(NSMutableSet *)preventIdleSleepIdentifiers addObject:identifierCopy];
}

- (void)removePreventIdleSleepIdentifier:(id)identifier
{
  [(NSMutableSet *)self->super._preventIdleSleepIdentifiers removeObject:identifier];
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

- (void)setPreventIdleSleep:(BOOL)sleep
{
  if (sleep)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFFFB | v3;
}

- (void)setPreventBaseMemoryLimitReduction:(BOOL)reduction
{
  if (reduction)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFF7F | v3;
}

- (void)setThrottleBestEffortNetworking:(BOOL)networking
{
  if (networking)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFFEF | v3;
}

- (void)setForceRoleManage:(BOOL)manage
{
  if (manage)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFFDF | v3;
}

- (void)setCarPlayMode:(BOOL)mode
{
  if (mode)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->super._flags = self->super._flags & 0xFDFF | v3;
}

- (void)addEndowmentInfo:(id)info
{
  infoCopy = info;
  endowmentInfos = self->super._endowmentInfos;
  v8 = infoCopy;
  if (!endowmentInfos)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->super._endowmentInfos;
    self->super._endowmentInfos = v6;

    infoCopy = v8;
    endowmentInfos = self->super._endowmentInfos;
  }

  [(NSMutableSet *)endowmentInfos addObject:infoCopy];
}

- (void)removeEndowmentInfo:(id)info
{
  endowmentInfos = self->super._endowmentInfos;
  v5 = [MEMORY[0x277CBEB98] setWithObject:info];
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

- (void)addInheritance:(id)inheritance
{
  inheritanceCopy = inheritance;
  inheritances = self->super._inheritances;
  v13 = inheritanceCopy;
  if (!inheritances)
  {
    v6 = objc_alloc_init(RBMutableInheritanceCollection);
    v7 = self->super._inheritances;
    self->super._inheritances = &v6->super;

    inheritanceCopy = v13;
    inheritances = self->super._inheritances;
  }

  [(RBInheritanceCollection *)inheritances addInheritance:inheritanceCopy];
  v8 = objc_alloc(MEMORY[0x277D46F20]);
  endowmentNamespace = [v13 endowmentNamespace];
  environment = [v13 environment];
  encodedEndowment = [v13 encodedEndowment];
  v12 = [v8 _initWithNamespace:endowmentNamespace environment:environment encodedEndowment:encodedEndowment];

  [(RBMutableProcessState *)self addEndowmentInfo:v12];
}

- (void)removeInheritance:(id)inheritance
{
  inheritances = self->super._inheritances;
  inheritanceCopy = inheritance;
  [(RBInheritanceCollection *)inheritances removeInheritance:inheritanceCopy];
  if (![(RBInheritanceCollection *)self->super._inheritances count])
  {
    v6 = self->super._inheritances;
    self->super._inheritances = 0;
  }

  v7 = objc_alloc(MEMORY[0x277D46F20]);
  endowmentNamespace = [inheritanceCopy endowmentNamespace];
  environment = [inheritanceCopy environment];
  encodedEndowment = [inheritanceCopy encodedEndowment];

  v11 = [v7 _initWithNamespace:endowmentNamespace environment:environment encodedEndowment:encodedEndowment];
  [(RBMutableProcessState *)self removeEndowmentInfo:v11];
}

- (void)removeAllInheritances
{
  inheritances = self->super._inheritances;
  self->super._inheritances = 0;

  [(RBMutableProcessState *)self removeAllEndowmentInfos];
}

- (void)addTag:(id)tag
{
  tagCopy = tag;
  tags = self->super._tags;
  v8 = tagCopy;
  if (!tags)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->super._tags;
    self->super._tags = v6;

    tagCopy = v8;
    tags = self->super._tags;
  }

  [(NSMutableSet *)tags addObject:tagCopy];
}

- (void)addLegacyAssertion:(id)assertion
{
  assertionCopy = assertion;
  legacyAssertions = self->super._legacyAssertions;
  v8 = assertionCopy;
  if (!legacyAssertions)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->super._legacyAssertions;
    self->super._legacyAssertions = v6;

    assertionCopy = v8;
    legacyAssertions = self->super._legacyAssertions;
  }

  [(NSMutableSet *)legacyAssertions addObject:assertionCopy];
}

- (void)addRBAssertion:(id)assertion
{
  assertionCopy = assertion;
  primitiveAssertions = self->super._primitiveAssertions;
  v8 = assertionCopy;
  if (!primitiveAssertions)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->super._primitiveAssertions;
    self->super._primitiveAssertions = v6;

    assertionCopy = v8;
    primitiveAssertions = self->super._primitiveAssertions;
  }

  [(NSMutableSet *)primitiveAssertions addObject:assertionCopy];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [RBProcessState allocWithZone:zone];

  return [(RBProcessState *)&v4->super.isa _initWithProcessState:?];
}

@end