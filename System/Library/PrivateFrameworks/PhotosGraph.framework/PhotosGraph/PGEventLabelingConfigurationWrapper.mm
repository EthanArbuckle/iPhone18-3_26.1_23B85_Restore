@interface PGEventLabelingConfigurationWrapper
- (PGEventLabelingConfigurationWrapper)init;
- (double)highPrecisionThresholdForMeaningLabel:(id)label;
- (double)highRecallThresholdForMeaningLabel:(id)label;
@end

@implementation PGEventLabelingConfigurationWrapper

- (double)highRecallThresholdForMeaningLabel:(id)label
{
  v3 = [(PGEventLabelingConfiguration *)self->_configuration thresholdsBy:label];
  [v3 highRecallThreshold];
  v5 = v4;

  return v5;
}

- (double)highPrecisionThresholdForMeaningLabel:(id)label
{
  v3 = [(PGEventLabelingConfiguration *)self->_configuration thresholdsBy:label];
  [v3 highPrecisionThreshold];
  v5 = v4;

  return v5;
}

- (PGEventLabelingConfigurationWrapper)init
{
  v6.receiver = self;
  v6.super_class = PGEventLabelingConfigurationWrapper;
  v2 = [(PGEventLabelingConfigurationWrapper *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(PGEventLabelingConfiguration);
    configuration = v2->_configuration;
    v2->_configuration = v3;
  }

  return v2;
}

@end