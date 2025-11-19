@interface TRIExperimentRecord
+ (TRIExperimentRecord)recordWithDeploymentEnvironment:(int)a3 experimentDeployment:(id)a4 treatmentId:(id)a5 factorPackSetId:(id)a6 type:(int)a7 status:(int64_t)a8 startDate:(id)a9 endDate:(id)a10 namespaces:(id)a11 isManuallyTargeted:(BOOL)a12 artifact:(id)a13 experimentType:(int)a14;
- (BOOL)hasCounterfactualTreatmentReferencingFactorPackSetId:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRecord:(id)a3;
- (BOOL)isExpiredExperiment;
- (TRIExperimentRecord)initWithDeploymentEnvironment:(int)a3 experimentDeployment:(id)a4 treatmentId:(id)a5 factorPackSetId:(id)a6 type:(int)a7 status:(int64_t)a8 startDate:(id)a9 endDate:(id)a10 namespaces:(id)a11 isManuallyTargeted:(BOOL)a12 artifact:(id)a13 experimentType:(int)a14;
- (id)copyWithReplacementArtifact:(id)a3;
- (id)copyWithReplacementEndDate:(id)a3;
- (id)copyWithReplacementExperimentDeployment:(id)a3;
- (id)copyWithReplacementExperimentType:(int)a3;
- (id)copyWithReplacementFactorPackSetId:(id)a3;
- (id)copyWithReplacementIsManuallyTargeted:(BOOL)a3;
- (id)copyWithReplacementNamespaces:(id)a3;
- (id)copyWithReplacementStartDate:(id)a3;
- (id)copyWithReplacementStatus:(int64_t)a3;
- (id)copyWithReplacementTreatmentId:(id)a3;
- (id)counterfactualsTreatmentsToFactorPackSetIds;
- (id)description;
- (id)versionedNamespaces;
- (unint64_t)hash;
@end

@implementation TRIExperimentRecord

- (id)versionedNamespaces
{
  v2 = [(TRIExperimentRecord *)self namespaces];
  v3 = [v2 _pas_mappedArrayWithTransform:&__block_literal_global_26];

  return v3;
}

id __63__TRIExperimentRecord_VersionedNamespaces__versionedNamespaces__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D73808];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 name];
  v6 = [v3 compatibilityVersion];

  v7 = [v4 initWithName:v5 compatibilityVersion:v6];

  return v7;
}

- (id)counterfactualsTreatmentsToFactorPackSetIds
{
  v3 = [(TRIExperimentRecord *)self artifact];
  v4 = [(TRIExperimentRecord *)self treatmentId];
  v5 = [v3 counterfactualsTreatmentsToFactorPackSetIdsWithActiveTreatmentId:v4];

  return v5;
}

- (BOOL)hasCounterfactualTreatmentReferencingFactorPackSetId:(id)a3
{
  v4 = a3;
  v5 = [(TRIExperimentRecord *)self counterfactualsTreatmentsToFactorPackSetIds];
  v6 = [v5 allValues];
  v7 = [v6 containsObject:v4];

  return v7;
}

- (BOOL)isExpiredExperiment
{
  v3 = [(TRIExperimentRecord *)self endDate];
  v4 = [(TRIExperimentRecord *)self type];
  v5 = 0;
  if (v4 == 1 && v3)
  {
    v6 = objc_opt_new();
    v5 = [v3 compare:v6] == -1;
  }

  return v5;
}

- (TRIExperimentRecord)initWithDeploymentEnvironment:(int)a3 experimentDeployment:(id)a4 treatmentId:(id)a5 factorPackSetId:(id)a6 type:(int)a7 status:(int64_t)a8 startDate:(id)a9 endDate:(id)a10 namespaces:(id)a11 isManuallyTargeted:(BOOL)a12 artifact:(id)a13 experimentType:(int)a14
{
  v17 = a4;
  v32 = a5;
  v18 = a5;
  v34 = a6;
  v19 = a6;
  v20 = a9;
  v37 = a10;
  v21 = a11;
  v22 = a13;
  if (!v17)
  {
    v36 = [MEMORY[0x277CCA890] currentHandler];
    [v36 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3307 description:{@"Invalid parameter not satisfying: %@", @"experimentDeployment != nil"}];
  }

  v35 = v21;
  if (v21)
  {
    if (v22)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3308 description:{@"Invalid parameter not satisfying: %@", @"namespaces != nil"}];

    if (v22)
    {
      goto LABEL_5;
    }
  }

  v27 = [MEMORY[0x277CCA890] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3309 description:{@"Invalid parameter not satisfying: %@", @"artifact != nil"}];

