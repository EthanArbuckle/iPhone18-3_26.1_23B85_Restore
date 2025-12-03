@interface PowerUIModelPredictionContainer
- (PowerUIModelPredictionContainer)initWithEngagementConfidence:(double)confidence withSmartChargeDuration:(double)duration withModelVersion:(id)version;
- (id)initInvalidEntry:(unint64_t)entry withEngagementConfidence:(double)confidence withSmartChargeDuration:(double)duration withModelVersion:(id)version;
@end

@implementation PowerUIModelPredictionContainer

- (PowerUIModelPredictionContainer)initWithEngagementConfidence:(double)confidence withSmartChargeDuration:(double)duration withModelVersion:(id)version
{
  versionCopy = version;
  v13.receiver = self;
  v13.super_class = PowerUIModelPredictionContainer;
  v10 = [(PowerUIModelPredictionContainer *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_modelVersion, version);
    v11->_engagementConfidence = confidence;
    v11->_smartChargeDuration = duration;
    v11->_state = 0;
  }

  return v11;
}

- (id)initInvalidEntry:(unint64_t)entry withEngagementConfidence:(double)confidence withSmartChargeDuration:(double)duration withModelVersion:(id)version
{
  versionCopy = version;
  v15.receiver = self;
  v15.super_class = PowerUIModelPredictionContainer;
  v12 = [(PowerUIModelPredictionContainer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_state = entry;
    v12->_engagementConfidence = confidence;
    v12->_smartChargeDuration = duration;
    objc_storeStrong(&v12->_modelVersion, version);
  }

  return v13;
}

@end