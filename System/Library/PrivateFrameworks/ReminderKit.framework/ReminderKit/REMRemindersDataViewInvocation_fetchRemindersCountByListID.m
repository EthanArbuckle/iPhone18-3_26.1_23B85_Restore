@interface REMRemindersDataViewInvocation_fetchRemindersCountByListID
- (BOOL)isEqual:(id)a3;
- (REMRemindersDataViewInvocation_fetchRemindersCountByListID)initWithCoder:(id)a3;
- (REMRemindersDataViewInvocation_fetchRemindersCountByListID)initWithListID:(id)a3 includingCompleted:(BOOL)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMRemindersDataViewInvocation_fetchRemindersCountByListID

- (REMRemindersDataViewInvocation_fetchRemindersCountByListID)initWithListID:(id)a3 includingCompleted:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = REMRemindersDataViewInvocation_fetchRemindersCountByListID;
  v8 = [(REMStoreInvocationValueStorage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_listID, a3);
    v9->_includingCompleted = a4;
  }

  return v9;
}

- (REMRemindersDataViewInvocation_fetchRemindersCountByListID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"listID"];
  v6 = [v4 decodeBoolForKey:@"includingCompleted"];

  if (v5)
  {
    self = [(REMRemindersDataViewInvocation_fetchRemindersCountByListID *)self initWithListID:v5 includingCompleted:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(REMRemindersDataViewInvocation_fetchRemindersCountByListID *)self listID];
  [v5 encodeObject:v4 forKey:@"listID"];

  [v5 encodeBool:-[REMRemindersDataViewInvocation_fetchRemindersCountByListID includingCompleted](self forKey:{"includingCompleted"), @"includingCompleted"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = [(REMRemindersDataViewInvocation_fetchRemindersCountByListID *)self listID];
  v6 = [v4 listID];
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_6;
  }

  v8 = [(REMRemindersDataViewInvocation_fetchRemindersCountByListID *)self listID];
  v9 = [v4 listID];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
LABEL_6:
    v12 = [(REMRemindersDataViewInvocation_fetchRemindersCountByListID *)self includingCompleted];
    v11 = v12 ^ [v4 includingCompleted] ^ 1;
    goto LABEL_7;
  }

LABEL_4:
  LOBYTE(v11) = 0;
LABEL_7:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(REMRemindersDataViewInvocation_fetchRemindersCountByListID *)self listID];
  v4 = [v3 hash];
  v5 = v4 + [(REMRemindersDataViewInvocation_fetchRemindersCountByListID *)self includingCompleted];

  return v5;
}

@end