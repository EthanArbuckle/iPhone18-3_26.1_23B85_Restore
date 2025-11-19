@interface REMListSectionsDataViewInvocation_fetchListSectionsInList
- (BOOL)isEqual:(id)a3;
- (REMListSectionsDataViewInvocation_fetchListSectionsInList)initWithCoder:(id)a3;
- (REMListSectionsDataViewInvocation_fetchListSectionsInList)initWithParentListObjectID:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMListSectionsDataViewInvocation_fetchListSectionsInList

- (REMListSectionsDataViewInvocation_fetchListSectionsInList)initWithParentListObjectID:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMListSectionsDataViewInvocation_fetchListSectionsInList;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listObjectID, a3);
  }

  return v7;
}

- (REMListSectionsDataViewInvocation_fetchListSectionsInList)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"listObjectID"];

  if (v5)
  {
    self = [(REMListSectionsDataViewInvocation_fetchListSectionsInList *)self initWithParentListObjectID:v5];
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
  v5 = [(REMListSectionsDataViewInvocation_fetchListSectionsInList *)self listObjectID];
  [v4 encodeObject:v5 forKey:@"listObjectID"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(REMListSectionsDataViewInvocation_fetchListSectionsInList *)self listObjectID];
    v6 = [v4 listObjectID];
    if (v5 == v6)
    {
      v9 = 1;
    }

    else
    {
      v7 = [(REMListSectionsDataViewInvocation_fetchListSectionsInList *)self listObjectID];
      v8 = [v4 listObjectID];
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
  v2 = [(REMListSectionsDataViewInvocation_fetchListSectionsInList *)self listObjectID];
  v3 = [v2 hash];

  return v3;
}

@end