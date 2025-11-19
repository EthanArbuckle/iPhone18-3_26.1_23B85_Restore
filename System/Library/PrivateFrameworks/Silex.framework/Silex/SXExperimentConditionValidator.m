@interface SXExperimentConditionValidator
- (BOOL)validateCondition:(id)a3 context:(id)a4;
- (SXExperimentConditionValidator)initWithExperimentationManager:(id)a3;
@end

@implementation SXExperimentConditionValidator

- (SXExperimentConditionValidator)initWithExperimentationManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SXExperimentConditionValidator;
  v6 = [(SXExperimentConditionValidator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_experimentationManager, a3);
  }

  return v7;
}

- (BOOL)validateCondition:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = [a4 experiment];
  v8 = [v6 experimentTreatmentGroup];

  if (v8)
  {
    if (v7 && ([v7 expirationDate], v9 = objc_claimAutoreleasedReturnValue(), v9, v9) && (objc_msgSend(v7, "expirationDate"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isExpired"), v10, (v11 & 1) == 0))
    {
      v13 = [(SXExperimentConditionValidator *)self experimentationManager];
      v14 = [v13 getTreatmentGroupForExperiment:v7];

      v15 = [v6 experimentTreatmentGroup];
      v12 = [v14 isEqualToString:v15];
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