LABEL_5:
  v38.receiver = self;
  v38.super_class = TRIExperimentRecord;
  v23 = [(TRIExperimentRecord *)&v38 init];
  v24 = v23;
  if (v23)
  {
    v23->_deploymentEnvironment = a3;
    objc_storeStrong(&v23->_experimentDeployment, a4);
    objc_storeStrong(&v24->_treatmentId, v32);
    objc_storeStrong(&v24->_factorPackSetId, v34);
    v24->_type = a7;
    v24->_status = a8;
    objc_storeStrong(&v24->_startDate, a9);
    objc_storeStrong(&v24->_endDate, a10);
    objc_storeStrong(&v24->_namespaces, a11);
    v24->_isManuallyTargeted = a12;
    objc_storeStrong(&v24->_artifact, a13);
    v24->_experimentType = a14;
  }

  return v24;
}

+ (TRIExperimentRecord)recordWithDeploymentEnvironment:(int)a3 experimentDeployment:(id)a4 treatmentId:(id)a5 factorPackSetId:(id)a6 type:(int)a7 status:(int64_t)a8 startDate:(id)a9 endDate:(id)a10 namespaces:(id)a11 isManuallyTargeted:(BOOL)a12 artifact:(id)a13 experimentType:(int)a14
{
  v18 = a13;
  v19 = a11;
  v20 = a10;
  v21 = a9;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  LODWORD(v28) = a14;
  LOBYTE(v27) = a12;
  v25 = [[a1 alloc] initWithDeploymentEnvironment:a3 experimentDeployment:v24 treatmentId:v23 factorPackSetId:v22 type:a7 status:a8 startDate:v21 endDate:v20 namespaces:v19 isManuallyTargeted:v27 artifact:v18 experimentType:v28];

  return v25;
}

- (id)copyWithReplacementExperimentDeployment:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:v4 treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v8 artifact:self->_artifact experimentType:v9];

  return v6;
}

- (id)copyWithReplacementTreatmentId:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:v4 factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v8 artifact:self->_artifact experimentType:v9];

  return v6;
}

- (id)copyWithReplacementFactorPackSetId:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:v4 type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v8 artifact:self->_artifact experimentType:v9];

  return v6;
}

- (id)copyWithReplacementStatus:(int64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  LOBYTE(v7) = self->_isManuallyTargeted;
  return [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:a3 startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v7 artifact:self->_artifact experimentType:v8];
}

- (id)copyWithReplacementStartDate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:v4 endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v8 artifact:self->_artifact experimentType:v9];

  return v6;
}

- (id)copyWithReplacementEndDate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:v4 namespaces:self->_namespaces isManuallyTargeted:v8 artifact:self->_artifact experimentType:v9];

  return v6;
}

- (id)copyWithReplacementNamespaces:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:v4 isManuallyTargeted:v8 artifact:self->_artifact experimentType:v9];

  return v6;
}

- (id)copyWithReplacementIsManuallyTargeted:(BOOL)a3
{
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  LOBYTE(v7) = a3;
  return [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v7 artifact:self->_artifact experimentType:v8];
}

- (id)copyWithReplacementArtifact:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v8 artifact:v4 experimentType:v9];

  return v6;
}

- (id)copyWithReplacementExperimentType:(int)a3
{
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = a3;
  LOBYTE(v7) = self->_isManuallyTargeted;
  return [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v7 artifact:self->_artifact experimentType:v8];
}

