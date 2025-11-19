@interface REMListAutoCategorizeContext
- (BOOL)shouldAutoCategorizeItems;
- (REMListAutoCategorizeContext)initWithList:(id)a3;
@end

@implementation REMListAutoCategorizeContext

- (REMListAutoCategorizeContext)initWithList:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = REMListAutoCategorizeContext;
  v6 = [(REMListAutoCategorizeContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_list, a3);
  }

  return v7;
}

- (BOOL)shouldAutoCategorizeItems
{
  v2 = [(REMListAutoCategorizeContext *)self list];
  v3 = [v2 shouldAutoCategorizeItems];

  return v3;
}

@end