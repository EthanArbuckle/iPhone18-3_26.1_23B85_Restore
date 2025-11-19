@interface PSContactHandleFeatureProvider
@end

@implementation PSContactHandleFeatureProvider

void __64___PSContactHandleFeatureProvider_interactionFeaturesForHandle___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[_PSLogging featureGenerationChannel];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __53___PSHandleRanker_rankedHandlesFromCandidateHandles___block_invoke_cold_1(v2, v3);
  }
}

@end