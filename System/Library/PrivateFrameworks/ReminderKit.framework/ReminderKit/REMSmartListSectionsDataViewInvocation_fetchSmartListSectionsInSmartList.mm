@interface REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList
- (BOOL)isEqual:(id)equal;
- (REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList)initWithCoder:(id)coder;
- (REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList)initWithParentSmartListObjectID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList

- (REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList)initWithParentSmartListObjectID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_smartListObjectID, d);
  }

  return v7;
}

- (REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"smartListObjectID"];

  if (v5)
  {
    self = [(REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList *)self initWithParentSmartListObjectID:v5];
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
  smartListObjectID = [(REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList *)self smartListObjectID];
  [coderCopy encodeObject:smartListObjectID forKey:@"smartListObjectID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    smartListObjectID = [(REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList *)self smartListObjectID];
    smartListObjectID2 = [equalCopy smartListObjectID];
    if (smartListObjectID == smartListObjectID2)
    {
      v9 = 1;
    }

    else
    {
      smartListObjectID3 = [(REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList *)self smartListObjectID];
      smartListObjectID4 = [equalCopy smartListObjectID];
      v9 = [smartListObjectID3 isEqual:smartListObjectID4];
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
  smartListObjectID = [(REMSmartListSectionsDataViewInvocation_fetchSmartListSectionsInSmartList *)self smartListObjectID];
  v3 = [smartListObjectID hash];

  return v3;
}

@end