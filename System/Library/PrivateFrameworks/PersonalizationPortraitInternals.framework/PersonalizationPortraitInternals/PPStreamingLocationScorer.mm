@interface PPStreamingLocationScorer
+ (uint64_t)sourceStatsNeededForBytecode:(uint64_t)bytecode;
- (float)getFinalScoreWithAggregationResultOut:(uint64_t)out finalResultOut:;
- (void)addRecord:(uint64_t)record;
- (void)initWithScoringDate:(void *)date sourceStats:(void *)stats trialWrapper:;
- (void)startNewClusterWithDecayedFeedbackCounts:(void *)counts mostRelevantRecord:;
@end

@implementation PPStreamingLocationScorer

+ (uint64_t)sourceStatsNeededForBytecode:(uint64_t)bytecode
{
  v2 = a2;
  objc_opt_self();
  scalarScoreInputsNeeded = [v2 scalarScoreInputsNeeded];
  objectScoreInputsNeeded = [v2 objectScoreInputsNeeded];

  BitAtIndex = CFBitVectorGetBitAtIndex(scalarScoreInputsNeeded, 7);
  v6 = CFBitVectorGetBitAtIndex(scalarScoreInputsNeeded, 8);
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

  if (CFBitVectorGetBitAtIndex(scalarScoreInputsNeeded, 9))
  {
    v8 |= 4uLL;
  }

  if (CFBitVectorGetBitAtIndex(scalarScoreInputsNeeded, 10))
  {
    v8 |= 8uLL;
  }

  if (CFBitVectorGetBitAtIndex(scalarScoreInputsNeeded, 11))
  {
    v8 |= 0x40uLL;
  }

  if (CFBitVectorGetBitAtIndex(scalarScoreInputsNeeded, 12))
  {
    v8 |= 0x80uLL;
  }

  if (CFBitVectorGetBitAtIndex(scalarScoreInputsNeeded, 24))
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

- (void)initWithScoringDate:(void *)date sourceStats:(void *)stats trialWrapper:
{
  v7 = a2;
  dateCopy = date;
  statsCopy = stats;
  if (self && (v43.receiver = self, v43.super_class = PPStreamingLocationScorer, (v10 = objc_msgSendSuper2(&v43, sel_init)) != 0))
  {
    v11 = v10;
    objc_opt_self();
    v12 = [PPScoreInterpreterBytecode bytecodeFromFactorName:@"PP2StageModel_LC_Agg.plplist" namespaceName:@"PERSONALIZATION_PORTRAIT_LOCATIONS"];
    if (v12)
    {
      v13 = v12;
      objc_opt_self();
      v14 = [PPScoreInterpreterBytecode bytecodeFromFactorName:@"PP2StageModel_LC_Final.plplist" namespaceName:@"PERSONALIZATION_PORTRAIT_LOCATIONS"];
      if (v14)
      {
        v15 = v14;
        v16 = [[PPScoreInterpreter alloc] initWithBytecode:v13];
        v17 = v11[1];
        v11[1] = v16;

        v18 = [[PPScoreInterpreter alloc] initWithBytecode:v15];
        v19 = v11[2];
        v11[2] = v18;

        v20 = [PPScoreDict alloc];
        v42 = v7;
        v21 = statsCopy;
        v22 = objc_opt_new();
        v23 = [(PPScoreDict *)v20 initWithScoreInputSet:v22];

        LODWORD(v24) = -957033984;
        [(PPScoreDict *)v23 setScalarValue:2 forIndex:v24];
        *&v25 = [dateCopy minRefCount];
        [(PPScoreDict *)v23 setScalarValue:7 forIndex:v25];
        *&v26 = [dateCopy maxRefCount];
        [(PPScoreDict *)v23 setScalarValue:8 forIndex:v26];
        [dateCopy avgRefCount];
        *&v27 = v27;
        [(PPScoreDict *)v23 setScalarValue:9 forIndex:v27];
        [dateCopy medianRefCount];
        *&v28 = v28;
        [(PPScoreDict *)v23 setScalarValue:10 forIndex:v28];
        *&v29 = [dateCopy uniqueBundleIdCount];
        [(PPScoreDict *)v23 setScalarValue:11 forIndex:v29];
        *&v30 = [dateCopy uniqueDocIdCount];
        [(PPScoreDict *)v23 setScalarValue:12 forIndex:v30];
        *&v31 = [dateCopy recordCount];
        [(PPScoreDict *)v23 setScalarValue:24 forIndex:v31];
        v32 = MEMORY[0x277CBEAF8];
        currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
        localeIdentifier = [currentLocale localeIdentifier];
        v35 = [v32 componentsFromLocaleIdentifier:localeIdentifier];
        v36 = [v35 objectForKeyedSubscript:*MEMORY[0x277CBE6C8]];
        [(PPScoreDict *)v23 setObject:v36 forIndex:5];

        statsCopy = v21;
        v7 = v42;

        [(PPScoreDict *)v23 setObject:v42 forIndex:7];
        earliestDate = [dateCopy earliestDate];
        [(PPScoreDict *)v23 setObject:earliestDate forIndex:9];

        latestDate = [dateCopy latestDate];
        [(PPScoreDict *)v23 setObject:latestDate forIndex:10];

        v39 = v11[3];
        v11[3] = v23;
      }

      else
      {
        v15 = v13;
        v13 = v11;
        v11 = 0;
      }

      v40 = v11;

      v11 = v13;
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  return v40;
}

- (void)startNewClusterWithDecayedFeedbackCounts:(void *)counts mostRelevantRecord:
{
  v21 = a2;
  if (self)
  {
    v5 = *(self + 24);
    countsCopy = counts;
    [v21 engagedExplicitly];
    *&v7 = v7;
    [v5 setScalarValue:13 forIndex:v7];
    [v21 engagedImplicitly];
    *&v8 = v8;
    [v5 setScalarValue:14 forIndex:v8];
    [v21 rejectedExplicitly];
    *&v9 = v9;
    [v5 setScalarValue:15 forIndex:v9];
    [v21 rejectedImplicitly];
    *&v10 = v10;
    [v5 setScalarValue:16 forIndex:v10];
    location = [countsCopy location];

    placemark = [location placemark];

    name = [placemark name];
    v14 = name;
    if (name)
    {
      v15 = name;
    }

    else
    {
      thoroughfare = [placemark thoroughfare];
      v17 = thoroughfare;
      if (thoroughfare)
      {
        locality = thoroughfare;
      }

      else
      {
        locality = [placemark locality];
      }

      v15 = locality;
    }

    *&v19 = [v15 length];
    [v5 setScalarValue:17 forIndex:v19];
    latestDate = [v21 latestDate];
    [v5 setObject:latestDate forIndex:11];
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
    v9[2] = __39__PPStreamingLocationScorer_addRecord___block_invoke;
    v9[3] = &unk_278976148;
    v9[4] = record;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __39__PPStreamingLocationScorer_addRecord___block_invoke_2;
    v7[3] = &unk_278976170;
    v8 = v3;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__PPStreamingLocationScorer_addRecord___block_invoke_3;
    v6[3] = &unk_278976170;
    v6[4] = record;
    [v5 evaluateWithPreviousStageSubscores:0 scoreInputInitializationBlock:v9 scoreInputAssignmentBlock:v7 outputBlock:v6];
  }
}

void __39__PPStreamingLocationScorer_addRecord___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 initialScore];
  *&v5 = v5;
  [v4 setScalarValue:0 forIndex:v5];
  *&v6 = [*(a1 + 32) extractionAssetVersion];
  [v4 setScalarValue:3 forIndex:v6];
  *&v7 = [*(a1 + 32) algorithm];
  [v4 setScalarValue:4 forIndex:v7];
  v8 = [*(a1 + 32) location];
  *&v9 = [v8 category];
  [v4 setScalarValue:5 forIndex:v9];

  [*(a1 + 32) sentimentScore];
  *&v10 = v10;
  [v4 setScalarValue:6 forIndex:v10];
  v11 = [*(a1 + 32) source];
  v12 = [v11 metadata];
  *&v13 = [v12 dwellTimeSeconds];
  [v4 setScalarValue:18 forIndex:v13];

  v14 = [*(a1 + 32) source];
  v15 = [v14 metadata];
  *&v16 = [v15 lengthSeconds];
  [v4 setScalarValue:19 forIndex:v16];

  v17 = [*(a1 + 32) source];
  v18 = [v17 metadata];
  *&v19 = [v18 lengthCharacters];
  [v4 setScalarValue:20 forIndex:v19];

  v20 = [*(a1 + 32) source];
  v21 = [v20 metadata];
  *&v22 = [v21 donationCount];
  [v4 setScalarValue:21 forIndex:v22];

  v23 = [*(a1 + 32) source];
  v24 = [v23 metadata];
  *&v25 = [v24 contactHandleCount];
  [v4 setScalarValue:22 forIndex:v25];

  v26 = [*(a1 + 32) source];
  v27 = [v26 metadata];
  v28 = [v27 flags];
  LODWORD(v29) = 1.0;
  if ((v28 & 1) == 0)
  {
    *&v29 = 0.0;
  }

  [v4 setScalarValue:23 forIndex:v29];

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

- (float)getFinalScoreWithAggregationResultOut:(uint64_t)out finalResultOut:
{
  if (!self)
  {
    return 0.0;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -957033984;
  v5 = *(self + 16);
  if (v5)
  {
    v6 = *(self + 32);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __82__PPStreamingLocationScorer_getFinalScoreWithAggregationResultOut_finalResultOut___block_invoke;
    v11[3] = &unk_278976148;
    v11[4] = self;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __82__PPStreamingLocationScorer_getFinalScoreWithAggregationResultOut_finalResultOut___block_invoke_3;
    v10[3] = &unk_2789761B8;
    v10[4] = &v12;
    v10[5] = out;
    [v5 evaluateWithPreviousStageSubscores:v6 scoreInputInitializationBlock:v11 scoreInputAssignmentBlock:&__block_literal_global_17388 outputBlock:v10];
  }

  if (location)
  {
    objc_storeStrong(location, *(self + 32));
  }

  [*(self + 8) cleanupReusableComponents];
  v7 = *(self + 16);
  if (v7)
  {
    [v7 cleanupReusableComponents];
  }

  v8 = v13[6];
  _Block_object_dispose(&v12, 8);
  return v8;
}

void __82__PPStreamingLocationScorer_getFinalScoreWithAggregationResultOut_finalResultOut___block_invoke_3(uint64_t a1, void *a2)
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