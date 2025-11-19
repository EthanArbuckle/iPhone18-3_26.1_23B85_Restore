@interface REMReminderFetchMetadataDueDateCount
- (BOOL)isEqual:(id)a3;
- (REMReminderFetchMetadataDueDateCount)initWithCoder:(id)a3;
- (REMReminderFetchMetadataDueDateCount)initWithDueDate:(id)a3 count:(int64_t)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMReminderFetchMetadataDueDateCount

- (REMReminderFetchMetadataDueDateCount)initWithDueDate:(id)a3 count:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = REMReminderFetchMetadataDueDateCount;
  v8 = [(REMReminderFetchMetadataDueDateCount *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dueDate, a3);
    v9->_count = a4;
  }

  return v9;
}

- (REMReminderFetchMetadataDueDateCount)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = REMReminderFetchMetadataDueDateCount;
  v5 = [(REMReminderFetchMetadataDueDateCount *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dueDate"];
    dueDate = v5->_dueDate;
    v5->_dueDate = v6;

    v5->_count = [v4 decodeIntegerForKey:@"count"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(REMReminderFetchMetadataDueDateCount *)self dueDate];
  [v5 encodeObject:v4 forKey:@"dueDate"];

  [v5 encodeInteger:-[REMReminderFetchMetadataDueDateCount count](self forKey:{"count"), @"count"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 != self)
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMReminderFetchMetadataDueDateCount *)self dueDate];
      v8 = [(REMReminderFetchMetadataDueDateCount *)v6 dueDate];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(REMReminderFetchMetadataDueDateCount *)self dueDate];
        v11 = [(REMReminderFetchMetadataDueDateCount *)v6 dueDate];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      v14 = [(REMReminderFetchMetadataDueDateCount *)self count];
      v13 = v14 == [(REMReminderFetchMetadataDueDateCount *)v6 count];
      goto LABEL_9;
    }

LABEL_5:
    v13 = 0;
LABEL_9:

    goto LABEL_10;
  }

  v13 = 1;
LABEL_10:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(REMReminderFetchMetadataDueDateCount *)self dueDate];
  v4 = [v3 hash];
  v5 = [(REMReminderFetchMetadataDueDateCount *)self count];

  return v5 + v4;
}

@end