@interface REMReminderSubtaskContextChangeItem
- (REMReminderSubtaskContextChangeItem)initWithReminderChangeItem:(id)item;
- (id)_listChangeItem;
- (void)addReminderChangeItem:(id)item;
- (void)insertReminderChangeItem:(id)item afterReminderChangeItem:(id)changeItem;
- (void)insertReminderChangeItem:(id)item beforeReminderChangeItem:(id)changeItem;
- (void)undeleteSubtaskWithID:(id)d usingUndo:(id)undo;
@end

@implementation REMReminderSubtaskContextChangeItem

- (REMReminderSubtaskContextChangeItem)initWithReminderChangeItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = REMReminderSubtaskContextChangeItem;
  v6 = [(REMReminderSubtaskContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reminderChangeItem, item);
  }

  return v7;
}

- (void)addReminderChangeItem:(id)item
{
  itemCopy = item;
  _listChangeItem = [(REMReminderSubtaskContextChangeItem *)self _listChangeItem];
  reminderChangeItem = [(REMReminderSubtaskContextChangeItem *)self reminderChangeItem];
  [_listChangeItem insertReminderChangeItem:itemCopy adjacentToReminderChangeItem:0 isAfter:0 withParentReminderChangeItem:reminderChangeItem];
}

- (void)insertReminderChangeItem:(id)item beforeReminderChangeItem:(id)changeItem
{
  changeItemCopy = changeItem;
  itemCopy = item;
  _listChangeItem = [(REMReminderSubtaskContextChangeItem *)self _listChangeItem];
  reminderChangeItem = [(REMReminderSubtaskContextChangeItem *)self reminderChangeItem];
  [_listChangeItem insertReminderChangeItem:itemCopy adjacentToReminderChangeItem:changeItemCopy isAfter:0 withParentReminderChangeItem:reminderChangeItem];
}

- (void)insertReminderChangeItem:(id)item afterReminderChangeItem:(id)changeItem
{
  changeItemCopy = changeItem;
  itemCopy = item;
  _listChangeItem = [(REMReminderSubtaskContextChangeItem *)self _listChangeItem];
  reminderChangeItem = [(REMReminderSubtaskContextChangeItem *)self reminderChangeItem];
  [_listChangeItem insertReminderChangeItem:itemCopy adjacentToReminderChangeItem:changeItemCopy isAfter:1 withParentReminderChangeItem:reminderChangeItem];
}

- (void)undeleteSubtaskWithID:(id)d usingUndo:(id)undo
{
  undoCopy = undo;
  dCopy = d;
  _listChangeItem = [(REMReminderSubtaskContextChangeItem *)self _listChangeItem];
  [_listChangeItem undeleteReminderWithID:dCopy usingUndo:undoCopy];

  reminderChangeItem = [(REMReminderSubtaskContextChangeItem *)self reminderChangeItem];
  subtaskIDsToUndelete = [reminderChangeItem subtaskIDsToUndelete];
  v10 = [subtaskIDsToUndelete setByAddingObject:dCopy];

  reminderChangeItem2 = [(REMReminderSubtaskContextChangeItem *)self reminderChangeItem];
  [reminderChangeItem2 setSubtaskIDsToUndelete:v10];
}

- (id)_listChangeItem
{
  reminderChangeItem = [(REMReminderSubtaskContextChangeItem *)self reminderChangeItem];
  saveRequest = [reminderChangeItem saveRequest];
  reminderChangeItem2 = [(REMReminderSubtaskContextChangeItem *)self reminderChangeItem];
  v6 = [saveRequest _updateListWithReminderChangeItem:reminderChangeItem2];

  return v6;
}

@end