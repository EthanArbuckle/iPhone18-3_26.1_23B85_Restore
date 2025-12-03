@interface SXExperimentConditionValidator
- (BOOL)validateCondition:(id)condition context:(id)context;
- (SXExperimentConditionValidator)initWithExperimentationManager:(id)manager;
@end

@implementation SXExperimentConditionValidator

- (SXExperimentConditionValidator)initWithExperimentationManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = SXExperimentConditionValidator;
  v6 = [(SXExperimentConditionValidator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_experimentationManager, manager);
  }

  return v7;
}

- (BOOL)validateCondition:(id)condition context:(id)context
{
  conditionCopy = condition;
  experiment = [context experiment];
  experimentTreatmentGroup = [conditionCopy experimentTreatmentGroup];

  if (experimentTreatmentGroup)
  {
    if (experiment && ([experiment expirationDate], v9 = objc_claimAutoreleasedReturnValue(), v9, v9) && (objc_msgSend(experiment, "expirationDate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isExpired"), v10, (v11 & 1) == 0))
    {
      experimentationManager = [(SXExperimentConditionValidator *)self experimentationManager];
      v14 = [experimentationManager getTreatmentGroupForExperiment:experiment];

      experimentTreatmentGroup2 = [conditionCopy experimentTreatmentGroup];
      v12 = [v14 isEqualToString:experimentTreatmentGroup2];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

@end