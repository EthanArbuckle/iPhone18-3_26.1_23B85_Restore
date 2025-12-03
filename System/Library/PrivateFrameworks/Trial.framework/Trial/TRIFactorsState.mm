@interface TRIFactorsState
- (BOOL)isEqual:(id)equal;
- (TRIFactorsState)initWithCoder:(id)coder;
- (TRIFactorsState)initWithPersisted:(id)persisted;
- (id)persisted;
@end

@implementation TRIFactorsState

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (TRIFactorsState)initWithPersisted:(id)persisted
{
  persistedCopy = persisted;
  if (!persistedCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFactorsState.m" lineNumber:50 description:{@"Invalid parameter not satisfying: %@", @"persisted"}];
  }

  if ([persistedCopy stateOneOfCase] == 2)
  {
    experiment = [persistedCopy experiment];
    if (![(TRIExperimentDeployment *)experiment hasExperimentId])
    {
      v18 = 0;
LABEL_14:

      goto LABEL_15;
    }

    experiment2 = [persistedCopy experiment];
    experimentId = [experiment2 experimentId];
    if (![experimentId length])
    {

      v18 = 0;
LABEL_13:

      goto LABEL_14;
    }

    experiment3 = [persistedCopy experiment];
    hasDeploymentId = [experiment3 hasDeploymentId];

    if (hasDeploymentId)
    {
      v11 = [TRIExperimentDeployment alloc];
      experiment4 = [persistedCopy experiment];
      experimentId2 = [experiment4 experimentId];
      experiment5 = [persistedCopy experiment];
      experiment = -[TRIExperimentDeployment initWithExperimentId:deploymentId:](v11, "initWithExperimentId:deploymentId:", experimentId2, [experiment5 deploymentId]);

      v15 = [TRIExperimentFactorsState alloc];
      experiment2 = [persistedCopy experiment];
      if ([experiment2 hasTreatmentId])
      {
        experiment6 = [persistedCopy experiment];
        treatmentId = [experiment6 treatmentId];
        v18 = [(TRIExperimentFactorsState *)v15 initWithDeployment:experiment treatmentId:treatmentId];
      }

      else
      {
        v18 = [(TRIExperimentFactorsState *)v15 initWithDeployment:experiment treatmentId:0];
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFactorsState.m" lineNumber:70 description:@"not implemented"];

  return 0;
}

- (TRIFactorsState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
  if (v5)
  {
    v11 = 0;
    v6 = [(TRIPBMessage *)TRIPersistedFactorsState parseFromData:v5 error:&v11];
    v7 = v11;
    if (v6)
    {
      self = [(TRIFactorsState *)self initWithPersisted:v6];
      selfCopy = self;
    }

    else
    {
      [coderCopy failWithError:v7];
      selfCopy = 0;
    }
  }

  else
  {
    error = [coderCopy error];
    if (error)
    {
      selfCopy = 0;
    }

    else
    {
      selfCopy = objc_opt_new();
    }
  }

  return selfCopy;
}

@end