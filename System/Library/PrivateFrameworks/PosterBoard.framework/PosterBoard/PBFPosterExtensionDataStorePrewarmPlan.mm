@interface PBFPosterExtensionDataStorePrewarmPlan
- (PBFPosterExtensionDataStorePrewarmPlan)init;
- (double)timeoutIntervalForPhase:(id)phase;
- (id)copyWithZone:(_NSZone *)zone;
- (id)executionBlockForPhase:(id)phase;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation PBFPosterExtensionDataStorePrewarmPlan

- (PBFPosterExtensionDataStorePrewarmPlan)init
{
  v11[5] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = PBFPosterExtensionDataStorePrewarmPlan;
  v2 = [(PBFPosterExtensionDataStorePrewarmPlan *)&v10 init];
  if (v2)
  {
    v3 = MEMORY[0x277CBEB70];
    v11[0] = @"PBFPrewarmPhaseReloadDescriptors";
    v11[1] = @"PBFPrewarmPhasePushToProactive";
    v11[2] = @"PBFPrewarmPhaseAcquireNewGallery";
    v11[3] = @"PBFPrewarmPhaseSnapshotGallery";
    v11[4] = @"PBFPrewarmPhaseSnapshotSwitcher";
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:5];
    v5 = [v3 orderedSetWithArray:v4];
    [(PBFPosterExtensionDataStorePrewarmPlan *)v2 setPrewarmPhasePlan:v5];

    [(PBFPosterExtensionDataStorePrewarmPlan *)v2 setDefaultPhaseTimeoutInterval:120.0];
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v8 = [uUIDString substringToIndex:7];
    [(PBFPosterExtensionDataStorePrewarmPlan *)v2 setIdentifier:v8];
  }

  return v2;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [(PBFPosterExtensionDataStorePrewarmPlan *)[PBFMutablePosterExtensionDataStorePrewarmPlan allocWithZone:?]];
  prewarmPhasePlan = [(PBFPosterExtensionDataStorePrewarmPlan *)self prewarmPhasePlan];
  [(PBFPosterExtensionDataStorePrewarmPlan *)v4 setPrewarmPhasePlan:prewarmPhasePlan];

  phaseToPrewarmTimeout = [(PBFPosterExtensionDataStorePrewarmPlan *)self phaseToPrewarmTimeout];
  [(PBFPosterExtensionDataStorePrewarmPlan *)v4 setPhaseToPrewarmTimeout:phaseToPrewarmTimeout];

  [(PBFPosterExtensionDataStorePrewarmPlan *)self defaultPhaseTimeoutInterval];
  [(PBFPosterExtensionDataStorePrewarmPlan *)v4 setDefaultPhaseTimeoutInterval:?];
  phaseToExecutionBlock = [(PBFPosterExtensionDataStorePrewarmPlan *)self phaseToExecutionBlock];
  [(PBFPosterExtensionDataStorePrewarmPlan *)v4 setPhaseToExecutionBlock:phaseToExecutionBlock];

  identifier = [(PBFPosterExtensionDataStorePrewarmPlan *)self identifier];
  [(PBFPosterExtensionDataStorePrewarmPlan *)v4 setIdentifier:identifier];

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  prewarmPhasePlan = [(PBFPosterExtensionDataStorePrewarmPlan *)self prewarmPhasePlan];
  [v4 setPrewarmPhasePlan:prewarmPhasePlan];

  phaseToPrewarmTimeout = [(PBFPosterExtensionDataStorePrewarmPlan *)self phaseToPrewarmTimeout];
  [v4 setPhaseToPrewarmTimeout:phaseToPrewarmTimeout];

  [(PBFPosterExtensionDataStorePrewarmPlan *)self defaultPhaseTimeoutInterval];
  [v4 setDefaultPhaseTimeoutInterval:?];
  phaseToExecutionBlock = [(PBFPosterExtensionDataStorePrewarmPlan *)self phaseToExecutionBlock];
  [v4 setPhaseToExecutionBlock:phaseToExecutionBlock];

  identifier = [(PBFPosterExtensionDataStorePrewarmPlan *)self identifier];
  [v4 setIdentifier:identifier];

  return v4;
}

- (double)timeoutIntervalForPhase:(id)phase
{
  phaseCopy = phase;
  if (!phaseCopy)
  {
    [PBFPosterExtensionDataStorePrewarmPlan timeoutIntervalForPhase:a2];
  }

  v6 = phaseCopy;
  phaseToPrewarmTimeout = [(PBFPosterExtensionDataStorePrewarmPlan *)self phaseToPrewarmTimeout];
  v8 = [phaseToPrewarmTimeout objectForKey:v6];

  if (v8)
  {
    [v8 doubleValue];
  }

  else
  {
    [(PBFPosterExtensionDataStorePrewarmPlan *)self defaultPhaseTimeoutInterval];
  }

  v10 = v9;

  return v10;
}

- (id)executionBlockForPhase:(id)phase
{
  phaseCopy = phase;
  if (!phaseCopy)
  {
    [PBFPosterExtensionDataStorePrewarmPlan executionBlockForPhase:a2];
  }

  v6 = phaseCopy;
  phaseToExecutionBlock = [(PBFPosterExtensionDataStorePrewarmPlan *)self phaseToExecutionBlock];
  v8 = [phaseToExecutionBlock objectForKey:v6];

  return v8;
}

- (void)timeoutIntervalForPhase:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"phase", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)executionBlockForPhase:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"phase", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

@end