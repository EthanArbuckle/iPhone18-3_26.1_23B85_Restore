@interface TRITrackingId
- (BOOL)isEqual:(id)equal;
- (TRISubject)subject;
- (TRITrackingId)initWithCoder:(id)coder;
- (TRITrackingId)initWithUUID:(id)d time:(id)time treatments:(id)treatments subject:(id)subject;
- (TRITrackingId)initWithUUID:(id)d time:(id)time treatments:(id)treatments subjectProvider:(id)provider projectId:(int)id;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRITrackingId

- (TRITrackingId)initWithUUID:(id)d time:(id)time treatments:(id)treatments subject:(id)subject
{
  dCopy = d;
  timeCopy = time;
  treatmentsCopy = treatments;
  subjectCopy = subject;
  v18.receiver = self;
  v18.super_class = TRITrackingId;
  v15 = [(TRITrackingId *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_uuid, d);
    objc_storeStrong(&v16->_time, time);
    objc_storeStrong(&v16->_treatments, treatments);
    objc_storeStrong(&v16->_subject, subject);
  }

  return v16;
}

- (TRITrackingId)initWithUUID:(id)d time:(id)time treatments:(id)treatments subjectProvider:(id)provider projectId:(int)id
{
  dCopy = d;
  timeCopy = time;
  treatmentsCopy = treatments;
  providerCopy = provider;
  v21.receiver = self;
  v21.super_class = TRITrackingId;
  v17 = [(TRITrackingId *)&v21 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_uuid, d);
    objc_storeStrong(&v18->_time, time);
    objc_storeStrong(&v18->_treatments, treatments);
    objc_storeStrong(&v18->_subjectProvider, provider);
    v18->_projectId = id;
    subject = [(TRISubjectProvider *)v18->_subjectProvider subject];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    uuid = [(TRITrackingId *)self uuid];
    uuid2 = [v5 uuid];
    if (![uuid isEqual:uuid2])
    {
      v19 = 0;
LABEL_23:

      goto LABEL_24;
    }

    time = [(TRITrackingId *)self time];
    [time timeIntervalSince1970];
    v10 = v9;
    time2 = [v5 time];
    [time2 timeIntervalSince1970];
    if (vabdd_f64(v10, v12) >= 0.001)
    {
      v19 = 0;
LABEL_22:

      goto LABEL_23;
    }

    subject = [(TRITrackingId *)self subject];
    subject2 = [v5 subject];
    if (![subject isEqual:subject2])
    {
      v19 = 0;
LABEL_21:

      goto LABEL_22;
    }

    treatments = [(TRITrackingId *)self treatments];
    if (!treatments)
    {
      treatments2 = [v5 treatments];
      if (!treatments2)
      {
        treatments2 = 0;
        v19 = 1;
        goto LABEL_19;
      }
    }

    v25 = treatments;
    treatments3 = [(TRITrackingId *)self treatments];
    if (treatments3)
    {
      v17 = treatments3;
      treatments4 = [v5 treatments];
      if (treatments4)
      {
        v23 = treatments4;
        treatments5 = [(TRITrackingId *)self treatments];
        treatments6 = [v5 treatments];
        v19 = [treatments5 isEqualToArray:treatments6];

        goto LABEL_16;
      }
    }

    v19 = 0;
LABEL_16:
    treatments = v25;
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
  uuid = [(TRITrackingId *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(TRITrackingId *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  time = [(TRITrackingId *)self time];
  [coderCopy encodeObject:time forKey:@"time"];

  subject = [(TRITrackingId *)self subject];
  [coderCopy encodeObject:subject forKey:@"subject"];

  v7 = MEMORY[0x277CCABB0];
  treatments = [(TRITrackingId *)self treatments];
  v9 = [v7 numberWithInt:treatments != 0];
  [coderCopy encodeObject:v9 forKey:@"hasTreatments"];

  treatments2 = [(TRITrackingId *)self treatments];

  if (treatments2)
  {
    treatments3 = [(TRITrackingId *)self treatments];
    [coderCopy encodeObject:treatments3 forKey:@"treatments"];
  }
}

- (TRITrackingId)initWithCoder:(id)coder
{
  v19[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"time"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subject"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hasTreatments"];
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
      v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"treatments"];

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
  uuid = [(TRITrackingId *)self uuid];
  v4 = [v2 stringWithFormat:@"Trial tracking id %@", uuid];

  return v4;
}

@end