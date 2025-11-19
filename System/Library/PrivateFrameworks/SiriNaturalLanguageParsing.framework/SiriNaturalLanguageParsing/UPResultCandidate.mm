@interface UPResultCandidate
+ (id)_buildCandidateEntitiesByStartIndex:(id)a3;
- (NSString)annotatedString;
- (SIRINLUEXTERNALUserParse)protobufRepresentation;
- (UPResultCandidate)initWithUncalibratedProbability:(double)a3 calibratedProbability:(id)a4 utterance:(id)a5 intent:(id)a6 entities:(id)a7 modelIdentifier:(id)a8 task:(id)a9;
- (double)bestAvailableProbability;
- (double)probability;
- (id)_intermediateNodeRepresentations:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation UPResultCandidate

- (double)bestAvailableProbability
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [(UPResultCandidate *)self calibratedProbability];

  v4 = SNLPOSLoggerForCategory(3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (v5)
    {
      [(UPResultCandidate *)self uncalibratedProbability];
      v7 = v6;
      v8 = [(UPResultCandidate *)self calibratedProbability];
      v16 = 134218242;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "Result candidate has uncalibrated probability %f and calibrated probability %@. Using calibrated value.", &v16, 0x16u);
    }

    v9 = [(UPResultCandidate *)self calibratedProbability];
    [v9 doubleValue];
    v11 = v10;
  }

  else
  {
    if (v5)
    {
      [(UPResultCandidate *)self uncalibratedProbability];
      v16 = 134217984;
      v17 = v12;
      _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "Result candidate has uncalibrated probability %f and no calibrated probability. Using uncalibrated value.", &v16, 0xCu);
    }

    [(UPResultCandidate *)self uncalibratedProbability];
    v11 = v13;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (SIRINLUEXTERNALUserParse)protobufRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277D5DDE0]);
  [(UPResultCandidate *)self bestAvailableProbability];
  [v3 setProbability:?];
  v4 = MEMORY[0x277CBEB18];
  v5 = MEMORY[0x277D5DEF0];
  v6 = [(UPResultCandidate *)self task];
  v7 = [v5 convertFromUserDialogAct:v6];
  v8 = [v4 arrayWithObject:v7];
  [v3 setUserDialogActs:v8];

  v9 = objc_alloc_init(MEMORY[0x277D5DDB8]);
  [v9 setAlgorithm:2];
  [v9 setParserId:6];
  [v3 setParser:v9];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [UPResultCandidate allocWithZone:a3];
  [(UPResultCandidate *)self uncalibratedProbability];
  v6 = v5;
  v7 = [(UPResultCandidate *)self calibratedProbability];
  v8 = [(UPResultCandidate *)self utterance];
  v9 = [(UPResultCandidate *)self intent];
  v10 = [(UPResultCandidate *)self entities];
  v11 = [(UPResultCandidate *)self modelIdentifier];
  v12 = [(UPResultCandidate *)self task];
  v13 = [(UPResultCandidate *)v4 initWithUncalibratedProbability:v7 calibratedProbability:v8 utterance:v9 intent:v10 entities:v11 modelIdentifier:v12 task:v6];

  return v13;
}

