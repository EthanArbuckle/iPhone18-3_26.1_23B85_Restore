@interface TRIPartialExperimentRecord
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRecord:(id)a3;
- (TRIPartialExperimentRecord)initWithCoder:(id)a3;
- (TRIPartialExperimentRecord)initWithDeploymentEnvironment:(int)a3 experimentDeployment:(id)a4 treatmentId:(id)a5 factorPackSetId:(id)a6 type:(int)a7 status:(int64_t)a8 startDate:(id)a9 endDate:(id)a10 namespaces:(id)a11 experimentType:(int)a12 counterfactualTreatmentIds:(id)a13;
- (id)copyWithReplacementCounterfactualTreatmentIds:(id)a3;
- (id)copyWithReplacementEndDate:(id)a3;
- (id)copyWithReplacementExperimentDeployment:(id)a3;
- (id)copyWithReplacementFactorPackSetId:(id)a3;
- (id)copyWithReplacementNamespaces:(id)a3;
- (id)copyWithReplacementStartDate:(id)a3;
- (id)copyWithReplacementStatus:(int64_t)a3;
- (id)copyWithReplacementTreatmentId:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIPartialExperimentRecord

- (TRIPartialExperimentRecord)initWithDeploymentEnvironment:(int)a3 experimentDeployment:(id)a4 treatmentId:(id)a5 factorPackSetId:(id)a6 type:(int)a7 status:(int64_t)a8 startDate:(id)a9 endDate:(id)a10 namespaces:(id)a11 experimentType:(int)a12 counterfactualTreatmentIds:(id)a13
{
  v17 = a4;
  v35 = a5;
  v18 = a5;
  v37 = a6;
  v19 = a6;
  v20 = a9;
  v38 = a10;
  v21 = a11;
  v22 = a13;
  v39 = v21;
  if (v17)
  {
    if (v21)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v29 = v22;
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:638 description:{@"Invalid parameter not satisfying: %@", @"experimentDeployment != nil"}];

    v22 = v29;
    if (v39)
    {
      goto LABEL_3;
    }
  }

  v30 = v22;
  v28 = [MEMORY[0x277CCA890] currentHandler];
  [v28 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:639 description:{@"Invalid parameter not satisfying: %@", @"namespaces != nil"}];

  v22 = v30;
LABEL_3:
  v23 = v22;
  if (!v22)
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:640 description:{@"Invalid parameter not satisfying: %@", @"counterfactualTreatmentIds != nil"}];
  }

  v40.receiver = self;
  v40.super_class = TRIPartialExperimentRecord;
  v24 = [(TRIPartialExperimentRecord *)&v40 init];
  v25 = v24;
  if (v24)
  {
    v24->_deploymentEnvironment = a3;
    objc_storeStrong(&v24->_experimentDeployment, a4);
    objc_storeStrong(&v25->_treatmentId, v35);
    objc_storeStrong(&v25->_factorPackSetId, v37);
    v25->_type = a7;
    v25->_status = a8;
    objc_storeStrong(&v25->_startDate, a9);
    objc_storeStrong(&v25->_endDate, a10);
    objc_storeStrong(&v25->_namespaces, a11);
    v25->_experimentType = a12;
    objc_storeStrong(&v25->_counterfactualTreatmentIds, a13);
  }

  return v25;
}

- (id)copyWithReplacementExperimentDeployment:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:v4 treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces experimentType:v8 counterfactualTreatmentIds:self->_counterfactualTreatmentIds];

  return v6;
}

- (id)copyWithReplacementTreatmentId:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:v4 factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces experimentType:v8 counterfactualTreatmentIds:self->_counterfactualTreatmentIds];

  return v6;
}

- (id)copyWithReplacementFactorPackSetId:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:v4 type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces experimentType:v8 counterfactualTreatmentIds:self->_counterfactualTreatmentIds];

  return v6;
}

- (id)copyWithReplacementStatus:(int64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v7) = self->_experimentType;
  return [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:a3 startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces experimentType:v7 counterfactualTreatmentIds:self->_counterfactualTreatmentIds];
}

- (id)copyWithReplacementStartDate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:v4 endDate:self->_endDate namespaces:self->_namespaces experimentType:v8 counterfactualTreatmentIds:self->_counterfactualTreatmentIds];

  return v6;
}

