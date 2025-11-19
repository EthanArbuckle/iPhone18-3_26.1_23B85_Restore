@interface TRIRolloutRecord
+ (id)recordWithDeployment:(id)a3 rampId:(id)a4 activeFactorPackSetId:(id)a5 activeTargetingRuleIndex:(id)a6 targetedFactorPackSetId:(id)a7 targetedTargetingRuleIndex:(id)a8 status:(int64_t)a9 namespaces:(id)a10 artifact:(id)a11;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRecord:(id)a3;
- (TRIRolloutRecord)initWithDeployment:(id)a3 rampId:(id)a4 activeFactorPackSetId:(id)a5 activeTargetingRuleIndex:(id)a6 targetedFactorPackSetId:(id)a7 targetedTargetingRuleIndex:(id)a8 status:(int64_t)a9 namespaces:(id)a10 artifact:(id)a11;
- (id)copyWithReplacementActiveFactorPackSetId:(id)a3;
- (id)copyWithReplacementActiveTargetingRuleIndex:(id)a3;
- (id)copyWithReplacementArtifact:(id)a3;
- (id)copyWithReplacementDeployment:(id)a3;
- (id)copyWithReplacementNamespaces:(id)a3;
- (id)copyWithReplacementRampId:(id)a3;
- (id)copyWithReplacementTargetedFactorPackSetId:(id)a3;
- (id)copyWithReplacementTargetedTargetingRuleIndex:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation TRIRolloutRecord

- (TRIRolloutRecord)initWithDeployment:(id)a3 rampId:(id)a4 activeFactorPackSetId:(id)a5 activeTargetingRuleIndex:(id)a6 targetedFactorPackSetId:(id)a7 targetedTargetingRuleIndex:(id)a8 status:(int64_t)a9 namespaces:(id)a10 artifact:(id)a11
{
  v16 = a3;
  v30 = a4;
  v17 = a4;
  v31 = a5;
  v18 = a5;
  v32 = a6;
  v19 = a6;
  v20 = a7;
  v35 = a8;
  v21 = a10;
  v22 = a11;
  v36 = v22;
  if (!v16)
  {
    v34 = [MEMORY[0x277CCA890] currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1925 description:{@"Invalid parameter not satisfying: %@", @"deployment != nil"}];

    v22 = v36;
  }

  v33 = v21;
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
    [v26 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1926 description:{@"Invalid parameter not satisfying: %@", @"namespaces != nil"}];

    if (v36)
    {
      goto LABEL_5;
    }
  }

  v27 = [MEMORY[0x277CCA890] currentHandler];
  [v27 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:1927 description:{@"Invalid parameter not satisfying: %@", @"artifact != nil"}];

LABEL_5:
  v38.receiver = self;
  v38.super_class = TRIRolloutRecord;
  v23 = [(TRIRolloutRecord *)&v38 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_deployment, a3);
    objc_storeStrong(&v24->_rampId, v30);
    objc_storeStrong(&v24->_activeFactorPackSetId, v31);
    objc_storeStrong(&v24->_activeTargetingRuleIndex, v32);
    objc_storeStrong(&v24->_targetedFactorPackSetId, a7);
    objc_storeStrong(&v24->_targetedTargetingRuleIndex, a8);
    v24->_status = a9;
    objc_storeStrong(&v24->_namespaces, a10);
    objc_storeStrong(&v24->_artifact, a11);
  }

  return v24;
}

+ (id)recordWithDeployment:(id)a3 rampId:(id)a4 activeFactorPackSetId:(id)a5 activeTargetingRuleIndex:(id)a6 targetedFactorPackSetId:(id)a7 targetedTargetingRuleIndex:(id)a8 status:(int64_t)a9 namespaces:(id)a10 artifact:(id)a11
{
  v18 = a11;
  v19 = a10;
  v20 = a8;
  v21 = a7;
  v22 = a6;
  v23 = a5;
  v24 = a4;
  v25 = a3;
  v26 = [[a1 alloc] initWithDeployment:v25 rampId:v24 activeFactorPackSetId:v23 activeTargetingRuleIndex:v22 targetedFactorPackSetId:v21 targetedTargetingRuleIndex:v20 status:a9 namespaces:v19 artifact:v18];

  return v26;
}

