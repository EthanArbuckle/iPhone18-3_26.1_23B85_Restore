@interface ICBulkSetContainerPropertyRequest
- (id)_bodyDataForContainerIDs:(id)ds properties:(id)properties;
@end

@implementation ICBulkSetContainerPropertyRequest

- (id)_bodyDataForContainerIDs:(id)ds properties:(id)properties
{
  dsCopy = ds;
  propertiesCopy = properties;
  +[ICDAAPPropertyInfo sharedContainerPropertyInfo];
  v12 = dsCopy;
  v14 = v13 = propertiesCopy;
  v7 = v14;
  v8 = propertiesCopy;
  v9 = dsCopy;
  v10 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v10;
}

@end