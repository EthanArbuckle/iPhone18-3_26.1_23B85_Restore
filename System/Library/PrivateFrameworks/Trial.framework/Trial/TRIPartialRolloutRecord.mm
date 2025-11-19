@interface TRIPartialRolloutRecord
+ (id)partialRecordWithFullRecord:(id)a3;
+ (id)recordWithDeployment:(id)a3 rampId:(id)a4 activeFactorPackSetId:(id)a5 activeTargetingRuleIndex:(id)a6 targetedFactorPackSetId:(id)a7 targetedTargetingRuleIndex:(id)a8 status:(int64_t)a9 namespaces:(id)a10;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRecord:(id)a3;
- (TRIPartialRolloutRecord)initWithCoder:(id)a3;
- (TRIPartialRolloutRecord)initWithDeployment:(id)a3 rampId:(id)a4 activeFactorPackSetId:(id)a5 activeTargetingRuleIndex:(id)a6 targetedFactorPackSetId:(id)a7 targetedTargetingRuleIndex:(id)a8 status:(int64_t)a9 namespaces:(id)a10;
- (id)copyWithReplacementActiveFactorPackSetId:(id)a3;
- (id)copyWithReplacementActiveTargetingRuleIndex:(id)a3;
- (id)copyWithReplacementDeployment:(id)a3;
- (id)copyWithReplacementNamespaces:(id)a3;
- (id)copyWithReplacementRampId:(id)a3;
- (id)copyWithReplacementTargetedFactorPackSetId:(id)a3;
- (id)copyWithReplacementTargetedTargetingRuleIndex:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIPartialRolloutRecord

+ (id)partialRecordWithFullRecord:(id)a3
{
  v3 = a3;
  v4 = [TRIPartialRolloutRecord alloc];
  v5 = [v3 deployment];
  v6 = [v3 rampId];
  v7 = [v3 activeFactorPackSetId];
  v8 = [v3 activeTargetingRuleIndex];
  v9 = [v3 targetedFactorPackSetId];
  v10 = [v3 targetedTargetingRuleIndex];
  v11 = [v3 status];
  v12 = [v3 namespaces];

  v13 = [(TRIPartialRolloutRecord *)v4 initWithDeployment:v5 rampId:v6 activeFactorPackSetId:v7 activeTargetingRuleIndex:v8 targetedFactorPackSetId:v9 targetedTargetingRuleIndex:v10 status:v11 namespaces:v12];

  return v13;
}

- (TRIPartialRolloutRecord)initWithDeployment:(id)a3 rampId:(id)a4 activeFactorPackSetId:(id)a5 activeTargetingRuleIndex:(id)a6 targetedFactorPackSetId:(id)a7 targetedTargetingRuleIndex:(id)a8 status:(int64_t)a9 namespaces:(id)a10
{
  v16 = a3;
  v29 = a4;
  v17 = a4;
  v30 = a5;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v31 = a8;
  v21 = a10;
  v32 = v21;
  if (v16)
  {
    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1828 description:{@"Invalid parameter not satisfying: %@", @"deployment != nil"}];

    if (v32)
    {
      goto LABEL_3;
    }
  }

  v26 = [MEMORY[0x277CCA890] currentHandler];
  [v26 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1829 description:{@"Invalid parameter not satisfying: %@", @"namespaces != nil"}];

LABEL_3:
  v33.receiver = self;
  v33.super_class = TRIPartialRolloutRecord;
  v22 = [(TRIPartialRolloutRecord *)&v33 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_deployment, a3);
    objc_storeStrong(&v23->_rampId, v29);
    objc_storeStrong(&v23->_activeFactorPackSetId, v30);
    objc_storeStrong(&v23->_activeTargetingRuleIndex, a6);
    objc_storeStrong(&v23->_targetedFactorPackSetId, a7);
    objc_storeStrong(&v23->_targetedTargetingRuleIndex, a8);
    v23->_status = a9;
    objc_storeStrong(&v23->_namespaces, a10);
  }

  return v23;
}

+ (id)recordWithDeployment:(id)a3 rampId:(id)a4 activeFactorPackSetId:(id)a5 activeTargetingRuleIndex:(id)a6 targetedFactorPackSetId:(id)a7 targetedTargetingRuleIndex:(id)a8 status:(int64_t)a9 namespaces:(id)a10
{
  v17 = a10;
  v18 = a8;
  v19 = a7;
  v20 = a6;
  v21 = a5;
  v22 = a4;
  v23 = a3;
  v24 = [[a1 alloc] initWithDeployment:v23 rampId:v22 activeFactorPackSetId:v21 activeTargetingRuleIndex:v20 targetedFactorPackSetId:v19 targetedTargetingRuleIndex:v18 status:a9 namespaces:v17];

  return v24;
}

- (id)copyWithReplacementDeployment:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  status = self->_status;
  v7 = [v5 initWithDeployment:v4 rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:status namespaces:self->_namespaces];

  return v7;
}

