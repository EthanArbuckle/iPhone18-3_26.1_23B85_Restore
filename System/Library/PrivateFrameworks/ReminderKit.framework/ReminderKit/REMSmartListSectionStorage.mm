@interface REMSmartListSectionStorage
- (REMSmartListSectionStorage)initWithObjectID:(id)d accountID:(id)iD smartListID:(id)listID displayName:(id)name;
- (id)cdKeyToStorageKeyMap;
- (void)setSmartListID:(id)d;
@end

@implementation REMSmartListSectionStorage

- (void)setSmartListID:(id)d
{
  v3.receiver = self;
  v3.super_class = REMSmartListSectionStorage;
  [(REMBaseSectionStorage *)&v3 setParentID:d];
}

- (REMSmartListSectionStorage)initWithObjectID:(id)d accountID:(id)iD smartListID:(id)listID displayName:(id)name
{
  v7.receiver = self;
  v7.super_class = REMSmartListSectionStorage;
  return [(REMBaseSectionStorage *)&v7 initWithObjectID:d accountID:iD parentID:listID displayName:name];
}

- (id)cdKeyToStorageKeyMap
{
  if (cdSmartListSectionKeyToStorageKeyMap_onceToken != -1)
  {
    [REMSmartListSectionStorage cdKeyToStorageKeyMap];
  }

  v3 = cdSmartListSectionKeyToStorageKeyMap_mapping;

  return v3;
}

@end