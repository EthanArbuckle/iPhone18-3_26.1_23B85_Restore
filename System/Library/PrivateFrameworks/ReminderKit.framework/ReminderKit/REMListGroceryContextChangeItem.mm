@interface REMListGroceryContextChangeItem
- (BOOL)shouldCategorizeGroceryItems;
- (BOOL)shouldSuggestConversionToGroceryList;
- (NSArray)unsavedReminderIDsForCategorization;
- (NSString)groceryLocaleID;
- (REMListGroceryContextChangeItem)initWithListChangeItem:(id)item;
- (void)categorizeGroceryItemsWithReminderIDs:(id)ds;
- (void)setGroceryLocaleID:(id)d;
@end

@implementation REMListGroceryContextChangeItem

- (REMListGroceryContextChangeItem)initWithListChangeItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "listChangeItem");
  }

  v9.receiver = self;
  v9.super_class = REMListGroceryContextChangeItem;
  v6 = [(REMListGroceryContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listChangeItem, item);
  }

  return v7;
}

- (BOOL)shouldCategorizeGroceryItems
{
  listChangeItem = [(REMListGroceryContextChangeItem *)self listChangeItem];
  shouldCategorizeGroceryItems = [listChangeItem shouldCategorizeGroceryItems];

  return shouldCategorizeGroceryItems;
}

- (BOOL)shouldSuggestConversionToGroceryList
{
  listChangeItem = [(REMListGroceryContextChangeItem *)self listChangeItem];
  shouldSuggestConversionToGroceryList = [listChangeItem shouldSuggestConversionToGroceryList];

  return shouldSuggestConversionToGroceryList;
}

- (NSString)groceryLocaleID
{
  listChangeItem = [(REMListGroceryContextChangeItem *)self listChangeItem];
  groceryLocaleID = [listChangeItem groceryLocaleID];

  return groceryLocaleID;
}

- (void)setGroceryLocaleID:(id)d
{
  dCopy = d;
  listChangeItem = [(REMListGroceryContextChangeItem *)self listChangeItem];
  [listChangeItem setGroceryLocaleID:dCopy];
}

- (NSArray)unsavedReminderIDsForCategorization
{
  listChangeItem = [(REMListGroceryContextChangeItem *)self listChangeItem];
  unsavedReminderIDsForCategorization = [listChangeItem unsavedReminderIDsForCategorization];

  return unsavedReminderIDsForCategorization;
}

- (void)categorizeGroceryItemsWithReminderIDs:(id)ds
{
  dsCopy = ds;
  listChangeItem = [(REMListGroceryContextChangeItem *)self listChangeItem];
  unsavedReminderIDsForCategorization = [listChangeItem unsavedReminderIDsForCategorization];

  listChangeItem2 = [(REMListGroceryContextChangeItem *)self listChangeItem];
  v11 = listChangeItem2;
  if (unsavedReminderIDsForCategorization)
  {
    unsavedReminderIDsForCategorization2 = [listChangeItem2 unsavedReminderIDsForCategorization];
    v9 = [unsavedReminderIDsForCategorization2 arrayByAddingObjectsFromArray:dsCopy];

    listChangeItem3 = [(REMListGroceryContextChangeItem *)self listChangeItem];
    [listChangeItem3 setUnsavedReminderIDsForCategorization:v9];

    dsCopy = unsavedReminderIDsForCategorization2;
  }

  else
  {
    [listChangeItem2 setUnsavedReminderIDsForCategorization:dsCopy];
  }
}

@end