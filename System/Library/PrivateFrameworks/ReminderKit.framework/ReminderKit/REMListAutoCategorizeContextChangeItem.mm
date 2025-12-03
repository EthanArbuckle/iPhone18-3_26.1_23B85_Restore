@interface REMListAutoCategorizeContextChangeItem
- (BOOL)shouldAutoCategorizeItems;
- (NSArray)unsavedReminderIDsForCategorization;
- (REMListAutoCategorizeContextChangeItem)initWithListChangeItem:(id)item;
- (void)categorizeAutoCategorizationItemsWithReminderIDs:(id)ds;
@end

@implementation REMListAutoCategorizeContextChangeItem

- (REMListAutoCategorizeContextChangeItem)initWithListChangeItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "listChangeItem");
  }

  v9.receiver = self;
  v9.super_class = REMListAutoCategorizeContextChangeItem;
  v6 = [(REMListAutoCategorizeContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listChangeItem, item);
  }

  return v7;
}

- (BOOL)shouldAutoCategorizeItems
{
  listChangeItem = [(REMListAutoCategorizeContextChangeItem *)self listChangeItem];
  shouldAutoCategorizeItems = [listChangeItem shouldAutoCategorizeItems];

  return shouldAutoCategorizeItems;
}

- (NSArray)unsavedReminderIDsForCategorization
{
  listChangeItem = [(REMListAutoCategorizeContextChangeItem *)self listChangeItem];
  unsavedReminderIDsForCategorization = [listChangeItem unsavedReminderIDsForCategorization];

  return unsavedReminderIDsForCategorization;
}

- (void)categorizeAutoCategorizationItemsWithReminderIDs:(id)ds
{
  dsCopy = ds;
  listChangeItem = [(REMListAutoCategorizeContextChangeItem *)self listChangeItem];
  unsavedReminderIDsForCategorization = [listChangeItem unsavedReminderIDsForCategorization];

  listChangeItem2 = [(REMListAutoCategorizeContextChangeItem *)self listChangeItem];
  v11 = listChangeItem2;
  if (unsavedReminderIDsForCategorization)
  {
    unsavedReminderIDsForCategorization2 = [listChangeItem2 unsavedReminderIDsForCategorization];
    v9 = [unsavedReminderIDsForCategorization2 arrayByAddingObjectsFromArray:dsCopy];

    listChangeItem3 = [(REMListAutoCategorizeContextChangeItem *)self listChangeItem];
    [listChangeItem3 setUnsavedReminderIDsForCategorization:v9];

    dsCopy = unsavedReminderIDsForCategorization2;
  }

  else
  {
    [listChangeItem2 setUnsavedReminderIDsForCategorization:dsCopy];
  }
}

@end