@interface REMListSectionContext
- (BOOL)hasSections;
- (REMListSectionContext)initWithList:(id)a3;
@end

@implementation REMListSectionContext

- (REMListSectionContext)initWithList:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMListSectionContext;
  v6 = [(REMListSectionContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_list, a3);
  }

  return v7;
}

- (BOOL)hasSections
{
  v3 = [(REMListSectionContext *)self list];
  v4 = [v3 store];

  v5 = [(REMListSectionContext *)self list];
  v6 = [v5 remObjectID];
  v7 = [v4 fetchListSectionsCountWithListObjectID:v6 error:0];

  LOBYTE(v5) = [v7 intValue] > 0;
  return v5;
}

@end