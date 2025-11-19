@interface RESwizzleInterface
@end

@implementation RESwizzleInterface

uint64_t __41___RESwizzleInterface__configuredObjects__block_invoke()
{
  v0 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  v1 = _configuredObjects_ConfiguredObjects;
  _configuredObjects_ConfiguredObjects = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

uint64_t __50___RESwizzleInterface__re_runAfterEngineIsLoaded___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock(&_re_runAfterEngineIsLoaded__ConfigurationLock);
  v2 = [objc_opt_class() _configuredObjects];
  [v2 addObject:*(a1 + 32)];

  os_unfair_lock_unlock(&_re_runAfterEngineIsLoaded__ConfigurationLock);
  v3 = *(*(a1 + 40) + 16);

  return v3();
}

void __92___RESwizzleInterface__re_swizzled_relevanceEngine_createElementFromDescription_completion___block_invoke(void *a1)
{
  v2 = +[RETrainingSimulationServer sharedServer];
  [v2 relevanceEngine:a1[4] createElementFromDescription:a1[5] completion:a1[6]];
}

void __90___RESwizzleInterface__re_swizzled_relevanceEngine_performCommand_withOptions_completion___block_invoke(void *a1)
{
  v2 = +[RETrainingSimulationServer sharedServer];
  [v2 relevanceEngine:a1[4] performCommand:a1[5] withOptions:a1[6] completion:a1[7]];
}

void __62___RESwizzleInterface__re_swizzled_availableRelevanceEngines___block_invoke(uint64_t a1)
{
  v2 = +[RETrainingSimulationServer sharedServer];
  [v2 availableRelevanceEngines:*(a1 + 32)];
}

void __91___RESwizzleInterface__re_swizzled_fetchAllElementIdentifiersInRelevanceEngine_completion___block_invoke(uint64_t a1)
{
  v2 = +[RETrainingSimulationServer sharedServer];
  [v2 fetchAllElementIdentifiersInRelevanceEngine:*(a1 + 32) completion:*(a1 + 40)];
}

void __81___RESwizzleInterface__re_swizzled_fetchAllElementsInRelevanceEngine_completion___block_invoke(uint64_t a1)
{
  v2 = +[RETrainingSimulationServer sharedServer];
  [v2 fetchAllElementsInRelevanceEngine:*(a1 + 32) completion:*(a1 + 40)];
}

void __86___RESwizzleInterface__re_swizzled_gatherDiagnosticLogsForRelevanceEngine_completion___block_invoke(uint64_t a1)
{
  v2 = +[RETrainingSimulationServer sharedServer];
  [v2 gatherDiagnosticLogsForRelevanceEngine:*(a1 + 32) completion:*(a1 + 40)];
}

void __98___RESwizzleInterface__re_swizzled_relevanceEngine_runActionOfElementWithDescription1_completion___block_invoke(void *a1)
{
  v2 = +[RETrainingSimulationServer sharedServer];
  [v2 relevanceEngine:a1[4] runActionOfElementWithDescription1:a1[5] completion:a1[6]];
}

void __83___RESwizzleInterface__re_swizzled_relevanceEngine_encodedObjectAtPath_completion___block_invoke(void *a1)
{
  v2 = +[RETrainingSimulationServer sharedServer];
  [v2 relevanceEngine:a1[4] encodedObjectAtPath:a1[5] completion:a1[6]];
}

@end