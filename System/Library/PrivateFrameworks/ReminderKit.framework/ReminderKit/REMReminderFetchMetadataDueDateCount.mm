@interface REMReminderFetchMetadataDueDateCount
- (BOOL)isEqual:(id)equal;
- (REMReminderFetchMetadataDueDateCount)initWithCoder:(id)coder;
- (REMReminderFetchMetadataDueDateCount)initWithDueDate:(id)date count:(int64_t)count;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMReminderFetchMetadataDueDateCount

- (REMReminderFetchMetadataDueDateCount)initWithDueDate:(id)date count:(int64_t)count
{
  dateCopy = date;
  v11.receiver = self;
  v11.super_class = REMReminderFetchMetadataDueDateCount;
  v8 = [(REMReminderFetchMetadataDueDateCount *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_dueDate, date);
    v9->_count = count;
  }

  return v9;
}

- (REMReminderFetchMetadataDueDateCount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = REMReminderFetchMetadataDueDateCount;
  v5 = [(REMReminderFetchMetadataDueDateCount *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dueDate"];
    dueDate = v5->_dueDate;
    v5->_dueDate = v6;

    v5->_count = [coderCopy decodeIntegerForKey:@"count"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dueDate = [(REMReminderFetchMetadataDueDateCount *)self dueDate];
  [coderCopy encodeObject:dueDate forKey:@"dueDate"];

  [coderCopy encodeInteger:-[REMReminderFetchMetadataDueDateCount count](self forKey:{"count"), @"count"}];
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
      dueDate = [(REMReminderFetchMetadataDueDateCount *)self dueDate];
      dueDate2 = [(REMReminderFetchMetadataDueDateCount *)v6 dueDate];
      v9 = dueDate2;
      if (dueDate == dueDate2)
      {
      }

      else
      {
        dueDate3 = [(REMReminderFetchMetadataDueDateCount *)self dueDate];
        dueDate4 = [(REMReminderFetchMetadataDueDateCount *)v6 dueDate];
        v12 = [dueDate3 isEqual:dueDate4];

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
  dueDate = [(REMReminderFetchMetadataDueDateCount *)self dueDate];
  v4 = [dueDate hash];
  v5 = [(REMReminderFetchMetadataDueDateCount *)self count];

  return v5 + v4;
}

@end