- (id)copyWithReplacementEndDate:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:v4 namespaces:self->_namespaces experimentType:v8 counterfactualTreatmentIds:self->_counterfactualTreatmentIds];

  return v6;
}

- (id)copyWithReplacementNamespaces:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:v4 experimentType:v8 counterfactualTreatmentIds:self->_counterfactualTreatmentIds];

  return v6;
}

- (id)copyWithReplacementCounterfactualTreatmentIds:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  LODWORD(v8) = self->_experimentType;
  v6 = [v5 initWithDeploymentEnvironment:self->_deploymentEnvironment experimentDeployment:self->_experimentDeployment treatmentId:self->_treatmentId factorPackSetId:self->_factorPackSetId type:self->_type status:self->_status startDate:self->_startDate endDate:self->_endDate namespaces:self->_namespaces experimentType:v8 counterfactualTreatmentIds:v4];

  return v6;
}

- (BOOL)isEqualToRecord:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_27;
  }

  deploymentEnvironment = self->_deploymentEnvironment;
  if (deploymentEnvironment != [v4 deploymentEnvironment])
  {
    goto LABEL_27;
  }

  v7 = self->_experimentDeployment == 0;
  v8 = [v5 experimentDeployment];
  v9 = v8 != 0;

  if (v7 == v9)
  {
    goto LABEL_27;
  }

  experimentDeployment = self->_experimentDeployment;
  if (experimentDeployment)
  {
    v11 = [v5 experimentDeployment];
    v12 = [(TRIExperimentDeployment *)experimentDeployment isEqual:v11];

    if (!v12)
    {
      goto LABEL_27;
    }
  }

  v13 = self->_treatmentId == 0;
  v14 = [v5 treatmentId];
  v15 = v14 != 0;

  if (v13 == v15)
  {
    goto LABEL_27;
  }

  treatmentId = self->_treatmentId;
  if (treatmentId)
  {
    v17 = [v5 treatmentId];
    v18 = [(NSString *)treatmentId isEqual:v17];

    if (!v18)
    {
      goto LABEL_27;
    }
  }

  v19 = self->_factorPackSetId == 0;
  v20 = [v5 factorPackSetId];
  v21 = v20 != 0;

  if (v19 == v21)
  {
    goto LABEL_27;
  }

  factorPackSetId = self->_factorPackSetId;
  if (factorPackSetId)
  {
    v23 = [v5 factorPackSetId];
    v24 = [(TRIFactorPackSetId *)factorPackSetId isEqual:v23];

    if (!v24)
    {
      goto LABEL_27;
    }
  }

  type = self->_type;
  if (type != [v5 type])
  {
    goto LABEL_27;
  }

  status = self->_status;
  if (status != [v5 status])
  {
    goto LABEL_27;
  }

  v27 = self->_startDate == 0;
  v28 = [v5 startDate];
  v29 = v28 != 0;

  if (v27 == v29)
  {
    goto LABEL_27;
  }

  startDate = self->_startDate;
  if (startDate)
  {
    v31 = [v5 startDate];
    v32 = [(NSDate *)startDate isEqual:v31];

    if (!v32)
    {
      goto LABEL_27;
    }
  }

  v33 = self->_endDate == 0;
  v34 = [v5 endDate];
  v35 = v34 != 0;

  if (v33 == v35)
  {
    goto LABEL_27;
  }

  endDate = self->_endDate;
  if (endDate)
  {
    v37 = [v5 endDate];
    v38 = [(NSDate *)endDate isEqual:v37];

    if (!v38)
    {
      goto LABEL_27;
    }
  }

  v39 = self->_namespaces == 0;
  v40 = [v5 namespaces];
  v41 = v40 != 0;

  if (v39 == v41)
  {
    goto LABEL_27;
  }

  namespaces = self->_namespaces;
  if (namespaces)
  {
    v43 = [v5 namespaces];
    v44 = [(NSArray *)namespaces isEqual:v43];

    if (!v44)
    {
      goto LABEL_27;
    }
  }

  experimentType = self->_experimentType;
  if (experimentType != [v5 experimentType] || (v46 = self->_counterfactualTreatmentIds == 0, objc_msgSend(v5, "counterfactualTreatmentIds"), v47 = objc_claimAutoreleasedReturnValue(), v48 = v47 != 0, v47, v46 == v48))
  {
LABEL_27:
    v51 = 0;
  }

  else
  {
    counterfactualTreatmentIds = self->_counterfactualTreatmentIds;
    if (counterfactualTreatmentIds)
    {
      v50 = [v5 counterfactualTreatmentIds];
      v51 = [(NSArray *)counterfactualTreatmentIds isEqual:v50];
    }

    else
    {
      v51 = 1;
    }
  }

  return v51 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIPartialExperimentRecord *)self isEqualToRecord:v5];
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
  v12 = self->_experimentType - (v11 - v10 + 32 * v10) + 32 * (v11 - v10 + 32 * v10);
  return [(NSArray *)self->_counterfactualTreatmentIds hash]- v12 + 32 * v12;
}

