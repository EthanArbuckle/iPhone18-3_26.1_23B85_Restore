@interface PPStreamingNamedEntityScorer
+ (unint64_t)sourceStatsNeededForBytecode:(id)a3;
- (PPStreamingNamedEntityScorer)initWithScoringDate:(id)a3 perRecordDecayRate:(double)a4 sourceStats:(id)a5;
- (float)getFinalScoreWithAggregationResultOut:(id *)a3 finalResultOut:(id *)a4;
- (void)addRecord:(id)a3;
- (void)startNewClusterWithDecayedFeedbackCounts:(id)a3 mostRelevantRecord:(id)a4 dominantEntityName:(id)a5;
@end

@implementation PPStreamingNamedEntityScorer

- (float)getFinalScoreWithAggregationResultOut:(id *)a3 finalResultOut:(id *)a4
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = -957033984;
  finalScorer = self->_finalScorer;
  if (finalScorer)
  {
    currentAggResult = self->_currentAggResult;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __85__PPStreamingNamedEntityScorer_getFinalScoreWithAggregationResultOut_finalResultOut___block_invoke;
    v12[3] = &unk_278976148;
    v12[4] = self;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __85__PPStreamingNamedEntityScorer_getFinalScoreWithAggregationResultOut_finalResultOut___block_invoke_3;
    v11[3] = &unk_2789761B8;
    v11[4] = &v13;
    v11[5] = a4;
    [(PPScoreInterpreter *)finalScorer evaluateWithPreviousStageSubscores:currentAggResult scoreInputInitializationBlock:v12 scoreInputAssignmentBlock:&__block_literal_global_1255 outputBlock:v11];
  }

  if (a3)
  {
    objc_storeStrong(a3, self->_currentAggResult);
  }

  [(PPScoreInterpreter *)self->_aggregationScorer cleanupReusableComponents:a3];
  v8 = self->_finalScorer;
  if (v8)
  {
    [(PPScoreInterpreter *)v8 cleanupReusableComponents];
  }

  v9 = v14[6];
  _Block_object_dispose(&v13, 8);
  return v9;
}

void __85__PPStreamingNamedEntityScorer_getFinalScoreWithAggregationResultOut_finalResultOut___block_invoke_3(uint64_t a1, void *a2)
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

- (void)addRecord:(id)a3
{
  v4 = a3;
  aggregationScorer = self->_aggregationScorer;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __42__PPStreamingNamedEntityScorer_addRecord___block_invoke;
  v10[3] = &unk_278976148;
  v10[4] = self;
  v7[4] = self;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__PPStreamingNamedEntityScorer_addRecord___block_invoke_2;
  v8[3] = &unk_278976170;
  v9 = v4;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__PPStreamingNamedEntityScorer_addRecord___block_invoke_3;
  v7[3] = &unk_278976170;
  v6 = v4;
  [(PPScoreInterpreter *)aggregationScorer evaluateWithPreviousStageSubscores:0 scoreInputInitializationBlock:v10 scoreInputAssignmentBlock:v8 outputBlock:v7];
}

void __42__PPStreamingNamedEntityScorer_addRecord___block_invoke_2(uint64_t a1, void *a2)
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
  v9 = [*(a1 + 32) entity];
  *&v10 = [v9 category];
  [v4 setScalarValue:5 forIndex:v10];

  v11 = [*(a1 + 32) entity];
  [v11 sentimentScore];
  *&v12 = v12;
  [v4 setScalarValue:6 forIndex:v12];

  v13 = [*(a1 + 32) source];
  v14 = [v13 metadata];
  *&v15 = [v14 dwellTimeSeconds];
  [v4 setScalarValue:18 forIndex:v15];

  v16 = [*(a1 + 32) source];
  v17 = [v16 metadata];
  *&v18 = [v17 lengthSeconds];
  [v4 setScalarValue:19 forIndex:v18];

  v19 = [*(a1 + 32) source];
  v20 = [v19 metadata];
  *&v21 = [v20 lengthCharacters];
  [v4 setScalarValue:20 forIndex:v21];

  v22 = [*(a1 + 32) source];
  v23 = [v22 metadata];
  *&v24 = [v23 donationCount];
  [v4 setScalarValue:21 forIndex:v24];

  v25 = [*(a1 + 32) source];
  v26 = [v25 metadata];
  *&v27 = [v26 contactHandleCount];
  [v4 setScalarValue:22 forIndex:v27];

  v28 = [*(a1 + 32) source];
  v29 = [v28 metadata];
  v30 = [v29 flags];
  LODWORD(v31) = 1.0;
  if ((v30 & 1) == 0)
  {
    *&v31 = 0.0;
  }

  [v4 setScalarValue:23 forIndex:v31];

  v32 = [*(a1 + 32) source];
  v33 = [v32 date];
  [v4 setObject:v33 forIndex:9];

  v34 = [*(a1 + 32) source];
  v35 = [v34 bundleId];
  [v4 setObject:v35 forIndex:0];

  v36 = [*(a1 + 32) source];
  v37 = [v36 groupId];
  [v4 setObject:v37 forIndex:1];

  v38 = [*(a1 + 32) source];
  v39 = [v38 language];
  [v4 setObject:v39 forIndex:4];

  v40 = [*(a1 + 32) entity];
  v41 = [v40 dynamicCategory];
  [v4 setObject:v41 forIndex:6];

  v42 = [*(a1 + 32) extractionOsBuild];
  [v4 setObject:v42 forIndex:7];
}

