@interface WiFiUsageLQMWindowAnalysisLinkTest
- (id)addDimensionsTo:(id)to;
@end

@implementation WiFiUsageLQMWindowAnalysisLinkTest

- (id)addDimensionsTo:(id)to
{
  v29 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v27.receiver = self;
  v27.super_class = WiFiUsageLQMWindowAnalysisLinkTest;
  v5 = [(WiFiUsageLQMWindowAnalysis *)&v27 addDimensionsTo:toCopy];
  v6 = toCopy;
  [toCopy setObject:self->_linkTestReason forKeyedSubscript:@"linktest_reason"];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  selfCopy = self;
  obj = [(WFMeasureResult *)self->_linkTestResults allPrimitiveProperties];
  v8 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [(WFMeasureResult *)self->_linkTestResults binnedProperty:v12];
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"linktest_%@", v12];
        [v6 setObject:v13 forKeyedSubscript:v14];
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v9);
  }

  typeAsString = [(WFMeasureResult *)self->_linkTestResults typeAsString];
  v16 = v6;
  [v6 setObject:typeAsString forKeyedSubscript:@"linktest_type"];

  statusForLocal = [(WFMeasureResult *)selfCopy->_linkTestResults statusForLocal];
  [v16 setValue:statusForLocal forKey:@"linktest_statusForLocal"];

  statusForInternet = [(WFMeasureResult *)selfCopy->_linkTestResults statusForInternet];
  [v16 setValue:statusForInternet forKey:@"linktest_statusForInternet"];

  statusForDNS = [(WFMeasureResult *)selfCopy->_linkTestResults statusForDNS];
  [v16 setValue:statusForDNS forKey:@"linktest_statusForDNS"];

  v20 = *MEMORY[0x277D85DE8];

  return v16;
}

@end