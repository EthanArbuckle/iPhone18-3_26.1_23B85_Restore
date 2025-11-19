@interface REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList
- (BOOL)isEqual:(id)a3;
- (REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList)initWithCoder:(id)a3;
- (REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList)initWithParentSmartListObjectID:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList

- (REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList)initWithParentSmartListObjectID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_smartListObjectID, a3);
  }

  return v7;
}

- (REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"smartListObjectID"];

  if (v5)
  {
    self = [(REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList *)self initWithParentSmartListObjectID:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList *)self smartListObjectID];
  [v4 encodeObject:v5 forKey:@"smartListObjectID"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList *)self smartListObjectID];
    v6 = [v4 smartListObjectID];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList *)self smartListObjectID];
      v8 = [v4 smartListObjectID];
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
  v2 = [(REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList *)self smartListObjectID];
  v3 = [v2 hash];

  return v3;
}

@end