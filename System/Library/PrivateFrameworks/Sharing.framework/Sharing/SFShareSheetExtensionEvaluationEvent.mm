@interface SFShareSheetExtensionEvaluationEvent
- (NSDictionary)eventPayload;
- (void)submitEvent;
@end

@implementation SFShareSheetExtensionEvaluationEvent

- (NSDictionary)eventPayload
{
  v14[3] = *MEMORY[0x1E69E9840];
  v13[0] = @"activityType";
  v3 = [(SFShareSheetExtensionEvaluationEvent *)self activityType];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &stru_1F1D30528;
  }

  v14[0] = v5;
  v13[1] = @"cacheKey";
  v6 = [(SFShareSheetExtensionEvaluationEvent *)self cacheKey];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_1F1D30528;
  }

  v14[1] = v8;
  v13[2] = @"evaluationMs";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[SFShareSheetExtensionEvaluationEvent evaluationMs](self, "evaluationMs")}];
  v14[2] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (void)submitEvent
{
  v4 = +[SFShareSheetExtensionEvaluationEvent eventName];
  v3 = [(SFShareSheetExtensionEvaluationEvent *)self eventPayload];
  SFMetricsLog(v4, v3);
}

@end