- (id)_intermediateNodeRepresentations:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v49;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v49 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v48 + 1) + 8 * i);
        v10 = [v9 higherLevelParentLabel];
        v11 = [v9 higherLevelChildLabel];
        v12 = [UPResultLeafNode alloc];
        v13 = [v9 text];
        v14 = [v9 semanticValue];
        v15 = [(UPResultLeafNode *)v12 initWithLabel:v11 andText:v13 andSemanticValue:v14];

        v16 = [v4 objectForKey:v10];

        if (!v16)
        {
          v17 = [MEMORY[0x277CBEB38] dictionary];
          [v4 setObject:v17 forKey:v10];
        }

        v18 = [v4 objectForKey:v10];
        v19 = [v9 groupId];
        if (v19)
        {
          [v9 groupId];
        }

        else
        {
          [MEMORY[0x277CCABB0] numberWithLong:0x7FFFFFFFFFFFFFFFLL];
        }
        v20 = ;

        v21 = [v18 objectForKey:v20];

        if (!v21)
        {
          v22 = [MEMORY[0x277CBEB18] array];
          [v18 setObject:v22 forKey:v20];
        }

        v23 = [v18 objectForKey:v20];
        [v23 addObject:v15];
      }

      v6 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
    }

    while (v6);
  }

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v39 = v4;
  v38 = [v39 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v38)
  {
    v37 = *v45;
    do
    {
      for (j = 0; j != v38; ++j)
      {
        if (*v45 != v37)
        {
          objc_enumerationMutation(v39);
        }

        v26 = *(*(&v44 + 1) + 8 * j);
        v27 = [v39 objectForKey:v26];
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v28 = [v27 countByEnumeratingWithState:&v40 objects:v52 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v41;
          do
          {
            for (k = 0; k != v29; ++k)
            {
              if (*v41 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = [v27 objectForKey:*(*(&v40 + 1) + 8 * k)];
              v33 = [[UPResultIntermediateNode alloc] initWithLabel:v26 andLeafNodes:v32];
              [v24 addObject:v33];
            }

            v29 = [v27 countByEnumeratingWithState:&v40 objects:v52 count:16];
          }

          while (v29);
        }
      }

      v38 = [v39 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v38);
  }

  v34 = *MEMORY[0x277D85DE8];

  return v24;
}

- (UPResultCandidate)initWithUncalibratedProbability:(double)a3 calibratedProbability:(id)a4 utterance:(id)a5 intent:(id)a6 entities:(id)a7 modelIdentifier:(id)a8 task:(id)a9
{
  v27 = a4;
  v26 = a5;
  v25 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v28.receiver = self;
  v28.super_class = UPResultCandidate;
  v20 = [(UPResultCandidate *)&v28 init];
  v21 = v20;
  if (v20)
  {
    v20->_uncalibratedProbability = a3;
    objc_storeStrong(&v20->_calibratedProbability, a4);
    objc_storeStrong(&v21->_utterance, a5);
    objc_storeStrong(&v21->_intent, a6);
    objc_storeStrong(&v21->_entities, a7);
    v22 = [UPResultCandidate _buildCandidateEntitiesByStartIndex:v21->_entities];
    candidateEntitiesByStartIndex = v21->__candidateEntitiesByStartIndex;
    v21->__candidateEntitiesByStartIndex = v22;

    objc_storeStrong(&v21->_modelIdentifier, a8);
    objc_storeStrong(&v21->_task, a9);
  }

  return v21;
}

- (double)probability
{
  calibratedProbability = self->_calibratedProbability;
  if (!calibratedProbability)
  {
    return self->_uncalibratedProbability;
  }

  [(NSNumber *)calibratedProbability doubleValue];
  return result;
}

- (NSString)annotatedString
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = [(NSString *)self->_utterance length];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      candidateEntitiesByStartIndex = self->__candidateEntitiesByStartIndex;
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
      v9 = [(NSDictionary *)candidateEntitiesByStartIndex objectForKey:v8];

      if (v9)
      {
        v10 = [v9 annotatedEntityFragmentString];
        [v3 appendString:v10];

        v11 = [v9 text];
        v12 = [v11 length];
      }

      else
      {
        v15 = [(NSString *)self->_utterance characterAtIndex:v6];
        v13 = [MEMORY[0x277CCACA8] stringWithCharacters:&v15 length:1];
        [v3 appendString:v13];

        v12 = 1;
      }

      v6 += v12;
    }

    while (v6 < v5);
  }

  [v3 appendString:@"\n"];
  [v3 appendString:@"- "];
  [v3 appendString:self->_intent];
  [v3 appendString:@"\n"];

  return v3;
}

+ (id)_buildCandidateEntitiesByStartIndex:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "range", v14)}];
        [v4 setObject:v10 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

@end