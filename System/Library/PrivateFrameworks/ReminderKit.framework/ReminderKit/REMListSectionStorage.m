@interface REMListSectionStorage
- (BOOL)isEqual:(id)a3;
- (REMListSectionStorage)initWithCoder:(id)a3;
- (REMListSectionStorage)initWithObjectID:(id)a3 accountID:(id)a4 listID:(id)a5 displayName:(id)a6;
- (id)cdKeyToStorageKeyMap;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setListID:(id)a3;
@end

@implementation REMListSectionStorage

- (void)setListID:(id)a3
{
  v3.receiver = self;
  v3.super_class = REMListSectionStorage;
  [(REMBaseSectionStorage *)&v3 setParentID:a3];
}

- (REMListSectionStorage)initWithObjectID:(id)a3 accountID:(id)a4 listID:(id)a5 displayName:(id)a6
{
  v7.receiver = self;
  v7.super_class = REMListSectionStorage;
  return [(REMBaseSectionStorage *)&v7 initWithObjectID:a3 accountID:a4 parentID:a5 displayName:a6];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = REMListSectionStorage;
  v4 = [(REMBaseSectionStorage *)&v7 copyWithZone:a3];
  v5 = [(REMListSectionStorage *)self canonicalName];
  [v4 setCanonicalName:v5];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = REMListSectionStorage;
  if ([(REMBaseSectionStorage *)&v12 isEqual:v4])
  {
    v5 = v4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(REMListSectionStorage *)self canonicalName];
      v7 = [v5 canonicalName];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(REMListSectionStorage *)self canonicalName];
        v9 = [v5 canonicalName];
        v10 = [v8 isEqual:v9];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (REMListSectionStorage)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = REMListSectionStorage;
  v3 = a3;
  v4 = [(REMBaseSectionStorage *)&v7 initWithCoder:v3];
  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:{@"canonicalName", v7.receiver, v7.super_class}];

  [(REMListSectionStorage *)v4 setCanonicalName:v5];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = REMListSectionStorage;
  v4 = a3;
  [(REMBaseSectionStorage *)&v6 encodeWithCoder:v4];
  v5 = [(REMListSectionStorage *)self canonicalName:v6.receiver];
  [v4 encodeObject:v5 forKey:@"canonicalName"];
}

- (id)cdKeyToStorageKeyMap
{
  if (cdListSectionKeyToStorageKeyMap_onceToken != -1)
  {
    [REMListSectionStorage cdKeyToStorageKeyMap];
  }

  v3 = cdListSectionKeyToStorageKeyMap_mapping;

  return v3;
}

@end