- (TRIPartialExperimentRecord)initWithCoder:(id)a3
{
  v108[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"deploymentEnvironment"];
  if (v5)
  {
    goto LABEL_2;
  }

  v17 = [v4 error];

  if (!v17)
  {
    if (([v4 containsValueForKey:@"deploymentEnvironment"] & 1) == 0)
    {
      v107 = *MEMORY[0x277CCA450];
      v108[0] = @"Missing serialized value for TRIPartialExperimentRecord.deploymentEnvironment";
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v108 forKeys:&v107 count:1];
      v7 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:1 userInfo:v6];
      [v4 failWithError:v7];
      goto LABEL_16;
    }

LABEL_2:
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"experimentDeployment"];
    if (!v6)
    {
      v18 = [v4 error];

      if (v18)
      {
        v6 = 0;
        v16 = 0;
LABEL_58:

        goto LABEL_59;
      }

      v105 = *MEMORY[0x277CCA450];
      v106 = @"Retrieved nil serialized value for nonnull TRIPartialExperimentRecord.experimentDeployment";
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v106 forKeys:&v105 count:1];
      v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:2 userInfo:v7];
      [v4 failWithError:v8];
      goto LABEL_29;
    }

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"treatmentId"];
    if (!v7)
    {
      v19 = [v4 error];

      if (v19)
      {
        v7 = 0;
LABEL_16:
        v16 = 0;
LABEL_57:

        goto LABEL_58;
      }
    }

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"factorPackSetId"];
    if (v8)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        v11 = objc_opt_class();
        v12 = NSStringFromClass(v11);
        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIPartialExperimentRecord key factorPackSetId (expected %@, decoded %@)", v10, v12, 0];
        v103 = *MEMORY[0x277CCA450];
        v104 = v13;
        v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
        v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:3 userInfo:v14];
        [v4 failWithError:v15];

LABEL_7:
        v16 = 0;
