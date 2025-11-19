@interface REMRemindersDataViewInvocation_fetchByListID
- (BOOL)isEqual:(id)a3;
- (REMRemindersDataViewInvocation_fetchByListID)initWithCoder:(id)a3;
- (REMRemindersDataViewInvocation_fetchByListID)initWithListID:(id)a3 includingSubtasks:(BOOL)a4 includingCompleted:(BOOL)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMRemindersDataViewInvocation_fetchByListID

- (REMRemindersDataViewInvocation_fetchByListID)initWithListID:(id)a3 includingSubtasks:(BOOL)a4 includingCompleted:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = REMRemindersDataViewInvocation_fetchByListID;
  v10 = [(REMStoreInvocationValueStorage *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_listID, a3);
    v11->_includingSubtasks = a4;
    v11->_includingCompleted = a5;
  }

  return v11;
}

- (REMRemindersDataViewInvocation_fetchByListID)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"listID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"includingSubtasks"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"includingCompleted"];

  if (v5)
  {
    self = -[REMRemindersDataViewInvocation_fetchByListID initWithListID:includingSubtasks:includingCompleted:](self, "initWithListID:includingSubtasks:includingCompleted:", v5, [v6 BOOLValue], objc_msgSend(v7, "BOOLValue"));
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMRemindersDataViewInvocation_fetchByListID *)self listID];
  [v4 encodeObject:v5 forKey:@"listID"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMRemindersDataViewInvocation_fetchByListID includingSubtasks](self, "includingSubtasks")}];
  [v4 encodeObject:v6 forKey:@"includingSubtasks"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[REMRemindersDataViewInvocation_fetchByListID includingCompleted](self, "includingCompleted")}];
  [v4 encodeObject:v7 forKey:@"includingCompleted"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_7;
  }

  v5 = [(REMRemindersDataViewInvocation_fetchByListID *)self listID];
  v6 = [v4 listID];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMRemindersDataViewInvocation_fetchByListID *)self listID];
    v9 = [v4 listID];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v11 = [(REMRemindersDataViewInvocation_fetchByListID *)self includingSubtasks];
  if (v11 == [v4 includingSubtasks])
  {
    v14 = [(REMRemindersDataViewInvocation_fetchByListID *)self includingCompleted];
    v12 = v14 ^ [v4 includingCompleted] ^ 1;
    goto LABEL_8;
  }

LABEL_7:
  LOBYTE(v12) = 0;
LABEL_8:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(REMRemindersDataViewInvocation_fetchByListID *)self listID];
  v4 = [v3 hash];
  v5 = v4 + [(REMRemindersDataViewInvocation_fetchByListID *)self includingSubtasks];
  v6 = v5 + [(REMRemindersDataViewInvocation_fetchByListID *)self includingCompleted];

  return v6;
}

@end