@interface SBSAbstractWindowingTelemetryPersonalizationMetrics
- (id)_initWithPreviousMultitaskingMode:(int64_t)mode currentMultitaskingMode:(int64_t)multitaskingMode source:(int64_t)source multitaskingBuddyPanePresentation:(int64_t)presentation;
- (void)emit;
@end

@implementation SBSAbstractWindowingTelemetryPersonalizationMetrics

- (id)_initWithPreviousMultitaskingMode:(int64_t)mode currentMultitaskingMode:(int64_t)multitaskingMode source:(int64_t)source multitaskingBuddyPanePresentation:(int64_t)presentation
{
  v11.receiver = self;
  v11.super_class = SBSAbstractWindowingTelemetryPersonalizationMetrics;
  result = [(SBSAbstractWindowingTelemetryPersonalizationMetrics *)&v11 init];
  if (result)
  {
    *(result + 1) = mode;
    *(result + 2) = multitaskingMode;
    *(result + 3) = source;
    *(result + 4) = presentation;
  }

  return result;
}

- (void)emit
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBSAbstractWindowingTelemetryPersonalizationMetrics.m" lineNumber:51 description:@"Abstract class; do not use directly"];
}

id __59__SBSAbstractWindowingTelemetryPersonalizationMetrics_emit__block_invoke(uint64_t a1)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.springboard"];
  v3 = [v2 objectForKey:@"SBLastMultitaskingModeSwitchDate"];
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF00] date];
    v5 = [MEMORY[0x1E695DEE8] currentCalendar];
    v6 = [v5 components:16 fromDate:v3 toDate:v4 options:0];
    v7 = [v6 day];
  }

  else
  {
    v7 = 0;
  }

  v15[0] = @"previousMultitaskingMode";
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "previousMultitaskingMode")}];
  v16[0] = v8;
  v15[1] = @"currentMultitaskingMode";
  v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "currentMultitaskingMode")}];
  v16[1] = v9;
  v15[2] = @"source";
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "source")}];
  v16[2] = v10;
  v15[3] = @"daysInPreviousMultitaskingMode";
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
  v16[3] = v11;
  v15[4] = @"multitaskingBuddyPanePresentation";
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(*(a1 + 32), "multitaskingBuddyPanePresentation")}];
  v16[4] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:5];

  return v13;
}

@end