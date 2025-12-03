@interface REMListSectionContext
- (BOOL)hasSections;
- (REMListSectionContext)initWithList:(id)list;
@end

@implementation REMListSectionContext

- (REMListSectionContext)initWithList:(id)list
{
  listCopy = list;
  v9.receiver = self;
  v9.super_class = REMListSectionContext;
  v6 = [(REMListSectionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_list, list);
  }

  return v7;
}

- (BOOL)hasSections
{
  list = [(REMListSectionContext *)self list];
  store = [list store];

  list2 = [(REMListSectionContext *)self list];
  remObjectID = [list2 remObjectID];
  v7 = [store fetchListSectionsCountWithListObjectID:remObjectID error:0];

  LOBYTE(list2) = [v7 intValue] > 0;
  return list2;
}

@end