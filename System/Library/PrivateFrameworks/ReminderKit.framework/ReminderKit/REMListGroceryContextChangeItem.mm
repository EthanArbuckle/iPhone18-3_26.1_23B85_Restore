@interface REMListGroceryContextChangeItem
- (BOOL)shouldCategorizeGroceryItems;
- (BOOL)shouldSuggestConversionToGroceryList;
- (NSArray)unsavedReminderIDsForCategorization;
- (NSString)groceryLocaleID;
- (REMListGroceryContextChangeItem)initWithListChangeItem:(id)a3;
- (void)categorizeGroceryItemsWithReminderIDs:(id)a3;
- (void)setGroceryLocaleID:(id)a3;
@end

@implementation REMListGroceryContextChangeItem

- (REMListGroceryContextChangeItem)initWithListChangeItem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "listChangeItem");
  }

  v9.receiver = self;
  v9.super_class = REMListGroceryContextChangeItem;
  v6 = [(REMListGroceryContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listChangeItem, a3);
  }

  return v7;
}

- (BOOL)shouldCategorizeGroceryItems
{
  v2 = [(REMListGroceryContextChangeItem *)self listChangeItem];
  v3 = [v2 shouldCategorizeGroceryItems];

  return v3;
}

- (BOOL)shouldSuggestConversionToGroceryList
{
  v2 = [(REMListGroceryContextChangeItem *)self listChangeItem];
  v3 = [v2 shouldSuggestConversionToGroceryList];

  return v3;
}

- (NSString)groceryLocaleID
{
  v2 = [(REMListGroceryContextChangeItem *)self listChangeItem];
  v3 = [v2 groceryLocaleID];

  return v3;
}

- (void)setGroceryLocaleID:(id)a3
{
  v4 = a3;
  v5 = [(REMListGroceryContextChangeItem *)self listChangeItem];
  [v5 setGroceryLocaleID:v4];
}

- (NSArray)unsavedReminderIDsForCategorization
{
  v2 = [(REMListGroceryContextChangeItem *)self listChangeItem];
  v3 = [v2 unsavedReminderIDsForCategorization];

  return v3;
}

- (void)categorizeGroceryItemsWithReminderIDs:(id)a3
{
  v4 = a3;
  v5 = [(REMListGroceryContextChangeItem *)self listChangeItem];
  v6 = [v5 unsavedReminderIDsForCategorization];

  v7 = [(REMListGroceryContextChangeItem *)self listChangeItem];
  v11 = v7;
  if (v6)
  {
    v8 = [v7 unsavedReminderIDsForCategorization];
    v9 = [v8 arrayByAddingObjectsFromArray:v4];

    v10 = [(REMListGroceryContextChangeItem *)self listChangeItem];
    [v10 setUnsavedReminderIDsForCategorization:v9];

    v4 = v8;
  }

  else
  {
    [v7 setUnsavedReminderIDsForCategorization:v4];
  }
}

@end