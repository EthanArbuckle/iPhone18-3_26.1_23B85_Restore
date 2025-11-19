@interface TRITaskRecord
+ (id)taskRecordWithTaskId:(id)a3 task:(id)a4 startDate:(id)a5 dependencies:(id)a6 capabilities:(unint64_t)a7 tags:(id)a8;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToTaskRecord:(id)a3;
- (TRITaskRecord)initWithCoder:(id)a3;
- (TRITaskRecord)initWithTaskId:(id)a3 task:(id)a4 startDate:(id)a5 dependencies:(id)a6 capabilities:(unint64_t)a7 tags:(id)a8;
- (id)copyWithReplacementCapabilities:(unint64_t)a3;
- (id)copyWithReplacementDependencies:(id)a3;
- (id)copyWithReplacementStartDate:(id)a3;
- (id)copyWithReplacementTags:(id)a3;
- (id)copyWithReplacementTask:(id)a3;
- (id)copyWithReplacementTaskId:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)defaultEncodeWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRITaskRecord

- (TRITaskRecord)initWithTaskId:(id)a3 task:(id)a4 startDate:(id)a5 dependencies:(id)a6 capabilities:(unint64_t)a7 tags:(id)a8
{
  v14 = a3;
  v15 = a4;
  v27 = a5;
  v16 = a6;
  v17 = a8;
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
    [v21 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:333 description:{@"Invalid parameter not satisfying: %@", @"taskId != nil"}];

    if (v15)
    {
LABEL_3:
      if (v16)
      {
        goto LABEL_4;
      }

LABEL_10:
      v23 = [MEMORY[0x277CCA890] currentHandler];
      [v23 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:335 description:{@"Invalid parameter not satisfying: %@", @"dependencies != nil"}];

      if (v17)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  v22 = [MEMORY[0x277CCA890] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:334 description:{@"Invalid parameter not satisfying: %@", @"task != nil"}];

  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (v17)
  {
    goto LABEL_5;
  }

LABEL_11:
  v24 = [MEMORY[0x277CCA890] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:336 description:{@"Invalid parameter not satisfying: %@", @"tags != nil"}];

LABEL_5:
  v28.receiver = self;
  v28.super_class = TRITaskRecord;
  v18 = [(TRITaskRecord *)&v28 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_taskId, a3);
    objc_storeStrong(&v19->_task, a4);
    objc_storeStrong(&v19->_startDate, a5);
    objc_storeStrong(&v19->_dependencies, a6);
    v19->_capabilities = a7;
    objc_storeStrong(&v19->_tags, a8);
  }

  return v19;
}

+ (id)taskRecordWithTaskId:(id)a3 task:(id)a4 startDate:(id)a5 dependencies:(id)a6 capabilities:(unint64_t)a7 tags:(id)a8
{
  v14 = a8;
  v15 = a6;
  v16 = a5;
  v17 = a4;
  v18 = a3;
  v19 = [[a1 alloc] initWithTaskId:v18 task:v17 startDate:v16 dependencies:v15 capabilities:a7 tags:v14];

  return v19;
}

- (id)copyWithReplacementTaskId:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithTaskId:v4 task:self->_task startDate:self->_startDate dependencies:self->_dependencies capabilities:self->_capabilities tags:self->_tags];

  return v5;
}

- (id)copyWithReplacementTask:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithTaskId:self->_taskId task:v4 startDate:self->_startDate dependencies:self->_dependencies capabilities:self->_capabilities tags:self->_tags];

  return v5;
}

- (id)copyWithReplacementStartDate:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithTaskId:self->_taskId task:self->_task startDate:v4 dependencies:self->_dependencies capabilities:self->_capabilities tags:self->_tags];

  return v5;
}

- (id)copyWithReplacementDependencies:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithTaskId:self->_taskId task:self->_task startDate:self->_startDate dependencies:v4 capabilities:self->_capabilities tags:self->_tags];

  return v5;
}

