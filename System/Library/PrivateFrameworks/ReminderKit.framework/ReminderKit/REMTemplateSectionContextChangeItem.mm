@interface REMTemplateSectionContextChangeItem
- (BOOL)shouldUpdateSectionsOrdering;
- (NSArray)unsavedSectionIDsOrdering;
- (REMMemberships)unsavedMembershipsOfRemindersInSections;
- (REMTemplateSectionContextChangeItem)initWithTemplateChangeItem:(id)item;
- (void)setUnsavedMembershipsOfRemindersInSections:(id)sections;
- (void)setUnsavedSectionIDsOrdering:(id)ordering;
- (void)undeleteSectionWithID:(id)d;
@end

@implementation REMTemplateSectionContextChangeItem

- (REMTemplateSectionContextChangeItem)initWithTemplateChangeItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "templateChangeItem");
  }

  v9.receiver = self;
  v9.super_class = REMTemplateSectionContextChangeItem;
  v6 = [(REMTemplateSectionContextChangeItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templateChangeItem, item);
  }

  return v7;
}

- (BOOL)shouldUpdateSectionsOrdering
{
  templateChangeItem = [(REMTemplateSectionContextChangeItem *)self templateChangeItem];
  shouldUpdateSectionsOrdering = [templateChangeItem shouldUpdateSectionsOrdering];

  return shouldUpdateSectionsOrdering;
}

- (NSArray)unsavedSectionIDsOrdering
{
  templateChangeItem = [(REMTemplateSectionContextChangeItem *)self templateChangeItem];
  unsavedSectionIDsOrdering = [templateChangeItem unsavedSectionIDsOrdering];

  return unsavedSectionIDsOrdering;
}

- (void)setUnsavedSectionIDsOrdering:(id)ordering
{
  orderingCopy = ordering;
  templateChangeItem = [(REMTemplateSectionContextChangeItem *)self templateChangeItem];
  [templateChangeItem setUnsavedSectionIDsOrdering:orderingCopy];
}

- (REMMemberships)unsavedMembershipsOfRemindersInSections
{
  templateChangeItem = [(REMTemplateSectionContextChangeItem *)self templateChangeItem];
  unsavedMembershipsOfRemindersInSections = [templateChangeItem unsavedMembershipsOfRemindersInSections];

  return unsavedMembershipsOfRemindersInSections;
}

- (void)setUnsavedMembershipsOfRemindersInSections:(id)sections
{
  sectionsCopy = sections;
  templateChangeItem = [(REMTemplateSectionContextChangeItem *)self templateChangeItem];
  [templateChangeItem setUnsavedMembershipsOfRemindersInSections:sectionsCopy];
}

- (void)undeleteSectionWithID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    NSLog(&cfstr_SIsUnexpectedl.isa, "sectionID");
  }

  templateChangeItem = [(REMTemplateSectionContextChangeItem *)self templateChangeItem];
  sectionIDsToUndelete = [templateChangeItem sectionIDsToUndelete];
  v6 = [sectionIDsToUndelete setByAddingObject:dCopy];
  templateChangeItem2 = [(REMTemplateSectionContextChangeItem *)self templateChangeItem];
  [templateChangeItem2 setSectionIDsToUndelete:v6];
}

@end