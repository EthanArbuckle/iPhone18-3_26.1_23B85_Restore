@interface TRITreatmentBaseTask
- (BOOL)isEqual:(id)a3;
- (TRITreatmentBaseTask)initWithExperiment:(id)a3 treatmentId:(id)a4 taskAttributing:(id)a5;
- (id)description;
- (id)dimensions;
- (id)trialSystemTelemetry;
- (unint64_t)hash;
@end

@implementation TRITreatmentBaseTask

- (TRITreatmentBaseTask)initWithExperiment:(id)a3 treatmentId:(id)a4 taskAttributing:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"TRITreatmentBaseTask.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"experiment"}];
  }

  if ([v9 hasDeploymentId])
  {
    if (v10)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"TRITreatmentBaseTask.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"experiment.hasDeploymentId"}];

    if (v10)
    {
      goto LABEL_5;
    }
  }

  v17 = [MEMORY[0x277CCA890] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"TRITreatmentBaseTask.m" lineNumber:29 description:{@"Invalid parameter not satisfying: %@", @"treatmentId"}];

LABEL_5:
  v18.receiver = self;
  v18.super_class = TRITreatmentBaseTask;
  v12 = [(TRIExperimentBaseTask *)&v18 initWithExperiment:v9];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_treatmentId, a4);
    objc_storeStrong(&v13->_taskAttributing, a5);
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = TRITreatmentBaseTask;
    if ([(TRIExperimentBaseTask *)&v13 isEqual:v4])
    {
      v5 = v4;
      v6 = [(TRITreatmentBaseTask *)self treatmentId];
      v7 = [(TRITreatmentBaseTask *)v5 treatmentId];
      v8 = [v6 isEqual:v7];

      if (v8)
      {
        v9 = [(TRITreatmentBaseTask *)self taskAttributing];
        v10 = [(TRITreatmentBaseTask *)v5 taskAttributing];
        v11 = [v9 isEqual:v10];
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
  v4 = [(TRITreatmentBaseTask *)self treatmentId];
  if (v4)
  {
    v5 = [(TRITreatmentBaseTask *)self treatmentId];
    v6 = [v5 hash];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(TRITreatmentBaseTask *)self taskAttributing];
  v8 = [v7 hash] + 37 * (v6 + 37 * v3);

  return v8;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(TRIExperimentBaseTask *)self experiment];
  v6 = [v5 shortDesc];
  v7 = [(TRITreatmentBaseTask *)self treatmentId];
  v8 = [(TRITreatmentBaseTask *)self taskAttributing];
  v9 = [v8 applicationBundleIdentifier];
  v10 = [v3 stringWithFormat:@"<%@:%@, %@, %@>", v4, v6, v7, v9];

  return v10;
}

- (id)dimensions
{
  v2 = MEMORY[0x277CBEB18];
  v10.receiver = self;
  v10.super_class = TRITreatmentBaseTask;
  v3 = [(TRIExperimentBaseTask *)&v10 dimensions];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
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
  v3 = [(TRIExperimentBaseTask *)&v9 trialSystemTelemetry];
  if (!v3)
  {
    v3 = objc_opt_new();
  }

  v4 = [(TRITreatmentBaseTask *)self treatmentId];
  v5 = [v3 ensureExperimentFields];
  [v5 setClientTreatmentId:v4];

  v6 = [(TRITreatmentBaseTask *)self taskAttributing];
  v7 = [TRITelemetryFactory containerOriginTelemetryForTaskAttribution:v6];

  [v3 mergeFrom:v7];

  return v3;
}

@end