@interface REMManualOrdering
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)d;
- (BOOL)isEqual:(id)equal;
- (REMManualOrdering)initWithCoder:(id)coder;
- (REMManualOrdering)initWithObjectID:(id)d listType:(signed __int16)type listID:(id)iD topLevelElementIDs:(id)ds secondaryLevelElementIDsByTopLevelElementID:(id)elementID uncommitedElementsAccountID:(id)accountID modifiedDate:(id)date;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMManualOrdering

- (REMManualOrdering)initWithObjectID:(id)d listType:(signed __int16)type listID:(id)iD topLevelElementIDs:(id)ds secondaryLevelElementIDsByTopLevelElementID:(id)elementID uncommitedElementsAccountID:(id)accountID modifiedDate:(id)date
{
  dCopy = d;
  iDCopy = iD;
  dsCopy = ds;
  elementIDCopy = elementID;
  accountIDCopy = accountID;
  dateCopy = date;
  v25.receiver = self;
  v25.super_class = REMManualOrdering;
  v18 = [(REMManualOrdering *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_objectID, d);
    v19->_listType = type;
    objc_storeStrong(&v19->_listID, iD);
    objc_storeStrong(&v19->_topLevelElementIDs, ds);
    objc_storeStrong(&v19->_secondaryLevelElementIDsByTopLevelElementID, elementID);
    objc_storeStrong(&v19->_uncommitedElementsAccountID, accountID);
    objc_storeStrong(&v19->_modifiedDate, date);
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objectID = [(REMManualOrdering *)self objectID];
  listType = [(REMManualOrdering *)self listType];
  listID = [(REMManualOrdering *)self listID];
  v7 = objc_alloc(MEMORY[0x1E695DEC8]);
  topLevelElementIDs = [(REMManualOrdering *)self topLevelElementIDs];
  v9 = [v7 initWithArray:topLevelElementIDs copyItems:1];

  v10 = objc_alloc(MEMORY[0x1E695DF20]);
  secondaryLevelElementIDsByTopLevelElementID = [(REMManualOrdering *)self secondaryLevelElementIDsByTopLevelElementID];
  v12 = [v10 initWithDictionary:secondaryLevelElementIDsByTopLevelElementID copyItems:1];

  uncommitedElementsAccountID = [(REMManualOrdering *)self uncommitedElementsAccountID];
  modifiedDate = [(REMManualOrdering *)self modifiedDate];
  v15 = [[REMManualOrdering alloc] initWithObjectID:objectID listType:listType listID:listID topLevelElementIDs:v9 secondaryLevelElementIDsByTopLevelElementID:v12 uncommitedElementsAccountID:uncommitedElementsAccountID modifiedDate:modifiedDate];

  return v15;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objectID = [(REMManualOrdering *)self objectID];
  [coderCopy encodeObject:objectID forKey:@"objectID"];

  [coderCopy encodeInteger:-[REMManualOrdering listType](self forKey:{"listType"), @"listType"}];
  listID = [(REMManualOrdering *)self listID];
  [coderCopy encodeObject:listID forKey:@"listID"];

  topLevelElementIDs = [(REMManualOrdering *)self topLevelElementIDs];
  [coderCopy encodeObject:topLevelElementIDs forKey:@"topLevelElementIDs"];

  secondaryLevelElementIDsByTopLevelElementID = [(REMManualOrdering *)self secondaryLevelElementIDsByTopLevelElementID];
  [coderCopy encodeObject:secondaryLevelElementIDsByTopLevelElementID forKey:@"secondaryLevelElementIDsByTopLevelElementID"];

  uncommitedElementsAccountID = [(REMManualOrdering *)self uncommitedElementsAccountID];
  [coderCopy encodeObject:uncommitedElementsAccountID forKey:@"uncommitedElementsAccountID"];

  modifiedDate = [(REMManualOrdering *)self modifiedDate];
  [coderCopy encodeObject:modifiedDate forKey:@"modifiedDate"];
}

- (REMManualOrdering)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
  v22 = [coderCopy decodeIntegerForKey:@"listType"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"listID"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"topLevelElementIDs"];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"secondaryLevelElementIDsByTopLevelElementID"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uncommitedElementsAccountID"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"modifiedDate"];

  selfCopy = 0;
  if (v5 && v6 && v10 && v15 && v17)
  {
    v23.receiver = self;
    v23.super_class = REMManualOrdering;
    v19 = [(REMManualOrdering *)&v23 init];
    v20 = v19;
    if (v19)
    {
      objc_storeStrong(&v19->_objectID, v5);
      v20->_listType = v22;
      objc_storeStrong(&v20->_listID, v6);
      objc_storeStrong(&v20->_topLevelElementIDs, v10);
      objc_storeStrong(&v20->_secondaryLevelElementIDsByTopLevelElementID, v15);
      objc_storeStrong(&v20->_uncommitedElementsAccountID, v16);
      objc_storeStrong(&v20->_modifiedDate, v17);
    }

    self = v20;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)newObjectID
{
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [self objectIDWithUUID:uUID];

  return v4;
}

+ (id)objectIDWithUUID:(id)d
{
  dCopy = d;
  cdEntityName = [self cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:dCopy entityName:cdEntityName];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_21;
  }

  objectID = [(REMManualOrdering *)self objectID];
  objectID2 = [equalCopy objectID];
  v7 = objectID2;
  if (objectID == objectID2)
  {
  }

  else
  {
    objectID3 = [(REMManualOrdering *)self objectID];
    objectID4 = [equalCopy objectID];
    v10 = [objectID3 isEqual:objectID4];

    if (!v10)
    {
      goto LABEL_21;
    }
  }

  listType = [(REMManualOrdering *)self listType];
  if (listType != [equalCopy listType])
  {
LABEL_21:
    v36 = 0;
    goto LABEL_22;
  }

  listID = [(REMManualOrdering *)self listID];
  listID2 = [equalCopy listID];
  v14 = listID2;
  if (listID == listID2)
  {
  }

  else
  {
    listID3 = [(REMManualOrdering *)self listID];
    listID4 = [equalCopy listID];
    v17 = [listID3 isEqual:listID4];

    if (!v17)
    {
      goto LABEL_21;
    }
  }

  topLevelElementIDs = [(REMManualOrdering *)self topLevelElementIDs];
  topLevelElementIDs2 = [equalCopy topLevelElementIDs];
  v20 = topLevelElementIDs2;
  if (topLevelElementIDs == topLevelElementIDs2)
  {
  }

  else
  {
    topLevelElementIDs3 = [(REMManualOrdering *)self topLevelElementIDs];
    topLevelElementIDs4 = [equalCopy topLevelElementIDs];
    v23 = [topLevelElementIDs3 isEqual:topLevelElementIDs4];

    if (!v23)
    {
      goto LABEL_21;
    }
  }

  secondaryLevelElementIDsByTopLevelElementID = [(REMManualOrdering *)self secondaryLevelElementIDsByTopLevelElementID];
  secondaryLevelElementIDsByTopLevelElementID2 = [equalCopy secondaryLevelElementIDsByTopLevelElementID];
  v26 = secondaryLevelElementIDsByTopLevelElementID2;
  if (secondaryLevelElementIDsByTopLevelElementID == secondaryLevelElementIDsByTopLevelElementID2)
  {
  }

  else
  {
    secondaryLevelElementIDsByTopLevelElementID3 = [(REMManualOrdering *)self secondaryLevelElementIDsByTopLevelElementID];
    secondaryLevelElementIDsByTopLevelElementID4 = [equalCopy secondaryLevelElementIDsByTopLevelElementID];
    v29 = [secondaryLevelElementIDsByTopLevelElementID3 isEqual:secondaryLevelElementIDsByTopLevelElementID4];

    if (!v29)
    {
      goto LABEL_21;
    }
  }

  uncommitedElementsAccountID = [(REMManualOrdering *)self uncommitedElementsAccountID];
  uncommitedElementsAccountID2 = [equalCopy uncommitedElementsAccountID];
  v32 = uncommitedElementsAccountID2;
  if (uncommitedElementsAccountID == uncommitedElementsAccountID2)
  {
  }

  else
  {
    uncommitedElementsAccountID3 = [(REMManualOrdering *)self uncommitedElementsAccountID];
    uncommitedElementsAccountID4 = [equalCopy uncommitedElementsAccountID];
    v35 = [uncommitedElementsAccountID3 isEqual:uncommitedElementsAccountID4];

    if (!v35)
    {
      goto LABEL_21;
    }
  }

  modifiedDate = [(REMManualOrdering *)self modifiedDate];
  modifiedDate2 = [equalCopy modifiedDate];
  if (modifiedDate == modifiedDate2)
  {
    v36 = 1;
  }

  else
  {
    modifiedDate3 = [(REMManualOrdering *)self modifiedDate];
    modifiedDate4 = [equalCopy modifiedDate];
    v36 = [modifiedDate3 isEqual:modifiedDate4];
  }

LABEL_22:
  return v36 & 1;
}

@end