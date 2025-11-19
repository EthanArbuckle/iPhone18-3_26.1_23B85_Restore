@interface REMSmartListSectionContextChangeItem
- (BOOL)shouldUpdateSectionsOrdering;
- (NSArray)unsavedSectionIDsOrdering;
- (REMMemberships)unsavedMembershipsOfRemindersInSections;
- (REMSmartListSectionContextChangeItem)initWithSmartListChangeItem:(id)a3;
- (void)setUnsavedMembershipsOfRemindersInSections:(id)a3;
- (void)setUnsavedSectionIDsOrdering:(id)a3;
- (void)undeleteSectionWithID:(id)a3;
@end

@implementation REMSmartListSectionContextChangeItem

- (REMSmartListSectionContextChangeItem)initWithSmartListChangeItem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "smartListChangeItem");
  }

  v9.receiver = self;
  v9.super_class = REMSmartListSectionContextChangeItem;
  v6 = [(REMSmartListSectionContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_smartListChangeItem, a3);
  }

  return v7;
}

- (BOOL)shouldUpdateSectionsOrdering
{
  v2 = [(REMSmartListSectionContextChangeItem *)self smartListChangeItem];
  v3 = [v2 shouldUpdateSectionsOrdering];

  return v3;
}

- (NSArray)unsavedSectionIDsOrdering
{
  v2 = [(REMSmartListSectionContextChangeItem *)self smartListChangeItem];
  v3 = [v2 unsavedSectionIDsOrdering];

  return v3;
}

- (void)setUnsavedSectionIDsOrdering:(id)a3
{
  v4 = a3;
  v5 = [(REMSmartListSectionContextChangeItem *)self smartListChangeItem];
  [v5 setUnsavedSectionIDsOrdering:v4];
}

- (REMMemberships)unsavedMembershipsOfRemindersInSections
{
  v2 = [(REMSmartListSectionContextChangeItem *)self smartListChangeItem];
  v3 = [v2 unsavedMembershipsOfRemindersInSections];

  return v3;
}

- (void)setUnsavedMembershipsOfRemindersInSections:(id)a3
{
  v4 = a3;
  v5 = [(REMSmartListSectionContextChangeItem *)self smartListChangeItem];
  [v5 setUnsavedMembershipsOfRemindersInSections:v4];
}

- (void)undeleteSectionWithID:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "sectionID");
  }

  v4 = [(REMSmartListSectionContextChangeItem *)self smartListChangeItem];
  v5 = [v4 sectionIDsToUndelete];
  v6 = [v5 setByAddingObject:v8];
  v7 = [(REMSmartListSectionContextChangeItem *)self smartListChangeItem];
  [v7 setSectionIDsToUndelete:v6];
}

@end