- (void)startNewClusterWithDecayedFeedbackCounts:(id)a3 mostRelevantRecord:(id)a4 dominantEntityName:(id)a5
{
  v7 = self->_aggregationScoreInputs;
  v8 = a5;
  v9 = a3;
  [v9 engagedExplicitly];
  *&v10 = v10;
  [(PPScoreDict *)v7 setScalarValue:13 forIndex:v10];
  [v9 engagedImplicitly];
  *&v11 = v11;
  [(PPScoreDict *)v7 setScalarValue:14 forIndex:v11];
  [v9 rejectedExplicitly];
  *&v12 = v12;
  [(PPScoreDict *)v7 setScalarValue:15 forIndex:v12];
  [v9 rejectedImplicitly];
  *&v13 = v13;
  [(PPScoreDict *)v7 setScalarValue:16 forIndex:v13];
  v14 = [v8 length];

  *&v15 = v14;
  [(PPScoreDict *)v7 setScalarValue:17 forIndex:v15];
  v16 = [v9 latestDate];

  [(PPScoreDict *)v7 setObject:v16 forIndex:12];
}

- (PPStreamingNamedEntityScorer)initWithScoringDate:(id)a3 perRecordDecayRate:(double)a4 sourceStats:(id)a5
{
  v8 = a3;
  v9 = a5;
  v36.receiver = self;
  v36.super_class = PPStreamingNamedEntityScorer;
  v10 = [(PPStreamingNamedEntityScorer *)&v36 init];
  if (v10)
  {
    v11 = [PPScoreInterpreter scoreInterpreterFromFactorName:@"PP2StageModel_NE_Agg.plplist" namespaceName:@"PERSONALIZATION_PORTRAIT_NAMED_ENTITIES"];
    aggregationScorer = v10->_aggregationScorer;
    v10->_aggregationScorer = v11;

    if (!v10->_aggregationScorer || ([PPScoreInterpreter scoreInterpreterFromFactorName:@"PP2StageModel_NE_Final.plplist" namespaceName:@"PERSONALIZATION_PORTRAIT_NAMED_ENTITIES"], v13 = objc_claimAutoreleasedReturnValue(), finalScorer = v10->_finalScorer, v10->_finalScorer = v13, finalScorer, !v10->_finalScorer))
    {
      v34 = 0;
      goto LABEL_6;
    }

    v15 = [PPScoreDict alloc];
    v16 = objc_opt_new();
    v17 = [(PPScoreDict *)v15 initWithScoreInputSet:v16];

    *&v18 = a4;
    [(PPScoreDict *)v17 setScalarValue:2 forIndex:v18];
    *&v19 = [v9 minRefCount];
    [(PPScoreDict *)v17 setScalarValue:7 forIndex:v19];
    *&v20 = [v9 maxRefCount];
    [(PPScoreDict *)v17 setScalarValue:8 forIndex:v20];
    [v9 avgRefCount];
    *&v21 = v21;
    [(PPScoreDict *)v17 setScalarValue:9 forIndex:v21];
    [v9 medianRefCount];
    *&v22 = v22;
    [(PPScoreDict *)v17 setScalarValue:10 forIndex:v22];
    *&v23 = [v9 uniqueBundleIdCount];
    [(PPScoreDict *)v17 setScalarValue:11 forIndex:v23];
    *&v24 = [v9 uniqueDocIdCount];
    [(PPScoreDict *)v17 setScalarValue:12 forIndex:v24];
    *&v25 = [v9 recordCount];
    [(PPScoreDict *)v17 setScalarValue:24 forIndex:v25];
    v26 = MEMORY[0x277CBEAF8];
    v27 = [MEMORY[0x277CBEAF8] currentLocale];
    v28 = [v27 localeIdentifier];
    v29 = [v26 componentsFromLocaleIdentifier:v28];
    v30 = [v29 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
    [(PPScoreDict *)v17 setObject:v30 forIndex:5];

    [(PPScoreDict *)v17 setObject:v8 forIndex:8];
    v31 = [v9 earliestDate];
    [(PPScoreDict *)v17 setObject:v31 forIndex:10];

    v32 = [v9 latestDate];
    [(PPScoreDict *)v17 setObject:v32 forIndex:11];

    aggregationScoreInputs = v10->_aggregationScoreInputs;
    v10->_aggregationScoreInputs = v17;
  }

  v34 = v10;
LABEL_6:

  return v34;
}

+ (unint64_t)sourceStatsNeededForBytecode:(id)a3
{
  v3 = a3;
  v4 = [v3 scalarScoreInputsNeeded];
  v5 = [v3 objectScoreInputsNeeded];

  BitAtIndex = CFBitVectorGetBitAtIndex(v4, 7);
  v7 = CFBitVectorGetBitAtIndex(v4, 8);
  v8 = 2;
  if (BitAtIndex)
  {
    v8 = 3;
  }

  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = BitAtIndex != 0;
  }

  if (CFBitVectorGetBitAtIndex(v4, 9))
  {
    v9 |= 4uLL;
  }

  if (CFBitVectorGetBitAtIndex(v4, 10))
  {
    v9 |= 8uLL;
  }

  if (CFBitVectorGetBitAtIndex(v4, 11))
  {
    v9 |= 0x40uLL;
  }

  if (CFBitVectorGetBitAtIndex(v4, 12))
  {
    v9 |= 0x80uLL;
  }

  if (CFBitVectorGetBitAtIndex(v4, 24))
  {
    v10 = v9 | 0x100;
  }

  else
  {
    v10 = v9;
  }

  if (CFBitVectorGetBitAtIndex(v5, 10))
  {
    v10 |= 0x10uLL;
  }

  if (CFBitVectorGetBitAtIndex(v5, 11))
  {
    return v10 | 0x20;
  }

  else
  {
    return v10;
  }
}

@end