- (id)copyWithReplacementCapabilities:(unint64_t)a3
{
  v5 = objc_alloc(objc_opt_class());
  taskId = self->_taskId;
  task = self->_task;
  startDate = self->_startDate;
  dependencies = self->_dependencies;
  tags = self->_tags;

  return [v5 initWithTaskId:taskId task:task startDate:startDate dependencies:dependencies capabilities:a3 tags:tags];
}

- (id)copyWithReplacementTags:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_opt_class()) initWithTaskId:self->_taskId task:self->_task startDate:self->_startDate dependencies:self->_dependencies capabilities:self->_capabilities tags:v4];

  return v5;
}

- (BOOL)isEqualToTaskRecord:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_18;
  }

  v6 = self->_taskId == 0;
  v7 = [v4 taskId];
  v8 = v7 != 0;

  if (v6 == v8)
  {
    goto LABEL_18;
  }

  taskId = self->_taskId;
  if (taskId)
  {
    v10 = [v5 taskId];
    v11 = [(NSNumber *)taskId isEqual:v10];

    if (!v11)
    {
      goto LABEL_18;
    }
  }

  v12 = self->_task == 0;
  v13 = [v5 task];
  v14 = v13 != 0;

  if (v12 == v14)
  {
    goto LABEL_18;
  }

  task = self->_task;
  if (task)
  {
    v16 = [v5 task];
    v17 = [(TRITask *)task isEqual:v16];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  v18 = self->_startDate == 0;
  v19 = [v5 startDate];
  v20 = v19 != 0;

  if (v18 == v20)
  {
    goto LABEL_18;
  }

  startDate = self->_startDate;
  if (startDate)
  {
    v22 = [v5 startDate];
    v23 = [(NSDate *)startDate isEqual:v22];

    if (!v23)
    {
      goto LABEL_18;
    }
  }

  v24 = self->_dependencies == 0;
  v25 = [v5 dependencies];
  v26 = v25 != 0;

  if (v24 == v26)
  {
    goto LABEL_18;
  }

  dependencies = self->_dependencies;
  if (dependencies)
  {
    v28 = [v5 dependencies];
    v29 = [(NSArray *)dependencies isEqual:v28];

    if (!v29)
    {
      goto LABEL_18;
    }
  }

  capabilities = self->_capabilities;
  if (capabilities != [v5 capabilities] || (v31 = self->_tags == 0, objc_msgSend(v5, "tags"), v32 = objc_claimAutoreleasedReturnValue(), v33 = v32 != 0, v32, v31 == v33))
  {
LABEL_18:
    v36 = 0;
  }

  else
  {
    tags = self->_tags;
    if (tags)
    {
      v35 = [v5 tags];
      v36 = [(NSArray *)tags isEqual:v35];
    }

    else
    {
      v36 = 1;
    }
  }

  return v36 & 1;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRITaskRecord *)self isEqualToTaskRecord:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSNumber *)self->_taskId hash];
  v4 = [(TRITask *)self->_task hash]- v3 + 32 * v3;
  v5 = [(NSDate *)self->_startDate hash]- v4 + 32 * v4;
  v6 = [(NSArray *)self->_dependencies hash]- v5 + 32 * v5;
  tags = self->_tags;
  v8 = self->_capabilities - v6 + 32 * v6;
  return [(NSArray *)tags hash]- v8 + 32 * v8;
}

