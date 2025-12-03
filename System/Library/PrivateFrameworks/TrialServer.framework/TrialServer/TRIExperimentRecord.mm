@interface TRIExperimentRecord
+ (TRIExperimentRecord)recordWithDeploymentEnvironment:(int)environment experimentDeployment:(id)deployment treatmentId:(id)id factorPackSetId:(id)setId type:(int)type status:(int64_t)status startDate:(id)date endDate:(id)self0 namespaces:(id)self1 isManuallyTargeted:(BOOL)self2 artifact:(id)self3 experimentType:(int)self4;
- (BOOL)hasCounterfactualTreatmentReferencingFactorPackSetId:(id)id;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecord:(id)record;
- (BOOL)isExpiredExperiment;
- (TRIExperimentRecord)initWithDeploymentEnvironment:(int)environment experimentDeployment:(id)deployment treatmentId:(id)id factorPackSetId:(id)setId type:(int)type status:(int64_t)status startDate:(id)date endDate:(id)self0 namespaces:(id)self1 isManuallyTargeted:(BOOL)self2 artifact:(id)self3 experimentType:(int)self4;
- (id)copyWithReplacementArtifact:(id)artifact;
- (id)copyWithReplacementEndDate:(id)date;
- (id)copyWithReplacementExperimentDeployment:(id)deployment;
- (id)copyWithReplacementExperimentType:(int)type;
- (id)copyWithReplacementFactorPackSetId:(id)id;
- (id)copyWithReplacementIsManuallyTargeted:(BOOL)targeted;
- (id)copyWithReplacementNamespaces:(id)namespaces;
- (id)copyWithReplacementStartDate:(id)date;
- (id)copyWithReplacementStatus:(int64_t)status;
- (id)copyWithReplacementTreatmentId:(id)id;
- (id)counterfactualsTreatmentsToFactorPackSetIds;
- (id)description;
- (id)versionedNamespaces;
- (unint64_t)hash;
@end

@implementation TRIExperimentRecord

- (id)versionedNamespaces
{
  namespaces = [(TRIExperimentRecord *)self namespaces];
  v3 = [namespaces _pas_mappedArrayWithTransform:&__block_literal_global_26];

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
  artifact = [(TRIExperimentRecord *)self artifact];
  treatmentId = [(TRIExperimentRecord *)self treatmentId];
  v5 = [artifact counterfactualsTreatmentsToFactorPackSetIdsWithActiveTreatmentId:treatmentId];

  return v5;
}

- (BOOL)hasCounterfactualTreatmentReferencingFactorPackSetId:(id)id
{
  idCopy = id;
  counterfactualsTreatmentsToFactorPackSetIds = [(TRIExperimentRecord *)self counterfactualsTreatmentsToFactorPackSetIds];
  allValues = [counterfactualsTreatmentsToFactorPackSetIds allValues];
  v7 = [allValues containsObject:idCopy];

  return v7;
}

- (BOOL)isExpiredExperiment
{
  endDate = [(TRIExperimentRecord *)self endDate];
  type = [(TRIExperimentRecord *)self type];
  v5 = 0;
  if (type == 1 && endDate)
  {
    v6 = objc_opt_new();
    v5 = [endDate compare:v6] == -1;
  }

  return v5;
}

- (TRIExperimentRecord)initWithDeploymentEnvironment:(int)environment experimentDeployment:(id)deployment treatmentId:(id)id factorPackSetId:(id)setId type:(int)type status:(int64_t)status startDate:(id)date endDate:(id)self0 namespaces:(id)self1 isManuallyTargeted:(BOOL)self2 artifact:(id)self3 experimentType:(int)self4
{
  deploymentCopy = deployment;
  idCopy = id;
  idCopy2 = id;
  setIdCopy = setId;
  setIdCopy2 = setId;
  dateCopy = date;
  endDateCopy = endDate;
  namespacesCopy = namespaces;
  artifactCopy = artifact;
  if (!deploymentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3307 description:{@"Invalid parameter not satisfying: %@", @"experimentDeployment != nil"}];
  }

  v35 = namespacesCopy;
  if (namespacesCopy)
  {
    if (artifactCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3308 description:{@"Invalid parameter not satisfying: %@", @"namespaces != nil"}];

    if (artifactCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:3309 description:{@"Invalid parameter not satisfying: %@", @"artifact != nil"}];

LABEL_5:
  v38.receiver = self;
  v38.super_class = TRIExperimentRecord;
  v23 = [(TRIExperimentRecord *)&v38 init];
  v24 = v23;
  if (v23)
  {
    v23->_deploymentEnvironment = environment;
    objc_storeStrong(&v23->_experimentDeployment, deployment);
    objc_storeStrong(&v24->_treatmentId, idCopy);
    objc_storeStrong(&v24->_factorPackSetId, setIdCopy);
    v24->_type = type;
    v24->_status = status;
    objc_storeStrong(&v24->_startDate, date);
    objc_storeStrong(&v24->_endDate, endDate);
    objc_storeStrong(&v24->_namespaces, namespaces);
    v24->_isManuallyTargeted = targeted;
    objc_storeStrong(&v24->_artifact, artifact);
    v24->_experimentType = experimentType;
  }

  return v24;
}

+ (TRIExperimentRecord)recordWithDeploymentEnvironment:(int)environment experimentDeployment:(id)deployment treatmentId:(id)id factorPackSetId:(id)setId type:(int)type status:(int64_t)status startDate:(id)date endDate:(id)self0 namespaces:(id)self1 isManuallyTargeted:(BOOL)self2 artifact:(id)self3 experimentType:(int)self4
{
  artifactCopy = artifact;
  namespacesCopy = namespaces;
  endDateCopy = endDate;
  dateCopy = date;
  setIdCopy = setId;
  idCopy = id;
  deploymentCopy = deployment;
  LODWORD(v28) = experimentType;
  LOBYTE(v27) = targeted;
  v25 = [[self alloc] initWithDeploymentEnvironment:environment experimentDeployment:deploymentCopy treatmentId:idCopy factorPackSetId:setIdCopy type:type status:status startDate:dateCopy endDate:endDateCopy namespaces:namespacesCopy isManuallyTargeted:v27 artifact:artifactCopy experimentType:v28];

  return v25;
}

