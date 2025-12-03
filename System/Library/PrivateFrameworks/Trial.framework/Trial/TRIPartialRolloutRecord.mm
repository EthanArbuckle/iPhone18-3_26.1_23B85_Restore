@interface TRIPartialRolloutRecord
+ (id)partialRecordWithFullRecord:(id)record;
+ (id)recordWithDeployment:(id)deployment rampId:(id)id activeFactorPackSetId:(id)setId activeTargetingRuleIndex:(id)index targetedFactorPackSetId:(id)packSetId targetedTargetingRuleIndex:(id)ruleIndex status:(int64_t)status namespaces:(id)self0;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecord:(id)record;
- (TRIPartialRolloutRecord)initWithCoder:(id)coder;
- (TRIPartialRolloutRecord)initWithDeployment:(id)deployment rampId:(id)id activeFactorPackSetId:(id)setId activeTargetingRuleIndex:(id)index targetedFactorPackSetId:(id)packSetId targetedTargetingRuleIndex:(id)ruleIndex status:(int64_t)status namespaces:(id)self0;
- (id)copyWithReplacementActiveFactorPackSetId:(id)id;
- (id)copyWithReplacementActiveTargetingRuleIndex:(id)index;
- (id)copyWithReplacementDeployment:(id)deployment;
- (id)copyWithReplacementNamespaces:(id)namespaces;
- (id)copyWithReplacementRampId:(id)id;
- (id)copyWithReplacementTargetedFactorPackSetId:(id)id;
- (id)copyWithReplacementTargetedTargetingRuleIndex:(id)index;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIPartialRolloutRecord

+ (id)partialRecordWithFullRecord:(id)record
{
  recordCopy = record;
  v4 = [TRIPartialRolloutRecord alloc];
  deployment = [recordCopy deployment];
  rampId = [recordCopy rampId];
  activeFactorPackSetId = [recordCopy activeFactorPackSetId];
  activeTargetingRuleIndex = [recordCopy activeTargetingRuleIndex];
  targetedFactorPackSetId = [recordCopy targetedFactorPackSetId];
  targetedTargetingRuleIndex = [recordCopy targetedTargetingRuleIndex];
  status = [recordCopy status];
  namespaces = [recordCopy namespaces];

  v13 = [(TRIPartialRolloutRecord *)v4 initWithDeployment:deployment rampId:rampId activeFactorPackSetId:activeFactorPackSetId activeTargetingRuleIndex:activeTargetingRuleIndex targetedFactorPackSetId:targetedFactorPackSetId targetedTargetingRuleIndex:targetedTargetingRuleIndex status:status namespaces:namespaces];

  return v13;
}

- (TRIPartialRolloutRecord)initWithDeployment:(id)deployment rampId:(id)id activeFactorPackSetId:(id)setId activeTargetingRuleIndex:(id)index targetedFactorPackSetId:(id)packSetId targetedTargetingRuleIndex:(id)ruleIndex status:(int64_t)status namespaces:(id)self0
{
  deploymentCopy = deployment;
  idCopy = id;
  idCopy2 = id;
  setIdCopy = setId;
  setIdCopy2 = setId;
  indexCopy = index;
  packSetIdCopy = packSetId;
  ruleIndexCopy = ruleIndex;
  namespacesCopy = namespaces;
  v32 = namespacesCopy;
  if (deploymentCopy)
  {
    if (namespacesCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1828 description:{@"Invalid parameter not satisfying: %@", @"deployment != nil"}];

    if (v32)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1829 description:{@"Invalid parameter not satisfying: %@", @"namespaces != nil"}];

LABEL_3:
  v33.receiver = self;
  v33.super_class = TRIPartialRolloutRecord;
  v22 = [(TRIPartialRolloutRecord *)&v33 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_deployment, deployment);
    objc_storeStrong(&v23->_rampId, idCopy);
    objc_storeStrong(&v23->_activeFactorPackSetId, setIdCopy);
    objc_storeStrong(&v23->_activeTargetingRuleIndex, index);
    objc_storeStrong(&v23->_targetedFactorPackSetId, packSetId);
    objc_storeStrong(&v23->_targetedTargetingRuleIndex, ruleIndex);
    v23->_status = status;
    objc_storeStrong(&v23->_namespaces, namespaces);
  }

  return v23;
}

