@interface WiFiUsageLQMWindowAnalysisLinkDown
- (id)addDimensionsTo:(id)a3;
@end

@implementation WiFiUsageLQMWindowAnalysisLinkDown

- (id)addDimensionsTo:(id)a3
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v45.receiver = self;
  v45.super_class = WiFiUsageLQMWindowAnalysisLinkDown;
  v5 = [(WiFiUsageLQMWindowAnalysis *)&v45 addDimensionsTo:v4];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", self->_isInvoluntary];
  [v4 setObject:v6 forKeyedSubscript:@"linkdownIsInVoluntary"];

  [v4 setObject:self->_linkDownReason forKeyedSubscript:@"linkdownReason"];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", self->_linkDownSubreason];
  [v4 setObject:v7 forKeyedSubscript:@"linkdownSubReason"];

  linkUpDuration = self->_linkUpDuration;
  if (linkUpDuration == 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setObject:0 forKeyedSubscript:@"linkupDuration"];
  }

  else
  {
    v9 = [WiFiUsageLQMTransformations getBinTimeIntervalUpTo12h:1 As:linkUpDuration];
    [v4 setObject:v9 forKeyedSubscript:@"linkupDuration"];
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40.receiver = self;
  v40.super_class = WiFiUsageLQMWindowAnalysisLinkDown;
  v10 = [(WiFiUsageLQMWindowAnalysis *)&v40 subsequentTriggers];
  v11 = MEMORY[0x277CBEA60];
  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:1];
  v13 = [v11 arrayWithObject:v12];
  v14 = [v10 sortedArrayUsingDescriptors:v13];

  v15 = [v14 countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v41 + 1) + 8 * i);
        v20 = [v19 reason];

        if (v20 == @"Join")
        {
          v39.receiver = self;
          v39.super_class = WiFiUsageLQMWindowAnalysisLinkDown;
          v21 = [(WiFiUsageLQMWindowAnalysis *)&v39 timestamp];
          v22 = [v19 timestamp];
          [v21 timeIntervalSinceDate:v22];
          v23 = [WiFiUsageLQMTransformations getBinTimeIntervalUpTo60s:1 As:?];
          [v4 setObject:v23 forKeyedSubscript:@"timeToJoin"];

          goto LABEL_14;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v38.receiver = self;
  v38.super_class = WiFiUsageLQMWindowAnalysisLinkDown;
  v24 = [(WiFiUsageLQMWindowAnalysis *)&v38 windowBeforeTrigger];
  v25 = [v24 samples];
  v26 = [v25 lastObject];

  v27 = [WiFiUsageLQMTransformations numberForKeyPath:@"driverRoamRecommended" ofObject:v26];
  [v4 setObject:v27 forKeyedSubscript:@"roamingRecommended"];

  v28 = [WiFiUsageLQMTransformations numberForKeyPath:@"driverTDrecommended" ofObject:v26];
  [v4 setObject:v28 forKeyedSubscript:@"tdRecommended"];

  v29 = [WiFiUsageLQMTransformations numberForKeyPath:@"chanQualScore" ofObject:v26];
  [v4 setObject:v29 forKeyedSubscript:@"last_chanQualScore_before"];

  v30 = [WiFiUsageLQMTransformations numberForKeyPath:@"txLatencyScore" ofObject:v26];
  [v4 setObject:v30 forKeyedSubscript:@"last_txLatencyScore_before"];

  v31 = [WiFiUsageLQMTransformations numberForKeyPath:@"rxLatencyScore" ofObject:v26];
  [v4 setObject:v31 forKeyedSubscript:@"last_rxLatencyScore_before"];

  v32 = [WiFiUsageLQMTransformations numberForKeyPath:@"txLossScore" ofObject:v26];
  [v4 setObject:v32 forKeyedSubscript:@"last_txLossScore_before"];

  v33 = [WiFiUsageLQMTransformations numberForKeyPath:@"rxLossScore" ofObject:v26];
  [v4 setObject:v33 forKeyedSubscript:@"last_rxLossScore_before"];

  v34 = [WiFiUsageLQMTransformations numberForKeyPath:@"txLatencyP95" ofObject:v26];
  v35 = +[WiFiUsageLQMSample binLabelfromFieldName:value:](WiFiUsageLQMUserSample, "binLabelfromFieldName:value:", @"txLatencyP95", [v34 integerValue]);
  [v4 setObject:v35 forKeyedSubscript:@"last_txLatencyP95_before"];

  v36 = *MEMORY[0x277D85DE8];

  return v4;
}

@end