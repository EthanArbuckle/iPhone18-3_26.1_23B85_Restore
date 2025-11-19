@interface REMFamilyChecklistSharedGroceryList
- (BOOL)isEqual:(id)a3;
- (REMFamilyChecklistSharedGroceryList)initWithCoder:(id)a3;
- (REMFamilyChecklistSharedGroceryList)initWithListID:(id)a3 participants:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation REMFamilyChecklistSharedGroceryList

- (REMFamilyChecklistSharedGroceryList)initWithListID:(id)a3 participants:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = REMFamilyChecklistSharedGroceryList;
  v9 = [(REMFamilyChecklistSharedGroceryList *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_listID, a3);
    objc_storeStrong(&v10->_participants, a4);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(REMFamilyChecklistSharedGroceryList *)self listID];
  v6 = [(REMFamilyChecklistSharedGroceryList *)self participants];
  v7 = [(REMFamilyChecklistSharedGroceryList *)self URL];
  v8 = [(REMFamilyChecklistSharedGroceryList *)self itemProvider];
  v9 = [v3 stringWithFormat:@"<%@: %p listID: %@, participants: %@, URL: %@ itemProvider: %@>", v4, self, v5, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = [(REMFamilyChecklistSharedGroceryList *)self listID];
  v6 = [v4 listID];
  v7 = v6;
  if (v5 == v6)
  {
  }

  else
  {
    v8 = [(REMFamilyChecklistSharedGroceryList *)self listID];
    v9 = [v4 listID];
    v10 = [v8 isEqual:v9];

    if (!v10)
    {
      goto LABEL_12;
    }
  }

  v11 = [(REMFamilyChecklistSharedGroceryList *)self participants];
  v12 = [v4 participants];
  v13 = v12;
  if (v11 == v12)
  {
  }

  else
  {
    v14 = [(REMFamilyChecklistSharedGroceryList *)self participants];
    v15 = [v4 participants];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  v17 = [(REMFamilyChecklistSharedGroceryList *)self URL];
  v18 = [v4 URL];
  v19 = v18;
  if (v17 == v18)
  {
  }

  else
  {
    v20 = [(REMFamilyChecklistSharedGroceryList *)self URL];
    v21 = [v4 URL];
    v22 = [v20 isEqual:v21];

    if (!v22)
    {
LABEL_12:
      v23 = 0;
      goto LABEL_13;
    }
  }

  v25 = [(REMFamilyChecklistSharedGroceryList *)self itemProvider];
  v26 = [v4 itemProvider];
  if (v25 == v26)
  {
    v23 = 1;
  }

  else
  {
    v27 = [(REMFamilyChecklistSharedGroceryList *)self itemProvider];
    v28 = [v4 itemProvider];
    v23 = [v27 isEqual:v28];
  }

LABEL_13:
  return v23 & 1;
}

- (unint64_t)hash
{
  v3 = [(REMFamilyChecklistSharedGroceryList *)self listID];
  v4 = [v3 hash];
  v5 = [(REMFamilyChecklistSharedGroceryList *)self participants];
  v6 = [v5 hash] ^ v4;
  v7 = [(REMFamilyChecklistSharedGroceryList *)self URL];
  v8 = [v7 hash];
  v9 = [(REMFamilyChecklistSharedGroceryList *)self itemProvider];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(REMFamilyChecklistSharedGroceryList *)self listID];
  v6 = [(REMFamilyChecklistSharedGroceryList *)self participants];
  v7 = [v4 initWithListID:v5 participants:v6];

  v8 = [(REMFamilyChecklistSharedGroceryList *)self URL];
  [v7 setURL:v8];

  v9 = [(REMFamilyChecklistSharedGroceryList *)self itemProvider];
  [v7 setItemProvider:v9];

  return v7;
}

- (REMFamilyChecklistSharedGroceryList)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"listID"];
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"participants"];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"itemProvider"];

  v12 = [(REMFamilyChecklistSharedGroceryList *)self initWithListID:v5 participants:v9];
  [(REMFamilyChecklistSharedGroceryList *)v12 setURL:v10];
  [(REMFamilyChecklistSharedGroceryList *)v12 setItemProvider:v11];

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(REMFamilyChecklistSharedGroceryList *)self listID];
  [v4 encodeObject:v5 forKey:@"listID"];

  v6 = [(REMFamilyChecklistSharedGroceryList *)self participants];
  [v4 encodeObject:v6 forKey:@"participants"];

  v7 = [(REMFamilyChecklistSharedGroceryList *)self URL];
  [v4 encodeObject:v7 forKey:@"URL"];

  v8 = [(REMFamilyChecklistSharedGroceryList *)self itemProvider];
  [v4 encodeObject:v8 forKey:@"itemProvider"];
}

@end