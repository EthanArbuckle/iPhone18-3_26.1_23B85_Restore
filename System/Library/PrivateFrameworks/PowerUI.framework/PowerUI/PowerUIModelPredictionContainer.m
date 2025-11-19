@interface PowerUIModelPredictionContainer
- (PowerUIModelPredictionContainer)initWithEngagementConfidence:(double)a3 withSmartChargeDuration:(double)a4 withModelVersion:(id)a5;
- (id)initInvalidEntry:(unint64_t)a3 withEngagementConfidence:(double)a4 withSmartChargeDuration:(double)a5 withModelVersion:(id)a6;
@end

@implementation PowerUIModelPredictionContainer

- (PowerUIModelPredictionContainer)initWithEngagementConfidence:(double)a3 withSmartChargeDuration:(double)a4 withModelVersion:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = PowerUIModelPredictionContainer;
  v10 = [(PowerUIModelPredictionContainer *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_modelVersion, a5);
    v11->_engagementConfidence = a3;
    v11->_smartChargeDuration = a4;
    v11->_state = 0;
  }

  return v11;
}

- (id)initInvalidEntry:(unint64_t)a3 withEngagementConfidence:(double)a4 withSmartChargeDuration:(double)a5 withModelVersion:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = PowerUIModelPredictionContainer;
  v12 = [(PowerUIModelPredictionContainer *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_state = a3;
    v12->_engagementConfidence = a4;
    v12->_smartChargeDuration = a5;
    objc_storeStrong(&v12->_modelVersion, a6);
  }

  return v13;
}

@end