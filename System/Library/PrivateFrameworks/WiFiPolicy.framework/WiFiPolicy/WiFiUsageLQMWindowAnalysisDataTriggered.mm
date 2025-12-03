@interface WiFiUsageLQMWindowAnalysisDataTriggered
- (id)addDimensionsTo:(id)to;
- (void)performAnalysis;
@end

@implementation WiFiUsageLQMWindowAnalysisDataTriggered

- (void)performAnalysis
{
  v9.receiver = self;
  v9.super_class = WiFiUsageLQMWindowAnalysisDataTriggered;
  reason = [(WiFiUsageLQMWindowAnalysis *)&v9 reason];
  dataTriggerReason = self->_dataTriggerReason;
  triggerCriteriaList = self->_triggerCriteriaList;
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"matched == YES OR lastTriggered != NIL"];
  v7 = [(NSArray *)triggerCriteriaList filteredArrayUsingPredicate:v6];
  NSLog(&cfstr_SPerformingLqm.isa, "[WiFiUsageLQMWindowAnalysisDataTriggered performAnalysis]", reason, dataTriggerReason, v7);

  v8.receiver = self;
  v8.super_class = WiFiUsageLQMWindowAnalysisDataTriggered;
  [(WiFiUsageLQMWindowAnalysis *)&v8 performAnalysis];
}

- (id)addDimensionsTo:(id)to
{
  v30 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v28.receiver = self;
  v28.super_class = WiFiUsageLQMWindowAnalysisDataTriggered;
  v5 = [(WiFiUsageLQMWindowAnalysis *)&v28 addDimensionsTo:toCopy];
  v22 = toCopy;
  [toCopy setObject:self->_dataTriggerReason forKeyedSubscript:@"datatriggeredReason"];
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
          shortPredicateNoSpaces = [v11 shortPredicateNoSpaces];
          matched = [v11 matched];
          v14 = @"false";
          if (matched)
          {
            v14 = @"true";
          }

          [v6 appendFormat:@"%@:%@&", shortPredicateNoSpaces, v14];

          lastTriggered = [v11 lastTriggered];

          if (lastTriggered)
          {
            lastTriggered2 = [v11 lastTriggered];
            firstTriggered = [v11 firstTriggered];
            [lastTriggered2 timeIntervalSinceDate:firstTriggered];
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