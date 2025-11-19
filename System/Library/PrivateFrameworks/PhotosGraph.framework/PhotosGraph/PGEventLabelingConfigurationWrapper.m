@interface PGEventLabelingConfigurationWrapper
- (PGEventLabelingConfigurationWrapper)init;
- (double)highPrecisionThresholdForMeaningLabel:(id)a3;
- (double)highRecallThresholdForMeaningLabel:(id)a3;
@end

@implementation PGEventLabelingConfigurationWrapper

- (double)highRecallThresholdForMeaningLabel:(id)a3
{
  v3 = [(PGEventLabelingConfiguration *)self->_configuration thresholdsBy:a3];
  [v3 highRecallThreshold];
  v5 = v4;

  return v5;
}

- (double)highPrecisionThresholdForMeaningLabel:(id)a3
{
  v3 = [(PGEventLabelingConfiguration *)self->_configuration thresholdsBy:a3];
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