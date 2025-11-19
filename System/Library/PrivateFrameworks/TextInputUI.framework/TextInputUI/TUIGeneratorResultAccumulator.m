@interface TUIGeneratorResultAccumulator
@end

@implementation TUIGeneratorResultAccumulator

uint64_t __99___TUIGeneratorResultAccumulator_initWithRequestContext_enabledCandidateSources_policy_onComplete___block_invoke(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  if ((*(*(result + 32) + 8) & 1) == 0)
  {
    v1 = result;
    v2 = TUICandidateGenerationLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [*(*(v1 + 32) + 48) accumulatorTimeout];
      v4 = 134217984;
      v5 = v3;
      _os_log_error_impl(&dword_18FFDC000, v2, OS_LOG_TYPE_ERROR, "Result accumulator timeout: %f, exceeded.", &v4, 0xCu);
    }

    return [*(v1 + 32) completionBlockJustOnce:1];
  }

  return result;
}

@end