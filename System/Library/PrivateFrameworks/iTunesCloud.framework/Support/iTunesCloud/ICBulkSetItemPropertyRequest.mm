@interface ICBulkSetItemPropertyRequest
- (id)_bodyDataForItemIDs:(id)a3 properties:(id)a4 useLongIDs:(BOOL)a5;
- (id)_bodyDataForItemKind:(unsigned __int8)a3 cloudLibraryIDs:(id)a4 properties:(id)a5;
@end

@implementation ICBulkSetItemPropertyRequest

- (id)_bodyDataForItemKind:(unsigned __int8)a3 cloudLibraryIDs:(id)a4 properties:(id)a5
{
  v6 = a4;
  v7 = a5;
  +[ICDAAPPropertyInfo sharedItemPropertyInfo];
  v13 = v6;
  v15 = v14 = v7;
  v8 = v15;
  v9 = v7;
  v10 = v6;
  v11 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v11;
}

- (id)_bodyDataForItemIDs:(id)a3 properties:(id)a4 useLongIDs:(BOOL)a5
{
  v6 = a3;
  v7 = a4;
  +[ICDAAPPropertyInfo sharedItemPropertyInfo];
  v13 = v6;
  v15 = v14 = v7;
  v8 = v15;
  v9 = v7;
  v10 = v6;
  v11 = ICDAAPUtilitiesCreateDataForItemKindContainer();

  return v11;
}

@end