@interface TRIRolloutRecord
+ (id)recordWithDeployment:(id)deployment rampId:(id)id activeFactorPackSetId:(id)setId activeTargetingRuleIndex:(id)index targetedFactorPackSetId:(id)packSetId targetedTargetingRuleIndex:(id)ruleIndex status:(int64_t)status namespaces:(id)self0 artifact:(id)self1;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecord:(id)record;
- (TRIRolloutRecord)initWithDeployment:(id)deployment rampId:(id)id activeFactorPackSetId:(id)setId activeTargetingRuleIndex:(id)index targetedFactorPackSetId:(id)packSetId targetedTargetingRuleIndex:(id)ruleIndex status:(int64_t)status namespaces:(id)self0 artifact:(id)self1;
- (id)copyWithReplacementActiveFactorPackSetId:(id)id;
- (id)copyWithReplacementActiveTargetingRuleIndex:(id)index;
- (id)copyWithReplacementArtifact:(id)artifact;
- (id)copyWithReplacementDeployment:(id)deployment;
- (id)copyWithReplacementNamespaces:(id)namespaces;
- (id)copyWithReplacementRampId:(id)id;
- (id)copyWithReplacementTargetedFactorPackSetId:(id)id;
- (id)copyWithReplacementTargetedTargetingRuleIndex:(id)index;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIRolloutRecord

- (TRIRolloutRecord)initWithDeployment:(id)deployment rampId:(id)id activeFactorPackSetId:(id)setId activeTargetingRuleIndex:(id)index targetedFactorPackSetId:(id)packSetId targetedTargetingRuleIndex:(id)ruleIndex status:(int64_t)status namespaces:(id)self0 artifact:(id)self1
{
  deploymentCopy = deployment;
  idCopy = id;
  idCopy2 = id;
  setIdCopy = setId;
  setIdCopy2 = setId;
  indexCopy = index;
  indexCopy2 = index;
  packSetIdCopy = packSetId;
  ruleIndexCopy = ruleIndex;
  namespacesCopy = namespaces;
  artifactCopy = artifact;
  v36 = artifactCopy;
  if (!deploymentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1925 description:{@"Invalid parameter not satisfying: %@", @"deployment != nil"}];

    artifactCopy = v36;
  }

  v33 = namespacesCopy;
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
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1926 description:{@"Invalid parameter not satisfying: %@", @"namespaces != nil"}];

    if (v36)
    {
      goto LABEL_5;
    }
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1927 description:{@"Invalid parameter not satisfying: %@", @"artifact != nil"}];

LABEL_5:
  v38.receiver = self;
  v38.super_class = TRIRolloutRecord;
  v23 = [(TRIRolloutRecord *)&v38 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_deployment, deployment);
    objc_storeStrong(&v24->_rampId, idCopy);
    objc_storeStrong(&v24->_activeFactorPackSetId, setIdCopy);
    objc_storeStrong(&v24->_activeTargetingRuleIndex, indexCopy);
    objc_storeStrong(&v24->_targetedFactorPackSetId, packSetId);
    objc_storeStrong(&v24->_targetedTargetingRuleIndex, ruleIndex);
    v24->_status = status;
    objc_storeStrong(&v24->_namespaces, namespaces);
    objc_storeStrong(&v24->_artifact, artifact);
  }

  return v24;
}

+ (id)recordWithDeployment:(id)deployment rampId:(id)id activeFactorPackSetId:(id)setId activeTargetingRuleIndex:(id)index targetedFactorPackSetId:(id)packSetId targetedTargetingRuleIndex:(id)ruleIndex status:(int64_t)status namespaces:(id)self0 artifact:(id)self1
{
  artifactCopy = artifact;
  namespacesCopy = namespaces;
  ruleIndexCopy = ruleIndex;
  packSetIdCopy = packSetId;
  indexCopy = index;
  setIdCopy = setId;
  idCopy = id;
  deploymentCopy = deployment;
  v26 = [[self alloc] initWithDeployment:deploymentCopy rampId:idCopy activeFactorPackSetId:setIdCopy activeTargetingRuleIndex:indexCopy targetedFactorPackSetId:packSetIdCopy targetedTargetingRuleIndex:ruleIndexCopy status:status namespaces:namespacesCopy artifact:artifactCopy];

  return v26;
}

