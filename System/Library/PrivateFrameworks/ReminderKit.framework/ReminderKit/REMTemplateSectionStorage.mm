@interface REMTemplateSectionStorage
- (REMTemplateSectionStorage)initWithObjectID:(id)d accountID:(id)iD parentTemplateID:(id)templateID displayName:(id)name;
- (id)cdKeyToStorageKeyMap;
- (void)setParentTemplateID:(id)d;
@end

@implementation REMTemplateSectionStorage

- (void)setParentTemplateID:(id)d
{
  v3.receiver = self;
  v3.super_class = REMTemplateSectionStorage;
  [(REMBaseSectionStorage *)&v3 setParentID:d];
}

- (REMTemplateSectionStorage)initWithObjectID:(id)d accountID:(id)iD parentTemplateID:(id)templateID displayName:(id)name
{
  v7.receiver = self;
  v7.super_class = REMTemplateSectionStorage;
  return [(REMBaseSectionStorage *)&v7 initWithObjectID:d accountID:iD parentID:templateID displayName:name];
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