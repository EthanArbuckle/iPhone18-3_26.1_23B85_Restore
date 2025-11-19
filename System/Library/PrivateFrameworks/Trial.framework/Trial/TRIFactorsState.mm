@interface TRIFactorsState
- (BOOL)isEqual:(id)a3;
- (TRIFactorsState)initWithCoder:(id)a3;
- (TRIFactorsState)initWithPersisted:(id)a3;
- (id)persisted;
@end

@implementation TRIFactorsState

- (BOOL)isEqual:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

- (TRIFactorsState)initWithPersisted:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"TRIFactorsState.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"persisted"}];
  }

  if ([v5 stateOneOfCase] == 2)
  {
    v6 = [v5 experiment];
    if (![(TRIExperimentDeployment *)v6 hasExperimentId])
    {
      v18 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v7 = [v5 experiment];
    v8 = [v7 experimentId];
    if (![v8 length])
    {

      v18 = 0;
LABEL_13:

      goto LABEL_14;
    }

    v9 = [v5 experiment];
    v10 = [v9 hasDeploymentId];

    if (v10)
    {
      v11 = [TRIExperimentDeployment alloc];
      v12 = [v5 experiment];
      v13 = [v12 experimentId];
      v14 = [v5 experiment];
      v6 = -[TRIExperimentDeployment initWithExperimentId:deploymentId:](v11, "initWithExperimentId:deploymentId:", v13, [v14 deploymentId]);

      v15 = [TRIExperimentFactorsState alloc];
      v7 = [v5 experiment];
      if ([v7 hasTreatmentId])
      {
        v16 = [v5 experiment];
        v17 = [v16 treatmentId];
        v18 = [(TRIExperimentFactorsState *)v15 initWithDeployment:v6 treatmentId:v17];
      }

      else
      {
        v18 = [(TRIExperimentFactorsState *)v15 initWithDeployment:v6 treatmentId:0];
      }

      goto LABEL_13;
    }
  }

  v18 = 0;
LABEL_15:

  return v18;
}

- (id)persisted
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"TRIFactorsState.m" lineNumber:70 description:@"not implemented"];

  return 0;
}

- (TRIFactorsState)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (v5)
  {
    v11 = 0;
    v6 = [(TRIPBMessage *)TRIPersistedFactorsState parseFromData:v5 error:&v11];
    v7 = v11;
    if (v6)
    {
      self = [(TRIFactorsState *)self initWithPersisted:v6];
      v8 = self;
    }

    else
    {
      [v4 failWithError:v7];
      v8 = 0;
    }
  }

  else
  {
    v9 = [v4 error];
    if (v9)
    {
      v8 = 0;
    }

    else
    {
      v8 = objc_opt_new();
    }
  }

  return v8;
}

@end