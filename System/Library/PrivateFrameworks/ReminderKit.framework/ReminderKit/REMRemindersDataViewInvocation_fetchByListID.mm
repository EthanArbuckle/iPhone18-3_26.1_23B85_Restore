@interface REMRemindersDataViewInvocation_fetchByListID
- (BOOL)isEqual:(id)equal;
- (REMRemindersDataViewInvocation_fetchByListID)initWithCoder:(id)coder;
- (REMRemindersDataViewInvocation_fetchByListID)initWithListID:(id)d includingSubtasks:(BOOL)subtasks includingCompleted:(BOOL)completed;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMRemindersDataViewInvocation_fetchByListID

- (REMRemindersDataViewInvocation_fetchByListID)initWithListID:(id)d includingSubtasks:(BOOL)subtasks includingCompleted:(BOOL)completed
{
  dCopy = d;
  v13.receiver = self;
  v13.super_class = REMRemindersDataViewInvocation_fetchByListID;
  v10 = [(REMStoreInvocationValueStorage *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_listID, d);
    v11->_includingSubtasks = subtasks;
    v11->_includingCompleted = completed;
  }

  return v11;
}

- (REMRemindersDataViewInvocation_fetchByListID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"listID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"includingSubtasks"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"includingCompleted"];

  if (v5)
  {
    self = -[REMRemindersDataViewInvocation_fetchByListID initWithListID:includingSubtasks:includingCompleted:](self, "initWithListID:includingSubtasks:includingCompleted:", v5, [v6 BOOLValue], objc_msgSend(v7, "BOOLValue"));
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
  listID = [(REMRemindersDataViewInvocation_fetchByListID *)self listID];
  [coderCopy encodeObject:listID forKey:@"listID"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMRemindersDataViewInvocation_fetchByListID includingSubtasks](self, "includingSubtasks")}];
  [coderCopy encodeObject:v6 forKey:@"includingSubtasks"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMRemindersDataViewInvocation_fetchByListID includingCompleted](self, "includingCompleted")}];
  [coderCopy encodeObject:v7 forKey:@"includingCompleted"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  listID = [(REMRemindersDataViewInvocation_fetchByListID *)self listID];
  listID2 = [equalCopy listID];
  v7 = listID2;
  if (listID == listID2)
  {
  }

  else
  {
    listID3 = [(REMRemindersDataViewInvocation_fetchByListID *)self listID];
    listID4 = [equalCopy listID];
    v10 = [listID3 isEqual:listID4];

    if (!v10)
    {
      goto LABEL_7;
    }
  }

  includingSubtasks = [(REMRemindersDataViewInvocation_fetchByListID *)self includingSubtasks];
  if (includingSubtasks == [equalCopy includingSubtasks])
  {
    includingCompleted = [(REMRemindersDataViewInvocation_fetchByListID *)self includingCompleted];
    v12 = includingCompleted ^ [equalCopy includingCompleted] ^ 1;
    goto LABEL_8;
  }

LABEL_7:
  LOBYTE(v12) = 0;
LABEL_8:

  return v12;
}

- (unint64_t)hash
{
  listID = [(REMRemindersDataViewInvocation_fetchByListID *)self listID];
  v4 = [listID hash];
  v5 = v4 + [(REMRemindersDataViewInvocation_fetchByListID *)self includingSubtasks];
  v6 = v5 + [(REMRemindersDataViewInvocation_fetchByListID *)self includingCompleted];

  return v6;
}

@end