LABEL_54:

        goto LABEL_55;
      }
    }

    else
    {
      v20 = [v4 error];

      if (v20)
      {
        v8 = 0;
        goto LABEL_29;
      }
    }

    v21 = [v4 decodeInt64ForKey:@"type"];
    if (!v21)
    {
      v29 = [v4 error];

      if (v29)
      {
        goto LABEL_29;
      }

      if (([v4 containsValueForKey:@"type"] & 1) == 0)
      {
        v101 = *MEMORY[0x277CCA450];
        v102 = @"Missing serialized value for TRIPartialExperimentRecord.type";
        v30 = MEMORY[0x277CBEAC0];
        v31 = &v102;
        v32 = &v101;
        goto LABEL_37;
      }
    }

    v22 = [v4 decodeInt64ForKey:@"status"];
    if (v22)
    {
      goto LABEL_21;
    }

    v33 = [v4 error];

    if (!v33)
    {
      if ([v4 containsValueForKey:@"status"])
      {
LABEL_21:
        v80 = v22;
        v84 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
        if (v84)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v23 = objc_opt_class();
            v12 = NSStringFromClass(v23);
            v10 = v84;
            v24 = objc_opt_class();
            v25 = NSStringFromClass(v24);
            v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIPartialExperimentRecord key startDate (expected %@, decoded %@)", v12, v25, 0];
            v97 = *MEMORY[0x277CCA450];
            v81 = v26;
            v98 = v26;
            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
            v28 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:3 userInfo:v27];
            [v4 failWithError:v28];

            v16 = 0;
LABEL_53:

            goto LABEL_54;
          }
        }

        else
        {
          v34 = [v4 error];

          if (v34)
          {
            v10 = 0;
            v16 = 0;
LABEL_55:

            goto LABEL_56;
          }
        }

        v79 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];
        if (v79)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v35 = objc_opt_class();
            v25 = NSStringFromClass(v35);
            v12 = v79;
            v36 = objc_opt_class();
            v82 = NSStringFromClass(v36);
            v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIPartialExperimentRecord key endDate (expected %@, decoded %@)", v25, v82, 0];
            v95 = *MEMORY[0x277CCA450];
            v96 = v37;
            v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v96 forKeys:&v95 count:1];
            v39 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:3 userInfo:v38];
            [v4 failWithError:v39];

            v16 = 0;
            v10 = v84;

            goto LABEL_53;
          }
        }

        else
        {
          v40 = [v4 error];

          if (v40)
          {
            v12 = 0;
            v16 = 0;
            v10 = v84;
            goto LABEL_54;
          }
        }

        v41 = objc_alloc(MEMORY[0x277CBEB98]);
        v42 = objc_opt_class();
        v43 = [v41 initWithObjects:{v42, objc_opt_class(), 0}];
        v44 = [v4 decodeObjectOfClasses:v43 forKey:@"namespaces"];

        if (v44)
        {
          objc_opt_class();
          v45 = v44;
          if (objc_opt_isKindOfClass())
          {
            v78 = v44;
            v77 = [v4 decodeInt64ForKey:@"experimentType"];
            if (!v77)
            {
              v62 = [v4 error];

              if (v62)
              {
                v16 = 0;
                v10 = v84;
                v25 = v78;
                v12 = v79;
                goto LABEL_53;
              }

              if (([v4 containsValueForKey:@"experimentType"] & 1) == 0)
              {
                v89 = *MEMORY[0x277CCA450];
                v90 = @"Missing serialized value for TRIPartialExperimentRecord.experimentType";
                v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v90 forKeys:&v89 count:1];
                v74 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:1 userInfo:v83];
                [v4 failWithError:v74];

                goto LABEL_68;
              }
            }

            v46 = objc_alloc(MEMORY[0x277CBEB98]);
            v47 = objc_opt_class();
            v48 = [v46 initWithObjects:{v47, objc_opt_class(), 0}];
            v49 = [v4 decodeObjectOfClasses:v48 forKey:@"counterfactualTreatmentIds"];

            if (v49)
            {
              objc_opt_class();
              v83 = v49;
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v66 = objc_opt_class();
                v67 = NSStringFromClass(v66);
                v68 = objc_opt_class();
                v69 = NSStringFromClass(v68);
                v70 = v67;
                v71 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIPartialExperimentRecord key counterfactualTreatmentIds (expected %@, decoded %@)", v67, v69, 0];
                v85 = *MEMORY[0x277CCA450];
                v86 = v71;
                v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];
                v73 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:3 userInfo:v72];
                [v4 failWithError:v73];

LABEL_68:
                v16 = 0;
                v10 = v84;
                v25 = v78;
                v12 = v79;
                goto LABEL_52;
              }

              v76 = v49;
              LODWORD(v75) = v77;
              v12 = v79;
              v10 = v84;
              v50 = v5;
              v25 = v78;
              self = [(TRIPartialExperimentRecord *)self initWithDeploymentEnvironment:v50 experimentDeployment:v6 treatmentId:v7 factorPackSetId:v8 type:v21 status:v80 startDate:v84 endDate:v79 namespaces:v78 experimentType:v75 counterfactualTreatmentIds:v76];
              v16 = self;
LABEL_52:

              goto LABEL_53;
            }

            v63 = [v4 error];

            v10 = v84;
            v25 = v78;
            if (!v63)
            {
              v87 = *MEMORY[0x277CCA450];
              v88 = @"Retrieved nil serialized value for nonnull TRIPartialExperimentRecord.counterfactualTreatmentIds";
              v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v88 forKeys:&v87 count:1];
              v65 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:2 userInfo:v64];
              [v4 failWithError:v65];

              v10 = v84;
            }

            v83 = 0;
            v16 = 0;