+ (id)recordWithDeployment:(id)deployment rampId:(id)id activeFactorPackSetId:(id)setId activeTargetingRuleIndex:(id)index targetedFactorPackSetId:(id)packSetId targetedTargetingRuleIndex:(id)ruleIndex status:(int64_t)status namespaces:(id)self0
{
  namespacesCopy = namespaces;
  ruleIndexCopy = ruleIndex;
  packSetIdCopy = packSetId;
  indexCopy = index;
  setIdCopy = setId;
  idCopy = id;
  deploymentCopy = deployment;
  v24 = [[self alloc] initWithDeployment:deploymentCopy rampId:idCopy activeFactorPackSetId:setIdCopy activeTargetingRuleIndex:indexCopy targetedFactorPackSetId:packSetIdCopy targetedTargetingRuleIndex:ruleIndexCopy status:status namespaces:namespacesCopy];

  return v24;
}

- (id)copyWithReplacementDeployment:(id)deployment
{
  deploymentCopy = deployment;
  v5 = objc_alloc(objc_opt_class());
  status = self->_status;
  v7 = [v5 initWithDeployment:deploymentCopy rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:status namespaces:self->_namespaces];

  return v7;
}

- (id)copyWithReplacementRampId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:idCopy activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces];

  return v5;
}

- (id)copyWithReplacementActiveFactorPackSetId:(id)id
{
  idCopy = id;
  v5 = objc_alloc(objc_opt_class());
  status = self->_status;
  v7 = [v5 initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:idCopy activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:status namespaces:self->_namespaces];

  return v7;
}

- (id)copyWithReplacementActiveTargetingRuleIndex:(id)index
{
  indexCopy = index;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:indexCopy targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces];

  return v5;
}

- (id)copyWithReplacementTargetedFactorPackSetId:(id)id
{
  idCopy = id;
  v5 = objc_alloc(objc_opt_class());
  status = self->_status;
  v7 = [v5 initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:idCopy targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:status namespaces:self->_namespaces];

  return v7;
}

- (id)copyWithReplacementTargetedTargetingRuleIndex:(id)index
{
  indexCopy = index;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:indexCopy status:self->_status namespaces:self->_namespaces];

  return v5;
}

- (id)copyWithReplacementNamespaces:(id)namespaces
{
  namespacesCopy = namespaces;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:namespacesCopy];

  return v5;
}

