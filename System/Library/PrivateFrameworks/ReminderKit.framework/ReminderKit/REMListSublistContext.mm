@interface REMListSublistContext
- (REMListSublistContext)initWithList:(id)list;
- (id)fetchCustomSmartListsWithError:(id *)error;
- (id)fetchListsWithError:(id *)error;
@end

@implementation REMListSublistContext

- (REMListSublistContext)initWithList:(id)list
{
  listCopy = list;
  v9.receiver = self;
  v9.super_class = REMListSublistContext;
  v6 = [(REMListSublistContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_list, list);
  }

  return v7;
}

- (id)fetchListsWithError:(id *)error
{
  v5 = [REMListsDataView alloc];
  list = [(REMListSublistContext *)self list];
  store = [list store];
  v8 = [(REMListsDataView *)v5 initWithStore:store];

  list2 = [(REMListSublistContext *)self list];
  v10 = [(REMListsDataView *)v8 fetchListsInGroup:list2 error:error];

  return v10;
}

- (id)fetchCustomSmartListsWithError:(id *)error
{
  v5 = [REMSmartListsDataView alloc];
  list = [(REMListSublistContext *)self list];
  store = [list store];
  v8 = [(REMSmartListsDataView *)v5 initWithStore:store];

  list2 = [(REMListSublistContext *)self list];
  v10 = [(REMSmartListsDataView *)v8 fetchCustomSmartListsInGroup:list2 error:error];

  return v10;
}

@end