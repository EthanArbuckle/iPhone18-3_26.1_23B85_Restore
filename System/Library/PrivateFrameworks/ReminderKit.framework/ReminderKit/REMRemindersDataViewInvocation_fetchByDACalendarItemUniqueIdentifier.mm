@interface REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier
- (BOOL)isEqual:(id)equal;
- (REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier)initWithCoder:(id)coder;
- (REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier)initWithDACalendarItemUniqueIdentifiers:(id)identifiers listObjectID:(id)d;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier

- (REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier)initWithDACalendarItemUniqueIdentifiers:(id)identifiers listObjectID:(id)d
{
  identifiersCopy = identifiers;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier;
  v9 = [(REMStoreInvocationValueStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_daCalendarItemUniqueIdentifiers, identifiers);
    objc_storeStrong(&v10->_listObjectID, d);
  }

  return v10;
}

- (REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier)initWithCoder:(id)coder
{
  v4 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"daCalendarItemUniqueIdentifiers"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"listObjectID"];

  if (v8)
  {
    self = [(REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier *)self initWithDACalendarItemUniqueIdentifiers:v8 listObjectID:v9];
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
  daCalendarItemUniqueIdentifiers = [(REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier *)self daCalendarItemUniqueIdentifiers];
  [coderCopy encodeObject:daCalendarItemUniqueIdentifiers forKey:@"daCalendarItemUniqueIdentifiers"];

  listObjectID = [(REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier *)self listObjectID];
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

  daCalendarItemUniqueIdentifiers = [(REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier *)self daCalendarItemUniqueIdentifiers];
  daCalendarItemUniqueIdentifiers2 = [equalCopy daCalendarItemUniqueIdentifiers];
  v7 = daCalendarItemUniqueIdentifiers2;
  if (daCalendarItemUniqueIdentifiers == daCalendarItemUniqueIdentifiers2)
  {
  }

  else
  {
    daCalendarItemUniqueIdentifiers3 = [(REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier *)self daCalendarItemUniqueIdentifiers];
    daCalendarItemUniqueIdentifiers4 = [equalCopy daCalendarItemUniqueIdentifiers];
    v10 = [daCalendarItemUniqueIdentifiers3 isEqual:daCalendarItemUniqueIdentifiers4];

    if (!v10)
    {
LABEL_4:
      v11 = 0;
      goto LABEL_10;
    }
  }

  listObjectID = [(REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier *)self listObjectID];
  listObjectID2 = [equalCopy listObjectID];
  if (listObjectID == listObjectID2)
  {
    v11 = 1;
  }

  else
  {
    listObjectID3 = [(REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier *)self listObjectID];
    listObjectID4 = [equalCopy listObjectID];
    v11 = [listObjectID3 isEqual:listObjectID4];
  }

LABEL_10:
  return v11 & 1;
}

- (unint64_t)hash
{
  daCalendarItemUniqueIdentifiers = [(REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier *)self daCalendarItemUniqueIdentifiers];
  v3 = [daCalendarItemUniqueIdentifiers hash];

  return v3;
}

@end