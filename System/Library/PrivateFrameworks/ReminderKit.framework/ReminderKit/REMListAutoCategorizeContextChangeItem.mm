@interface REMListAutoCategorizeContextChangeItem
- (BOOL)shouldAutoCategorizeItems;
- (NSArray)unsavedReminderIDsForCategorization;
- (REMListAutoCategorizeContextChangeItem)initWithListChangeItem:(id)a3;
- (void)categorizeAutoCategorizationItemsWithReminderIDs:(id)a3;
@end

@implementation REMListAutoCategorizeContextChangeItem

- (REMListAutoCategorizeContextChangeItem)initWithListChangeItem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "listChangeItem");
  }

  v9.receiver = self;
  v9.super_class = REMListAutoCategorizeContextChangeItem;
  v6 = [(REMListAutoCategorizeContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listChangeItem, a3);
  }

  return v7;
}

- (BOOL)shouldAutoCategorizeItems
{
  v2 = [(REMListAutoCategorizeContextChangeItem *)self listChangeItem];
  v3 = [v2 shouldAutoCategorizeItems];

  return v3;
}

- (NSArray)unsavedReminderIDsForCategorization
{
  v2 = [(REMListAutoCategorizeContextChangeItem *)self listChangeItem];
  v3 = [v2 unsavedReminderIDsForCategorization];

  return v3;
}

- (void)categorizeAutoCategorizationItemsWithReminderIDs:(id)a3
{
  v4 = a3;
  v5 = [(REMListAutoCategorizeContextChangeItem *)self listChangeItem];
  v6 = [v5 unsavedReminderIDsForCategorization];

  v7 = [(REMListAutoCategorizeContextChangeItem *)self listChangeItem];
  v11 = v7;
  if (v6)
  {
    v8 = [v7 unsavedReminderIDsForCategorization];
    v9 = [v8 arrayByAddingObjectsFromArray:v4];

    v10 = [(REMListAutoCategorizeContextChangeItem *)self listChangeItem];
    [v10 setUnsavedReminderIDsForCategorization:v9];

    v4 = v8;
  }

  else
  {
    [v7 setUnsavedReminderIDsForCategorization:v4];
  }
}

@end