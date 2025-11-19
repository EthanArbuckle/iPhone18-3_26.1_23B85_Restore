@interface TRIExperimentHistoryRecord
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRecord:(id)a3;
- (TRIExperimentHistoryRecord)initWithCoder:(id)a3;
- (TRIExperimentHistoryRecord)initWithEventDate:(id)a3 eventType:(unsigned __int8)a4 deploymentEnvironment:(int)a5 experimentId:(id)a6 deploymentId:(int)a7 treatmentId:(id)a8 errorOrDeactivationReason:(id)a9 namespaces:(id)a10;
- (id)copyWithReplacementErrorOrDeactivationReason:(id)a3;
- (id)copyWithReplacementEventDate:(id)a3;
- (id)copyWithReplacementExperimentId:(id)a3;
- (id)copyWithReplacementNamespaces:(id)a3;
- (id)copyWithReplacementTreatmentId:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIExperimentHistoryRecord

- (TRIExperimentHistoryRecord)initWithEventDate:(id)a3 eventType:(unsigned __int8)a4 deploymentEnvironment:(int)a5 experimentId:(id)a6 deploymentId:(int)a7 treatmentId:(id)a8 errorOrDeactivationReason:(id)a9 namespaces:(id)a10
{
  v14 = a3;
  v15 = a6;
  v16 = a8;
  v28 = a9;
  v17 = a10;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_8:
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1099 description:{@"Invalid parameter not satisfying: %@", @"experimentId != nil"}];

    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v21 = [MEMORY[0x277CCA890] currentHandler];
  [v21 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1098 description:{@"Invalid parameter not satisfying: %@", @"eventDate != nil"}];

  if (!v15)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v16)
  {
    goto LABEL_4;
  }

LABEL_9:
  v23 = [MEMORY[0x277CCA890] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1100 description:{@"Invalid parameter not satisfying: %@", @"treatmentId != nil"}];

LABEL_4:
  v29.receiver = self;
  v29.super_class = TRIExperimentHistoryRecord;
  v18 = [(TRIExperimentHistoryRecord *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_eventDate, a3);
    v19->_eventType = a4;
    v19->_deploymentEnvironment = a5;
    objc_storeStrong(&v19->_experimentId, a6);
    v19->_deploymentId = a7;
    objc_storeStrong(&v19->_treatmentId, a8);
    objc_storeStrong(&v19->_errorOrDeactivationReason, a9);
    objc_storeStrong(&v19->_namespaces, a10);
  }

  return v19;
}

- (id)copyWithReplacementEventDate:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithEventDate:v4 eventType:self->_eventType deploymentEnvironment:self->_deploymentEnvironment experimentId:self->_experimentId deploymentId:self->_deploymentId treatmentId:self->_treatmentId errorOrDeactivationReason:self->_errorOrDeactivationReason namespaces:self->_namespaces];

  return v5;
}

- (id)copyWithReplacementExperimentId:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  errorOrDeactivationReason = self->_errorOrDeactivationReason;
  v7 = [v5 initWithEventDate:self->_eventDate eventType:self->_eventType deploymentEnvironment:self->_deploymentEnvironment experimentId:v4 deploymentId:self->_deploymentId treatmentId:self->_treatmentId errorOrDeactivationReason:errorOrDeactivationReason namespaces:self->_namespaces];

  return v7;
}

- (id)copyWithReplacementTreatmentId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithEventDate:self->_eventDate eventType:self->_eventType deploymentEnvironment:self->_deploymentEnvironment experimentId:self->_experimentId deploymentId:self->_deploymentId treatmentId:v4 errorOrDeactivationReason:self->_errorOrDeactivationReason namespaces:self->_namespaces];

  return v5;
}

- (id)copyWithReplacementErrorOrDeactivationReason:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithEventDate:self->_eventDate eventType:self->_eventType deploymentEnvironment:self->_deploymentEnvironment experimentId:self->_experimentId deploymentId:self->_deploymentId treatmentId:self->_treatmentId errorOrDeactivationReason:v4 namespaces:self->_namespaces];

  return v5;
}

