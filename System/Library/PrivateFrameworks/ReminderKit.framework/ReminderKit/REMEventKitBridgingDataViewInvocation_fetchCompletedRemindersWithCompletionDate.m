@interface REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate
- (BOOL)isEqual:(id)a3;
- (REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate)initWithCoder:(id)a3;
- (REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate)initWithListIDs:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate

- (REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate)initWithListIDs:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate;
  v12 = [(REMStoreInvocationValueStorage *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_listIDs, a3);
    objc_storeStrong(&v13->_startDate, a4);
    objc_storeStrong(&v13->_endDate, a5);
  }

  return v13;
}

- (REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate)initWithCoder:(id)a3
{
  v4 = MEMORY[0x1E695DFD8];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"listIDs"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"startDate"];
  v10 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"endDate"];

  v11 = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self initWithListIDs:v8 startDate:v9 endDate:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self listIDs];
  [v4 encodeObject:v5 forKey:@"listIDs"];

  v6 = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self startDate];
  [v4 encodeObject:v6 forKey:@"startDate"];

  v7 = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self endDate];
  [v4 encodeObject:v7 forKey:@"endDate"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self listIDs];
  v6 = [v4 listIDs];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self listIDs];
    v9 = [v4 listIDs];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_8;
    }
  }

  v11 = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self startDate];
  v12 = [v4 startDate];
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    v14 = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self startDate];
    v15 = [v4 startDate];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
LABEL_8:
      v17 = 0;
      goto LABEL_14;
    }
  }

  v18 = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self endDate];
  v19 = [v4 endDate];
  if (v18 == v19)
  {
    v17 = 1;
  }

  else
  {
    v20 = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self endDate];
    v21 = [v4 endDate];
    v17 = [v20 isEqual:v21];
  }

LABEL_14:
  return v17 & 1;
}

- (unint64_t)hash
{
  v3 = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self listIDs];
  v4 = [v3 hash];
  v5 = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self startDate];
  v6 = [v5 hash] ^ v4;
  v7 = [(REMEventKitBridgingDataViewInvocation_fetchCompletedRemindersWithCompletionDate *)self endDate];
  v8 = [v7 hash];

  return v6 ^ v8;
}

@end