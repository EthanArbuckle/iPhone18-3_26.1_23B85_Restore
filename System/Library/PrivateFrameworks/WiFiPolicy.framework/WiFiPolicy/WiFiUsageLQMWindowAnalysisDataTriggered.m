@interface WiFiUsageLQMWindowAnalysisDataTriggered
- (id)addDimensionsTo:(id)a3;
- (void)performAnalysis;
@end

@implementation WiFiUsageLQMWindowAnalysisDataTriggered

- (void)performAnalysis
{
  v9.receiver = self;
  v9.super_class = WiFiUsageLQMWindowAnalysisDataTriggered;
  v3 = [(WiFiUsageLQMWindowAnalysis *)&v9 reason];
  dataTriggerReason = self->_dataTriggerReason;
  triggerCriteriaList = self->_triggerCriteriaList;
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"matched == YES OR lastTriggered != NIL"];
  v7 = [(NSArray *)triggerCriteriaList filteredArrayUsingPredicate:v6];
  NSLog(&cfstr_SPerformingLqm.isa, "[WiFiUsageLQMWindowAnalysisDataTriggered performAnalysis]", v3, dataTriggerReason, v7);

  v8.receiver = self;
  v8.super_class = WiFiUsageLQMWindowAnalysisDataTriggered;
  [(WiFiUsageLQMWindowAnalysis *)&v8 performAnalysis];
}

- (id)addDimensionsTo:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28.receiver = self;
  v28.super_class = WiFiUsageLQMWindowAnalysisDataTriggered;
  v5 = [(WiFiUsageLQMWindowAnalysis *)&v28 addDimensionsTo:v4];
  v22 = v4;
  [v4 setObject:self->_dataTriggerReason forKeyedSubscript:@"datatriggeredReason"];
  v6 = objc_opt_new();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->_triggerCriteriaList;
  v7 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        if (([v11 valid] & 1) != 0 || !-[NSString isEqualToString:](self->_dataTriggerReason, "isEqualToString:", @"Match Start"))
        {
          v12 = [v11 shortPredicateNoSpaces];
          v13 = [v11 matched];
          v14 = @"false";
          if (v13)
          {
            v14 = @"true";
          }

          [v6 appendFormat:@"%@:%@&", v12, v14];

          v15 = [v11 lastTriggered];

          if (v15)
          {
            v16 = [v11 lastTriggered];
            v17 = [v11 firstTriggered];
            [v16 timeIntervalSinceDate:v17];
            v18 = [WiFiUsageLQMTransformations getBinTimeIntervalUpTo12h:1 As:?];
            v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"datatriggered_criteria%lu_duration", -[NSArray indexOfObject:](self->_triggerCriteriaList, "indexOfObject:", v11)];
            [v22 setObject:v18 forKeyedSubscript:v19];
          }
        }
      }

      v8 = [(NSArray *)obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }

  [v22 setObject:v6 forKeyedSubscript:@"datatriggeredCriteria"];
  v20 = *MEMORY[0x277D85DE8];

  return v22;
}

@end