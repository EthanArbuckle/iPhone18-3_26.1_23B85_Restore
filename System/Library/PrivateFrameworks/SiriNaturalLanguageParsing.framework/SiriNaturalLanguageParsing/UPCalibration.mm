@interface UPCalibration
+ (id)calibrateCandidate:(id)a3 withCalibrationScore:(double)a4;
+ (id)calibrateResult:(id)a3 withCalibrationScore:(double)a4;
- (id)calibrateParserResults:(id)a3 withCalibrationScores:(id)a4 error:(id *)a5;
@end

@implementation UPCalibration

- (id)calibrateParserResults:(id)a3 withCalibrationScores:(id)a4 error:(id *)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CBEB38] dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v10)
  {
    v12 = v10;
    v13 = *v25;
    *&v11 = 138412290;
    v23 = v11;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        v16 = [v9 objectForKey:{v15, v23, v24}];
        v17 = [v7 objectForKey:v15];
        v18 = v17;
        if (v17)
        {
          [v17 doubleValue];
          v19 = [UPCalibration calibrateResult:v16 withCalibrationScore:?];
          [v8 setObject:v19 forKey:v15];
        }

        else
        {
          v20 = SNLPOSLoggerForCategory(3);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            *buf = v23;
            v29 = v15;
            _os_log_impl(&dword_22284A000, v20, OS_LOG_TYPE_DEBUG, "No calibration score found for parser result with bundle modelIdentifier: %@", buf, 0xCu);
          }

          [v8 setObject:v16 forKey:v15];
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v12);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)calibrateCandidate:(id)a3 withCalibrationScore:(double)a4
{
  v5 = a3;
  [v5 uncalibratedProbability];
  v7 = v6 * a4;
  v8 = [UPResultCandidate alloc];
  [v5 uncalibratedProbability];
  v10 = v9;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  v12 = [v5 utterance];
  v13 = [v5 intent];
  v14 = [v5 entities];
  v15 = [v5 modelIdentifier];
  v16 = [v5 task];

  v17 = [(UPResultCandidate *)v8 initWithUncalibratedProbability:v11 calibratedProbability:v12 utterance:v13 intent:v14 entities:v15 modelIdentifier:v16 task:v10];

  return v17;
}

+ (id)calibrateResult:(id)a3 withCalibrationScore:(double)a4
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [v5 candidateCount];
  if (v7 >= 1)
  {
    v8 = v7;
    for (i = 0; i != v8; ++i)
    {
      v10 = [v5 candidateAtRank:i];
      v11 = [UPCalibration calibrateCandidate:v10 withCalibrationScore:a4];
      [v6 addObject:v11];
    }
  }

  v12 = [UPResult alloc];
  v13 = [v5 queryUUID];
  v14 = [(UPResult *)v12 initWithCandidates:v6 queryUUID:v13];

  return v14;
}

@end