- (BOOL)isEqualToRecord:(id)record
{
  recordCopy = record;
  v5 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_24;
  }

  v6 = self->_deployment == 0;
  deployment = [recordCopy deployment];
  v8 = deployment != 0;

  if (v6 == v8)
  {
    goto LABEL_24;
  }

  deployment = self->_deployment;
  if (deployment)
  {
    deployment2 = [v5 deployment];
    v11 = [(TRIRolloutDeployment *)deployment isEqual:deployment2];

    if (!v11)
    {
      goto LABEL_24;
    }
  }

  v12 = self->_rampId == 0;
  rampId = [v5 rampId];
  v14 = rampId != 0;

  if (v12 == v14)
  {
    goto LABEL_24;
  }

  rampId = self->_rampId;
  if (rampId)
  {
    rampId2 = [v5 rampId];
    v17 = [(TRIRampId *)rampId isEqual:rampId2];

    if (!v17)
    {
      goto LABEL_24;
    }
  }

  v18 = self->_activeFactorPackSetId == 0;
  activeFactorPackSetId = [v5 activeFactorPackSetId];
  v20 = activeFactorPackSetId != 0;

  if (v18 == v20)
  {
    goto LABEL_24;
  }

  activeFactorPackSetId = self->_activeFactorPackSetId;
  if (activeFactorPackSetId)
  {
    activeFactorPackSetId2 = [v5 activeFactorPackSetId];
    v23 = [(TRIFactorPackSetId *)activeFactorPackSetId isEqual:activeFactorPackSetId2];

    if (!v23)
    {
      goto LABEL_24;
    }
  }

  v24 = self->_activeTargetingRuleIndex == 0;
  activeTargetingRuleIndex = [v5 activeTargetingRuleIndex];
  v26 = activeTargetingRuleIndex != 0;

  if (v24 == v26)
  {
    goto LABEL_24;
  }

  activeTargetingRuleIndex = self->_activeTargetingRuleIndex;
  if (activeTargetingRuleIndex)
  {
    activeTargetingRuleIndex2 = [v5 activeTargetingRuleIndex];
    v29 = [(NSNumber *)activeTargetingRuleIndex isEqual:activeTargetingRuleIndex2];

    if (!v29)
    {
      goto LABEL_24;
    }
  }

  v30 = self->_targetedFactorPackSetId == 0;
  targetedFactorPackSetId = [v5 targetedFactorPackSetId];
  v32 = targetedFactorPackSetId != 0;

  if (v30 == v32)
  {
    goto LABEL_24;
  }

  targetedFactorPackSetId = self->_targetedFactorPackSetId;
  if (targetedFactorPackSetId)
  {
    targetedFactorPackSetId2 = [v5 targetedFactorPackSetId];
    v35 = [(TRIFactorPackSetId *)targetedFactorPackSetId isEqual:targetedFactorPackSetId2];

    if (!v35)
    {
      goto LABEL_24;
    }
  }

  v36 = self->_targetedTargetingRuleIndex == 0;
  targetedTargetingRuleIndex = [v5 targetedTargetingRuleIndex];
  v38 = targetedTargetingRuleIndex != 0;

  if (v36 == v38)
  {
    goto LABEL_24;
  }

  targetedTargetingRuleIndex = self->_targetedTargetingRuleIndex;
  if (targetedTargetingRuleIndex)
  {
    targetedTargetingRuleIndex2 = [v5 targetedTargetingRuleIndex];
    v41 = [(NSNumber *)targetedTargetingRuleIndex isEqual:targetedTargetingRuleIndex2];

    if (!v41)
    {
      goto LABEL_24;
    }
  }

  status = self->_status;
  if (status != [v5 status] || (v43 = self->_namespaces == 0, objc_msgSend(v5, "namespaces"), v44 = objc_claimAutoreleasedReturnValue(), v45 = v44 != 0, v44, v43 == v45))
  {
LABEL_24:
    v48 = 0;
  }

  else
  {
    namespaces = self->_namespaces;
    if (namespaces)
    {
      namespaces = [v5 namespaces];
      v48 = [(NSArray *)namespaces isEqual:namespaces];
    }

    else
    {
      v48 = 1;
    }
  }

  return v48 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIPartialRolloutRecord *)self isEqualToRecord:v5];
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
  v8 = [(NSNumber *)self->_targetedTargetingRuleIndex hash]- v7 + 32 * v7;
  namespaces = self->_namespaces;
  v10 = self->_status - v8 + 32 * v8;
  return [(NSArray *)namespaces hash]- v10 + 32 * v10;
}

