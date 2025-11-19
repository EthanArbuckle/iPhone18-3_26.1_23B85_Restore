@interface REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount
- (BOOL)isEqual:(id)a3;
- (REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount)initWithCoder:(id)a3;
- (REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount)initWithFromDate:(id)a3 toDate:(id)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount

- (REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount)initWithFromDate:(id)a3 toDate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount;
  v9 = [(REMStoreInvocationValueStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fromDate, a3);
    objc_storeStrong(&v10->_toDate, a4);
  }

  return v10;
}

- (REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"fromDate"];
  v6 = [v4 decodeObjectForKey:@"toDate"];

  v7 = [(REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount *)self initWithFromDate:v5 toDate:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount *)self fromDate];
  [v4 encodeObject:v5 forKey:@"fromDate"];

  v6 = [(REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount *)self toDate];
  [v4 encodeObject:v6 forKey:@"toDate"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = [(REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount *)self fromDate];
  v6 = [v4 fromDate];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount *)self fromDate];
    v9 = [v4 fromDate];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  v12 = [(REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount *)self toDate];
  v13 = [v4 toDate];
  if (v12 == v13)
  {
    v11 = 1;
  }

  else
  {
    v14 = [(REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount *)self toDate];
    v15 = [v4 toDate];
    v11 = [v14 isEqual:v15];
  }

LABEL_10:
  return v11 & 1;
}

- (unint64_t)hash
{
  v3 = [(REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount *)self fromDate];
  v4 = [v3 hash];
  v5 = [(REMAppStoreDataViewInvocation_fetchCreatedOrCompletedRemindersCount *)self toDate];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end