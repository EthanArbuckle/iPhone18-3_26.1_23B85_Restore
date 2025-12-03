@interface REMListSectionContextChangeItem
- (BOOL)shouldUpdateSectionsOrdering;
- (NSArray)unsavedSectionIDsOrdering;
- (REMListSectionContextChangeItem)initWithListChangeItem:(id)item;
- (REMMemberships)unsavedMembershipsOfRemindersInSections;
- (void)setUnsavedMembershipsOfRemindersInSections:(id)sections;
- (void)setUnsavedSectionIDsOrdering:(id)ordering;
- (void)undeleteSectionWithID:(id)d;
@end

@implementation REMListSectionContextChangeItem

- (REMListSectionContextChangeItem)initWithListChangeItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "listChangeItem");
  }

  v9.receiver = self;
  v9.super_class = REMListSectionContextChangeItem;
  v6 = [(REMListSectionContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listChangeItem, item);
  }

  return v7;
}

- (BOOL)shouldUpdateSectionsOrdering
{
  listChangeItem = [(REMListSectionContextChangeItem *)self listChangeItem];
  shouldUpdateSectionsOrdering = [listChangeItem shouldUpdateSectionsOrdering];

  return shouldUpdateSectionsOrdering;
}

- (NSArray)unsavedSectionIDsOrdering
{
  listChangeItem = [(REMListSectionContextChangeItem *)self listChangeItem];
  unsavedSectionIDsOrdering = [listChangeItem unsavedSectionIDsOrdering];

  return unsavedSectionIDsOrdering;
}

- (void)setUnsavedSectionIDsOrdering:(id)ordering
{
  orderingCopy = ordering;
  listChangeItem = [(REMListSectionContextChangeItem *)self listChangeItem];
  [listChangeItem setUnsavedSectionIDsOrdering:orderingCopy];
}

- (REMMemberships)unsavedMembershipsOfRemindersInSections
{
  listChangeItem = [(REMListSectionContextChangeItem *)self listChangeItem];
  unsavedMembershipsOfRemindersInSections = [listChangeItem unsavedMembershipsOfRemindersInSections];

  return unsavedMembershipsOfRemindersInSections;
}

- (void)setUnsavedMembershipsOfRemindersInSections:(id)sections
{
  sectionsCopy = sections;
  listChangeItem = [(REMListSectionContextChangeItem *)self listChangeItem];
  [listChangeItem setUnsavedMembershipsOfRemindersInSections:sectionsCopy];
}

- (void)undeleteSectionWithID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "sectionID");
  }

  listChangeItem = [(REMListSectionContextChangeItem *)self listChangeItem];
  sectionIDsToUndelete = [listChangeItem sectionIDsToUndelete];
  v6 = [sectionIDsToUndelete setByAddingObject:dCopy];
  listChangeItem2 = [(REMListSectionContextChangeItem *)self listChangeItem];
  [listChangeItem2 setSectionIDsToUndelete:v6];
}

@end