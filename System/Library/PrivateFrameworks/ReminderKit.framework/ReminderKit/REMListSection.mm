@interface REMListSection
- (REMListSection)initWithStore:(id)a3 list:(id)a4 storage:(id)a5;
@end

@implementation REMListSection

- (REMListSection)initWithStore:(id)a3 list:(id)a4 storage:(id)a5
{
  v9 = a4;
  v10 = a5;
  v11 = a3;
  v12 = [v9 account];
  v13 = [v12 capabilities];
  v16.receiver = self;
  v16.super_class = REMListSection;
  v14 = [(REMBaseSection *)&v16 initWithStore:v11 accountCapabilities:v13 storage:v10];

  if (v14)
  {
    objc_storeStrong(&v14->_list, a4);
  }

  return v14;
}

@end