LABEL_51:
            v12 = v79;
            goto LABEL_52;
          }

          v52 = objc_opt_class();
          v53 = NSStringFromClass(v52);
          v25 = v45;
          v54 = objc_opt_class();
          v55 = NSStringFromClass(v54);
          v83 = v53;
          v56 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIPartialExperimentRecord key namespaces (expected %@, decoded %@)", v53, v55, 0];
          v91 = *MEMORY[0x277CCA450];
          v92 = v56;
          v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v92 forKeys:&v91 count:1];
          v58 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:3 userInfo:v57];
          [v4 failWithError:v58];
        }

        else
        {
          v51 = [v4 error];

          if (v51)
          {
            v25 = 0;
            v16 = 0;
            v10 = v84;
            v12 = v79;
            goto LABEL_53;
          }

          v93 = *MEMORY[0x277CCA450];
          v94 = @"Retrieved nil serialized value for nonnull TRIPartialExperimentRecord.namespaces";
          v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v94 forKeys:&v93 count:1];
          v59 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:2 userInfo:v83];
          [v4 failWithError:v59];

          v25 = 0;
        }

        v16 = 0;
        v10 = v84;
        goto LABEL_51;
      }

      v99 = *MEMORY[0x277CCA450];
      v100 = @"Missing serialized value for TRIPartialExperimentRecord.status";
      v30 = MEMORY[0x277CBEAC0];
      v31 = &v100;
      v32 = &v99;
LABEL_37:
      v10 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:1];
      v12 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIPartialExperimentRecordOCNTErrorDomain" code:1 userInfo:v10];
      [v4 failWithError:v12];
      goto LABEL_7;
    }

LABEL_29:
    v16 = 0;
LABEL_56:

    goto LABEL_57;
  }

  v16 = 0;
LABEL_59:

  v60 = *MEMORY[0x277D85DE8];
  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  [v13 encodeInt64:self->_deploymentEnvironment forKey:@"deploymentEnvironment"];
  experimentDeployment = self->_experimentDeployment;
  if (experimentDeployment)
  {
    [v13 encodeObject:experimentDeployment forKey:@"experimentDeployment"];
  }

  treatmentId = self->_treatmentId;
  if (treatmentId)
  {
    [v13 encodeObject:treatmentId forKey:@"treatmentId"];
  }

  factorPackSetId = self->_factorPackSetId;
  v7 = v13;
  if (factorPackSetId)
  {
    [v13 encodeObject:factorPackSetId forKey:@"factorPackSetId"];
    v7 = v13;
  }

  [v7 encodeInt64:self->_type forKey:@"type"];
  [v13 encodeInt64:self->_status forKey:@"status"];
  startDate = self->_startDate;
  if (startDate)
  {
    [v13 encodeObject:startDate forKey:@"startDate"];
  }

  endDate = self->_endDate;
  if (endDate)
  {
    [v13 encodeObject:endDate forKey:@"endDate"];
  }

  namespaces = self->_namespaces;
  v11 = v13;
  if (namespaces)
  {
    [v13 encodeObject:namespaces forKey:@"namespaces"];
    v11 = v13;
  }

  [v11 encodeInt64:self->_experimentType forKey:@"experimentType"];
  counterfactualTreatmentIds = self->_counterfactualTreatmentIds;
  if (counterfactualTreatmentIds)
  {
    [v13 encodeObject:counterfactualTreatmentIds forKey:@"counterfactualTreatmentIds"];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_deploymentEnvironment];
  v13 = *&self->_experimentDeployment;
  factorPackSetId = self->_factorPackSetId;
  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_type];
  v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_status];
  v12 = *&self->_startDate;
  namespaces = self->_namespaces;
  v9 = [MEMORY[0x277CCABB0] numberWithInt:self->_experimentType];
  v10 = [v3 initWithFormat:@"<TRIPartialExperimentRecord | deploymentEnvironment:%@ experimentDeployment:%@ treatmentId:%@ factorPackSetId:%@ type:%@ status:%@ startDate:%@ endDate:%@ namespaces:%@ experimentType:%@ counterfactualTreatmentIds:%@>", v4, v13, factorPackSetId, v6, v7, v12, namespaces, v9, self->_counterfactualTreatmentIds];

  return v10;
}

@end