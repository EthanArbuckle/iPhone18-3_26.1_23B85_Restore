@interface TRITreatmentBaseTask
- (BOOL)isEqual:(id)equal;
- (TRITreatmentBaseTask)initWithExperiment:(id)experiment treatmentId:(id)id taskAttributing:(id)attributing;
- (id)description;
- (id)dimensions;
- (id)trialSystemTelemetry;
- (unint64_t)hash;
@end

@implementation TRITreatmentBaseTask

- (TRITreatmentBaseTask)initWithExperiment:(id)experiment treatmentId:(id)id taskAttributing:(id)attributing
{
  experimentCopy = experiment;
  idCopy = id;
  attributingCopy = attributing;
  if (!experimentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITreatmentBaseTask.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"experiment"}];
  }

  if ([experimentCopy hasDeploymentId])
  {
    if (idCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRITreatmentBaseTask.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"experiment.hasDeploymentId"}];

    if (idCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRITreatmentBaseTask.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"treatmentId"}];

LABEL_5:
  v18.receiver = self;
  v18.super_class = TRITreatmentBaseTask;
  v12 = [(TRIExperimentBaseTask *)&v18 initWithExperiment:experimentCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_treatmentId, id);
    objc_storeStrong(&v13->_taskAttributing, attributing);
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TRITreatmentBaseTask;
    if ([(TRIExperimentBaseTask *)&v13 isEqual:equalCopy])
    {
      v5 = equalCopy;
      treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
      treatmentId2 = [(TRITreatmentBaseTask *)v5 treatmentId];
      v8 = [treatmentId isEqual:treatmentId2];

      if (v8)
      {
        taskAttributing = [(TRITreatmentBaseTask *)self taskAttributing];
        taskAttributing2 = [(TRITreatmentBaseTask *)v5 taskAttributing];
        v11 = [taskAttributing isEqual:taskAttributing2];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v10.receiver = self;
  v10.super_class = TRITreatmentBaseTask;
  v3 = [(TRIExperimentBaseTask *)&v10 hash];
  treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
  if (treatmentId)
  {
    treatmentId2 = [(TRITreatmentBaseTask *)self treatmentId];
    v6 = [treatmentId2 hash];
  }

  else
  {
    v6 = 0;
  }

  taskAttributing = [(TRITreatmentBaseTask *)self taskAttributing];
  v8 = [taskAttributing hash] + 37 * (v6 + 37 * v3);

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  experiment = [(TRIExperimentBaseTask *)self experiment];
  shortDesc = [experiment shortDesc];
  treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
  taskAttributing = [(TRITreatmentBaseTask *)self taskAttributing];
  applicationBundleIdentifier = [taskAttributing applicationBundleIdentifier];
  v10 = [v3 stringWithFormat:@"<%@:%@, %@, %@>", v4, shortDesc, treatmentId, applicationBundleIdentifier];

  return v10;
}

- (id)dimensions
{
  v2 = MEMORY[0x277CBEB18];
  v10.receiver = self;
  v10.super_class = TRITreatmentBaseTask;
  dimensions = [(TRIExperimentBaseTask *)&v10 dimensions];
  v4 = dimensions;
  if (dimensions)
  {
    v5 = dimensions;
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v6 = [v2 arrayWithArray:v5];

  if ([v6 count])
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v7;
}

- (id)trialSystemTelemetry
{
  v9.receiver = self;
  v9.super_class = TRITreatmentBaseTask;
  trialSystemTelemetry = [(TRIExperimentBaseTask *)&v9 trialSystemTelemetry];
  if (!trialSystemTelemetry)
  {
    trialSystemTelemetry = objc_opt_new();
  }

  treatmentId = [(TRITreatmentBaseTask *)self treatmentId];
  ensureExperimentFields = [trialSystemTelemetry ensureExperimentFields];
  [ensureExperimentFields setClientTreatmentId:treatmentId];

  taskAttributing = [(TRITreatmentBaseTask *)self taskAttributing];
  v7 = [TRITelemetryFactory containerOriginTelemetryForTaskAttribution:taskAttributing];

  [trialSystemTelemetry mergeFrom:v7];

  return trialSystemTelemetry;
}

@end