- (id)copyWithReplacementExperimentDeployment:(id)deployment
{
  deploymentCopy = deployment;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:deploymentCopy treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v8 artifact:self->_artifact experimentType:v9];

  return v6;
}

- (id)copyWithReplacementTreatmentId:(id)id
{
  idCopy = id;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:idCopy factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v8 artifact:self->_artifact experimentType:v9];

  return v6;
}

- (id)copyWithReplacementFactorPackSetId:(id)id
{
  idCopy = id;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:idCopy type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v8 artifact:self->_artifact experimentType:v9];

  return v6;
}

- (id)copyWithReplacementStatus:(int64_t)status
{
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  LOBYTE(v7) = self->_isManuallyTargeted;
  return [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v7 artifact:self->_artifact experimentType:v8];
}

- (id)copyWithReplacementStartDate:(id)date
{
  dateCopy = date;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:dateCopy endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v8 artifact:self->_artifact experimentType:v9];

  return v6;
}

- (id)copyWithReplacementEndDate:(id)date
{
  dateCopy = date;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:dateCopy namespaces:self->_namespaces isManuallyTargeted:v8 artifact:self->_artifact experimentType:v9];

  return v6;
}

- (id)copyWithReplacementNamespaces:(id)namespaces
{
  namespacesCopy = namespaces;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:namespacesCopy isManuallyTargeted:v8 artifact:self->_artifact experimentType:v9];

  return v6;
}

- (id)copyWithReplacementIsManuallyTargeted:(BOOL)targeted
{
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  LOBYTE(v7) = targeted;
  return [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v7 artifact:self->_artifact experimentType:v8];
}

- (id)copyWithReplacementArtifact:(id)artifact
{
  artifactCopy = artifact;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v9) = self->_experimentType;
  LOBYTE(v8) = self->_isManuallyTargeted;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v8 artifact:artifactCopy experimentType:v9];

  return v6;
}

- (id)copyWithReplacementExperimentType:(int)type
{
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = type;
  LOBYTE(v7) = self->_isManuallyTargeted;
  return [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces isManuallyTargeted:v7 artifact:self->_artifact experimentType:v8];
}

- (BOOL)isEqualToRecord:(id)record
{
  recordCopy = record;
  v5 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_28;
  }

  deploymentEnvironment = self->_deploymentEnvironment;
  if (deploymentEnvironment != [recordCopy deploymentEnvironment])
  {
    goto LABEL_28;
  }

  v7 = self->_experimentDeployment == 0;
  experimentDeployment = [v5 experimentDeployment];
  v9 = experimentDeployment != 0;

  if (v7 == v9)
  {
    goto LABEL_28;
  }

  experimentDeployment = self->_experimentDeployment;
  if (experimentDeployment)
  {
    experimentDeployment2 = [v5 experimentDeployment];
    v12 = [(TRIExperimentDeployment *)experimentDeployment isEqual:experimentDeployment2];

    if (!v12)
    {
      goto LABEL_28;
    }
  }

  v13 = self->_treatmentId == 0;
  treatmentId = [v5 treatmentId];
  v15 = treatmentId != 0;

  if (v13 == v15)
  {
    goto LABEL_28;
  }

  treatmentId = self->_treatmentId;
  if (treatmentId)
  {
    treatmentId2 = [v5 treatmentId];
    v18 = [(NSString *)treatmentId isEqual:treatmentId2];

    if (!v18)
    {
      goto LABEL_28;
    }
  }

  v19 = self->_factorPackSetId == 0;
  factorPackSetId = [v5 factorPackSetId];
  v21 = factorPackSetId != 0;

  if (v19 == v21)
  {
    goto LABEL_28;
  }

  factorPackSetId = self->_factorPackSetId;
  if (factorPackSetId)
  {
    factorPackSetId2 = [v5 factorPackSetId];
    v24 = [(TRIFactorPackSetId *)factorPackSetId isEqual:factorPackSetId2];

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
  startDate = [v5 startDate];
  v29 = startDate != 0;

  if (v27 == v29)
  {
    goto LABEL_28;
  }

  startDate = self->_startDate;
  if (startDate)
  {
    startDate2 = [v5 startDate];
    v32 = [(NSDate *)startDate isEqual:startDate2];

    if (!v32)
    {
      goto LABEL_28;
    }
  }

  v33 = self->_endDate == 0;
  endDate = [v5 endDate];
  v35 = endDate != 0;

  if (v33 == v35)
  {
    goto LABEL_28;
  }

  endDate = self->_endDate;
  if (endDate)
  {
    endDate2 = [v5 endDate];
    v38 = [(NSDate *)endDate isEqual:endDate2];

    if (!v38)
    {
      goto LABEL_28;
    }
  }

  v39 = self->_namespaces == 0;
  namespaces = [v5 namespaces];
  v41 = namespaces != 0;

  if (v39 == v41)
  {
    goto LABEL_28;
  }

  namespaces = self->_namespaces;
  if (namespaces)
  {
    namespaces2 = [v5 namespaces];
    v44 = [(NSArray *)namespaces isEqual:namespaces2];

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
  artifact = [v5 artifact];
  v48 = artifact != 0;

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIExperimentRecord *)self isEqualToRecord:v5];
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