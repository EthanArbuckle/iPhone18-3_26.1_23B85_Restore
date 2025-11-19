@interface REMSmartListSectionStorage
- (REMSmartListSectionStorage)initWithObjectID:(id)a3 accountID:(id)a4 smartListID:(id)a5 displayName:(id)a6;
- (id)cdKeyToStorageKeyMap;
- (void)setSmartListID:(id)a3;
@end

@implementation REMSmartListSectionStorage

- (void)setSmartListID:(id)a3
{
  v3.receiver = self;
  v3.super_class = REMSmartListSectionStorage;
  [(REMBaseSectionStorage *)&v3 setParentID:a3];
}

- (REMSmartListSectionStorage)initWithObjectID:(id)a3 accountID:(id)a4 smartListID:(id)a5 displayName:(id)a6
{
  v7.receiver = self;
  v7.super_class = REMSmartListSectionStorage;
  return [(REMBaseSectionStorage *)&v7 initWithObjectID:a3 accountID:a4 parentID:a5 displayName:a6];
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