@interface REMManualOrdering
+ (id)newObjectID;
+ (id)objectIDWithUUID:(id)a3;
- (BOOL)isEqual:(id)a3;
- (REMManualOrdering)initWithCoder:(id)a3;
- (REMManualOrdering)initWithObjectID:(id)a3 listType:(signed __int16)a4 listID:(id)a5 topLevelElementIDs:(id)a6 secondaryLevelElementIDsByTopLevelElementID:(id)a7 uncommitedElementsAccountID:(id)a8 modifiedDate:(id)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMManualOrdering

- (REMManualOrdering)initWithObjectID:(id)a3 listType:(signed __int16)a4 listID:(id)a5 topLevelElementIDs:(id)a6 secondaryLevelElementIDsByTopLevelElementID:(id)a7 uncommitedElementsAccountID:(id)a8 modifiedDate:(id)a9
{
  v24 = a3;
  v23 = a5;
  v22 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v25.receiver = self;
  v25.super_class = REMManualOrdering;
  v18 = [(REMManualOrdering *)&v25 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_objectID, a3);
    v19->_listType = a4;
    objc_storeStrong(&v19->_listID, a5);
    objc_storeStrong(&v19->_topLevelElementIDs, a6);
    objc_storeStrong(&v19->_secondaryLevelElementIDsByTopLevelElementID, a7);
    objc_storeStrong(&v19->_uncommitedElementsAccountID, a8);
    objc_storeStrong(&v19->_modifiedDate, a9);
  }

  return v19;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(REMManualOrdering *)self objectID];
  v5 = [(REMManualOrdering *)self listType];
  v6 = [(REMManualOrdering *)self listID];
  v7 = objc_alloc(MEMORY[0x1E695DEC8]);
  v8 = [(REMManualOrdering *)self topLevelElementIDs];
  v9 = [v7 initWithArray:v8 copyItems:1];

  v10 = objc_alloc(MEMORY[0x1E695DF20]);
  v11 = [(REMManualOrdering *)self secondaryLevelElementIDsByTopLevelElementID];
  v12 = [v10 initWithDictionary:v11 copyItems:1];

  v13 = [(REMManualOrdering *)self uncommitedElementsAccountID];
  v14 = [(REMManualOrdering *)self modifiedDate];
  v15 = [[REMManualOrdering alloc] initWithObjectID:v4 listType:v5 listID:v6 topLevelElementIDs:v9 secondaryLevelElementIDsByTopLevelElementID:v12 uncommitedElementsAccountID:v13 modifiedDate:v14];

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMManualOrdering *)self objectID];
  [v4 encodeObject:v5 forKey:@"objectID"];

  [v4 encodeInteger:-[REMManualOrdering listType](self forKey:{"listType"), @"listType"}];
  v6 = [(REMManualOrdering *)self listID];
  [v4 encodeObject:v6 forKey:@"listID"];

  v7 = [(REMManualOrdering *)self topLevelElementIDs];
  [v4 encodeObject:v7 forKey:@"topLevelElementIDs"];

  v8 = [(REMManualOrdering *)self secondaryLevelElementIDsByTopLevelElementID];
  [v4 encodeObject:v8 forKey:@"secondaryLevelElementIDsByTopLevelElementID"];

  v9 = [(REMManualOrdering *)self uncommitedElementsAccountID];
  [v4 encodeObject:v9 forKey:@"uncommitedElementsAccountID"];

  v10 = [(REMManualOrdering *)self modifiedDate];
  [v4 encodeObject:v10 forKey:@"modifiedDate"];
}

- (REMManualOrdering)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"objectID"];
  v22 = [v4 decodeIntegerForKey:@"listType"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"listID"];
  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v10 = [v4 decodeObjectOfClasses:v9 forKey:@"topLevelElementIDs"];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
  v15 = [v4 decodeObjectOfClasses:v14 forKey:@"secondaryLevelElementIDsByTopLevelElementID"];
  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uncommitedElementsAccountID"];
  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"modifiedDate"];

  v18 = 0;
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
    v18 = self;
  }

  return v18;
}

+ (id)newObjectID
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [a1 objectIDWithUUID:v3];

  return v4;
}

+ (id)objectIDWithUUID:(id)a3
{
  v4 = a3;
  v5 = [a1 cdEntityName];
  v6 = [REMObjectID objectIDWithUUID:v4 entityName:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_21;
  }

  v5 = [(REMManualOrdering *)self objectID];
  v6 = [v4 objectID];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMManualOrdering *)self objectID];
    v9 = [v4 objectID];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_21;
    }
  }

  v11 = [(REMManualOrdering *)self listType];
  if (v11 != [v4 listType])
  {
LABEL_21:
    v36 = 0;
    goto LABEL_22;
  }

  v12 = [(REMManualOrdering *)self listID];
  v13 = [v4 listID];
  v14 = v13;
  if (v12 == v13)
  {
  }

  else
  {
    v15 = [(REMManualOrdering *)self listID];
    v16 = [v4 listID];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_21;
    }
  }

  v18 = [(REMManualOrdering *)self topLevelElementIDs];
  v19 = [v4 topLevelElementIDs];
  v20 = v19;
  if (v18 == v19)
  {
  }

  else
  {
    v21 = [(REMManualOrdering *)self topLevelElementIDs];
    v22 = [v4 topLevelElementIDs];
    v23 = [v21 isEqual:v22];

    if (!v23)
    {
      goto LABEL_21;
    }
  }

  v24 = [(REMManualOrdering *)self secondaryLevelElementIDsByTopLevelElementID];
  v25 = [v4 secondaryLevelElementIDsByTopLevelElementID];
  v26 = v25;
  if (v24 == v25)
  {
  }

  else
  {
    v27 = [(REMManualOrdering *)self secondaryLevelElementIDsByTopLevelElementID];
    v28 = [v4 secondaryLevelElementIDsByTopLevelElementID];
    v29 = [v27 isEqual:v28];

    if (!v29)
    {
      goto LABEL_21;
    }
  }

  v30 = [(REMManualOrdering *)self uncommitedElementsAccountID];
  v31 = [v4 uncommitedElementsAccountID];
  v32 = v31;
  if (v30 == v31)
  {
  }

  else
  {
    v33 = [(REMManualOrdering *)self uncommitedElementsAccountID];
    v34 = [v4 uncommitedElementsAccountID];
    v35 = [v33 isEqual:v34];

    if (!v35)
    {
      goto LABEL_21;
    }
  }

  v38 = [(REMManualOrdering *)self modifiedDate];
  v39 = [v4 modifiedDate];
  if (v38 == v39)
  {
    v36 = 1;
  }

  else
  {
    v40 = [(REMManualOrdering *)self modifiedDate];
    v41 = [v4 modifiedDate];
    v36 = [v40 isEqual:v41];
  }

LABEL_22:
  return v36 & 1;
}

@end