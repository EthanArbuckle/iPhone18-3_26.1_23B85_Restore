@interface REMListFetchMetadata
- (BOOL)isEqual:(id)equal;
- (REMListFetchMetadata)initWithCoder:(id)coder;
- (REMListFetchMetadata)initWithIncompleteReminderCounts:(id)counts scheduledCount:(int64_t)count;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMListFetchMetadata

- (REMListFetchMetadata)initWithIncompleteReminderCounts:(id)counts scheduledCount:(int64_t)count
{
  countsCopy = counts;
  v11.receiver = self;
  v11.super_class = REMListFetchMetadata;
  v8 = [(REMListFetchMetadata *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_incompleteReminderCounts, counts);
    v9->_scheduledCount = count;
  }

  return v9;
}

- (REMListFetchMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = REMListFetchMetadata;
  v5 = [(REMFetchMetadata *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"incompleteReminderCounts"];
    incompleteReminderCounts = v5->_incompleteReminderCounts;
    v5->_incompleteReminderCounts = v10;

    v5->_scheduledCount = [coderCopy decodeIntegerForKey:@"scheduledCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = REMListFetchMetadata;
  coderCopy = coder;
  [(REMFetchMetadata *)&v6 encodeWithCoder:coderCopy];
  v5 = [(REMListFetchMetadata *)self incompleteReminderCounts:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"incompleteReminderCounts"];

  [coderCopy encodeInteger:-[REMListFetchMetadata scheduledCount](self forKey:{"scheduledCount"), @"scheduledCount"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      incompleteReminderCounts = [(REMListFetchMetadata *)self incompleteReminderCounts];
      incompleteReminderCounts2 = [(REMListFetchMetadata *)v6 incompleteReminderCounts];
      if (incompleteReminderCounts == incompleteReminderCounts2)
      {
        v11 = 1;
      }

      else
      {
        incompleteReminderCounts3 = [(REMListFetchMetadata *)self incompleteReminderCounts];
        incompleteReminderCounts4 = [(REMListFetchMetadata *)v6 incompleteReminderCounts];
        v11 = [incompleteReminderCounts3 isEqual:incompleteReminderCounts4];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11 & 1;
}

- (unint64_t)hash
{
  incompleteReminderCounts = [(REMListFetchMetadata *)self incompleteReminderCounts];
  v3 = [incompleteReminderCounts hash];

  return v3;
}

@end