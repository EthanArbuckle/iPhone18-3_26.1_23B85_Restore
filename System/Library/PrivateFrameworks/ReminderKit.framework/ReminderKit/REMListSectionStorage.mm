@interface REMListSectionStorage
- (BOOL)isEqual:(id)equal;
- (REMListSectionStorage)initWithCoder:(id)coder;
- (REMListSectionStorage)initWithObjectID:(id)d accountID:(id)iD listID:(id)listID displayName:(id)name;
- (id)cdKeyToStorageKeyMap;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setListID:(id)d;
@end

@implementation REMListSectionStorage

- (void)setListID:(id)d
{
  v3.receiver = self;
  v3.super_class = REMListSectionStorage;
  [(REMBaseSectionStorage *)&v3 setParentID:d];
}

- (REMListSectionStorage)initWithObjectID:(id)d accountID:(id)iD listID:(id)listID displayName:(id)name
{
  v7.receiver = self;
  v7.super_class = REMListSectionStorage;
  return [(REMBaseSectionStorage *)&v7 initWithObjectID:d accountID:iD parentID:listID displayName:name];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = REMListSectionStorage;
  v4 = [(REMBaseSectionStorage *)&v7 copyWithZone:zone];
  canonicalName = [(REMListSectionStorage *)self canonicalName];
  [v4 setCanonicalName:canonicalName];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v12.receiver = self;
  v12.super_class = REMListSectionStorage;
  if ([(REMBaseSectionStorage *)&v12 isEqual:equalCopy])
  {
    v5 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      canonicalName = [(REMListSectionStorage *)self canonicalName];
      canonicalName2 = [v5 canonicalName];
      if (canonicalName == canonicalName2)
      {
        v10 = 1;
      }

      else
      {
        canonicalName3 = [(REMListSectionStorage *)self canonicalName];
        canonicalName4 = [v5 canonicalName];
        v10 = [canonicalName3 isEqual:canonicalName4];
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

- (REMListSectionStorage)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = REMListSectionStorage;
  coderCopy = coder;
  v4 = [(REMBaseSectionStorage *)&v7 initWithCoder:coderCopy];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:{@"canonicalName", v7.receiver, v7.super_class}];

  [(REMListSectionStorage *)v4 setCanonicalName:v5];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = REMListSectionStorage;
  coderCopy = coder;
  [(REMBaseSectionStorage *)&v6 encodeWithCoder:coderCopy];
  v5 = [(REMListSectionStorage *)self canonicalName:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"canonicalName"];
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