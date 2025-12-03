@interface REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount
- (BOOL)isEqual:(id)equal;
- (REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount)initWithCoder:(id)coder;
- (REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount)initWithFromDate:(id)date toDate:(id)toDate;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount

- (REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount)initWithFromDate:(id)date toDate:(id)toDate
{
  dateCopy = date;
  toDateCopy = toDate;
  v12.receiver = self;
  v12.super_class = REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount;
  v9 = [(REMStoreInvocationValueStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fromDate, date);
    objc_storeStrong(&v10->_toDate, toDate);
  }

  return v10;
}

- (REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"fromDate"];
  v6 = [coderCopy decodeObjectForKey:@"toDate"];

  v7 = [(REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount *)self initWithFromDate:v5 toDate:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  fromDate = [(REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount *)self fromDate];
  [coderCopy encodeObject:fromDate forKey:@"fromDate"];

  toDate = [(REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount *)self toDate];
  [coderCopy encodeObject:toDate forKey:@"toDate"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  fromDate = [(REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount *)self fromDate];
  fromDate2 = [equalCopy fromDate];
  v7 = fromDate2;
  if (fromDate == fromDate2)
  {
  }

  else
  {
    fromDate3 = [(REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount *)self fromDate];
    fromDate4 = [equalCopy fromDate];
    v10 = [fromDate3 isEqual:fromDate4];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  toDate = [(REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount *)self toDate];
  toDate2 = [equalCopy toDate];
  if (toDate == toDate2)
  {
    v11 = 1;
  }

  else
  {
    toDate3 = [(REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount *)self toDate];
    toDate4 = [equalCopy toDate];
    v11 = [toDate3 isEqual:toDate4];
  }

LABEL_10:
  return v11 & 1;
}

- (unint64_t)hash
{
  fromDate = [(REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount *)self fromDate];
  v4 = [fromDate hash];
  toDate = [(REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount *)self toDate];
  v6 = [toDate hash];

  return v6 ^ v4;
}

@end