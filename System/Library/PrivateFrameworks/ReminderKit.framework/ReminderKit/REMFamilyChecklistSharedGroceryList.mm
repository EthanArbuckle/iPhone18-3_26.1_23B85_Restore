@interface REMFamilyChecklistSharedGroceryList
- (BOOL)isEqual:(id)equal;
- (REMFamilyChecklistSharedGroceryList)initWithCoder:(id)coder;
- (REMFamilyChecklistSharedGroceryList)initWithListID:(id)d participants:(id)participants;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMFamilyChecklistSharedGroceryList

- (REMFamilyChecklistSharedGroceryList)initWithListID:(id)d participants:(id)participants
{
  dCopy = d;
  participantsCopy = participants;
  v12.receiver = self;
  v12.super_class = REMFamilyChecklistSharedGroceryList;
  v9 = [(REMFamilyChecklistSharedGroceryList *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_listID, d);
    objc_storeStrong(&v10->_participants, participants);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  listID = [(REMFamilyChecklistSharedGroceryList *)self listID];
  participants = [(REMFamilyChecklistSharedGroceryList *)self participants];
  v7 = [(REMFamilyChecklistSharedGroceryList *)self URL];
  itemProvider = [(REMFamilyChecklistSharedGroceryList *)self itemProvider];
  v9 = [v3 stringWithFormat:@"<%@: %p listID: %@, participants: %@, URL: %@ itemProvider: %@>", v4, self, listID, participants, v7, itemProvider];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  listID = [(REMFamilyChecklistSharedGroceryList *)self listID];
  listID2 = [equalCopy listID];
  v7 = listID2;
  if (listID == listID2)
  {
  }

  else
  {
    listID3 = [(REMFamilyChecklistSharedGroceryList *)self listID];
    listID4 = [equalCopy listID];
    v10 = [listID3 isEqual:listID4];

    if (!v10)
    {
      goto LABEL_12;
    }
  }

  participants = [(REMFamilyChecklistSharedGroceryList *)self participants];
  participants2 = [equalCopy participants];
  v13 = participants2;
  if (participants == participants2)
  {
  }

  else
  {
    participants3 = [(REMFamilyChecklistSharedGroceryList *)self participants];
    participants4 = [equalCopy participants];
    v16 = [participants3 isEqual:participants4];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  v17 = [(REMFamilyChecklistSharedGroceryList *)self URL];
  v18 = [equalCopy URL];
  v19 = v18;
  if (v17 == v18)
  {
  }

  else
  {
    v20 = [(REMFamilyChecklistSharedGroceryList *)self URL];
    v21 = [equalCopy URL];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
LABEL_12:
      v23 = 0;
      goto LABEL_13;
    }
  }

  itemProvider = [(REMFamilyChecklistSharedGroceryList *)self itemProvider];
  itemProvider2 = [equalCopy itemProvider];
  if (itemProvider == itemProvider2)
  {
    v23 = 1;
  }

  else
  {
    itemProvider3 = [(REMFamilyChecklistSharedGroceryList *)self itemProvider];
    itemProvider4 = [equalCopy itemProvider];
    v23 = [itemProvider3 isEqual:itemProvider4];
  }

LABEL_13:
  return v23 & 1;
}

- (unint64_t)hash
{
  listID = [(REMFamilyChecklistSharedGroceryList *)self listID];
  v4 = [listID hash];
  participants = [(REMFamilyChecklistSharedGroceryList *)self participants];
  v6 = [participants hash] ^ v4;
  v7 = [(REMFamilyChecklistSharedGroceryList *)self URL];
  v8 = [v7 hash];
  itemProvider = [(REMFamilyChecklistSharedGroceryList *)self itemProvider];
  v10 = v8 ^ [itemProvider hash];

  return v6 ^ v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  listID = [(REMFamilyChecklistSharedGroceryList *)self listID];
  participants = [(REMFamilyChecklistSharedGroceryList *)self participants];
  v7 = [v4 initWithListID:listID participants:participants];

  v8 = [(REMFamilyChecklistSharedGroceryList *)self URL];
  [v7 setURL:v8];

  itemProvider = [(REMFamilyChecklistSharedGroceryList *)self itemProvider];
  [v7 setItemProvider:itemProvider];

  return v7;
}

- (REMFamilyChecklistSharedGroceryList)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"listID"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"participants"];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"itemProvider"];

  v12 = [(REMFamilyChecklistSharedGroceryList *)self initWithListID:v5 participants:v9];
  [(REMFamilyChecklistSharedGroceryList *)v12 setURL:v10];
  [(REMFamilyChecklistSharedGroceryList *)v12 setItemProvider:v11];

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  listID = [(REMFamilyChecklistSharedGroceryList *)self listID];
  [coderCopy encodeObject:listID forKey:@"listID"];

  participants = [(REMFamilyChecklistSharedGroceryList *)self participants];
  [coderCopy encodeObject:participants forKey:@"participants"];

  v7 = [(REMFamilyChecklistSharedGroceryList *)self URL];
  [coderCopy encodeObject:v7 forKey:@"URL"];

  itemProvider = [(REMFamilyChecklistSharedGroceryList *)self itemProvider];
  [coderCopy encodeObject:itemProvider forKey:@"itemProvider"];
}

@end