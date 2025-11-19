@interface RTVisitRedactionMetric
- (RTVisitRedactionMetric)init;
- (id)metricDictionary;
@end

@implementation RTVisitRedactionMetric

- (RTVisitRedactionMetric)init
{
  v7.receiver = self;
  v7.super_class = RTVisitRedactionMetric;
  v2 = [(RTVisitRedactionMetric *)&v7 init];
  v3 = v2;
  if (v2)
  {
    countBins = v2->_countBins;
    v2->_countBins = &unk_2845A1328;

    proportionBins = v3->_proportionBins;
    v3->_proportionBins = &unk_2845A1340;
  }

  return v3;
}

- (id)metricDictionary
{
  v24[6] = *MEMORY[0x277D85DE8];
  v3 = [(RTVisitRedactionMetric *)self redactedForAuthorizedLocation];
  v4 = [(RTVisitRedactionMetric *)self redactedForCategory];
  v5 = [(RTVisitRedactionMetric *)self redactedForConfidence];
  v6 = [(RTVisitRedactionMetric *)self redactedForRegion];
  v7 = [(RTVisitRedactionMetric *)self redactedForPlaceType];
  if ([(RTVisitRedactionMetric *)self visitsConsideredCount])
  {
    v8 = (v4 + v3 + v5 + v6 + v7) / [(RTVisitRedactionMetric *)self visitsConsideredCount];
  }

  else
  {
    v8 = 0.0;
  }

  v23[0] = @"redactedForAuthorizedLocation";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTVisitRedactionMetric redactedForAuthorizedLocation](self, "redactedForAuthorizedLocation")}];
  v21 = [RTMetric binForNumber:v22 bins:self->_countBins];
  v24[0] = v21;
  v23[1] = @"redactedForCategory";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTVisitRedactionMetric redactedForCategory](self, "redactedForCategory")}];
  v9 = [RTMetric binForNumber:v20 bins:self->_countBins];
  v24[1] = v9;
  v23[2] = @"redactedForConfidence";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTVisitRedactionMetric redactedForConfidence](self, "redactedForConfidence")}];
  v11 = [RTMetric binForNumber:v10 bins:self->_countBins];
  v24[2] = v11;
  v23[3] = @"redactedForPlaceType";
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTVisitRedactionMetric redactedForPlaceType](self, "redactedForPlaceType")}];
  v13 = [RTMetric binForNumber:v12 bins:self->_countBins];
  v24[3] = v13;
  v23[4] = @"redactedForRegion";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RTVisitRedactionMetric redactedForRegion](self, "redactedForRegion")}];
  v15 = [RTMetric binForNumber:v14 bins:self->_countBins];
  v24[4] = v15;
  v23[5] = @"redactionProportion";
  v16 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
  v17 = [RTMetric binForNumber:v16 bins:self->_proportionBins];
  v24[5] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:6];

  return v18;
}

@end