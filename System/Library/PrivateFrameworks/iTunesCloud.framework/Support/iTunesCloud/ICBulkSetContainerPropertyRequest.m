@interface ICBulkSetContainerPropertyRequest
- (id)_bodyDataForContainerIDs:(id)a3 properties:(id)a4;
@end

@implementation ICBulkSetContainerPropertyRequest

- (id)_bodyDataForContainerIDs:(id)a3 properties:(id)a4
{
  v5 = a3;
  v6 = a4;
  +[ICDAAPPropertyInfo sharedContainerPropertyInfo];
  v12 = v5;
  v14 = v13 = v6;
  v7 = v14;
  v8 = v6;
  v9 = v5;
  v10 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v10;
}

@end