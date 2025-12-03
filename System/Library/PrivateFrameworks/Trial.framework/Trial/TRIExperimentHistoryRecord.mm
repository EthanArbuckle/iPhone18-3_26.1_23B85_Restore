@interface TRIExperimentHistoryRecord
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRecord:(id)record;
- (TRIExperimentHistoryRecord)initWithCoder:(id)coder;
- (TRIExperimentHistoryRecord)initWithEventDate:(id)date eventType:(unsigned __int8)type deploymentEnvironment:(int)environment experimentId:(id)id deploymentId:(int)deploymentId treatmentId:(id)treatmentId errorOrDeactivationReason:(id)reason namespaces:(id)self0;
- (id)copyWithReplacementErrorOrDeactivationReason:(id)reason;
- (id)copyWithReplacementEventDate:(id)date;
- (id)copyWithReplacementExperimentId:(id)id;
- (id)copyWithReplacementNamespaces:(id)namespaces;
- (id)copyWithReplacementTreatmentId:(id)id;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIExperimentHistoryRecord

- (TRIExperimentHistoryRecord)initWithEventDate:(id)date eventType:(unsigned __int8)type deploymentEnvironment:(int)environment experimentId:(id)id deploymentId:(int)deploymentId treatmentId:(id)treatmentId errorOrDeactivationReason:(id)reason namespaces:(id)self0
{
  dateCopy = date;
  idCopy = id;
  treatmentIdCopy = treatmentId;
  reasonCopy = reason;
  namespacesCopy = namespaces;
  if (dateCopy)
  {
    if (idCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1099 description:{@"Invalid parameter not satisfying: %@", @"experimentId != nil"}];

    if (treatmentIdCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1098 description:{@"Invalid parameter not satisfying: %@", @"eventDate != nil"}];

  if (!idCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (treatmentIdCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:1100 description:{@"Invalid parameter not satisfying: %@", @"treatmentId != nil"}];

LABEL_4:
  v29.receiver = self;
  v29.super_class = TRIExperimentHistoryRecord;
  v18 = [(TRIExperimentHistoryRecord *)&v29 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_eventDate, date);
    v19->_eventType = type;
    v19->_deploymentEnvironment = environment;
    objc_storeStrong(&v19->_experimentId, id);
    v19->_deploymentId = deploymentId;
    objc_storeStrong(&v19->_treatmentId, treatmentId);
    objc_storeStrong(&v19->_errorOrDeactivationReason, reason);
    objc_storeStrong(&v19->_namespaces, namespaces);
  }

  return v19;
}

- (id)copyWithReplacementEventDate:(id)date
{
  dateCopy = date;
  v5 = [objc_alloc(objc_opt_class()) initWithEventDate:dateCopy eventType:self->_eventType deploymentEnvironment:self->_deploymentEnvironment experimentId:self->_experimentId deploymentId:self->_deploymentId treatmentId:self->_treatmentId errorOrDeactivationReason:self->_errorOrDeactivationReason namespaces:self->_namespaces];

  return v5;
}

- (id)copyWithReplacementExperimentId:(id)id
{
  idCopy = id;
  v5 = objc_alloc(objc_opt_class());
  errorOrDeactivationReason = self->_errorOrDeactivationReason;
  v7 = [v5 initWithEventDate:self->_eventDate eventType:self->_eventType deploymentEnvironment:self->_deploymentEnvironment experimentId:idCopy deploymentId:self->_deploymentId treatmentId:self->_treatmentId errorOrDeactivationReason:errorOrDeactivationReason namespaces:self->_namespaces];

  return v7;
}

- (id)copyWithReplacementTreatmentId:(id)id
{
  idCopy = id;
  v5 = [objc_alloc(objc_opt_class()) initWithEventDate:self->_eventDate eventType:self->_eventType deploymentEnvironment:self->_deploymentEnvironment experimentId:self->_experimentId deploymentId:self->_deploymentId treatmentId:idCopy errorOrDeactivationReason:self->_errorOrDeactivationReason namespaces:self->_namespaces];

  return v5;
}

- (id)copyWithReplacementErrorOrDeactivationReason:(id)reason
{
  reasonCopy = reason;
  v5 = [objc_alloc(objc_opt_class()) initWithEventDate:self->_eventDate eventType:self->_eventType deploymentEnvironment:self->_deploymentEnvironment experimentId:self->_experimentId deploymentId:self->_deploymentId treatmentId:self->_treatmentId errorOrDeactivationReason:reasonCopy namespaces:self->_namespaces];

  return v5;
}

- (id)copyWithReplacementNamespaces:(id)namespaces
{
  namespacesCopy = namespaces;
  v5 = [objc_alloc(objc_opt_class()) initWithEventDate:self->_eventDate eventType:self->_eventType deploymentEnvironment:self->_deploymentEnvironment experimentId:self->_experimentId deploymentId:self->_deploymentId treatmentId:self->_treatmentId errorOrDeactivationReason:self->_errorOrDeactivationReason namespaces:namespacesCopy];

  return v5;
}

- (BOOL)isEqualToRecord:(id)record
{
  recordCopy = record;
  v5 = recordCopy;
  if (!recordCopy)
  {
    goto LABEL_20;
  }

  v6 = self->_eventDate == 0;
  eventDate = [recordCopy eventDate];
  v8 = eventDate != 0;

  if (v6 == v8)
  {
    goto LABEL_20;
  }

  eventDate = self->_eventDate;
  if (eventDate)
  {
    eventDate2 = [v5 eventDate];
    v11 = [(NSDate *)eventDate isEqual:eventDate2];

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
  experimentId = [v5 experimentId];
  v16 = experimentId != 0;

  if (v14 == v16)
  {
    goto LABEL_20;
  }

  experimentId = self->_experimentId;
  if (experimentId)
  {
    experimentId2 = [v5 experimentId];
    v19 = [(NSString *)experimentId isEqual:experimentId2];

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
  treatmentId = [v5 treatmentId];
  v23 = treatmentId != 0;

  if (v21 == v23)
  {
    goto LABEL_20;
  }

  treatmentId = self->_treatmentId;
  if (treatmentId)
  {
    treatmentId2 = [v5 treatmentId];
    v26 = [(NSString *)treatmentId isEqual:treatmentId2];

    if (!v26)
    {
      goto LABEL_20;
    }
  }

  v27 = self->_errorOrDeactivationReason == 0;
  errorOrDeactivationReason = [v5 errorOrDeactivationReason];
  v29 = errorOrDeactivationReason != 0;

  if (v27 == v29)
  {
    goto LABEL_20;
  }

  errorOrDeactivationReason = self->_errorOrDeactivationReason;
  if (errorOrDeactivationReason)
  {
    errorOrDeactivationReason2 = [v5 errorOrDeactivationReason];
    v32 = [(NSString *)errorOrDeactivationReason isEqual:errorOrDeactivationReason2];

    if (!v32)
    {
      goto LABEL_20;
    }
  }

  v33 = self->_namespaces == 0;
  namespaces = [v5 namespaces];
  v35 = namespaces != 0;

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
      namespaces2 = [v5 namespaces];
      v38 = [(NSArray *)namespaces isEqual:namespaces2];
    }

    else
    {
      v38 = 1;
    }
  }

  return v38 & 1;
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIExperimentHistoryRecord *)self isEqualToRecord:v5];
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

