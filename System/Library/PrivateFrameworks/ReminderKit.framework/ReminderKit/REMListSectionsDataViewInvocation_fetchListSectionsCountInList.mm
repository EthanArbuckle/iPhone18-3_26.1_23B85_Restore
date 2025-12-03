@interface REMListSectionsDataViewInvocation_fetchListSectionsCountInList
- (BOOL)isEqual:(id)equal;
- (REMListSectionsDataViewInvocation_fetchListSectionsCountInList)initWithCoder:(id)coder;
- (REMListSectionsDataViewInvocation_fetchListSectionsCountInList)initWithParentListObjectID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMListSectionsDataViewInvocation_fetchListSectionsCountInList

- (REMListSectionsDataViewInvocation_fetchListSectionsCountInList)initWithParentListObjectID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = REMListSectionsDataViewInvocation_fetchListSectionsCountInList;
  v6 = [(REMStoreInvocationValueStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listObjectID, d);
  }

  return v7;
}

- (REMListSectionsDataViewInvocation_fetchListSectionsCountInList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"listObjectID"];

  if (v5)
  {
    self = [(REMListSectionsDataViewInvocation_fetchListSectionsCountInList *)self initWithParentListObjectID:v5];
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
  listObjectID = [(REMListSectionsDataViewInvocation_fetchListSectionsCountInList *)self listObjectID];
  [coderCopy encodeObject:listObjectID forKey:@"listObjectID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    listObjectID = [(REMListSectionsDataViewInvocation_fetchListSectionsCountInList *)self listObjectID];
    listObjectID2 = [equalCopy listObjectID];
    if (listObjectID == listObjectID2)
    {
      v9 = 1;
    }

    else
    {
      listObjectID3 = [(REMListSectionsDataViewInvocation_fetchListSectionsCountInList *)self listObjectID];
      listObjectID4 = [equalCopy listObjectID];
      v9 = [listObjectID3 isEqual:listObjectID4];
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
  listObjectID = [(REMListSectionsDataViewInvocation_fetchListSectionsCountInList *)self listObjectID];
  v3 = [listObjectID hash];

  return v3;
}

@end