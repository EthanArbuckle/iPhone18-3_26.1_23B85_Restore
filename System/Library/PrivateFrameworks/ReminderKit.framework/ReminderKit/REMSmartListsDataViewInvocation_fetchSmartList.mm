@interface REMSmartListsDataViewInvocation_fetchSmartList
- (BOOL)isEqual:(id)equal;
- (REMSmartListsDataViewInvocation_fetchSmartList)initWithCoder:(id)coder;
- (REMSmartListsDataViewInvocation_fetchSmartList)initWithSmartListType:(id)type objectID:(id)d createIfNeeded:(BOOL)needed;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMSmartListsDataViewInvocation_fetchSmartList

- (REMSmartListsDataViewInvocation_fetchSmartList)initWithSmartListType:(id)type objectID:(id)d createIfNeeded:(BOOL)needed
{
  typeCopy = type;
  dCopy = d;
  v14.receiver = self;
  v14.super_class = REMSmartListsDataViewInvocation_fetchSmartList;
  v11 = [(REMStoreInvocationValueStorage *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_smartListType, type);
    objc_storeStrong(&v12->_objectID, d);
    v12->_createIfNeeded = needed;
  }

  return v12;
}

- (REMSmartListsDataViewInvocation_fetchSmartList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"smartListType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
  v7 = [coderCopy decodeBoolForKey:@"createIfNeeded"];

  if (v5)
  {
    self = [(REMSmartListsDataViewInvocation_fetchSmartList *)self initWithSmartListType:v5 objectID:v6 createIfNeeded:v7];
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
  smartListType = [(REMSmartListsDataViewInvocation_fetchSmartList *)self smartListType];
  [coderCopy encodeObject:smartListType forKey:@"smartListType"];

  objectID = [(REMSmartListsDataViewInvocation_fetchSmartList *)self objectID];
  [coderCopy encodeObject:objectID forKey:@"objectID"];

  [coderCopy encodeBool:-[REMSmartListsDataViewInvocation_fetchSmartList createIfNeeded](self forKey:{"createIfNeeded"), @"createIfNeeded"}];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  smartListType = [(REMSmartListsDataViewInvocation_fetchSmartList *)self smartListType];
  smartListType2 = [equalCopy smartListType];
  v7 = smartListType2;
  if (smartListType == smartListType2)
  {
  }

  else
  {
    smartListType3 = [(REMSmartListsDataViewInvocation_fetchSmartList *)self smartListType];
    smartListType4 = [equalCopy smartListType];
    v10 = [smartListType3 isEqual:smartListType4];

    if (!v10)
    {
      goto LABEL_8;
    }
  }

  objectID = [(REMSmartListsDataViewInvocation_fetchSmartList *)self objectID];
  objectID2 = [equalCopy objectID];
  v13 = objectID2;
  if (objectID == objectID2)
  {

    goto LABEL_10;
  }

  objectID3 = [(REMSmartListsDataViewInvocation_fetchSmartList *)self objectID];
  objectID4 = [equalCopy objectID];
  v16 = [objectID3 isEqual:objectID4];

  if (v16)
  {
LABEL_10:
    createIfNeeded = [(REMSmartListsDataViewInvocation_fetchSmartList *)self createIfNeeded];
    v17 = createIfNeeded ^ [equalCopy createIfNeeded] ^ 1;
    goto LABEL_11;
  }

LABEL_8:
  LOBYTE(v17) = 0;
LABEL_11:

  return v17;
}

- (unint64_t)hash
{
  smartListType = [(REMSmartListsDataViewInvocation_fetchSmartList *)self smartListType];
  v3 = [smartListType hash];

  return v3;
}

@end