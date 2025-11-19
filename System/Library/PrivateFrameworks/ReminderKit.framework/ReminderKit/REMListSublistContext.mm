@interface REMListSublistContext
- (REMListSublistContext)initWithList:(id)a3;
- (id)fetchCustomSmartListsWithError:(id *)a3;
- (id)fetchListsWithError:(id *)a3;
@end

@implementation REMListSublistContext

- (REMListSublistContext)initWithList:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMListSublistContext;
  v6 = [(REMListSublistContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_list, a3);
  }

  return v7;
}

- (id)fetchListsWithError:(id *)a3
{
  v5 = [REMListsDataView alloc];
  v6 = [(REMListSublistContext *)self list];
  v7 = [v6 store];
  v8 = [(REMListsDataView *)v5 initWithStore:v7];

  v9 = [(REMListSublistContext *)self list];
  v10 = [(REMListsDataView *)v8 fetchListsInGroup:v9 error:a3];

  return v10;
}

- (id)fetchCustomSmartListsWithError:(id *)a3
{
  v5 = [REMSmartListsDataView alloc];
  v6 = [(REMListSublistContext *)self list];
  v7 = [v6 store];
  v8 = [(REMSmartListsDataView *)v5 initWithStore:v7];

  v9 = [(REMListSublistContext *)self list];
  v10 = [(REMSmartListsDataView *)v8 fetchCustomSmartListsInGroup:v9 error:a3];

  return v10;
}

@end