- (id)copyWithReplacementDeployment:(id)deployment
{
  deploymentCopy = deployment;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:deploymentCopy rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementRampId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:idCopy activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementActiveFactorPackSetId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:idCopy activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementActiveTargetingRuleIndex:(id)index
{
  indexCopy = index;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:indexCopy targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementTargetedFactorPackSetId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:idCopy targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementTargetedTargetingRuleIndex:(id)index
{
  indexCopy = index;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:indexCopy status:self->_status namespaces:self->_namespaces artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementNamespaces:(id)namespaces
{
  namespacesCopy = namespaces;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:namespacesCopy artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementArtifact:(id)artifact
{
  artifactCopy = artifact;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces artifact:artifactCopy];

  return v5;
}

- (BOOL)isEqualToRecord:(id)record
{
  recordCopy = record;
  v5 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_27;
  }

  v6 = self->_deployment == 0;
  deployment = [recordCopy deployment];
  v8 = deployment != 0;

  if (v6 == v8)
  {
    goto LABEL_27;
  }

  deployment = self->_deployment;
  if (deployment)
  {
    deployment2 = [v5 deployment];
    v11 = [(TRIRolloutDeployment *)deployment isEqual:deployment2];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  v12 = self->_rampId == 0;
  rampId = [v5 rampId];
  v14 = rampId != 0;

  if (v12 == v14)
  {
    goto LABEL_27;
  }

  rampId = self->_rampId;
  if (rampId)
  {
    rampId2 = [v5 rampId];
    v17 = [(TRIRampId *)rampId isEqual:rampId2];

    if (!v17)
    {
      goto LABEL_27;
    }
  }

  v18 = self->_activeFactorPackSetId == 0;
  activeFactorPackSetId = [v5 activeFactorPackSetId];
  v20 = activeFactorPackSetId != 0;

  if (v18 == v20)
  {
    goto LABEL_27;
  }

  activeFactorPackSetId = self->_activeFactorPackSetId;
  if (activeFactorPackSetId)
  {
    activeFactorPackSetId2 = [v5 activeFactorPackSetId];
    v23 = [(TRIFactorPackSetId *)activeFactorPackSetId isEqual:activeFactorPackSetId2];

    if (!v23)
    {
      goto LABEL_27;
    }
  }

  v24 = self->_activeTargetingRuleIndex == 0;
  activeTargetingRuleIndex = [v5 activeTargetingRuleIndex];
  v26 = activeTargetingRuleIndex != 0;

  if (v24 == v26)
  {
    goto LABEL_27;
  }

  activeTargetingRuleIndex = self->_activeTargetingRuleIndex;
  if (activeTargetingRuleIndex)
  {
    activeTargetingRuleIndex2 = [v5 activeTargetingRuleIndex];
    v29 = [(NSNumber *)activeTargetingRuleIndex isEqual:activeTargetingRuleIndex2];

    if (!v29)
    {
      goto LABEL_27;
    }
  }

  v30 = self->_targetedFactorPackSetId == 0;
  targetedFactorPackSetId = [v5 targetedFactorPackSetId];
  v32 = targetedFactorPackSetId != 0;

  if (v30 == v32)
  {
    goto LABEL_27;
  }

  targetedFactorPackSetId = self->_targetedFactorPackSetId;
  if (targetedFactorPackSetId)
  {
    targetedFactorPackSetId2 = [v5 targetedFactorPackSetId];
    v35 = [(TRIFactorPackSetId *)targetedFactorPackSetId isEqual:targetedFactorPackSetId2];

    if (!v35)
    {
      goto LABEL_27;
    }
  }

  v36 = self->_targetedTargetingRuleIndex == 0;
  targetedTargetingRuleIndex = [v5 targetedTargetingRuleIndex];
  v38 = targetedTargetingRuleIndex != 0;

  if (v36 == v38)
  {
    goto LABEL_27;
  }

  targetedTargetingRuleIndex = self->_targetedTargetingRuleIndex;
  if (targetedTargetingRuleIndex)
  {
    targetedTargetingRuleIndex2 = [v5 targetedTargetingRuleIndex];
    v41 = [(NSNumber *)targetedTargetingRuleIndex isEqual:targetedTargetingRuleIndex2];

    if (!v41)
    {
      goto LABEL_27;
    }
  }

  status = self->_status;
  if (status != [v5 status])
  {
    goto LABEL_27;
  }

  v43 = self->_namespaces == 0;
  namespaces = [v5 namespaces];
  v45 = namespaces != 0;

  if (v43 == v45)
  {
    goto LABEL_27;
  }

  namespaces = self->_namespaces;
  if (namespaces)
  {
    namespaces2 = [v5 namespaces];
    v48 = [(NSArray *)namespaces isEqual:namespaces2];

    if (!v48)
    {
      goto LABEL_27;
    }
  }

  v49 = self->_artifact == 0;
  artifact = [v5 artifact];
  v51 = artifact != 0;

  if (v49 == v51)
  {
LABEL_27:
    v54 = 0;
  }

  else
  {
    artifact = self->_artifact;
    if (artifact)
    {
      artifact2 = [v5 artifact];
      v54 = [(TRIClientRolloutArtifact *)artifact isEqual:artifact2];
    }

    else
    {
      v54 = 1;
    }
  }

  return v54 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIRolloutRecord *)self isEqualToRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(TRIRolloutDeployment *)self->_deployment hash];
  v4 = [(TRIRampId *)self->_rampId hash]- v3 + 32 * v3;
  v5 = [(TRIFactorPackSetId *)self->_activeFactorPackSetId hash]- v4 + 32 * v4;
  v6 = [(NSNumber *)self->_activeTargetingRuleIndex hash]- v5 + 32 * v5;
  v7 = [(TRIFactorPackSetId *)self->_targetedFactorPackSetId hash]- v6 + 32 * v6;
  v8 = [(NSNumber *)self->_targetedTargetingRuleIndex hash];
  v9 = self->_status - (v8 - v7 + 32 * v7) + 32 * (v8 - v7 + 32 * v7);
  v10 = [(NSArray *)self->_namespaces hash]- v9 + 32 * v9;
  return [(TRIClientRolloutArtifact *)self->_artifact hash]- v10 + 32 * v10;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = *&self->_deployment;
  v9 = *&self->_activeFactorPackSetId;
  targetedFactorPackSetId = self->_targetedFactorPackSetId;
  targetedTargetingRuleIndex = self->_targetedTargetingRuleIndex;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_status];
  v7 = [v3 initWithFormat:@"<TRIRolloutRecord | deployment:%@ rampId:%@ activeFactorPackSetId:%@ activeTargetingRuleIndex:%@ targetedFactorPackSetId:%@ targetedTargetingRuleIndex:%@ status:%@ namespaces:%@ artifact:%@>", v10, v9, targetedFactorPackSetId, targetedTargetingRuleIndex, v6, self->_namespaces, self->_artifact];

  return v7;
}

@end