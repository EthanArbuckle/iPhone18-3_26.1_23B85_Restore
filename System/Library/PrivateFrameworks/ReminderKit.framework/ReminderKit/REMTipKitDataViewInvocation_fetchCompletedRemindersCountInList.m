@interface REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList
- (BOOL)isEqual:(id)a3;
- (REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList)initWithCoder:(id)a3;
- (REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList)initWithListID:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList

- (REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList)initWithListID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listID, a3);
  }

  return v7;
}

- (REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"listID"];

  v6 = [(REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList *)self initWithListID:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList *)self listID];
  [v4 encodeObject:v5 forKey:@"listID"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList *)self listID];
    v6 = [v4 listID];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList *)self listID];
      v8 = [v4 listID];
      v9 = [v7 isEqual:v8];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (unint64_t)hash
{
  v2 = [(REMTipKitDataViewInvocation_fetchCompletedRemindersCountInList *)self listID];
  v3 = [v2 hash];

  return v3;
}

@end