- (TRIExperimentHistoryRecord)initWithCoder:(id)coder
{
  v70[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventDate"];
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
      [coderCopy failWithError:v25];

      goto LABEL_27;
    }

    v6 = [coderCopy decodeInt64ForKey:@"eventType"];
    if (!v6)
    {
      error = [coderCopy error];

      if (error)
      {
        goto LABEL_18;
      }

      if (([coderCopy containsValueForKey:@"eventType"] & 1) == 0)
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

    v7 = [coderCopy decodeInt64ForKey:@"deploymentEnvironment"];
    if (v7)
    {
      goto LABEL_5;
    }

    error2 = [coderCopy error];

    if (!error2)
    {
      if ([coderCopy containsValueForKey:@"deploymentEnvironment"])
      {
LABEL_5:
        v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"experimentId"];
        if (v8)
        {
          v9 = [coderCopy decodeInt64ForKey:@"deploymentId"];
          if (v9)
          {
LABEL_7:
            v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"treatmentId"];
            if (v10)
            {
              v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"errorOrDeactivationReason"];
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
                  [coderCopy failWithError:v17];

LABEL_44:
                  selfCopy = 0;
LABEL_49:

                  goto LABEL_50;
                }

LABEL_36:
                v52 = v11;
                v40 = objc_alloc(MEMORY[0x277CBEB98]);
                v41 = objc_opt_class();
                v42 = [v40 initWithObjects:{v41, objc_opt_class(), 0}];
                v13 = [coderCopy decodeObjectOfClasses:v42 forKey:@"namespaces"];

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
                    [coderCopy failWithError:v48];

LABEL_47:
                    selfCopy = 0;
                    v11 = v52;
                    goto LABEL_49;
                  }
                }

                else
                {
                  error3 = [coderCopy error];

                  if (error3)
                  {
                    v13 = 0;
                    goto LABEL_47;
                  }
                }

                v11 = v52;
                self = [(TRIExperimentHistoryRecord *)self initWithEventDate:v5 eventType:v6 deploymentEnvironment:v7 experimentId:v8 deploymentId:v9 treatmentId:v10 errorOrDeactivationReason:v52 namespaces:v13];
                selfCopy = self;
                goto LABEL_49;
              }

              error4 = [coderCopy error];

              if (!error4)
              {
                goto LABEL_36;
              }

              v11 = 0;
