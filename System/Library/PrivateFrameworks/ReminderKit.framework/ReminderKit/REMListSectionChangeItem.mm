@interface REMListSectionChangeItem
+ (id)keysToObserve;
- (REMListSectionChangeItem)initWithObjectID:(id)a3 displayName:(id)a4 insertIntoListChangeItem:(id)a5;
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

- (REMListSectionChangeItem)initWithObjectID:(id)a3 displayName:(id)a4 insertIntoListChangeItem:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
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

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = [v11 accountID];
  v13 = [REMListSectionStorage alloc];
  v14 = [v11 objectID];
  v15 = [(REMListSectionStorage *)v13 initWithObjectID:v8 accountID:v12 listID:v14 displayName:v9];

  v16 = [v11 saveRequest];
  v17 = [v11 accountCapabilities];
  v20.receiver = self;
  v20.super_class = REMListSectionChangeItem;
  v18 = [(REMBaseSectionChangeItem *)&v20 initWithSaveRequest:v16 storage:v15 accountCapabilities:v17 observeInitialValues:1];

  return v18;
}

@end