- (id)copyWithReplacementNamespaces:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithEventDate:self->_eventDate eventType:self->_eventType deploymentEnvironment:self->_deploymentEnvironment experimentId:self->_experimentId deploymentId:self->_deploymentId treatmentId:self->_treatmentId errorOrDeactivationReason:self->_errorOrDeactivationReason namespaces:v4];

  return v5;
}

- (BOOL)isEqualToRecord:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_20;
  }

  v6 = self->_eventDate == 0;
  v7 = [v4 eventDate];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_20;
  }

  eventDate = self->_eventDate;
  if (eventDate)
  {
    v10 = [v5 eventDate];
    v11 = [(NSDate *)eventDate isEqual:v10];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  eventType = self->_eventType;
  if (eventType != [v5 eventType])
  {
    goto LABEL_20;
  }

  deploymentEnvironment = self->_deploymentEnvironment;
  if (deploymentEnvironment != [v5 deploymentEnvironment])
  {
    goto LABEL_20;
  }

  v14 = self->_experimentId == 0;
  v15 = [v5 experimentId];
  v16 = v15 != 0;

  if (v14 == v16)
  {
    goto LABEL_20;
  }

  experimentId = self->_experimentId;
  if (experimentId)
  {
    v18 = [v5 experimentId];
    v19 = [(NSString *)experimentId isEqual:v18];

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  deploymentId = self->_deploymentId;
  if (deploymentId != [v5 deploymentId])
  {
    goto LABEL_20;
  }

  v21 = self->_treatmentId == 0;
  v22 = [v5 treatmentId];
  v23 = v22 != 0;

  if (v21 == v23)
  {
    goto LABEL_20;
  }

  treatmentId = self->_treatmentId;
  if (treatmentId)
  {
    v25 = [v5 treatmentId];
    v26 = [(NSString *)treatmentId isEqual:v25];

    if (!v26)
    {
      goto LABEL_20;
    }
  }

  v27 = self->_errorOrDeactivationReason == 0;
  v28 = [v5 errorOrDeactivationReason];
  v29 = v28 != 0;

  if (v27 == v29)
  {
    goto LABEL_20;
  }

  errorOrDeactivationReason = self->_errorOrDeactivationReason;
  if (errorOrDeactivationReason)
  {
    v31 = [v5 errorOrDeactivationReason];
    v32 = [(NSString *)errorOrDeactivationReason isEqual:v31];

    if (!v32)
    {
      goto LABEL_20;
    }
  }

  v33 = self->_namespaces == 0;
  v34 = [v5 namespaces];
  v35 = v34 != 0;

  if (v33 == v35)
  {
LABEL_20:
    v38 = 0;
  }

  else
  {
    namespaces = self->_namespaces;
    if (namespaces)
    {
      v37 = [v5 namespaces];
      v38 = [(NSArray *)namespaces isEqual:v37];
    }

    else
    {
      v38 = 1;
    }
  }

  return v38 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIExperimentHistoryRecord *)self isEqualToRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_eventDate hash];
  v4 = self->_eventType - v3 + 32 * v3;
  v5 = self->_deploymentEnvironment - v4 + 32 * v4;
  v6 = [(NSString *)self->_experimentId hash];
  v7 = self->_deploymentId - (v6 - v5 + 32 * v5) + 32 * (v6 - v5 + 32 * v5);
  v8 = [(NSString *)self->_treatmentId hash]- v7 + 32 * v7;
  v9 = [(NSString *)self->_errorOrDeactivationReason hash]- v8 + 32 * v8;
  return [(NSArray *)self->_namespaces hash]- v9 + 32 * v9;
}