LABEL_42:
              selfCopy = 0;
LABEL_50:

              goto LABEL_28;
            }

            error5 = [coderCopy error];

            if (!error5)
            {
              v57 = *MEMORY[0x277CCA450];
              v58 = @"Retrieved nil serialized value for nonnull TRIExperimentHistoryRecord.treatmentId";
              v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
              v13 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIExperimentHistoryRecordOCNTErrorDomain" code:2 userInfo:v11];
              [coderCopy failWithError:v13];
              goto LABEL_44;
            }

            v10 = 0;
LABEL_27:
            selfCopy = 0;
LABEL_28:

            goto LABEL_29;
          }

          error6 = [coderCopy error];

          if (error6)
          {
LABEL_22:
            selfCopy = 0;
LABEL_29:

            goto LABEL_30;
          }

          if ([coderCopy containsValueForKey:@"deploymentId"])
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
          error7 = [coderCopy error];

          if (error7)
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
        [coderCopy failWithError:v11];
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
    error8 = [coderCopy error];

    if (!error8)
    {
      v69 = *MEMORY[0x277CCA450];
      v70[0] = @"Retrieved nil serialized value for nonnull TRIExperimentHistoryRecord.eventDate";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:&v69 count:1];
      v19 = objc_alloc(MEMORY[0x277CCA9B8]);
      v20 = 2;
LABEL_26:
      v10 = [v19 initWithDomain:@"TRIExperimentHistoryRecordOCNTErrorDomain" code:v20 userInfo:v8];
      [coderCopy failWithError:v10];
      goto LABEL_27;
    }
  }

LABEL_18:
  selfCopy = 0;
LABEL_30:

  v34 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  eventDate = self->_eventDate;
  v11 = coderCopy;
  if (eventDate)
  {
    [coderCopy encodeObject:eventDate forKey:@"eventDate"];
    coderCopy = v11;
  }

  [coderCopy encodeInt64:self->_eventType forKey:@"eventType"];
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