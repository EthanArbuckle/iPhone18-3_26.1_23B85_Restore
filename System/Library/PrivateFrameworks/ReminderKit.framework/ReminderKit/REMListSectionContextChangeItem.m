@interface REMListSectionContextChangeItem
- (BOOL)shouldUpdateSectionsOrdering;
- (NSArray)unsavedSectionIDsOrdering;
- (REMListSectionContextChangeItem)initWithListChangeItem:(id)a3;
- (REMMemberships)unsavedMembershipsOfRemindersInSections;
- (void)setUnsavedMembershipsOfRemindersInSections:(id)a3;
- (void)setUnsavedSectionIDsOrdering:(id)a3;
- (void)undeleteSectionWithID:(id)a3;
@end

@implementation REMListSectionContextChangeItem

- (REMListSectionContextChangeItem)initWithListChangeItem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "listChangeItem");
  }

  v9.receiver = self;
  v9.super_class = REMListSectionContextChangeItem;
  v6 = [(REMListSectionContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listChangeItem, a3);
  }

  return v7;
}

- (BOOL)shouldUpdateSectionsOrdering
{
  v2 = [(REMListSectionContextChangeItem *)self listChangeItem];
  v3 = [v2 shouldUpdateSectionsOrdering];

  return v3;
}

- (NSArray)unsavedSectionIDsOrdering
{
  v2 = [(REMListSectionContextChangeItem *)self listChangeItem];
  v3 = [v2 unsavedSectionIDsOrdering];

  return v3;
}

- (void)setUnsavedSectionIDsOrdering:(id)a3
{
  v4 = a3;
  v5 = [(REMListSectionContextChangeItem *)self listChangeItem];
  [v5 setUnsavedSectionIDsOrdering:v4];
}

- (REMMemberships)unsavedMembershipsOfRemindersInSections
{
  v2 = [(REMListSectionContextChangeItem *)self listChangeItem];
  v3 = [v2 unsavedMembershipsOfRemindersInSections];

  return v3;
}

- (void)setUnsavedMembershipsOfRemindersInSections:(id)a3
{
  v4 = a3;
  v5 = [(REMListSectionContextChangeItem *)self listChangeItem];
  [v5 setUnsavedMembershipsOfRemindersInSections:v4];
}

- (void)undeleteSectionWithID:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "sectionID");
  }

  v4 = [(REMListSectionContextChangeItem *)self listChangeItem];
  v5 = [v4 sectionIDsToUndelete];
  v6 = [v5 setByAddingObject:v8];
  v7 = [(REMListSectionContextChangeItem *)self listChangeItem];
  [v7 setSectionIDsToUndelete:v6];
}

@end