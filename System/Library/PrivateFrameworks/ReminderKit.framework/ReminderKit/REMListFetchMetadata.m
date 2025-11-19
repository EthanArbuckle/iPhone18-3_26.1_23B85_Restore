@interface REMListFetchMetadata
- (BOOL)isEqual:(id)a3;
- (REMListFetchMetadata)initWithCoder:(id)a3;
- (REMListFetchMetadata)initWithIncompleteReminderCounts:(id)a3 scheduledCount:(int64_t)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMListFetchMetadata

- (REMListFetchMetadata)initWithIncompleteReminderCounts:(id)a3 scheduledCount:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = REMListFetchMetadata;
  v8 = [(REMListFetchMetadata *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_incompleteReminderCounts, a3);
    v9->_scheduledCount = a4;
  }

  return v9;
}

- (REMListFetchMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = REMListFetchMetadata;
  v5 = [(REMFetchMetadata *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"incompleteReminderCounts"];
    incompleteReminderCounts = v5->_incompleteReminderCounts;
    v5->_incompleteReminderCounts = v10;

    v5->_scheduledCount = [v4 decodeIntegerForKey:@"scheduledCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = REMListFetchMetadata;
  v4 = a3;
  [(REMFetchMetadata *)&v6 encodeWithCoder:v4];
  v5 = [(REMListFetchMetadata *)self incompleteReminderCounts:v6.receiver];
  [v4 encodeObject:v5 forKey:@"incompleteReminderCounts"];

  [v4 encodeInteger:-[REMListFetchMetadata scheduledCount](self forKey:{"scheduledCount"), @"scheduledCount"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    v6 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(REMListFetchMetadata *)self incompleteReminderCounts];
      v8 = [(REMListFetchMetadata *)v6 incompleteReminderCounts];
      if (v7 == v8)
      {
        v11 = 1;
      }

      else
      {
        v9 = [(REMListFetchMetadata *)self incompleteReminderCounts];
        v10 = [(REMListFetchMetadata *)v6 incompleteReminderCounts];
        v11 = [v9 isEqual:v10];
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
  v2 = [(REMListFetchMetadata *)self incompleteReminderCounts];
  v3 = [v2 hash];

  return v3;
}

@end