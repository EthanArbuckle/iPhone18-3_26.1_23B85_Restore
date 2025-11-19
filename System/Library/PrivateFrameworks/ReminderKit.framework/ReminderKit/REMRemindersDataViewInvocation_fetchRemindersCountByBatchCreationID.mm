@interface REMRemindersDataViewInvocation_fetchRemindersCountByBatchCreationID
- (BOOL)isEqual:(id)a3;
- (REMRemindersDataViewInvocation_fetchRemindersCountByBatchCreationID)initWithBatchCreationID:(id)a3 includingCompleted:(BOOL)a4;
- (REMRemindersDataViewInvocation_fetchRemindersCountByBatchCreationID)initWithCoder:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMRemindersDataViewInvocation_fetchRemindersCountByBatchCreationID

- (REMRemindersDataViewInvocation_fetchRemindersCountByBatchCreationID)initWithBatchCreationID:(id)a3 includingCompleted:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = REMRemindersDataViewInvocation_fetchRemindersCountByBatchCreationID;
  v8 = [(REMStoreInvocationValueStorage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_batchCreationID, a3);
    v9->_includingCompleted = a4;
  }

  return v9;
}

- (REMRemindersDataViewInvocation_fetchRemindersCountByBatchCreationID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"batchCreationID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"includingCompleted"];

  if (v5)
  {
    self = -[REMRemindersDataViewInvocation_fetchRemindersCountByBatchCreationID initWithBatchCreationID:includingCompleted:](self, "initWithBatchCreationID:includingCompleted:", v5, [v6 BOOLValue]);
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
  v4 = a3;
  v5 = [(REMRemindersDataViewInvocation_fetchRemindersCountByBatchCreationID *)self batchCreationID];
  [v4 encodeObject:v5 forKey:@"batchCreationID"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMRemindersDataViewInvocation_fetchRemindersCountByBatchCreationID includingCompleted](self, "includingCompleted")}];
  [v4 encodeObject:v6 forKey:@"includingCompleted"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  v5 = [(REMRemindersDataViewInvocation_fetchRemindersCountByBatchCreationID *)self batchCreationID];
  v6 = [v4 batchCreationID];
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_6;
  }

  v8 = [(REMRemindersDataViewInvocation_fetchRemindersCountByBatchCreationID *)self batchCreationID];
  v9 = [v4 batchCreationID];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
LABEL_6:
    v12 = [(REMRemindersDataViewInvocation_fetchRemindersCountByBatchCreationID *)self includingCompleted];
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
  v3 = [(REMRemindersDataViewInvocation_fetchRemindersCountByBatchCreationID *)self batchCreationID];
  v4 = [v3 hash];
  v5 = v4 + [(REMRemindersDataViewInvocation_fetchRemindersCountByBatchCreationID *)self includingCompleted];

  return v5;
}

@end