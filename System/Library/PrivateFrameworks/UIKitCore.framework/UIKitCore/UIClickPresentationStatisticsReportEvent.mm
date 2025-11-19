@interface UIClickPresentationStatisticsReportEvent
@end

@implementation UIClickPresentationStatisticsReportEvent

id ___UIClickPresentationStatisticsReportEvent_block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"bundleId";
  v2 = _UIMainBundleIdentifier();
  v3 = v2;
  v4 = @"unknown bundle id";
  if (v2)
  {
    v4 = v2;
  }

  v10[0] = v4;
  v9[1] = @"presentationType";
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 32)];
  v10[1] = v5;
  v9[2] = @"operation";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 40)];
  v10[2] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

@end