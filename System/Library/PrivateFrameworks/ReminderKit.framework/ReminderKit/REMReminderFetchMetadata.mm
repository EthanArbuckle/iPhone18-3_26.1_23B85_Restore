@interface REMReminderFetchMetadata
- (BOOL)isEqual:(id)equal;
- (REMReminderFetchMetadata)initWithCoder:(id)coder;
- (REMReminderFetchMetadata)initWithDueDateCounts:(id)counts;
- (REMReminderFetchMetadata)initWithSubtaskCounts:(id)counts;
- (REMReminderFetchMetadata)initWithSubtaskCounts:(id)counts dueDateCounts:(id)dateCounts;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMReminderFetchMetadata

- (REMReminderFetchMetadata)initWithSubtaskCounts:(id)counts
{
  countsCopy = counts;
  v9.receiver = self;
  v9.super_class = REMReminderFetchMetadata;
  v6 = [(REMReminderFetchMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subtaskCounts, counts);
  }

  return v7;
}

- (REMReminderFetchMetadata)initWithDueDateCounts:(id)counts
{
  countsCopy = counts;
  v9.receiver = self;
  v9.super_class = REMReminderFetchMetadata;
  v6 = [(REMReminderFetchMetadata *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dueDateCounts, counts);
  }

  return v7;
}

- (REMReminderFetchMetadata)initWithSubtaskCounts:(id)counts dueDateCounts:(id)dateCounts
{
  countsCopy = counts;
  dateCountsCopy = dateCounts;
  v12.receiver = self;
  v12.super_class = REMReminderFetchMetadata;
  v9 = [(REMReminderFetchMetadata *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_subtaskCounts, counts);
    objc_storeStrong(&v10->_dueDateCounts, dateCounts);
  }

  return v10;
}

- (REMReminderFetchMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = REMReminderFetchMetadata;
  v5 = [(REMFetchMetadata *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"subtaskCounts"];
    subtaskCounts = v5->_subtaskCounts;
    v5->_subtaskCounts = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"dueDateCounts"];
    dueDateCounts = v5->_dueDateCounts;
    v5->_dueDateCounts = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = REMReminderFetchMetadata;
  coderCopy = coder;
  [(REMFetchMetadata *)&v7 encodeWithCoder:coderCopy];
  v5 = [(REMReminderFetchMetadata *)self subtaskCounts:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"subtaskCounts"];

  dueDateCounts = [(REMReminderFetchMetadata *)self dueDateCounts];
  [coderCopy encodeObject:dueDateCounts forKey:@"dueDateCounts"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy != self)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      subtaskCounts = [(REMReminderFetchMetadata *)self subtaskCounts];
      subtaskCounts2 = [(REMReminderFetchMetadata *)v6 subtaskCounts];
      v9 = subtaskCounts2;
      if (subtaskCounts == subtaskCounts2)
      {
      }

      else
      {
        subtaskCounts3 = [(REMReminderFetchMetadata *)self subtaskCounts];
        subtaskCounts4 = [(REMReminderFetchMetadata *)v6 subtaskCounts];
        v12 = [subtaskCounts3 isEqual:subtaskCounts4];

        if (!v12)
        {
          goto LABEL_5;
        }
      }

      dueDateCounts = [(REMReminderFetchMetadata *)self dueDateCounts];
      dueDateCounts2 = [(REMReminderFetchMetadata *)v6 dueDateCounts];
      if (dueDateCounts == dueDateCounts2)
      {
        v13 = 1;
      }

      else
      {
        dueDateCounts3 = [(REMReminderFetchMetadata *)self dueDateCounts];
        dueDateCounts4 = [(REMReminderFetchMetadata *)v6 dueDateCounts];
        v13 = [dueDateCounts3 isEqual:dueDateCounts4];
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
  subtaskCounts = [(REMReminderFetchMetadata *)self subtaskCounts];
  v3 = [subtaskCounts hash];

  return v3;
}

@end