@interface REMListSection
- (REMListSection)initWithStore:(id)store list:(id)list storage:(id)storage;
@end

@implementation REMListSection

- (REMListSection)initWithStore:(id)store list:(id)list storage:(id)storage
{
  listCopy = list;
  storageCopy = storage;
  storeCopy = store;
  account = [listCopy account];
  capabilities = [account capabilities];
  v16.receiver = self;
  v16.super_class = REMListSection;
  v14 = [(REMBaseSection *)&v16 initWithStore:storeCopy accountCapabilities:capabilities storage:storageCopy];

  if (v14)
  {
    objc_storeStrong(&v14->_list, list);
  }

  return v14;
}

@end