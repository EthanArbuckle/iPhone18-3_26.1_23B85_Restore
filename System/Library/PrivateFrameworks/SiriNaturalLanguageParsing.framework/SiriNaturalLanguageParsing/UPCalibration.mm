@interface UPCalibration
+ (id)calibrateCandidate:(id)candidate withCalibrationScore:(double)score;
+ (id)calibrateResult:(id)result withCalibrationScore:(double)score;
- (id)calibrateParserResults:(id)results withCalibrationScores:(id)scores error:(id *)error;
@end

@implementation UPCalibration

- (id)calibrateParserResults:(id)results withCalibrationScores:(id)scores error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  scoresCopy = scores;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = resultsCopy;
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
        v17 = [scoresCopy objectForKey:v15];
        v18 = v17;
        if (v17)
        {
          [v17 doubleValue];
          v19 = [UPCalibration calibrateResult:v16 withCalibrationScore:?];
          [dictionary setObject:v19 forKey:v15];
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

          [dictionary setObject:v16 forKey:v15];
        }
      }

      v12 = [v9 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v12);
  }

  v21 = *MEMORY[0x277D85DE8];

  return dictionary;
}

+ (id)calibrateCandidate:(id)candidate withCalibrationScore:(double)score
{
  candidateCopy = candidate;
  [candidateCopy uncalibratedProbability];
  v7 = v6 * score;
  v8 = [UPResultCandidate alloc];
  [candidateCopy uncalibratedProbability];
  v10 = v9;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
  utterance = [candidateCopy utterance];
  intent = [candidateCopy intent];
  entities = [candidateCopy entities];
  modelIdentifier = [candidateCopy modelIdentifier];
  task = [candidateCopy task];

  v17 = [(UPResultCandidate *)v8 initWithUncalibratedProbability:v11 calibratedProbability:utterance utterance:intent intent:entities entities:modelIdentifier modelIdentifier:task task:v10];

  return v17;
}

+ (id)calibrateResult:(id)result withCalibrationScore:(double)score
{
  resultCopy = result;
  array = [MEMORY[0x277CBEB18] array];
  candidateCount = [resultCopy candidateCount];
  if (candidateCount >= 1)
  {
    v8 = candidateCount;
    for (i = 0; i != v8; ++i)
    {
      v10 = [resultCopy candidateAtRank:i];
      v11 = [UPCalibration calibrateCandidate:v10 withCalibrationScore:score];
      [array addObject:v11];
    }
  }

  v12 = [UPResult alloc];
  queryUUID = [resultCopy queryUUID];
  v14 = [(UPResult *)v12 initWithCandidates:array queryUUID:queryUUID];

  return v14;
}

@end