@interface RBMutableSystemState
- (RBMutableSystemState)init;
- (void)addAllowLaunchPredicate:(id)a3;
- (void)addPreventIdleSleepIdentifier:(id)a3;
- (void)addPreventLaunchPredicate:(id)a3;
- (void)addTag:(id)a3;
- (void)prewarmIdentity:(id)a3 withInterval:(double)a4;
- (void)unionState:(id)a3;
- (void)upgradeCondition:(id)a3 toValue:(int64_t)a4;
@end

@implementation RBMutableSystemState

- (RBMutableSystemState)init
{
  v3.receiver = self;
  v3.super_class = RBMutableSystemState;
  return [(RBSystemState *)&v3 _init];
}

- (void)unionState:(id)a3
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && v4 != self)
  {
    self->super._preventIdleSleep |= v4->super._preventIdleSleep;
    self->super._preventLaunch |= v4->super._preventLaunch;
    v6 = v4->super._preventIdleSleepIdentifiers;
    if ([(NSMutableSet *)v6 count])
    {
      preventIdleSleepIdentifiers = self->super._preventIdleSleepIdentifiers;
      if (preventIdleSleepIdentifiers)
      {
        [(NSMutableSet *)preventIdleSleepIdentifiers unionSet:v6];
      }

      else
      {
        v8 = [(NSMutableSet *)v6 mutableCopy];
        v9 = self->super._preventIdleSleepIdentifiers;
        self->super._preventIdleSleepIdentifiers = v8;
      }
    }

    v10 = v5->super._tags;
    if ([(NSMutableSet *)v10 count])
    {
      tags = self->super._tags;
      if (tags)
      {
        [(NSMutableSet *)tags unionSet:v10];
      }

      else
      {
        v12 = [(NSMutableSet *)v10 mutableCopy];
        v13 = self->super._tags;
        self->super._tags = v12;
      }
    }

    v31 = v6;
    v14 = v5->super._preventLaunchPredicates;
    if ([(NSMutableSet *)v14 count])
    {
      preventLaunchPredicates = self->super._preventLaunchPredicates;
      if (preventLaunchPredicates)
      {
        [(NSMutableSet *)preventLaunchPredicates unionSet:v14, v6];
      }

      else
      {
        v16 = [(NSMutableSet *)v14 mutableCopy];
        v17 = self->super._preventLaunchPredicates;
        self->super._preventLaunchPredicates = v16;
      }
    }

    v18 = v5->super._allowLaunchPredicates;

    if ([(NSMutableSet *)v18 count])
    {
      allowLaunchPredicates = self->super._allowLaunchPredicates;
      if (allowLaunchPredicates)
      {
        [(NSMutableSet *)allowLaunchPredicates unionSet:v18];
      }

      else
      {
        v20 = [(NSMutableSet *)v18 mutableCopy];
        v21 = self->super._allowLaunchPredicates;
        self->super._allowLaunchPredicates = v20;
      }
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v22 = [(NSMutableDictionary *)v5->super._conditions allKeys];
    v23 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v35;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v34 + 1) + 8 * i);
          v28 = [(NSMutableDictionary *)v5->super._conditions objectForKey:v27];
          -[RBMutableSystemState upgradeCondition:toValue:](self, "upgradeCondition:toValue:", v27, [v28 integerValue]);
        }

        v24 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v24);
    }

    prewarmConfiguration = v5->super._prewarmConfiguration;
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __35__RBMutableSystemState_unionState___block_invoke;
    v33[3] = &unk_279B332D0;
    v33[4] = self;
    [(NSMutableDictionary *)prewarmConfiguration enumerateKeysAndObjectsUsingBlock:v33];
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __35__RBMutableSystemState_unionState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  [a3 doubleValue];
  [v4 prewarmIdentity:v5 withInterval:?];
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

- (void)addPreventLaunchPredicate:(id)a3
{
  v4 = a3;
  preventLaunchPredicates = self->super._preventLaunchPredicates;
  v8 = v4;
  if (!preventLaunchPredicates)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->super._preventLaunchPredicates;
    self->super._preventLaunchPredicates = v6;

    v4 = v8;
    preventLaunchPredicates = self->super._preventLaunchPredicates;
  }

  [(NSMutableSet *)preventLaunchPredicates addObject:v4];
}

- (void)addAllowLaunchPredicate:(id)a3
{
  v4 = a3;
  allowLaunchPredicates = self->super._allowLaunchPredicates;
  v8 = v4;
  if (!allowLaunchPredicates)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v7 = self->super._allowLaunchPredicates;
    self->super._allowLaunchPredicates = v6;

    v4 = v8;
    allowLaunchPredicates = self->super._allowLaunchPredicates;
  }

  [(NSMutableSet *)allowLaunchPredicates addObject:v4];
}

- (void)upgradeCondition:(id)a3 toValue:(int64_t)a4
{
  v6 = a3;
  conditions = self->super._conditions;
  v14 = v6;
  if (!conditions)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    v9 = self->super._conditions;
    self->super._conditions = v8;

    v6 = v14;
    conditions = self->super._conditions;
  }

  v10 = [(NSMutableDictionary *)conditions objectForKey:v6];
  v11 = v10;
  if (!v10 || [v10 integerValue] < a4)
  {
    v12 = self->super._conditions;
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [(NSMutableDictionary *)v12 setValue:v13 forKey:v14];
  }
}

- (void)prewarmIdentity:(id)a3 withInterval:(double)a4
{
  v6 = a3;
  if (!v6)
  {
    [RBMutableSystemState prewarmIdentity:withInterval:];
  }

  v7 = v6;
  prewarmConfiguration = self->super._prewarmConfiguration;
  v16 = v7;
  if (!prewarmConfiguration)
  {
    v9 = [MEMORY[0x277CBEB38] dictionary];
    v10 = self->super._prewarmConfiguration;
    self->super._prewarmConfiguration = v9;

    v7 = v16;
    prewarmConfiguration = self->super._prewarmConfiguration;
  }

  v11 = [(NSMutableDictionary *)prewarmConfiguration objectForKey:v7];
  v12 = v11;
  if (!v11 || ([v11 doubleValue], v13 > a4))
  {
    v14 = self->super._prewarmConfiguration;
    v15 = [MEMORY[0x277CCABB0] numberWithDouble:a4];
    [(NSMutableDictionary *)v14 setObject:v15 forKey:v16];
  }
}

@end