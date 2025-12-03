@interface REMTemplateSectionChangeItem
- (REMTemplateSectionChangeItem)initWithObjectID:(id)d displayName:(id)name insertIntoTemplateChangeItem:(id)item;
@end

@implementation REMTemplateSectionChangeItem

- (REMTemplateSectionChangeItem)initWithObjectID:(id)d displayName:(id)name insertIntoTemplateChangeItem:(id)item
{
  dCopy = d;
  nameCopy = name;
  itemCopy = item;
  v11 = itemCopy;
  if (!nameCopy)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "displayName");
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    NSLog(&cfstr_SIsUnexpectedl.isa, "templateChangeItem");
    goto LABEL_3;
  }

  if (!itemCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  accountID = [v11 accountID];
  v13 = [REMTemplateSectionStorage alloc];
  objectID = [v11 objectID];
  v15 = [(REMTemplateSectionStorage *)v13 initWithObjectID:dCopy accountID:accountID parentTemplateID:objectID displayName:nameCopy];

  saveRequest = [v11 saveRequest];
  accountCapabilities = [v11 accountCapabilities];
  v20.receiver = self;
  v20.super_class = REMTemplateSectionChangeItem;
  v18 = [(REMBaseSectionChangeItem *)&v20 initWithSaveRequest:saveRequest storage:v15 accountCapabilities:accountCapabilities observeInitialValues:1];

  return v18;
}

@end