@interface PPStreamingTopicScorer
+ (uint64_t)sourceStatsNeededForBytecode:(uint64_t)bytecode;
- (float)getFinalScoreWithAggregationResultOut:(uint64_t)out finalResultOut:(uint64_t)resultOut;
- (void)addRecord:(uint64_t)record;
@end

@implementation PPStreamingTopicScorer

+ (uint64_t)sourceStatsNeededForBytecode:(uint64_t)bytecode
{
  v2 = a2;
  objc_opt_self();
  scalarScoreInputsNeeded = [v2 scalarScoreInputsNeeded];
  objectScoreInputsNeeded = [v2 objectScoreInputsNeeded];

  BitAtIndex = CFBitVectorGetBitAtIndex(scalarScoreInputsNeeded, 6);
  v6 = CFBitVectorGetBitAtIndex(scalarScoreInputsNeeded, 7);
  v7 = 2;
  if (BitAtIndex)
  {
    v7 = 3;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = BitAtIndex != 0;
  }

  if (CFBitVectorGetBitAtIndex(scalarScoreInputsNeeded, 8))
  {
    v8 |= 4uLL;
  }

  if (CFBitVectorGetBitAtIndex(scalarScoreInputsNeeded, 9))
  {
    v8 |= 8uLL;
  }

  if (CFBitVectorGetBitAtIndex(scalarScoreInputsNeeded, 10))
  {
    v8 |= 0x40uLL;
  }

  if (CFBitVectorGetBitAtIndex(scalarScoreInputsNeeded, 11))
  {
    v8 |= 0x80uLL;
  }

  if (CFBitVectorGetBitAtIndex(scalarScoreInputsNeeded, 23))
  {
    v9 = v8 | 0x100;
  }

  else
  {
    v9 = v8;
  }

  if (CFBitVectorGetBitAtIndex(objectScoreInputsNeeded, 9))
  {
    v9 |= 0x10uLL;
  }

  if (CFBitVectorGetBitAtIndex(objectScoreInputsNeeded, 10))
  {
    return v9 | 0x20;
  }

  else
  {
    return v9;
  }
}

- (void)addRecord:(uint64_t)record
{
  v3 = a2;
  v4 = v3;
  if (record)
  {
    v5 = *(record + 8);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __36__PPStreamingTopicScorer_addRecord___block_invoke;
    v9[3] = &unk_278976148;
    v9[4] = record;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__PPStreamingTopicScorer_addRecord___block_invoke_2;
    v7[3] = &unk_278976170;
    v8 = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __36__PPStreamingTopicScorer_addRecord___block_invoke_3;
    v6[3] = &unk_278976170;
    v6[4] = record;
    [v5 evaluateWithPreviousStageSubscores:0 scoreInputInitializationBlock:v9 scoreInputAssignmentBlock:v7 outputBlock:v6];
  }
}

void __36__PPStreamingTopicScorer_addRecord___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 decayRate];
  *&v5 = v5;
  [v4 setScalarValue:1 forIndex:v5];
  [*(a1 + 32) initialScore];
  *&v6 = v6;
  [v4 setScalarValue:0 forIndex:v6];
  *&v7 = [*(a1 + 32) extractionAssetVersion];
  [v4 setScalarValue:3 forIndex:v7];
  *&v8 = [*(a1 + 32) algorithm];
  [v4 setScalarValue:4 forIndex:v8];
  v9 = [*(a1 + 32) topic];
  [v9 sentimentScore];
  *&v10 = v10;
  [v4 setScalarValue:5 forIndex:v10];

  v11 = [*(a1 + 32) source];
  v12 = [v11 metadata];
  *&v13 = [v12 dwellTimeSeconds];
  [v4 setScalarValue:17 forIndex:v13];

  v14 = [*(a1 + 32) source];
  v15 = [v14 metadata];
  *&v16 = [v15 lengthSeconds];
  [v4 setScalarValue:18 forIndex:v16];

  v17 = [*(a1 + 32) source];
  v18 = [v17 metadata];
  *&v19 = [v18 lengthCharacters];
  [v4 setScalarValue:19 forIndex:v19];

  v20 = [*(a1 + 32) source];
  v21 = [v20 metadata];
  *&v22 = [v21 donationCount];
  [v4 setScalarValue:20 forIndex:v22];

  v23 = [*(a1 + 32) source];
  v24 = [v23 metadata];
  *&v25 = [v24 contactHandleCount];
  [v4 setScalarValue:21 forIndex:v25];

  v26 = [*(a1 + 32) source];
  v27 = [v26 metadata];
  v28 = [v27 flags];
  LODWORD(v29) = 1.0;
  if ((v28 & 1) == 0)
  {
    *&v29 = 0.0;
  }

  [v4 setScalarValue:22 forIndex:v29];

  v30 = [*(a1 + 32) source];
  v31 = [v30 date];
  [v4 setObject:v31 forIndex:8];

  v32 = [*(a1 + 32) source];
  v33 = [v32 bundleId];
  [v4 setObject:v33 forIndex:0];

  v34 = [*(a1 + 32) source];
  v35 = [v34 groupId];
  [v4 setObject:v35 forIndex:1];

  v36 = [*(a1 + 32) source];
  v37 = [v36 language];
  [v4 setObject:v37 forIndex:4];

  v38 = [*(a1 + 32) extractionOsBuild];
  [v4 setObject:v38 forIndex:6];
}

- (float)getFinalScoreWithAggregationResultOut:(uint64_t)out finalResultOut:(uint64_t)resultOut
{
  if (!out)
  {
    return 0.0;
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = -957033984;
  v3 = *(out + 16);
  if (v3)
  {
    v4 = *(out + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __79__PPStreamingTopicScorer_getFinalScoreWithAggregationResultOut_finalResultOut___block_invoke;
    v9[3] = &unk_278976148;
    v9[4] = out;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __79__PPStreamingTopicScorer_getFinalScoreWithAggregationResultOut_finalResultOut___block_invoke_3;
    v8[3] = &unk_2789761B8;
    v8[4] = &v10;
    v8[5] = resultOut;
    [v3 evaluateWithPreviousStageSubscores:v4 scoreInputInitializationBlock:v9 scoreInputAssignmentBlock:&__block_literal_global_16564 outputBlock:v8];
  }

  [*(out + 8) cleanupReusableComponents];
  v5 = *(out + 16);
  if (v5)
  {
    [v5 cleanupReusableComponents];
  }

  v6 = v11[6];
  _Block_object_dispose(&v10, 8);
  return v6;
}

void __79__PPStreamingTopicScorer_getFinalScoreWithAggregationResultOut_finalResultOut___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 scalarValueForIndex:0];
  v4 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v5;
  if (v4)
  {
    objc_storeStrong(v4, a2);
  }
}

@end