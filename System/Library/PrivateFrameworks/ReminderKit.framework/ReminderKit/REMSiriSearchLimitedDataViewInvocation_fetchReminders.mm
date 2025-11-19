@interface REMSiriSearchLimitedDataViewInvocation_fetchReminders
- (BOOL)isEqual:(id)a3;
- (REMSiriSearchLimitedDataViewInvocation_fetchReminders)initWithCoder:(id)a3;
- (REMSiriSearchLimitedDataViewInvocation_fetchReminders)initWithTitle:(id)a3 dueAfter:(id)a4 dueBefore:(id)a5 isCompleted:(id)a6 hasLocation:(id)a7 location:(id)a8;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMSiriSearchLimitedDataViewInvocation_fetchReminders

- (REMSiriSearchLimitedDataViewInvocation_fetchReminders)initWithTitle:(id)a3 dueAfter:(id)a4 dueBefore:(id)a5 isCompleted:(id)a6 hasLocation:(id)a7 location:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v34.receiver = self;
  v34.super_class = REMSiriSearchLimitedDataViewInvocation_fetchReminders;
  v20 = [(REMStoreInvocationValueStorage *)&v34 init];
  if (v20)
  {
    v21 = [v14 copy];
    title = v20->_title;
    v20->_title = v21;

    v23 = [v16 copy];
    dueBefore = v20->_dueBefore;
    v20->_dueBefore = v23;

    v25 = [v15 copy];
    dueAfter = v20->_dueAfter;
    v20->_dueAfter = v25;

    v27 = [v17 copy];
    completed = v20->_completed;
    v20->_completed = v27;

    v29 = [v18 copy];
    hasLocation = v20->_hasLocation;
    v20->_hasLocation = v29;

    v31 = [v19 copy];
    location = v20->_location;
    v20->_location = v31;
  }

  return v20;
}

- (REMSiriSearchLimitedDataViewInvocation_fetchReminders)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dueBefore"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dueAfter"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"completed"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hasLocation"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];

  v11 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self initWithTitle:v5 dueAfter:v7 dueBefore:v6 isCompleted:v8 hasLocation:v9 location:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self title];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self dueBefore];
  [v4 encodeObject:v6 forKey:@"dueBefore"];

  v7 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self dueAfter];
  [v4 encodeObject:v7 forKey:@"dueAfter"];

  v8 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self completed];
  [v4 encodeObject:v8 forKey:@"completed"];

  v9 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self hasLocation];
  [v4 encodeObject:v9 forKey:@"hasLocation"];

  v10 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self location];
  [v4 encodeObject:v10 forKey:@"location"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self title];
  v6 = [v4 title];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self title];
    v9 = [v4 title];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_20;
    }
  }

  v11 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self dueBefore];
  v12 = [v4 dueBefore];
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    v14 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self dueBefore];
    v15 = [v4 dueBefore];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_20;
    }
  }

  v17 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self dueAfter];
  v18 = [v4 dueAfter];
  v19 = v18;
  if (v17 == v18)
  {
  }

  else
  {
    v20 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self dueAfter];
    v21 = [v4 dueAfter];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
      goto LABEL_20;
    }
  }

  v23 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self completed];
  v24 = [v4 completed];
  v25 = v24;
  if (v23 == v24)
  {
  }

  else
  {
    v26 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self completed];
    v27 = [v4 completed];
    v28 = [v26 isEqual:v27];

    if (!v28)
    {
      goto LABEL_20;
    }
  }

  v29 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self hasLocation];
  v30 = [v4 hasLocation];
  v31 = v30;
  if (v29 == v30)
  {
  }

  else
  {
    v32 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self hasLocation];
    v33 = [v4 hasLocation];
    v34 = [v32 isEqual:v33];

    if (!v34)
    {
LABEL_20:
      v35 = 0;
      goto LABEL_21;
    }
  }

  v37 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self location];
  v38 = [v4 location];
  if (v37 == v38)
  {
    v35 = 1;
  }

  else
  {
    v39 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self location];
    v40 = [v4 location];
    v35 = [v39 isEqual:v40];
  }

LABEL_21:
  return v35 & 1;
}

- (unint64_t)hash
{
  v3 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self title];
  v4 = [v3 hash];
  v5 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self dueBefore];
  v6 = [v5 hash] ^ v4;
  v7 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self dueAfter];
  v8 = [v7 hash];
  v9 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self completed];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self hasLocation];
  v12 = [v11 hash];
  v13 = [(REMSiriSearchLimitedDataViewInvocation_fetchReminders *)self location];
  v14 = v12 ^ [v13 hash];

  return v10 ^ v14;
}

@end