- (id)copyWithReplacementRampId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:v4 activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces];

  return v5;
}

- (id)copyWithReplacementActiveFactorPackSetId:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  status = self->_status;
  v7 = [v5 initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:v4 activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:status namespaces:self->_namespaces];

  return v7;
}

- (id)copyWithReplacementActiveTargetingRuleIndex:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:v4 targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:self->_namespaces];

  return v5;
}

- (id)copyWithReplacementTargetedFactorPackSetId:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  status = self->_status;
  v7 = [v5 initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:v4 targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:status namespaces:self->_namespaces];

  return v7;
}

- (id)copyWithReplacementTargetedTargetingRuleIndex:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:v4 status:self->_status namespaces:self->_namespaces];

  return v5;
}

- (id)copyWithReplacementNamespaces:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithDeployment:self->_deployment rampId:self->_rampId activeFactorPackSetId:self->_activeFactorPackSetId activeTargetingRuleIndex:self->_activeTargetingRuleIndex targetedFactorPackSetId:self->_targetedFactorPackSetId targetedTargetingRuleIndex:self->_targetedTargetingRuleIndex status:self->_status namespaces:v4];

  return v5;
}

- (BOOL)isEqualToRecord:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_24;
  }

  v6 = self->_deployment == 0;
  v7 = [v4 deployment];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_24;
  }

  deployment = self->_deployment;
  if (deployment)
  {
    v10 = [v5 deployment];
    v11 = [(TRIRolloutDeployment *)deployment isEqual:v10];

    if (!v11)
    {
      goto LABEL_24;
    }
  }

  v12 = self->_rampId == 0;
  v13 = [v5 rampId];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_24;
  }

  rampId = self->_rampId;
  if (rampId)
  {
    v16 = [v5 rampId];
    v17 = [(TRIRampId *)rampId isEqual:v16];

    if (!v17)
    {
      goto LABEL_24;
    }
  }

  v18 = self->_activeFactorPackSetId == 0;
  v19 = [v5 activeFactorPackSetId];
  v20 = v19 != 0;

  if (v18 == v20)
  {
    goto LABEL_24;
  }

  activeFactorPackSetId = self->_activeFactorPackSetId;
  if (activeFactorPackSetId)
  {
    v22 = [v5 activeFactorPackSetId];
    v23 = [(TRIFactorPackSetId *)activeFactorPackSetId isEqual:v22];

    if (!v23)
    {
      goto LABEL_24;
    }
  }

  v24 = self->_activeTargetingRuleIndex == 0;
  v25 = [v5 activeTargetingRuleIndex];
  v26 = v25 != 0;

  if (v24 == v26)
  {
    goto LABEL_24;
  }

  activeTargetingRuleIndex = self->_activeTargetingRuleIndex;
  if (activeTargetingRuleIndex)
  {
    v28 = [v5 activeTargetingRuleIndex];
    v29 = [(NSNumber *)activeTargetingRuleIndex isEqual:v28];

    if (!v29)
    {
      goto LABEL_24;
    }
  }

  v30 = self->_targetedFactorPackSetId == 0;
  v31 = [v5 targetedFactorPackSetId];
  v32 = v31 != 0;

  if (v30 == v32)
  {
    goto LABEL_24;
  }

  targetedFactorPackSetId = self->_targetedFactorPackSetId;
  if (targetedFactorPackSetId)
  {
    v34 = [v5 targetedFactorPackSetId];
    v35 = [(TRIFactorPackSetId *)targetedFactorPackSetId isEqual:v34];

    if (!v35)
    {
      goto LABEL_24;
    }
  }

  v36 = self->_targetedTargetingRuleIndex == 0;
  v37 = [v5 targetedTargetingRuleIndex];
  v38 = v37 != 0;

  if (v36 == v38)
  {
    goto LABEL_24;
  }

  targetedTargetingRuleIndex = self->_targetedTargetingRuleIndex;
  if (targetedTargetingRuleIndex)
  {
    v40 = [v5 targetedTargetingRuleIndex];
    v41 = [(NSNumber *)targetedTargetingRuleIndex isEqual:v40];

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
      v47 = [v5 namespaces];
      v48 = [(NSArray *)namespaces isEqual:v47];
    }

    else
    {
      v48 = 1;
    }
  }

  return v48 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIPartialRolloutRecord *)self isEqualToRecord:v5];
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

- (TRIPartialRolloutRecord)initWithCoder:(id)a3
{
  v74[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"deployment"];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rampId"];
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
        [v4 failWithError:v13];
LABEL_20:
        v15 = 0;
LABEL_21:

LABEL_22:
LABEL_23:

LABEL_24:
        goto LABEL_25;
      }
    }

    else
    {
      v16 = [v4 error];

      if (v16)
      {
        v6 = 0;
        v15 = 0;
LABEL_26:

        goto LABEL_27;
      }
    }

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeFactorPackSetId"];
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
        [v4 failWithError:v19];
LABEL_19:

        goto LABEL_20;
      }

