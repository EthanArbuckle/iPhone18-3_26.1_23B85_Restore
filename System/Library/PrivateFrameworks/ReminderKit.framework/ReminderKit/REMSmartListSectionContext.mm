@interface REMSmartListSectionContext
- (REMSmartListSectionContext)initWithSmartList:(id)list;
@end

@implementation REMSmartListSectionContext

- (REMSmartListSectionContext)initWithSmartList:(id)list
{
  listCopy = list;
  v9.receiver = self;
  v9.super_class = REMSmartListSectionContext;
  v6 = [(REMSmartListSectionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_smartList, list);
  }

  return v7;
}

@end