- (TRIPartialRolloutRecord)initWithCoder:(id)coder
{
  v74[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deployment"];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rampId"];
    if (v6)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = objc_opt_class();
        v8 = NSStringFromClass(v7);
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIPartialRolloutRecord key rampId (expected %@, decoded %@)", v8, v10, 0];
        v71 = *MEMORY[0x277CCA450];
        v72 = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
        v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialRolloutRecordOCNTErrorDomain" code:3 userInfo:v12];
        [coderCopy failWithError:v13];
LABEL_20:
        selfCopy = 0;
LABEL_21:

LABEL_22:
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }
    }

    else
    {
      error = [coderCopy error];

      if (error)
      {
        v6 = 0;
        selfCopy = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activeFactorPackSetId"];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v17 = objc_opt_class();
        v10 = NSStringFromClass(v17);
        v18 = objc_opt_class();
        v11 = NSStringFromClass(v18);
        v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIPartialRolloutRecord key activeFactorPackSetId (expected %@, decoded %@)", v10, v11, 0];
        v69 = *MEMORY[0x277CCA450];
        v70 = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
        v19 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialRolloutRecordOCNTErrorDomain" code:3 userInfo:v13];
        [coderCopy failWithError:v19];
LABEL_19:

        goto LABEL_20;
      }

LABEL_16:
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"activeTargetingRuleIndex"];
      if (v10)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v21 = objc_opt_class();
          v55 = NSStringFromClass(v21);
          v22 = objc_opt_class();
          v12 = NSStringFromClass(v22);
          v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIPartialRolloutRecord key activeTargetingRuleIndex (expected %@, decoded %@)", v55, v12, 0];
          v67 = *MEMORY[0x277CCA450];
          v68 = v13;
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
          v23 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialRolloutRecordOCNTErrorDomain" code:3 userInfo:v19];
          [coderCopy failWithError:v23];

          v11 = v55;
          goto LABEL_19;
        }
      }

      else
      {
        error2 = [coderCopy error];

        if (error2)
        {
          v10 = 0;
          selfCopy = 0;
          goto LABEL_24;
        }
      }

      v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetedFactorPackSetId"];
      if (v56)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v27 = objc_opt_class();
          v12 = NSStringFromClass(v27);
          v28 = objc_opt_class();
          v13 = NSStringFromClass(v28);
          v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIPartialRolloutRecord key targetedFactorPackSetId (expected %@, decoded %@)", v12, v13, 0];
          v65 = *MEMORY[0x277CCA450];
          v66 = v52;
          v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
          v30 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialRolloutRecordOCNTErrorDomain" code:3 userInfo:v29];
          [coderCopy failWithError:v30];

          v11 = v56;
          goto LABEL_20;
        }
      }

      else
      {
        error3 = [coderCopy error];

        if (error3)
        {
          v11 = 0;
          selfCopy = 0;
          goto LABEL_23;
        }
      }

      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetedTargetingRuleIndex"];
      if (v12)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v32 = objc_opt_class();
          v13 = NSStringFromClass(v32);
          v33 = objc_opt_class();
          v53 = NSStringFromClass(v33);
          v51 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIPartialRolloutRecord key targetedTargetingRuleIndex (expected %@, decoded %@)", v13, v53, 0];
          v63 = *MEMORY[0x277CCA450];
          v64 = v51;
          v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
          v35 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialRolloutRecordOCNTErrorDomain" code:3 userInfo:v34];
          [coderCopy failWithError:v35];

LABEL_50:
LABEL_51:
          selfCopy = 0;
          v11 = v56;
          goto LABEL_21;
        }
      }

      else
      {
        error4 = [coderCopy error];

        if (error4)
        {
          v12 = 0;
          goto LABEL_45;
        }
      }

      v37 = [coderCopy decodeInt64ForKey:@"status"];
      if (v37)
      {
LABEL_41:
        v54 = v37;
        v38 = objc_alloc(MEMORY[0x277CBEB98]);
        v39 = objc_opt_class();
        v40 = [v38 initWithObjects:{v39, objc_opt_class(), 0}];
        v13 = [coderCopy decodeObjectOfClasses:v40 forKey:@"namespaces"];

        if (!v13)
        {
          error5 = [coderCopy error];

          if (!error5)
          {
            v59 = *MEMORY[0x277CCA450];
            v60 = @"Retrieved nil serialized value for nonnull TRIPartialRolloutRecord.namespaces";
            v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
            v44 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialRolloutRecordOCNTErrorDomain" code:2 userInfo:v43];
            [coderCopy failWithError:v44];
          }

          v13 = 0;
          goto LABEL_51;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v56;
          self = [(TRIPartialRolloutRecord *)self initWithDeployment:v5 rampId:v6 activeFactorPackSetId:v8 activeTargetingRuleIndex:v10 targetedFactorPackSetId:v56 targetedTargetingRuleIndex:v12 status:v54 namespaces:v13];
          selfCopy = self;
          goto LABEL_21;
        }

        v45 = objc_opt_class();
        v53 = NSStringFromClass(v45);
        v46 = objc_opt_class();
        v51 = NSStringFromClass(v46);
        v50 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIPartialRolloutRecord key namespaces (expected %@, decoded %@)", v53, v51, 0];
        v57 = *MEMORY[0x277CCA450];
        v58 = v50;
        v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
        v48 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialRolloutRecordOCNTErrorDomain" code:3 userInfo:v47];
        [coderCopy failWithError:v48];

        goto LABEL_50;
      }

      error6 = [coderCopy error];

      if (!error6)
      {
        if (([coderCopy containsValueForKey:@"status"] & 1) == 0)
        {
          v61 = *MEMORY[0x277CCA450];
          v62 = @"Missing serialized value for TRIPartialRolloutRecord.status";
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
          v49 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialRolloutRecordOCNTErrorDomain" code:1 userInfo:v13];
          [coderCopy failWithError:v49];

          goto LABEL_51;
        }

        goto LABEL_41;
      }

