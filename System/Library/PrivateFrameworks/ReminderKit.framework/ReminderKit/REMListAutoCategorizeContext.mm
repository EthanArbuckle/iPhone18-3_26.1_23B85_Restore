@interface REMListAutoCategorizeContext
- (BOOL)shouldAutoCategorizeItems;
- (REMListAutoCategorizeContext)initWithList:(id)list;
@end

@implementation REMListAutoCategorizeContext

- (REMListAutoCategorizeContext)initWithList:(id)list
{
  listCopy = list;
  v9.receiver = self;
  v9.super_class = REMListAutoCategorizeContext;
  v6 = [(REMListAutoCategorizeContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_list, list);
  }

  return v7;
}

- (BOOL)shouldAutoCategorizeItems
{
  list = [(REMListAutoCategorizeContext *)self list];
  shouldAutoCategorizeItems = [list shouldAutoCategorizeItems];

  return shouldAutoCategorizeItems;
}

@end