- (id)copyWithReplacementDeployment:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:v4 rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementRampId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:v4 activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementActiveFactorPackSetId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:v4 activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementActiveTargetingRuleIndex:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:v4 targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementTargetedFactorPackSetId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:v4 targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementTargetedTargetingRuleIndex:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:v4 status:self->_status namespaces:self->_namespaces artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementNamespaces:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:v4 artifact:self->_artifact];

  return v5;
}

- (id)copyWithReplacementArtifact:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces artifact:v4];

  return v5;
}

- (BOOL)isEqualToRecord:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_27;
  }

  v6 = self->_deployment == 0;
  v7 = [v4 deployment];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_27;
  }

  deployment = self->_deployment;
  if (deployment)
  {
    v10 = [v5 deployment];
    v11 = [(TRIRolloutDeployment *)deployment isEqual:v10];

    if (!v11)
    {
      goto LABEL_27;
    }
  }

  v12 = self->_rampId == 0;
  v13 = [v5 rampId];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_27;
  }

  rampId = self->_rampId;
  if (rampId)
  {
    v16 = [v5 rampId];
    v17 = [(TRIRampId *)rampId isEqual:v16];

    if (!v17)
    {
      goto LABEL_27;
    }
  }

  v18 = self->_activeFactorPackSetId == 0;
  v19 = [v5 activeFactorPackSetId];
  v20 = v19 != 0;

  if (v18 == v20)
  {
    goto LABEL_27;
  }

  activeFactorPackSetId = self->_activeFactorPackSetId;
  if (activeFactorPackSetId)
  {
    v22 = [v5 activeFactorPackSetId];
    v23 = [(TRIFactorPackSetId *)activeFactorPackSetId isEqual:v22];

    if (!v23)
    {
      goto LABEL_27;
    }
  }

  v24 = self->_activeTargetingRuleIndex == 0;
  v25 = [v5 activeTargetingRuleIndex];
  v26 = v25 != 0;

  if (v24 == v26)
  {
    goto LABEL_27;
  }

  activeTargetingRuleIndex = self->_activeTargetingRuleIndex;
  if (activeTargetingRuleIndex)
  {
    v28 = [v5 activeTargetingRuleIndex];
    v29 = [(NSNumber *)activeTargetingRuleIndex isEqual:v28];

    if (!v29)
    {
      goto LABEL_27;
    }
  }

  v30 = self->_targetedFactorPackSetId == 0;
  v31 = [v5 targetedFactorPackSetId];
  v32 = v31 != 0;

  if (v30 == v32)
  {
    goto LABEL_27;
  }

  targetedFactorPackSetId = self->_targetedFactorPackSetId;
  if (targetedFactorPackSetId)
  {
    v34 = [v5 targetedFactorPackSetId];
    v35 = [(TRIFactorPackSetId *)targetedFactorPackSetId isEqual:v34];

    if (!v35)
    {
      goto LABEL_27;
    }
  }

  v36 = self->_targetedTargetingRuleIndex == 0;
  v37 = [v5 targetedTargetingRuleIndex];
  v38 = v37 != 0;

  if (v36 == v38)
  {
    goto LABEL_27;
  }

  targetedTargetingRuleIndex = self->_targetedTargetingRuleIndex;
  if (targetedTargetingRuleIndex)
  {
    v40 = [v5 targetedTargetingRuleIndex];
    v41 = [(NSNumber *)targetedTargetingRuleIndex isEqual:v40];

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
  v44 = [v5 namespaces];
  v45 = v44 != 0;

  if (v43 == v45)
  {
    goto LABEL_27;
  }

  namespaces = self->_namespaces;
  if (namespaces)
  {
    v47 = [v5 namespaces];
    v48 = [(NSArray *)namespaces isEqual:v47];

    if (!v48)
    {
      goto LABEL_27;
    }
  }

  v49 = self->_artifact == 0;
  v50 = [v5 artifact];
  v51 = v50 != 0;

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
      v53 = [v5 artifact];
      v54 = [(TRIClientRolloutArtifact *)artifact isEqual:v53];
    }

    else
    {
      v54 = 1;
    }
  }

  return v54 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIRolloutRecord *)self isEqualToRecord:v5];
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