LABEL_45:
      selfCopy = 0;
      v11 = v56;
      goto LABEL_22;
    }

    error7 = [coderCopy error];

    if (!error7)
    {
      goto LABEL_16;
    }

    v8 = 0;
LABEL_15:
    selfCopy = 0;
LABEL_25:

    goto LABEL_26;
  }

  error8 = [coderCopy error];

  if (!error8)
  {
    v73 = *MEMORY[0x277CCA450];
    v74[0] = @"Retrieved nil serialized value for nonnull TRIPartialRolloutRecord.deployment";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:&v73 count:1];
    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialRolloutRecordOCNTErrorDomain" code:2 userInfo:v6];
    [coderCopy failWithError:v8];
    goto LABEL_15;
  }

  selfCopy = 0;
LABEL_27:

  v24 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deployment = self->_deployment;
  v12 = coderCopy;
  if (deployment)
  {
    [coderCopy encodeObject:deployment forKey:@"deployment"];
    coderCopy = v12;
  }

  rampId = self->_rampId;
  if (rampId)
  {
    [v12 encodeObject:rampId forKey:@"rampId"];
    coderCopy = v12;
  }

  activeFactorPackSetId = self->_activeFactorPackSetId;
  if (activeFactorPackSetId)
  {
    [v12 encodeObject:activeFactorPackSetId forKey:@"activeFactorPackSetId"];
    coderCopy = v12;
  }

  activeTargetingRuleIndex = self->_activeTargetingRuleIndex;
  if (activeTargetingRuleIndex)
  {
    [v12 encodeObject:activeTargetingRuleIndex forKey:@"activeTargetingRuleIndex"];
    coderCopy = v12;
  }

  targetedFactorPackSetId = self->_targetedFactorPackSetId;
  if (targetedFactorPackSetId)
  {
    [v12 encodeObject:targetedFactorPackSetId forKey:@"targetedFactorPackSetId"];
    coderCopy = v12;
  }

  targetedTargetingRuleIndex = self->_targetedTargetingRuleIndex;
  if (targetedTargetingRuleIndex)
  {
    [v12 encodeObject:targetedTargetingRuleIndex forKey:@"targetedTargetingRuleIndex"];
    coderCopy = v12;
  }

  [coderCopy encodeInt64:self->_status forKey:@"status"];
  namespaces = self->_namespaces;
  if (namespaces)
  {
    [v12 encodeObject:namespaces forKey:@"namespaces"];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = *&self->_deployment;
  v9 = *&self->_activeFactorPackSetId;
  targetedFactorPackSetId = self->_targetedFactorPackSetId;
  targetedTargetingRuleIndex = self->_targetedTargetingRuleIndex;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:self->_status];
  v7 = [v3 initWithFormat:@"<TRIPartialRolloutRecord | deployment:%@ rampId:%@ activeFactorPackSetId:%@ activeTargetingRuleIndex:%@ targetedFactorPackSetId:%@ targetedTargetingRuleIndex:%@ status:%@ namespaces:%@>", v10, v9, targetedFactorPackSetId, targetedTargetingRuleIndex, v6, self->_namespaces];

  return v7;
}

@end