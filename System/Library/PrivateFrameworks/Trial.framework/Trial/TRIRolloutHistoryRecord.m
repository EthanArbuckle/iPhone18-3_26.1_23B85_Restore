@interface TRIRolloutHistoryRecord
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToRecord:(id)a3;
- (TRIRolloutHistoryRecord)initWithCoder:(id)a3;
- (TRIRolloutHistoryRecord)initWithEventLogTime:(id)a3 eventType:(unsigned __int8)a4 rolloutId:(id)a5 rampId:(id)a6 factorPackSetId:(id)a7 deploymentId:(int)a8 namespaces:(id)a9;
- (id)copyWithReplacementEventLogTime:(id)a3;
- (id)copyWithReplacementFactorPackSetId:(id)a3;
- (id)copyWithReplacementNamespaces:(id)a3;
- (id)copyWithReplacementRampId:(id)a3;
- (id)copyWithReplacementRolloutId:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIRolloutHistoryRecord

- (TRIRolloutHistoryRecord)initWithEventLogTime:(id)a3 eventType:(unsigned __int8)a4 rolloutId:(id)a5 rampId:(id)a6 factorPackSetId:(id)a7 deploymentId:(int)a8 namespaces:(id)a9
{
  v14 = a3;
  v15 = a5;
  v26 = a6;
  v16 = a7;
  v17 = a9;
  if (v14)
  {
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:2170 description:{@"Invalid parameter not satisfying: %@", @"eventLogTime != nil"}];

    if (v15)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x277CCA890] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"TRIClientTupleTypes.m" lineNumber:2171 description:{@"Invalid parameter not satisfying: %@", @"rolloutId != nil"}];

LABEL_3:
  v27.receiver = self;
  v27.super_class = TRIRolloutHistoryRecord;
  v18 = [(TRIRolloutHistoryRecord *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_eventLogTime, a3);
    v19->_eventType = a4;
    objc_storeStrong(&v19->_rolloutId, a5);
    objc_storeStrong(&v19->_rampId, a6);
    objc_storeStrong(&v19->_factorPackSetId, a7);
    v19->_deploymentId = a8;
    objc_storeStrong(&v19->_namespaces, a9);
  }

  return v19;
}

- (id)copyWithReplacementEventLogTime:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithEventLogTime:v4 eventType:self->_eventType rolloutId:self->_rolloutId rampId:self->_rampId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId namespaces:self->_namespaces];

  return v5;
}

- (id)copyWithReplacementRolloutId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithEventLogTime:self->_eventLogTime eventType:self->_eventType rolloutId:v4 rampId:self->_rampId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId namespaces:self->_namespaces];

  return v5;
}

- (id)copyWithReplacementRampId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithEventLogTime:self->_eventLogTime eventType:self->_eventType rolloutId:self->_rolloutId rampId:v4 factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId namespaces:self->_namespaces];

  return v5;
}

- (id)copyWithReplacementFactorPackSetId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithEventLogTime:self->_eventLogTime eventType:self->_eventType rolloutId:self->_rolloutId rampId:self->_rampId factorPackSetId:v4 deploymentId:self->_deploymentId namespaces:self->_namespaces];

  return v5;
}

- (id)copyWithReplacementNamespaces:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithEventLogTime:self->_eventLogTime eventType:self->_eventType rolloutId:self->_rolloutId rampId:self->_rampId factorPackSetId:self->_factorPackSetId deploymentId:self->_deploymentId namespaces:v4];

  return v5;
}