- (TRITaskRecord)initWithCoder:(id)a3
{
  v85[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"taskId"];
  v6 = v5;
  if (v5)
  {
    v51 = v5;
    v52 = self;
    v68 = objc_alloc(MEMORY[0x277CBEB98]);
    v67 = objc_opt_class();
    v66 = objc_opt_class();
    v65 = objc_opt_class();
    v64 = objc_opt_class();
    v63 = objc_opt_class();
    v62 = objc_opt_class();
    v61 = objc_opt_class();
    v60 = objc_opt_class();
    v59 = objc_opt_class();
    v58 = objc_opt_class();
    v57 = objc_opt_class();
    v56 = objc_opt_class();
    v55 = objc_opt_class();
    v54 = objc_opt_class();
    v53 = objc_opt_class();
    v69 = v4;
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v50 = v7;
    v4 = v69;
    v17 = [v68 initWithObjects:{v67, v66, v65, v64, v63, v62, v61, v60, v59, v58, v57, v56, v55, v54, v53, v50, v8, v9, v10, v11, v12, v13, v14, v15, v16, objc_opt_class(), 0}];
    v18 = [v69 decodeObjectOfClasses:v17 forKey:@"task"];

    if (!v18)
    {
      v27 = [v69 error];

      if (v27)
      {
        v18 = 0;
        v27 = 0;
        v6 = v51;
        self = v52;
LABEL_34:

        goto LABEL_35;
      }

      v82 = *MEMORY[0x277CCA450];
      v83 = @"Retrieved nil serialized value for nonnull TRITaskRecord.task";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v83 forKeys:&v82 count:1];
      v21 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRITaskRecordOCNTErrorDomain" code:2 userInfo:v19];
      [v69 failWithError:v21];
      goto LABEL_31;
    }

    v19 = [v69 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
    if (v19)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRITaskRecord key startDate (expected %@, decoded %@)", v21, v23, 0];
        v80 = *MEMORY[0x277CCA450];
        v81 = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
        v26 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRITaskRecordOCNTErrorDomain" code:3 userInfo:v25];
        [v69 failWithError:v26];
LABEL_24:

LABEL_25:
LABEL_26:
        v27 = 0;
        v6 = v51;
        self = v52;
        goto LABEL_27;
      }

      goto LABEL_12;
    }

    v28 = [v69 error];

    if (!v28)
    {
LABEL_12:
      v29 = objc_alloc(MEMORY[0x277CBEB98]);
      v30 = objc_opt_class();
      v31 = [v29 initWithObjects:{v30, objc_opt_class(), 0}];
      v21 = [v69 decodeObjectOfClasses:v31 forKey:@"dependencies"];

      if (v21)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v37 = objc_opt_class();
          v23 = NSStringFromClass(v37);
          v38 = objc_opt_class();
          v24 = NSStringFromClass(v38);
          v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRITaskRecord key dependencies (expected %@, decoded %@)", v23, v24, 0];
          v76 = *MEMORY[0x277CCA450];
          v77 = v25;
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v77 forKeys:&v76 count:1];
          v39 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRITaskRecordOCNTErrorDomain" code:3 userInfo:v26];
          [v69 failWithError:v39];