- (BOOL)isEqualToRecord:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_28;
  }

  deploymentEnvironment = self->_deploymentEnvironment;
  if (deploymentEnvironment != [v4 deploymentEnvironment])
  {
    goto LABEL_28;
  }

  v7 = self->_experimentDeployment == 0;
  v8 = [v5 experimentDeployment];
  v9 = v8 != 0;

  if (v7 == v9)
  {
    goto LABEL_28;
  }

  experimentDeployment = self->_experimentDeployment;
  if (experimentDeployment)
  {
    v11 = [v5 experimentDeployment];
    v12 = [(TRIExperimentDeployment *)experimentDeployment isEqual:v11];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  v13 = self->_treatmentId == 0;
  v14 = [v5 treatmentId];
  v15 = v14 != 0;

  if (v13 == v15)
  {
    goto LABEL_28;
  }

  treatmentId = self->_treatmentId;
  if (treatmentId)
  {
    v17 = [v5 treatmentId];
    v18 = [(NSString *)treatmentId isEqual:v17];

    if (!v18)
    {
      goto LABEL_28;
    }
  }

  v19 = self->_factorPackSetId == 0;
  v20 = [v5 factorPackSetId];
  v21 = v20 != 0;

  if (v19 == v21)
  {
    goto LABEL_28;
  }

  factorPackSetId = self->_factorPackSetId;
  if (factorPackSetId)
  {
    v23 = [v5 factorPackSetId];
    v24 = [(TRIFactorPackSetId *)factorPackSetId isEqual:v23];

    if (!v24)
    {
      goto LABEL_28;
    }
  }

  type = self->_type;
  if (type != [v5 type])
  {
    goto LABEL_28;
  }

  status = self->_status;
  if (status != [v5 status])
  {
    goto LABEL_28;
  }

  v27 = self->_startDate == 0;
  v28 = [v5 startDate];
  v29 = v28 != 0;

  if (v27 == v29)
  {
    goto LABEL_28;
  }

  startDate = self->_startDate;
  if (startDate)
  {
    v31 = [v5 startDate];
    v32 = [(NSDate *)startDate isEqual:v31];

    if (!v32)
    {
      goto LABEL_28;
    }
  }

  v33 = self->_endDate == 0;
  v34 = [v5 endDate];
  v35 = v34 != 0;

  if (v33 == v35)
  {
    goto LABEL_28;
  }

  endDate = self->_endDate;
  if (endDate)
  {
    v37 = [v5 endDate];
    v38 = [(NSDate *)endDate isEqual:v37];

    if (!v38)
    {
      goto LABEL_28;
    }
  }

  v39 = self->_namespaces == 0;
  v40 = [v5 namespaces];
  v41 = v40 != 0;

  if (v39 == v41)
  {
    goto LABEL_28;
  }

  namespaces = self->_namespaces;
  if (namespaces)
  {
    v43 = [v5 namespaces];
    v44 = [(NSArray *)namespaces isEqual:v43];

    if (!v44)
    {
      goto LABEL_28;
    }
  }

  isManuallyTargeted = self->_isManuallyTargeted;
  if (isManuallyTargeted != [v5 isManuallyTargeted])
  {
    goto LABEL_28;
  }

  v46 = self->_artifact == 0;
  v47 = [v5 artifact];
  v48 = v47 != 0;

  if (v46 == v48 || (artifact = self->_artifact) != 0 && ([v5 artifact], v50 = objc_claimAutoreleasedReturnValue(), v51 = -[TRIClientExperimentArtifact isEqual:](artifact, "isEqual:", v50), v50, !v51))
  {
LABEL_28:
    v53 = 0;
  }

  else
  {
    experimentType = self->_experimentType;
    v53 = experimentType == [v5 experimentType];
  }

  return v53;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIExperimentRecord *)self isEqualToRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  deploymentEnvironment = self->_deploymentEnvironment;
  v4 = [(TRIExperimentDeployment *)self->_experimentDeployment hash]- deploymentEnvironment + 32 * deploymentEnvironment;
  v5 = [(NSString *)self->_treatmentId hash]- v4 + 32 * v4;
  v6 = [(TRIFactorPackSetId *)self->_factorPackSetId hash];
  v7 = self->_type - (v6 - v5 + 32 * v5) + 32 * (v6 - v5 + 32 * v5);
  v8 = self->_status - v7 + 32 * v7;
  v9 = [(NSDate *)self->_startDate hash]- v8 + 32 * v8;
  v10 = [(NSDate *)self->_endDate hash]- v9 + 32 * v9;
  v11 = [(NSArray *)self->_namespaces hash];
  v12 = self->_isManuallyTargeted - (v11 - v10 + 32 * v10) + 32 * (v11 - v10 + 32 * v10);
  v13 = [(TRIClientExperimentArtifact *)self->_artifact hash];
  return self->_experimentType - (v13 - v12 + 32 * v12) + 32 * (v13 - v12 + 32 * v12);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_deploymentEnvironment];
  v15 = *&self->_experimentDeployment;
  factorPackSetId = self->_factorPackSetId;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_type];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_status];
  v14 = *&self->_startDate;
  namespaces = self->_namespaces;
  v9 = [MEMORY[0x277CCABB0] numberWithBool:self->_isManuallyTargeted];
  artifact = self->_artifact;
  v11 = [MEMORY[0x277CCABB0] numberWithInt:self->_experimentType];
  v12 = [v3 initWithFormat:@"<TRIExperimentRecord | deploymentEnvironment:%@ experimentDeployment:%@ treatmentId:%@ factorPackSetId:%@ type:%@ status:%@ startDate:%@ endDate:%@ namespaces:%@ isManuallyTargeted:%@ artifact:%@ experimentType:%@>", v4, v15, factorPackSetId, v6, v7, v14, namespaces, v9, artifact, v11];

  return v12;
}

@end