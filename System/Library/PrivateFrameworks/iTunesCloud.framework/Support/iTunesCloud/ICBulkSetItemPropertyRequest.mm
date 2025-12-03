@interface ICBulkSetItemPropertyRequest
- (id)_bodyDataForItemIDs:(id)ds properties:(id)properties useLongIDs:(BOOL)iDs;
- (id)_bodyDataForItemKind:(unsigned __int8)kind cloudLibraryIDs:(id)ds properties:(id)properties;
@end

@implementation ICBulkSetItemPropertyRequest

- (id)_bodyDataForItemKind:(unsigned __int8)kind cloudLibraryIDs:(id)ds properties:(id)properties
{
  dsCopy = ds;
  propertiesCopy = properties;
  +[ICDAAPPropertyInfo sharedItemPropertyInfo];
  v13 = dsCopy;
  v15 = v14 = propertiesCopy;
  v8 = v15;
  v9 = propertiesCopy;
  v10 = dsCopy;
  v11 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v11;
}

- (id)_bodyDataForItemIDs:(id)ds properties:(id)properties useLongIDs:(BOOL)iDs
{
  dsCopy = ds;
  propertiesCopy = properties;
  +[ICDAAPPropertyInfo sharedItemPropertyInfo];
  v13 = dsCopy;
  v15 = v14 = propertiesCopy;
  v8 = v15;
  v9 = propertiesCopy;
  v10 = dsCopy;
  v11 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v11;
}

@end