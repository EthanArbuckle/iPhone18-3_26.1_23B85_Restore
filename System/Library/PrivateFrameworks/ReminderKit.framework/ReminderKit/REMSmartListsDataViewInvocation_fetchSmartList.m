@interface REMSmartListsDataViewInvocation_fetchSmartList
- (BOOL)isEqual:(id)a3;
- (REMSmartListsDataViewInvocation_fetchSmartList)initWithCoder:(id)a3;
- (REMSmartListsDataViewInvocation_fetchSmartList)initWithSmartListType:(id)a3 objectID:(id)a4 createIfNeeded:(BOOL)a5;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMSmartListsDataViewInvocation_fetchSmartList

- (REMSmartListsDataViewInvocation_fetchSmartList)initWithSmartListType:(id)a3 objectID:(id)a4 createIfNeeded:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = REMSmartListsDataViewInvocation_fetchSmartList;
  v11 = [(REMStoreInvocationValueStorage *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_smartListType, a3);
    objc_storeStrong(&v12->_objectID, a4);
    v12->_createIfNeeded = a5;
  }

  return v12;
}

- (REMSmartListsDataViewInvocation_fetchSmartList)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"smartListType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
  v7 = [v4 decodeBoolForKey:@"createIfNeeded"];

  if (v5)
  {
    self = [(REMSmartListsDataViewInvocation_fetchSmartList *)self initWithSmartListType:v5 objectID:v6 createIfNeeded:v7];
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
  v6 = a3;
  v4 = [(REMSmartListsDataViewInvocation_fetchSmartList *)self smartListType];
  [v6 encodeObject:v4 forKey:@"smartListType"];

  v5 = [(REMSmartListsDataViewInvocation_fetchSmartList *)self objectID];
  [v6 encodeObject:v5 forKey:@"objectID"];

  [v6 encodeBool:-[REMSmartListsDataViewInvocation_fetchSmartList createIfNeeded](self forKey:{"createIfNeeded"), @"createIfNeeded"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = [(REMSmartListsDataViewInvocation_fetchSmartList *)self smartListType];
  v6 = [v4 smartListType];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMSmartListsDataViewInvocation_fetchSmartList *)self smartListType];
    v9 = [v4 smartListType];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_8;
    }
  }

  v11 = [(REMSmartListsDataViewInvocation_fetchSmartList *)self objectID];
  v12 = [v4 objectID];
  v13 = v12;
  if (v11 == v12)
  {

    goto LABEL_10;
  }

  v14 = [(REMSmartListsDataViewInvocation_fetchSmartList *)self objectID];
  v15 = [v4 objectID];
  v16 = [v14 isEqual:v15];

  if (v16)
  {
LABEL_10:
    v18 = [(REMSmartListsDataViewInvocation_fetchSmartList *)self createIfNeeded];
    v17 = v18 ^ [v4 createIfNeeded] ^ 1;
    goto LABEL_11;
  }

LABEL_8:
  LOBYTE(v17) = 0;
LABEL_11:

  return v17;
}

- (unint64_t)hash
{
  v2 = [(REMSmartListsDataViewInvocation_fetchSmartList *)self smartListType];
  v3 = [v2 hash];

  return v3;
}

@end