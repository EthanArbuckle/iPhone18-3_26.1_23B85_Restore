@interface PCCullingLogic
+ (void)cullLowProbabilityVisits:(id)a3;
@end

@implementation PCCullingLogic

+ (void)cullLowProbabilityVisits:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E696AD50] indexSet];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__PCCullingLogic_cullLowProbabilityVisits___block_invoke;
  v6[3] = &unk_1E83B88C8;
  v5 = v4;
  v7 = v5;
  [v3 enumerateObjectsUsingBlock:v6];
  if ([v5 count])
  {
    [v3 removeObjectsAtIndexes:v5];
  }
}

void __43__PCCullingLogic_cullLowProbabilityVisits___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if ([v11 hasPredictedContext])
  {
    v5 = [v11 predictedContext];

    if (v5)
    {
      v6 = [v11 predictedContext];
      v7 = [v6 contextType];

      v8 = [v11 predictedContext];
      [v8 probability];
      v10 = v9;

      if (v7 == 1 && v10 < 0.0)
      {
        [*(a1 + 32) addIndex:a3];
      }
    }
  }
}

@end