LABEL_16:
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"activeTargetingRuleIndex"];
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
          [v4 failWithError:v23];

          v11 = v55;
          goto LABEL_19;
        }
      }

      else
      {
        v26 = [v4 error];

        if (v26)
        {
          v10 = 0;
          v15 = 0;
          goto LABEL_24;
        }
      }

      v56 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetedFactorPackSetId"];
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
          [v4 failWithError:v30];

          v11 = v56;
          goto LABEL_20;
        }
      }

      else
      {
        v31 = [v4 error];

        if (v31)
        {
          v11 = 0;
          v15 = 0;
          goto LABEL_23;
        }
      }

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetedTargetingRuleIndex"];
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
          [v4 failWithError:v35];

LABEL_50:
LABEL_51:
          v15 = 0;
          v11 = v56;
          goto LABEL_21;
        }
      }

      else
      {
        v36 = [v4 error];

        if (v36)
        {
          v12 = 0;
          goto LABEL_45;
        }
      }

      v37 = [v4 decodeInt64ForKey:@"status"];
      if (v37)
      {
LABEL_41:
        v54 = v37;
        v38 = objc_alloc(MEMORY[0x277CBEB98]);
        v39 = objc_opt_class();
        v40 = [v38 initWithObjects:{v39, objc_opt_class(), 0}];
        v13 = [v4 decodeObjectOfClasses:v40 forKey:@"namespaces"];

        if (!v13)
        {
          v42 = [v4 error];

          if (!v42)
          {
            v59 = *MEMORY[0x277CCA450];
            v60 = @"Retrieved nil serialized value for nonnull TRIPartialRolloutRecord.namespaces";
            v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
            v44 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialRolloutRecordOCNTErrorDomain" code:2 userInfo:v43];
            [v4 failWithError:v44];
          }

          v13 = 0;
          goto LABEL_51;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v56;
          self = [(TRIPartialRolloutRecord *)self initWithDeployment:v5 rampId:v6 activeFactorPackSetId:v8 activeTargetingRuleIndex:v10 targetedFactorPackSetId:v56 targetedTargetingRuleIndex:v12 status:v54 namespaces:v13];
          v15 = self;
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
        [v4 failWithError:v48];

        goto LABEL_50;
      }

      v41 = [v4 error];

      if (!v41)
      {
        if (([v4 containsValueForKey:@"status"] & 1) == 0)
        {
          v61 = *MEMORY[0x277CCA450];
          v62 = @"Missing serialized value for TRIPartialRolloutRecord.status";
          v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
          v49 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialRolloutRecordOCNTErrorDomain" code:1 userInfo:v13];
          [v4 failWithError:v49];

          goto LABEL_51;
        }

        goto LABEL_41;
      }

LABEL_45:
      v15 = 0;
      v11 = v56;
      goto LABEL_22;
    }

    v20 = [v4 error];

    if (!v20)
    {
      goto LABEL_16;
    }

    v8 = 0;
LABEL_15:
    v15 = 0;
LABEL_25:

    goto LABEL_26;
  }

  v14 = [v4 error];

  if (!v14)
  {
    v73 = *MEMORY[0x277CCA450];
    v74[0] = @"Retrieved nil serialized value for nonnull TRIPartialRolloutRecord.deployment";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:&v73 count:1];
    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialRolloutRecordOCNTErrorDomain" code:2 userInfo:v6];
    [v4 failWithError:v8];
    goto LABEL_15;
  }

  v15 = 0;
LABEL_27:

  v24 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  deployment = self->_deployment;
  v12 = v4;
  if (deployment)
  {
    [v4 encodeObject:deployment forKey:@"deployment"];
    v4 = v12;
  }

  rampId = self->_rampId;
  if (rampId)
  {
    [v12 encodeObject:rampId forKey:@"rampId"];
    v4 = v12;
  }

  activeFactorPackSetId = self->_activeFactorPackSetId;
  if (activeFactorPackSetId)
  {
    [v12 encodeObject:activeFactorPackSetId forKey:@"activeFactorPackSetId"];
    v4 = v12;
  }

  activeTargetingRuleIndex = self->_activeTargetingRuleIndex;
  if (activeTargetingRuleIndex)
  {
    [v12 encodeObject:activeTargetingRuleIndex forKey:@"activeTargetingRuleIndex"];
    v4 = v12;
  }

  targetedFactorPackSetId = self->_targetedFactorPackSetId;
  if (targetedFactorPackSetId)
  {
    [v12 encodeObject:targetedFactorPackSetId forKey:@"targetedFactorPackSetId"];
    v4 = v12;
  }

  targetedTargetingRuleIndex = self->_targetedTargetingRuleIndex;
  if (targetedTargetingRuleIndex)
  {
    [v12 encodeObject:targetedTargetingRuleIndex forKey:@"targetedTargetingRuleIndex"];
    v4 = v12;
  }

  [v4 encodeInt64:self->_status forKey:@"status"];
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