- (TRIExperimentHistoryRecord)initWithCoder:(id)a3
{
  v70[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventDate"];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v21 = objc_opt_class();
      v8 = NSStringFromClass(v21);
      v22 = objc_opt_class();
      v10 = NSStringFromClass(v22);
      v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIExperimentHistoryRecord key eventDate (expected %@, decoded %@)", v8, v10, 0];
      v67 = *MEMORY[0x277CCA450];
      v68 = v23;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v25 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIExperimentHistoryRecordOCNTErrorDomain" code:3 userInfo:v24];
      [v4 failWithError:v25];

      goto LABEL_27;
    }

    v6 = [v4 decodeInt64ForKey:@"eventType"];
    if (!v6)
    {
      v26 = [v4 error];

      if (v26)
      {
        goto LABEL_18;
      }

      if (([v4 containsValueForKey:@"eventType"] & 1) == 0)
      {
        v65 = *MEMORY[0x277CCA450];
        v66 = @"Missing serialized value for TRIExperimentHistoryRecord.eventType";
        v27 = MEMORY[0x277CBEAC0];
        v28 = &v66;
        v29 = &v65;
LABEL_25:
        v8 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:1];
        v19 = objc_alloc(MEMORY[0x277CCA9B8]);
        v20 = 1;
        goto LABEL_26;
      }
    }

    v7 = [v4 decodeInt64ForKey:@"deploymentEnvironment"];
    if (v7)
    {
      goto LABEL_5;
    }

    v30 = [v4 error];

    if (!v30)
    {
      if ([v4 containsValueForKey:@"deploymentEnvironment"])
      {
LABEL_5:
        v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"experimentId"];
        if (v8)
        {
          v9 = [v4 decodeInt64ForKey:@"deploymentId"];
          if (v9)
          {
LABEL_7:
            v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"treatmentId"];
            if (v10)
            {
              v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"errorOrDeactivationReason"];
              if (v11)
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v12 = objc_opt_class();
                  v13 = NSStringFromClass(v12);
                  v14 = objc_opt_class();
                  v51 = NSStringFromClass(v14);
                  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIExperimentHistoryRecord key errorOrDeactivationReason (expected %@, decoded %@)", v13, v51, 0];
                  v55 = *MEMORY[0x277CCA450];
                  v56 = v15;
                  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
                  v17 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIExperimentHistoryRecordOCNTErrorDomain" code:3 userInfo:v16];
                  [v4 failWithError:v17];

LABEL_44:
                  v31 = 0;
LABEL_49:

                  goto LABEL_50;
                }

LABEL_36:
                v52 = v11;
                v40 = objc_alloc(MEMORY[0x277CBEB98]);
                v41 = objc_opt_class();
                v42 = [v40 initWithObjects:{v41, objc_opt_class(), 0}];
                v13 = [v4 decodeObjectOfClasses:v42 forKey:@"namespaces"];

                if (v13)
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    v43 = objc_opt_class();
                    v50 = NSStringFromClass(v43);
                    v44 = objc_opt_class();
                    v45 = NSStringFromClass(v44);
                    v46 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIExperimentHistoryRecord key namespaces (expected %@, decoded %@)", v50, v45, 0];
                    v53 = *MEMORY[0x277CCA450];
                    v54 = v46;
                    v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
                    v48 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIExperimentHistoryRecordOCNTErrorDomain" code:3 userInfo:v47];
                    [v4 failWithError:v48];

LABEL_47:
                    v31 = 0;
                    v11 = v52;
                    goto LABEL_49;
                  }
                }

                else
                {
                  v49 = [v4 error];

                  if (v49)
                  {
                    v13 = 0;
                    goto LABEL_47;
                  }
                }

                v11 = v52;
                self = [(TRIExperimentHistoryRecord *)self initWithEventDate:v5 eventType:v6 deploymentEnvironment:v7 experimentId:v8 deploymentId:v9 treatmentId:v10 errorOrDeactivationReason:v52 namespaces:v13];
                v31 = self;
                goto LABEL_49;
              }

              v39 = [v4 error];

              if (!v39)
              {
                goto LABEL_36;
              }

              v11 = 0;
LABEL_42:
              v31 = 0;
LABEL_50:

              goto LABEL_28;
            }

            v36 = [v4 error];

            if (!v36)
            {
              v57 = *MEMORY[0x277CCA450];
              v58 = @"Retrieved nil serialized value for nonnull TRIExperimentHistoryRecord.treatmentId";
              v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
              v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIExperimentHistoryRecordOCNTErrorDomain" code:2 userInfo:v11];
              [v4 failWithError:v13];
              goto LABEL_44;
            }

            v10 = 0;
LABEL_27:
            v31 = 0;
