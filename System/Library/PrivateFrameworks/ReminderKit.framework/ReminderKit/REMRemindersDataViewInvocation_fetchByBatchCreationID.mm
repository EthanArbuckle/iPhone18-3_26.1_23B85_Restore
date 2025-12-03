@interface REMRemindersDataViewInvocation_fetchByBatchCreationID
- (BOOL)isEqual:(id)equal;
- (REMRemindersDataViewInvocation_fetchByBatchCreationID)initWithBatchCreationID:(id)d includingCompleted:(BOOL)completed;
- (REMRemindersDataViewInvocation_fetchByBatchCreationID)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMRemindersDataViewInvocation_fetchByBatchCreationID

- (REMRemindersDataViewInvocation_fetchByBatchCreationID)initWithBatchCreationID:(id)d includingCompleted:(BOOL)completed
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = REMRemindersDataViewInvocation_fetchByBatchCreationID;
  v8 = [(REMStoreInvocationValueStorage *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_batchCreationID, d);
    v9->_includingCompleted = completed;
  }

  return v9;
}

- (REMRemindersDataViewInvocation_fetchByBatchCreationID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"batchCreationID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"includingCompleted"];

  if (v5)
  {
    self = -[REMRemindersDataViewInvocation_fetchByBatchCreationID initWithBatchCreationID:includingCompleted:](self, "initWithBatchCreationID:includingCompleted:", v5, [v6 BOOLValue]);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  batchCreationID = [(REMRemindersDataViewInvocation_fetchByBatchCreationID *)self batchCreationID];
  [coderCopy encodeObject:batchCreationID forKey:@"batchCreationID"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMRemindersDataViewInvocation_fetchByBatchCreationID includingCompleted](self, "includingCompleted")}];
  [coderCopy encodeObject:v6 forKey:@"includingCompleted"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  batchCreationID = [(REMRemindersDataViewInvocation_fetchByBatchCreationID *)self batchCreationID];
  batchCreationID2 = [equalCopy batchCreationID];
  v7 = batchCreationID2;
  if (batchCreationID == batchCreationID2)
  {

    goto LABEL_6;
  }

  batchCreationID3 = [(REMRemindersDataViewInvocation_fetchByBatchCreationID *)self batchCreationID];
  batchCreationID4 = [equalCopy batchCreationID];
  v10 = [batchCreationID3 isEqual:batchCreationID4];

  if (v10)
  {
LABEL_6:
    includingCompleted = [(REMRemindersDataViewInvocation_fetchByBatchCreationID *)self includingCompleted];
    v11 = includingCompleted ^ [equalCopy includingCompleted] ^ 1;
    goto LABEL_7;
  }

LABEL_4:
  LOBYTE(v11) = 0;
LABEL_7:

  return v11;
}

- (unint64_t)hash
{
  batchCreationID = [(REMRemindersDataViewInvocation_fetchByBatchCreationID *)self batchCreationID];
  v4 = [batchCreationID hash];
  v5 = v4 + [(REMRemindersDataViewInvocation_fetchByBatchCreationID *)self includingCompleted];

  return v5;
}

@end