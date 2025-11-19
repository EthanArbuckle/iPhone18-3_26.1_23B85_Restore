@interface TRIExperimentDeploymentTreatment
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualTotreatmentTriple:(id)a3;
- (TRIExperimentDeploymentTreatment)initWithCoder:(id)a3;
- (TRIExperimentDeploymentTreatment)initWithExperimentId:(id)a3 deploymentId:(int)a4 treatmentId:(id)a5;
- (id)copyWithReplacementExperimentId:(id)a3;
- (id)copyWithReplacementTreatmentId:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIExperimentDeploymentTreatment

- (TRIExperimentDeploymentTreatment)initWithExperimentId:(id)a3 deploymentId:(int)a4 treatmentId:(id)a5
{
  v10 = a3;
  v11 = a5;
  v12 = v11;
  if (v10)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4565 description:{@"Invalid parameter not satisfying: %@", @"experimentId != nil"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v17 = [MEMORY[0x277CCA890] currentHandler];
  [v17 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:4566 description:{@"Invalid parameter not satisfying: %@", @"treatmentId != nil"}];

LABEL_3:
  v18.receiver = self;
  v18.super_class = TRIExperimentDeploymentTreatment;
  v13 = [(TRIExperimentDeploymentTreatment *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_experimentId, a3);
    v14->_deploymentId = a4;
    objc_storeStrong(&v14->_treatmentId, a5);
  }

  return v14;
}

- (id)copyWithReplacementExperimentId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithExperimentId:v4 deploymentId:self->_deploymentId treatmentId:self->_treatmentId];

  return v5;
}

- (id)copyWithReplacementTreatmentId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithExperimentId:self->_experimentId deploymentId:self->_deploymentId treatmentId:v4];

  return v5;
}

- (BOOL)isEqualTotreatmentTriple:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = self->_experimentId == 0;
  v7 = [v4 experimentId];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_9;
  }

  experimentId = self->_experimentId;
  if (experimentId)
  {
    v10 = [v5 experimentId];
    v11 = [(NSString *)experimentId isEqual:v10];

    if (!v11)
    {
      goto LABEL_9;
    }
  }

  deploymentId = self->_deploymentId;
  if (deploymentId != [v5 deploymentId] || (v13 = self->_treatmentId == 0, objc_msgSend(v5, "treatmentId"), v14 = objc_claimAutoreleasedReturnValue(), v15 = v14 != 0, v14, v13 == v15))
  {
LABEL_9:
    v18 = 0;
  }

  else
  {
    treatmentId = self->_treatmentId;
    if (treatmentId)
    {
      v17 = [v5 treatmentId];
      v18 = [(NSString *)treatmentId isEqual:v17];
    }

    else
    {
      v18 = 1;
    }
  }

  return v18 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIExperimentDeploymentTreatment *)self isEqualTotreatmentTriple:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_experimentId hash];
  v4 = self->_deploymentId - v3 + 32 * v3;
  return [(NSString *)self->_treatmentId hash]- v4 + 32 * v4;
}

- (TRIExperimentDeploymentTreatment)initWithCoder:(id)a3
{
  v25[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"experimentId"];
  if (!v5)
  {
    v10 = [v4 error];

    if (v10)
    {
      goto LABEL_8;
    }

    v24 = *MEMORY[0x277CCA450];
    v25[0] = @"Retrieved nil serialized value for nonnull TRIExperimentDeploymentTreatment.experimentId";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v11 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = 2;
LABEL_14:
    v17 = [v11 initWithDomain:@"TRIExperimentDeploymentTreatmentOCNTErrorDomain" code:v12 userInfo:v8];
    [v4 failWithError:v17];

    goto LABEL_15;
  }

  v6 = [v4 decodeInt64ForKey:@"deploymentId"];
  if (v6)
  {
LABEL_3:
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"treatmentId"];
    if (v7)
    {
      v8 = v7;
      self = [(TRIExperimentDeploymentTreatment *)self initWithExperimentId:v5 deploymentId:v6 treatmentId:v7];
      v9 = self;
LABEL_16:

      goto LABEL_17;
    }

    v14 = [v4 error];

    if (!v14)
    {
      v20 = *MEMORY[0x277CCA450];
      v21 = @"Retrieved nil serialized value for nonnull TRIExperimentDeploymentTreatment.treatmentId";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
      v16 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIExperimentDeploymentTreatmentOCNTErrorDomain" code:2 userInfo:v15];
      [v4 failWithError:v16];
    }

    v8 = 0;
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v13 = [v4 error];

  if (!v13)
  {
    if ([v4 containsValueForKey:@"deploymentId"])
    {
      goto LABEL_3;
    }

    v22 = *MEMORY[0x277CCA450];
    v23 = @"Missing serialized value for TRIExperimentDeploymentTreatment.deploymentId";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v11 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = 1;
    goto LABEL_14;
  }

LABEL_8:
  v9 = 0;
LABEL_17:

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  experimentId = self->_experimentId;
  if (experimentId)
  {
    [v6 encodeObject:experimentId forKey:@"experimentId"];
  }

  [v6 encodeInt64:self->_deploymentId forKey:@"deploymentId"];
  treatmentId = self->_treatmentId;
  if (treatmentId)
  {
    [v6 encodeObject:treatmentId forKey:@"treatmentId"];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  experimentId = self->_experimentId;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_deploymentId];
  v6 = [v3 initWithFormat:@"<TRIExperimentDeploymentTreatment | experimentId:%@ deploymentId:%@ treatmentId:%@>", experimentId, v5, self->_treatmentId];

  return v6;
}

@end