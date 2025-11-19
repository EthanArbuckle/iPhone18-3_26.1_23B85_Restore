@interface TRIExperimentDeployment
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDeployment:(id)a3;
- (TRIExperimentDeployment)initWithCoder:(id)a3;
- (TRIExperimentDeployment)initWithExperimentId:(id)a3 deploymentId:(int)a4;
- (id)copyWithReplacementExperimentId:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIExperimentDeployment

- (TRIExperimentDeployment)initWithExperimentId:(id)a3 deploymentId:(int)a4
{
  v8 = a3;
  if (!v8)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:396 description:{@"Invalid parameter not satisfying: %@", @"experimentId != nil"}];
  }

  v13.receiver = self;
  v13.super_class = TRIExperimentDeployment;
  v9 = [(TRIExperimentDeployment *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_experimentId, a3);
    v10->_deploymentId = a4;
  }

  return v10;
}

- (id)copyWithReplacementExperimentId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithExperimentId:v4 deploymentId:self->_deploymentId];

  return v5;
}

- (BOOL)isEqualToDeployment:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = self->_experimentId == 0;
  v7 = [v4 experimentId];
  v8 = v7 != 0;

  if (v6 == v8 || (experimentId = self->_experimentId) != 0 && ([v5 experimentId], v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqual:](experimentId, "isEqual:", v10), v10, !v11))
  {
LABEL_6:
    v13 = 0;
  }

  else
  {
    deploymentId = self->_deploymentId;
    v13 = deploymentId == [v5 deploymentId];
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIExperimentDeployment *)self isEqualToDeployment:v5];
  }

  return v6;
}

- (TRIExperimentDeployment)initWithCoder:(id)a3
{
  v19[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"experimentId"];
  if (!v5)
  {
    v8 = [v4 error];

    if (!v8)
    {
      v18 = *MEMORY[0x277CCA450];
      v19[0] = @"Retrieved nil serialized value for nonnull TRIExperimentDeployment.experimentId";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = 2;
LABEL_9:
      v13 = [v10 initWithDomain:@"TRIExperimentDeploymentOCNTErrorDomain" code:v11 userInfo:v9];
      [v4 failWithError:v13];
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v6 = [v4 decodeInt64ForKey:@"deploymentId"];
  if (!v6)
  {
    v12 = [v4 error];

    if (!v12)
    {
      if ([v4 containsValueForKey:@"deploymentId"])
      {
        goto LABEL_3;
      }

      v16 = *MEMORY[0x277CCA450];
      v17 = @"Missing serialized value for TRIExperimentDeployment.deploymentId";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = 1;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_3:
  self = [(TRIExperimentDeployment *)self initWithExperimentId:v5 deploymentId:v6];
  v7 = self;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  experimentId = self->_experimentId;
  v6 = v4;
  if (experimentId)
  {
    [v4 encodeObject:experimentId forKey:@"experimentId"];
    v4 = v6;
  }

  [v4 encodeInt64:self->_deploymentId forKey:@"deploymentId"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  experimentId = self->_experimentId;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_deploymentId];
  v6 = [v3 initWithFormat:@"<TRIExperimentDeployment | experimentId:%@ deploymentId:%@>", experimentId, v5];

  return v6;
}

@end