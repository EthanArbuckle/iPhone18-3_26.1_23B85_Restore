@interface REMListSectionChangeItem
+ (id)keysToObserve;
- (REMListSectionChangeItem)initWithObjectID:(id)d displayName:(id)name insertIntoListChangeItem:(id)item;
@end

@implementation REMListSectionChangeItem

+ (id)keysToObserve
{
  if (keysToObserve_onceToken != -1)
  {
    +[REMListSectionChangeItem keysToObserve];
  }

  v3 = keysToObserve___sKeysToObserve;

  return v3;
}

void __41__REMListSectionChangeItem_keysToObserve__block_invoke()
{
  v2 = +[REMBaseSectionChangeItem keysToObserve];
  v0 = [v2 arrayByAddingObjectsFromArray:&unk_1F0D998B0];
  v1 = keysToObserve___sKeysToObserve;
  keysToObserve___sKeysToObserve = v0;
}

- (REMListSectionChangeItem)initWithObjectID:(id)d displayName:(id)name insertIntoListChangeItem:(id)item
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
    NSLog(&cfstr_SIsUnexpectedl.isa, "listChangeItem");
    goto LABEL_3;
  }

  if (!itemCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  accountID = [v11 accountID];
  v13 = [REMListSectionStorage alloc];
  objectID = [v11 objectID];
  v15 = [(REMListSectionStorage *)v13 initWithObjectID:dCopy accountID:accountID listID:objectID displayName:nameCopy];

  saveRequest = [v11 saveRequest];
  accountCapabilities = [v11 accountCapabilities];
  v20.receiver = self;
  v20.super_class = REMListSectionChangeItem;
  v18 = [(REMBaseSectionChangeItem *)&v20 initWithSaveRequest:saveRequest storage:v15 accountCapabilities:accountCapabilities observeInitialValues:1];

  return v18;
}

@end