LABEL_28:

            goto LABEL_29;
          }

          v33 = [v4 error];

          if (v33)
          {
LABEL_22:
            v31 = 0;
LABEL_29:

            goto LABEL_30;
          }

          if ([v4 containsValueForKey:@"deploymentId"])
          {
            goto LABEL_7;
          }

          v59 = *MEMORY[0x277CCA450];
          v60 = @"Missing serialized value for TRIExperimentHistoryRecord.deploymentId";
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          v37 = objc_alloc(MEMORY[0x277CCA9B8]);
          v38 = 1;
        }

        else
        {
          v32 = [v4 error];

          if (v32)
          {
            v8 = 0;
            goto LABEL_22;
          }

          v61 = *MEMORY[0x277CCA450];
          v62 = @"Retrieved nil serialized value for nonnull TRIExperimentHistoryRecord.experimentId";
          v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
          v37 = objc_alloc(MEMORY[0x277CCA9B8]);
          v38 = 2;
        }

        v11 = [v37 initWithDomain:@"TRIExperimentHistoryRecordOCNTErrorDomain" code:v38 userInfo:v10];
        [v4 failWithError:v11];
        goto LABEL_42;
      }

      v63 = *MEMORY[0x277CCA450];
      v64 = @"Missing serialized value for TRIExperimentHistoryRecord.deploymentEnvironment";
      v27 = MEMORY[0x277CBEAC0];
      v28 = &v64;
      v29 = &v63;
      goto LABEL_25;
    }
  }

  else
  {
    v18 = [v4 error];

    if (!v18)
    {
      v69 = *MEMORY[0x277CCA450];
      v70[0] = @"Retrieved nil serialized value for nonnull TRIExperimentHistoryRecord.eventDate";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:&v69 count:1];
      v19 = objc_alloc(MEMORY[0x277CCA9B8]);
      v20 = 2;
LABEL_26:
      v10 = [v19 initWithDomain:@"TRIExperimentHistoryRecordOCNTErrorDomain" code:v20 userInfo:v8];
      [v4 failWithError:v10];
      goto LABEL_27;
    }
  }

LABEL_18:
  v31 = 0;
LABEL_30:

  v34 = *MEMORY[0x277D85DE8];
  return v31;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  eventDate = self->_eventDate;
  v11 = v4;
  if (eventDate)
  {
    [v4 encodeObject:eventDate forKey:@"eventDate"];
    v4 = v11;
  }

  [v4 encodeInt64:self->_eventType forKey:@"eventType"];
  [v11 encodeInt64:self->_deploymentEnvironment forKey:@"deploymentEnvironment"];
  experimentId = self->_experimentId;
  if (experimentId)
  {
    [v11 encodeObject:experimentId forKey:@"experimentId"];
  }

  [v11 encodeInt64:self->_deploymentId forKey:@"deploymentId"];
  treatmentId = self->_treatmentId;
  if (treatmentId)
  {
    [v11 encodeObject:treatmentId forKey:@"treatmentId"];
  }

  errorOrDeactivationReason = self->_errorOrDeactivationReason;
  if (errorOrDeactivationReason)
  {
    [v11 encodeObject:errorOrDeactivationReason forKey:@"errorOrDeactivationReason"];
  }

  namespaces = self->_namespaces;
  v10 = v11;
  if (namespaces)
  {
    [v11 encodeObject:namespaces forKey:@"namespaces"];
    v10 = v11;
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  eventDate = self->_eventDate;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_eventType];
  v6 = [MEMORY[0x277CCABB0] numberWithInt:self->_deploymentEnvironment];
  experimentId = self->_experimentId;
  v8 = [MEMORY[0x277CCABB0] numberWithInt:self->_deploymentId];
  v9 = [v3 initWithFormat:@"<TRIExperimentHistoryRecord | eventDate:%@ eventType:%@ deploymentEnvironment:%@ experimentId:%@ deploymentId:%@ treatmentId:%@ errorOrDeactivationReason:%@ namespaces:%@>", eventDate, v5, v6, experimentId, v8, self->_treatmentId, self->_errorOrDeactivationReason, self->_namespaces];

  return v9;
}

@end