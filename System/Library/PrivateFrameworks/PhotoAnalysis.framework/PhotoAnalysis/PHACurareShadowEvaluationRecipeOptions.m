@interface PHACurareShadowEvaluationRecipeOptions
- (PHACurareShadowEvaluationRecipeOptions)init;
@end

@implementation PHACurareShadowEvaluationRecipeOptions

- (PHACurareShadowEvaluationRecipeOptions)init
{
  v10.receiver = self;
  v10.super_class = PHACurareShadowEvaluationRecipeOptions;
  v2 = [(PHAPrivateFederatedLearningRecipeOptions *)&v10 init];
  v3 = v2;
  if (v2)
  {
    trialDeploymentID = v2->_trialDeploymentID;
    v2->_trialDeploymentID = 0;

    trialExperimentID = v3->_trialExperimentID;
    v3->_trialExperimentID = 0;

    trialTreatmentID = v3->_trialTreatmentID;
    v3->_trialTreatmentID = 0;

    v7 = objc_alloc_init(MEMORY[0x277CBEA60]);
    modelInfoArray = v3->_modelInfoArray;
    v3->_modelInfoArray = v7;
  }

  return v3;
}

@end