@interface REMTemplateSectionStorage
- (REMTemplateSectionStorage)initWithObjectID:(id)a3 accountID:(id)a4 parentTemplateID:(id)a5 displayName:(id)a6;
- (id)cdKeyToStorageKeyMap;
- (void)setParentTemplateID:(id)a3;
@end

@implementation REMTemplateSectionStorage

- (void)setParentTemplateID:(id)a3
{
  v3.receiver = self;
  v3.super_class = REMTemplateSectionStorage;
  [(REMBaseSectionStorage *)&v3 setParentID:a3];
}

- (REMTemplateSectionStorage)initWithObjectID:(id)a3 accountID:(id)a4 parentTemplateID:(id)a5 displayName:(id)a6
{
  v7.receiver = self;
  v7.super_class = REMTemplateSectionStorage;
  return [(REMBaseSectionStorage *)&v7 initWithObjectID:a3 accountID:a4 parentID:a5 displayName:a6];
}

- (id)cdKeyToStorageKeyMap
{
  if (cdTemplateSectionKeyToStorageKeyMap_onceToken != -1)
  {
    [REMTemplateSectionStorage cdKeyToStorageKeyMap];
  }

  v3 = cdTemplateSectionKeyToStorageKeyMap_mapping;

  return v3;
}

@end