- (BOOL)isEqualToRecord:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_19;
  }

  v6 = self->_eventLogTime == 0;
  v7 = [v4 eventLogTime];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_19;
  }

  eventLogTime = self->_eventLogTime;
  if (eventLogTime)
  {
    v10 = [v5 eventLogTime];
    v11 = [(NSDate *)eventLogTime isEqual:v10];

    if (!v11)
    {
      goto LABEL_19;
    }
  }

  eventType = self->_eventType;
  if (eventType != [v5 eventType])
  {
    goto LABEL_19;
  }

  v13 = self->_rolloutId == 0;
  v14 = [v5 rolloutId];
  v15 = v14 != 0;

  if (v13 == v15)
  {
    goto LABEL_19;
  }

  rolloutId = self->_rolloutId;
  if (rolloutId)
  {
    v17 = [v5 rolloutId];
    v18 = [(NSString *)rolloutId isEqual:v17];

    if (!v18)
    {
      goto LABEL_19;
    }
  }

  v19 = self->_rampId == 0;
  v20 = [v5 rampId];
  v21 = v20 != 0;

  if (v19 == v21)
  {
    goto LABEL_19;
  }

  rampId = self->_rampId;
  if (rampId)
  {
    v23 = [v5 rampId];
    v24 = [(NSString *)rampId isEqual:v23];

    if (!v24)
    {
      goto LABEL_19;
    }
  }

  v25 = self->_factorPackSetId == 0;
  v26 = [v5 factorPackSetId];
  v27 = v26 != 0;

  if (v25 == v27)
  {
    goto LABEL_19;
  }

  factorPackSetId = self->_factorPackSetId;
  if (factorPackSetId)
  {
    v29 = [v5 factorPackSetId];
    v30 = [(TRIFactorPackSetId *)factorPackSetId isEqual:v29];

    if (!v30)
    {
      goto LABEL_19;
    }
  }

  deploymentId = self->_deploymentId;
  if (deploymentId != [v5 deploymentId] || (v32 = self->_namespaces == 0, objc_msgSend(v5, "namespaces"), v33 = objc_claimAutoreleasedReturnValue(), v34 = v33 != 0, v33, v32 == v34))
  {
LABEL_19:
    v37 = 0;
  }

  else
  {
    namespaces = self->_namespaces;
    if (namespaces)
    {
      v36 = [v5 namespaces];
      v37 = [(NSArray *)namespaces isEqual:v36];
    }

    else
    {
      v37 = 1;
    }
  }

  return v37 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIRolloutHistoryRecord *)self isEqualToRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSDate *)self->_eventLogTime hash];
  v4 = self->_eventType - v3 + 32 * v3;
  v5 = [(NSString *)self->_rolloutId hash]- v4 + 32 * v4;
  v6 = [(NSString *)self->_rampId hash]- v5 + 32 * v5;
  v7 = [(TRIFactorPackSetId *)self->_factorPackSetId hash];
  v8 = self->_deploymentId - (v7 - v6 + 32 * v6) + 32 * (v7 - v6 + 32 * v6);
  return [(NSArray *)self->_namespaces hash]- v8 + 32 * v8;
}

- (TRIRolloutHistoryRecord)initWithCoder:(id)a3
{
  v62[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventLogTime"];
  if (!v5)
  {
    v17 = [v4 error];

    if (v17)
    {
      goto LABEL_15;
    }

    v61 = *MEMORY[0x277CCA450];
    v62[0] = @"Retrieved nil serialized value for nonnull TRIRolloutHistoryRecord.eventLogTime";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v62 forKeys:&v61 count:1];
    v18 = objc_alloc(MEMORY[0x277CCA9B8]);
    v19 = 2;
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = objc_opt_class();
    v7 = NSStringFromClass(v20);
    v21 = objc_opt_class();
    v8 = NSStringFromClass(v21);
    v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIRolloutHistoryRecord key eventLogTime (expected %@, decoded %@)", v7, v8, 0];
    v59 = *MEMORY[0x277CCA450];
    v60 = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    v24 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIRolloutHistoryRecordOCNTErrorDomain" code:3 userInfo:v23];
    [v4 failWithError:v24];

    goto LABEL_13;
  }

  v6 = [v4 decodeInt64ForKey:@"eventType"];
  if (v6)
  {
    goto LABEL_4;
  }

  v26 = [v4 error];

  if (!v26)
  {
    if ([v4 containsValueForKey:@"eventType"])
    {
LABEL_4:
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rolloutId"];
      if (!v7)
      {
        v27 = [v4 error];

        if (v27)
        {
          v7 = 0;
          v25 = 0;
LABEL_40:

          goto LABEL_41;
        }

        v55 = *MEMORY[0x277CCA450];
        v56 = @"Retrieved nil serialized value for nonnull TRIRolloutHistoryRecord.rolloutId";
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
        v9 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIRolloutHistoryRecordOCNTErrorDomain" code:2 userInfo:v8];
        [v4 failWithError:v9];
        goto LABEL_30;
      }

      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rampId"];
      if (!v8)
      {
        v28 = [v4 error];

        if (v28)
        {
          v8 = 0;
          goto LABEL_13;
        }
      }

      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"factorPackSetId"];
      if (v9)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v10 = objc_opt_class();
          v46 = NSStringFromClass(v10);
          v11 = objc_opt_class();
          v12 = NSStringFromClass(v11);
          v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIRolloutHistoryRecord key factorPackSetId (expected %@, decoded %@)", v46, v12, 0];
          v53 = *MEMORY[0x277CCA450];
          v54 = v13;
          v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
          v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIRolloutHistoryRecordOCNTErrorDomain" code:3 userInfo:v14];
          [v4 failWithError:v15];

          v16 = v46;
LABEL_36:
          v25 = 0;
          goto LABEL_37;
        }
      }

      else
      {
        v29 = [v4 error];

        if (v29)
        {
          v9 = 0;
          goto LABEL_30;
        }
      }

      v30 = [v4 decodeInt64ForKey:@"deploymentId"];
      if (v30)
      {
        goto LABEL_25;
      }

      v40 = [v4 error];

      if (!v40)
      {
        if (([v4 containsValueForKey:@"deploymentId"] & 1) == 0)
        {
          v51 = *MEMORY[0x277CCA450];
          v52 = @"Missing serialized value for TRIRolloutHistoryRecord.deploymentId";
          v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
          v42 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIRolloutHistoryRecordOCNTErrorDomain" code:1 userInfo:v16];
          [v4 failWithError:v42];

          goto LABEL_36;
        }

LABEL_25:
        v47 = v30;
        v31 = objc_alloc(MEMORY[0x277CBEB98]);
        v32 = objc_opt_class();
        v33 = [v31 initWithObjects:{v32, objc_opt_class(), 0}];
        v16 = [v4 decodeObjectOfClasses:v33 forKey:@"namespaces"];

        if (v16)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v34 = objc_opt_class();
            v48 = NSStringFromClass(v34);
            v35 = objc_opt_class();
            v45 = NSStringFromClass(v35);
            v36 = v16;
            v37 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRIRolloutHistoryRecord key namespaces (expected %@, decoded %@)", v48, v45, 0];
            v49 = *MEMORY[0x277CCA450];
            v50 = v37;
            v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
            v39 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRIRolloutHistoryRecordOCNTErrorDomain" code:3 userInfo:v38];
            [v4 failWithError:v39];

            v16 = v36;
            goto LABEL_36;
          }
        }

        else
        {
          v41 = [v4 error];

          if (v41)
          {
            v16 = 0;
            goto LABEL_36;
          }
        }

        self = [(TRIRolloutHistoryRecord *)self initWithEventLogTime:v5 eventType:v6 rolloutId:v7 rampId:v8 factorPackSetId:v9 deploymentId:v47 namespaces:v16];
        v25 = self;
