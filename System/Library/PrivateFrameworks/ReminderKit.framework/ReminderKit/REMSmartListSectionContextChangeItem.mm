@interface REMSmartListSectionContextChangeItem
- (BOOL)shouldUpdateSectionsOrdering;
- (NSArray)unsavedSectionIDsOrdering;
- (REMMemberships)unsavedMembershipsOfRemindersInSections;
- (REMSmartListSectionContextChangeItem)initWithSmartListChangeItem:(id)item;
- (void)setUnsavedMembershipsOfRemindersInSections:(id)sections;
- (void)setUnsavedSectionIDsOrdering:(id)ordering;
- (void)undeleteSectionWithID:(id)d;
@end

@implementation REMSmartListSectionContextChangeItem

- (REMSmartListSectionContextChangeItem)initWithSmartListChangeItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "smartListChangeItem");
  }

  v9.receiver = self;
  v9.super_class = REMSmartListSectionContextChangeItem;
  v6 = [(REMSmartListSectionContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_smartListChangeItem, item);
  }

  return v7;
}

- (BOOL)shouldUpdateSectionsOrdering
{
  smartListChangeItem = [(REMSmartListSectionContextChangeItem *)self smartListChangeItem];
  shouldUpdateSectionsOrdering = [smartListChangeItem shouldUpdateSectionsOrdering];

  return shouldUpdateSectionsOrdering;
}

- (NSArray)unsavedSectionIDsOrdering
{
  smartListChangeItem = [(REMSmartListSectionContextChangeItem *)self smartListChangeItem];
  unsavedSectionIDsOrdering = [smartListChangeItem unsavedSectionIDsOrdering];

  return unsavedSectionIDsOrdering;
}

- (void)setUnsavedSectionIDsOrdering:(id)ordering
{
  orderingCopy = ordering;
  smartListChangeItem = [(REMSmartListSectionContextChangeItem *)self smartListChangeItem];
  [smartListChangeItem setUnsavedSectionIDsOrdering:orderingCopy];
}

- (REMMemberships)unsavedMembershipsOfRemindersInSections
{
  smartListChangeItem = [(REMSmartListSectionContextChangeItem *)self smartListChangeItem];
  unsavedMembershipsOfRemindersInSections = [smartListChangeItem unsavedMembershipsOfRemindersInSections];

  return unsavedMembershipsOfRemindersInSections;
}

- (void)setUnsavedMembershipsOfRemindersInSections:(id)sections
{
  sectionsCopy = sections;
  smartListChangeItem = [(REMSmartListSectionContextChangeItem *)self smartListChangeItem];
  [smartListChangeItem setUnsavedMembershipsOfRemindersInSections:sectionsCopy];
}

- (void)undeleteSectionWithID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "sectionID");
  }

  smartListChangeItem = [(REMSmartListSectionContextChangeItem *)self smartListChangeItem];
  sectionIDsToUndelete = [smartListChangeItem sectionIDsToUndelete];
  v6 = [sectionIDsToUndelete setByAddingObject:dCopy];
  smartListChangeItem2 = [(REMSmartListSectionContextChangeItem *)self smartListChangeItem];
  [smartListChangeItem2 setSectionIDsToUndelete:v6];
}

@end