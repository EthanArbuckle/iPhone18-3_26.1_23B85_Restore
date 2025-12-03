@interface REMRemindersDataViewInvocation_fetchByExternalIdentifier
- (BOOL)isEqual:(id)equal;
- (REMRemindersDataViewInvocation_fetchByExternalIdentifier)initWithCoder:(id)coder;
- (REMRemindersDataViewInvocation_fetchByExternalIdentifier)initWithExternalIdentifiers:(id)identifiers listObjectID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMRemindersDataViewInvocation_fetchByExternalIdentifier

- (REMRemindersDataViewInvocation_fetchByExternalIdentifier)initWithExternalIdentifiers:(id)identifiers listObjectID:(id)d
{
  identifiersCopy = identifiers;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = REMRemindersDataViewInvocation_fetchByExternalIdentifier;
  v9 = [(REMStoreInvocationValueStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_externalIdentifiers, identifiers);
    objc_storeStrong(&v10->_listObjectID, d);
  }

  return v10;
}

- (REMRemindersDataViewInvocation_fetchByExternalIdentifier)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"externalIdentifiers"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"listObjectID"];

  if (v8)
  {
    self = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)self initWithExternalIdentifiers:v8 listObjectID:v9];
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
  externalIdentifiers = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)self externalIdentifiers];
  [coderCopy encodeObject:externalIdentifiers forKey:@"externalIdentifiers"];

  listObjectID = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)self listObjectID];
  [coderCopy encodeObject:listObjectID forKey:@"listObjectID"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_4;
  }

  externalIdentifiers = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)self externalIdentifiers];
  externalIdentifiers2 = [equalCopy externalIdentifiers];
  v7 = externalIdentifiers2;
  if (externalIdentifiers == externalIdentifiers2)
  {
  }

  else
  {
    externalIdentifiers3 = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)self externalIdentifiers];
    externalIdentifiers4 = [equalCopy externalIdentifiers];
    v10 = [externalIdentifiers3 isEqual:externalIdentifiers4];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  listObjectID = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)self listObjectID];
  listObjectID2 = [equalCopy listObjectID];
  if (listObjectID == listObjectID2)
  {
    v11 = 1;
  }

  else
  {
    listObjectID3 = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)self listObjectID];
    listObjectID4 = [equalCopy listObjectID];
    v11 = [listObjectID3 isEqual:listObjectID4];
  }

LABEL_10:
  return v11 & 1;
}

- (unint64_t)hash
{
  listObjectID = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)self listObjectID];
  externalIdentifiers = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)self externalIdentifiers];
  v5 = [externalIdentifiers hash];
  if (listObjectID)
  {
    listObjectID2 = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)self listObjectID];
    v5 ^= [listObjectID2 hash];
  }

  return v5;
}

@end