LABEL_37:

        goto LABEL_38;
      }

LABEL_30:
      v25 = 0;
LABEL_38:

      goto LABEL_39;
    }

    v57 = *MEMORY[0x277CCA450];
    v58 = @"Missing serialized value for TRIRolloutHistoryRecord.eventType";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v18 = objc_alloc(MEMORY[0x277CCA9B8]);
    v19 = 1;
LABEL_11:
    v8 = [v18 initWithDomain:@"TRIRolloutHistoryRecordOCNTErrorDomain" code:v19 userInfo:v7];
    [v4 failWithError:v8];
LABEL_13:
    v25 = 0;
LABEL_39:

    goto LABEL_40;
  }

LABEL_15:
  v25 = 0;
LABEL_41:

  v43 = *MEMORY[0x277D85DE8];
  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  eventLogTime = self->_eventLogTime;
  v11 = v4;
  if (eventLogTime)
  {
    [v4 encodeObject:eventLogTime forKey:@"eventLogTime"];
    v4 = v11;
  }

  [v4 encodeInt64:self->_eventType forKey:@"eventType"];
  rolloutId = self->_rolloutId;
  if (rolloutId)
  {
    [v11 encodeObject:rolloutId forKey:@"rolloutId"];
  }

  rampId = self->_rampId;
  if (rampId)
  {
    [v11 encodeObject:rampId forKey:@"rampId"];
  }

  factorPackSetId = self->_factorPackSetId;
  v9 = v11;
  if (factorPackSetId)
  {
    [v11 encodeObject:factorPackSetId forKey:@"factorPackSetId"];
    v9 = v11;
  }

  [v9 encodeInt64:self->_deploymentId forKey:@"deploymentId"];
  namespaces = self->_namespaces;
  if (namespaces)
  {
    [v11 encodeObject:namespaces forKey:@"namespaces"];
  }
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  eventLogTime = self->_eventLogTime;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:self->_eventType];
  v10 = *&self->_rolloutId;
  factorPackSetId = self->_factorPackSetId;
  v7 = [MEMORY[0x277CCABB0] numberWithInt:self->_deploymentId];
  v8 = [v3 initWithFormat:@"<TRIRolloutHistoryRecord | eventLogTime:%@ eventType:%@ rolloutId:%@ rampId:%@ factorPackSetId:%@ deploymentId:%@ namespaces:%@>", eventLogTime, v5, v10, factorPackSetId, v7, self->_namespaces];

  return v8;
}

@end