@interface REMSmartListSection
- (REMSmartListSection)initWithStore:(id)store smartList:(id)list storage:(id)storage;
@end

@implementation REMSmartListSection

- (REMSmartListSection)initWithStore:(id)store smartList:(id)list storage:(id)storage
{
  listCopy = list;
  storageCopy = storage;
  storeCopy = store;
  accountCapabilities = [listCopy accountCapabilities];
  v15.receiver = self;
  v15.super_class = REMSmartListSection;
  v13 = [(REMBaseSection *)&v15 initWithStore:storeCopy accountCapabilities:accountCapabilities storage:storageCopy];

  if (v13)
  {
    objc_storeStrong(&v13->_smartList, list);
  }

  return v13;
}

@end