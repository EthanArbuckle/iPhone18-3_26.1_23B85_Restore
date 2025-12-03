@interface REMLEntropyMetric
- (REMLEntropyMetric)initWithName:(id)name featureName:(id)featureName;
- (double)getDoubleFromFeatureValue:(id)value;
- (id)meanNormalizedEntropy;
- (void)reset;
- (void)updateMetricsFromFeatures:(id)features prediction:(id)prediction truth:(id)truth;
@end

@implementation REMLEntropyMetric

- (REMLEntropyMetric)initWithName:(id)name featureName:(id)featureName
{
  nameCopy = name;
  featureNameCopy = featureName;
  v17.receiver = self;
  v17.super_class = REMLEntropyMetric;
  v9 = [(REMLEntropyMetric *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_metricName, name);
    objc_storeStrong(&v10->_predictionFeatureName, featureName);
    objc_storeStrong(&v10->_truthFeatureName, featureName);
    v10->_arrayFeatureIndex = 0;
    v10->_calibrationCurveNumBuckets = 10;
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
    calibrationCurveTotal = v10->_calibrationCurveTotal;
    v10->_calibrationCurveTotal = v11;

    v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:v10->_calibrationCurveNumBuckets];
    calibrationCurveTrue = v10->_calibrationCurveTrue;
    v10->_calibrationCurveTrue = v13;

    [(REMLEntropyMetric *)v10 reset];
    v15 = v10;
  }

  return v10;
}

- (void)reset
{
  self->_normalizedLogScore = 0.0;
  *&self->_sumPrediction = 0u;
  *&self->_numExamples = 0u;
  if (self->_calibrationCurveNumBuckets)
  {
    v3 = 0;
    do
    {
      [(NSMutableArray *)self->_calibrationCurveTotal setObject:&unk_283BBD830 atIndexedSubscript:v3];
      [(NSMutableArray *)self->_calibrationCurveTrue setObject:&unk_283BBD830 atIndexedSubscript:v3++];
    }

    while (v3 < self->_calibrationCurveNumBuckets);
  }
}

- (id)meanNormalizedEntropy
{
  normalizedLogScore = self->_normalizedLogScore;
  v3 = 0.0;
  if (normalizedLogScore != 0.0)
  {
    v3 = self->_logScore / normalizedLogScore;
  }

  return [MEMORY[0x277CCABB0] numberWithDouble:v3];
}

- (double)getDoubleFromFeatureValue:(id)value
{
  valueCopy = value;
  v5 = valueCopy;
  v6 = 0.0;
  if (valueCopy)
  {
    type = [valueCopy type];
    switch(type)
    {
      case 1:
        if ([v5 int64Value])
        {
          v6 = 1.0;
        }

        else
        {
          v6 = 0.0;
        }

        break;
      case 2:
        [v5 doubleValue];
        v6 = v11;
        break;
      case 5:
        multiArrayValue = [v5 multiArrayValue];
        v9 = [multiArrayValue objectAtIndexedSubscript:self->_arrayFeatureIndex];
        [v9 doubleValue];
        v6 = v10;

        break;
    }
  }

  return v6;
}

- (void)updateMetricsFromFeatures:(id)features prediction:(id)prediction truth:(id)truth
{
  predictionCopy = prediction;
  truthCopy = truth;
  ++self->_numExamples;
  v8 = [predictionCopy featureValueForName:self->_predictionFeatureName];
  v9 = [truthCopy featureValueForName:self->_truthFeatureName];
  [(REMLEntropyMetric *)self getDoubleFromFeatureValue:v8];
  __x = v10;
  [(REMLEntropyMetric *)self getDoubleFromFeatureValue:v9];
  v12.f64[0] = v11;
  v12.f64[1] = __x;
  v13 = vaddq_f64(v12, *&self->_sumTruth);
  *&self->_sumTruth = v13;
  v14 = v13.f64[0] / self->_numExamples;
  v24 = v11;
  if (v11 > 0.0)
  {
    self->_logScore = self->_logScore + v11 * log(__x);
    self->_normalizedLogScore = self->_normalizedLogScore + v24 * log(v14);
    v11 = v24;
  }

  if (v11 < 1.0)
  {
    self->_logScore = self->_logScore + (1.0 - v24) * log(1.0 - __x);
    self->_normalizedLogScore = self->_normalizedLogScore + (1.0 - v24) * log(1.0 - v14);
  }

  v15 = fmin(__x * self->_calibrationCurveNumBuckets, (self->_calibrationCurveNumBuckets - 1));
  v16 = MEMORY[0x277CCABB0];
  v17 = [(NSMutableArray *)self->_calibrationCurveTotal objectAtIndexedSubscript:v15];
  v18 = [v16 numberWithInt:{objc_msgSend(v17, "intValue") + 1}];
  [(NSMutableArray *)self->_calibrationCurveTotal setObject:v18 atIndexedSubscript:v15];

  v19 = MEMORY[0x277CCABB0];
  v20 = [(NSMutableArray *)self->_calibrationCurveTrue objectAtIndexedSubscript:v15];
  [v20 doubleValue];
  v22 = [v19 numberWithDouble:v24 + v21];
  [(NSMutableArray *)self->_calibrationCurveTrue setObject:v22 atIndexedSubscript:v15];
}

@end