LABEL_23:

          goto LABEL_24;
        }

        v32 = [v69 decodeInt64ForKey:@"capabilities"];
        if (v32)
        {
LABEL_15:
          v33 = objc_alloc(MEMORY[0x277CBEB98]);
          v34 = objc_opt_class();
          v35 = [v33 initWithObjects:{v34, objc_opt_class(), 0}];
          v23 = [v69 decodeObjectOfClasses:v35 forKey:@"tags"];

          if (!v23)
          {
            v44 = [v69 error];

            self = v52;
            if (!v44)
            {
              v72 = *MEMORY[0x277CCA450];
              v73 = @"Retrieved nil serialized value for nonnull TRITaskRecord.tags";
              v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
              v46 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRITaskRecordOCNTErrorDomain" code:2 userInfo:v45];
              [v69 failWithError:v46];
            }

            v23 = 0;
            v27 = 0;
            v6 = v51;
            goto LABEL_27;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v6 = v51;
            self = [(TRITaskRecord *)v52 initWithTaskId:v51 task:v18 startDate:v19 dependencies:v21 capabilities:v32 tags:v23];
            v27 = self;
LABEL_27:

LABEL_32:
            goto LABEL_33;
          }

          v47 = objc_opt_class();
          v24 = NSStringFromClass(v47);
          v48 = objc_opt_class();
          v25 = NSStringFromClass(v48);
          v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Unarchived unexpected class for TRITaskRecord key tags (expected %@, decoded %@)", v24, v25, 0];
          v70 = *MEMORY[0x277CCA450];
          v71 = v26;
          v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
          v49 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRITaskRecordOCNTErrorDomain" code:3 userInfo:v39];
          [v69 failWithError:v49];

          goto LABEL_23;
        }

        v41 = [v69 error];

        if (!v41)
        {
          if (([v69 containsValueForKey:@"capabilities"] & 1) == 0)
          {
            v74 = *MEMORY[0x277CCA450];
            v75 = @"Missing serialized value for TRITaskRecord.capabilities";
            v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];
            v24 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRITaskRecordOCNTErrorDomain" code:1 userInfo:v23];
            [v69 failWithError:v24];
            goto LABEL_25;
          }

          goto LABEL_15;
        }
      }

      else
      {
        v36 = [v69 error];

        if (!v36)
        {
          v78 = *MEMORY[0x277CCA450];
          v79 = @"Retrieved nil serialized value for nonnull TRITaskRecord.dependencies";
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
          v40 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRITaskRecordOCNTErrorDomain" code:2 userInfo:v23];
          [v69 failWithError:v40];

          v21 = 0;
          goto LABEL_26;
        }

        v21 = 0;
      }

      v27 = 0;
LABEL_31:
      v6 = v51;
      self = v52;
      goto LABEL_32;
    }

    v19 = 0;
    v27 = 0;
    v6 = v51;
    self = v52;
LABEL_33:

    goto LABEL_34;
  }

  v27 = [v4 error];

  if (!v27)
  {
    v84 = *MEMORY[0x277CCA450];
    v85[0] = @"Retrieved nil serialized value for nonnull TRITaskRecord.taskId";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v85 forKeys:&v84 count:1];
    v19 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TRITaskRecordOCNTErrorDomain" code:2 userInfo:v18];
    [v4 failWithError:v19];
    goto LABEL_33;
  }

  v27 = 0;
LABEL_35:

  v42 = *MEMORY[0x277D85DE8];
  return v27;
}

- (void)defaultEncodeWithCoder:(id)a3
{
  v4 = a3;
  taskId = self->_taskId;
  v10 = v4;
  if (taskId)
  {
    [v4 encodeObject:taskId forKey:@"taskId"];
    v4 = v10;
  }

  task = self->_task;
  if (task)
  {
    [v10 encodeObject:task forKey:@"task"];
    v4 = v10;
  }

  startDate = self->_startDate;
  if (startDate)
  {
    [v10 encodeObject:startDate forKey:@"startDate"];
    v4 = v10;
  }

  dependencies = self->_dependencies;
  if (dependencies)
  {
    [v10 encodeObject:dependencies forKey:@"dependencies"];
    v4 = v10;
  }

  [v4 encodeInt64:self->_capabilities forKey:@"capabilities"];
  tags = self->_tags;
  if (tags)
  {
    [v10 encodeObject:tags forKey:@"tags"];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [MEMORY[0x277CCA890] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"TRIServerTupleTypes.m" lineNumber:581 description:{@"Do not use NSKeyedArchiver to persist instances of TRITaskRecord to disk. If you want to persist this object to disk, create a protobuf schema."}];
  }

  [(TRITaskRecord *)self defaultEncodeWithCoder:v6];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = *&self->_taskId;
  startDate = self->_startDate;
  dependencies = self->_dependencies;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_capabilities];
  v7 = [v3 initWithFormat:@"<TRITaskRecord | taskId:%@ task:%@ startDate:%@ dependencies:%@ capabilities:%@ tags:%@>", v9, startDate, dependencies, v6, self->_tags];

  return v7;
}

@end