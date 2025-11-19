@interface TRITrackingId
- (BOOL)isEqual:(id)a3;
- (TRISubject)subject;
- (TRITrackingId)initWithCoder:(id)a3;
- (TRITrackingId)initWithUUID:(id)a3 time:(id)a4 treatments:(id)a5 subject:(id)a6;
- (TRITrackingId)initWithUUID:(id)a3 time:(id)a4 treatments:(id)a5 subjectProvider:(id)a6 projectId:(int)a7;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRITrackingId

- (TRITrackingId)initWithUUID:(id)a3 time:(id)a4 treatments:(id)a5 subject:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = TRITrackingId;
  v15 = [(TRITrackingId *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_uuid, a3);
    objc_storeStrong(&v16->_time, a4);
    objc_storeStrong(&v16->_treatments, a5);
    objc_storeStrong(&v16->_subject, a6);
  }

  return v16;
}

- (TRITrackingId)initWithUUID:(id)a3 time:(id)a4 treatments:(id)a5 subjectProvider:(id)a6 projectId:(int)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v21.receiver = self;
  v21.super_class = TRITrackingId;
  v17 = [(TRITrackingId *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_uuid, a3);
    objc_storeStrong(&v18->_time, a4);
    objc_storeStrong(&v18->_treatments, a5);
    objc_storeStrong(&v18->_subjectProvider, a6);
    v18->_projectId = a7;
    v19 = [(TRISubjectProvider *)v18->_subjectProvider subject];
  }

  return v18;
}

- (TRISubject)subject
{
  subject = self->_subject;
  if (subject)
  {
    v3 = subject;
  }

  else
  {
    v3 = [(TRISubjectProvider *)self->_subjectProvider subjectWithProjectId:self->_projectId];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(TRITrackingId *)self uuid];
    v7 = [v5 uuid];
    if (![v6 isEqual:v7])
    {
      v19 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v8 = [(TRITrackingId *)self time];
    [v8 timeIntervalSince1970];
    v10 = v9;
    v11 = [v5 time];
    [v11 timeIntervalSince1970];
    if (vabdd_f64(v10, v12) >= 0.001)
    {
      v19 = 0;
LABEL_22:

      goto LABEL_23;
    }

    v13 = [(TRITrackingId *)self subject];
    v14 = [v5 subject];
    if (![v13 isEqual:v14])
    {
      v19 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v15 = [(TRITrackingId *)self treatments];
    if (!v15)
    {
      v24 = [v5 treatments];
      if (!v24)
      {
        v24 = 0;
        v19 = 1;
        goto LABEL_19;
      }
    }

    v25 = v15;
    v16 = [(TRITrackingId *)self treatments];
    if (v16)
    {
      v17 = v16;
      v18 = [v5 treatments];
      if (v18)
      {
        v23 = v18;
        v22 = [(TRITrackingId *)self treatments];
        v21 = [v5 treatments];
        v19 = [v22 isEqualToArray:v21];

        goto LABEL_16;
      }
    }

    v19 = 0;
LABEL_16:
    v15 = v25;
    if (v25)
    {
LABEL_20:

      goto LABEL_21;
    }

LABEL_19:

    goto LABEL_20;
  }

  v19 = 0;
LABEL_24:

  return v19;
}

- (unint64_t)hash
{
  v2 = [(TRITrackingId *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(TRITrackingId *)self uuid];
  [v12 encodeObject:v4 forKey:@"uuid"];

  v5 = [(TRITrackingId *)self time];
  [v12 encodeObject:v5 forKey:@"time"];

  v6 = [(TRITrackingId *)self subject];
  [v12 encodeObject:v6 forKey:@"subject"];

  v7 = MEMORY[0x277CCABB0];
  v8 = [(TRITrackingId *)self treatments];
  v9 = [v7 numberWithInt:v8 != 0];
  [v12 encodeObject:v9 forKey:@"hasTreatments"];

  v10 = [(TRITrackingId *)self treatments];

  if (v10)
  {
    v11 = [(TRITrackingId *)self treatments];
    [v12 encodeObject:v11 forKey:@"treatments"];
  }
}

- (TRITrackingId)initWithCoder:(id)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"time"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subject"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasTreatments"];
  v9 = v8;
  if (v8)
  {
    if ([v8 BOOLValue])
    {
      v10 = MEMORY[0x277CBEB98];
      v19[0] = objc_opt_class();
      v19[1] = objc_opt_class();
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
      v12 = [v10 setWithArray:v11];
      v13 = [v4 decodeObjectOfClasses:v12 forKey:@"treatments"];

      if (!v5)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v13 = 0;
      if (!v5)
      {
        goto LABEL_11;
      }
    }

    if (v6 && v7 && (![v9 BOOLValue] || v13))
    {
      v15 = [[TRITrackingId alloc] initWithUUID:v5 time:v6 treatments:v13 subject:v7];
      goto LABEL_14;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_11:
  v14 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *v18 = 0;
    _os_log_error_impl(&dword_22EA6B000, v14, OS_LOG_TYPE_ERROR, "failed to decode tracking id, some fields were nil", v18, 2u);
  }

  v15 = 0;
LABEL_14:

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(TRITrackingId *)self uuid];
  v4 = [v2 stringWithFormat:@"Trial tracking id %@", v3];

  return v4;
}

@end