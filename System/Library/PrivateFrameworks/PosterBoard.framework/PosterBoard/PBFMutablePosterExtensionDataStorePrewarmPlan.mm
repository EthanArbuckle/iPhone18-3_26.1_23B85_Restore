@interface PBFMutablePosterExtensionDataStorePrewarmPlan
- (void)appendPrewarmPhase:(id)phase;
- (void)removePrewarmPhase:(id)phase;
- (void)setExecutionBlock:(id)block forPhase:(id)phase;
- (void)setTimeoutInterval:(double)interval forPhase:(id)phase;
@end

@implementation PBFMutablePosterExtensionDataStorePrewarmPlan

- (void)appendPrewarmPhase:(id)phase
{
  phaseCopy = phase;
  prewarmPhasePlan = [(PBFPosterExtensionDataStorePrewarmPlan *)self prewarmPhasePlan];
  v5 = [prewarmPhasePlan containsObject:phaseCopy];

  if ((v5 & 1) == 0)
  {
    prewarmPhasePlan2 = [(PBFPosterExtensionDataStorePrewarmPlan *)self prewarmPhasePlan];
    v7 = [prewarmPhasePlan2 mutableCopy];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = objc_opt_new();
    }

    v10 = v9;

    [v10 addObject:phaseCopy];
    v11 = [v10 copy];
    [(PBFPosterExtensionDataStorePrewarmPlan *)self setPrewarmPhasePlan:v11];
  }
}

- (void)removePrewarmPhase:(id)phase
{
  phaseCopy = phase;
  prewarmPhasePlan = [(PBFPosterExtensionDataStorePrewarmPlan *)self prewarmPhasePlan];
  v5 = [prewarmPhasePlan containsObject:phaseCopy];

  if (v5)
  {
    prewarmPhasePlan2 = [(PBFPosterExtensionDataStorePrewarmPlan *)self prewarmPhasePlan];
    v7 = [prewarmPhasePlan2 mutableCopy];

    [v7 removeObject:phaseCopy];
    v8 = [v7 copy];
    [(PBFPosterExtensionDataStorePrewarmPlan *)self setPrewarmPhasePlan:v8];
  }
}

- (void)setTimeoutInterval:(double)interval forPhase:(id)phase
{
  phaseCopy = phase;
  phaseToPrewarmTimeout = [(PBFPosterExtensionDataStorePrewarmPlan *)self phaseToPrewarmTimeout];
  v7 = [phaseToPrewarmTimeout mutableCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;

  if (interval >= 0.0)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:interval];
    [v10 setObject:v11 forKeyedSubscript:phaseCopy];
  }

  else
  {
    [v10 removeObjectForKey:phaseCopy];
  }

  [(PBFPosterExtensionDataStorePrewarmPlan *)self setPhaseToPrewarmTimeout:v10];
}

- (void)setExecutionBlock:(id)block forPhase:(id)phase
{
  blockCopy = block;
  phaseCopy = phase;
  phaseToExecutionBlock = [(PBFPosterExtensionDataStorePrewarmPlan *)self phaseToExecutionBlock];
  v8 = [phaseToExecutionBlock mutableCopy];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;

  if (blockCopy)
  {
    v12 = [blockCopy copy];
    v13 = _Block_copy(v12);
    [v11 setObject:v13 forKeyedSubscript:phaseCopy];
  }

  else
  {
    [v11 removeObjectForKey:phaseCopy];
  }

  [(PBFPosterExtensionDataStorePrewarmPlan *)self setPhaseToExecutionBlock:v11];
}

@end