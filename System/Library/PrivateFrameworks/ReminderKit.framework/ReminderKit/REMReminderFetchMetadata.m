@interface REMReminderFetchMetadata
- (BOOL)isEqual:(id)a3;
- (REMReminderFetchMetadata)initWithCoder:(id)a3;
- (REMReminderFetchMetadata)initWithDueDateCounts:(id)a3;
- (REMReminderFetchMetadata)initWithSubtaskCounts:(id)a3;
- (REMReminderFetchMetadata)initWithSubtaskCounts:(id)a3 dueDateCounts:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMReminderFetchMetadata

- (REMReminderFetchMetadata)initWithSubtaskCounts:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMReminderFetchMetadata;
  v6 = [(REMReminderFetchMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subtaskCounts, a3);
  }

  return v7;
}

- (REMReminderFetchMetadata)initWithDueDateCounts:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMReminderFetchMetadata;
  v6 = [(REMReminderFetchMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dueDateCounts, a3);
  }

  return v7;
}

- (REMReminderFetchMetadata)initWithSubtaskCounts:(id)a3 dueDateCounts:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REMReminderFetchMetadata;
  v9 = [(REMReminderFetchMetadata *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_subtaskCounts, a3);
    objc_storeStrong(&v10->_dueDateCounts, a4);
  }

  return v10;
}

- (REMReminderFetchMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = REMReminderFetchMetadata;
  v5 = [(REMFetchMetadata *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"subtaskCounts"];
    subtaskCounts = v5->_subtaskCounts;
    v5->_subtaskCounts = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"dueDateCounts"];
    dueDateCounts = v5->_dueDateCounts;
    v5->_dueDateCounts = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = REMReminderFetchMetadata;
  v4 = a3;
  [(REMFetchMetadata *)&v7 encodeWithCoder:v4];
  v5 = [(REMReminderFetchMetadata *)self subtaskCounts:v7.receiver];
  [v4 encodeObject:v5 forKey:@"subtaskCounts"];

  v6 = [(REMReminderFetchMetadata *)self dueDateCounts];
  [v4 encodeObject:v6 forKey:@"dueDateCounts"];
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
      v7 = [(REMReminderFetchMetadata *)self subtaskCounts];
      v8 = [(REMReminderFetchMetadata *)v6 subtaskCounts];
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        v10 = [(REMReminderFetchMetadata *)self subtaskCounts];
        v11 = [(REMReminderFetchMetadata *)v6 subtaskCounts];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      v14 = [(REMReminderFetchMetadata *)self dueDateCounts];
      v15 = [(REMReminderFetchMetadata *)v6 dueDateCounts];
      if (v14 == v15)
      {
        v13 = 1;
      }

      else
      {
        v16 = [(REMReminderFetchMetadata *)self dueDateCounts];
        v17 = [(REMReminderFetchMetadata *)v6 dueDateCounts];
        v13 = [v16 isEqual:v17];
      }

      goto LABEL_12;
    }

LABEL_5:
    v13 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v13 = 1;
LABEL_13:

  return v13 & 1;
}

- (unint64_t)hash
{
  v2 = [(REMReminderFetchMetadata *)self subtaskCounts];
  v3 = [v2 hash];

  return v3;
}

@end